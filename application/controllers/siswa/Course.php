<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Course extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        
    }

     public function index()
     {
         $data['sidebar'] = 'layout/sidebar';
         $data['content'] = 'siswa/course_siswa';
         $data['courses']=  M_Course::leftJoin("users","users.usr_id","=","course.usr_id")->get();
         $this->load->view('layout/master', $data);
     }

    public function course_close($crs_id)
    {
        $data['dataCourse'] = M_Course::leftJoin("users","users.usr_id","=","course.usr_id")->where('crs_id',$crs_id)->first();

        $data['dataCourseLain'] = M_Course::where('crs_id', '<>', $crs_id)->get();

        // Capture Log Start
        $event = array(
            'usr_id'            => $this->session->userdata('id'),
            'log_event_context' => $this->input->server('REQUEST_URI'),
            'log_referrer'      => $this->agent->referrer(),
            'log_name'          => "View Course",
            'log_origin'        => $this->agent->agent_string(),
            'log_ip'            => $this->input->server('REMOTE_ADDR'),
            'log_desc'          => $this->session->userdata('username'). " " ."melakukan aksi View Course" . " " . $data['dataCourse']->crs_name
        );
        $this->lib_event_log->add_user_event($event);
        // Capture Log End
        
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/course_close';
        $this->load->view('layout/master', $data);
    }

    public function enrol($crs_id)
    {
        $data['data_course'] = M_Course::where('crs_id',$crs_id)->first();
        $data['data_user'] = $this->session->userdata('id');
        $data['enrol_status'] = "Diambil";
        $enroll = $this->M_Course_Enrol->insert_enroll($data);
        if ($enroll){
            $this->session->set_flashdata('data_enroll','Anda Mengambil Course '.$data['data_course']->crs_name);
        }

        // Capture Log Start
        $event = array(
            'usr_id'            => $this->session->userdata('id'),
            'log_event_context' => $this->input->server('REQUEST_URI'),
            'log_referrer'      => $this->agent->referrer(),
            'log_name'          => "Enrol",
            'log_origin'        => $this->agent->agent_string(),
            'log_ip'            => $this->input->server('REMOTE_ADDR'),
            'log_desc'          => $this->session->userdata('username'). " " ."melakukan aksi Enrol Course" . " " . $data['data_course']->crs_name
        );
        $this->lib_event_log->add_user_event($event);
        // Capture Log End

        redirect('siswa/my_course');
    }

    public function my_course(){
        $data['my_course'] = M_Course_Enrol::leftJoin('course','course.crs_id','=','course_enrol.crs_id')
            ->leftJoin('users','users.usr_id','=','course.usr_id')
            ->where('course_enrol.usr_id',$this->session->userdata('id'))
            ->get();
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/my_course';
        $this->load->view('layout/master', $data);
    }

    public function course_detail($crs_id)
    {
       $data['course'] = M_Course::leftJoin("users","users.usr_id","=","course.usr_id")
                           ->where('crs_id',$crs_id)->first();
       $data['lesson'] = M_Course_Lesson::where('crs_id',$crs_id)->get();
       $data['jml_lesson'] = $data['lesson']->count();
        // $data['id'] = $crs_id;
        //list assesment
        $listAss = $this->M_Course_Assesment->selectBy('crs_id',$crs_id);
        $i = 0;
        $jumSoal = array();
        foreach($listAss as $c){
            $soal = $this->M_Course_Assesment_Question->select($c->ass_id);
            $jumSoal[$i] = $soal->count();
            $i++;
        }

        // Capture Log Start
        $event = array(
            'usr_id'            => $this->session->userdata('id'),
            'log_event_context' => $this->input->server('REQUEST_URI'),
            'log_referrer'      => $this->agent->referrer(),
            'log_name'          => "View Course",
            'log_origin'        => $this->agent->agent_string(),
            'log_ip'            => $this->input->server('REMOTE_ADDR'),
            'log_desc'          => $this->session->userdata('username'). " " ."melakukan aksi View Course" . " " . $data['course']->crs_name,
        );
        $this->lib_event_log->add_user_event($event);
        // Capture Log End

        //list assignment
        $data['assignment'] = M_Course_Assignment::where('crs_id',$crs_id)->get();
        $data['jml_assignment'] = $data['assignment']->count();
        $data['listAss'] = $listAss;
        $data['jumSoal'] = $jumSoal;
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/course_detail';
        $this->load->view('layout/master', $data);
    }
}