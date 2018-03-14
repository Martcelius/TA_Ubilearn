
<?php

defined('BASEPATH') OR exit('No direct script access allowed');
class Lib_event_log
{
    /**
     * ci
     *
     * @param instance object
     */
    private $_ci;
    /**
     * log table name
     *
     * @param string
     */
    private $_log_table_name;
    /**
     * constructor
     *
     */
    public function __construct()
    {
        $this->_ci =& get_instance();
       
        $this->_ci->load->database();
        // Load config file
        $this->_ci->load->config('log');
        $this->_log_table_name = ($this->_ci->config->item('user_logs')) ? $this->_ci->config->item('log_table_name') : 'user_logs';
    }
    public function add_user_event($event)
    {
        $this->_ci->db->insert($this->_log_table_name, $event);
    }
    public function del_user_event($id)
    {
        $this->_ci->db->delete($this->_log_table_name, array('id'=>$id));
        return $this->_ci->db->insert_id();
    }
}
/* End of file Lib_event_log.php */
/* Location: ./application/libraries/Lib_event_log.php */