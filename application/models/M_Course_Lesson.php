<?php

use Illuminate\Database\Eloquent\Model as Eloquent;
use Illuminate\Database\Capsule\Manager as DB;

class M_Course_Lesson extends Eloquent
{
    protected $table = 'course_lesson';

    public function course()
    {
        return $this->belongsTo('M_Course_Enrol', 'crs_id');
    }


}

?>