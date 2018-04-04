<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use Illuminate\Database\Capsule\Manager as DB;

class Assignment extends CI_Controller {

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

    public function index($asg_id)
    {

        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/assignment_detail';
        $data['assignment']=  M_Course_Assignment::leftJoin("course","course.crs_id","=","course_assignment.crs_id")
            ->where("asg_id","=", $asg_id)
            ->first();

        $data['course'] = M_Course::leftJoin('users','users.usr_id', '=','course.usr_id')
            ->where("crs_id", '=',$data['assignment']->crs_id)
            ->first();
        
        $data['data_instruktur'] = M_Course_Assignment::where("asg_id", $asg_id)->first();
        $dt= date('Y-m-d h:i:s');
        $cek_user = $this->M_Course_Assignment_Submission->cek_user($asg_id,'usr_id',$this->session->userdata['id']);
        if (empty($cek_user))
        {
            //blm ngumpulin
            if($dt <= $data['assignment']->asg_duedate)
            {
                $this->session->set_flashdata('on_time', 'Anda belum mengumpulkan tugas');
            } elseif ($dt >= $data['assignment']->asg_duedate)
            {
                $this->session->set_flashdata('out_time', 'Anda telat, segara kumpulkan tugas!');
            }
        } else
        {
            //ngumpulin
            $this->session->set_flashdata('done', 'Anda sudah mengumpulkan tugas');

        }

        //Outline Stay
        if (strpos($this->agent->referrer(), 'siswa/course_detail') !== FALSE) {
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
        $this->load->view('layout/master', $data);
    }

    public function upload_assignment($asg_id)
    {
//        $file = "file_siswa".time();
        $config['upload_path'] ='./res/assets/File_siswa';
        $config['allowed_types'] = 'doc|csv|pptx|pdf|docx|xlxs|xls|rar|zip';
//        $config['file_name'] = $file;
        $this->load->library('upload',$config);
        $this->upload->do_upload('asg_attachment');
        $result = $this->upload->data();
        $data['assignment'] =  M_Course_Assignment::leftJoin("course","course.crs_id","=","course_assignment.crs_id")
            ->where("asg_id","=", $asg_id)
            ->first();
        $dt= date('Y-m-d h:i:s');
        $data_asg = array(
            'file' => $result['file_name'],
            'usr_id' => $this->session->userdata['id'],
            'time_created' => $dt,
            'due_date' => $data['assignment']->asg_duedate
        );
        $cek_user = $this->M_Course_Assignment_Submission->cek_user($asg_id,'usr_id',$this->session->userdata['id']);
        if(empty($cek_user)){
            $insert = $this->M_Course_Assignment_Submission->insert($data_asg,$asg_id);
            // Capture Log Start
            $event = array(
                'usr_id'            => $this->session->userdata('id'),
                'log_event_context' => "Unggah Tugas:" . " " . $data['assignment']->asg_name,
                'log_referrer'      => $this->input->server('REQUEST_URI'),
                'log_name'          => "Uploaded",
                'log_origin'        => $this->agent->agent_string(),
                'log_ip'            => $this->input->server('REMOTE_ADDR'),
                'log_desc'          => $this->session->userdata('username'). " "
                    ."melakukan aksi Unggah Tugas" . " '" . $data['assignment']->asg_name . "' "
                    . "pada Course" . " '" . $data['assignment']->crs_name . "'"
            );
            $this->lib_event_log->add_user_event($event);
            // Capture Log End

            //activity_count
            $data_course = M_Course_Assignment::where('asg_id',$asg_id)->first(['crs_id']);
            $data_user = DB::table('activity_count')
                ->where('usr_id',$this->session->userdata('id'))->first(['usr_id']);

            if ($data_user == NULL){
                DB::table('activity_count')->insert(['usr_id' => $this->session->userdata('id'),'crs_id' => $data_course->crs_id,'uploaded' => 1]);
            }else{
                $cek_course = DB::table('activity_count')->where('crs_id',$data_course->crs_id)->where('usr_id',$this->session->userdata('id'))->first(['crs_id']);
                if ($cek_course == NULL){
                    DB::table('activity_count')->insert(['usr_id' => $this->session->userdata('id'),'crs_id' => $data_course->crs_id,'uploaded' => 1]);
                }else{
                    DB::table('activity_count')
                        ->where('usr_id','=', $this->session->userdata('id'))
                        ->where('crs_id','=', $cek_course->crs_id)
                        ->increment('uploaded');
                }
            }
            //end activity_count
        }
        else {
            $this->session->set_flashdata('submit', 'Berkas tidak terupload! Anda sudah mengumpulkan tugas ini.');
        }

        $data['assignment']=  M_Course_Assignment::leftJoin("course","course.crs_id","=","course_assignment.crs_id")
            ->where("asg_id","=", $asg_id)
            ->first();
        $data['course'] = M_Course::leftJoin('users','users.usr_id', '=','course.usr_id')
            ->where("crs_id", '=',$data['assignment']->crs_id)
            ->first();
        redirect('siswa/assignment_detail/'.$asg_id);

    }
}