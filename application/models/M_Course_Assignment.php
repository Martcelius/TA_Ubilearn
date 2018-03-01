<?php

use Illuminate\Database\Eloquent\Model as Eloquent;
use Illuminate\Database\Capsule\Manager as DB;

class M_Course_Assignment extends Eloquent
{
    protected $table = 'course_assignment';
    const CREATED_AT = 'asg_timecreated';
    const UPDATED_AT = 'asg_timemodified';
    protected $primaryKey = 'asg_id';


    public function course()
    {
        return $this->belongsTo('M_Course', 'crs_id');
    }

    public function insert($data)
    {
        $asg = new M_Course_Assignment;
        $asg->asg_name = $data['m-nama-asg'];
        $asg->asg_text = $data['m-deskripsi-asg'];
        $asg->crs_id = $data['crs_id'];
        $asg->asg_attachment = $data['asg_attachment'];
        $asg->asg_duedate = $data['asg_date'];
        
        return $asg->save();
    }

    public function update_asing($data)
    {
        $updateasing = M_Course_Assignment::where('asg_id',$data['asg_id'])->first();
        $updateasing->asg_name = $data['asg_name'];
        $updateasing->asg_text = $data['asg_text'];
        $updateasing->asg_duedate = $data['asg_waktu'];

        return $updateasing->save();
    }
    
}

?>