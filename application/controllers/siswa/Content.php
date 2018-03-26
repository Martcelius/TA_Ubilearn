<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use Illuminate\Database\Capsule\Manager as DB;

class Content extends CI_Controller {

    public function __construct()
    {
        parent::__construct();

    }

    public function index($lsn_id)
    {
        $data['course'] = M_Course_Lesson::leftJoin('course','course.crs_id','=','course_lesson.crs_id')
            ->leftJoin('users','users.usr_id','=','course.usr_id')
            ->where('course_lesson.lsn_id',$lsn_id)
            ->first();
        $data['contents'] = M_Course_Content::where('lsn_id',$lsn_id)->get();
//        dd($data['content']);

        // Capture Log Start
        $event = array(
            'usr_id'            => $this->session->userdata('id'),
            'log_event_context' => "View Lesson:" . " " . $data['course']->lsn_name,
            'log_referrer'      => $this->input->server('REQUEST_URI'),
            'log_name'          => "View Course",
            'log_origin'        => $this->agent->agent_string(),
            'log_ip'            => $this->input->server('REMOTE_ADDR'),
            'log_desc'          => $this->session->userdata('username'). " " 
            ."melakukan aksi View Lesson" . " '" . $data['course']->lsn_name . "' " 
            . "pada Course" . " '" . $data['course']->crs_name . "'"
        );
        $this->lib_event_log->add_user_event($event);
        // Capture Log End

        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/course_materi';
        $this->load->view('layout/master',$data);

    }

    public function contents($cnt_id)
    {
        $data['kontent'] = M_Course_Content::leftJoin('course_lesson','course_lesson.lsn_id','=','course_content.lsn_id')
            ->leftJoin('course','course.crs_id','=','course_lesson.crs_id')
            ->leftJoin('users','users.usr_id','=','course.usr_id')
            ->where('course_content.cnt_id',$cnt_id)
            ->first();
        $data['LO'] = M_Course_Learning_Outcomes::where('loc_id',$data['kontent']->loc_id)->first();
//        dd($data['kontent']);

        if ($data['kontent']->cnt_type == "Text"){

            // Capture Log Start
            $event = array(
                'usr_id'            => $this->session->userdata('id'),
                'log_event_context' => "View Content:" . " " . $data['kontent']->cnt_name,
                'log_referrer'      => $this->input->server('REQUEST_URI'),
                'log_name'          => "View Content Text",
                'log_origin'        => $this->agent->agent_string(),
                'log_ip'            => $this->input->server('REMOTE_ADDR'),
                'log_desc'          => $this->session->userdata('username'). " " 
                ."melakukan aksi View Content" . " '" . $data['kontent']->cnt_name . "' " 
                ."pada Lesson" . " " . $data['kontent']->lsn_name . "' " 
                . "pada Course" . " '" . $data['kontent']->crs_name . "'"
            );
            $this->lib_event_log->add_user_event($event);
            // Capture Log End
            $data['content'] = 'siswa/course_content';
        }
        else{

            // Capture Log Start
            $event = array(
                'usr_id'            => $this->session->userdata('id'),
                'log_event_context' => "View Content:" . " " . $data['kontent']->cnt_name,
                'log_referrer'      => $this->input->server('REQUEST_URI'),
                'log_name'          => "View Content Video",
                'log_origin'        => $this->agent->agent_string(),
                'log_ip'            => $this->input->server('REMOTE_ADDR'),
                'log_desc'          => $this->session->userdata('username'). " " 
                ."melakukan aksi View Content" . " '" . $data['kontent']->cnt_name . "' " 
                ."pada Lesson" . " '" . $data['kontent']->lsn_name . "' " 
                . "pada Course" . " '" . $data['kontent']->crs_name . "."
            );
            $this->lib_event_log->add_user_event($event);
            // Capture Log End
            $data['content'] = 'siswa/course_video';
        }

        $data['sidebar'] = 'layout/sidebar';
        $this->load->view('layout/master',$data);
    }

    public function countLogContent($lsn_id ){
        $clc = DB::table('lesson_access_log')->where('lsn_id',$lsn_id)->where('usr_id',$this->session->userdata('id'))->exists();
        if($clc == NULL){
            $clc = DB::table('lesson_access_log')->insert(['lsn_id' => $lsn_id, 'usr_id' => $this->session->userdata('id')]);
        }
    }




}