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
//        dd($data['course']);
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

        $event = array(
            'usr_id'            => $this->session->userdata('id'),
            'log_event_context' => "Done Assesment:" . " " . $data['assesment'],
            'log_referrer'      => $this->input->server('REQUEST_URI'),
            'log_name'          => "Done Assesment",
            'log_origin'        => $this->agent->agent_string(),
            'log_ip'            => $this->input->server('REMOTE_ADDR'),
            'log_desc'          => $this->session->userdata('username'). " " 
            ."melakukan aksi Done Assesment" . " '" . $data['assesment']->ass_name . "'"
        );
        $this->lib_event_log->add_user_event($event);
        $dataResult = new M_Course_Assesment_Result;
        $dataResult->ass_id = $ass_id;
        $dataResult->ass_result = $data['nilaiAkhir'];
        $dataResult->usr_id = $this->session->userdata('id');
        $this->M_Course_Assesment_Result->insert($dataResult);
        $this->load->view('layout/master', $data);
    }
}