<?php

use Illuminate\Database\Eloquent\Model as Eloquent;
use Illuminate\Database\Capsule\Manager as DB;

class M_Course_Assignment_loc extends Eloquent
{
    protected $table = 'course_assignment_loc';
    const CREATED_AT = NULL;
    const UPDATED_AT = NULL;

    public function insert($lo,$data)
    {
        $jum = count($lo);
        $i = 0;
        while ($i < $jum){
            $loc = new M_Course_Assignment_loc;
            $loc->loc_id = $lo[$i];
            $loc->asg_id = $data['lo_asg_id'];
            $stat = $loc->save();
            $i++;
        }
        return $stat;
    }
}

?>