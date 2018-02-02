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
        $data['content'] = 'siswa/forum_siswa';
        $data['courses'] = DB::table('course')
                            ->join('users', 'users.usr_id', '=', 'course.usr_id')
                            ->where('course.usr_id', '=', 3)
                            ->get();
        $data['nama_instruktur'] = DB::table('course')
                                                ->join('users', 'users.usr_id', '=', 'course.usr_id')
                                                ->where('course.usr_id', '=', 3)
                                                ->select('usr_firstname', 'usr_lastname')
                                                ->first();
        $this->load->view('layout/master', $data);
    }
}