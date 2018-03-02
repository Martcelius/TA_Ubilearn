<?php

use Illuminate\Database\Eloquent\Model as Eloquent;
use Illuminate\Database\Capsule\Manager as DB;

class M_Course_Assesment_Question_Answer_Of_Student extends Eloquent
{
    protected $table = 'course_assesment_questions_answer_of_student';
    protected $primaryKey = 'ast_id';
    const CREATED_AT = NULL;
    const UPDATED_AT = NULL;

    public function insert($data)
 	{
 		$cek = M_Course_Assesment_Question_Answer_Of_Student::where(['ans_id' => $data->ans_id],['usr_id' => $data->usr_id])->get();
 		if($cek->count() == 0){
	 		$data->save();
			$r = $data->ast_id;
 		}
 		else{
 			$r = false;
 		}
 		return $r;
 	}

 	public function select($ass_id,$usr_id){
        $ast = M_Course_Assesment_Question_Answer_Of_Student::where(['ass_id' => $ass_id],['usr_id' => $usr_id])->get();
   		return $ast;
    }
    
}

?>