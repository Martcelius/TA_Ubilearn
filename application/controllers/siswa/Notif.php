<?php

defined('BASEPATH') OR exit('No direct script access allowed');

use Illuminate\Database\Capsule\Manager as DB;

class Notif extends CI_Controller {

    
    public function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('level') == NULL) {
            redirect('C_login/landing_page');
        }      
    }
    
    public function index()
    {
        $data['sidebar'] = 'layout/sidebar';
        $data['content'] = 'notifikasi';
        $this->load->view('layout/master',$data);
    }

    public function read_notif($tipe, $id_tipe, $ntf_id) 
    {
        $notif_update = M_Notification::where('ntf_id', '=', $ntf_id)->first();
        $notif_update->ntf_read = "Y";
        $notif_update->save();
        redirect(site_url('siswa/'.$tipe.'/'.$id_tipe));
    }

}
