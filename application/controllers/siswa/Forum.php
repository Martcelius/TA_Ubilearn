<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use Illuminate\Database\Capsule\Manager as DB;

class Forum extends CI_Controller {

    
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
        $data['datalessonforum'] = M_Course_Lesson::leftJoin('course','course.crs_id','=','course_lesson.crs_id')
                            ->where('course.crs_id',$crs_id)
                            ->get();
        
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/dashboard_forum_siswa';
        $this->load->view('layout/master',$data);
    }
}