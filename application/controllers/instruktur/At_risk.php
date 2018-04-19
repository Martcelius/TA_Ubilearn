<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class At_risk extends CI_Controller {


    public function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('level')=="2") {
            redirect('siswa/dashboard');
        } else if ($this->session->userdata('level')=="1") {
            redirect('admin/dashboard');
        } else if ($this->session->userdata('level') == NULL) {
            redirect('');
        }
    }
    public function index($crs_id,$usr_id)
    {
        $data['sidebar'] = 'layout/sidebar_instruktur';
        $data['content'] = 'instruktur/at_risk';

        $data['instruktur'] = M_Course_Assesment::leftJoin("course", "course.crs_id","=","course_assesment.crs_id")
            ->leftJoin("users","users.usr_id","=","course.usr_id")
            ->where("course_assesment.crs_id", $crs_id)->first();
        $data['ar'] = M_At_risk::leftjoin("course_assesment","course_assesment.ass_id","=","at_risk.ass_id")
            ->leftJoin("users","users.usr_id","=","at_risk.usr_id")
            ->leftJoin("course_assesment_result","course_assesment_result.usr_id","=","at_risk.usr_id")
            ->where("course_assesment_result.usr_id",$usr_id)->groupby("at_risk.usr_id")->get();
//        dd($data['ar']);
        $data['ar_kuis'] = M_Course_Assesment::leftjoin("course_assesment_result","course_assesment_result.ass_id","=","course_assesment.ass_id")
            ->leftjoin("at_risk","at_risk.ass_id","=","course_assesment_result.ass_id")
            ->where("at_risk.usr_id",$usr_id)->where("course_assesment_result.usr_id",$usr_id)->where("course_assesment.crs_id",$crs_id)->groupby("at_risk.ass_id")->get();

//        $data['log'] = $this->M_Log->hitung_log($usr_id);
        $data['log'] = M_Learning_Style::where('usr_id',$usr_id)->first();
        $ls_content_visit_video = $data['log']->ls_content_visit_video;
        $ls_content_visit_text = $data['log']->ls_content_visit_text;
        $ls_content_visit = $data['log']->ls_content_visit;
        $ls_content_stay = $data['log']->ls_content_stay;
        $ls_content_stay_video = $data['log']->ls_content_stay_video;
        $ls_content_stay_text = $data['log']->ls_content_stay_text;
        $ls_outline_visit = $data['log']->ls_outline_visit;
        $ls_outline_stay = $data['log']->ls_outline_stay;
        $ls_example_visit = $data['log']->ls_example_visit;
        $ls_example_stay = $data['log']->ls_example_stay;
        $ls_selfass_visit = $data['log']->ls_selfass_visit;
        $ls_selfass_stay = $data['log']->ls_selfass_stay;
        $ls_exercise_visit = $data['log']->ls_exercise_visit;
        $ls_exercise_stay = $data['log']->ls_exercise_stay;
        $ls_quiz_stay_result = $data['log']->ls_quiz_stay_result;
        $total_visit = $ls_content_visit + $ls_outline_visit + $ls_example_visit + $ls_selfass_visit + $ls_exercise_visit;
        $data['login'] = $this->M_Log->hitung_login($usr_id);
        $data['logout'] = $this->M_Log->hitung_logout($usr_id);
//        dd($data['login']);
//        $total_stay = $ls_content_stay + $ls_outline_stay + $ls_example_stay + $ls_selfass_stay + $ls_exercise_stay;
        $data ['total'] = $total_visit +  $data['login'] + $data['logout'];
//        $data ['total_stay'] = $total_stay;
        $data['count'] = $data['ar_kuis']->count();
        //parameter
        if($data['count'] == 3){
            if($data['ar'][0]->usr_jk == 1){
                $jk = 'Pria';
            } else{
                $jk = 'Wanita';
            }
            $ipk = $data['ar'][0]->usr_gpa;
            $kuis1 = $data['ar_kuis'][0]->ass_result;
            $kuis2 = $data['ar_kuis'][1]->ass_result;
            $kuis3 = $data['ar_kuis'][2]->ass_result;
            $lc = $data['log'];
            $atribut['jk'] = $jk;
            $from = new DateTime($data['ar'][0]->usr_tgllahir);
            $to   = new DateTime('today');
            $atribut['usia'] = $from->diff($to)->y;
            $atribut['ipk'] = $ipk;
            $atribut['kuis1'] = $kuis1;
            $atribut['kuis2'] = $kuis2;
            $atribut['kuis3'] = $kuis3;
            $atribut['lc'] = $data ['total'];
        }
        $status = $this->M_At_risk->posterior($atribut);
        $data['status'] = $status;
        $this->load->view('layout/master', $data);
    }

}