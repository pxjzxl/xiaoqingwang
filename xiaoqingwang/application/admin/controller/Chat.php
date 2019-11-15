<?php
/**
 * Created by PhpStorm.
 * User: hp
 * Date: 2019/10/19
 * Time: 9:15
 */
namespace app\admin\controller;
use think\Controller;
use think\Request;
use think\Db;

class Chat extends Controller
{
    public function chatindex() {
        return $this->fetch('login/index');
    }

    public function save_message(Request $request) {
        $fromid = $request->post('fromid');
        $toid = $request->post('toid');
        // dump($fromid);
        // dump($toid);
        // $message = $request->post();
        // $datas['fromid'] = $message['fromid'];
        // $datas['fromname'] = $this->getName($message['fromid']);
        // $datas['toid'] = $message['toid'];
        // $datas['toname'] = $this->getName($message['toid']);
        // $datas['content'] = $message['content'];
        // $datas['time'] = $message['time'];
        // $datas['isread'] = 0;
        // $datas['type'] = 1;
        // Db::name('communication') -> insert($datas);
    }

    public function getName($id) {
        $info = Db::name('admin') -> where('id',$id) -> field('username') -> find();
        return $info['username'];
    }
}