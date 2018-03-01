<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use Illuminate\Database\Capsule\Manager as DB;

class Course extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        
        $this->load->model('M_Course');
        $this->load->model('M_Course_Enrol');
        $this->load->model('M_Course_Assesment');
        $this->load->model('M_Course_Assesment_Question');

        $this->load->library('usertracking'); $this->usertracking->track_this();
    }

     public function index()
     {
         $data['sidebar'] = 'layout/sidebar';
         $data['content'] = 'siswa/course_siswa';
         $data['courses']=  DB::table("course")
         ->leftJoin("users","users.usr_id","=","course.usr_id")
         ->get();
         $data['course_enrol'] = M_Course_Enrol::where('usr_id',$this->session->userdata('id'))->get(['crs_id']);
        //  $coba = DB::table('course_enrol')->where('crs_id',50)->where('usr_id',$this->session->userdata('id'))->first();
        //  dd($coba);
         $this->load->view('layout/master', $data);
     }

    public function course_close($crs_id)
    {
        $data['dataCourse'] = DB::table("course")
            ->leftJoin("users","users.usr_id","=","course.usr_id")
            ->where('crs_id',$crs_id)->first();

        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/course_close';
        $this->load->view('layout/master', $data);
    }

    public function enrol($crs_id)
    {
        $data['data_course'] = M_Course::where('crs_id',$crs_id)->first();
        $data['data_user'] = $this->session->userdata('id');
        $data['enrol_status'] = "Diambil";
        $input_enroll = $this->M_Course_Enrol->insert_enroll($data);
        if ($input_enroll){
            $this->session->set_flashdata('data_enroll','Anda Mengambil Course '.$data['data_course']->crs_name);
        }
//        dd($data['my_course']);
        redirect('siswa/my_course');
    }

    public function my_course(){
        $data['my_course'] = DB::table('course_enrol')
            ->leftJoin('course','course.crs_id','=','course_enrol.crs_id')
            ->leftJoin('users','users.usr_id','=','course.usr_id')
            ->where('course_enrol.usr_id',$this->session->userdata('id'))
            ->get();
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/my_course';
        $this->load->view('layout/master', $data);
    }

    public function course_detail($crs_id)
    {
       $data['course'] = DB::table("course")
                           ->leftJoin("users","users.usr_id","=","course.usr_id")
                           ->where('crs_id',$crs_id)->first();
        $data['lesson'] = M_Course_Lesson::where('crs_id',$crs_id)->get();
        $data['jml_lesson'] = $data['lesson']->count();
        // $data['id'] = $crs_id;
        $listAss = $this->M_Course_Assesment->selectBy('crs_id',$crs_id);
        $i = 0;
        $jumSoal = array();
        foreach($listAss as $c){
            $soal = $this->M_Course_Assesment_Question->select($c->ass_id);
            $jumSoal[$i] = $soal->count();
            $i++;
        }
        $data['listAss'] = $listAss;
        $data['jumSoal'] = $jumSoal;
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/course_detail';
        $this->load->view('layout/master', $data);
    }
}