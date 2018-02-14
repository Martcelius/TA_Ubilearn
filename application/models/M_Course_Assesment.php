<?php

use Illuminate\Database\Eloquent\Model as Eloquent;
use Illuminate\Database\Capsule\Manager as DB;

class M_Course_Assesment extends Eloquent
{
    protected $table = 'course_assesment';
    
    public function insert()
    {
    	$data = array(
	    	'ass_name' => $this->input->post('nama');
	        'ass_desc' => $this->input->post('desc');
	        'ass_timeopen' => $this->input->post('wmulai');
	        'ass_timeclose' => $this->input->post('wselesai');
    	);
    	$this->db->insert('course_assessment', $data);
    }
}

?>