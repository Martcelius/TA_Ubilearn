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
$route['siswa/akun'] = 'siswa/akun/manage_akun';
$route['siswa/password'] = 'siswa/akun/manage_password';


//course
//$route['siswa/course_info'] = 'C_siswa/course_info';
//$route['siswa/course_close'] = 'C_siswa/course_close';
//$route['siswa/course'] = 'C_siswa/course_siswa';
//$route['siswa/course_detail'] = 'C_siswa/course_detail';
$route['siswa/course'] = 'siswa/Course/index';
$route['siswa/course_close/(:any)'] = 'siswa/course/course_close/$1';
$route['siswa/enrol/(:any)'] = 'siswa/course/enrol/$1';
$route['siswa/my_course'] = 'siswa/course/my_course';
$route['siswa/course_detail/(:any)'] = 'siswa/course/course_detail/$1';

//content
$route['siswa/materi/(:any)'] = 'siswa/content/index/$1';
$route['siswa/content/(:any)'] = 'siswa/content/contents/$1';
$route['siswa/content/video/(:any)'] = 'siswa/content/contents/$1';

//forum
$route['siswa/forum_siswa'] = 'siswa/Forum/index';
// $route['siswa/list_thread_siswa'] = 'C_siswa/list_thread_siswa';
$route['siswa/detail_thread_siswa'] = 'C_siswa/detail_thread_siswa';
$route['siswa/add_thread_siswa'] = 'C_siswa/add_thread_siswa';
$route['siswa/edit_thread_siswa'] = 'C_siswa/edit_thread_siswa';
$route['siswa/list_thread_siswa/(:any)'] = 'siswa/thread/list_thread_siswa/$1';

//assesment
$route['siswa/assignment_detail/(:any)'] = 'siswa/assignment/index/$1';

//assignment
$route['siswa/assesment_doing/(:any)'] = 'siswa/assesment/assesment_doing/$1';
$route['siswa/assesment_info/(:any)'] = 'siswa/assesment/index/$1';

//exercise
//$route['siswa/exercise_doing'] = 'C_siswa/exercise_doing';

//result assesment/exercise
$route['siswa/result/(:any)'] = 'siswa/assesment/result/$1';

//$route['siswa/pretest'] = 'C_siswa/pretest';
//$route['siswa/remedial'] = 'C_siswa/remedial';
//$route['siswa/materi'] = 'C_siswa/course_materi';

//route admin
$route['admin/dashboard'] = 'C_admin/dashboard_admin';
$route['admin/akun_admin'] = 'admin/akun/akun_admin';
$route['admin/password'] = 'admin/akun/manage_password';

// route admin-user
//$route['admin/akun_admin'] = 'C_admin/akun_admin';
$route['admin/user'] = 'admin/users/index';
$route['admin/add_user'] = 'admin/users/add_user';
$route['admin/insert_user'] = 'admin/users/insert_user';
$route['admin/edit_user/(:any)'] = 'admin/users/edit_user/$1';
$route['admin/update_user'] = 'admin/users/update_user';
$route['admin/delete_user/(:any)'] = 'admin/users/delete_user/$1';
$route['admin/universitas'] = 'admin/universitas/index';
$route['admin/add_universitas'] = 'admin/universitas/add_universitas';
$route['admin/insert_universitas'] = 'admin/universitas/insert_universitas';
$route['admin/edit_universitas/(:any)'] = 'admin/universitas/edit_universitas/$1';
$route['admin/update_universitas'] = 'admin/universitas/update_universitas';
$route['admin/delete_universitas/(:any)'] = 'admin/universitas/delete_universitas/$1';

//route instruktor
$route['instruktur/dashboard'] = 'C_instruktur/dashboard';
$route['instruktur/akun'] = 'instruktur/akun/manage_akun';
$route['instruktur/edit_akun'] = 'instruktur/akun/update_user';
$route['instruktur/password'] = 'instruktur/akun/manage_password';

// route instruktor-course
//$route['instruktur/akun'] = 'C_instruktur/manage_akun';
$route['instruktur/MyCourse'] = 'instruktur/course/index';
$route['instruktur/add_course'] = 'instruktur/course/add';
$route['instruktur/edit_course/(:any)'] = 'instruktur/course/edit/$1';
$route['instruktur/update_course'] = 'instruktur/course/update';
$route['instruktur/lesson/(:any)'] = 'instruktur/lesson/index/$1';
$route['instruktur/add_lesson/(:any)'] = 'instruktur/lesson/add/$1';
$route['instruktur/insert_lesson'] = 'instruktur/lesson/insert_lesson';
$route['instruktur/edit_lesson/(:any)'] = 'instruktur/lesson/edit/$1';
$route['instruktur/update_lesson'] = 'instruktur/lesson/update_lesson';
$route['instruktur/delete_lesson/(:any)'] = 'instruktur/lesson/delete_lesson/$1';

//$route['instruktur/learning_outcome'] = 'C_instruktur/learning_outcome';
//$route['instruktur/add_lo'] = 'C_instruktur/add_lo';
//$route['instruktur/detail_lesson'] = 'C_instruktur/detail_lesson';
//$route['instruktur/add_assesment/(:any)'] = 'instruktur/Assesment/add_assesment/$1';
//$route['instruktur/edit_assesment/(:any)'] = 'instruktur/Assesment/edit_assesment/$1';
//$route['instruktur/delete_assesment/(:any)'] = 'instruktur/Assesment/delete_assesment/$1';



//$route['instruktur/learning_outcome'] = 'C_instruktur/learning_outcome';
//$route['instruktur/add_lo'] = 'C_instruktur/add_lo';
//$route['instruktur/detail_lesson'] = 'C_instruktur/detail_lesson';
//$route['instruktur/content'] = 'C_instruktur/content';
//$route['instruktur/learning_outcome'] = 'C_instruktur/learning_outcome';
//$route['instruktur/add_lo'] = 'C_instruktur/add_lo';
//$route['instruktur/detail_lesson'] = 'C_instruktur/detail_lesson';
/*$route['instruktur/add_pretest'] = 'C_instruktur/add_pretest';
$route['instruktur/add_remedial'] = 'C_instruktur/add_remedial';
$route['instruktur/add_exercise'] = 'C_instruktur/add_exercise';*/
//$route['instruktur/content'] = 'C_instruktur/content';
//$route['instruktur/list_thread_instruktur'] = 'C_instruktur/list_thread_instruktur';
//$route['instruktur/list_thread'] = 'C_instruktur/list_thread';
//$route['instruktur/list_thread'] = 'C_instruktur/list_thread';


// route instruktor-LO
$route['instruktur/learning_outcome'] = 'instruktur/learning_outcome/index';
$route['instruktur/add_lo'] = 'instruktur/learning_outcome/add_lo';
$route['instruktur/insert_lo'] = 'instruktur/learning_outcome/insert_lo';
$route['instruktur/edit_lo/(:any)'] = 'instruktur/learning_outcome/edit_lo/$1';
$route['instruktur/update_lo'] = 'instruktur/learning_outcome/update_lo';
$route['instruktur/delete_lo/(:any)'] = 'instruktur/learning_outcome/delete_lo/$1';

// route instruktur-addSoal
$route['instruktur/add_assesment/(:any)'] = 'instruktur/Assesment/add_assesment/$1';
$route['instruktur/edit_assesment/(:any)'] = 'instruktur/Assesment/edit_assesment/$1';
$route['instruktur/delete_assesment/(:any)'] = 'instruktur/Assesment/delete_assesment/$1';
//$route['instruktur/add_pretest'] = 'C_instruktur/add_pretest';
//$route['instruktur/add_remedial'] = 'C_instruktur/add_remedial';
//$route['instruktur/add_exercise'] = 'C_instruktur/add_exercise';
$route['instruktur/add_assignment/(:any)'] = 'instruktur/Assignment/add_assignment/$1';
$route['instruktur/edit_assignment/(:any)'] = 'instruktur/Assignment/edit_asing/$1';
$route['instruktur/delete_assignment/(:any)'] = 'instruktur/Assignment/delete_asing/$1';


// route instruktur-content
$route['instruktur/content/(:any)'] = 'instruktur/content/content/$1';
$route['instruktur/add_content/(:any)'] = 'instruktur/content/add_content/$1';
$route['instruktur/insert_content'] = 'instruktur/content/insert_content';
$route['instruktur/edit_content/(:any)'] = 'instruktur/content/edit_content/$1';
$route['instruktur/update_content'] = 'instruktur/content/update_content';
$route['instruktur/delete_content/(:any)'] = 'instruktur/content/delete_content/$1';

// route instruktur-forum
//$route['instruktur/list_thread_instruktur'] = 'C_instruktur/list_thread_instruktur';
//$route['instruktur/add_forum'] = 'C_instruktur/add_forum';
//$route['instruktur/dashboard_forum_instruktur'] = 'C_instruktur/dashboard_forum_instruktur';
$route['instruktur/forum_instruktur'] = 'instruktur/forum/index';
$route['instruktur/dashboard_forum_instruktur/(:any)'] = 'instruktur/forum/dashboard_forum_instruktur/$1';
$route['instruktur/add_forum/(:any)'] = 'instruktur/forum/add_forum/$1';
$route['instruktur/insert_forum'] = 'instruktur/forum/insert_forum';
$route['instruktur/edit_forum/(:any)/(:any)'] = 'instruktur/forum/edit_forum/$1/$2';
$route['instruktur/update_forum'] = 'instruktur/forum/update_forum';
$route['instruktur/delete_forum/(:any)/(:any)'] = 'instruktur/forum/delete_forum/$1/$2';
$route['instruktur/list_thread_instruktur/(:any)'] = 'instruktur/thread/list_thread_instruktur/$1';
<<<<<<< HEAD
    
// route instruktur-result siswa


$route['instruktur/result_siswa'] = 'C_instruktur/result_siswa';
=======
>>>>>>> dd31d7aecf27bb38fac52995c84eaac8f1ea75a4

// route instruktur-result siswa
$route['instruktur/result_siswa_assignment/(:any)'] = 'instruktur/assignment/result_siswa_assignment/$1';

// route login
$route['index'] = 'C_login/index';
$route['signin'] = 'C_login/signin';
$route['signup'] = 'C_login/signup';
$route['signup_instruktur'] = 'C_login/signup_instruktur';
$route['landing_page']= 'C_login/landing_page';

// logout
$route['logout'] = 'C_login/logout';