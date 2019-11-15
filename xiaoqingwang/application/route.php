<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2018 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------

// return [
//     '__pattern__' => [
//         'name' => '\w+',
//     ],
//     '[hello]'     => [
//         ':id'   => ['chat/hello', ['method' => 'get'], ['id' => '\d+']],
//         ':name' => ['chat/hello', ['method' => 'post']],
//     ],

// ];

use think\Route;
Route::group('admin',[
	//密码登录
	'passcheck' => ['admin/login/passcheck',['method' => 'post']],
	//手机登录
	'mobilecheck' => ['admin/login/mobilecheck',['method' => 'post']],
	//发送手机验证码
	'sendcode' => ['admin/login/sendcode',['method' => 'get|post']],
	//注销
	'logout' => ['admin/login/logout',['method' => 'get|post']],
	//修改密码
	'changepass' => ['admin/login/changepass',['method' => 'post']],

	//注册
	'register' => ['admin/register/register',['method' => 'post']],

	//创建单
	'release' => ['admin/task/release',['method' => 'post']],
	//接单
	'order' => ['admin/task/order',['method' => 'post']],
	//确认完成付款订单
	'confirm' => ['admin/task/confirm',['method' => 'post']],
	//显示未接订单
	'chat' => ['admin/task/chat',['method' => 'get|post']],
	//查询个人已接任务
	'personmission' => ['admin/task/personmission',['method' => 'get|post']],
	//查看个人发布过的任务
	'myrelease' => ['admin/task/myrelease',['method' => 'get|post']],

	//个人信息显示
	'personal' => ['admin/personal/personal',['method' => 'get|post']],
	//个人信息修改
	'personalupdate' => ['admin/personal/personalupdate',['method' => 'post']],
	//个人头像修改
	'headupdate' => ['admin/personal/headupdate',['method' => 'post']],
	//个人充值
	'prepaid' => ['admin/personal/prepaid',['method' => 'get|post']],
	//提现
	'withdrawal' => ['admin/personal/withdrawal',['method' => 'post']],
	//查询他人信息
	'others' => ['admin/personal/others',['method' => 'post']],
	//绑定手机
	'bindphone' => ['admin/personal/bindphone',['method' => 'post']],
	//签到
	'sign' => ['admin/personal/sign',['method' => 'post|get']],
	
	//创建专区
	'zone' => ['admin/column/zone',['method' => 'post']],
	//查看专区
	'showzone' => ['admin/column/showzone',['method' => 'get|post']],

	//显示朋友圈
	'getfriends' => ['admin/circle/getfriends',['method' => 'get|post']],
	//发朋友圈
	'published' => ['admin/circle/published',['method' => 'get|post']],
	//点赞
	'give' => ['admin/circle/give',['method' => 'post']],
	//评论
	'comments' => ['admin/circle/comments',['method' => 'post']],

	//关注
	'focus' => ['admin/follow/focus',['method' => 'post']],
	//查看关注
	'foucusindex' => ['admin/follow/foucusindex',['method' => 'get|post']],

	//首页
	'shuffling' => ['admin/Frontpage/shuffling',['method' => 'get|post']],

    //聊天入库
    'save_message' => ['admin/Chat/save_message',['method' => 'post']],

    // //支付
    // 'pay' => ['admin/Order/pay',['method' => 'get|post']],
    //支付回调
    'returnurl' => ['admin/Order/returnurl',['method' => 'get|post']],
]);