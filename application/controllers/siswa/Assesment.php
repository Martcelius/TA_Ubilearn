<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use Illuminate\Database\Capsule\Manager as DB;

class Assesment extends CI_Controller {

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

    public function index($id)
    {

        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/assesment_info';
        $data['assesment']=  M_Course_Assesment::leftJoin("course","course.crs_id","=","course_assesment.crs_id")
            ->where("ass_id","=", $id)
            ->first();
            
        $data['course'] = M_Course::leftJoin('users','users.usr_id', '=','course.usr_id')
            ->where("crs_id", '=',$data['assesment']->crs_id)
            ->first();
        
        //Outline Stay
        if (strpos($this->agent->referrer(), 'siswa/course/log/') !== FALSE) {

            $event = array(
                'usr_id'            => $this->session->userdata('id'),
                'log_event_context' => "View Assessment:" . " " . $data['assesment']->ass_name,
                'log_referrer'      => $this->input->server('REQUEST_URI'),
                'log_name'          => "View Assessment",
                'log_origin'        => $this->agent->agent_string(),
                'log_ip'            => $this->input->server('REMOTE_ADDR'),
                'log_desc'          => $this->session->userdata('username'). " "
                    ."melakukan aksi View Assessment"." ".$data['assesment']->ass_name
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
                'log_event_context' => "View Assessment:" . " " . $data['assesment']->ass_name,
                'log_referrer'      => $this->input->server('REQUEST_URI'),
                'log_name'          => "View Assessment",
                'log_origin'        => $this->agent->agent_string(),
                'log_ip'            => $this->input->server('REMOTE_ADDR'),
                'log_desc'          => $this->session->userdata('username'). " "
                    ."melakukan aksi View Assessment"." ".$data['assesment']->ass_name
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
                    ->increment('ls_outline_stay', $lama_stay);
            } else {
            $outline_stay = M_Learning_Style::where('usr_id', $this->session->userdata('id'))
                    ->increment('ls_outline_stay', $lama_stay);
            }
        }
        
        $this->load->view('layout/master', $data);
    }

    public function assesment_doing($ass_id)
    {
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/assesment_doing';

        $ast = $this->M_Course_Assesment_Question_Answer_Of_Student->select($ass_id,$this->session->userdata('id'));
        if($ast->count() != 0){
            $this->session->set_flashdata('ast_done', 'Anda Sudah Mengerjakan Assesment ini');
            redirect(base_url().'siswa/assesment/result/'.$ass_id);
        }
        else{
            $data['ass_obj'] = $this->M_Course_Assesment->select($ass_id);
            $data['course'] = M_Course::leftJoin('users','users.usr_id', '=','course.usr_id')
            ->where("crs_id", '=',$data['ass_obj']->crs_id)
            ->first();

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

    public function calc_ass($ass_id){
        $jumSoal = $this->input->post('jumSoal');
        $i = 0;
        $num = 1;
        while($i < $jumSoal){
            $ans_id = $this->input->post('jawaban'.$num);
            if($ans_id == NULL){
                
                //Insert Data
                $dataIns = new M_Course_Assesment_Question_Answer_Of_Student;
                $dataIns->ast_point = 0;
                $dataIns->ass_id = $ass_id;
                $dataIns->ans_id = NULL;
                $dataIns->usr_id = $this->session->userdata('id');
                $this->M_Course_Assesment_Question_Answer_Of_Student->insert($dataIns);
            }else{  
                $ans = $this->M_Course_Assesment_Question_Answer->selectBy('ans_id',$ans_id);
                foreach($ans as $c){
                    
                    //Insert Data
                    $dataIns = new M_Course_Assesment_Question_Answer_Of_Student;
                    $dataIns->ast_point = $c->ans_point;
                    $dataIns->ass_id = $ass_id;
                    $dataIns->ans_id = $c->ans_id;
                    $dataIns->usr_id = $this->session->userdata('id');
                    $this->M_Course_Assesment_Question_Answer_Of_Student->insert($dataIns);
                }
            }
            $i++;
            $num++;
        }
        $timeTaken = $this->input->post('timeTaken');
        $min = 0;
        $sec = 0;
        $min = floor($timeTaken/60);
        $timeTaken = $timeTaken - ($min*60);
        while($timeTaken >= 60){
            $min = $min + 1;
            $timeTaken = $timeTaken - 60;
        }

        //at_risk
        $cek_ar = $this->M_Course_Assesment->select($ass_id);
        $cek = $this->M_At_risk->select($this->session->userdata('id'));
//        dd($cek->count());
        if($cek_ar->ass_tipe == "Kuis" && $cek->count() < 3){
            $data_ar['usr_id'] = $this->session->userdata('id');
            $data_ar['ass_id'] = $cek_ar->ass_id;
            $data_ar['crs_id'] = $cek_ar->crs_id;
            $this->M_At_risk->insert($data_ar);
//            dd($data_ar['usr_id']);
        }
        //end at_risk

        $sec = $timeTaken; 
        $this->session->set_flashdata('result_timeTaken', $min.'minute(s) '.$sec.' second(s)');
        $event = array(
            'usr_id'            => $this->session->userdata('id'),
            'log_event_context' => "Done Assesment:" . " " . $cek_ar->ass_name,
            'log_referrer'      => $this->input->server('REQUEST_URI'),
            'log_name'          => "Done Assesment",
            'log_origin'        => $this->agent->agent_string(),
            'log_ip'            => $this->input->server('REMOTE_ADDR'),
            'log_desc'          => $this->session->userdata('username'). " "
                ."melakukan aksi Done Assesment" . " '" .  $cek_ar->ass_name . "'"
        );
        $this->lib_event_log->add_user_event($event);

        //activity_count
        $data_course = M_Course_Assesment::where('ass_id',$ass_id)->first(['crs_id']);
        $data_user = DB::table('activity_count')
            ->where('usr_id',$this->session->userdata('id'))->first(['usr_id']);

        if ($data_user == NULL){
            DB::table('activity_count')->insert(['usr_id' => $this->session->userdata('id'),'crs_id' => $data_course->crs_id,'done_assessment' => 1]);
        }else{
            $cek_course = DB::table('activity_count')->where('crs_id',$data_course->crs_id)->first(['crs_id']);
            if ($cek_course == NULL){
                DB::table('activity_count')->insert(['usr_id' => $this->session->userdata('id'),'crs_id' => $data_course->crs_id,'done_assessment' => 1]);
            }else{
                DB::table('activity_count')
                    ->where('usr_id','=', $this->session->userdata('id'))
                    ->where('crs_id','=', $cek_course->crs_id)
                    ->increment('done_assessment');
            }
        }
        //end activity_count

        redirect(base_url().'siswa/Assesment/result/'.$ass_id );
    }

    public function result($ass_id){
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/result';

        $data['assesment']=  M_Course_Assesment::leftJoin("course","course.crs_id","=","course_assesment.crs_id")
            ->where("ass_id","=", $ass_id)
            ->first();

        $data['course'] = M_Course::leftJoin('users','users.usr_id', '=','course.usr_id')
            ->where("crs_id", '=',$data['assesment']->crs_id)
            ->first();

        $data['ass_obj'] = $this->M_Course_Assesment->select($ass_id);
        $data['list_qst'] = $this->M_Course_Assesment_Question->select($ass_id);
        $i = 0;
        foreach($data['list_qst'] as $c){
            $data['qst_ans'][$i] = $this->M_Course_Assesment_Question_Answer->select($c->qst_id);
            $i++;   
        };
        $data['ast'] = $this->M_Course_Assesment_Question_Answer_Of_Student->select($ass_id,$this->session->userdata('id'));
        $i = 0;
        $nilaiAkhir = 0;

        foreach($data['ast'] as $c){
            if($c->ast_point > 0){
                $hasilBS[$i] = 1;
            }
            else{
                $hasilBS[$i] = 0;
            }
            $nilaiAkhir = $nilaiAkhir + $c->ast_point;
            $stdAns[$i] = $c->ans_id;
            $i++;
        }
        $data['jumSoal'] = $i;
        $data['nilaiAkhir'] = $nilaiAkhir;
        $data['stdAns'] = $stdAns;
        $data['hasilBS'] = $hasilBS;
        if ($this->session->flashdata('result_timeTaken') == TRUE) {
            $data['timeTaken'] = $this->session->flashdata('result_timeTaken');
        }
        else{
            $data['timeTaken'] = 'Time Expired';
        }
        date_default_timezone_set('Asia/Jakarta');
        $data['currDate'] = date("l, Y-m-d h:i:sa");

        $dataResult = new M_Course_Assesment_Result;
        $dataResult->ass_id = $ass_id;
        $dataResult->ass_result = $data['nilaiAkhir'];
        $dataResult->usr_id = $this->session->userdata('id');
        $this->M_Course_Assesment_Result->insert($dataResult);

        //Log
        if ((strpos($this->agent->referrer(), 'siswa/dashboard') !== FALSE)
            || (strpos($this->agent->referrer(), 'siswa/assesment_info') !== FALSE)) {
            
            $event = array(
                'usr_id'            => $this->session->userdata('id'),
                'log_event_context' => "View Assessment Result:" . " " . $data['assesment']->ass_name,
                'log_referrer'      => $this->input->server('REQUEST_URI'),
                'log_name'          => "View Assessment Result",
                'log_origin'        => $this->agent->agent_string(),
                'log_ip'            => $this->input->server('REMOTE_ADDR'),
                'log_desc'          => $this->session->userdata('username'). " "
                    ."melakukan aksi View Assessment Result" . " '" .  $data['assesment']->ass_name . "'"
            );
            $this->lib_event_log->add_user_event($event);
        }

        $this->load->view('layout/master', $data);
    }
}