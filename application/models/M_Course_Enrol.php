<?php

use Illuminate\Database\Eloquent\Model as Eloquent;
use Illuminate\Database\Capsule\Manager as DB;

class M_Course_Enrol extends Eloquent
{
    protected $table = 'course_enrol';
    const CREATED_AT = 'enr_timecreated';
    const UPDATED_AT = 'enr_timemodified';
    protected $primaryKey = 'enr_id';

    public function course()
    {
        return $this->belongsTo('M_Course', 'crs_id');
    }

    public function course_enrol_details() {
        return $this->hasMany('M_Course_Detail', 'end_id');
    }

    public function insert_enroll($data)
    {
        $insert = new M_Course_Enrol;
        $insert->enr_status = $data['enrol_status'];
        $insert->crs_id = $data['data_course'];
        $insert->usr_id = $data['data_user'];
        return $insert->save();

    }
}

?>