<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use Illuminate\Database\Capsule\Manager as DB;

class Assesment extends CI_Controller {

    public function __construct()
    {
        parent::__construct();

        $this->load->model('M_Course');

        $this->load->library('usertracking'); $this->usertracking->track_this();



    }

    public function index()
    {

        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/assesment_info';
        $data['assesment']=  DB::table("course_assesment")
            ->leftJoin("course_lesson","course_lesson.lsn_id","=","course_assesment.lsn_id")
            ->where("ass_id","=", 1)
            ->first();
//        dd($data['assesment']);
        $this->load->view('layout/master', $data);
    }
}