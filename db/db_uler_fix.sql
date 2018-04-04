-- phpMyAdmin SQL Dump
-- version 4.7.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 04, 2018 at 09:46 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uler`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_count`
--

CREATE TABLE `activity_count` (
  `activity_id` int(10) UNSIGNED NOT NULL,
  `usr_id` int(10) NOT NULL,
  `crs_id` int(10) NOT NULL,
  `view_content` int(10) DEFAULT '0',
  `done_assessment` int(10) DEFAULT '0',
  `uploaded` int(10) DEFAULT '0',
  `create_thread` int(10) DEFAULT '0',
  `create_reply` int(10) DEFAULT '0',
  `view_thread` int(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `at_risk`
--

CREATE TABLE `at_risk` (
  `ar_id` int(10) NOT NULL,
  `usr_id` int(10) UNSIGNED DEFAULT NULL,
  `ass_id` int(10) UNSIGNED DEFAULT NULL,
  `crs_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `crs_id` int(10) UNSIGNED NOT NULL,
  `crs_code` varchar(10) NOT NULL,
  `crs_name` varchar(50) NOT NULL,
  `crs_summary` longtext,
  `crs_univ` varchar(50) DEFAULT NULL,
  `crs_timecreated` timestamp NULL DEFAULT NULL,
  `crs_timemodified` timestamp NULL DEFAULT NULL,
  `cat_id` int(10) UNSIGNED NOT NULL,
  `usr_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`crs_id`, `crs_code`, `crs_name`, `crs_summary`, `crs_univ`, `crs_timecreated`, `crs_timemodified`, `cat_id`, `usr_id`) VALUES
(22, 'STD', 'Struktur Data', 'Pada mata kuliah ini diajarkan berbagai macam struktur data yang dapat diimplementasikan dalam program komputer.\r\n\r\nBahasan mencakup :\r\nAbstract Data Type(ADT), Representasi struktur data linier dan primitif-primitifnya (array, linked list, variasi linked list, stack, queue),\r\nRepresentasi struktur data non linier dan primitif-primitifnya (tree, graph, multilist) dan algorima penelusuran (preorder, inorder,\r\npostorder) dan pencarian (BFS, DFS)', 'Universitas Telkom', '2018-04-03 10:26:39', '2018-04-03 10:26:39', 1, 48);

-- --------------------------------------------------------

--
-- Table structure for table `course_assesment`
--

CREATE TABLE `course_assesment` (
  `ass_id` int(10) UNSIGNED NOT NULL,
  `ass_tipe` varchar(20) NOT NULL,
  `ass_name` varchar(50) NOT NULL,
  `ass_desc` varchar(150) NOT NULL,
  `ass_timeopen` timestamp NULL DEFAULT NULL,
  `ass_timeclose` timestamp NULL DEFAULT NULL,
  `ass_shufflequestions` varchar(10) DEFAULT NULL,
  `ass_timelimit` int(100) DEFAULT NULL,
  `ass_timecreated` timestamp NULL DEFAULT NULL,
  `ass_timemodified` timestamp NULL DEFAULT NULL,
  `crs_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_assesment`
--

INSERT INTO `course_assesment` (`ass_id`, `ass_tipe`, `ass_name`, `ass_desc`, `ass_timeopen`, `ass_timeclose`, `ass_shufflequestions`, `ass_timelimit`, `ass_timecreated`, `ass_timemodified`, `crs_id`) VALUES
(12, 'Pre-test', 'Pre-test', 'Pre-test ini bertujuan untuk mengetahui kemampuan mahasiswa saat ini terhadap course Struktur Data.', '2018-04-03 10:00:00', '2020-11-26 10:00:00', NULL, NULL, '2018-04-03 10:31:36', '2018-04-03 10:31:36', 22);

-- --------------------------------------------------------

--
-- Table structure for table `course_assesment_question`
--

CREATE TABLE `course_assesment_question` (
  `qst_id` int(10) UNSIGNED NOT NULL,
  `qst_text` varchar(500) NOT NULL,
  `qst_shuffleanswers` varchar(10) DEFAULT NULL,
  `qst_timecreated` timestamp NULL DEFAULT NULL,
  `qst_timemodified` timestamp NULL DEFAULT NULL,
  `ass_id` int(10) UNSIGNED NOT NULL,
  `loc_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_assesment_question`
--

INSERT INTO `course_assesment_question` (`qst_id`, `qst_text`, `qst_shuffleanswers`, `qst_timecreated`, `qst_timemodified`, `ass_id`, `loc_id`) VALUES
(24, '<p>soal buat rojak</p>', NULL, '2018-04-03 10:31:36', '2018-04-03 10:31:36', 12, 12);

-- --------------------------------------------------------

--
-- Table structure for table `course_assesment_questions_answer`
--

CREATE TABLE `course_assesment_questions_answer` (
  `ans_id` int(10) UNSIGNED NOT NULL,
  `ans_text` varchar(500) NOT NULL,
  `ans_point` decimal(12,7) DEFAULT NULL,
  `qst_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_assesment_questions_answer`
--

INSERT INTO `course_assesment_questions_answer` (`ans_id`, `ans_text`, `ans_point`, `qst_id`) VALUES
(116, 'true', '100.0000000', 24),
(117, 'false', '0.0000000', 24),
(118, 'false', '0.0000000', 24),
(119, 'false', '0.0000000', 24),
(120, 'false', '0.0000000', 24);

-- --------------------------------------------------------

--
-- Table structure for table `course_assesment_questions_answer_of_student`
--

CREATE TABLE `course_assesment_questions_answer_of_student` (
  `ast_id` int(10) UNSIGNED NOT NULL,
  `ast_point` decimal(12,7) DEFAULT NULL,
  `ass_id` int(10) UNSIGNED NOT NULL,
  `ans_id` int(10) UNSIGNED NOT NULL,
  `usr_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course_assesment_result`
--

CREATE TABLE `course_assesment_result` (
  `id` int(10) NOT NULL,
  `ass_id` int(10) UNSIGNED NOT NULL,
  `ass_result` float DEFAULT NULL,
  `usr_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course_assignment`
--

CREATE TABLE `course_assignment` (
  `asg_id` int(10) UNSIGNED NOT NULL,
  `asg_name` varchar(50) NOT NULL,
  `asg_text` varchar(500) NOT NULL,
  `asg_attachment` varchar(500) DEFAULT NULL,
  `asg_duedate` datetime DEFAULT NULL,
  `asg_timecreated` timestamp NULL DEFAULT NULL,
  `asg_timemodified` timestamp NULL DEFAULT NULL,
  `crs_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course_assignment_loc`
--

CREATE TABLE `course_assignment_loc` (
  `id` int(10) NOT NULL,
  `asg_id` int(10) UNSIGNED NOT NULL,
  `loc_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course_assignment_submission`
--

CREATE TABLE `course_assignment_submission` (
  `sub_id` int(10) UNSIGNED NOT NULL,
  `sub_attachment` varchar(500) DEFAULT NULL,
  `sub_comment` varchar(500) NOT NULL,
  `sub_due_status` varchar(30) DEFAULT NULL,
  `sub_timecreated` timestamp NULL DEFAULT NULL,
  `sub_timemodified` timestamp NULL DEFAULT NULL,
  `usr_id` int(10) UNSIGNED NOT NULL,
  `asg_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course_category`
--

CREATE TABLE `course_category` (
  `cat_id` int(10) UNSIGNED NOT NULL,
  `cat_name` varchar(50) NOT NULL,
  `cat_timecreated` timestamp NULL DEFAULT NULL,
  `cat_timemodified` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_category`
--

INSERT INTO `course_category` (`cat_id`, `cat_name`, `cat_timecreated`, `cat_timemodified`) VALUES
(1, 'Teknik Informatika', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course_content`
--

CREATE TABLE `course_content` (
  `cnt_id` int(10) UNSIGNED NOT NULL,
  `cnt_name` varchar(50) NOT NULL,
  `cnt_desc` varchar(500) DEFAULT NULL,
  `cnt_comment` varchar(250) DEFAULT NULL,
  `cnt_type` varchar(10) DEFAULT NULL,
  `cnt_source` varchar(500) DEFAULT NULL,
  `cnt_timecreated` timestamp NULL DEFAULT NULL,
  `cnt_timemodified` timestamp NULL DEFAULT NULL,
  `lsn_id` int(10) UNSIGNED NOT NULL,
  `loc_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course_enrol`
--

CREATE TABLE `course_enrol` (
  `enr_id` int(10) UNSIGNED NOT NULL,
  `enr_status` varchar(500) DEFAULT NULL,
  `enr_timecreated` timestamp NULL DEFAULT NULL,
  `enr_timemodified` timestamp NULL DEFAULT NULL,
  `usr_id` int(10) UNSIGNED NOT NULL,
  `crs_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course_forum`
--

CREATE TABLE `course_forum` (
  `cfr_id` int(10) UNSIGNED NOT NULL,
  `cfr_desc` varchar(150) NOT NULL,
  `usr_id` int(10) UNSIGNED NOT NULL,
  `lsn_id` int(10) UNSIGNED NOT NULL,
  `cfr_timecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cfr_timemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course_forum_thread`
--

CREATE TABLE `course_forum_thread` (
  `cft_id` int(10) UNSIGNED NOT NULL,
  `cft_title` varchar(50) NOT NULL,
  `cft_content` longtext,
  `cft_rated` int(50) DEFAULT NULL,
  `cft_timecreated` timestamp NULL DEFAULT NULL,
  `cft_timemodified` timestamp NULL DEFAULT NULL,
  `cfr_id` int(10) UNSIGNED NOT NULL,
  `usr_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course_forum_thread_reply`
--

CREATE TABLE `course_forum_thread_reply` (
  `ftr_id` int(10) UNSIGNED NOT NULL,
  `ftr_content` longtext,
  `ftr_timecreated` timestamp NULL DEFAULT NULL,
  `ftr_timemodified` timestamp NULL DEFAULT NULL,
  `cft_id` int(10) UNSIGNED NOT NULL,
  `usr_id` int(10) UNSIGNED NOT NULL,
  `ftr_ratingsum` int(10) DEFAULT '0',
  `ftr_ratingcount` int(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course_forum_thread_reply_reply`
--

CREATE TABLE `course_forum_thread_reply_reply` (
  `trr_id` int(10) UNSIGNED NOT NULL,
  `trr_content` longtext,
  `trr_timecreated` timestamp NULL DEFAULT NULL,
  `trr_timemodified` timestamp NULL DEFAULT NULL,
  `ftr_id` int(10) UNSIGNED NOT NULL,
  `usr_id` int(10) UNSIGNED NOT NULL,
  `trr_ratingsum` int(10) DEFAULT '0',
  `trr_ratingcount` int(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course_forum_thread_reply_reply_reply`
--

CREATE TABLE `course_forum_thread_reply_reply_reply` (
  `rrr_id` int(10) NOT NULL,
  `rrr_content` longtext,
  `rrr_timecreated` timestamp NULL DEFAULT NULL,
  `rrr_timemodified` timestamp NULL DEFAULT NULL,
  `trr_id` int(10) UNSIGNED NOT NULL,
  `usr_id` int(10) UNSIGNED NOT NULL,
  `rrr_ratingsum` int(10) DEFAULT '0',
  `rrr_ratingcount` int(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course_forum_user`
--

CREATE TABLE `course_forum_user` (
  `cfu_id` int(10) UNSIGNED NOT NULL,
  `cfr_id` int(10) UNSIGNED NOT NULL,
  `usr_id` int(10) UNSIGNED NOT NULL,
  `cfu_ratingsum` int(10) DEFAULT '0',
  `cfu_ratingcount` int(10) DEFAULT '0',
  `cfu_summsg` int(10) DEFAULT '0',
  `cfu_msgin` int(10) DEFAULT '0',
  `cfu_msgout` int(10) DEFAULT '0',
  `cfu_sumword` int(10) DEFAULT '0',
  `cfu_avgscrmsg` int(10) DEFAULT '0',
  `cfu_centrality` int(10) DEFAULT '0',
  `cfu_prestige` int(10) DEFAULT '0',
  `cfu_timecreated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `cfu_timemodified` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course_learning_outcomes`
--

CREATE TABLE `course_learning_outcomes` (
  `loc_id` int(10) UNSIGNED NOT NULL,
  `loc_desc` text NOT NULL,
  `loc_timecreated` timestamp NULL DEFAULT NULL,
  `loc_timemodified` timestamp NULL DEFAULT NULL,
  `crs_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_learning_outcomes`
--

INSERT INTO `course_learning_outcomes` (`loc_id`, `loc_desc`, `loc_timecreated`, `loc_timemodified`, `crs_id`) VALUES
(12, 'Mahasiswa dapat membangun algoritma untuk primitif struktur data Linked List dan mengimplementasikannya dalam Bahasa programan', '2018-04-03 10:26:39', '2018-04-03 10:26:39', 22),
(13, 'Mahasiswa dapat membangun algoritma untuk primitif struktur data linear Stack dan Queue dan mengimplementasikannya dalam Bahasa programan', '2018-04-03 10:26:39', '2018-04-03 10:26:39', 22),
(14, 'Mahasiswa dapat membangun algoritma untuk primitive struktur data non-linear Multi Linked List, Graph dan Tree dan mengimplementasikannya dalam Bahasa programan', '2018-04-03 10:26:39', '2018-04-03 10:26:39', 22);

-- --------------------------------------------------------

--
-- Table structure for table `course_lesson`
--

CREATE TABLE `course_lesson` (
  `lsn_id` int(10) UNSIGNED NOT NULL,
  `lsn_name` varchar(50) NOT NULL,
  `lsn_intro` varchar(150) DEFAULT NULL,
  `lsn_timecreated` timestamp NULL DEFAULT NULL,
  `lsn_timemodified` timestamp NULL DEFAULT NULL,
  `crs_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hasil_kuesioner`
--

CREATE TABLE `hasil_kuesioner` (
  `hk_id` int(10) NOT NULL,
  `usr_id` int(10) NOT NULL,
  `Active` int(10) NOT NULL,
  `Reflective` int(10) NOT NULL,
  `Sensing` int(10) NOT NULL,
  `Intuitive` int(10) NOT NULL,
  `Visual` int(10) NOT NULL,
  `Verbal` int(10) NOT NULL,
  `Sequential` int(10) NOT NULL,
  `Global` int(10) NOT NULL,
  `hk_timecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
-- Table structure for table `hasil_kuesioner2`
--

CREATE TABLE `hasil_kuesioner2` (
  `hk2_id` int(10) NOT NULL,
  `usr_id` int(10) NOT NULL,
  `hasil` varchar(35) NOT NULL,
  `minat` varchar(100) NOT NULL,
  `hk2_timecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `learning_goals`
--

CREATE TABLE `learning_goals` (
  `lg_id` int(10) UNSIGNED NOT NULL,
  `usr_id` int(10) UNSIGNED NOT NULL,
  `loc_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `learning_style`
--

CREATE TABLE `learning_style` (
  `ls_id` int(10) UNSIGNED NOT NULL,
  `ls_content_visit` int(11) NOT NULL DEFAULT '0',
  `ls_content_visit_video` int(11) NOT NULL DEFAULT '0',
  `ls_content_visit_text` int(11) NOT NULL DEFAULT '0',
  `ls_content_stay` int(11) NOT NULL DEFAULT '0',
  `ls_content_stay_video` int(11) NOT NULL DEFAULT '0',
  `ls_content_stay_text` int(11) NOT NULL DEFAULT '0',
  `ls_outline_visit` int(11) NOT NULL DEFAULT '0',
  `ls_outline_stay` int(11) NOT NULL DEFAULT '0',
  `ls_example_visit` int(11) NOT NULL DEFAULT '0',
  `ls_example_stay` int(11) NOT NULL DEFAULT '0',
  `ls_selfass_visit` int(11) NOT NULL DEFAULT '0',
  `ls_selfass_stay` int(11) NOT NULL DEFAULT '0',
  `ls_exercise_visit` int(11) NOT NULL DEFAULT '0',
  `ls_exercise_stay` int(11) NOT NULL DEFAULT '0',
  `ls_ques_detail` int(11) NOT NULL DEFAULT '0',
  `ls_ques_overview` int(11) DEFAULT '0',
  `ls_ques_facts` int(11) NOT NULL DEFAULT '0',
  `ls_ques_concepts` int(11) NOT NULL DEFAULT '0',
  `ls_ques_graphics` int(11) NOT NULL DEFAULT '0',
  `ls_ques_text` int(11) NOT NULL DEFAULT '0',
  `ls_ques_interpret` int(11) NOT NULL DEFAULT '0',
  `ls_ques_develop` int(11) NOT NULL DEFAULT '0',
  `ls_forum_visit` int(11) NOT NULL DEFAULT '0',
  `ls_forum_stay` int(11) NOT NULL DEFAULT '0',
  `ls_forum_post` int(11) NOT NULL DEFAULT '0',
  `ls_nav_overview_visit` int(11) NOT NULL DEFAULT '0',
  `ls_nav_skip` int(11) NOT NULL DEFAULT '0',
  `ls_quiz_stay_result` int(11) NOT NULL DEFAULT '0',
  `ls_selfass_twice_wrong` int(11) NOT NULL DEFAULT '0',
  `ls_quiz_revisions` int(11) NOT NULL DEFAULT '0',
  `usr_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `lesson_access_log`
--

CREATE TABLE `lesson_access_log` (
  `lal_id` int(10) NOT NULL,
  `usr_id` int(10) NOT NULL,
  `lsn_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `ntf_id` int(10) NOT NULL,
  `ntf_type` varchar(10) DEFAULT NULL,
  `ntf_instructor` varchar(50) NOT NULL,
  `ntf_message` tinytext,
  `ntf_read` varchar(1) NOT NULL DEFAULT 'N',
  `ntf_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `usr_id` int(10) UNSIGNED NOT NULL,
  `ass_id` int(10) UNSIGNED DEFAULT NULL,
  `lsn_id` int(10) UNSIGNED DEFAULT NULL,
  `asg_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rating_reply`
--

CREATE TABLE `rating_reply` (
  `rry_id` int(10) NOT NULL,
  `ftr_id` int(10) UNSIGNED NOT NULL,
  `usr_id` int(10) UNSIGNED DEFAULT NULL,
  `rry_rated` int(5) DEFAULT NULL,
  `rry_timecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `rry_timemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rating_reply_reply`
--

CREATE TABLE `rating_reply_reply` (
  `rrp_id` int(10) NOT NULL,
  `trr_id` int(10) UNSIGNED NOT NULL,
  `usr_id` int(10) UNSIGNED DEFAULT NULL,
  `rrp_rated` int(5) DEFAULT NULL,
  `rrp_timecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `rrp_timemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rating_reply_reply_reply`
--

CREATE TABLE `rating_reply_reply_reply` (
  `rrl_id` int(10) NOT NULL,
  `rrr_id` int(10) NOT NULL,
  `usr_id` int(10) UNSIGNED DEFAULT NULL,
  `rrl_rated` int(5) DEFAULT NULL,
  `rrl_timecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `rrl_timemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rating_thread`
--

CREATE TABLE `rating_thread` (
  `rtd_id` int(10) NOT NULL,
  `cft_id` int(10) UNSIGNED NOT NULL,
  `usr_id` int(10) UNSIGNED NOT NULL,
  `rtd_rated` int(5) DEFAULT NULL,
  `rtd_timecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `rol_id` int(10) UNSIGNED NOT NULL,
  `rol_name` varchar(50) NOT NULL,
  `rol_timecreated` timestamp NULL DEFAULT NULL,
  `rol_timemodified` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `university`
--

CREATE TABLE `university` (
  `unv_id` int(10) UNSIGNED NOT NULL,
  `unv_name` varchar(50) NOT NULL,
  `unv_latlong` varchar(50) DEFAULT NULL,
  `unv_address` varchar(200) DEFAULT NULL,
  `unv_contact` varchar(50) DEFAULT NULL,
  `unv_email` varchar(50) DEFAULT NULL,
  `unv_website` varchar(50) DEFAULT NULL,
  `unv_stats` varchar(50) DEFAULT NULL,
  `unv_timecreated` timestamp NULL DEFAULT NULL,
  `unv_timemodified` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `university`
--

INSERT INTO `university` (`unv_id`, `unv_name`, `unv_latlong`, `unv_address`, `unv_contact`, `unv_email`, `unv_website`, `unv_stats`, `unv_timecreated`, `unv_timemodified`) VALUES
(1, 'Polisi Bandung', NULL, 'Kantor Polisi', 'Polban', 'Polbin@polban.com', 'Pol', 'Ban', '2018-02-12 00:02:01', '2018-02-12 00:02:01'),
(2, '14124', NULL, 'asdfsadf', '124124', 'asdfasdf@asdf', '124124', 'asdfsadf', '2018-02-12 00:14:45', '2018-02-12 00:14:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `usr_id` int(10) UNSIGNED NOT NULL,
  `usr_kode` varchar(3) DEFAULT NULL,
  `usr_nim` varchar(10) DEFAULT NULL,
  `usr_username` varchar(50) NOT NULL,
  `usr_firstname` varchar(50) NOT NULL,
  `usr_lastname` varchar(50) NOT NULL,
  `usr_password` varchar(50) NOT NULL,
  `usr_email` varchar(50) DEFAULT NULL,
  `usr_picture` varchar(150) DEFAULT NULL,
  `usr_gpa` decimal(3,2) DEFAULT NULL,
  `usr_timecreated` timestamp NULL DEFAULT NULL,
  `usr_timemodified` timestamp NULL DEFAULT NULL,
  `usr_level` varchar(50) NOT NULL,
  `usr_jk` varchar(10) DEFAULT NULL,
  `usr_tgllahir` date DEFAULT NULL,
  `usr_post_count` int(30) DEFAULT '0',
  `usr_thread_count` int(30) DEFAULT '0',
  `usr_reply_count` int(30) DEFAULT '0',
  `usr_tmpasal` varchar(35) NOT NULL,
  `usr_kelas` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`usr_id`, `usr_kode`, `usr_nim`, `usr_username`, `usr_firstname`, `usr_lastname`, `usr_password`, `usr_email`, `usr_picture`, `usr_gpa`, `usr_timecreated`, `usr_timemodified`, `usr_level`, `usr_jk`, `usr_tgllahir`, `usr_post_count`, `usr_thread_count`, `usr_reply_count`, `usr_tmpasal`, `usr_kelas`) VALUES
(41, NULL, NULL, 'admin', 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@admin.co.id', 'avatar_default.jpg', NULL, NULL, NULL, '1', NULL, NULL, 0, 0, 0, 'Jawa Barat', NULL),
(42, NULL, NULL, 'iqbal', 'Iqbal', 'Maulana', 'eedae20fc3c7a6e9c5b1102098771c70', 'iqbalmlna@student.telkomuniversity.ac.id', 'iqbal1520309207.jpeg', '3.50', NULL, '2018-04-03 08:13:11', '2', '1', '1996-08-07', 4, 12, 0, 'Jawa Barat', NULL),
(43, 'RZQ', NULL, 'razzaq', 'Fikri', 'Razzaq', '2f3383ed694d0e9446f98e90abf539cc', 'fikri@razzaq.gmail.com', 'razzaq1520959378.jpg', NULL, NULL, '2018-03-13 16:42:58', '3', '1', '1995-06-19', 0, 0, 0, 'Jawa Barat', NULL),
(44, NULL, NULL, 'adzan', 'Adzan', 'Anugrah', '88c7dc5f4ea5d6f5283946f53e166dfe', 'adzan@anu.co.id', 'adzan1520314965.jpg', NULL, NULL, '2018-03-27 02:12:22', '2', '2', '1996-07-25', 33, 5, 0, 'Jawa Barat', NULL),
(48, NULL, NULL, 'yantirusmawati', 'Yanti', 'Rusmawati', '6dc3735bcc27e1d246559a4a232fb1a7', 'yantirusmawati@telkomuniversity.ac.id', 'avatar_default.jpg', NULL, NULL, NULL, '3', '2', '1990-01-30', 0, 0, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_logs`
--

CREATE TABLE `user_logs` (
  `log_id` int(10) NOT NULL,
  `log_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `usr_id` int(10) UNSIGNED NOT NULL,
  `log_event_context` varchar(100) NOT NULL,
  `log_referrer` varchar(100) DEFAULT NULL,
  `log_name` varchar(100) NOT NULL,
  `log_origin` varchar(100) NOT NULL,
  `log_ip` varchar(20) NOT NULL,
  `log_desc` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_count`
--
ALTER TABLE `activity_count`
  ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `at_risk`
--
ALTER TABLE `at_risk`
  ADD PRIMARY KEY (`ar_id`),
  ADD KEY `usr_id` (`usr_id`),
  ADD KEY `crs_id` (`crs_id`),
  ADD KEY `ass_id` (`ass_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`crs_id`),
  ADD UNIQUE KEY `crs_code` (`crs_code`),
  ADD KEY `course_category_course_foreign` (`cat_id`),
  ADD KEY `course_user_foreign` (`usr_id`);

--
-- Indexes for table `course_assesment`
--
ALTER TABLE `course_assesment`
  ADD PRIMARY KEY (`ass_id`),
  ADD KEY `course_assesment_foreign` (`crs_id`);

--
-- Indexes for table `course_assesment_question`
--
ALTER TABLE `course_assesment_question`
  ADD PRIMARY KEY (`qst_id`),
  ADD KEY `assesment_questions_foreign` (`ass_id`);

--
-- Indexes for table `course_assesment_questions_answer`
--
ALTER TABLE `course_assesment_questions_answer`
  ADD PRIMARY KEY (`ans_id`),
  ADD KEY `questions_answers_foreign` (`qst_id`);

--
-- Indexes for table `course_assesment_questions_answer_of_student`
--
ALTER TABLE `course_assesment_questions_answer_of_student`
  ADD PRIMARY KEY (`ast_id`),
  ADD KEY `assesment_answerstudent_foreign` (`ass_id`),
  ADD KEY `question_answerstudent_foreign` (`ans_id`),
  ADD KEY `users_answerstudent_foreign` (`usr_id`);

--
-- Indexes for table `course_assesment_result`
--
ALTER TABLE `course_assesment_result`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assesment_foreign` (`ass_id`),
  ADD KEY `user_foreign` (`usr_id`);

--
-- Indexes for table `course_assignment`
--
ALTER TABLE `course_assignment`
  ADD PRIMARY KEY (`asg_id`),
  ADD KEY `course_assignment_foreign` (`crs_id`);

--
-- Indexes for table `course_assignment_loc`
--
ALTER TABLE `course_assignment_loc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `asg_foreign` (`asg_id`),
  ADD KEY `loc_foreign` (`loc_id`);

--
-- Indexes for table `course_assignment_submission`
--
ALTER TABLE `course_assignment_submission`
  ADD PRIMARY KEY (`sub_id`),
  ADD KEY `assignment_submission_foreign` (`asg_id`),
  ADD KEY `user_submission_foreign` (`usr_id`);

--
-- Indexes for table `course_category`
--
ALTER TABLE `course_category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `course_content`
--
ALTER TABLE `course_content`
  ADD PRIMARY KEY (`cnt_id`),
  ADD KEY `content_lesson_foreign` (`lsn_id`),
  ADD KEY `content_learningoutcomes_foreign` (`loc_id`);

--
-- Indexes for table `course_enrol`
--
ALTER TABLE `course_enrol`
  ADD PRIMARY KEY (`enr_id`),
  ADD KEY `course_enrol_foreign` (`crs_id`),
  ADD KEY `user_enrol_foreign` (`usr_id`);

--
-- Indexes for table `course_forum`
--
ALTER TABLE `course_forum`
  ADD PRIMARY KEY (`cfr_id`),
  ADD KEY `user_forum_foreign` (`usr_id`),
  ADD KEY `course_forum_foreign` (`lsn_id`);

--
-- Indexes for table `course_forum_thread`
--
ALTER TABLE `course_forum_thread`
  ADD PRIMARY KEY (`cft_id`),
  ADD KEY `course_thread_foreign` (`cfr_id`);

--
-- Indexes for table `course_forum_thread_reply`
--
ALTER TABLE `course_forum_thread_reply`
  ADD PRIMARY KEY (`ftr_id`),
  ADD KEY `cft_ftr_foreign` (`cft_id`),
  ADD KEY `users_ftr_foreign` (`usr_id`);

--
-- Indexes for table `course_forum_thread_reply_reply`
--
ALTER TABLE `course_forum_thread_reply_reply`
  ADD PRIMARY KEY (`trr_id`),
  ADD KEY `threads_posts_foreign` (`ftr_id`),
  ADD KEY `users_posts_foreign` (`usr_id`);

--
-- Indexes for table `course_forum_thread_reply_reply_reply`
--
ALTER TABLE `course_forum_thread_reply_reply_reply`
  ADD PRIMARY KEY (`rrr_id`),
  ADD KEY `reply_reply_foreign` (`trr_id`),
  ADD KEY `user_reply_foreign` (`usr_id`);

--
-- Indexes for table `course_forum_user`
--
ALTER TABLE `course_forum_user`
  ADD PRIMARY KEY (`cfu_id`),
  ADD KEY `cfu_user` (`usr_id`),
  ADD KEY `cfu_forum` (`cfr_id`);

--
-- Indexes for table `course_learning_outcomes`
--
ALTER TABLE `course_learning_outcomes`
  ADD PRIMARY KEY (`loc_id`),
  ADD KEY `course_loc_foreign` (`crs_id`);

--
-- Indexes for table `course_lesson`
--
ALTER TABLE `course_lesson`
  ADD PRIMARY KEY (`lsn_id`),
  ADD KEY `course_lesson_foreign` (`crs_id`);

--
-- Indexes for table `hasil_kuesioner`
--
ALTER TABLE `hasil_kuesioner`
  ADD PRIMARY KEY (`hk_id`),
  ADD UNIQUE KEY `usr_id` (`usr_id`);

--
-- Indexes for table `hasil_kuesioner2`
--
ALTER TABLE `hasil_kuesioner2`
  ADD PRIMARY KEY (`hk2_id`),
  ADD UNIQUE KEY `usr_id` (`usr_id`);

--
-- Indexes for table `learning_goals`
--
ALTER TABLE `learning_goals`
  ADD PRIMARY KEY (`lg_id`),
  ADD UNIQUE KEY `usr_id` (`usr_id`);

--
-- Indexes for table `learning_style`
--
ALTER TABLE `learning_style`
  ADD PRIMARY KEY (`ls_id`),
  ADD UNIQUE KEY `usr_id` (`usr_id`);

--
-- Indexes for table `lesson_access_log`
--
ALTER TABLE `lesson_access_log`
  ADD PRIMARY KEY (`lal_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`ntf_id`),
  ADD KEY `usr_foreign_key` (`usr_id`),
  ADD KEY `lsn_foreign_key` (`lsn_id`),
  ADD KEY `ass_foreign_key` (`ass_id`),
  ADD KEY `asg_foreign_key` (`asg_id`);

--
-- Indexes for table `rating_reply`
--
ALTER TABLE `rating_reply`
  ADD PRIMARY KEY (`rry_id`),
  ADD KEY `ftr_foreign` (`ftr_id`),
  ADD KEY `usr_foreign` (`usr_id`);

--
-- Indexes for table `rating_reply_reply`
--
ALTER TABLE `rating_reply_reply`
  ADD PRIMARY KEY (`rrp_id`),
  ADD KEY `reply_rating` (`trr_id`),
  ADD KEY `user_rating` (`usr_id`);

--
-- Indexes for table `rating_reply_reply_reply`
--
ALTER TABLE `rating_reply_reply_reply`
  ADD PRIMARY KEY (`rrl_id`),
  ADD KEY `userr_rating` (`usr_id`),
  ADD KEY `injek_rating` (`rrr_id`);

--
-- Indexes for table `rating_thread`
--
ALTER TABLE `rating_thread`
  ADD PRIMARY KEY (`rtd_id`),
  ADD KEY `rating_user` (`usr_id`),
  ADD KEY `rating_thread` (`cft_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`rol_id`);

--
-- Indexes for table `university`
--
ALTER TABLE `university`
  ADD PRIMARY KEY (`unv_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`usr_id`),
  ADD UNIQUE KEY `usr_kode` (`usr_kode`),
  ADD UNIQUE KEY `usr_nim` (`usr_nim`);

--
-- Indexes for table `user_logs`
--
ALTER TABLE `user_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `user_log_foreign` (`usr_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_count`
--
ALTER TABLE `activity_count`
  MODIFY `activity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `at_risk`
--
ALTER TABLE `at_risk`
  MODIFY `ar_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `crs_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `course_assesment`
--
ALTER TABLE `course_assesment`
  MODIFY `ass_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `course_assesment_question`
--
ALTER TABLE `course_assesment_question`
  MODIFY `qst_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `course_assesment_questions_answer`
--
ALTER TABLE `course_assesment_questions_answer`
  MODIFY `ans_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `course_assesment_questions_answer_of_student`
--
ALTER TABLE `course_assesment_questions_answer_of_student`
  MODIFY `ast_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `course_assesment_result`
--
ALTER TABLE `course_assesment_result`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `course_assignment`
--
ALTER TABLE `course_assignment`
  MODIFY `asg_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `course_assignment_loc`
--
ALTER TABLE `course_assignment_loc`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_assignment_submission`
--
ALTER TABLE `course_assignment_submission`
  MODIFY `sub_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `course_category`
--
ALTER TABLE `course_category`
  MODIFY `cat_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course_content`
--
ALTER TABLE `course_content`
  MODIFY `cnt_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `course_enrol`
--
ALTER TABLE `course_enrol`
  MODIFY `enr_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `course_forum`
--
ALTER TABLE `course_forum`
  MODIFY `cfr_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `course_forum_thread`
--
ALTER TABLE `course_forum_thread`
  MODIFY `cft_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT for table `course_forum_thread_reply`
--
ALTER TABLE `course_forum_thread_reply`
  MODIFY `ftr_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `course_forum_thread_reply_reply`
--
ALTER TABLE `course_forum_thread_reply_reply`
  MODIFY `trr_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `course_forum_thread_reply_reply_reply`
--
ALTER TABLE `course_forum_thread_reply_reply_reply`
  MODIFY `rrr_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_forum_user`
--
ALTER TABLE `course_forum_user`
  MODIFY `cfu_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `course_learning_outcomes`
--
ALTER TABLE `course_learning_outcomes`
  MODIFY `loc_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `course_lesson`
--
ALTER TABLE `course_lesson`
  MODIFY `lsn_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `hasil_kuesioner`
--
ALTER TABLE `hasil_kuesioner`
  MODIFY `hk_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `hasil_kuesioner2`
--
ALTER TABLE `hasil_kuesioner2`
  MODIFY `hk2_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `learning_goals`
--
ALTER TABLE `learning_goals`
  MODIFY `lg_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `learning_style`
--
ALTER TABLE `learning_style`
  MODIFY `ls_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lesson_access_log`
--
ALTER TABLE `lesson_access_log`
  MODIFY `lal_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `ntf_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `rating_reply`
--
ALTER TABLE `rating_reply`
  MODIFY `rry_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `rating_reply_reply`
--
ALTER TABLE `rating_reply_reply`
  MODIFY `rrp_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rating_reply_reply_reply`
--
ALTER TABLE `rating_reply_reply_reply`
  MODIFY `rrl_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rating_thread`
--
ALTER TABLE `rating_thread`
  MODIFY `rtd_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `rol_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `university`
--
ALTER TABLE `university`
  MODIFY `unv_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `usr_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `user_logs`
--
ALTER TABLE `user_logs`
  MODIFY `log_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1048;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `at_risk`
--
ALTER TABLE `at_risk`
  ADD CONSTRAINT `at_risk_ibfk_1` FOREIGN KEY (`usr_id`) REFERENCES `users` (`usr_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `at_risk_ibfk_3` FOREIGN KEY (`crs_id`) REFERENCES `course` (`crs_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `at_risk_ibfk_4` FOREIGN KEY (`ass_id`) REFERENCES `course_assesment` (`ass_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_category_course_foreign` FOREIGN KEY (`cat_id`) REFERENCES `course_category` (`cat_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `course_user_foreign` FOREIGN KEY (`usr_id`) REFERENCES `users` (`usr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course_assesment`
--
ALTER TABLE `course_assesment`
  ADD CONSTRAINT `course_assesment_foreign` FOREIGN KEY (`crs_id`) REFERENCES `course` (`crs_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course_assesment_question`
--
ALTER TABLE `course_assesment_question`
  ADD CONSTRAINT `assesment_questions_foreign` FOREIGN KEY (`ass_id`) REFERENCES `course_assesment` (`ass_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course_assesment_questions_answer`
--
ALTER TABLE `course_assesment_questions_answer`
  ADD CONSTRAINT `questions_answers_foreign` FOREIGN KEY (`qst_id`) REFERENCES `course_assesment_question` (`qst_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course_assesment_questions_answer_of_student`
--
ALTER TABLE `course_assesment_questions_answer_of_student`
  ADD CONSTRAINT `answer_answerstudent_foreign` FOREIGN KEY (`ans_id`) REFERENCES `course_assesment_questions_answer` (`ans_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `assesment_answerstudent_foreign` FOREIGN KEY (`ass_id`) REFERENCES `course_assesment` (`ass_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_answerstudent_foreign` FOREIGN KEY (`usr_id`) REFERENCES `users` (`usr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course_assesment_result`
--
ALTER TABLE `course_assesment_result`
  ADD CONSTRAINT `assesment_foreign` FOREIGN KEY (`ass_id`) REFERENCES `course_assesment` (`ass_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_foreign` FOREIGN KEY (`usr_id`) REFERENCES `users` (`usr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course_assignment`
--
ALTER TABLE `course_assignment`
  ADD CONSTRAINT `course_assignment_foreign` FOREIGN KEY (`crs_id`) REFERENCES `course` (`crs_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course_assignment_loc`
--
ALTER TABLE `course_assignment_loc`
  ADD CONSTRAINT `asg_foreign` FOREIGN KEY (`asg_id`) REFERENCES `course_assignment` (`asg_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `loc_foreign` FOREIGN KEY (`loc_id`) REFERENCES `course_learning_outcomes` (`loc_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course_assignment_submission`
--
ALTER TABLE `course_assignment_submission`
  ADD CONSTRAINT `assignment_submission_foreign` FOREIGN KEY (`asg_id`) REFERENCES `course_assignment` (`asg_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_submission_foreign` FOREIGN KEY (`usr_id`) REFERENCES `users` (`usr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course_content`
--
ALTER TABLE `course_content`
  ADD CONSTRAINT `content_learningoutcomes_foreign` FOREIGN KEY (`loc_id`) REFERENCES `course_learning_outcomes` (`loc_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `content_lesson_foreign` FOREIGN KEY (`lsn_id`) REFERENCES `course_lesson` (`lsn_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course_enrol`
--
ALTER TABLE `course_enrol`
  ADD CONSTRAINT `course_enrol_foreign` FOREIGN KEY (`crs_id`) REFERENCES `course` (`crs_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_enrol_foreign` FOREIGN KEY (`usr_id`) REFERENCES `users` (`usr_id`);
--
-- Constraints for table `course_forum`
--
ALTER TABLE `course_forum`
  ADD CONSTRAINT `course_forum_foreign` FOREIGN KEY (`lsn_id`) REFERENCES `course_lesson` (`lsn_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_forum_foreign` FOREIGN KEY (`usr_id`) REFERENCES `users` (`usr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course_forum_thread`
--
ALTER TABLE `course_forum_thread`
  ADD CONSTRAINT `forum_thread_foreign` FOREIGN KEY (`cfr_id`) REFERENCES `course_forum` (`cfr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course_forum_thread_reply`
--
ALTER TABLE `course_forum_thread_reply`
  ADD CONSTRAINT `cft_ftr_foreign` FOREIGN KEY (`cft_id`) REFERENCES `course_forum_thread` (`cft_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_ftr_foreign` FOREIGN KEY (`usr_id`) REFERENCES `users` (`usr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course_forum_thread_reply_reply`
--
ALTER TABLE `course_forum_thread_reply_reply`
  ADD CONSTRAINT `threads_posts_foreign` FOREIGN KEY (`ftr_id`) REFERENCES `course_forum_thread_reply` (`ftr_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_posts_foreign` FOREIGN KEY (`usr_id`) REFERENCES `users` (`usr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course_forum_thread_reply_reply_reply`
--
ALTER TABLE `course_forum_thread_reply_reply_reply`
  ADD CONSTRAINT `reply_reply_foreign` FOREIGN KEY (`trr_id`) REFERENCES `course_forum_thread_reply_reply` (`trr_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_reply_foreign` FOREIGN KEY (`usr_id`) REFERENCES `users` (`usr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course_forum_user`
--
ALTER TABLE `course_forum_user`
  ADD CONSTRAINT `cfu_forum` FOREIGN KEY (`cfr_id`) REFERENCES `course_forum` (`cfr_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cfu_user` FOREIGN KEY (`usr_id`) REFERENCES `users` (`usr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course_learning_outcomes`
--
ALTER TABLE `course_learning_outcomes`
  ADD CONSTRAINT `course_loc_foreign` FOREIGN KEY (`crs_id`) REFERENCES `course` (`crs_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course_lesson`
--
ALTER TABLE `course_lesson`
  ADD CONSTRAINT `course_lesson_foreign` FOREIGN KEY (`crs_id`) REFERENCES `course` (`crs_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `learning_goals`
--
ALTER TABLE `learning_goals`
  ADD CONSTRAINT `loc_lg` FOREIGN KEY (`loc_id`) REFERENCES `course_learning_outcomes` (`loc_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usr_lg` FOREIGN KEY (`usr_id`) REFERENCES `users` (`usr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `learning_style`
--
ALTER TABLE `learning_style`
  ADD CONSTRAINT `usr_ls` FOREIGN KEY (`usr_id`) REFERENCES `users` (`usr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `asg_foreign_key` FOREIGN KEY (`asg_id`) REFERENCES `course_assignment` (`asg_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ass_foreign_key` FOREIGN KEY (`ass_id`) REFERENCES `course_assesment` (`ass_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lsn_foreign_key` FOREIGN KEY (`lsn_id`) REFERENCES `course_lesson` (`lsn_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usr_foreign_key` FOREIGN KEY (`usr_id`) REFERENCES `users` (`usr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rating_reply`
--
ALTER TABLE `rating_reply`
  ADD CONSTRAINT `ftr_foreign` FOREIGN KEY (`ftr_id`) REFERENCES `course_forum_thread_reply` (`ftr_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usr_foreign` FOREIGN KEY (`usr_id`) REFERENCES `users` (`usr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rating_reply_reply`
--
ALTER TABLE `rating_reply_reply`
  ADD CONSTRAINT `reply_rating` FOREIGN KEY (`trr_id`) REFERENCES `course_forum_thread_reply_reply` (`trr_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_rating` FOREIGN KEY (`usr_id`) REFERENCES `users` (`usr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rating_reply_reply_reply`
--
ALTER TABLE `rating_reply_reply_reply`
  ADD CONSTRAINT `injek_rating` FOREIGN KEY (`rrr_id`) REFERENCES `course_forum_thread_reply_reply_reply` (`rrr_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `userr_rating` FOREIGN KEY (`usr_id`) REFERENCES `users` (`usr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rating_thread`
--
ALTER TABLE `rating_thread`
  ADD CONSTRAINT `rating_thread` FOREIGN KEY (`cft_id`) REFERENCES `course_forum_thread` (`cft_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rating_user` FOREIGN KEY (`usr_id`) REFERENCES `users` (`usr_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
