<?php 
namespace app\admin\controller;
use think\Request;
use app\admin\model\Task as TaskModel;
use app\admin\model\Admin as AdminModel;
use app\admin\model\Column as ColumnModel;
use think\Controller;
use think\DB;

class Task extends Common
{
	//发布任务
	/*
	@param $recipient 接收的数据
	@param $id 发布者的ID
	 */
	public function release(Request $request) {
		$id = session('userId');
		$title = $request->post('title');
		$amount = $request->post('amount');
		$balances = AdminModel::where('id',$id)->field('balances')->find();
		if($balances->balances < $amount) return $this->changejson(1,'余额不足');
		$columnid = $request->post('column_id');
		$emergency = $request->post('emergency');
		$img = $request->file('img');
		$saveimg = $this->imgupload($img);
		if(!$saveimg) return $this->changejson(1,'上传失败');
		if(empty($id)) return $this->changejson(1,'未知失败');
		$emergency = $emergency =='true' ? 1 : 0;
		$res = TaskModel::addrecipient($title,$amount,$saveimg,$columnid,$emergency,$id);
		if(!$res) {
			return $this->changejson(1,$this->getError());
		}
		// $set = AdminModel::where('id',$id)->setInc('balances',-$amount);
		// if(!$set) return $this->changejson(1,'未知错误');
		return $this->changejson(0,"成功");
	}

	//用户接单
	/*
	@param $orderId 接收的ID
	 */
	public function order(Request $request) {
		$orderId = $request->post('task_id');
		$id = session('userId');
        $publish = TaskModel::where('id',$orderId)->field('user_id')->find();
        if($publish['user_id'] == $id) return $this->changejson(1,"不允许发布者接单");
        $res = TaskModel::support($id,$orderId);
//        halt($res);
		if(!$res) {
			return $this->changejson(1,"失败");
		}
		AdminModel::where('id',$id)->setInc('task_num');
		return $this->changejson(0,"成功");
	}

	//发布者确认完成付款
	/*
	*@param $taskid 接收单的ID
	*@param $userid 发布者的session信息
	*@param $nonobalance 发布者的余额
	*@param $res 返回单的赏金 $res['recipientid']，接收人的ID $res['amount']，发布人的ID $res['user']
	 */
	public function confirm(Request $request) {
		$taskid = $request->post('taskid');
		$userid = session('userId');
		$is = TaskModel::where('id',$taskid)->field('user_id,recipient_id')->find();
		// halt($is->recipient_id);
		if($userid != $is->user_id && $userid != $is->recipient_id) return $this->changejson(1,"参数错误");
		//如果登录人时发布者
		if($userid == $is->user_id) {
				//查询发布者的余额
			$nobalance = AdminModel::banquery($userid);
			//确认完成
			$res = TaskModel::complete($taskid,$userid,$nobalance);
			if(!$res) {
				return $this->changejson(1,"失败");
			}
			//发布者付款
			$ic = AdminModel::income($res['recipientid'],$res['amount'],$res['user']);
			if(!$ic) {
				return $this->changejson(1,"失败");
			}
			return $this->changejson(0,"成功");
		}
		//登录人时接收任务的人
		if($userid == $is->recipient_id) {
			$res = TaskModel::complete($taskid,'','',true);
			if(!$res) {
				return $this->changejson(1,"失败");
			}
			return $this->changejson(0,"成功");
		}	
	}

	//显示任务
	/*
	@param $res 单的数据
	 */
	public function index() {
		$model = new ColumnModel;
		$res = $model::with(['task'=>function($query) {
			$query->where('status',0);
		}])->select();
		foreach ($res as $v) {
			foreach ($v->task as $item) {
				$username = AdminModel::where('id',$item->user_id)->field('username')->find();
				$item->user_id = $username->username;
				$item->createtime = date('Y/m/d',$item->createtime);
			}	
		}
		if(!$res) {
			return $this->changejson(1,"失败");
		}
		return $this->changejson(0,"成功",$res);
	}

	//查看个人任务
	/*
	@param $res['complete'] 未完成的任务
	@param $res['completed'] 已完成的任务
	 */
	public function personmission() {
		$id = session('userId');
		$model = new TaskModel;
		$res['complete'] = $model->where('recipient_id',$id)->where('complete',0)->select();
		$res['completed'] = $model->where('recipient_id',$id)->where('complete',1)->select();
		foreach ($res as $v) {
			foreach ($v as $item) {
				$username = AdminModel::where('id',$item->user_id)->field('username')->find();
				$item->user_id = $username->username;
				$recipient = AdminModel::where('id',$item->recipient_id)->field('username')->find();
				$item->recipient_id = $recipient['username'];
				$columnid = ColumnModel::where('id',$item->column_id)->field('column')->find();
				$item->column_id = $columnid->column;
				$item->purchasetime = date('Y/m/d',$item->purchasetime);
				$item->createtime = date('Y/m/d',$item->createtime);
				if(!empty($item->deadline)) $item->deadline = date('Y/m/d',$item->deadline);
				if(!empty($item->recipient_compete_time)) $item->recipient_compete_time = date('Y/m/d',$item->recipient_compete_time);
			}
		}
		if(!$res) {
			return $this->changejson(1,"失败");
		}
		return $this->changejson(0,"成功",$res);
	}

	//查看我发布过的任务
	public function myrelease() {
		$id = session('userId');
		if(!$id) return $this->changejson(1,"未登录");
		$res = TaskModel::where('user_id',$id)->select();
		if(!$res) {
			return $this->changejson(1,"失败");
		}
		foreach ($res as $item) {
			$username = AdminModel::where('id',$item->user_id)->field('username')->find();
			$item->user_id = $username->username;
			$recipient = AdminModel::where('id',$item->recipient_id)->field('username')->find();
			$item->recipient_id = $recipient['username'];
			$columnid = ColumnModel::where('id',$item->column_id)->field('column')->find();
			$item->column_id = $columnid->column;
			$item->purchasetime = date('Y/m/d',$item->purchasetime);
			$item->createtime = date('Y/m/d',$item->createtime);
			if(!empty($item->deadline)) $item->deadline = date('Y/m/d',$item->deadline);
			if(!empty($item->recipient_compete_time)) $item->recipient_compete_time = date('Y/m/d',$item->recipient_compete_time);
			if($item->status == 1&&$item->recipient_compete == 0) {
				$item->iscompele = '进行中';
			} else if($item->status == 1&&$item->recipient_compete == 1){
				$item->iscompele = '已完成';
			} else {
				$item->iscompele = '未完成';
			}
		}
		return $this->changejson(0,"成功",$res);
	}
}