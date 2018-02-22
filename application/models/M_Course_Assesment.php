<?php

use Illuminate\Database\Eloquent\Model as Eloquent;
use Illuminate\Database\Capsule\Manager as DB;

class M_Course_Assesment extends Eloquent
{
    protected $table = 'course_assesment';
    const CREATED_AT = 'ass_timecreated';
    const UPDATED_AT = 'ass_timemodified';
    protected $primaryKey = 'ass_id';
    
    public function insert($data)
    {
		$data->save();
		return $data->ass_id;
    }

    public function select($ass_id){
        $assesment = M_Course_Assesment::where('ass_id',$ass_id)->first();
   		return $assesment;
    }

    public function updates($data,$ass_id){
    	$mca = M_Course_Assesment::where('ass_id','=',$ass_id)->first();
        $mca->ass_name = $data->ass_name;
		$mca->ass_desc = $data->ass_desc;
		$mca->ass_timeopen = $data->ass_timeopen;
		$mca->ass_timeclose = $data->ass_timeclose;
		$mca->crs_id = $data->crs_id;
		$mca->ass_tipe = $data->ass_tipe;
    	$mca->save();
    }

    public function deletes($ass_id){
    	return M_Course_Assesment::where('ass_id','=',$ass_id)->delete();
    }

}

?>