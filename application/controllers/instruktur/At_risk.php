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
            redirect('C_login/landing_page');
        }
    }
    public function index($crs_id,$usr_id)
    {
        $data['sidebar'] = 'layout/sidebar_instruktur';
        $data['content'] = 'instruktur/at_risk';

        $data['instruktur'] = M_Course_Assesment::leftJoin("course", "course.crs_id","=","course_assesment.crs_id")
            ->leftJoin("users","users.usr_id","=","course.usr_id")
            ->where("course_assesment.crs_id", $crs_id)->first();


//        $data['ar'] = M_At_risk::leftjoin("course_assesment","course_assesment.ass_id","=","at_risk.ass_id")
//            ->leftJoin("users","users.usr_id","=","at_risk.usr_id")
//            ->where("course_assesment.crs_id",$crs_id)->get();
//        $data['ar_2'] = M_User::leftjoin("at_risk","at_risk.usr_id","=","users.usr_id")
//            ->leftJoin("course","course.crs_id","=","at_risk.crs_id")
//            ->leftJoin("course_assesment.ass_id","=","at_risk.ass_id")
//            ->where("at_risk.crs_id","=",$crs_id)->get();
        $data['ar'] = M_At_risk::leftjoin("course_assesment","course_assesment.ass_id","=","at_risk.ass_id")
            ->leftJoin("users","users.usr_id","=","at_risk.usr_id")
            ->leftJoin("course_assesment_result","course_assesment_result.usr_id","=","at_risk.usr_id")
            ->where("course_assesment_result.usr_id",$usr_id)->groupby("at_risk.usr_id")->get();

        $data['ar_kuis'] = M_Course_Assesment::leftjoin("course_assesment_result","course_assesment_result.ass_id","=","course_assesment.ass_id")
            ->leftjoin("at_risk","at_risk.ass_id","=","course_assesment_result.ass_id")
            ->where("at_risk.usr_id",$usr_id)->where("course_assesment_result.usr_id",$usr_id)->where("course_assesment.crs_id",$crs_id)->groupby("at_risk.ass_id")->get();
        //count log dengan usr_id == $usr_id
//            model log mana?
        //
        $data['log'] = $this->M_Log->hitung_log($usr_id);
        $data['count'] = $data['ar_kuis']->count();
//        dd($data['count']);
//        dd('<pre>',$data['count'],'</pre>');
        $this->load->view('layout/master', $data);
    }

}