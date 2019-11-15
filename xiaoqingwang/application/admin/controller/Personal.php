<?php 
namespace app\admin\controller;
use app\admin\model\Admin as AdminModel;
use app\admin\model\School as SchoolModel;
use app\admin\model\Circle as CircleModel;
use app\admin\model\Follow as FollowModel;
use think\Request;
use think\Db;
use think\Cache;

class Personal extends Common
{
	//查询个人信息
	public function personal() {
		$id = session('userId');
		$model = new AdminModel;
		$data = $model->getPersonal($id);
		$school = $model->school()->field('school')->where('id',$data->school)->find();
		$data->school = $school->school;
		$data->sex = $data->sex==1?'男':'女';
		if(!$data) {
			return $this->changejson(1,$model->getError());
		}
		return $this->changejson(0,"成功",$data);
	}

	//个人信息修改
	public function personalupdate(Request $request) {
		$msg = $request->post();
		$id = session('userId');
		$model = new AdminModel;
		$exschool = array_key_exists('school',$msg);
		if($exschool) {
			$school = $model->school()->field('id')->where('school',$msg['school'])->find();
			$msg['school'] = $school->id;
		}
		$field = array_keys($msg);
		$value = array_values($msg);
		$password = array_key_exists('password',$msg);
		$balances = array_key_exists('balances',$msg);
		$head = array_key_exists('head',$msg);
		if($password || $balances || $head) return $this->changejson(1,"未知错误");
		$res = AdminModel::chages($field,$value,$id);
		if(!$res) {
			return $this->changejson(1,"修改失败");
		}
		return $this->changejson(0,"成功");
	}

	//修改头像
	public function headupdate(Request $request) {
		$head = $request->file('head');
		$id = session('userId');
		$savehead = $this->imgupload($head);
		if(!$savehead) return $this->changejson(1,'上传失败');
		$model = new AdminModel;
		//查找个人头像路径
		$sql = "select head from sin_admin where id=$id";
		$datahead = Db::query($sql)[0]['head'];
		//找到文件路径
		$url = parse_url($datahead,PHP_URL_PATH);
		//去除路径不需要的符号
		$path = substr($url,1);
		//删除原来的图片
		@unlink($path);
		//修改个人头像
		$res = $model->where('id',$id)->update(['head'=>$savehead]);
		if(!$res) return $this->changejson(1,"保存失败");
		return $this->changejson(0,"成功");
	}

	//充值
	public function prepaid(Request $request) {
		$id = session('userId');
		// if(!$id) return $this->changejson(1,"未登录");
		//测试模式
		$amount = $request->get('amount');
		// $amount = $request->post('amount');
		$body = '个人充值';
		$con = new \app\admin\controller\Order;
		$con -> pay($body,$amount,$id);
	}

	//体现
	public function withdrawal(Request $request) {
		$id = session('userId');
		if(!$id) return $this->changejson(1,"未登录");
		$amount = $request->post('amount');
		$balances = AdminModel::where('id',$id)->field('balances')->find();
		if($balances->balances < $amount) return $this->changejson(1,"余额不足");
		$res = AdminModel::where('id',$id)->setInc('balances',-$amount);
		if(!$res) return $this->changejson(1,"提现失败");
		return $this->changejson(0,"提现成功");
	}

	//查看他人信息
	public function others(Request $request) {
		$userid = session('userId');
		if(!$userid)  return $this->changejson(1,"未登录");
		$id = $request->post('id');
		$model = new AdminModel;
		$likesnum = 0;
		$data = $model->with(['circle'=>function($query) use($id) {
			$query->where('published_id',$id);
		}])->with(['follow'=>function($query) use($id) {
			$query->where('user_id',$id)->field('user_id,fans_num,follow_num');
		}])->field('id,username,head,sex,age,school,phone,grade,personality')->select($id);
		foreach ($data[0]['circle'] as $v) {
			$arr = [$v->img,$v->img1,$v->img2,$v->img3,$v->img4,$v->img5,$v->img6,$v->img7,$v->img8];
			$newarr = [];
			foreach ($arr as $item) {
				if($item != null) array_push($newarr,$item);
			}
			$v->imgs = $newarr; 
			unset($v->img);
			unset($v->img1);
			unset($v->img2);
			unset($v->img3);
			unset($v->img4);
			unset($v->img5);
			unset($v->img6);
			unset($v->img7);
			unset($v->img8);
			$likesnum = $likesnum + $v->like_num;
			$v->createtime = date('Y/m/d',$v->createtime);
		}
		$islike = CircleModel::all();
		foreach ($islike as $iv) {
			$iv->is_like = explode(',',$iv->is_like);
			foreach ($iv->is_like as $key => $kk) {
				if($kk == $userid) {
					$zan[] = $iv;
				}
			}
		}
		foreach ($zan as $kv) {
			$arr = [$kv->img,$kv->img1,$kv->img2,$kv->img3,$kv->img4,$kv->img5,$kv->img6,$kv->img7,$kv->img8];
			$newarr = [];
			foreach ($arr as $item) {
				if($item != null) array_push($newarr,$item);
			}
			$kv->imgs = $newarr;
			unset($kv->img);
			unset($kv->img1);
			unset($kv->img2);
			unset($kv->img3);
			unset($kv->img4);
			unset($kv->img5);
			unset($kv->img6);
			unset($kv->img7);
			unset($kv->img8);
			$kv->is_like = implode(',',$kv->is_like);
			$kv->createtime = date('Y/m/d',$kv->createtime);
		}
		$relate = FollowModel::field('fans,my_follow')->where('user_id',$userid)->find();
		$fans = explode(',',$relate->fans);
		$follows = explode(',',$relate->my_follow);
		$infans = in_array($id,$fans);
		$infollows = in_array($id,$follows);
		foreach ($data as $item) {
			// $item->sex = $item->sex==1 ? '男':'女';
			$school = SchoolModel::where('id',$item->school)->field('school')->find();
			$item->school = $school->school;
			$item->likesnum = $likesnum;
			if($infans&&$infollows) {
				$item->isfan = true;
				$item->isfollow = true;
			} else if(!$infans&&$infollows){
				$item->isfan = false;
				$item->isfollow = true;
			} else if(!$infollows&&$infans) {
				$item->isfan = true;
				$item->isfollow = false;
			} else {
				$item->isfan = false;
				$item->isfollow = false;
			}
			$item->zan = $zan;
		}
		if(!$data) return $this->changejson(1,"查询为空");
		return $this->changejson(0,"查询成功",$data);
	}

	//绑定手机
	public function bindphone(Request $request) {
		$id = session('userId');
		if(!$id) return $this->changejson(1,"未登录");
		$phone = $request->post('phone');
		$code = $request ->post('code');
		$codes = session('codes');
		$model = new AdminModel;
		if($codes['limit'] + $codes['time'] < time()) {
			return $this->changejson(1,"验证码过期");
		}
		if($codes['phone'] == $phone && $codes['code'] == $code) {
			$res = $model->where('id',$id) -> update(['phone' => $phone]);
			if(!$res) {
				return $this->changejson(1,'修改失败');
			}
			return $this->changejson(0,"成功");
		} else {
			 return $this->changejson(1,"验证码或手机号不正确");
		}	
	}

	//签到
	public function sign(Request $request) {
		$id = session('userId');
		if(!$id) return $this->changejson(1,"未登录");
		// $ip = $request -> ip();
		// $times = new \DateTime(date('Y/m/d',strtotime('sunday 0 week')));
		// Cache::set('user',$id,$times);
		// Cache::set('date',date('w'),$times);
		// $tt = Cache::get('user');
		// $date = Cache::get('date');
		$t = array('han','ice','join');
		Cache::set('name',$t);
		// Cache::set('name[]','ice');

		$data = Cache::get('name');
		halt($data);
	}
}