<?php
namespace app\admin\controller;
use think\Controller;
use think\Request;
use app\admin\model\Follow as FollowModel;
use app\admin\model\Admin as AdminModel;

class Follow extends Common 
{
	//关注
	public function focus(Request $request) {
		$userid = session('userId');
		$id = $request->post('id');
		$res = FollowModel::focused($userid,$id);
		if(!$res) return $this->changejson(1,"关注失败");
		return $this->changejson(0,"关注成功");
	}

	//显示
	public function foucusindex() {
		$userid = session('userId');
		$data = FollowModel::where('user_id',$userid)->field('fans,my_follow')->find();
		$fans = explode(",",$data->fans);
		$my_follow = explode(",",$data->my_follow);
		if(empty($fans[0]) && empty($my_follow[0])) return $this->changejson(0,"数据为空");
		$ton = array_intersect($fans,$my_follow);
		$diton = array_diff($my_follow,$fans);
		$diston = array_diff($fans,$my_follow);
		if(!empty($ton)) {
			if(!empty($my_follow[0])) {
				foreach ($my_follow as $v) {
					$followdatas[] = AdminModel::where('id',$v)->field('id,head,username,personality')->find();
				}
				foreach ($followdatas as $item) {
					foreach ($ton as $vitem) {
						if($item->id == $vitem) {
							$item->my_follow = true;
							$item->my_fans = true;
						}
					foreach ($diton as $dv) {
						if($item->id == $dv) {
							$item->my_follow = true;
							$item->my_fans = false;
						}
					}
					}
					$newdatas['my_follow'][] = $item;
				}
			}
		
			if(!empty($fans[0])) {
				foreach ($fans as $v) {
					$fansdatas[] = AdminModel::where('id',$v)->field('id,head,username,personality')->find();
				}
				foreach ($fansdatas as $item) {
					foreach ($ton as $vitem) {
						if($item->id == $vitem) {
							$item->my_follow = true;
							$item->my_fans = true;
						}
					}
					foreach ($diston as $disv) {
						if($item->id == $disv) {
							$item->my_follow = false;
							$item->my_fans = true;
						}
						
					}
					$newdatas['fans'][] = $item;
				}
			}
		} else {
			if(!empty($my_follow[0])) {
				foreach ($my_follow as $v) {
					$followdatas[] = AdminModel::where('id',$v)->field('id,head,username,personality')->find();
				}
				foreach ($followdatas as $item) {
					$item->my_follow = true;
					$item->my_fans = false;
					$newdatas['my_follow'][] = $item;
				}
			}

			if(!empty($fans[0])) {
				foreach ($fans as $v) {
					$fansdatas[] = AdminModel::where('id',$v)->field('id,head,username,personality')->find();
				}
				foreach ($fansdatas as $item) {
					$item->my_follow = false;
					$item->my_fans = true;
					$newdatas['fans'][] = $item;
				}
			}
		}
		return $this->changejson(0,"查询成功",$newdatas);
	}
}