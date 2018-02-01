<?php

use Illuminate\Database\Eloquent\Model as Eloquent;
use Illuminate\Database\Capsule\Manager as DB;

class M_User extends Eloquent
{
    protected $table = 'users';

    public function course_enrol_details()
    {
        return $this->hasMany('M_Course_Enrol_Detail', 'end_id');
    }

    public function course_assignment_submissions()
    {
        return $this->hasMany('M_Course_Assignment_Submission', 'sub_id');
    }

    public function course_assesment_question_answer_of_students()
    {
        return $this->hasMany('M_Course_Assesment_Question_Answer_Of_Student', 'ast_id');
    }
    
}

?>