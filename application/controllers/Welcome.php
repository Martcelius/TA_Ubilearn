<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */

	public function __construct()
	{
		parent::__construct();
		// $this->load->helper('url');

		
	}


//	public function index()
//	{
//		$users = M_User::all();
//
//        foreach ($users as $key => $value) {
//            echo "ID : ".$value->usr_id."<br>";
//            echo "First Name : ".$value->usr_firstname."<br>";
//            echo "Last Name : ".$value->usr_lastname."<br>";
//            echo "Email : ".$value->usr_username."<br><br>";
//		}
//
//		echo "<pre>", print_r($users->toArray()), "</pre>";
//
//		$courses = M_Course::all();
//		echo "<pre>", print_r($courses->toArray()), "</pre>";
//
//		$lesen = M_Course_Lesson::where('crs_id', 8)->get();
//		echo "<pre>", print_r($lesen->toArray()), "</pre>";
//
//	}

	

}
