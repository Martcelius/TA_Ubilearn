<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Universitas extends CI_Controller {

    
    public function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('level')=="2") {
            redirect('siswa/dashboard');
        } else if ($this->session->userdata('level')=="3") {
            redirect('instruktur/dashboard');
        } else if ($this->session->userdata('level') == NULL) {
            redirect('C_login/landing_page');
        }  
    }
    
    public function index()
    {
        $data['dataUnv'] = M_University::get();
        $data['content'] = 'admin/universitas';
        $this->load->view('layout_admin/master', $data); 
    }

    public function add_universitas()
    {
        $data['content'] = 'admin/add_universitas';
        $this->load->view('layout_admin/master', $data);
    }

    public function insert_universitas()
    {
        $unvData['unv_name'] = $this->input->post('unv_name');
        $unvData['unv_alamat'] = empty($this->input->post('unv_alamat')) ? NULL : $this->input->post('unv_alamat');
        $unvData['unv_kontak'] = empty($this->input->post('unv_kontak')) ? NULL : $this->input->post('unv_kontak');
        $unvData['unv_email'] = empty($this->input->post('unv_email')) ? NULL : $this->input->post('unv_email');
        $unvData['unv_website'] = empty($this->input->post('unv_status')) ? NULL : $this->input->post('unv_website');
        $unvData['unv_status'] = empty($this->input->post('unv_status')) ? NULL : $this->input->post('unv_status');
       
        $insert= $this->M_University->insert_universitas($unvData);
        
        if($insert)
        {
            $this->session->set_flashdata('data_tersimpan', 'Data Universitas Berhasil Tersimpan');
        }else{
            $this->session->set_flashdata('data_gagal_tersimpan', 'Data Universitas Tidak Berhasil Tersimpan');
        }
        
        // $data['content'] = 'admin/add_universitas';
        // $this->load->view('layout_admin/master', $data);
        
        redirect('admin/add_universitas','refresh');
        
    }

    public function edit_universitas($id)
    {
        $data['editUnv'] = M_University::where('unv_id',$id)->first();
        $data['content'] = 'admin/edit_universitas';
        $this->load->view('layout_admin/master', $data);
        
    }

    public function update_universitas()
    {
        $unv_id = $this->input->post('id');
        $unvData['unv_name'] = $this->input->post('unv_name');
        $unvData['unv_alamat'] = empty($this->input->post('unv_alamat')) ? NULL : $this->input->post('unv_alamat');
        $unvData['unv_kontak'] = empty($this->input->post('unv_kontak')) ? NULL : $this->input->post('unv_kontak');
        $unvData['unv_email'] = empty($this->input->post('unv_email')) ? NULL : $this->input->post('unv_email');
        $unvData['unv_website'] = empty($this->input->post('unv_status')) ? NULL : $this->input->post('unv_website');
        $unvData['unv_status'] = empty($this->input->post('unv_status')) ? NULL : $this->input->post('unv_status');

        $update = $this->M_University->update_universitas($unvData,$unv_id);
        if($update)
        {
            $this->session->set_flashdata('data_universitas', 'Data Universitas Berhasil Terbaharui');
        }else{
            $this->session->set_flashdata('data_gagal_universitas', 'Data Universitas Tidak Berhasil Terbaharui');
        }
        // $this->index();
        
        redirect('admin/universitas','refresh');
        
    }

    public function delete_universitas($id)
    {
        $deleteUniversitas = M_University::where('unv_id',$id)->first();
        // dd($deleteUser);
       $unvDelete= $deleteUniversitas->delete();
        
        if($unvDelete)
        {
            $this->session->set_flashdata('data_universitas', 'Data Universitas Berhasil Terhapus');
        }else{
            $this->session->set_flashdata('data_gagal_universitas', 'Data Universitas Tidak Berhasil Terhapus');
        }
        $this->index();
        redirect('admin/universitas','refresh');
    }

}

/* End of file Controllername.php */
