<?php

use Illuminate\Database\Eloquent\Model as Eloquent;
use Illuminate\Database\Capsule\Manager as DB;

class M_Course_Enrol_Detail extends Eloquent
{
    protected $table = 'course_enrol_detail';
    const CREATED_AT = 'end_timecreated';
    const UPDATED_AT = 'end_timemodified';
    protected $primaryKey = 'end_id';

    public function users()
    {
        return $this->belongsTo('M_User', 'role_id');
    }

    public function course_enrol()
    {
        return $this->belongsTo('M_Course_Enrol', 'enr_id');
    }

    public function insert_detail($data,$enr_id)
    {
        $insert = new M_Course_Enrol_Detail;
        $insert->end_status = $data['detail_status'];
        $insert->usr_id = $data['data_user'];
        $insert->enr_id = $enr_id;
        return $insert->save();

    }

}

?>