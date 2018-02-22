<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use Illuminate\Database\Capsule\Manager as DB;

class Course extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        
        $this->load->model('M_Course');
        
    }

     public function index()
     {
         $data['sidebar'] = 'layout/sidebar';
         $data['content'] = 'siswa/course_siswa';
         $data['courses']=  M_Course::where('usr_id',$this->session->userdata('id'))
                                     ->get();
         DB::table("course")
             ->leftJoin("users","users.usr_id","=","course.usr_id")
             ->where("")
         $data['courses']=  DB::table("course")
         ->leftJoin("users","users.usr_id","=","course.usr_id")
         ->get();
         $this->load->view('layout/master', $data);
     }
}