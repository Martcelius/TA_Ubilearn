<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Users extends CI_Controller {


    public function __construct()
    {
        parent::__construct();
        
        $this->load->model('M_User');
        
    }


    public function update_user()
    {
        $nmfoto = $this->input->post('username').time();
        $config['upload_path'] ='./res/assets/images/uploads';
        $config['allowed_types'] = 'jpg|png';
        $config['file_name'] = $nmfoto;
        $this->load->library('upload',$config);
        $this->upload->do_upload('upload_foto');
        
        $result= $this->upload->data();
        // dd($result['file_name']);

        $usr_id = $this->input->post('id');
        $userData['usr_kode'] = empty($this->input->post('kode')) ? NULL : $this->input->post('kode');
        $userData['usr_username'] = $this->input->post('username');
        $userData['usr_firstname'] = $this->input->post('nama_depan');
        $userData['usr_lastname'] = $this->input->post('nama_belakang');
        $userData['usr_password'] = $this->input->post('password');
        $userData['usr_email'] = empty($this->input->post('email')) ? NULL : $this->input->post('email');
        $userData['usr_picture'] = $result['file_name'];
        $userData['usr_jk'] = empty($this->input->post('jenis_kelamin')) ? NULL : $this->input->post('jenis_kelamin');
        $update = $this->M_User->update_user($userData,$usr_id);
        if($update)
        {
            $this->session->set_flashdata('data_tersimpan', 'Data User Berhasil Terbarui');
        }else{
            $this->session->set_flashdata('data_gagal_tersimpan', 'Data User Tidak Berhasil Terbarui');
        }

        redirect('instruktur/dashboard');
        
    }

}

/* End of file Controllername.php */
