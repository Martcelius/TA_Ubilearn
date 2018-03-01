<?php

use Illuminate\Database\Eloquent\Model as Eloquent;
use Illuminate\Database\Capsule\Manager as DB;

class M_Course_Assignment extends Eloquent
{
    protected $table = 'course_assignment';
    const CREATED_AT = 'asg_timecreated';
    const UPDATED_AT = 'asg_timemodified';
    protected $primaryKey = 'asg_id';
}

?>