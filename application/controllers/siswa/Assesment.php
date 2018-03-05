<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use Illuminate\Database\Capsule\Manager as DB;

class Assesment extends CI_Controller {

    public function __construct()
    {
        parent::__construct();

        $this->usertracking->track_this();



    }

    public function index($id)
    {

        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/assesment_info';
        $data['assesment']=  DB::table("course_assesment")
            ->leftJoin("course","course.crs_id","=","course_assesment.crs_id")
            ->where("ass_id","=", $id)
            ->first();


        $data['course'] = DB::table("course")
            ->leftJoin('users','users.usr_id', '=','course.usr_id')
            ->where("crs_id", '=',$data['assesment']->crs_id)
            ->first();
//        dd($data['course']);
        $this->load->view('layout/master', $data);
    }

    public function assesment_doing($ass_id)
    {
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/assesment_doing';
        $data['ass_obj'] = $this->M_Course_Assesment->select($ass_id);
        $data['qst'] = $this->M_Course_Assesment_Question->select($ass_id);
        $i = 0;
        foreach($data['qst'] as $c){
            $data['qst_ans'][$i] = $this->M_Course_Assesment_Question_Answer->select($c->qst_id);
            $i++;   
        };
        $mcl = new M_Course_Lesson;
        $data['listLsn'] = $mcl->selectBy('crs_id',$data['ass_obj']->crs_id);
        $data['jumSoal'] = $i;
        $this->load->view('layout/master', $data);
    }
}