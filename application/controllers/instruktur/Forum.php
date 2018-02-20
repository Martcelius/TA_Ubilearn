<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use Illuminate\Database\Capsule\Manager as DB;

class Forum extends CI_Controller {

    
    public function __construct()
    {
        parent::__construct();

        $this->load->model('M_User');
    }

    public function index()
    {
        $data['sidebar'] = 'layout/sidebar_instruktur';
        $data['content'] = 'instruktur/forum_instruktur';
        $data['coursesaya']=  M_Course::where('usr_id',$this->session->userdata('id'))
                                    ->get();
        $this->load->view('layout/master', $data);
    }
    

}
