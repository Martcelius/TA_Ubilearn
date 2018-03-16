<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Users extends CI_Controller {


    public function __construct()
    {
        parent::__construct();
                
    }


    public function index()
    {
        $data['content'] = 'admin/user';
        $userData = M_user::get();
        $data['userData'] = $userData;
        // dd($userData);
        $this->load->view('layout_admin/master', $data);
    }

    public function add_user()
    {
        $data['content'] = 'admin/add_user';
        $this->load->view('layout_admin/master', $data);
    }

    public function insert_user()
    {
        
        $nmfoto = $this->input->post('username').time();
        $config['upload_path'] ='./res/assets/images/uploads';
        $config['allowed_types'] = 'jpg|png';
        $config['file_name'] = $nmfoto;
        $this->load->library('upload',$config);
        $this->upload->do_upload('foto');
        $result= $this->upload->data();
         dd($result);

       
        $userData['usr_kode'] = empty($this->input->post('kode')) ? NULL : $this->input->post('kode');
        $userData['usr_username'] = $this->input->post('username');
        $userData['usr_firstname'] = $this->input->post('nama_depan');
        $userData['usr_lastname'] = $this->input->post('nama_belakang');
        $userData['usr_password'] = $this->input->post('password');
        $userData['usr_email'] = empty($this->input->post('email')) ? NULL : $this->input->post('email');
        $userData['usr_picture'] = $result['file_name'];
        $userData['usr_gpa'] = empty($this->input->post('ipk')) ? NULL : $this->input->post('ipk');
        $userData['usr_level'] = empty($this->input->post('level')) ? NULL : $this->input->post('level');
        $userData['usr_jk'] = empty($this->input->post('jenis_kelamin')) ? NULL : $this->input->post('jenis_kelamin');

        $insert = $this->M_User->insert_user($userData);
        if($insert)
        {
            $this->session->set_flashdata('data_tersimpan', 'Data User Berhasil Tersimpan');
        }else{
            $this->session->set_flashdata('data_gagal_tersimpan', 'Data User Tidak Berhasil Tersimpan');
        }
        
        // $data['content'] = 'admin/add_user';
        // $this->load->view('layout_admin/master', $data);
        
        redirect('admin/add_user','refresh');
        

    }

    public function edit_user($id)
    {
        $data['userData'] = M_User::where('usr_id',$id)->first();
        // dd($data['userData']);
        $data['content'] = 'admin/edit_user';
        $this->load->view('layout_admin/master', $data); 
        
    }

    public function update_user()
    {
        $nmfoto = $this->input->post('username').time();
        $config['upload_path'] ='./res/assets/images/uploads';
        $config['allowed_types'] = 'jpg|png';
        $config['file_name'] = $nmfoto;
        $this->load->library('upload',$config);
        $this->upload->do_upload('foto');
        
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
        $userData['usr_gpa'] = empty($this->input->post('ipk')) ? NULL : $this->input->post('ipk');
        $userData['usr_level'] = empty($this->input->post('level')) ? NULL : $this->input->post('level');
        $userData['usr_jk'] = empty($this->input->post('jenis_kelamin')) ? NULL : $this->input->post('jenis_kelamin');
        $update = $this->M_User->update_user($userData,$usr_id);
        if($update)
        {
            $this->session->set_flashdata('data_tersimpan', 'Data User Berhasil Terbarui');
        }else{
            $this->session->set_flashdata('data_gagal_tersimpan', 'Data User Tidak Berhasil Terbarui');
        }

       $this->index();
    //    redirect('admin/user','refresh');
    }

    public function delete_user($id)
    {
        $deleteUser = M_User::where('usr_id',$id)->first();
        // dd($deleteUser);
       $userDelete= $deleteUser->delete();
        
        if($userDelete)
        {
            $this->session->set_flashdata('data_tersimpan', 'Data User Berhasil Terhapus');
        }else{
            $this->session->set_flashdata('data_gagal_tersimpan', 'Data User Tidak Berhasil Terhapus');
        }
        // $this->index();
        redirect('admin/user','refresh');
    }
}

/* End of file Controllername.php */
