<?php 
namespace app\admin\controller;
use think\Controller;
use think\Request;
use app\admin\model\Admin as AdminModel;
use app\admin\model\School as SchoolModel;
use app\admin\model\Follow as FollowModel;

class Register extends Common
{
	//注册
	/*
	@param message 接收的信息
	 */
	public function register(Request $request) {
		$message =  $request->post();
		$model = new AdminModel;
		if(empty($message)) return $model->getError();
		$school = $model->school()->field('id')->where('school',$message['school'])->find();
		if(!$school) {
			$schoolmodel = new SchoolModel;
			$news = $schoolmodel->save(['school' => $message['school']]);
			$school = $model->school()->field('id')->where('school',$message['school'])->find();
		}
		$message['school'] = $school->id;
		$res = $model->registration($message['sex'],$message['age'],$message['grade'],$message['school'],$message['username'],$message['password']);
		if(!$res) {
			return $this->changejson(1,$model->getError());
		}
		$rr = FollowModel::insert(['user_id' => $res]);
		if(!$rr) return $this->changejson(1,"注册失败");
		session('userId',$res);
		$userid = session('userId');
		if(!$userid) return $this->changejson(1,"登录失败");
		return $this->changejson(0,"登录成功");
	}
}