<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use Illuminate\Database\Capsule\Manager as DB;

class Assesment extends CI_Controller {

    public function __construct()
    {
        parent::__construct();

        $this->load->model('M_Course');
        $this->load->model('M_Course_Assesment');
        $this->load->model('M_Course_Assesment_Question');
        $this->load->model('M_Course_Assesment_Question_Answer');

    }

    public function index()
    {

        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/assesment_info';
        $data['assesment']=  DB::table("course_assesment")
            ->leftJoin("course_lesson","course_lesson.lsn_id","=","course_assesment.lsn_id")
            ->where("ass_id","=", 1)
            ->first();
//        dd($data['assesment']);
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