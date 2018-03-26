<?php

use Illuminate\Database\Eloquent\Model as Eloquent;
use Illuminate\Database\Capsule\Manager as DB;

class M_Course_Assesment_Result extends Eloquent
{
    protected $table = 'course_assesment_result';

    const CREATED_AT = NULL;
    const UPDATED_AT = NULL;
    protected $primaryKey = 'id';


    public function insert($data)
    {
        $cek = M_Course_Assesment_Result::where("ass_id",$data->ass_id)
            ->where("usr_id",$data->usr_id)->get();
//        dd($cek->count());
        if($cek->count() == 0){
            $data->save();
            $res = true;
        }
        else{
            $res = false;
        }
        return $res;
    }
}

?>