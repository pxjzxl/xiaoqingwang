<?php 
namespace app\admin\model;
use think\Model;

class Task extends Model
{
	protected $field = array('title','column_id','user_id','amount','recipient_id','img','status','complete','emergency','evaluate','createtime','purchasetime','deadline','recipient_compete','recipient_compete_time');

	public static function addrecipient($title,$amount,$img,$column_id,$emergency,$user_id) {
		$data = [
			'title' => $title,
			'amount' => $amount,
			'img' => $img,
			'column_id' => $column_id,
			'user_id' => $user_id,
			'emergency' => $emergency,
			'createtime' => time(),
		];
		$model = new Task;
		$res = $model->allowField(true)->save($data);
		if(!$res) return false;
		return true; 
	}

	public static function support($recipient_id,$task_id) {
		$data = [
			'recipient_id' => $recipient_id,
			'status' => 1,
			'purchasetime' => time()
		];
		$model = new Task;
		$res = $model->where('id',$task_id)->update($data);
		if(!$res) return false;
		return true;
	}

	public static function complete($taskid,$userid,$nobalance,$isrecipient=false) {
		$model = new Task;
		if($isrecipient) {
			$res = $model->where('id',$taskid)->update(['recipient_compete' => 1,'recipient_compete_time' => time()]);
			if(!$res) return false;
			return true;
		}
		$gettask = $model->getById($taskid);
		$taskuserid = $gettask->user_id;
		if($taskuserid != $userid) return false;
		if($nobalance < $gettask->amount) return false;
		$isrecomp = $model->where('id',$taskid)->field('recipient_compete')->find();
		if($isrecomp->recipient_compete == 1) {
            $res = $model->where('id',$taskid)->update(['complete' => 1,'deadline' => time()]);
        } else {
            $res = $model->where('id',$taskid)->update(['complete' => 1,'deadline' => time(),'recipient_compete' => 1,'recipient_compete_time' => time()]);
        }
		if(!$res) return false;
		$data = [];
		$data['amount'] = $gettask->amount;
		$data['recipientid'] = $gettask->recipient_id;
		$data['user'] = $gettask->user_id;
		return $data;
	}

	public function column() {
		return $this->belongsTo('column');
	}

	public function admin() {
		return $this->belongsTo('admin');
	}
}