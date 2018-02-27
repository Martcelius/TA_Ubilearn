<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use Illuminate\Database\Capsule\Manager as DB;

class Assesment extends CI_Controller {

    public function __construct()
    {
        parent::__construct();

        $this->load->model('M_Course');

    }

    public function index($id)
    {

        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'siswa/assesment_info';
        $data['assesment']=  DB::table("course_assesment")
            ->leftJoin("course","course.crs_id","=","course_assesment.crs_id")
            ->where("ass_id","=", $id)
            ->first();


        $data['course'] = DB::table("course")
            ->leftJoin('users','users.usr_id', '=','course.usr_id')
            ->where("crs_id", '=',$data['assesment']->crs_id)
            ->first();
//        dd($data['course']);
        $this->load->view('layout/master', $data);
    }
}