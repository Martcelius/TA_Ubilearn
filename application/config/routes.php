<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
$route['default_controller'] = 'welcome';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;

//route siswa
$route['siswa/dashboard'] = 'C_siswa/dashboard_siswa';
$route['siswa/akun'] = 'C_siswa/manage_akun';

//course
$route['siswa/course_info'] = 'C_siswa/course_info';
$route['siswa/course_close'] = 'C_siswa/course_close';

//forum
$route['siswa/forum_siswa'] = 'C_siswa/forum_siswa';
$route['siswa/list_thread_siswa'] = 'C_siswa/list_thread_siswa';

$route['siswa/course'] = 'C_siswa/course_siswa';
$route['siswa/course_detail'] = 'C_siswa/course_detail';
$route['siswa/course_content'] = 'C_siswa/course_content';
//assesment
$route['siswa/assignment'] = 'C_siswa/assignment_opening';
$route['siswa/assignment_detail'] = 'C_siswa/assignment_detail';
//assignment
$route['siswa/assesment_doing'] = 'C_siswa/assesment_doing';
//exercise
$route['siswa/exercise_doing'] = 'C_siswa/exercise_doing';
//result assesment/exercise
$route['siswa/result'] = 'C_siswa/result';





//route instruktor
$route['instruktur/MyCourse'] = 'C_instruktur/myCourse';
$route['instruktur/add_course'] = 'C_instruktur/add_course';
$route['instruktur/lesson'] = 'C_instruktur/lesson';
$route['instruktur/add_lesson'] = 'C_instruktur/add_lesson';


// route login
$route['signin'] = 'welcome/signin';
$route['signup'] = 'welcome/signup';
