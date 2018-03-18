<?php

use Illuminate\Database\Eloquent\Model as Eloquent;
use Illuminate\Database\Capsule\Manager as DB;

class M_Course_Learning_Outcomes extends Eloquent
{
    protected $table = 'course_learning_outcomes';
    const CREATED_AT = 'loc_timecreated';
    const UPDATED_AT = 'loc_timemodified';
    protected $primaryKey = 'loc_id';

    public function insert_lo($lo,$crs_id)
    {
        $jum = count($lo);
        $i = 0;
        while ($i < $jum){
            $loc = new M_Course_Learning_Outcomes;
            $loc->loc_desc = $lo[$i];
            $loc->crs_id = $crs_id;
            $stat = $loc->save();
            $i++;
        }
//        $num = 0;
//        foreach ($lo as $loc){
//            $lo = new M_Course_Learning_Outcomes;
//            $lo->loc_desc = $loc[$num];
//            $lo->crs_id = $crs_id;
//            $num++;
//        }

//        return $lo ->save();
        return $stat;
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

    public function selectBy($name_col,$id){
        $data = M_Course_Learning_Outcomes::where($name_col,$id)->get();
        return $data;
    }
}

?>