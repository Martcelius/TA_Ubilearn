<?php

use Illuminate\Database\Eloquent\Model as Eloquent;
use Illuminate\Database\Capsule\Manager as DB;

class M_Notification extends Eloquent
{
    protected $table = 'notifications';
    const CREATED_AT = 'ntf_time';
    const UPDATED_AT = NULL;
    protected $primaryKey = 'ntf_id';

    public function course()
    {
        return $this->belongsTo('M_Course', 'crs_id');
    }

    public function user()
    {
        return $this->belongsTo('M_User', 'usr_id');
    }

    public function insert($data)
    {
        $notif = new M_Notification;
        $notif->ntf_type = $data['ntf_type'];
        $notif->ntf_instructor = $data['ntf_instructor'];
        $notif->ntf_message = $data['ntf_message'];
        $notif->ntf_read = $data['ntf_read'];
        $notif->lsn_id = $data['lsn_id'];
        $notif->ass_id = $data['ass_id'];
        $notif->asg_id = $data['asg_id'];
        $notif->usr_id = $data['usr_id'];

        return $notif->save();
    }
}

?>