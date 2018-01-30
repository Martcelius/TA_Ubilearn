<?php

use Illuminate\Database\Eloquent\Model as Eloquent;
use Illuminate\Database\Capsule\Manager as DB;

class M_Course extends Eloquent
{
    protected $table = 'course';

    public function course_enrol()
    {
        return $this->hasMany('M_Course_Enrol', 'crs_id');
    }

    public function course_assesment()
    {
        return $this->hasMany('M_Course_Assesment', 'crs_id');
    }

    public function course_lesson()
    {
        return $this->hasMany('M_Course_Lesson', 'crs_id');
    }

    public function course_assignment()
    {
        return $this->hasMany('M_Course_Assignment', 'crs_id');
    }
}

?>