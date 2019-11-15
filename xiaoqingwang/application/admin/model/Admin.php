<?php 
namespace app\admin\model;
use think\Model;

class Admin extends Model
{
	protected $field = array('username','password','sex','age','grade','school','phone','personality','balances');

	//密码登录
	/*
	@param getDataUsername 数据库里对应的数据
	 */
	public static function login($username,$password) {
		$getDataUsername = self::getByUsername($username);
		if(!empty($getDataUsername)) {
			if($getDataUsername->checkpassword($password)) {
				session('userId',$getDataUsername->id);
				return true;
			}
		}
		return false;
	}

	//校验密码
	public function checkpassword($password) {
		if(self::encryptpassword($password) === $this->getData('password')) {
			return true;
		}
		return false;
	}

	//加密
	public static function encryptpassword($password) {
		return sha1(md5($password).'salt');
	}


	public function mobilelogin($phone,$codes,$code) {
		if($codes['limit'] + $codes['time'] < time()) {
			$this->error = '验证码过期';
			return false;
		}
		if($codes['phone'] == $phone && $codes['code'] == $code) {
			$getDataPhone = $this->getByPhone($phone);
			if(!$getDataPhone) {
				$data = [
					'phone' => $phone,
					'username' => 'xqw_'.self::randstr(),
					'password' => self::encryptpassword(self::randstr()),
				];
				$model = new Admin;
				$res = $model->allowField(true)->save($data);
				$newid = $model->id;
				if(!$res) {
					$this->error = '数据异常';
					return false;
				}
				$getDataPhone = $this->getByPhone($phone);
			}
			session('userId',$getDataPhone->id);
			$this->success = '验证成功';
			if(!empty($newid)) {
				return $newid;
			} else {
				return true;
			}
		}
		$this->error = '验证码和手机号不正确';
		return false;
	}

	//生成随机字符串
	public function randstr($length=10) {
    	$character = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    	$randstr = '';
		for($i = 0;$i < $length;$i++) {
			$index = rand(0,strlen($character) - 1);
			$randstr .= $character[$index];
		}
		return $randstr;
	}

	//注册
	/*
	@param getDataUsername 数据库里的数据
	 */
	public function registration($sex,$age,$grade,$school,$username,$password) {
		$getDataUsername = self::getByUsername($username);
		if(isset($getDataUsername)) {
			$this->error = '账号已存在';
			return false;
		}

		$data = [
			'sex' => $sex,
			'username' => $username,
			'password' => self::encryptpassword($password),
			'age' => $age,
			'grade' => $grade,
			'school' => $school
		];

		$AdminModel = new Admin;
		$res = $AdminModel->allowField(true)->save($data);
		if(!$res) {
			$this->error = '数据异常';
			return false;
		}
		return $AdminModel->id;
		// return true;
	}

	public function getPersonal($id) {
		$res = $this->get($id);
		if(!$res) {
			$this->error = '未知错误';
			return false;
		}
		return $res;
	}

	//个人信息修改
	public static function chages($fields,$value,$id) {
		$AdminModel = new Admin;
		$data = array_combine($fields,$value);
		$res = $AdminModel->where('id',$id)->update($data);
		if(!$res) {
			return false;
		}
		return true;
	}

	//收入
	public static function income($recipientid,$amount,$sellerid) {
		$model = new Admin;
		$user = $model->getById($recipientid);
		$seller = $model->getById($sellerid);
		$balances = $user->balances;
		$sellerbalances = $seller->balances;
		if($sellerbalances < $amount) {
			return false;
		}
		$res = $model->where('id',$recipientid)->update(['balances' => $amount + $balances]);
		if(!$res) return false;
		$ress = $model->where('id',$sellerid)->update(['balances' => $sellerbalances - $amount]);
		if(!$ress) return false;
		return true;
	}

	//查询个人余额
	public static function banquery($userid) {
		$model = new Admin;
		$user = $model->getById($userid);
		$balances = $user->balances;
		return $balances;
	}

	public function school() {
		// return $this->hasOne('school','id','school');
		return $this->hasOne('school');
	}

	public function task() {
		return $this->hasMany('task');
	}

	public function follow() {
		return $this->hasOne('follow','user_id');
	}

	public function circle() {
		return $this->hasMany('circle','published_id');
	}

	public function schoold() {
		return $this->belongsTo('school');
	}
}