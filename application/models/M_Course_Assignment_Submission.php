<?php

use Illuminate\Database\Eloquent\Model as Eloquent;
use Illuminate\Database\Capsule\Manager as DB;

class M_Course_Assignment_Submission extends Eloquent
{
    protected $table = 'course_assignment_submission';
    const CREATED_AT = 'sub_timecreated';
    const UPDATED_AT = 'sub_timemodified';
    public function cek_user($asg_id,$colName,$value)
    {
        $data = M_Course_Assignment_Submission::where($colName,$value)
            ->where('asg_id',$asg_id)
            ->first();
        return $data;
    }
    public function insert($data,$asg_id)
    {
        $asg = new M_Course_Assignment_Submission();
        $asg->sub_attachment = $data['file'];
        $asg->asg_id = $asg_id;
        $asg->usr_id = $data['usr_id'];
        if($data['time_created'] <= $data['due_date'])
        {
            $asg->sub_due_status = 'Ontime';
        } elseif ($data['time_created'] > $data['due_date']) {
            $asg->sub_due_status = 'Late';
        }
        return $asg->save();
    }
    
}

?>