<?php 
namespace app\admin\controller;
use think\Request;
use app\admin\model\Admin as AdminModel;
use app\admin\model\UserAgent as UserAgentModel;
use app\admin\model\Follow as FollowModel;
use think\Controller;


class Login extends Common
{
	//密码登录
	/*
	@param userinfo	获取接收的数据
	@param res 	接收处理后的数据
	 */
	public function passcheck(Request $request) {
		$userinfo = $request->post();
		$res = AdminModel::login($userinfo['username'],$userinfo['password']);
		$userid = session('userId');
		if(!$res) {
			return $this->changejson(1,'登录失败');
		}
		return $this->changejson(0,"成功",$userid);
	}

	//手机登录
	/*
	@param userinfo	获取接收的数据
	@param res 	接收处理后的数据
	@param codes 验证码信息
	 */
	public function mobilecheck(Request $request) {
		$userinfo = $request->post();
		$codes = session('codes');
		$model = new AdminModel;
		$res = $model->mobilelogin($userinfo['phone'],$codes,$userinfo['code']);
		if($res !== true) {
			$rr = FollowModel::insert(['user_id' => $res]);
			if(!$rr) return $this->changejson(1,"注册失败");
		}
		$userid = session('userId');
		if(!$res) {
			return $this->changejson(1,$model->getError());
		}
		return $this->changejson(0,"成功",$userid);
	}

	//发送验证码
	/*
	@param phone 接收手机号
	@param code 验证码
	@param information 具体发送的验证码信息
	 */
	public function sendcode(Request $request) {
        $phone = $request->param('phone');
        // import('SendTemplateSMS',EXTEND_PATH);
        import('src.index',EXTEND_PATH);
        // halt($t);
        $code = rand(100000,999999);
        // $information = sendTemplateSMS($phone,array($code,'3'),"1");
        $appid = 1400285869; // 1400开头

		// 短信应用SDK AppKey
		$appkey = "a7c031c1a9779f9a9ae18da1d84b0ce8";

		// 短信模板ID，需要在短信应用中申请
		$templateId = 7839;  // NOTE: 这里的模板ID`7839`只是一个示例，真实的模板ID需要在短信控制台中申请

		// 签名
		$smsSign = "廖建山个人技术展示"; // NOTE: 这里的签名只是示例，请使用真实的已申请的签名，签名参数使用的是`签名内容`，而不是`签名ID`

		// 单发短信
		try {
		    $ssender = new \Qcloud\Sms\SmsSingleSender($appid, $appkey);
		    $params = [$code,3];
		    $information = $ssender->sendWithParam("86", $phone,471240,
		        $params,$smsSign, "", "");
		} catch(\Exception $e) {
		   return $this->changejson(1,$e);
		}
		$information = json_decode($information);
        if($information -> errmsg = 'OK') {
            $member = [
            'phone' => $phone,
            'limit' => 180,
            'time' => time(),
            'code' => $code
        ];
    	session('codes',$member);
    	return $this->changejson(0,"成功");
		}
		return $this->changejson(1,'发送失败');
    }

    //注销
    public function logout() {
    	$userid = session_unset();
    	if($userid) return $this->changejson(1,'注销失败');
    	return $this->changejson(0,"注销成功");
    }

    //修改密码
    /*
    @param $pass 接收密码并且加密
    @param $id 登入人ID
     */
    public function changepass(Request $request) {
    	$id = session('userId');
    	$pass = $request->post('password');
    	$oldpass = $request->post('oldpassword');
    	$oldpass = AdminModel::encryptpassword($oldpass);
    	$datapass = AdminModel::where('id',$id)->field('password')->find();
    	if($datapass->password != $oldpass) return $this->changejson(1,'新旧密码不对应');
    	$pass = AdminModel::encryptpassword($pass);
    	$model = new AdminModel;
    	$res = $model->where('id',$id)->update(['password'=>$pass]);
    	if(!$res) {
			return $this->changejson(1,'修改失败');
		}
		return $this->changejson(0,"修改成功");
    }

    public function index() {
        $fromid = input('fromid');
        $this->assign('fromid',$fromid);
        $toid = input('toid');
        $this->assign('toid',$toid);
    	return $this->fetch('chat/index');
    }
}