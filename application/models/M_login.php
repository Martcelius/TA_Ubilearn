<?php

class M_login extends CI_Model{

    function __construct(){
        parent::__construct();
        $this->load->database();
    }

    public function cek($username=NULL, $password)
    {
        $this->db->select('usr_username,usr_password,usr_level');
        $this->db->from('users');
        $this->db->where('usr_username', $username);
        $this->db->where('usr_password', $password);
        // $this->db->limit(1);

        $query = $this->db->get();
        return $query;
    }

    public function insert()
    {

        $data['nama_pengguna']= $this->input->post('name');
        $data['name_depan']= $this->input->post('name_depan');
        $data['name_belakang']= $this->input->post('name_belakang');
        $data['pass']= $this->input->post('pass');
        $data['email']= md5($this->input->post('email'));
        $insert = $this->db->query("INSERT INTO users (usr_username,usr_firstname,usr_lastname,usr_password,usr_email) VALUES ('".$data['nama_pengguna']."' , ".$data['nama_depan'].", '".$data['nama_belakang']."', '".$data['pass']."', '".$data['email']."') ");
    
    }
}