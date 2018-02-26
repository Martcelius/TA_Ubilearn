<?php

use Illuminate\Database\Eloquent\Model as Eloquent;
use Illuminate\Database\Capsule\Manager as DB;

class M_Course_Learning_Outcomes extends Eloquent
{
    protected $table = 'course_learning_outcomes';
    const CREATED_AT = 'loc_timecreated';
    const UPDATED_AT = 'loc_timemodified';
    protected $primaryKey = 'loc_id';

    public function insert_lo($data)
    {
        $lo = new M_Course_Learning_Outcomes;
        $lo->loc_desc = $data['loc_desc'];
        $lo->crs_id = $data['crs_id'];
        return $lo ->save();
    }

    public function update_lo($data)
    {
        $updatelo = M_Course_Learning_Outcomes::where('loc_id',$data['id'])->first();
        $updatelo->loc_desc = $data['loc_desc'];
        if($data['crs_id'] != NULL){
            $updatelo->crs_id = $data['crs_id'];
        }
        return $updatelo ->save();
    }
}

?>