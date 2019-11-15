<?php 
namespace app\admin\controller;
use think\Collection;
use think\Request;
use think\Controller;
use app\admin\model\Circle as CircleModel;
use app\admin\model\Comment as CommentModel;
use app\admin\model\Admin as AdminModel;
use app\admin\model\School as SchoolModel;
use think\Db;

class Circle extends Common
{
	//发朋友圈
	/*
	@param @circle 接收发朋友圈的数据
	 */
	public function published(Request $request) {
		// $user = session('userId');
		$user = $request->post('id');
		if(!$user) {
			return $this->changejson(1,"未登录");
		}
		$text = $request->post('text');
		$video = $request->post('vedio');
		$img = $request->file('img');
		if(!empty($img)) {
			$saveimg = $this->imgupload($img,true);
			if(!$saveimg) return $this->changejson(1,'上传失败');
			$res = CircleModel::prevents($text,$saveimg,$video,$user);
			if(!$res) return $this->changejson(1,"参数错误");
			return $this->changejson(0,"发布成功");
		}
		$res = CircleModel::prevents($text,$img,$video,$user);
		if(!$res) return $this->changejson(1,"参数错误");
		return $this->changejson(0,"发布成功");
	}

	//显示朋友圈
	public function getfriends() {
		$id = session('userId');
		$sql = "SELECT `username` FROM `sin_admin` WHERE  `id` = $id";
		$query = Db::query($sql);
		$name = array_column($query,'username');
		$model = new CircleModel;
		$res = $model->all();
		foreach ($res as $item) {
			static $where = [];
			if(strlen($item->is_like) == 0) {
				$item->is_like = [];
				continue;
			}
			//把字符串 24，25，26 替换为 24 or id = 25 or id = 26
			$where = str_replace(","," or id= ",$item->is_like);
			//根据$where查询对应点赞人的名字
			$sql = "SELECT `username` FROM `sin_admin` WHERE  `id` = $where";
			$v = Db::query($sql);
			$item->is_like = array_column($v,'username');
			foreach ($item->is_like as $ki) {
				if($ki == $name[0]) {
					$item->myZan = true;
					break;
				} else {
					$item->myZan = false; // 已经加好了！
				}
			}
		}
		//查询登录人的学校
		$sql = "SELECT `school` FROM `sin_admin` WHERE  `id` = $id limit 1";
		$userschool = Db::query($sql);
		$userschool = array_column($userschool,'school');
		//为对象添加属性school
		foreach ($res as $v) {
			$sql = "SELECT `school`,`head`,`username` FROM `sin_admin` WHERE  `id` = $v->published_id";
			$query = Db::query($sql);
			foreach ($query as $qus) {
				$v->school = $qus['school'];
				$v->comment = $model->comment()->field('b.username,a.comment,a.to_Id')->alias('a')->join('sin_admin b','a.user_id=b.id','left')->where('circle_id',$v->id)->select();
				$v->head = $qus['head'];
				$v->published_id = $qus['username'];
				foreach($v->comment as $item) {
					$tousername = AdminModel::where('id',$item->to_Id)->field('username')->find();
					if(empty($tousername)) {
						$item->to_username = 0;
						continue;
					}
					$item->to_username = $tousername->username;
				}
				$arr = [$v->img,$v->img1,$v->img2,$v->img3,$v->img4,$v->img5,$v->img6,$v->img7,$v->img8];
				$newarr = [];
				foreach ($arr as $item) {
					if($item != null) array_push($newarr,$item);
				}
				$v->imgs = $newarr; 
				$v -> createtime = $this -> gettime($v -> createtime);
			}
			unset($v->img);
            unset($v->img1);
            unset($v->img2);
            unset($v->img3);
            unset($v->img4);
            unset($v->img5);
            unset($v->img6);
            unset($v->img7);
            unset($v->img8);
		}
		//删除不是登录人学校的朋友圈
		$res = collection($res)->toArray();
		$res = array_reverse($res);
		$data['all'] = $res;
		foreach ($userschool as $u) {
			foreach ($res as $key =>$vos) {
				if($vos['school'] != $u) $unindex[] = $key;
			}
			if(!empty($unindex)) {
                foreach ($unindex as $un) {
                    unset($res[$un]);
                }
            }
		}
		$res = array_values($res);
		// $res = array_reverse($res);
		$data['part'] = $res;
		if(!$res) return $this->changejson(1,"数据为空");
		return $this->changejson(0,"查询成功",$data);


	// 	$id = session('userId');
	// 	if(!$id) return $this->changejson(1,"未登录");
	// 	$schools = AdminModel::where('id',$id) -> field('school') -> find();
	// 	//获取部分数据
	// 	$school['part'] = $this -> getcircledata($schools -> school);
	// 	foreach($school['part'] as $i) {
	// 		foreach($i -> admind as $t) {
	// 			$i -> admind = $this -> newcircle($t,$id);
	// 		}
	// 	}
	// 	//获取全部数据
	// 	$school['all'] = $this -> getcircledata();
	// 	foreach($school['all'] as $i) {
	// 		$i = $this -> newcircle($i,$id);
	// 	}
	// 	$data['part'] = $this -> newdata($school['part'],'admind');
	// 	$data['all'] = $this -> newdata($school['all']);

	// 	if(!$school) return $this->changejson(1,"数据为空");
	//  	return $this->changejson(0,"查询成功",$data);
	// }

	// public function newdata($data,$field='') {
	// 	$school = collection($data) -> toArray();
	// 	if(!empty($field)) {
	// 		$school = array_column($school,$field);
	// 		$t = array_filter($school[0],function($item){
	// 			if(!empty($item['circle'])) {
	// 				return $item;
	// 			}
	// 		});
	// 	} else {
	// 		$t = array_filter($school,function($item){
	// 			if(!empty($item['circle'])) {
	// 				return $item;
	// 			}
	// 		});
	// 	}
	// 	return $t;
	// }

	// //获取朋友圈数据
	// public function getcircledata($schools='') {
	// 	if(!empty($schools)) {
	// 		$schoolmodel = new SchoolModel;
	// 		$school = $schoolmodel -> with(['admind' => function($query) {
	// 			$query -> field('id,username,head,school');
	// 			$query -> with(['circle' => function($querys) {
	// 				$querys -> order('createtime','desc');
	// 				$querys -> with('comment');	
	// 			}]);
	// 		}]) -> select($schools);
	// 	} else {
	// 		$adminmodel = new AdminModel;
	// 		$school = $adminmodel -> with(['circle' => function($querys) {
	// 			$querys -> order('createtime','desc');
	// 			$querys -> with('comment');	
	// 		}]) -> field('id,username,head,school') -> select();
	// 	}
	// 	return $school;
	// }

	// //处理朋友圈数据
	// public function newcircle($t,$id) {
	// 	foreach($t -> circle as $item) {
	// 		$item -> published_id = $this -> findusername($item -> published_id);
	// 		$item -> createtime = $this -> gettime($item -> createtime);
	// 	 	$arr = [$item->img,$item->img1,$item->img2,$item->img3,$item->img4,$item->img5,$item->img6,$item->img7,$item->img8];
	// 		$newarr = [];
	// 		foreach ($arr as $v) {
	// 			if($v != null) array_push($newarr,$v);
	// 		}
	// 		$item->imgs = $newarr; 
	// 		unset($item->img);
 //            unset($item->img1);
 //            unset($item->img2);
 //            unset($item->img3);
 //            unset($item->img4);
 //            unset($item->img5);
 //            unset($item->img6);
 //            unset($item->img7);
 //            unset($item->img8);
 //            foreach ($item -> comment as $value) {
	// 			$value -> user_id = $this -> findpublishname($value -> user_id);
	// 			if(!empty($value -> to_Id)) {
	// 				$value -> to_name = $this -> findpublishname($value -> to_Id);
	// 			}
	// 		}
	// 		if(strlen($item->is_like) == 0) {
	// 			$item -> myZan = false;
	// 			continue;
	// 		} else {
	// 			$isin = explode(',',$item -> is_like);
	// 			if(in_array($id,$isin)) {
	// 				$item -> myZan = true;
	// 			} else {
	// 				$item -> myZan = false;
	// 			}
	// 			$where = str_replace(","," or id= ",$item -> is_like);
	// 			$item -> is_like = $this -> findusername($where);
	// 		}
	// 	}
	// 	return $t;
	// }	

	// public function findusername($where) {
	// 	//根据$where查询对应点赞人的名字
	// 	$sql = "SELECT `username` FROM `sin_admin` WHERE  `id` = $where";
	// 	$v = Db::query($sql);
	// 	$v = array_column($v,'username');
	// 	$v = implode(',',$v);
	// 	return $v;
	// }

	// public function findpublishname($publish_id) {
	// 	$publishname = AdminModel::where('id',$publish_id) -> find();
	// 	return $publishname -> username;
	}

	public function gettime($overtime) {
		$time = time();
		$dateovertime = date('Y/m/d',$overtime);
		$nowtime = date('Y/m/d',$time);
		$hours = ($time - $overtime)/3600;
		if($hours <= 23 && $hours >= 1) {
			$times = round(($time - $overtime)/3600).'小时前';
		} elseif($hours > 23 && ($time - $overtime)/3600/24 < 2) {
			$times = '昨天';
		} elseif(($time - $overtime)/3600/24 > 1) {
			$times = round(($time - $overtime)/3600/24).'天前';
		} elseif($hours < 1) {
			$times = round(($time - $overtime)/3600*60).'分钟前';
		} else {
			$times = '时间错误';
		}
		return $times;
	}


	//点赞
	/*
	@param $circleid 接收此条朋友圈的ID
	 */
	public function give(Request $request) {
		$user = session('userId');
		$circleid = $request->post('circleid');
		if(!$user) {
			return $this->changejson(1,"参数错误");
		}
		$res = CircleModel::likey($circleid,$user);
		if(!$res) return $this->changejson(1,"未知错误");
		if($res == 1) return $this->changejson(0,"取消点赞",$res);
		if($res == 2) return $this->changejson(0,"点赞成功",$res);
	}

	//评论
	public function comments(Request $request) {
		$message = $request->post();
		$user = session('userId');
		$data = [
			'comment' => $message['comment'],
			'circle_id' => $message['circle_id'],
			'user_id' => $user,
			'to_Id' => $message['to_Id'],

		];
		$res = CommentModel::insert($data);
		if(!$res) return $this->changejson(1,"参数错误");
		return $this->changejson(0,"评论成功");
	}
}