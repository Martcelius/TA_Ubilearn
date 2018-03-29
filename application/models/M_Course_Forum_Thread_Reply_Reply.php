<?php

use Illuminate\Database\Eloquent\Model as Eloquent;
use Illuminate\Database\Capsule\Manager as DB;

class M_Course_Forum_Thread_Reply_Reply extends Eloquent
{
    protected $table = 'course_forum_thread_reply_reply';
    protected $primaryKey = 'trr_id';
    const CREATED_AT = 'trr_timecreated';
    const UPDATED_AT = 'trr_timemodified';

    public function insert_thread_reply_reply($data)
    {
        $thread = new M_Course_Forum_Thread_Reply_Reply;
        $thread->trr_content = $data['trr_content'];
        $thread->ftr_id = $data['ftr_id'];
        $thread->usr_id = $data['usr_id'];
        $thread->save();

        return $thread->trr_id;
    }

    public function update_rating_reply_reply($data)
    {
        $thread = M_Course_Forum_Thread_Reply_Reply::where('trr_id','=',$data['trr_id'])->first();
        $thread->trr_ratingsum = $data['trr_ratingsum'];
        $thread->trr_ratingcount = $data['trr_ratingcount'];
        
        return $thread->save();
    }
    
}

?>