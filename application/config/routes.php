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

// ==============================================================================
//route siswa
$route['siswa/dashboard'] = 'C_siswa/dashboard_siswa';
$route['siswa/akun'] = 'C_siswa/manage_akun';
//course
$route['siswa/course_info'] = 'C_siswa/course_info';
$route['siswa/course_close'] = 'C_siswa/course_close';
$route['siswa/course'] = 'C_siswa/course_siswa';
$route['siswa/course_detail'] = 'C_siswa/course_detail';
$route['siswa/course_content'] = 'C_siswa/course_content';
//forum
$route['siswa/forum_siswa'] = 'C_siswa/forum_siswa';
$route['siswa/list_thread_siswa'] = 'C_siswa/list_thread_siswa';
$route['siswa/detail_thread_siswa'] = 'C_siswa/detail_thread_siswa';
$route['siswa/add_thread_siswa'] = 'C_siswa/add_thread_siswa';
$route['siswa/edit_thread_siswa'] = 'C_siswa/edit_thread_siswa';
//assesment
$route['siswa/assignment_opening'] = 'C_siswa/assignment_opening';
$route['siswa/assignment_detail'] = 'C_siswa/assignment_detail';
//assignment
$route['siswa/assesment_doing'] = 'C_siswa/assesment_doing';
//exercise
$route['siswa/exercise_doing'] = 'C_siswa/exercise_doing';
//result assesment/exercise
$route['siswa/result'] = 'C_siswa/result';
$route['siswa/pretest'] = 'C_siswa/pretest';
$route['siswa/remedial'] = 'C_siswa/remedial';
// akun siswa
$route['siswa/update_user'] = 'siswa/akun/update_user';


// =============================================================================
//route admin
$route['admin/dashboard'] = 'C_admin/dashboard_admin';
$route['admin/akun_admin'] = 'C_admin/akun_admin';
// route admin-user
$route['admin/user'] = 'admin/users/index';
$route['admin/add_user'] = 'admin/users/add_user';
$route['admin/insert_user'] = 'admin/users/insert_user';
$route['admin/edit_user/(:any)'] = 'admin/users/edit_user/$1';
$route['admin/update_user'] = 'admin/users/update_user';
$route['admin/delete_user/(:any)'] = 'admin/users/delete_user/$1';
// route admin-universitas
$route['admin/universitas'] = 'admin/universitas/index';
$route['admin/add_universitas'] = 'admin/universitas/add_universitas';
$route['admin/insert_universitas'] = 'admin/universitas/insert_universitas';
$route['admin/edit_universitas/(:any)'] = 'admin/universitas/edit_universitas/$1';
$route['admin/update_universitas'] = 'admin/universitas/update_universitas';
$route['admin/delete_universitas/(:any)'] = 'admin/universitas/delete_universitas/$1';
// akun admin
$route['admin/update_user'] = 'admin/akun/update_user';

// ==========================================================================================
//route instruktor
$route['instruktur/dashboard'] = 'C_instruktur/dashboard';
$route['instruktur/akun'] = 'C_instruktur/manage_akun';
// route instruktor-course
$route['instruktur/MyCourse'] = 'instruktur/course/index';
$route['instruktur/add_course'] = 'instruktur/course/add';
$route['instruktur/edit_course/(:any)'] = 'instruktur/course/edit/$1';
$route['instruktur/update_course'] = 'instruktur/course/update';
// route instruktor-lesson
$route['instruktur/lesson/(:any)'] = 'instruktur/lesson/index/$1';
$route['instruktur/add_lesson/(:any)'] = 'instruktur/lesson/add/$1';
$route['instruktur/insert_lesson'] = 'instruktur/lesson/insert_lesson';
$route['instruktur/edit_lesson/(:any)'] = 'instruktur/lesson/edit/$1';
$route['instruktur/update_lesson'] = 'instruktur/lesson/update_lesson';
$route['instruktur/delete_lesson/(:any)'] = 'instruktur/lesson/delete_lesson/$1';
// route instruktor-LO
$route['instruktur/learning_outcome'] = 'instruktur/learning_outcome/index';
$route['instruktur/add_lo'] = 'instruktur/learning_outcome/add_lo';
$route['instruktur/insert_lo'] = 'instruktur/learning_outcome/insert_lo';
$route['instruktur/edit_lo/(:any)'] = 'instruktur/learning_outcome/edit_lo/$1';
$route['instruktur/update_lo'] = 'instruktur/learning_outcome/update_lo';
$route['instruktur/delete_lo/(:any)'] = 'instruktur/learning_outcome/delete_lo/$1';
// route instruktor-addSoal
$route['instruktur/add_assessment'] = 'C_instruktur/add_assessment';
$route['instruktur/add_pretest'] = 'C_instruktur/add_pretest';
$route['instruktur/add_remedial'] = 'C_instruktur/add_remedial';
$route['instruktur/add_exercise'] = 'C_instruktur/add_exercise';
$route['instruktur/add_assignment'] = 'C_instruktur/add_assignment';
// route instruktor-content
$route['instruktur/content/(:any)'] = 'instruktur/content/content/$1';
$route['instruktur/add_content/(:any)'] = 'instruktur/content/add_content/$1';
$route['instruktur/insert_content'] = 'instruktur/content/insert_content';
$route['instruktur/edit_content/(:any)'] = 'instruktur/content/edit_content/$1';
$route['instruktur/update_content'] = 'instruktur/content/update_content';
$route['instruktur/delete_content/(:any)'] = 'instruktur/content/delete_content/$1';
// route instruktur-forum
// $route['instruktur/list_thread'] = 'C_instruktur/list_thread';
$route['instruktur/forum_instruktur'] = 'instruktur/forum/index';
$route['instruktur/dashboard_forum_instruktur/(:any)'] = 'instruktur/forum/dashboard_forum_instruktur/$1';
$route['instruktur/add_forum/(:any)'] = 'instruktur/forum/add_forum/$1';
$route['instruktur/insert_forum'] = 'instruktur/forum/insert_forum';
$route['instruktur/edit_forum/(:any)/(:any)'] = 'instruktur/forum/edit_forum/$1/$2';
$route['instruktur/update_forum'] = 'instruktur/forum/update_forum';
$route['instruktur/delete_forum/(:any)/(:any)'] = 'instruktur/forum/delete_forum/$1/$2';
$route['instruktur/list_thread_instruktur/(:any)'] = 'instruktur/thread/list_thread_instruktur/$1';
// route instruktur-result siswa
$route['instruktur/result_siswa'] = 'C_instruktur/result_siswa';
// route instruktur-akun
$route['instruktur/update_user'] = 'instruktur/akun/update_user';
$route['instruktur/edit_akun'] = 'instruktur/akun/update_user';
// =================================================================================================
// route login
$route['index'] = 'C_login/index';
$route['signin'] = 'C_login/signin';
$route['signup'] = 'C_login/signup';
$route['signup_instruktur'] = 'C_login/signup_instruktur';
$route['landing_page']= 'C_login/landing_page';

// ==================================================================================================
// logout
$route['logout'] = 'C_login/logout';

$route['siswa/kurs'] = 'instruktur/course/kurs';
