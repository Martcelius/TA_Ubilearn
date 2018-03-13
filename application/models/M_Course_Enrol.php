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
        $insert->usr_id = $data['data_user'];
        $insert->crs_id = $data['data_course']->crs_id;
        return $insert->save();
//        return $insert->enr_id;
    }

    public function selectByUser($usr_id,$limit = NULL){
        if($limit != NULL){
            $data = M_Course_Enrol::join('course', 'course.crs_id', '=', 'course_enrol.crs_id')->where('course_enrol.usr_id',$usr_id)->orderBy('enr_timecreated', 'desc')->limit($limit)->get();
        }
        else{
            $data = M_Course_Enrol::join('course', 'course.crs_id', '=', 'course_enrol.crs_id')->where('course_enrol.usr_id',$usr_id)->orderBy('enr_timecreated', 'desc')->get();
        }
        return $data;
    }
}

?>