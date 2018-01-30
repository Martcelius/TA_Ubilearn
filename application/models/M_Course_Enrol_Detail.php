<?php

use Illuminate\Database\Eloquent\Model as Eloquent;
use Illuminate\Database\Capsule\Manager as DB;

class M_Course_Enrol_Detail extends Eloquent
{
    protected $table = 'course_enrol_detail';

    public function users()
    {
        return $this->belongsTo('M_User', 'role_id');
    }

    public function course_enrol()
    {
        return $this->belongsTo('M_Course_Enrol', 'enr_id');
    }

}

?>