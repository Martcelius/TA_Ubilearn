<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use Illuminate\Database\Capsule\Manager as DB;

class Content extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('level')=="1") {
            redirect('admin/dashboard');
        } else if ($this->session->userdata('level')=="3") {
            redirect('instruktur/dashboard');
        } else if ($this->session->userdata('level') == NULL) {
            redirect('');
        } else {
            if($this->session->userdata('ls') == 0){
                redirect('siswa/kuesioner_ls');
            }
            else if($this->session->userdata('tr') == 0){
                redirect('siswa/kuesioner_tr');
            }
        }
    }

    public function index($lsn_id)
    {
        $data['course'] = M_Course_Lesson::leftJoin('course','course.crs_id','=','course_lesson.crs_id')
            ->leftJoin('users','users.usr_id','=','course.usr_id')
            ->where('course_lesson.lsn_id',$lsn_id)
            ->first();

        $data['contents'] = M_Course_Content::leftJoin('course_lesson','course_lesson.lsn_id','=','course_content.lsn_id')
        ->leftJoin('course','course.crs_id','=','course_lesson.crs_id')
        ->where('course_content.lsn_id',$lsn_id)->get();

        $data['learning_goal'] = M_Course_Content::leftJoin('learning_goals','learning_goals.loc_id','=','course_content.loc_id')
        ->where('learning_goals.usr_id', $this->session->userdata('id'))->get();

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
        if ($data['kontent']->cnt_type == 'Text' || $data['kontent']->cnt_type == 'Example' ){
            $data['content'] = 'siswa/course_text';
        }else{
            $data['content'] = 'siswa/course_video';
        }
        $data['sidebar'] = 'layout/sidebar';
        $this->load->view('layout/master',$data);
    }

    public function countLogContent($lsn_id,$num,$content4)
    {
        //activity_count
        $data_course = DB::table('course_lesson')->where('lsn_id',$lsn_id)->first(['crs_id']);
        $data_user = DB::table('activity_count')
            ->where('usr_id',$this->session->userdata('id'))->first(['usr_id']);

        if ($data_user == NULL){
            DB::table('activity_count')->insert(['usr_id' => $this->session->userdata('id'),'crs_id' => $data_course->crs_id,'view_content' => 1]);
        }else{
            $cek_course = DB::table('activity_count')->where('crs_id',$data_course->crs_id)->first(['crs_id']);
            if ($cek_course == NULL){
                DB::table('activity_count')->insert(['usr_id' => $this->session->userdata('id'),'crs_id' => $data_course->crs_id,'view_content' => 1]);
            }else{
                DB::table('activity_count')
                    ->where('usr_id','=', $this->session->userdata('id'))
                    ->where('crs_id','=', $cek_course->crs_id)
                    ->increment('view_content');
            }

        }
        //end activity_count

        $clc = M_Lesson_Access_Log::where('lsn_id',$lsn_id)->where('usr_id',$this->session->userdata('id'))->exists();
        if($clc == NULL){
            $clc = M_Lesson_Access_Log::insert(['lsn_id' => $lsn_id, 'usr_id' => $this->session->userdata('id')]);
        }

        if ($num == 0){
            $data['kontent'] = M_Course_Content::leftJoin('course_lesson','course_lesson.lsn_id','=','course_content.lsn_id')
                ->leftJoin('course','course.crs_id','=','course_lesson.crs_id')
                ->leftJoin('users','users.usr_id','=','course.usr_id')
                ->where('course_content.cnt_id',$content4)
                ->first();

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
        }else if ($num == 1){
            $data['kontent'] = M_Course_Content::leftJoin('course_lesson','course_lesson.lsn_id','=','course_content.lsn_id')
                ->leftJoin('course','course.crs_id','=','course_lesson.crs_id')
                ->leftJoin('users','users.usr_id','=','course.usr_id')
                ->where('course_content.cnt_id',$content4)
                ->first();
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
        }else {
            $data['kontent'] = M_Course_Content::leftJoin('course_lesson','course_lesson.lsn_id','=','course_content.lsn_id')
                ->leftJoin('course','course.crs_id','=','course_lesson.crs_id')
                ->leftJoin('users','users.usr_id','=','course.usr_id')
                ->where('course_content.cnt_id',$content4)
                ->first();
            $event = array(
                'usr_id'            => $this->session->userdata('id'),
                'log_event_context' => "View Content:" . " " . $data['kontent']->cnt_name,
                'log_referrer'      => $this->input->server('REQUEST_URI'),
                'log_name'          => "View Content Example",
                'log_origin'        => $this->agent->agent_string(),
                'log_ip'            => $this->input->server('REMOTE_ADDR'),
                'log_desc'          => $this->session->userdata('username'). " "
                    ."melakukan aksi View Content" . " '" . $data['kontent']->cnt_name . "' "
                    ."pada Lesson" . " " . $data['kontent']->lsn_name . "' "
                    . "pada Course" . " '" . $data['kontent']->crs_name . "'"
            );
            $this->lib_event_log->add_user_event($event);
        }
    }

    public function log_lesson($lsn_id)
    {
        $data['course'] = M_Course_Lesson::leftJoin('course','course.crs_id','=','course_lesson.crs_id')
            ->leftJoin('users','users.usr_id','=','course.usr_id')
            ->where('course_lesson.lsn_id',$lsn_id)
            ->first();

        // Capture Log Start
        $event = array(
            'usr_id'            => $this->session->userdata('id'),
            'log_event_context' => "View Lesson:" . " " . $data['course']->lsn_name,
            'log_referrer'      => $this->input->server('REQUEST_URI'),
            'log_name'          => "View Lesson",
            'log_origin'        => $this->agent->agent_string(),
            'log_ip'            => $this->input->server('REMOTE_ADDR'),
            'log_desc'          => $this->session->userdata('username'). " "
                ."melakukan aksi View Lesson" . " '" . $data['course']->lsn_name . "' "
                . "pada Course" . " '" . $data['course']->crs_name . "'"
        );
        $this->lib_event_log->add_user_event($event);

        //Outline Stay
        if (strpos($this->agent->referrer(), 'siswa/course/log/') !== FALSE) {
            $waktu_sekarang = M_Log::where('usr_id', $this->session->userdata('id'))
                    ->orderBy('log_time', 'DESC')->first()->log_time;
            
            $waktu_sebelum = M_Log::where('usr_id', $this->session->userdata('id'))
                    ->where('log_name', "View Course")
                    ->orderBy('log_time', 'DESC')->first()->log_time;

            $lama_stay = strtotime($waktu_sekarang) - strtotime($waktu_sebelum);
            $hari    = floor($lama_stay/(60*60*24));   
            $jam   = floor(($lama_stay-($hari*60*60*24))/(60*60));   
            $menit = floor(($lama_stay-($hari*60*60*24)-($jam*60*60))/60);

            //cek udah ada usernya atau belum di learning_style
            $cek_user_ada = M_Learning_Style::where('usr_id', $this->session->userdata('id'))->first();
            if (!$cek_user_ada) {
            $ls_data['usr_id'] = $this->session->userdata('id');
            $this->M_Learning_Style->insert($ls_data);
            $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                    ->increment('ls_outline_stay', $lama_stay);
            } else {
            $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                    ->increment('ls_outline_stay', $lama_stay);
            }
        }

        // Capture Log End
        redirect(site_url('siswa/materi/' . $lsn_id));
    }




}