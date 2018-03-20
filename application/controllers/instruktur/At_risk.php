<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class At_risk extends CI_Controller {


    public function __construct()
    {
        parent::__construct();

    }
    public function index($crs_id)
    {
        $data['sidebar'] = 'layout/sidebar_instruktur';
        $data['content'] = 'instruktur/at_risk';
        $data['assesment'] = M_Course_Assesment_Result::leftjoin("course_assesment","course_assesment.ass_id","=","course_assesment_result.ass_id")
            ->leftjoin("users","users.usr_id","=","course_assesment_result.usr_id")
            ->where("course_assesment_result.ass_id",4)->get();

        $data['assesment_instruktur'] = M_Course_Assesment::leftJoin("course", "course.crs_id","=","course_assesment.crs_id")
            ->leftJoin("users","users.usr_id","=","course.usr_id")
            ->where("course_assesment.ass_id", 4)->first();
        $this->load->view('layout/master', $data);
    }

}