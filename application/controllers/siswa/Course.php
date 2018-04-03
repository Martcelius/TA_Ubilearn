<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use Illuminate\Database\Capsule\Manager as DB;

class Course extends CI_Controller {

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

     public function index()
     {
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/course_siswa';
        $data['courses']=  M_Course::leftJoin("users","users.usr_id","=","course.usr_id")->get();

        //Outline Stay
        if (strpos($this->agent->referrer(), 'siswa/course_detail') !== FALSE) {
            dd("INYE");
            $event = array(
                'usr_id'            => $this->session->userdata('id'),
                'log_event_context' => "View All Course:" . " " . $this->session->userdata('username'),
                'log_referrer'      => $this->input->server('REQUEST_URI'),
                'log_name'          => "View All Course",
                'log_origin'        => $this->agent->agent_string(),
                'log_ip'            => $this->input->server('REMOTE_ADDR'),
                'log_desc'          => $this->session->userdata('username'). " "
                    ."melakukan aksi View All Course"
            );
            $this->lib_event_log->add_user_event($event);

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

        //Quiz Result Stay
        if ((strpos($this->agent->referrer(), 'siswa/result') !== FALSE)
            || (strpos($this->agent->referrer(), 'assesment/result') !== FALSE)) {
            
            $event = array(
                'usr_id'            => $this->session->userdata('id'),
                'log_event_context' => "View All Course:" . " " . $this->session->userdata('username'),
                'log_referrer'      => $this->input->server('REQUEST_URI'),
                'log_name'          => "View All Course",
                'log_origin'        => $this->agent->agent_string(),
                'log_ip'            => $this->input->server('REMOTE_ADDR'),
                'log_desc'          => $this->session->userdata('username'). " "
                    ."melakukan aksi View All Course"
            );
            $this->lib_event_log->add_user_event($event);
            
            $waktu_sekarang = M_Log::where('usr_id', $this->session->userdata('id'))
                    ->orderBy('log_time', 'DESC')->first()->log_time;
            
            $waktu_sebelum = M_Log::where('usr_id', $this->session->userdata('id'))
                    ->where('log_name', "View Assessment Result")
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
                    ->increment('ls_quiz_stay_result', $lama_stay);
            } else {
            $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                    ->increment('ls_quiz_stay_result', $lama_stay);
            }
        }

        //Example Stay
        if (strpos($this->agent->referrer(), 'content/contents') !== FALSE) {
            
            $event = array(
                'usr_id'            => $this->session->userdata('id'),
                'log_event_context' => "View All Course:" . " " . $this->session->userdata('username'),
                'log_referrer'      => $this->input->server('REQUEST_URI'),
                'log_name'          => "View All Course",
                'log_origin'        => $this->agent->agent_string(),
                'log_ip'            => $this->input->server('REMOTE_ADDR'),
                'log_desc'          => $this->session->userdata('username'). " "
                    ."melakukan aksi View All Course"
            );
            $this->lib_event_log->add_user_event($event);

            $waktu_sekarang = M_Log::where('usr_id', $this->session->userdata('id'))
                    ->orderBy('log_time', 'DESC')->first()->log_time;
            
            $waktu_sebelum = M_Log::where('usr_id', $this->session->userdata('id'))
                    ->where('log_name', "View Content Example")
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
                    ->increment('ls_example_stay', $lama_stay);
            } else {
            $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                    ->increment('ls_example_stay', $lama_stay);
            }
        }

        //Content Text Stay
        if (strpos($this->agent->referrer(), 'content/contents') !== FALSE) {
            
            $event = array(
                'usr_id'            => $this->session->userdata('id'),
                'log_event_context' => "View All Course:" . " " . $this->session->userdata('username'),
                'log_referrer'      => $this->input->server('REQUEST_URI'),
                'log_name'          => "View All Course",
                'log_origin'        => $this->agent->agent_string(),
                'log_ip'            => $this->input->server('REMOTE_ADDR'),
                'log_desc'          => $this->session->userdata('username'). " "
                    ."melakukan aksi View All Course"
            );
            $this->lib_event_log->add_user_event($event);

            $waktu_sekarang = M_Log::where('usr_id', $this->session->userdata('id'))
                    ->orderBy('log_time', 'DESC')->first()->log_time;
            
            $waktu_sebelum = M_Log::where('usr_id', $this->session->userdata('id'))
                    ->where('log_name', "View Content Text")
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
                    ->increment('ls_content_stay', $lama_stay);
                $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                    ->increment('ls_content_stay_text', $lama_stay);
            } else {
                $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                    ->increment('ls_content_stay', $lama_stay);
                $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                    ->increment('ls_content_stay_text', $lama_stay);
            }
        }

        //Content Video Stay
        if (strpos($this->agent->referrer(), 'content/contents') !== FALSE) {
            
            $event = array(
                'usr_id'            => $this->session->userdata('id'),
                'log_event_context' => "View All Course:" . " " . $this->session->userdata('username'),
                'log_referrer'      => $this->input->server('REQUEST_URI'),
                'log_name'          => "View All Course",
                'log_origin'        => $this->agent->agent_string(),
                'log_ip'            => $this->input->server('REMOTE_ADDR'),
                'log_desc'          => $this->session->userdata('username'). " "
                    ."melakukan aksi View All Course"
            );
            $this->lib_event_log->add_user_event($event);

            $waktu_sekarang = M_Log::where('usr_id', $this->session->userdata('id'))
                    ->orderBy('log_time', 'DESC')->first()->log_time;
            
            $waktu_sebelum = M_Log::where('usr_id', $this->session->userdata('id'))
                    ->where('log_name', "View Content Video")
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
                    ->increment('ls_content_stay', $lama_stay);
                $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                    ->increment('ls_content_stay_video', $lama_stay);
            } else {
                $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                    ->increment('ls_content_stay', $lama_stay);
                $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                    ->increment('ls_content_stay_video', $lama_stay);
            }
        }

        //Forum Stay
        if (strpos($this->agent->referrer(), 'siswa/detail_thread_siswa') !== FALSE) {
            
            $event = array(
                'usr_id'            => $this->session->userdata('id'),
                'log_event_context' => "View All Course:" . " " . $this->session->userdata('username'),
                'log_referrer'      => $this->input->server('REQUEST_URI'),
                'log_name'          => "View All Course",
                'log_origin'        => $this->agent->agent_string(),
                'log_ip'            => $this->input->server('REMOTE_ADDR'),
                'log_desc'          => $this->session->userdata('username'). " "
                    ."melakukan aksi View All Course"
            );
            $this->lib_event_log->add_user_event($event);

            $waktu_sekarang = M_Log::where('usr_id', $this->session->userdata('id'))
                    ->orderBy('log_time', 'DESC')->first()->log_time;
            
            $waktu_sebelum = M_Log::where('usr_id', $this->session->userdata('id'))
                    ->where('log_name', "View Thread")
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
                    ->increment('ls_forum_stay', $lama_stay);
            } else {
            $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                    ->increment('ls_forum_stay', $lama_stay);
            }
        }

        $this->load->view('layout/master', $data);
     }

    public function course_close($crs_id)
    {
        $data['dataCourse'] = M_Course::leftJoin("users","users.usr_id","=","course.usr_id")
                                        ->where('crs_id',$crs_id)->first();
        $data['dataCourseLain'] = M_Course::where('crs_id', '<>', $crs_id)->get();
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
            'log_event_context' => "Enrol Course:" . " " . $data['data_course']->crs_name,
            'log_referrer'      => $this->input->server('REQUEST_URI'),
            'log_name'          => "Enrol",
            'log_origin'        => $this->agent->agent_string(),
            'log_ip'            => $this->input->server('REMOTE_ADDR'),
            'log_desc'          => $this->session->userdata('username'). " " ."melakukan aksi Enrol Course" . " '" . $data['data_course']->crs_name . "'"
        );
        $this->lib_event_log->add_user_event($event);
        // Capture Log End
        $pt = M_Course_Assesment::where('crs_id','=',$crs_id)
            ->where('ass_tipe','=','Pre-test')->first();
        redirect('siswa/assesment_doing/'.$pt->ass_id);
    }

    public function my_course(){
        $data['my_course'] = M_Course_Enrol::leftJoin('course','course.crs_id','=','course_enrol.crs_id')
            ->leftJoin('users','users.usr_id','=','course.usr_id')
            ->where('course_enrol.usr_id',$this->session->userdata('id'))
            ->get();

        //Outline Stay
        if (strpos($this->agent->referrer(), 'siswa/course_detail') !== FALSE) {

            $event = array(
                'usr_id'            => $this->session->userdata('id'),
                'log_event_context' => "View My Course:" . " " . $this->session->userdata('username'),
                'log_referrer'      => $this->input->server('REQUEST_URI'),
                'log_name'          => "View My Course",
                'log_origin'        => $this->agent->agent_string(),
                'log_ip'            => $this->input->server('REMOTE_ADDR'),
                'log_desc'          => $this->session->userdata('username'). " "
                    ."melakukan aksi View My Course"
            );
            $this->lib_event_log->add_user_event($event);

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

        //Quiz Result Stay
        if ((strpos($this->agent->referrer(), 'siswa/result') !== FALSE)
            || (strpos($this->agent->referrer(), 'assesment/result') !== FALSE)) {
            
            $event = array(
                'usr_id'            => $this->session->userdata('id'),
                'log_event_context' => "View My Course:" . " " . $this->session->userdata('username'),
                'log_referrer'      => $this->input->server('REQUEST_URI'),
                'log_name'          => "View My Course",
                'log_origin'        => $this->agent->agent_string(),
                'log_ip'            => $this->input->server('REMOTE_ADDR'),
                'log_desc'          => $this->session->userdata('username'). " "
                    ."melakukan aksi View My Course"
            );
            $this->lib_event_log->add_user_event($event);
            
            $waktu_sekarang = M_Log::where('usr_id', $this->session->userdata('id'))
                    ->orderBy('log_time', 'DESC')->first()->log_time;
            
            $waktu_sebelum = M_Log::where('usr_id', $this->session->userdata('id'))
                    ->where('log_name', "View Assessment Result")
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
                    ->increment('ls_quiz_stay_result', $lama_stay);
            } else {
            $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                    ->increment('ls_quiz_stay_result', $lama_stay);
            }
        }

        //Example Stay
        if (strpos($this->agent->referrer(), 'content/contents') !== FALSE) {
            
            $event = array(
                'usr_id'            => $this->session->userdata('id'),
                'log_event_context' => "View My Course:" . " " . $this->session->userdata('username'),
                'log_referrer'      => $this->input->server('REQUEST_URI'),
                'log_name'          => "View My Course",
                'log_origin'        => $this->agent->agent_string(),
                'log_ip'            => $this->input->server('REMOTE_ADDR'),
                'log_desc'          => $this->session->userdata('username'). " "
                    ."melakukan aksi View My Course"
            );
            $this->lib_event_log->add_user_event($event);

            $waktu_sekarang = M_Log::where('usr_id', $this->session->userdata('id'))
                    ->orderBy('log_time', 'DESC')->first()->log_time;
            
            $waktu_sebelum = M_Log::where('usr_id', $this->session->userdata('id'))
                    ->where('log_name', "View Content Example")
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
                    ->increment('ls_example_stay', $lama_stay);
            } else {
            $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                    ->increment('ls_example_stay', $lama_stay);
            }
        }

        //Content Text Stay
        if (strpos($this->agent->referrer(), 'content/contents') !== FALSE) {
            
            $event = array(
                'usr_id'            => $this->session->userdata('id'),
                'log_event_context' => "View My Course:" . " " . $this->session->userdata('username'),
                'log_referrer'      => $this->input->server('REQUEST_URI'),
                'log_name'          => "View My Course",
                'log_origin'        => $this->agent->agent_string(),
                'log_ip'            => $this->input->server('REMOTE_ADDR'),
                'log_desc'          => $this->session->userdata('username'). " "
                    ."melakukan aksi View My Course"
            );
            $this->lib_event_log->add_user_event($event);

            $waktu_sekarang = M_Log::where('usr_id', $this->session->userdata('id'))
                    ->orderBy('log_time', 'DESC')->first()->log_time;
            
            $waktu_sebelum = M_Log::where('usr_id', $this->session->userdata('id'))
                    ->where('log_name', "View Content Text")
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
                    ->increment('ls_content_stay', $lama_stay);
                $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                    ->increment('ls_content_stay_text', $lama_stay);
            } else {
                $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                    ->increment('ls_content_stay', $lama_stay);
                $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                    ->increment('ls_content_stay_text', $lama_stay);
            }
        }

        //Content Video Stay
        if (strpos($this->agent->referrer(), 'content/contents') !== FALSE) {
            
            $event = array(
                'usr_id'            => $this->session->userdata('id'),
                'log_event_context' => "View My Course:" . " " . $this->session->userdata('username'),
                'log_referrer'      => $this->input->server('REQUEST_URI'),
                'log_name'          => "View My Course",
                'log_origin'        => $this->agent->agent_string(),
                'log_ip'            => $this->input->server('REMOTE_ADDR'),
                'log_desc'          => $this->session->userdata('username'). " "
                    ."melakukan aksi View My Course"
            );
            $this->lib_event_log->add_user_event($event);

            $waktu_sekarang = M_Log::where('usr_id', $this->session->userdata('id'))
                    ->orderBy('log_time', 'DESC')->first()->log_time;
            
            $waktu_sebelum = M_Log::where('usr_id', $this->session->userdata('id'))
                    ->where('log_name', "View Content Video")
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
                    ->increment('ls_content_stay', $lama_stay);
                $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                    ->increment('ls_content_stay_video', $lama_stay);
            } else {
                $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                    ->increment('ls_content_stay', $lama_stay);
                $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                    ->increment('ls_content_stay_video', $lama_stay);
            }
        }

        //Forum Stay
        if (strpos($this->agent->referrer(), 'siswa/detail_thread_siswa') !== FALSE) {
            
            $event = array(
                'usr_id'            => $this->session->userdata('id'),
                'log_event_context' => "View My Course:" . " " . $this->session->userdata('username'),
                'log_referrer'      => $this->input->server('REQUEST_URI'),
                'log_name'          => "View My Course",
                'log_origin'        => $this->agent->agent_string(),
                'log_ip'            => $this->input->server('REMOTE_ADDR'),
                'log_desc'          => $this->session->userdata('username'). " "
                    ."melakukan aksi View My Course"
            );
            $this->lib_event_log->add_user_event($event);

            $waktu_sekarang = M_Log::where('usr_id', $this->session->userdata('id'))
                    ->orderBy('log_time', 'DESC')->first()->log_time;
            
            $waktu_sebelum = M_Log::where('usr_id', $this->session->userdata('id'))
                    ->where('log_name', "View Thread")
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
                    ->increment('ls_forum_stay', $lama_stay);
            } else {
            $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                    ->increment('ls_forum_stay', $lama_stay);
            }
        }

        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/my_course';
        $this->load->view('layout/master', $data);
    }

    public function course_detail($crs_id)
    {
       $data['course'] = M_Course::leftJoin("users","users.usr_id","=","course.usr_id")
                           ->where('crs_id',$crs_id)->first();
       $data['lesson'] = M_Course_Lesson::where('crs_id',$crs_id)->get();
       $data['loc'] = M_Course_Learning_Outcomes::where('crs_id',$crs_id)->get();
       $data['learning_goal'] = M_learning_Goal::where('usr_id',$this->session->userdata('id'))->first();
       $data['jml_lesson'] = $data['lesson']->count();
        if (count($data['lesson']) != 0){
            $i = 0;
            foreach($data['lesson'] as $c){
                $temp = M_Lesson_Access_Log::where('lsn_id',$c->lsn_id)->where('usr_id',$this->session->userdata('id'))->exists();
                if($temp != NULL){
                    $lsnAcc[$i] = 'color: #37d837;';
                }
                else{
                    $lsnAcc[$i] = 'color: white;';
                }
                $i++;
            }
            $data['lsnAccessColor'] = $lsnAcc;
            //list assesment
            $listAss = $this->M_Course_Assesment->selectBy('crs_id',$crs_id);
            $i = 0;
            $jumSoal = array();
            foreach($listAss as $c){
                $soal = $this->M_Course_Assesment_Question->select($c->ass_id);
                $jumSoal[$i] = $soal->count();
                $i++;
            }
            //list assignment
            $data['assignment'] = M_Course_Assignment::where('crs_id',$crs_id)->get();
            $data['jml_assignment'] = $data['assignment']->count();
            $data['listAss'] = $listAss;
            $data['jumSoal'] = $jumSoal;
            $data['sidebar'] = 'layout/sidebar';
            $data['content'] = 'siswa/course_detail';
            $this->load->view('layout/master', $data);
        }else
        {
            //list assesment
            $listAss = $this->M_Course_Assesment->selectBy('crs_id',$crs_id);
            $i = 0;
            $jumSoal = array();
            foreach($listAss as $c){
                $soal = $this->M_Course_Assesment_Question->select($c->ass_id);
                $jumSoal[$i] = $soal->count();
                $i++;
            }
            //list assignment
            $data['assignment'] = M_Course_Assignment::where('crs_id',$crs_id)->get();
            $data['jml_assignment'] = $data['assignment']->count();
            $data['listAss'] = $listAss;
            $data['jumSoal'] = $jumSoal;
            $data['sidebar'] = 'layout/sidebar';
            $data['content'] = 'siswa/course_detail';
            $this->load->view('layout/master', $data);
        }

        //Outline Visit
        //cek udah ada usernya atau belum di learning_style
        $cek_user_ada = M_Learning_Style::where('usr_id', $this->session->userdata('id'))->first();
        if (!$cek_user_ada) {
            $ls_data['usr_id'] = $this->session->userdata('id');
            $this->M_Learning_Style->insert($ls_data);
            $outline_visit = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                    ->increment('ls_outline_visit', 1);
        } else {
            $outline_visit = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                    ->increment('ls_outline_visit', 1);
        }
    }

    public function log($crs_id)
    {
        $data['course'] = M_Course::leftJoin("users","users.usr_id","=","course.usr_id")
            ->where('crs_id',$crs_id)->first();
        $event = array(
            'usr_id'            => $this->session->userdata('id'),
            'log_event_context' => "View Course:" . " " . $data['course']->crs_name,
            'log_referrer'      => $this->input->server('REQUEST_URI'),
            'log_name'          => "View Course",
            'log_origin'        => $this->agent->agent_string(),
            'log_ip'            => $this->input->server('REMOTE_ADDR'),
            'log_desc'          => $this->session->userdata('username'). " " ."melakukan aksi View Course" . " '" . $data['course']->crs_name . "'",
        );
        $this->lib_event_log->add_user_event($event);
        redirect(site_url('siswa/course_detail/'.$crs_id));

    }

    public function goals($loc)
    {
        $data['loc_id'] = $loc;
        $data['usr_id'] = $this->session->userdata('id');
        $insert = $this->M_Learning_Goal->insert($data);

        if ($insert){
            $this->session->set_flashdata('data_learning_goal','Berhasil memperbarui target pembelajaran.');
        }
    }

    
}