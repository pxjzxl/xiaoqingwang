<?php 
namespace app\admin\model;
use think\Model;

class Follow extends Model
{
	protected $field = array('fans','my_follow','fans_num','follow_num');

	public static function focused($userid,$id) {
		$model = new Follow;
		$qy = $model::where('user_id',$userid)->field('my_follow')->find();
		$str = explode(",", $qy->my_follow);
		$oldcount = count($str);
		if($str[0] == null) $oldcount = count($str) - 1;
		$newarr = self::addfans($str,$id);
		$newcount = count(explode(",", $newarr));
		if($newcount > $oldcount) {
			$follownum = 1;
		} else {
			$follownum = -1;
		}

		$hesqy = $model::where('user_id',$id)->field('fans')->find();
		$hesstr = explode(",", $hesqy->fans);
		$hesoldcount = count($hesstr);
		if($hesstr[0] == null) $hesoldcount = count($hesstr) - 1;
		$hesarr = self::addfans($hesstr,$userid);
		$hesnewcount = count(explode(",", $hesarr));
		if($hesnewcount > $hesoldcount) {
			$fansnum = 1;
		} else {
			$fansnum = -1;
		}
		//事务操作
		$model->startTrans();
		try{
			$model->where('user_id',$userid)->update(['my_follow' =>$newarr]);
			$model->where('user_id',$userid)->setInc('follow_num',$follownum);
			$model->where('user_id',$id)->update(['fans' =>$hesarr]);
			$model->where('user_id',$id)->setInc('fans_num',$fansnum);
			$model->commit();
		} catch(\Exception $e) {
			$model->rollback();
			return false;	
		}
		return true;
	}

	public static function addfans($str,$id) {
		// halt($id);
		//查询当前关注的人是否已经关注
		$s = in_array($id, $str);
		if($s) {
			foreach ($str as $key => $v) {
				if($v == $id) {
					$k = $key;
					break;
				}
			}
			unset($str[$k]);
			$newarr = implode(",",$str);
			return $newarr;
		}
		array_push($str,$id);
		$newarr = implode(",",$str);
		//如果数据库没有关注，则不需要以 ，连接
		if(!$str[0]) {
			$newarr = $id;
		}
		return $newarr;
	}

	public function admin() {
		return $this->belongsTo('admin');
	}
}