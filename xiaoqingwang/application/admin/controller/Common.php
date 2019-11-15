<?php 
namespace app\admin\controller;
use think\Controller;
use think\Request;

class Common extends Controller
{
	public function changejson($code,$msg="",$data=[]) {
		if($code == 0) {
			$result = [
			'code' => $code,
			'msg' => $msg,
			'data' => $data 
			];
			return json_encode($result,JSON_UNESCAPED_UNICODE);
		}
		$result = [
			'code' => $code,
			'msg' => $msg
		];
		return json_encode($result,JSON_UNESCAPED_UNICODE);
	}

	//图片上传
	/*
	*@param $ismore 是否多文件上传
	 */
	public function imgupload($img=[],$ismore=false) {
		if(empty($img)) {
			return false;
		}
		$host = 'www.xiaoqingwang.com';
		if($ismore){
			foreach ($img as $imgs) {
					$info = $imgs->validate(['ext'=>'jpg,png,gif'])->move(ROOT_PATH . 'public' . DS . 'uploads',true,false);
					if(!$info) continue;
					$arr[] = 'http://' . $host . '/' . 'uploads' . '/' . $info->getSaveName();
			}
			return $arr;
		}
		$info = $img->validate(['ext'=>'jpg,png,gif'])->move(ROOT_PATH . 'public' . DS . 'uploads',true,false);
		if(!$info) return false;
		return 'http://' . $host . '/' . 'uploads' . '/' . $info->getSaveName();
	}
}