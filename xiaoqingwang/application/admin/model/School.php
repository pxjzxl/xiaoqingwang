<?php 
namespace app\admin\model;
use think\Model;

class School extends Model
{
	protected $field = array('provinces','school');

	public function admin() {
		return $this->belongsTo('Admin');
	}

	public function circle() {
		return $this->hasMany('circle','published_id');
	}

	public function admind() {
		return $this->hasMany('Admin','school','id');
	}
}