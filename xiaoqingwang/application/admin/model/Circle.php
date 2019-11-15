<?php 
namespace app\admin\model;
use think\Model;
use think\Db;

class Circle extends Model
{
	protected $field = array('text','img','video','is_like','exceptional','published_id','like_num','createtime');

	public static function prevents($text,$img,$video,$published_id) {
		$model = new Circle;
		if(empty($img)) {
			$data = [
			'text' => $text,
			'video' => $video,
			'published_id' => $published_id,
			'createtime' => time(),
			];
			$res = $model->allowField(true)->save($data);
			if(!$res) return false;
			return true;
		}
		$arrkey = ['img','img1','img2','img3','img4','img5','img6','img7','img8'];
		$length = count($img);
		$i = 1;
		foreach ($arrkey as $v) {
			$imgarr[] = $v;
			$i++;
			if($i > $length) {
				break;
			}
		}
		$newimg = array_combine($imgarr,$img);
		$data = [
			'text' => $text,
			'video' => $video,
			'published_id' => $published_id,
			'createtime' => time(),
		];
		$data = array_merge($data,$newimg);
		$res = $model->allowField(true)->save($data);
		if(!$res) return false;
		return true;
	}

	/*
	@param $arr 查询数据库里面的所有点赞的人
	@param $str 把数组arr转换为字符串
	@param $str 把以 ， 连接的字符串分割为数组
	@param $newarr 把刚点赞的人存入数组，并且以 ， 分割为字符串
	 */
	public static function likey($circleid,$user) {
		$model = new Circle;
		$sql = "select is_like from sin_circle where id=$circleid";
		$qy = Db::query($sql);
		foreach ($qy as $v) {
			$arr[] = $v['is_like'];
		}
		$oldstr = implode(",",$arr);
		$str = explode(",", $oldstr);
		//查询当前点赞的人是否已经点赞过
		$s = in_array($user, $str);
		if($s) {
			foreach ($str as $key => $v) {
				if($v == $user) {
					$k = $key;
					break;
				}
			}
			unset($str[$k]);
			$newarr = implode(",",$str);
			$res = $model->where('id',$circleid)->update(['is_like' =>$newarr]);
			if(!$res) return false;
			$inc = $model->where('id',$circleid)->setInc('like_num',-1);
			if(!$inc) return false;
			return 1;
		}
		array_push($arr,$user);
		$newarr = implode(",",$arr);
		//如果数据库没有点赞过，则不需要以 ，连接
		if(!$arr[0]) {
			$newarr = $user;
		}
		$res = $model->where('id',$circleid)->update(['is_like' =>$newarr]);
		if(!$res) return false;
		$inc = $model->where('id',$circleid)->setInc('like_num');
		if(!$inc) return false;
		return 2;
	}

	public function comment() {
		return $this->hasMany('Comment');
	}

	public function admin() {
		return $this->belongsTo('admin');
	}

	public function school() {
		return $this->belongsTo('school');
	}
}