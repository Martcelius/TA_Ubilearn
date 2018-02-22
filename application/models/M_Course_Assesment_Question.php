<?php

use Illuminate\Database\Eloquent\Model as Eloquent;
use Illuminate\Database\Capsule\Manager as DB;

class M_Course_Assesment_Question extends Eloquent
{
    protected $table = 'course_assesment_question';
    const CREATED_AT = 'qst_timecreated';
    const UPDATED_AT = 'qst_timemodified';
    protected $primaryKey = 'qst_id';
 	
 	public function insert($data)
 	{
 		$data->save();
		return $data->qst_id;
 	}

 	public function select($ass_id){
        $qst = M_Course_Assesment_Question::where('ass_id',$ass_id)->get();
   		return $qst;
    }

    public function updates($data,$qst_id){
    	if($qst_id){
    		$mcaq = M_Course_Assesment_Question::where('qst_id','=',$qst_id)->first();
	    	$mcaq->qst_text = $data->qst_text;
	    	$mcaq->save();
	    	$return = $qst_id;
    	}else{
    		$this->insert($data);
    		$return = $data->qst_id;
    	}
    	return $return;
    }  

    public function deletes($qst_id){
    	return M_Course_Assesment_Question::where('qst_id','=',$qst_id)->delete();
    } 
}

?>