<?php

class M_login extends CI_Model{

    function cek($username, $password)
    {
        $this->db->select('usr_username,usr_password,usr_level');
        $this->db->from('users');
        $this->db->where('usr_username', $username);
        $this->db->where('usr_password', $password);
        $this->db->limit(1);

        $query = $this->db->get();

        if ($query->num_rows()==1)
        {
            return $query->result();
        }
        else
        {
            return false;
        }
    }
}