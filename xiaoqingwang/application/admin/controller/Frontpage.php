<?php 
namespace app\admin\controller;
use think\Controller;
use app\admin\model\Index as IndexModel;
use app\admin\model\Follow as FollowModel;
use app\admin\model\Admin as AdminModel;
use app\admin\model\School as SchoolModel;


class Frontpage extends Common
{
	public function shuffling() {
        $userid = session('userId');
        $lunbo = IndexModel::field('lunbo')->select();
        $lunbo = array_reverse($lunbo);
        $lunbo = array_slice($lunbo,0,4);
        $lunboinfo = IndexModel::field('lunbumessage')->select();
        $lunboinfo = array_reverse($lunboinfo);
        $lunboinfo = array_slice($lunboinfo,0,4);
        if(!empty($userid)) {
            $relate = FollowModel::field('fans,my_follow')->where('user_id',$userid)->find();
            $fans = explode(',',$relate->fans);
            $follows = explode(',',$relate->my_follow);
        }
        foreach ($lunbo as $item) {
            $res['lunbo'][] = $item->lunbo;
        }
        foreach ($lunboinfo as $item) {
            $res['lunboinfo'][] = $item->lunbumessage;
        }
        $ress = FollowModel::field('id,user_id,fans_num')->select();
		$length = count($ress);
		for($i=0;$i<$length;$i++) {
			for($k=$i+1;$k<$length;$k++) {
				if($ress[$i]->fans_num<$ress[$k]->fans_num) {
					$temp = $ress[$i];
					$ress[$i] = $ress[$k];
					$ress[$k] = $temp;
				}
			}
		}
		$newress = array_slice($ress,0,4);
		foreach ($newress as $key =>$item) {
			$rewresws[] = AdminModel::where('id',$item->user_id)->field('id,username,school,head')->find();
		}

		foreach ($rewresws as $key => $ik) {
			$ik->fansnum = $ress[$key]->fans_num;
            $school = SchoolModel::where('id',$ik->school)->field('school')->find();
            $ik->school = $school->school;
            if(!empty($userid)) {
                $relation =[];
                $infans = in_array($ik->id,$fans);
                $infollows = in_array($ik->id,$follows);
                if($infans&&$infollows || $ik->id == $userid) {
                    $ik->isfan = true;
                    $ik->isfollow = true;
                } else if(!$infans&&$infollows){
                    $ik->isfan = false;
                    $ik->isfollow = true;
                } else if(!$infollows&&$infans) {
                    $ik->isfan = true;
                    $ik->isfollow = false;
                } else {
                    $ik->isfan = false;
                    $ik->isfollow = false;
                }
            }
		}
        $res['fansnum'] = $rewresws;

		$recs = AdminModel::field('id,username,task_num,school,head')->select();
        foreach($recs as $item) {
            $school = SchoolModel::where('id',$item->school)->field('school')->find();
            $item->school = $school['school'];
            if(!empty($userid)) {
                $infans = in_array($item->id,$fans);
                $infollows = in_array($item->id,$follows);
                if($infans&&$infollows || $item->id == $userid) {
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
            }
        }
		$tlength = count($recs);
		for($i=0;$i<$length;$i++) {
			for($k=$i+1;$k<$tlength;$k++) {
				if($recs[$i]->task_num<$recs[$k]->task_num) {
					$temp = $recs[$i];
					$recs[$i] = $recs[$k];
					$recs[$k] = $temp;
				}
			}
		}
		$newrescs = array_slice($recs,0,4);
		$res['danum'] = $newrescs;

		return $this->changejson(0,"查询成功",$res);
	} 
}