<?php

use Illuminate\Database\Eloquent\Model as Eloquent;
use Illuminate\Database\Capsule\Manager as DB;

class M_Course_Enrol extends Eloquent
{
    protected $table = 'course_enrol';

    public function course()
    {
        return $this->belongsTo('M_Course', 'crs_id');
    }

    public function course_enrol_details() {
        return $this->hasMany('M_Course_Detail', 'end_id');
    }
}

?>