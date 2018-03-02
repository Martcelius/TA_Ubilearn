<?php

use Illuminate\Database\Eloquent\Model as Eloquent;
use Illuminate\Database\Capsule\Manager as DB;

class M_Course_Content extends Eloquent
{
    protected $table = 'course_content';
    const CREATED_AT = 'cnt_timecreated';
    const UPDATED_AT = 'cnt_timemodified';
    protected $primaryKey = 'cnt_id';

    public function insert_content($cntData)
    {
        $content = new M_Course_Content;
        $content->cnt_name = $cntData['cnt_name'];
        $content->cnt_desc = $cntData['cnt_desc'];
        $content->cnt_comment = $cntData['cnt_comment'];
        $content->cnt_type = $cntData['cnt_type'];
        $content->cnt_source = $cntData['cnt_source'];
        $content->lsn_id = $cntData['lsn_id'];
        $content->loc_id = $cntData['loc_id'];

        return $content->save();
    }

    public function update_content($data)
    {
        $update = M_Course_Content::where('cnt_id',$data['cnt_id'])->first();
        $update->cnt_name= $data['cnt_name'];
        $update->cnt_desc= $data['cnt_desc'];
        $update->cnt_comment= $data['cnt_comment'];
        if ($data['cnt_type'] != NULL){

            $update->cnt_type= $data['cnt_type'];
            $update->cnt_source= $data['cnt_source'];
        }
        if ($data['loc_id'] != 0){

            $update->loc_id= $data['loc_id'];
        }
        return $update->save();
        
    }

}

?>