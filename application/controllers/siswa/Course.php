<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use Illuminate\Database\Capsule\Manager as DB;

class Course extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        
        $this->load->model('M_Course');
        $this->load->model('M_Course_Enrol');
    }

     public function index()
     {
         $data['sidebar'] = 'layout/sidebar';
         $data['content'] = 'siswa/course_siswa';
         $data['courses']=  DB::table("course")
         ->leftJoin("users","users.usr_id","=","course.usr_id")
         ->get();
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

    public function my_course($crs_id)
    {
        $data['data_course'] = $crs_id;
        $data['data_user'] = $this->session->userdata('id');
        $data['enrol_status'] = "Diambil";
        $input_enroll = $this->M_Course_Enrol->insert_enroll($data);
        if ($input_enroll){
            $this->session->set_flashdata('data_enroll','Anda Telah Mengambil Course');
        }
        $data['my_course'] = DB::table('course_enrol')
            ->leftJoin('course','course.crs_id','=','course_enrol.crs_id')
            ->leftJoin('users','users.usr_id','=','course.usr_id')
            ->where('course_enrol.usr_id',$this->session->userdata('id'))
            ->get();
//        dd($data['my_course']);
//        $data['course'] = DB::table("course")
//            ->leftJoin("users","users.usr_id","=","course.usr_id")
//            ->where('crs_id',$crs_id)->first();
//        $data['lesson'] = M_Course_Lesson::where('crs_id',$crs_id)->get();
//        $data['jml_lesson'] = $data['lesson']->count();
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/my_course';
        $this->load->view('layout/master', $data);
    }
}