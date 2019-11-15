<?php 
namespace app\admin\model;
use think\Model;

class Comment extends Model
{
	protected $field = array('comment','user_id','circle_id','a.to_Id');

	public function circle() {
		return $this->belongsTo('Circle');
	}
}