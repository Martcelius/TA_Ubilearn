<?php

use Illuminate\Database\Eloquent\Model as Eloquent;
use Illuminate\Database\Capsule\Manager as DB;

class M_Course_Assesment_Question_Answer extends Eloquent
{
    protected $table = 'course_assesment_questions_answer';

    const CREATED_AT = NULL;
    const UPDATED_AT = NULL;
    protected $primaryKey = 'ans_id';
<<<<<<< HEAD
=======

>>>>>>> e075490118df2eb79f7e43792394c3307be161e0
    
    public function insert($data)
    {
    	return $data->save();
    }

    public function select($qst_id){
        $qst_ans = M_Course_Assesment_Question_Answer::where('qst_id',$qst_id)->get();
   		return $qst_ans;
    }

    public function updates($data,$ans_id){
    	if($ans_id){
    		$mcaqa = M_Course_Assesment_Question_Answer::where('ans_id','=',$ans_id)->first();
	    	$mcaqa->ans_text = $data->ans_text;
	        $mcaqa->ans_point = $data->ans_point;
	    	$return = $mcaqa->save();
    	}
    	else{
    		$return = $this->insert($data);
    	}
    	return $return;
    }

    public function deletes($ans_id){
    	return M_Course_Assesment_Question_Answer::where('ans_id','=',$ans_id)->delete();
    }
}

?>