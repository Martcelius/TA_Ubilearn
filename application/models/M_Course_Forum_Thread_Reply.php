<?php

use Illuminate\Database\Eloquent\Model as Eloquent;
use Illuminate\Database\Capsule\Manager as DB;

class M_Course_Forum_Thread_Reply extends Eloquent
{
    protected $table = 'course_forum_thread_reply';
    protected $primaryKey = 'ftr_id';
    const CREATED_AT = 'ftr_timecreated';
    const UPDATED_AT = 'ftr_timemodified';

    public function insert_thread_reply($data)
    {
        $thread = new M_Course_Forum_Thread_Reply;
        $thread->ftr_content = $data['ftr_content'];
        $thread->cft_id = $data['cft_id'];
        $thread->usr_id = $data['usr_id'];
        $thread->save();

        return $thread->ftr_id;
    }

    public function update_rating_reply($data)
    {
        $thread = M_Course_Forum_Thread_Reply::where('ftr_id','=',$data['ftr_id'])->first();
        $thread->ftr_ratingsum = $data['ftr_ratingsum'];
        $thread->ftr_ratingcount = $data['ftr_ratingcount'];
        
        return $thread->save();
    }
}

?>