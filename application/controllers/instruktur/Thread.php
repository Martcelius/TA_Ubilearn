<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use Illuminate\Database\Capsule\Manager as DB;

class Thread extends CI_Controller {


    public function __construct()
    {
        parent::__construct();
        $this->load->model('M_Course_Forum_Thread');
        $this->load->model('M_Course_Forum');
    }


    public function index()
    {

    }

    public function list_thread_instruktur($cfr_id)
    {
        $data['dataThread'] = DB::table('course_forum_thread')
            ->leftJoin('users','users.usr_id','=','course_forum_thread.usr_id')
            ->where('course_forum_thread.cfr_id',$cfr_id)
            ->get(['course_forum_thread.*','users.usr_username']);
        $data['judul_forum'] = M_Course_Forum::where('cfr_id',$cfr_id)->first(['cfr_title']);
        $data['judul_lesson'] = DB::table('course_forum')
            ->leftJoin('course_lesson','course_lesson.lsn_id','=','course_forum.lsn_id')
            ->where('course_forum.cfr_id',$cfr_id)
            ->first(['course_lesson.lsn_name']);
//        dd($data['judul_lesson']);
        $data['sidebar'] = 'layout/sidebar_instruktur';
        $data['content'] = 'instruktur/list_thread_instruktur';
        $this->load->view('layout/master',$data);
    }



}
