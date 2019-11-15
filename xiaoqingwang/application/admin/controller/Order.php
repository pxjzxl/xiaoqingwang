<?php 
namespace app\admin\controller;
use think\Request;
use app\admin\model\Admin as AdminModel;
use app\admin\model\RechargeRecord as RechargeRecordModel;
use think\Db;

class Order extends Common
{
	public function pay($subject,$total_amount,$id,$body='') {
		require_once("../extend/pay/config.php");
		import('pay/wappay/service\AlipayTradeService',EXTEND_PATH);
		import('pay/wappay/buildermodel\AlipayTradeWapPayContentBuilder',EXTEND_PATH);
		//商户订单号，商户网站订单系统中唯一订单号，必填
		$od = $this -> getWIDouttradeno();
	 	$out_trade_no = $od[0];
		if (!empty($out_trade_no)&& trim($out_trade_no)!=""){
		    //订单名称，必填
		    // $subject =$request ->get('WIDsubject');
		    $subject = $subject;

		    //付款金额，必填
		    $total_amount = $total_amount;

		    //商品描述，可空
		    $body = $body;

		    $ct = $od[1];
	     	$remodel = new RechargeRecordModel;
			$data = [
				'order' => $out_trade_no,
				'widbody' => $body,
				'total_amount' => $total_amount,
				'status' => 0,
				'create_time' => $ct,
				'user_id' => $id,
				'subject' => $subject 
			];
			$remodel -> insert($data);
		    //超时时间
		    $timeout_express="1m";

		    $payRequestBuilder = new \AlipayTradeWapPayContentBuilder();
		    $payRequestBuilder->setBody($body);
		    $payRequestBuilder->setSubject($subject);
		    $payRequestBuilder->setOutTradeNo($out_trade_no);
		    $payRequestBuilder->setTotalAmount($total_amount);
		    $payRequestBuilder->setTimeExpress($timeout_express);

		    $payResponse = new \pay\service\AlipayTradeService($config);
		    $result=$payResponse->wapPay($payRequestBuilder,$config['return_url'],$config['notify_url']);


		   
		    return ;
		}
	}

	//生成订单号
	public function getWIDouttradeno() {
		$t = time();
		$time = date('Y-m-d G:i:s',$t);
		$u = list($usec, $sec) = explode(" ", microtime());
		$date = new \DateTime($time);
		$d = $date->format('YmdGis');
		$no = $d . $u[1];
		return [$no,$t];
	}

	public function returnurl() {
		require_once("../extend/pay/config.php");
		$arr = $_GET;
		import('pay/wappay/service\AlipayTradeService',EXTEND_PATH);
		$alipaySevice = new \pay\service\AlipayTradeService($config); 
		$result = $alipaySevice->check($arr);
		if($result) {//验证成功
			//商户订单号
			$out_trade_no = $_GET['out_trade_no'];
			//支付宝交易号
			$trade_no = $_GET['trade_no'];
			$model = new AdminModel;
			$remodel = new RechargeRecordModel;
			$q = $remodel -> where('order',$out_trade_no) -> find();
			Db::startTrans();
			try {
				$remodel -> where('order',$out_trade_no) -> update(['trade_no' => $trade_no,'status' => 1]);
				$model -> where('id',$q -> user_id)->setInc('balances',$q -> total_amount);
				Db::commit();
				return $this->changejson(0,"充值成功");
			} catch(\Exception $e) {
				Db::rollback();
				return $this->changejson(1,"充值失败");
			}
		}
		else {
		    //验证失败
		    return $this->changejson(1,'验证失败');
		}
	}
}