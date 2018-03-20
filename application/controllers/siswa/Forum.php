<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use Illuminate\Database\Capsule\Manager as DB;

class Forum extends CI_Controller {

    
    public function __construct()
    {
        parent::__construct();

    }

    public function index()
    {
        $data['coursetakesiswa']=  M_Course_Enrol::leftJoin("course","course.crs_id","=","course_enrol.crs_id")
                            ->leftJoin("users","users.usr_id","=","course.usr_id")
                            ->where('course_enrol.usr_id',$this->session->userdata('id'))
                            ->get();
                            // dd($data['coursetake']);
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/forum_siswa';
        $this->load->view('layout/master',$data);
    }

    public function dashboard_forum_siswa($crs_id){
        $data['datalessonforum'] = DB::table('course_lesson')
                            ->leftJoin('course','course.crs_id','=','course_lesson.crs_id')
                            ->where('course.crs_id',$crs_id)
                            ->get();
        
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/dashboard_forum_siswa';
        $this->load->view('layout/master',$data);
    }
}