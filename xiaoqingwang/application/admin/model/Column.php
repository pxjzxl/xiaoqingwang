<?php 
namespace app\admin\model;
use think\Model;

class Column extends Model
{
	protected $field = array('column');

	public static function addcolumn($column) {
		$data = [
			'column' => $column,
		];
		$model = new Column;
		$res = $model->allowField(true)->save($data);
		if(!$res) return false;
		return true; 
	}

	public function task() {
		return $this->hasMany('Task');
	}
}