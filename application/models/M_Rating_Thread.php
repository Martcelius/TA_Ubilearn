<?php

use Illuminate\Database\Eloquent\Model as Eloquent;
use Illuminate\Database\Capsule\Manager as DB;

class M_Rating_Thread extends Eloquent
{
    protected $table = 'rating_thread';
    protected $primaryKey = 'rtd_id';
    const CREATED_AT = 'rtd_timecreated';
    const UPDATED_AT = NULL;

    public function insert_rating_thread($data)
    {
        $thread = new M_Rating_Thread;
        $thread->cft_id = $data['cft_id'];
        $thread->usr_id = $data['usr_id'];
        $thread->rtd_rated = $data['rtd_rated'];
        return $thread->save();
    }
    
    
}

?>