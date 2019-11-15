<?php 
namespace app\admin\model;
use think\Model;

class RechargeRecord extends Model
{
	protected $field = array('order','widbody','total_amount','trade_no','status','createtime','user_id','subject');
}