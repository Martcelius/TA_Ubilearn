<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Learning_Outcome extends CI_Controller {


    public function __construct()
    {
        parent::__construct();
        $this->load->model('M_Course_Learning_Outcomes');
        
    }


    public function index()
    {
        $data['dataLO'] = M_Course_Learning_Outcomes::get();
        $data['sidebar'] = 'layout/sidebar_instruktur';
        $data['content'] = 'instruktur/learning_outcome';
        $this->load->view('layout/master',$data);
    }

    public function add_lo()
    {
        $data['sidebar'] = 'layout/sidebar_instruktur';
        $data['content'] = 'instruktur/add_LO';
        $this->load->view('layout/master', $data);

    }

    public function insert_lo()
    {
        $data['loc_desc'] = $this->input->post('loc_desc');
//         dd($data['loc_desc']);
        $insert= $this->M_Course_Learning_Outcomes->insert_lo($data);
//         dd($insert);
        if($insert)
        {
            $this->session->set_flashdata('data_lo', 'Data Learning Outcome Berhasil Tersimpan');
        }else{
            $this->session->set_flashdata('data_gagal_lo', 'Data learning Outcome Tidak Berhasil Tersimpan');
        }
        
        redirect('instruktur/add_lo');
    
    }
    public function edit_lo($id)
    {
        $data['dataLO'] = M_Course_Learning_Outcomes::where('loc_id',$id)->first();
        $data['sidebar'] = 'layout/sidebar_instruktur';
        $data['content'] = 'instruktur/edit_LO';
        $this->load->view('layout/master', $data);
    }

    public function update_lo()
    {
        $data['id'] = $this->input->post('id');
        $data['loc_desc'] = $this->input->post('loc_desc');
        $update = $this->M_Course_Learning_Outcomes->update_lo($data);
        if($update)
        {
            $this->session->set_flashdata('aksi_lo', 'Data Learning Outcome Berhasil Diupdate');
        }else{
            $this->session->set_flashdata('data_gagal_aksi_lo', 'Data learning Outcome Tidak Berhasil Terupdate');
        }

        redirect('instruktur/learning_outcome','refresh');
        
    }

    public function delete_Lo($id)
    {
        $deleteLo = M_Course_Learning_Outcomes::where('loc_id',$id)->first();
        // dd($deleteUser);
        $Delete= $deleteLo->delete();
        
        if($Delete)
        {
            $this->session->set_flashdata('aksi_lo', 'Data Learning Outcome Berhasil Terhapus');
        }else{
            $this->session->set_flashdata('data_gagal_aksi_lo', 'Data Learning Outcome Tidak Berhasil Terhapus');
        }
        
        redirect('instruktur/learning_outcome','refresh');
        
    }




}

/* End of file Controllername.php */
