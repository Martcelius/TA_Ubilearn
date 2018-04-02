<?php

use Illuminate\Database\Eloquent\Model as Eloquent;
use Illuminate\Database\Capsule\Manager as DB;

class M_Course_Forum_Thread extends Eloquent
{
    protected $table = 'course_forum_thread';
    protected $primaryKey = 'cft_id';
    const CREATED_AT = 'cft_timecreated';
    const UPDATED_AT = 'cft_timemodified';

    public function insert_thread_siswa($data)
    {
        $thread = new M_Course_Forum_Thread;
        $thread->cft_title = $data['cft_title'];
        $thread->cft_content = $data['cft_content'];
        $thread->cfr_id = $data['cfr_id'];
        $thread->usr_id = $data['usr_id'];

        return $thread->save();
    }

    public function update_thread_siswa($data)
    {
        $update = M_Course_Forum_Thread::where('cft_id',$data['cft_id'])->first();
        $update->cft_title = $data['cft_title'];
        $update->cft_content = $data['cft_content'];
        if ($data['cfr_id'] != 0){
            $update->cfr_id = $data['cfr_id'];
        };
        return $update->save();

    }

    public function selectByUser($usr_id,$limit = NULL){
        if($limit != NULL){
            $data = M_Course_Forum_Thread::join('course_forum', 'course_forum.cfr_id', '=', 'course_forum_thread.cfr_id')->where('course_forum_thread.usr_id',$usr_id)->orderBy('cft_timecreated', 'desc')->limit($limit)->get();
        }
        else{
            $data = M_Course_Forum_Thread::join('course_forum', 'course_forum.cfr_id', '=', 'course_forum_thread.cfr_id')->where('course_forum_thread.usr_id',$usr_id)->orderBy('cft_timecreated', 'desc')->get();
        }
        return $data;
    }
    
}

?>