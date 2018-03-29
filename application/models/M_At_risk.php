<?php

use Illuminate\Database\Eloquent\Model as Eloquent;
use Illuminate\Database\Capsule\Manager as DB;

class M_At_risk extends Eloquent
{
    protected $table = 'at_risk';
    const CREATED_AT = 'crs_timecreated';
    const UPDATED_AT = 'crs_timemodified';
    protected $primaryKey = 'ar_id';

    public function select($usr_id){
        $assesment = M_At_risk::where('usr_id',$usr_id)->get();
        return $assesment;
        //cont assesment
    }
    public function insert_ar($data)
    {
        $at_risk = new M_At_risk;
        $at_risk->usr_id = $data['usr_id'];
        $at_risk->crs_id = $data['crs_id'];
        $at_risk->ass_id = $data['ass_id'];
        $at_risk->save();
//        return $data;
    }
}

?>