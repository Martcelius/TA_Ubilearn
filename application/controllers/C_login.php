<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class C_login extends CI_Controller {

    
    function __construct()
    {
        parent::__construct();
        $this->load->model('M_login');
        $this->load->helper('html');
        $this->load->library('form_validation');
    }
    
    public function index(){
        $data['url'] = "res/assets/images/photodune-4161018-group-of-students-m.jpg";
		$this->load->view('login/signin',$data);
    }


    function masuk(){
        $username = $this->input->post('username');
        $password = md5($this->input->post('password'));

        $query = $this->M_login->cek($username, $password);
        if ($query->num_rows() == 0){
            // $this->index();
            echo '<script language="javascript">alert("Username atau password tidak ada!");</script>';
            $this->index();
        
        }
        else {
            if ($query)
            {
                $cek= $query->result();
                // foreach($cek as $row);
                $user= array(
                    'username' =>$cek[0]->usr_username,
                    'level' =>$cek[0]->usr_level
                );
            
            $this->session->set_userdata($user);
        
                if ($this->session->userdata('level')==1)
                {
                    // print_r($this->session->userdata());
                    redirect('admin/dashboard');
                }
                elseif ($this->session->userdata('level')==2)
                {
                    redirect('siswa/dashboard');
                }
                elseif ($this->session->userdata('level')=="instruktur")
                {
                    redirect("instruktur/dashboard");
                }
            }
        }
       
    }

    public function landing_page()
    {
        // $this->session->userdata();
        // print_r($this->session->userdata("level"));
        // die();
        $this->load->view('layout/landing_page');   
    }

    function registrasi_siswa()
    {

        $this->form_validation->set_rules('name', 'Nama Pengguna', 'required');
        $this->form_validation->set_rules('name_depan', 'Nama Depan', 'required');
        $this->form_validation->set_rules('name_belakang', 'Nama Belakang', 'required');
        $this->form_validation->set_rules('email', 'Email', 'required|valid_email');
        $this->form_validation->set_rules('pass', 'Kata Sandi', 'required');
        $this->form_validation->set_rules('repeat-pass', 'Ulangi Kata Sandi', 'required|matches[pass]');
        $this->form_validation->set_error_delimiters('<div class="error">', '</div>');
        $this->form_validation->set_message('required', 'Masukan %s');
        $this->form_validation->set_message('matches', 'Ulangi kata sandi tidak sesuai');
        
        //dd($this->form_validation->run());
        
        if ( $this->form_validation->run() == FALSE ) {
            // echo '<script language="javascript">alert("Username atau password tidak ada!");</script>';
            // dd($insert);
            $this->load->view('login/signup');
            
        }else
        {
            $insert= $this->M_login->insert();
            redirect('signin','refresh');
            
            
        }
    }


}
