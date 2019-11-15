<?php 
namespace app\admin\controller;
use think\Request;
use app\admin\model\Column as ColumnModel;
use think\Controller;

class Column extends Common
{
	//添加专区
	public function zone(Request $request) {
		$column = $request->post();
		$res = ColumnModel::addcolumn($column['column']);
		if(!$res) {
			return $this->changejson(1,"添加失败");
		}
		return $this->changejson(0,"成功");
	}

	//查看专区
	public function showzone() {
		$res = ColumnModel::all();
		if(!$res) {
			return $this->changejson(1,"添加失败");
		}
		return $this->changejson(0,"成功",$res);
	}
}