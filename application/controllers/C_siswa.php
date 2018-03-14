<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use Illuminate\Database\Capsule\Manager as DB;

class C_siswa extends CI_Controller {


    public function __construct()
    {
        parent::__construct();

    }

    public function index()
    {

    }

    public function dashboard_siswa()
    {
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/dashboard_siswa';
        $cenr = new M_Course_Enrol;
        $data['list_course'] = $cenr->selectByUser($this->session->userdata('id'),5);
        $ans = new M_Course_Assesment_Question_Answer_Of_Student;
        $ansStd = $ans->selectByUser($this->session->userdata('id'));
        $ass = new M_Course_Assesment;
        $i = 0;
        $listAss = array();
        foreach($ansStd as $c){
            $listAss[$i] = $ass->select($c->ass_id);
            $i++;
        }
        $data['listAss'] = $listAss;
        $data['ansStd'] = $ansStd;
        $this->load->view('layout/master', $data);

    }

    public function forum_siswa()
    {
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/forum_siswa';
        $this->load->view('layout/master',$data);
    }

    public function assignment_opening()
    {
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/assignment_opening';
        $this->load->view('layout/master', $data);

    }

    public function assesment_doing($id)
    {
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/assesment_doing';
        $this->load->view('layout/master', $data);

    }


    public function exercise_doing()
    {
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/exercise_doing';
        $this->load->view('layout/master', $data);

    }

    public function result($id)
    {
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/result';
        $data['assesment']=  M_Course_Assesment::leftJoin("course","course.crs_id","=","course_assesment.crs_id")
            ->where("ass_id","=", $id)
            ->first();


        $data['course'] = M_Course::leftJoin('users','users.usr_id', '=','course.usr_id')
            ->where("crs_id", '=',$data['assesment']->crs_id)
            ->first();
        $this->load->view('layout/master', $data);
    }

    public function assignment_detail($asg_id)
    {
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/assignment_detail';
        $data['assignment']=  M_Course_Assignment::leftJoin("course","course.crs_id","=","course_assignment.crs_id")
            ->where("asg_id","=", $asg_id)
            ->first();
        $this->load->view('layout/master', $data);

    }


    public function remedial()
    {
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/remedial';
        $this->load->view('layout/master', $data);
    }
    public function pretest()
    {
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/pretest';
        $this->load->view('layout/master', $data);
    }
    public function course_materi()
    {
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/course_materi';
        $this->load->view('layout/master', $data);
    }

    public function list_thread_siswa()
    {
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/list_thread_siswa';
        $this->load->view('layout/master', $data);
    }

    public function detail_thread_siswa()
    {
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/detail_thread_siswa';
        $this->load->view('layout/master', $data);
    }

    public function add_thread_siswa()
    {
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/add_thread_siswa';
        $this->load->view('layout/master', $data);
    }

    public function edit_thread_siswa()
    {
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/edit_thread_siswa';
        $this->load->view('layout/master', $data);
    }
}
