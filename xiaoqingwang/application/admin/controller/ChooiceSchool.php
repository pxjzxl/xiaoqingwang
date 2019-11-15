<?php 
namespace app\admin\controller;
use think\Db;

class ChooiceSchool
{
	public function provinces() {
		$json_url="static/provinces.json";//文件名称和路径
		$json_string = file_get_contents($json_url);
		return $json_string;
	}

	public function citys() {
		$json_url="static/cities.json";//文件名称和路径
		$json_string = file_get_contents($json_url);
		return $json_string;
	}

	public function schools() {
		$json_url="static/shools.json";//文件名称和路径
		$json_string = file_get_contents($json_url);

		// $a = json_decode($json_string);
		// foreach($a -> schools as $v) {
		// 	Db::table('sin_school') -> insert(['school' => $v -> name]);
		// }
		// halt(111);
		return $json_string;
	}
}