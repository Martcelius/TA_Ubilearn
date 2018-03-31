<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class C_login extends CI_Controller {

    
    function __construct()
    {
        parent::__construct();

    }
    
    public function index(){

    }

    public function signup()
	{
		$this->load->view('login/signup2');
	}
	
	public function signup_instruktur()
	{
		$this->load->view('login/signup_instruktur2');
	}

	public function signin()
	{
//		$data['url'] = "res/assets/images/photodune-4161018-group-of-students-m.jpg";
		$this->load->view('login/login');
	}

    public function masuk(){
        $username = $this->input->post('username');
        $password = md5($this->input->post('password'));

        $query = $this->M_login->cek($username, $password);
        // $cek= $query->result();
        // dd($cek);

        if ($query->num_rows() == 0){
            // $this->index();
//            echo '<script language="javascript">alert("Username atau password tidak ada!");</script>';
            $this->session->set_flashdata('login_salah', 'Username atau password salah!');
            redirect('signin');
        
        }
        else {
            if ($query)
            {

                $cek= $query->result();

                // foreach($cek as $row);
                $user= array(
                    'session_id' => session_id(),
                    'id' =>$cek[0]->usr_id,
                    'kode' =>$cek[0]->usr_kode,
                    'username' =>$cek[0]->usr_username,
                    'password' =>$cek[0]->usr_password,
                    'email' =>$cek[0]->usr_email,
                    'firstname' =>$cek[0]->usr_firstname,
                    'lastname' =>$cek[0]->usr_lastname,
                    'gpa' =>$cek[0]->usr_gpa,
                    'foto' =>$cek[0]->usr_picture,
                    'jk' =>$cek[0]->usr_jk,
                    'level' =>$cek[0]->usr_level,
                    'ttl' =>$cek[0]->usr_tgllahir,
                    'tmpasal' => $cek[0]->usr_tmpasal
                );

                $this->session->set_userdata($user);

                // Capture Log Start
                $event = array(
                    'usr_id'            => $this->session->userdata('id'),
                    'log_event_context' => "Login:" . " " . $this->session->userdata('username'),
                    'log_referrer'      => $this->input->server('REQUEST_URI'),
                    'log_name'          => "Login",
                    'log_origin'        => $this->agent->agent_string(),
                    'log_ip'            => $this->input->server('REMOTE_ADDR'),
                    'log_desc'          => $this->session->userdata('username'). " " ."melakukan aksi Login"
                );
                    $this->lib_event_log->add_user_event($event);
                    // Capture Log End

//                dd($this->session->userdata('foto'));
                    if ($this->session->userdata('level')==1)
                    {
//                    dd($user['ttl']);
                    // print_r($this->sAession->userdata());
                    redirect('admin/dashboard');
                }
                else if ($this->session->userdata('level')==2)
                {
                    if(!$this->M_Hasil_Kuesioner->selectByUser($this->session->userdata('id'))){
                        $this->session->set_userdata('ls',0);
                        $this->session->set_userdata('tr',0);
                    }else if (!$this->M_Hasil_Kuesioner2->selectByUser($this->session->userdata('id'))){
                        $this->session->set_userdata('ls',1);
                        $this->session->set_userdata('tr',0);
                    }
                    else {
                        $this->session->set_userdata('ls',1);
                        $this->session->set_userdata('tr',1);
                    }
                    redirect('siswa/dashboard');
                }
                else if ($this->session->userdata('level')==3)
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
        
        // redirect('signup');
          
    }

    function registrasi_siswa()
    {

        $this->form_validation->set_rules('name', 'Nama Pengguna', 'required');
        $this->form_validation->set_rules('name_depan', 'Nama Depan', 'required');
        $this->form_validation->set_rules('name_belakang', 'Nama Belakang', 'required');
        $this->form_validation->set_rules('email', 'Email', 'required|valid_email');
        $this->form_validation->set_rules('pass', 'Kata Sandi', 'required');
        $this->form_validation->set_rules('repeat-pass', 'Ulangi Kata Sandi', 'required|matches[pass]');
        $this->form_validation->set_rules('jenis_kelamin', 'Jenis Kelamin', 'trim|is_numeric'); 
        $this->form_validation->set_error_delimiters('<div class="error">', '</div>');
        $this->form_validation->set_message('required', 'Masukan %s');
        $this->form_validation->set_message('matches', '<p style="color: red;margin-left: 15px;">*Ulangi kata sandi tidak sesuai</p>');
        
        //dd($this->form_validation->run());
        
        if ( $this->form_validation->run() == FALSE ) {
            // echo '<script language="javascript">alert("Username atau password tidak ada!");</script>';
            // dd($insert);
            // $this->load->view('login/signup');
            $this->signup();
        }else
        {
            $insert= $this->M_login->insert();
            redirect('signin','refresh');
        }
    }
    public function logout()
    {
        // $user_data = $this->session->all_userdata();
        // foreach ($user_data as $key => $value) {
        //     if ($key != 'session_id' && $key != 'ip_address' && $key != 'user_agent' && $key != 'last_activity') {
        //         $this->session->unset_userdata($key);
        //     }
        // }
        $this->session->sess_destroy();
        
        // DESTROY SESEN
        // $_SESSION = array();
        // unset($_SESSION);
        // session_destroy();

        if (!$this->session->userdata('username'))
        {
            echo '<script language="javascript">alert("Username atau password tidak ada!");</script>';
        }
                    

        redirect('signin');
    }

}




