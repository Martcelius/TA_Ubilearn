-- phpMyAdmin SQL Dump
-- version 4.7.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 06, 2018 at 01:15 PM
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
(14, 'SBP', 'Sistem Berbasis Pengetahuan', 'Berisi tentang mekanisme/metode penyelesaian problem yang tidak\r\ndapat diselesaikan dengan pemrograman konvensional secara efisien', 'Universitas Telkom', '2018-03-05 04:17:15', '2018-03-05 04:17:15', 1, 43);

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
(1, 'Kuis', 'Kuis 1', 'Kuis 1 mencakup materi mesin inferensi', '2018-03-07 10:00:00', '2018-03-07 12:00:00', NULL, NULL, '2018-03-05 04:32:07', '2018-03-05 04:32:07', 14),
(2, 'Pre-test', 'Pre-test Kuis 2', '-', '2018-03-05 23:00:00', '2018-03-06 23:00:00', NULL, NULL, '2018-03-05 21:49:39', '2018-03-05 21:49:39', 14);

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
(3, '<p>Pertanyaan dengan poin tinggi?</p>\r\n', NULL, '2018-03-05 04:32:07', '2018-03-05 04:32:07', 1, 0),
(4, '<p>Pertanyaan dummy 1</p>\r\n', NULL, '2018-03-05 21:49:39', '2018-03-05 21:49:39', 2, 3),
(5, '<p>Pertanyaan dummy 2</p>\r\n', NULL, '2018-03-05 21:49:39', '2018-03-05 21:49:39', 2, 4),
(6, '<p>Pertanyaan dummy 4</p>\r\n', NULL, '2018-03-05 21:49:39', '2018-03-05 21:49:39', 2, 4),
(7, '<p>Pertanyaan dummy 4</p>\r\n', NULL, '2018-03-05 21:49:39', '2018-03-05 21:49:39', 2, 4);

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
(16, 'true', '25.0000000', 4),
(17, 'false', '0.0000000', 4),
(18, 'false', '0.0000000', 4),
(19, 'false', '0.0000000', 4),
(20, 'false', '0.0000000', 4),
(21, 'false', '0.0000000', 5),
(22, 'true', '25.0000000', 5),
(23, 'false', '0.0000000', 5),
(24, 'false', '0.0000000', 5),
(25, 'false', '0.0000000', 5),
(26, 'false', '25.0000000', 6),
(27, 'false', '0.0000000', 6),
(28, 'false', '0.0000000', 6),
(29, 'false', '0.0000000', 6),
(30, 'true', '0.0000000', 6),
(31, 'true', '25.0000000', 7),
(32, 'false', '0.0000000', 7),
(33, 'false', '0.0000000', 7),
(34, 'false', '0.0000000', 7),
(35, 'false', '0.0000000', 7);

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

--
-- Dumping data for table `course_assesment_questions_answer_of_student`
--

INSERT INTO `course_assesment_questions_answer_of_student` (`ast_id`, `ast_point`, `ass_id`, `ans_id`, `usr_id`) VALUES
(1, '25.0000000', 2, 16, 42),
(2, '25.0000000', 2, 22, 42),
(3, '25.0000000', 2, 26, 42),
(4, '25.0000000', 2, 31, 42);

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

--
-- Dumping data for table `course_assignment`
--

INSERT INTO `course_assignment` (`asg_id`, `asg_name`, `asg_text`, `asg_attachment`, `asg_duedate`, `asg_timecreated`, `asg_timemodified`, `crs_id`) VALUES
(1, 'Tugas 1 - Intro Mesin Inferensi', '<p><strong>Pada lingkungan pembelajaran <em>ubiquitous learning</em>, <em>learner </em>akan menerima materi pembelajaran sesuai dengan kondisi serta interaksi <em>learner </em>dengan sistem. Ada <em>learner </em>yang lulus mengikuti kelas pembelajaran, ada juga yang gagal. Dalam beberapa tahun terakhir ini, studi telah menunjukan minat dan perhatian yang terus meningkat dari berbagai negara mengenai tingginya ketidaklulusan <em>learner</em>. Berbagai cara dilakukan untuk membantu <em>learner</em', 'Tugas_1_-_Intro_Mesin_Inferensi1520338085.pdf', '2018-03-13 23:55:00', '2018-03-05 20:56:22', '2018-03-06 12:12:23', 14),
(2, 'Tugas 2 - Implementasi Mesin Inferensi', '<p>-</p>\r\n', 'Tugas_2_-_Implementasi_Mesin_Inferensi1520305092.pdf', '2018-04-06 23:55:00', '2018-03-05 20:58:12', '2018-03-05 20:58:12', 14);

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

--
-- Dumping data for table `course_assignment_submission`
--

INSERT INTO `course_assignment_submission` (`sub_id`, `sub_attachment`, `sub_comment`, `sub_due_status`, `sub_timecreated`, `sub_timemodified`, `usr_id`, `asg_id`) VALUES
(1, 'file_siswa1520312973.zip', '', NULL, '2018-03-06 05:09:33', '2018-03-06 05:09:33', 42, 2),
(2, '3 Mesin inferensi.pptx', '', NULL, '2018-03-06 05:40:42', '2018-03-06 05:40:42', 44, 2);

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

--
-- Dumping data for table `course_content`
--

INSERT INTO `course_content` (`cnt_id`, `cnt_name`, `cnt_desc`, `cnt_comment`, `cnt_type`, `cnt_source`, `cnt_timecreated`, `cnt_timemodified`, `lsn_id`, `loc_id`) VALUES
(1, 'Mesin Inferensi part 1', '<p>E.g., &forall;x King(x) &and; Greedy(x) &rArr; Evil(x) yields:</p>\r\n\r\n<p>King(John) &and; Greedy(John) &rArr; Evil(John)</p>\r\n\r\n<p><br />\r\nKing(Richard) &and; Greedy(Richard) &rArr; Evil(Richard)</p>\r\n\r\n<p><br />\r\nKing(Father(John)) &and; Greedy(Father(John)) &rArr; Evil(Father(John))</p>\r\n', '-', 'Video', 'https://www.youtube.com/watch?v=2pEkWk-LHmU', '2018-03-05 04:25:02', '2018-03-05 04:25:02', 10, 3),
(2, 'Mesin Inferensi part 2', '<p>For any sentence &alpha;, variable v, and constant symbol k<br />\r\nthat does not appear elsewhere in the knowledge base:</p>\r\n\r\n<p><br />\r\n&exist;v &alpha;</p>\r\n\r\n<p><br />\r\nSubst({v/k}, &alpha;)</p>\r\n\r\n<p>E.g., &exist;x Crown(x) &and; OnHead(x,John) yields:</p>\r\n\r\n<p><br />\r\nCrown(C1) &and; OnHead(C1,John)</p>\r\n\r\n<p><br />\r\nprovided C1 is a new constant symbol, called a Skolem</p>\r\n', '-', 'Text', 'Mesin_Inferensi_part_21520305893.pptx', '2018-03-05 04:27:20', '2018-03-05 21:11:33', 10, 3);

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

--
-- Dumping data for table `course_enrol`
--

INSERT INTO `course_enrol` (`enr_id`, `enr_status`, `enr_timecreated`, `enr_timemodified`, `usr_id`, `crs_id`) VALUES
(1, 'Diambil', '2018-03-05 21:01:59', '2018-03-05 21:01:59', 42, 14),
(2, 'Diambil', '2018-03-06 05:40:09', '2018-03-06 05:40:09', 44, 14);

-- --------------------------------------------------------

--
-- Table structure for table `course_enrol_detail`
--

CREATE TABLE `course_enrol_detail` (
  `end_id` int(10) UNSIGNED NOT NULL,
  `end_status` varchar(500) DEFAULT NULL,
  `end_timecreated` timestamp NULL DEFAULT NULL,
  `end_timemodified` timestamp NULL DEFAULT NULL,
  `usr_id` int(10) UNSIGNED NOT NULL,
  `enr_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course_forum`
--

CREATE TABLE `course_forum` (
  `cfr_id` int(10) UNSIGNED NOT NULL,
  `cfr_title` varchar(75) NOT NULL,
  `cfr_desc` varchar(150) NOT NULL,
  `usr_id` int(10) UNSIGNED NOT NULL,
  `lsn_id` int(10) UNSIGNED NOT NULL
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
  `usr_id` int(10) UNSIGNED NOT NULL
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
  `usr_id` int(10) UNSIGNED NOT NULL
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
  `usr_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course_learning_outcomes`
--

CREATE TABLE `course_learning_outcomes` (
  `loc_id` int(10) UNSIGNED NOT NULL,
  `loc_desc` varchar(50) NOT NULL,
  `loc_timecreated` timestamp NULL DEFAULT NULL,
  `loc_timemodified` timestamp NULL DEFAULT NULL,
  `crs_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_learning_outcomes`
--

INSERT INTO `course_learning_outcomes` (`loc_id`, `loc_desc`, `loc_timecreated`, `loc_timemodified`, `crs_id`) VALUES
(3, 'Memahami mesin inferensi', '2018-03-05 04:23:27', '2018-03-05 04:23:27', 14),
(4, 'Mampu memahami dan mengimplentasikan mesin inferen', '2018-03-05 20:54:49', '2018-03-05 20:54:49', 14);

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

--
-- Dumping data for table `course_lesson`
--

INSERT INTO `course_lesson` (`lsn_id`, `lsn_name`, `lsn_intro`, `lsn_timecreated`, `lsn_timemodified`, `crs_id`) VALUES
(10, 'Mesin Inferensi', '<p>Reducing first-order inference to propositional inference</p>\r\n', '2018-03-05 04:17:55', '2018-03-05 04:17:55', 14),
(11, 'Ontologi Tools', '<p>CLIPS atau protege</p>\r\n', '2018-03-05 21:44:11', '2018-03-05 21:44:11', 14);

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
  `usr_tgllahir` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`usr_id`, `usr_kode`, `usr_username`, `usr_firstname`, `usr_lastname`, `usr_password`, `usr_email`, `usr_picture`, `usr_gpa`, `usr_timecreated`, `usr_timemodified`, `usr_level`, `usr_jk`, `usr_tgllahir`) VALUES
(41, NULL, 'admin', 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@admin.co.id', 'avatar_default.jpg', NULL, NULL, NULL, '1', NULL, NULL),
(42, NULL, 'iqbal', 'Iqbal', 'Maulana', 'eedae20fc3c7a6e9c5b1102098771c70', 'iqbalmlna@student.telkomuniversity.ac.id', 'iqbal1520309207.jpeg', '3.50', NULL, '2018-03-05 22:06:47', '2', '1', '1996-08-07'),
(43, 'RZQ', 'razzaq', 'Fikri', 'Razzaq', '2f3383ed694d0e9446f98e90abf539cc', 'fikri@razzaq.gmail.com', 'razzaq1520305206.jpg', NULL, NULL, '2018-03-06 11:52:19', '3', '1', '1995-06-19'),
(44, NULL, 'adzan', 'Adzan', 'Anugrah', '88c7dc5f4ea5d6f5283946f53e166dfe', 'adzan@anu.co.id', 'adzan1520314965.jpg', NULL, NULL, '2018-03-06 05:42:45', '2', '2', '1996-07-25');

-- --------------------------------------------------------

--
-- Table structure for table `usertracking`
--

CREATE TABLE `usertracking` (
  `id` int(11) NOT NULL,
  `session_id` varchar(100) DEFAULT NULL,
  `user_identifier` varchar(255) DEFAULT NULL,
  `request_uri` text,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `client_ip` varchar(50) DEFAULT NULL,
  `client_user_agent` text,
  `referer_page` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usertracking`
--

INSERT INTO `usertracking` (`id`, `session_id`, `user_identifier`, `request_uri`, `timestamp`, `client_ip`, `client_user_agent`, `referer_page`) VALUES
(1, NULL, NULL, '/marsel/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', ''),
(2, NULL, NULL, '/marsel/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', ''),
(3, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', ''),
(4, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(5, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(6, NULL, NULL, '/TA_Ubilearn/instruktur/MyCourse', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(7, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(8, NULL, NULL, '/TA_Ubilearn/instruktur/lesson', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(9, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(10, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(11, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(12, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(13, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(14, NULL, NULL, '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(15, NULL, NULL, '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(16, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(17, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(18, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(19, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(20, NULL, NULL, '/TA_Ubilearn/siswa/akun', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(21, NULL, NULL, '/TA_Ubilearn/siswa/akun', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(22, NULL, NULL, '/TA_Ubilearn/siswa/akun/update_user', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/akun'),
(23, NULL, NULL, '/TA_Ubilearn/siswa/akun/update_user', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/akun'),
(24, NULL, NULL, '/TA_Ubilearn/siswa/akun/update_user', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', ''),
(25, NULL, NULL, '/TA_Ubilearn/siswa/akun/update_user', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', ''),
(26, NULL, NULL, '/TA_Ubilearn/siswa/akun/', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', ''),
(27, NULL, NULL, '/TA_Ubilearn/siswa/akun/', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', ''),
(28, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/akun/'),
(29, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', ''),
(30, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(31, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(32, NULL, NULL, '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(33, NULL, NULL, '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(34, NULL, NULL, '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', ''),
(35, NULL, NULL, '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', ''),
(36, NULL, NULL, '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', ''),
(37, NULL, NULL, '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', ''),
(38, NULL, NULL, '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', ''),
(39, NULL, NULL, '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', ''),
(40, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(41, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(42, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(43, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(44, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(45, NULL, NULL, '/TA_Ubilearn/instruktur/MyCourse', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(46, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(47, NULL, NULL, '/TA_Ubilearn/instruktur/forum_instruktur', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(48, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(49, NULL, NULL, '/TA_Ubilearn/instruktur/learning_outcome', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(50, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(51, NULL, NULL, '/TA_Ubilearn/instruktur/lesson', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(52, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', ''),
(53, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', ''),
(54, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(55, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(56, NULL, NULL, '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(57, NULL, NULL, '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(58, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(59, NULL, NULL, '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(60, NULL, NULL, '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(61, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(62, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(63, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(64, NULL, NULL, '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(65, NULL, NULL, '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(66, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(67, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(68, NULL, NULL, '/TA_Ubilearn/example', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', ''),
(69, NULL, NULL, '/TA_Ubilearn/example', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', ''),
(70, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', ''),
(71, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', ''),
(72, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', ''),
(73, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(74, '6i7ajkk7adccefb564k50bk8vtgpd0pp', 'injeksibos', '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(75, '6i7ajkk7adccefb564k50bk8vtgpd0pp', 'injeksibos', '/TA_Ubilearn/instruktur/MyCourse', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(76, '6i7ajkk7adccefb564k50bk8vtgpd0pp', 'injeksibos', '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/MyCourse'),
(77, '6i7ajkk7adccefb564k50bk8vtgpd0pp', 'injeksibos', '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(78, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(79, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(80, 'nhfjso243085s7v1nlmmnjh0vcj4qdc1', 'makrus', '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(81, 'nhfjso243085s7v1nlmmnjh0vcj4qdc1', 'makrus', '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(82, 'nhfjso243085s7v1nlmmnjh0vcj4qdc1', 'makrus', '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(83, 'nhfjso243085s7v1nlmmnjh0vcj4qdc1', 'makrus', '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(84, 'nhfjso243085s7v1nlmmnjh0vcj4qdc1', 'makrus', '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(85, 'nhfjso243085s7v1nlmmnjh0vcj4qdc1', 'makrus', '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(86, 'nhfjso243085s7v1nlmmnjh0vcj4qdc1', 'makrus', '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(87, 'nhfjso243085s7v1nlmmnjh0vcj4qdc1', 'makrus', '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(88, 'nhfjso243085s7v1nlmmnjh0vcj4qdc1', 'makrus', '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(89, 'nhfjso243085s7v1nlmmnjh0vcj4qdc1', 'makrus', '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(90, 'nhfjso243085s7v1nlmmnjh0vcj4qdc1', 'makrus', '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(91, 'nhfjso243085s7v1nlmmnjh0vcj4qdc1', 'makrus', '/TA_Ubilearn/siswa/list_thread_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(92, 'nhfjso243085s7v1nlmmnjh0vcj4qdc1', 'makrus', '/TA_Ubilearn/siswa/detail_thread_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa'),
(93, 'nhfjso243085s7v1nlmmnjh0vcj4qdc1', 'makrus', '/TA_Ubilearn/siswa/detail_thread_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_thread_siswa'),
(94, 'nhfjso243085s7v1nlmmnjh0vcj4qdc1', 'makrus', '/TA_Ubilearn/example', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', ''),
(95, 'nhfjso243085s7v1nlmmnjh0vcj4qdc1', 'makrus', '/TA_Ubilearn/example', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', ''),
(96, 'nhfjso243085s7v1nlmmnjh0vcj4qdc1', 'makrus', '/TA_Ubilearn/example', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', ''),
(97, 'nhfjso243085s7v1nlmmnjh0vcj4qdc1', 'makrus', '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', ''),
(98, 'nhfjso243085s7v1nlmmnjh0vcj4qdc1', 'makrus', '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(99, 'd1mbvstirb8jdpmapareafu89vi1cg2g', 'injeksibos', '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(100, 'd1mbvstirb8jdpmapareafu89vi1cg2g', 'injeksibos', '/TA_Ubilearn/instruktur/MyCourse', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(101, 'd1mbvstirb8jdpmapareafu89vi1cg2g', 'injeksibos', '/TA_Ubilearn/instruktur/add_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/MyCourse'),
(102, 'd1mbvstirb8jdpmapareafu89vi1cg2g', 'injeksibos', '/TA_Ubilearn/instruktur/course/insert', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_course'),
(103, 'd1mbvstirb8jdpmapareafu89vi1cg2g', 'injeksibos', '/TA_Ubilearn/instruktur/add_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_course'),
(104, 'd1mbvstirb8jdpmapareafu89vi1cg2g', 'injeksibos', '/TA_Ubilearn/instruktur/MyCourse', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_course'),
(105, 'd1mbvstirb8jdpmapareafu89vi1cg2g', 'injeksibos', '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/MyCourse'),
(106, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/MyCourse'),
(107, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(108, 'dbse8vpfd7kii86efsrqa6m9tr3iqvmp', 'makrus', '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(109, 'dbse8vpfd7kii86efsrqa6m9tr3iqvmp', 'makrus', '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(110, 'dbse8vpfd7kii86efsrqa6m9tr3iqvmp', 'makrus', '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(111, 'dbse8vpfd7kii86efsrqa6m9tr3iqvmp', 'makrus', '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(112, 'dbse8vpfd7kii86efsrqa6m9tr3iqvmp', 'makrus', '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(113, 'dbse8vpfd7kii86efsrqa6m9tr3iqvmp', 'makrus', '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(114, 'dbse8vpfd7kii86efsrqa6m9tr3iqvmp', 'makrus', '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', ''),
(115, 'dbse8vpfd7kii86efsrqa6m9tr3iqvmp', 'makrus', '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', ''),
(116, 'dbse8vpfd7kii86efsrqa6m9tr3iqvmp', 'makrus', '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', ''),
(117, 'dbse8vpfd7kii86efsrqa6m9tr3iqvmp', 'makrus', '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', ''),
(118, 'dbse8vpfd7kii86efsrqa6m9tr3iqvmp', 'makrus', '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(119, 'dbse8vpfd7kii86efsrqa6m9tr3iqvmp', 'makrus', '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(120, 'dbse8vpfd7kii86efsrqa6m9tr3iqvmp', 'makrus', '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(121, 'dbse8vpfd7kii86efsrqa6m9tr3iqvmp', 'makrus', '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(122, 'dbse8vpfd7kii86efsrqa6m9tr3iqvmp', 'makrus', '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(123, 'dbse8vpfd7kii86efsrqa6m9tr3iqvmp', 'makrus', '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(124, 'dbse8vpfd7kii86efsrqa6m9tr3iqvmp', 'makrus', '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', ''),
(125, 'dbse8vpfd7kii86efsrqa6m9tr3iqvmp', 'makrus', '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', ''),
(126, 'dbse8vpfd7kii86efsrqa6m9tr3iqvmp', 'makrus', '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', ''),
(127, 'dbse8vpfd7kii86efsrqa6m9tr3iqvmp', 'makrus', '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', ''),
(128, 'dbse8vpfd7kii86efsrqa6m9tr3iqvmp', 'makrus', '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', ''),
(129, 'dbse8vpfd7kii86efsrqa6m9tr3iqvmp', 'makrus', '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', ''),
(130, 'dbse8vpfd7kii86efsrqa6m9tr3iqvmp', 'makrus', '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', ''),
(131, 'dbse8vpfd7kii86efsrqa6m9tr3iqvmp', 'makrus', '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', ''),
(132, 'dbse8vpfd7kii86efsrqa6m9tr3iqvmp', 'makrus', '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', ''),
(133, 'dbse8vpfd7kii86efsrqa6m9tr3iqvmp', 'makrus', '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', ''),
(134, 'dbse8vpfd7kii86efsrqa6m9tr3iqvmp', 'makrus', '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', ''),
(135, 'dbse8vpfd7kii86efsrqa6m9tr3iqvmp', 'makrus', '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', ''),
(136, 'dbse8vpfd7kii86efsrqa6m9tr3iqvmp', 'makrus', '/TA_Ubilearn/siswa/course_detail/12', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course'),
(137, 'dbse8vpfd7kii86efsrqa6m9tr3iqvmp', 'makrus', '/TA_Ubilearn/siswa/course_detail/12', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course'),
(138, 'dbse8vpfd7kii86efsrqa6m9tr3iqvmp', 'makrus', '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/12'),
(139, 'dbse8vpfd7kii86efsrqa6m9tr3iqvmp', 'makrus', '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/12'),
(140, 'dbse8vpfd7kii86efsrqa6m9tr3iqvmp', 'makrus', '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course'),
(141, 'dbse8vpfd7kii86efsrqa6m9tr3iqvmp', 'makrus', '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course'),
(142, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', ''),
(143, NULL, NULL, '/TA_Ubilearn/landing_page', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(144, NULL, NULL, '/TA_Ubilearn/signup_instruktur', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/landing_page'),
(145, NULL, NULL, '/TA_Ubilearn/C_login/registrasi_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signup_instruktur'),
(146, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/C_login/registrasi_siswa'),
(147, NULL, NULL, '/TA_Ubilearn/landing_page', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(148, NULL, NULL, '/TA_Ubilearn/signup', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/landing_page'),
(149, NULL, NULL, '/TA_Ubilearn/C_login/registrasi_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signup'),
(150, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/C_login/registrasi_siswa'),
(151, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(152, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(153, NULL, NULL, '/TA_Ubilearn/instruktur/MyCourse', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(154, NULL, NULL, '/TA_Ubilearn/instruktur/add_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/MyCourse'),
(155, NULL, NULL, '/TA_Ubilearn/instruktur/course/insert', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_course'),
(156, NULL, NULL, '/TA_Ubilearn/instruktur/MyCourse', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_course'),
(157, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/MyCourse'),
(158, NULL, NULL, '/TA_Ubilearn/instruktur/add_lesson/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/13'),
(159, NULL, NULL, '/TA_Ubilearn/instruktur/insert_lesson', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_lesson/13'),
(160, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/insert_lesson'),
(161, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/13'),
(162, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/13'),
(163, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(164, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(165, NULL, NULL, '/TA_Ubilearn/instruktur/forum_instruktur', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(166, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/forum_instruktur'),
(167, NULL, NULL, '/TA_Ubilearn/instruktur/add_forum/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(168, NULL, NULL, '/TA_Ubilearn/instruktur/add_forum/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(169, NULL, NULL, '/TA_Ubilearn/instruktur/add_forum/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(170, NULL, NULL, '/TA_Ubilearn/instruktur/add_forum/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(171, NULL, NULL, '/TA_Ubilearn/instruktur/add_forum/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(172, NULL, NULL, '/TA_Ubilearn/instruktur/add_forum/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(173, NULL, NULL, '/TA_Ubilearn/instruktur/add_forum/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(174, NULL, NULL, '/TA_Ubilearn/instruktur/add_forum/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(175, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/forum_instruktur'),
(176, NULL, NULL, '/TA_Ubilearn/instruktur/add_forum/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(177, NULL, NULL, '/TA_Ubilearn/instruktur/insert_forum', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_forum/13'),
(178, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_forum/13'),
(179, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(180, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(181, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(182, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(183, NULL, NULL, '/TA_Ubilearn/instruktur/forum_instruktur', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(184, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/forum_instruktur'),
(185, NULL, NULL, '/TA_Ubilearn/instruktur/add_forum/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(186, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/forum_instruktur'),
(187, NULL, NULL, '/TA_Ubilearn/instruktur/add_forum/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(188, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/forum_instruktur'),
(189, NULL, NULL, '/TA_Ubilearn/instruktur/add_forum/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(190, NULL, NULL, '/TA_Ubilearn/instruktur/add_forum/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(191, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/forum_instruktur'),
(192, NULL, NULL, '/TA_Ubilearn/instruktur/add_forum/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(193, NULL, NULL, '/TA_Ubilearn/instruktur/insert_forum', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_forum/13'),
(194, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_forum/13'),
(195, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(196, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(197, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(198, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(199, NULL, NULL, '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard');
INSERT INTO `usertracking` (`id`, `session_id`, `user_identifier`, `request_uri`, `timestamp`, `client_ip`, `client_user_agent`, `referer_page`) VALUES
(200, NULL, NULL, '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(201, NULL, NULL, '/TA_Ubilearn/siswa/course_close/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course'),
(202, NULL, NULL, '/TA_Ubilearn/siswa/course_close/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course'),
(203, NULL, NULL, '/TA_Ubilearn/siswa/enrol/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_close/13'),
(204, NULL, NULL, '/TA_Ubilearn/siswa/enrol/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_close/13'),
(205, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_close/13'),
(206, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_close/13'),
(207, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(208, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(209, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/13'),
(210, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/13'),
(211, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/13'),
(212, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/13'),
(213, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/13'),
(214, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/13'),
(215, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/13'),
(216, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/13'),
(217, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/13'),
(218, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/13'),
(219, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/13'),
(220, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/13'),
(221, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/13'),
(222, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/13'),
(223, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/13'),
(224, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/13'),
(225, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', ''),
(226, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(227, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(228, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(229, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(230, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(231, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(232, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(233, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(234, NULL, NULL, '/TA_Ubilearn/instruktur/forum_instruktur', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(235, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/forum_instruktur'),
(236, NULL, NULL, '/TA_Ubilearn/instruktur/forum_instruktur', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(237, NULL, NULL, '/TA_Ubilearn/instruktur/MyCourse', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/forum_instruktur'),
(238, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/MyCourse'),
(239, NULL, NULL, '/TA_Ubilearn/instruktur/add_lesson/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/13'),
(240, NULL, NULL, '/TA_Ubilearn/instruktur/add_lesson/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/13'),
(241, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/MyCourse'),
(242, NULL, NULL, '/TA_Ubilearn/instruktur/add_lesson/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/13'),
(243, NULL, NULL, '/TA_Ubilearn/instruktur/insert_lesson', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_lesson/13'),
(244, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/insert_lesson'),
(245, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/13'),
(246, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/13'),
(247, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(248, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(249, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(250, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(251, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(252, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(253, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(254, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(255, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(256, NULL, NULL, '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(257, NULL, NULL, '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(258, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course'),
(259, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(260, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(261, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(262, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(263, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(264, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(265, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(266, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(267, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(268, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(269, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(270, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(271, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(272, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(273, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(274, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(275, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(276, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(277, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(278, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(279, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(280, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(281, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/13'),
(282, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/13'),
(283, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/13'),
(284, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/13'),
(285, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/13'),
(286, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/13'),
(287, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/13'),
(288, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/13'),
(289, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/13'),
(290, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/13'),
(291, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/13'),
(292, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(293, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(294, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(295, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(296, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/13'),
(297, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(298, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(299, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/13'),
(300, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(301, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(302, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/13'),
(303, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(304, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/13'),
(305, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(306, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(307, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(308, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(309, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(310, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(311, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(312, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/13'),
(313, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(314, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(315, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(316, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', ''),
(317, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(318, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(319, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(320, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(321, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(322, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(323, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(324, NULL, NULL, '/TA_Ubilearn/instruktur/forum_instruktur', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(325, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', ''),
(326, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(327, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(328, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(329, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(330, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(331, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(332, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(333, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(334, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(335, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(336, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(337, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(338, NULL, NULL, '/TA_Ubilearn/instruktur/forum_instruktur', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(339, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/forum_instruktur'),
(340, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(341, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(342, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(343, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(344, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(345, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(346, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(347, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(348, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(349, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(350, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(351, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(352, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(353, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(354, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(355, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(356, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(357, NULL, NULL, '/TA_Ubilearn/siswa/dashboard_forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', ''),
(358, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', ''),
(359, NULL, NULL, '/TA_Ubilearn/siswa/dashboard_forum_siswa/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(360, NULL, NULL, '/TA_Ubilearn/siswa/dashboard_forum_siswa/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(361, NULL, NULL, '/TA_Ubilearn/siswa/dashboard_forum_siswa/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(362, NULL, NULL, '/TA_Ubilearn/siswa/dashboard_forum_siswa/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(363, NULL, NULL, '/TA_Ubilearn/siswa/dashboard_forum_siswa/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(364, NULL, NULL, '/TA_Ubilearn/siswa/dashboard_forum_siswa/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(365, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(366, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(367, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(368, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(369, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(370, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(371, NULL, NULL, '/TA_Ubilearn/instruktur/forum_instruktur', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(372, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/forum_instruktur'),
(373, NULL, NULL, '/TA_Ubilearn/instruktur/list_thread_instruktur/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(374, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/list_thread_instruktur/4'),
(375, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/list_thread_instruktur/4'),
(376, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(377, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(378, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(379, NULL, NULL, '/TA_Ubilearn/siswa/dashboard_forum_siswa/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(380, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(381, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(382, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(383, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(384, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(385, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(386, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(387, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(388, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(389, NULL, NULL, '/TA_Ubilearn/instruktur/forum_instruktur', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(390, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/forum_instruktur'),
(391, NULL, NULL, '/TA_Ubilearn/instruktur/list_thread_instruktur/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(392, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/list_thread_instruktur/4'),
(393, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/list_thread_instruktur/4'),
(394, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(395, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(396, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(397, NULL, NULL, '/TA_Ubilearn/siswa/dashboard_forum_siswa/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(398, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13');
INSERT INTO `usertracking` (`id`, `session_id`, `user_identifier`, `request_uri`, `timestamp`, `client_ip`, `client_user_agent`, `referer_page`) VALUES
(399, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(400, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(401, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(402, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(403, NULL, NULL, '/TA_Ubilearn/instruktur/forum_instruktur', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(404, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/forum_instruktur'),
(405, NULL, NULL, '/TA_Ubilearn/instruktur/list_thread_instruktur/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(406, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/list_thread_instruktur/4'),
(407, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/list_thread_instruktur/4'),
(408, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(409, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(410, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(411, NULL, NULL, '/TA_Ubilearn/siswa/dashboard_forum_siswa/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(412, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(413, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(414, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(415, NULL, NULL, '/TA_Ubilearn/siswa/dashboard_forum_siswa/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(416, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(417, NULL, NULL, '/TA_Ubilearn/siswa/dashboard_forum_siswa/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(418, NULL, NULL, '/TA_Ubilearn/siswa/dashboard_forum_siswa/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(419, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(420, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(421, NULL, NULL, '/TA_Ubilearn/siswa/dashboard_forum_siswa/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(422, NULL, NULL, '/TA_Ubilearn/siswa/dashboard_forum_siswa/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(423, NULL, NULL, '/TA_Ubilearn/siswa/dashboard_forum_siswa/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(424, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(425, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(426, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(427, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(428, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(429, NULL, NULL, '/TA_Ubilearn/instruktur/forum_instruktur', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(430, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/forum_instruktur'),
(431, NULL, NULL, '/TA_Ubilearn/instruktur/list_thread_instruktur/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(432, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/forum_instruktur'),
(433, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', ''),
(434, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(435, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(436, NULL, NULL, '/TA_Ubilearn/instruktur/forum_instruktur', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(437, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/forum_instruktur'),
(438, NULL, NULL, '/TA_Ubilearn/instruktur/forum_instruktur', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(439, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/forum_instruktur'),
(440, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/forum_instruktur'),
(441, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/forum_instruktur'),
(442, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/forum_instruktur'),
(443, NULL, NULL, '/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(444, NULL, NULL, '/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(445, NULL, NULL, '/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(446, NULL, NULL, '/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(447, NULL, NULL, '/TA_Ubilearn/instruktur/forum_instruktur', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/13'),
(448, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/forum_instruktur'),
(449, NULL, NULL, '/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(450, NULL, NULL, '/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(451, NULL, NULL, '/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(452, NULL, NULL, '/TA_Ubilearn/instruktur/list_thread_instruktur/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8'),
(453, NULL, NULL, '/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(454, NULL, NULL, '/TA_Ubilearn/instruktur/list_thread_instruktur/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8'),
(455, NULL, NULL, '/TA_Ubilearn/instruktur/list_thread_instruktur/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8'),
(456, NULL, NULL, '/TA_Ubilearn/instruktur/list_thread_instruktur/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8'),
(457, NULL, NULL, '/TA_Ubilearn/instruktur/list_thread_instruktur/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8'),
(458, NULL, NULL, '/TA_Ubilearn/instruktur/list_thread_instruktur/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8'),
(459, NULL, NULL, '/TA_Ubilearn/instruktur/list_thread_instruktur/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8'),
(460, NULL, NULL, '/TA_Ubilearn/instruktur/list_thread_instruktur/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8'),
(461, NULL, NULL, '/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(462, NULL, NULL, '/TA_Ubilearn/instruktur/add_forum/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8'),
(463, NULL, NULL, '/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(464, NULL, NULL, '/TA_Ubilearn/instruktur/add_forum/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8'),
(465, NULL, NULL, '/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(466, NULL, NULL, '/TA_Ubilearn/instruktur/add_forum/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8'),
(467, NULL, NULL, '/TA_Ubilearn/instruktur/add_forum/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8'),
(468, NULL, NULL, '/TA_Ubilearn/instruktur/add_forum/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8'),
(469, NULL, NULL, '/TA_Ubilearn/instruktur/add_forum/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8'),
(470, NULL, NULL, '/TA_Ubilearn/instruktur/forum_instruktur', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_forum/8'),
(471, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/forum_instruktur'),
(472, NULL, NULL, '/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(473, NULL, NULL, '/TA_Ubilearn/instruktur/add_forum/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8'),
(474, NULL, NULL, '/TA_Ubilearn/instruktur/add_forum/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8'),
(475, NULL, NULL, '/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(476, NULL, NULL, '/TA_Ubilearn/instruktur/add_forum/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8'),
(477, NULL, NULL, '/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(478, NULL, NULL, '/TA_Ubilearn/instruktur/add_forum/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8'),
(479, NULL, NULL, '/TA_Ubilearn/instruktur/insert_forum/%3C?php%20echo%20$datalessonaddforum-%3Elsn_id?%3E', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_forum/8'),
(480, NULL, NULL, '/TA_Ubilearn/instruktur/add_forum/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8'),
(481, NULL, NULL, '/TA_Ubilearn/instruktur/add_forum/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8'),
(482, NULL, NULL, '/TA_Ubilearn/instruktur/forum_instruktur', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_forum/8'),
(483, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/forum_instruktur'),
(484, NULL, NULL, '/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(485, NULL, NULL, '/TA_Ubilearn/instruktur/add_forum/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8'),
(486, NULL, NULL, '/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(487, NULL, NULL, '/TA_Ubilearn/instruktur/add_forum/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8'),
(488, NULL, NULL, '/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(489, NULL, NULL, '/TA_Ubilearn/instruktur/add_forum/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8'),
(490, NULL, NULL, '/TA_Ubilearn/instruktur/insert_forum/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_forum/8'),
(491, NULL, NULL, '/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_forum/8'),
(492, NULL, NULL, '/TA_Ubilearn/instruktur/list_thread_instruktur/7', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8'),
(493, NULL, NULL, '/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_forum/8'),
(494, NULL, NULL, '/TA_Ubilearn/instruktur/list_thread_instruktur/5', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8'),
(495, NULL, NULL, '/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_forum/8'),
(496, NULL, NULL, '/TA_Ubilearn/instruktur/list_thread_instruktur/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8'),
(497, NULL, NULL, '/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_forum/8'),
(498, NULL, NULL, '/TA_Ubilearn/instruktur/list_thread_instruktur/5', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8'),
(499, NULL, NULL, '/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_forum/8'),
(500, NULL, NULL, '/TA_Ubilearn/instruktur/list_thread_instruktur/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8'),
(501, NULL, NULL, '/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_forum/8'),
(502, NULL, NULL, '/TA_Ubilearn/instruktur/list_thread_instruktur/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8'),
(503, NULL, NULL, '/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_forum/8'),
(504, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8'),
(505, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8'),
(506, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(507, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(508, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(509, NULL, NULL, '/TA_Ubilearn/siswa/dashboard_forum_siswa/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(510, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(511, NULL, NULL, '/TA_Ubilearn/siswa/dashboard_forum_siswa/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(512, NULL, NULL, '/TA_Ubilearn/siswa/dashboard_forum_siswa/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(513, NULL, NULL, '/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(514, NULL, NULL, '/TA_Ubilearn/siswa/dashboard_forum_siswa/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(515, NULL, NULL, '/TA_Ubilearn/siswa/dashboard_forum_siswa/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(516, NULL, NULL, '/TA_Ubilearn/siswa/dashboard_forum_siswa/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(517, NULL, NULL, '/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(518, NULL, NULL, '/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(519, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(520, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(521, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(522, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(523, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(524, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(525, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(526, NULL, NULL, '/TA_Ubilearn/instruktur/forum_instruktur', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(527, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/forum_instruktur'),
(528, NULL, NULL, '/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(529, NULL, NULL, '/TA_Ubilearn/instruktur/list_thread_instruktur/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8'),
(530, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/list_thread_instruktur/4'),
(531, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/list_thread_instruktur/4'),
(532, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(533, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(534, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(535, NULL, NULL, '/TA_Ubilearn/siswa/dashboard_forum_siswa/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(536, NULL, NULL, '/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(537, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(538, NULL, NULL, '/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(539, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/5', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(540, NULL, NULL, '/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(541, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/7', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(542, NULL, NULL, '/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(543, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(544, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(545, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(546, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(547, NULL, NULL, '/TA_Ubilearn/instruktur/forum_instruktur', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(548, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/forum_instruktur'),
(549, NULL, NULL, '/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(550, NULL, NULL, '/TA_Ubilearn/instruktur/list_thread_instruktur/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8'),
(551, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/list_thread_instruktur/4'),
(552, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/list_thread_instruktur/4'),
(553, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(554, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(555, NULL, NULL, '/TA_Ubilearn/instruktur/forum_instruktur', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(556, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/forum_instruktur'),
(557, NULL, NULL, '/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(558, NULL, NULL, '/TA_Ubilearn/instruktur/edit_forum/4/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8'),
(559, NULL, NULL, '/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(560, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/forum_instruktur'),
(561, NULL, NULL, '/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(562, NULL, NULL, '/TA_Ubilearn/instruktur/list_thread_instruktur/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8'),
(563, NULL, NULL, '/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(564, NULL, NULL, '/TA_Ubilearn/instruktur/edit_forum/4/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8'),
(565, NULL, NULL, '/TA_Ubilearn/instruktur/edit_forum/4/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8'),
(566, NULL, NULL, '/TA_Ubilearn/instruktur/edit_forum/4/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8'),
(567, NULL, NULL, '/TA_Ubilearn/instruktur/edit_forum/4/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8'),
(568, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', ''),
(569, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(570, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(571, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(572, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(573, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(574, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(575, NULL, NULL, '/TA_Ubilearn/instruktur/forum_instruktur', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(576, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/forum_instruktur'),
(577, NULL, NULL, '/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(578, NULL, NULL, '/TA_Ubilearn/instruktur/edit_forum/4/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8'),
(579, NULL, NULL, '/TA_Ubilearn/instruktur/update_forum/4/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/edit_forum/4/8'),
(580, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard_forum_instruktur/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/edit_forum/4/8');
INSERT INTO `usertracking` (`id`, `session_id`, `user_identifier`, `request_uri`, `timestamp`, `client_ip`, `client_user_agent`, `referer_page`) VALUES
(581, NULL, NULL, '/TA_Ubilearn/instruktur/edit_forum/4/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8'),
(582, NULL, NULL, '/TA_Ubilearn/instruktur/update_forum/4/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/edit_forum/4/8'),
(583, NULL, NULL, '/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/edit_forum/4/8'),
(584, NULL, NULL, '/TA_Ubilearn/instruktur/delete_forum/5/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8'),
(585, NULL, NULL, '/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8'),
(586, NULL, NULL, '/TA_Ubilearn/instruktur/list_thread_instruktur/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8'),
(587, NULL, NULL, '/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8'),
(588, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8'),
(589, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8'),
(590, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(591, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(592, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(593, NULL, NULL, '/TA_Ubilearn/siswa/dashboard_forum_siswa/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(594, NULL, NULL, '/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(595, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(596, NULL, NULL, '/TA_Ubilearn/siswa/add_thread_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(597, NULL, NULL, '/TA_Ubilearn/siswa/detail_thread_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', ''),
(598, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_thread_siswa'),
(599, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_thread_siswa'),
(600, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(601, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(602, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(603, NULL, NULL, '/TA_Ubilearn/siswa/dashboard_forum_siswa/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(604, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(605, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(606, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(607, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(608, NULL, NULL, '/TA_Ubilearn/instruktur/forum_instruktur', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(609, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/forum_instruktur'),
(610, NULL, NULL, '/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(611, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/forum_instruktur'),
(612, NULL, NULL, '/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(613, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/forum_instruktur'),
(614, NULL, NULL, '/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/9', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(615, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/forum_instruktur'),
(616, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(617, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(618, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(619, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(620, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(621, NULL, NULL, '/TA_Ubilearn/siswa/dashboard_forum_siswa/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(622, NULL, NULL, '/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(623, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(624, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(625, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(626, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(627, NULL, NULL, '/TA_Ubilearn/instruktur/forum_instruktur', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(628, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/forum_instruktur'),
(629, NULL, NULL, '/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(630, NULL, NULL, '/TA_Ubilearn/instruktur/add_forum/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8'),
(631, NULL, NULL, '/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(632, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/forum_instruktur'),
(633, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(634, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(635, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(636, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(637, NULL, NULL, '/TA_Ubilearn/instruktur/forum_instruktur', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(638, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/forum_instruktur'),
(639, NULL, NULL, '/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(640, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8'),
(641, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8'),
(642, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(643, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(644, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(645, NULL, NULL, '/TA_Ubilearn/siswa/dashboard_forum_siswa/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(646, NULL, NULL, '/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(647, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(648, NULL, NULL, '/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(649, NULL, NULL, '/TA_Ubilearn/siswa/dashboard_forum_siswa/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(650, NULL, NULL, '/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(651, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(652, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(653, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(654, NULL, NULL, '/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(655, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(656, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(657, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(658, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(659, NULL, NULL, '/TA_Ubilearn/siswa/dashboard_forum_siswa/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(660, NULL, NULL, '/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(661, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(662, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(663, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(664, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(665, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(666, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(667, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(668, NULL, NULL, '/TA_Ubilearn/siswa/dashboard_forum_siswa/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(669, NULL, NULL, '/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(670, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(671, NULL, NULL, '/TA_Ubilearn/siswa/add_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(672, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(673, NULL, NULL, '/TA_Ubilearn/siswa/add_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(674, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(675, NULL, NULL, '/TA_Ubilearn/siswa/add_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(676, NULL, NULL, '/TA_Ubilearn/siswa/add_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(677, NULL, NULL, '/TA_Ubilearn/siswa/thread/insert_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/add_thread_siswa/4'),
(678, NULL, NULL, '/TA_Ubilearn/siswa/thread/insert_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/add_thread_siswa/4'),
(679, NULL, NULL, '/TA_Ubilearn/siswa/add_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(680, NULL, NULL, '/TA_Ubilearn/siswa/thread/insert_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/add_thread_siswa/4'),
(681, NULL, NULL, '/TA_Ubilearn/siswa/thread/insert_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/add_thread_siswa/4'),
(682, NULL, NULL, '/TA_Ubilearn/siswa/thread/insert_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/add_thread_siswa/4'),
(683, NULL, NULL, '/TA_Ubilearn/siswa/add_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(684, NULL, NULL, '/TA_Ubilearn/siswa/thread/insert_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/add_thread_siswa/4'),
(685, NULL, NULL, '/TA_Ubilearn/siswa/add_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(686, NULL, NULL, '/TA_Ubilearn/siswa/thread/insert_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/add_thread_siswa/4'),
(687, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/add_thread_siswa/4'),
(688, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/add_thread_siswa/4'),
(689, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(690, NULL, NULL, '/TA_Ubilearn/siswa/dashboard_forum_siswa/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(691, NULL, NULL, '/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/9', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(692, NULL, NULL, '/TA_Ubilearn/siswa/dashboard_forum_siswa/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(693, NULL, NULL, '/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(694, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/7', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(695, NULL, NULL, '/TA_Ubilearn/siswa/add_thread_siswa/7', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/7'),
(696, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/7', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(697, NULL, NULL, '/TA_Ubilearn/siswa/add_thread_siswa/7', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/7'),
(698, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/7', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(699, NULL, NULL, '/TA_Ubilearn/siswa/add_thread_siswa/7', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/7'),
(700, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/7', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(701, NULL, NULL, '/TA_Ubilearn/siswa/add_thread_siswa/7', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/7'),
(702, NULL, NULL, '/TA_Ubilearn/siswa/add_thread_siswa/7', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/7'),
(703, NULL, NULL, '/TA_Ubilearn/siswa/thread/insert_thread_siswa/7', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/add_thread_siswa/7'),
(704, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/7', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/add_thread_siswa/7'),
(705, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/7', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/add_thread_siswa/7'),
(706, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/7', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/add_thread_siswa/7'),
(707, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/7', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/add_thread_siswa/7'),
(708, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/7', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/add_thread_siswa/7'),
(709, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/7', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/add_thread_siswa/7'),
(710, NULL, NULL, '/TA_Ubilearn/siswa/add_thread_siswa/7', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/7'),
(711, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/add_thread_siswa/7'),
(712, NULL, NULL, '/TA_Ubilearn/siswa/dashboard_forum_siswa/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(713, NULL, NULL, '/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(714, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(715, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(716, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(717, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(718, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(719, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(720, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(721, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(722, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(723, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(724, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(725, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(726, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(727, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(728, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(729, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(730, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(731, NULL, NULL, '/TA_Ubilearn/siswa/detail_thread_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(732, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(733, NULL, NULL, '/TA_Ubilearn/siswa/detail_thread_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(734, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(735, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(736, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(737, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(738, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(739, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(740, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(741, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(742, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(743, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(744, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(745, NULL, NULL, '/TA_Ubilearn/siswa/dashboard_forum_siswa/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(746, NULL, NULL, '/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/9', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(747, NULL, NULL, '/TA_Ubilearn/siswa/dashboard_forum_siswa/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(748, NULL, NULL, '/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(749, NULL, NULL, '/TA_Ubilearn/siswa/dashboard_forum_siswa/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(750, NULL, NULL, '/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/9', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(751, NULL, NULL, '/TA_Ubilearn/siswa/dashboard_forum_siswa/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(752, NULL, NULL, '/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(753, NULL, NULL, '/TA_Ubilearn/siswa/dashboard_forum_siswa/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(754, NULL, NULL, '/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/9', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(755, NULL, NULL, '/TA_Ubilearn/siswa/dashboard_forum_siswa/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(756, NULL, NULL, '/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(757, NULL, NULL, '/TA_Ubilearn/siswa/dashboard_forum_siswa/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(758, NULL, NULL, '/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/9', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(759, NULL, NULL, '/TA_Ubilearn/siswa/dashboard_forum_siswa/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(760, NULL, NULL, '/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(761, NULL, NULL, '/TA_Ubilearn/siswa/dashboard_forum_siswa/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(762, NULL, NULL, '/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/9', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(763, NULL, NULL, '/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/9', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(764, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/9');
INSERT INTO `usertracking` (`id`, `session_id`, `user_identifier`, `request_uri`, `timestamp`, `client_ip`, `client_user_agent`, `referer_page`) VALUES
(765, NULL, NULL, '/TA_Ubilearn/siswa/dashboard_forum_siswa/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(766, NULL, NULL, '/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/9', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(767, NULL, NULL, '/TA_Ubilearn/siswa/dashboard_forum_siswa/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(768, NULL, NULL, '/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(769, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/7', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(770, NULL, NULL, '/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(771, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(772, NULL, NULL, '/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(773, NULL, NULL, '/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(774, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(775, NULL, NULL, '/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(776, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/7', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(777, NULL, NULL, '/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(778, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(779, NULL, NULL, '/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(780, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(781, NULL, NULL, '/TA_Ubilearn/siswa/dashboard_forum_siswa/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(782, NULL, NULL, '/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(783, NULL, NULL, '/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(784, NULL, NULL, '/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(785, NULL, NULL, '/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(786, NULL, NULL, '/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(787, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(788, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(789, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(790, NULL, NULL, '/TA_Ubilearn/siswa/detail_thread_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(791, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(792, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(793, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(794, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(795, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(796, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(797, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(798, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(799, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(800, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(801, NULL, NULL, '/TA_Ubilearn/instruktur/forum_instruktur', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(802, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/forum_instruktur'),
(803, NULL, NULL, '/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard_forum_instruktur/13'),
(804, NULL, NULL, '/TA_Ubilearn/instruktur/edit_forum/4/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/detail_dashboard_forum_instruktur/8'),
(805, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/edit_forum/4/8'),
(806, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/edit_forum/4/8'),
(807, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(808, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(809, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(810, NULL, NULL, '/TA_Ubilearn/siswa/dashboard_forum_siswa/13', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(811, NULL, NULL, '/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/13'),
(812, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(813, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(814, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/8'),
(815, NULL, NULL, '/TA_Ubilearn/siswa/add_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(816, NULL, NULL, '/TA_Ubilearn/siswa/add_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(817, NULL, NULL, '/TA_Ubilearn/siswa/add_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(818, NULL, NULL, '/TA_Ubilearn/siswa/add_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(819, NULL, NULL, '/TA_Ubilearn/siswa/add_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(820, NULL, NULL, '/TA_Ubilearn/siswa/thread/insert_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/add_thread_siswa/4'),
(821, NULL, NULL, '/TA_Ubilearn/siswa/add_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(822, NULL, NULL, '/TA_Ubilearn/siswa/thread/insert_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/add_thread_siswa/4'),
(823, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/add_thread_siswa/4'),
(824, NULL, NULL, '/TA_Ubilearn/siswa/edit_thread_siswa/3/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(825, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/add_thread_siswa/4'),
(826, NULL, NULL, '/TA_Ubilearn/siswa/edit_thread_siswa/3/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(827, NULL, NULL, '/TA_Ubilearn/siswa/edit_thread_siswa/3/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(828, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/add_thread_siswa/4'),
(829, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/add_thread_siswa/4'),
(830, NULL, NULL, '/TA_Ubilearn/siswa/detail_thread_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(831, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/add_thread_siswa/4'),
(832, NULL, NULL, '/TA_Ubilearn/siswa/detail_thread_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(833, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/add_thread_siswa/4'),
(834, NULL, NULL, '/TA_Ubilearn/siswa/detail_thread_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(835, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/add_thread_siswa/4'),
(836, NULL, NULL, '/TA_Ubilearn/siswa/detail_thread_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(837, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/add_thread_siswa/4'),
(838, NULL, NULL, '/TA_Ubilearn/siswa/detail_thread_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(839, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/add_thread_siswa/4'),
(840, NULL, NULL, '/TA_Ubilearn/siswa/detail_thread_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(841, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/add_thread_siswa/4'),
(842, NULL, NULL, '/TA_Ubilearn/siswa/delete_thread_siswa/3/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(843, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(844, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(845, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(846, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(847, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(848, NULL, NULL, '/TA_Ubilearn/siswa/delete_thread_siswa/4/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(849, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(850, NULL, NULL, '/TA_Ubilearn/siswa/delete_thread_siswa/5/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(851, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(852, NULL, NULL, '/TA_Ubilearn/siswa/add_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(853, NULL, NULL, '/TA_Ubilearn/siswa/add_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(854, NULL, NULL, '/TA_Ubilearn/siswa/thread/insert_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/add_thread_siswa/4'),
(855, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/add_thread_siswa/4'),
(856, NULL, NULL, '/TA_Ubilearn/siswa/detail_thread_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(857, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/add_thread_siswa/4'),
(858, NULL, NULL, '/TA_Ubilearn/siswa/edit_thread_siswa/7/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(859, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/add_thread_siswa/4'),
(860, NULL, NULL, '/TA_Ubilearn/siswa/delete_thread_siswa/7/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(861, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(862, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(863, NULL, NULL, '/TA_Ubilearn/siswa/add_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(864, NULL, NULL, '/TA_Ubilearn/siswa/thread/insert_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/add_thread_siswa/4'),
(865, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/add_thread_siswa/4'),
(866, NULL, NULL, '/TA_Ubilearn/siswa/edit_thread_siswa/8/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(867, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/add_thread_siswa/4'),
(868, NULL, NULL, '/TA_Ubilearn/siswa/edit_thread_siswa/8/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/list_thread_siswa/4'),
(869, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/add_thread_siswa/4'),
(870, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', ''),
(871, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(872, NULL, NULL, '/TA_Ubilearn/admin/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(873, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/admin/dashboard'),
(874, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/admin/dashboard'),
(875, NULL, NULL, '/TA_Ubilearn/landing_page', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(876, NULL, NULL, '/TA_Ubilearn/signup', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/landing_page'),
(877, NULL, NULL, '/TA_Ubilearn/C_login/registrasi_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signup'),
(878, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/C_login/registrasi_siswa'),
(879, NULL, NULL, '/TA_Ubilearn/signup_instruktur', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/landing_page'),
(880, NULL, NULL, '/TA_Ubilearn/C_login/registrasi_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signup_instruktur'),
(881, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/C_login/registrasi_siswa'),
(882, NULL, NULL, '/TA_Ubilearn/landing_page', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(883, NULL, NULL, '/TA_Ubilearn/signup', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/landing_page'),
(884, NULL, NULL, '/TA_Ubilearn/C_login/registrasi_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signup'),
(885, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/C_login/registrasi_siswa'),
(886, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(887, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(888, NULL, NULL, '/TA_Ubilearn/instruktur/MyCourse', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(889, NULL, NULL, '/TA_Ubilearn/instruktur/add_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/MyCourse'),
(890, NULL, NULL, '/TA_Ubilearn/instruktur/course/insert', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_course'),
(891, NULL, NULL, '/TA_Ubilearn/instruktur/MyCourse', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_course'),
(892, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/MyCourse'),
(893, NULL, NULL, '/TA_Ubilearn/instruktur/add_lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(894, NULL, NULL, '/TA_Ubilearn/instruktur/insert_lesson', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_lesson/14'),
(895, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/insert_lesson'),
(896, NULL, NULL, '/TA_Ubilearn/instruktur/content/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(897, NULL, NULL, '/TA_Ubilearn/instruktur/add_content/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/content/10'),
(898, NULL, NULL, '/TA_Ubilearn/instruktur/content/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(899, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/insert_lesson'),
(900, NULL, NULL, '/TA_Ubilearn/instruktur/add_assesment/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(901, NULL, NULL, '/TA_Ubilearn/instruktur/learning_outcome', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_assesment/14'),
(902, NULL, NULL, '/TA_Ubilearn/instruktur/add_lo', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/learning_outcome'),
(903, NULL, NULL, '/TA_Ubilearn/instruktur/insert_lo', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_lo'),
(904, NULL, NULL, '/TA_Ubilearn/instruktur/add_lo', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_lo'),
(905, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_lo'),
(906, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(907, NULL, NULL, '/TA_Ubilearn/instruktur/add_assesment/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(908, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(909, NULL, NULL, '/TA_Ubilearn/instruktur/content/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(910, NULL, NULL, '/TA_Ubilearn/instruktur/add_content/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/content/10'),
(911, NULL, NULL, '/TA_Ubilearn/instruktur/content/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(912, NULL, NULL, '/TA_Ubilearn/instruktur/add_content/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/content/10'),
(913, NULL, NULL, '/TA_Ubilearn/instruktur/insert_content', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_content/10'),
(914, NULL, NULL, '/TA_Ubilearn/instruktur/add_content/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_content/10'),
(915, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_content/10'),
(916, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(917, NULL, NULL, '/TA_Ubilearn/instruktur/content/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(918, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(919, NULL, NULL, '/TA_Ubilearn/instruktur/content/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(920, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(921, NULL, NULL, '/TA_Ubilearn/instruktur/content/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(922, NULL, NULL, '/TA_Ubilearn/instruktur/add_content/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/content/10'),
(923, NULL, NULL, '/TA_Ubilearn/instruktur/insert_content', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_content/10'),
(924, NULL, NULL, '/TA_Ubilearn/instruktur/add_content/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_content/10'),
(925, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_content/10'),
(926, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(927, NULL, NULL, '/TA_Ubilearn/instruktur/content/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(928, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(929, NULL, NULL, '/TA_Ubilearn/instruktur/add_assesment/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(930, NULL, NULL, '/TA_Ubilearn/instruktur/Assesment/insert_assesment/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_assesment/14'),
(931, NULL, NULL, '/TA_Ubilearn/instruktur/add_assesment/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_assesment/14'),
(932, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_assesment/14'),
(933, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(934, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', ''),
(935, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(936, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(937, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(938, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(939, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(940, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(941, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(942, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(943, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(944, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(945, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(946, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(947, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(948, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(949, NULL, NULL, '/TA_Ubilearn/instruktur/content/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(950, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(951, NULL, NULL, '/TA_Ubilearn/instruktur/content/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(952, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard');
INSERT INTO `usertracking` (`id`, `session_id`, `user_identifier`, `request_uri`, `timestamp`, `client_ip`, `client_user_agent`, `referer_page`) VALUES
(953, NULL, NULL, '/TA_Ubilearn/instruktur/edit_assesment/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(954, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(955, NULL, NULL, '/TA_Ubilearn/instruktur/learning_outcome', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(956, NULL, NULL, '/TA_Ubilearn/instruktur/add_lo', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/learning_outcome'),
(957, NULL, NULL, '/TA_Ubilearn/instruktur/insert_lo', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_lo'),
(958, NULL, NULL, '/TA_Ubilearn/instruktur/add_lo', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_lo'),
(959, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_lo'),
(960, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(961, NULL, NULL, '/TA_Ubilearn/instruktur/add_assignment/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(962, NULL, NULL, '/TA_Ubilearn/instruktur/assignment/insert', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_assignment/14'),
(963, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_assignment/14'),
(964, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_assignment/14'),
(965, NULL, NULL, '/TA_Ubilearn/instruktur/edit_assignment/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(966, NULL, NULL, '/TA_Ubilearn/instruktur/assignment/update_asing', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/edit_assignment/1'),
(967, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/edit_assignment/1'),
(968, NULL, NULL, '/TA_Ubilearn/instruktur/add_assignment/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(969, NULL, NULL, '/TA_Ubilearn/instruktur/assignment/insert', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_assignment/14'),
(970, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_assignment/14'),
(971, NULL, NULL, '/TA_Ubilearn/instruktur/edit_assesment/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(972, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/edit_assesment/1'),
(973, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(974, NULL, NULL, '/TA_Ubilearn/instruktur/akun', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(975, NULL, NULL, '/TA_Ubilearn/instruktur/edit_akun', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/akun'),
(976, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/akun'),
(977, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(978, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(979, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(980, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(981, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(982, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(983, NULL, NULL, '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(984, NULL, NULL, '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(985, NULL, NULL, '/TA_Ubilearn/siswa/course_close/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course'),
(986, NULL, NULL, '/TA_Ubilearn/siswa/course_close/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course'),
(987, NULL, NULL, '/TA_Ubilearn/siswa/enrol/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_close/14'),
(988, NULL, NULL, '/TA_Ubilearn/siswa/enrol/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_close/14'),
(989, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_close/14'),
(990, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_close/14'),
(991, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_close/14'),
(992, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_close/14'),
(993, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(994, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(995, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(996, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(997, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_close/14'),
(998, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_close/14'),
(999, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_close/14'),
(1000, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_close/14'),
(1001, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_close/14'),
(1002, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_close/14'),
(1003, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1004, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1005, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1006, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1007, NULL, NULL, '/TA_Ubilearn/siswa/materi/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1008, NULL, NULL, '/TA_Ubilearn/siswa/materi/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1009, NULL, NULL, '/TA_Ubilearn/siswa/content/video/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/materi/10'),
(1010, NULL, NULL, '/TA_Ubilearn/siswa/content/video/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/materi/10'),
(1011, NULL, NULL, '/TA_Ubilearn/siswa/materi/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1012, NULL, NULL, '/TA_Ubilearn/siswa/materi/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1013, NULL, NULL, '/TA_Ubilearn/siswa/content/video/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/materi/10'),
(1014, NULL, NULL, '/TA_Ubilearn/siswa/content/video/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/materi/10'),
(1015, NULL, NULL, '/TA_Ubilearn/siswa/materi/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1016, NULL, NULL, '/TA_Ubilearn/siswa/materi/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1017, NULL, NULL, '/TA_Ubilearn/siswa/content/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/materi/10'),
(1018, NULL, NULL, '/TA_Ubilearn/siswa/content/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/materi/10'),
(1019, NULL, NULL, '/TA_Ubilearn/siswa/materi/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1020, NULL, NULL, '/TA_Ubilearn/siswa/materi/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1021, NULL, NULL, '/TA_Ubilearn/siswa/content/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/materi/10'),
(1022, NULL, NULL, '/TA_Ubilearn/siswa/content/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/materi/10'),
(1023, NULL, NULL, '/TA_Ubilearn/siswa/materi/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1024, NULL, NULL, '/TA_Ubilearn/siswa/materi/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1025, NULL, NULL, '/TA_Ubilearn/siswa/content/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/materi/10'),
(1026, NULL, NULL, '/TA_Ubilearn/siswa/content/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/materi/10'),
(1027, NULL, NULL, '/TA_Ubilearn/siswa/materi/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1028, NULL, NULL, '/TA_Ubilearn/siswa/materi/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1029, NULL, NULL, '/TA_Ubilearn/siswa/content/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/materi/10'),
(1030, NULL, NULL, '/TA_Ubilearn/siswa/content/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/materi/10'),
(1031, NULL, NULL, '/TA_Ubilearn/siswa/materi/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1032, NULL, NULL, '/TA_Ubilearn/siswa/materi/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1033, NULL, NULL, '/TA_Ubilearn/siswa/content/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/materi/10'),
(1034, NULL, NULL, '/TA_Ubilearn/siswa/content/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/materi/10'),
(1035, NULL, NULL, '/TA_Ubilearn/siswa/content/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/materi/10'),
(1036, NULL, NULL, '/TA_Ubilearn/siswa/content/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/materi/10'),
(1037, NULL, NULL, '/TA_Ubilearn/siswa/content/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/materi/10'),
(1038, NULL, NULL, '/TA_Ubilearn/siswa/content/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/materi/10'),
(1039, NULL, NULL, '/TA_Ubilearn/siswa/content/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/materi/10'),
(1040, NULL, NULL, '/TA_Ubilearn/siswa/content/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/materi/10'),
(1041, NULL, NULL, '/TA_Ubilearn/siswa/content/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/materi/10'),
(1042, NULL, NULL, '/TA_Ubilearn/siswa/content/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/materi/10'),
(1043, NULL, NULL, '/TA_Ubilearn/siswa/content/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/materi/10'),
(1044, NULL, NULL, '/TA_Ubilearn/siswa/content/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/materi/10'),
(1045, NULL, NULL, '/TA_Ubilearn/siswa/materi/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1046, NULL, NULL, '/TA_Ubilearn/siswa/materi/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1047, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/materi/10'),
(1048, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/materi/10'),
(1049, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1050, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1051, NULL, NULL, '/TA_Ubilearn/instruktur/MyCourse', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(1052, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/MyCourse'),
(1053, NULL, NULL, '/TA_Ubilearn/instruktur/content/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1054, NULL, NULL, '/TA_Ubilearn/instruktur/edit_content/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/content/10'),
(1055, NULL, NULL, '/TA_Ubilearn/instruktur/update_content', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/edit_content/2'),
(1056, NULL, NULL, '/TA_Ubilearn/instruktur/content/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/edit_content/2'),
(1057, NULL, NULL, '/TA_Ubilearn/instruktur/content/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/edit_content/2'),
(1058, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/content/10'),
(1059, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/content/10'),
(1060, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1061, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1062, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1063, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1064, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1065, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1066, NULL, NULL, '/TA_Ubilearn/siswa/materi/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1067, NULL, NULL, '/TA_Ubilearn/siswa/materi/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1068, NULL, NULL, '/TA_Ubilearn/siswa/content/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/materi/10'),
(1069, NULL, NULL, '/TA_Ubilearn/siswa/content/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/materi/10'),
(1070, NULL, NULL, '/TA_Ubilearn/siswa/materi/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1071, NULL, NULL, '/TA_Ubilearn/siswa/materi/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1072, NULL, NULL, '/TA_Ubilearn/siswa/content/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/materi/10'),
(1073, NULL, NULL, '/TA_Ubilearn/siswa/content/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/materi/10'),
(1074, NULL, NULL, '/TA_Ubilearn/siswa/content/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/materi/10'),
(1075, NULL, NULL, '/TA_Ubilearn/siswa/content/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/materi/10'),
(1076, NULL, NULL, '/TA_Ubilearn/siswa/materi/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1077, NULL, NULL, '/TA_Ubilearn/siswa/materi/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1078, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1079, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1080, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1081, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1082, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1083, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1084, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1085, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1086, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1087, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1088, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1089, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1090, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1091, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1092, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1093, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1094, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1095, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1096, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1097, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1098, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1099, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1100, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1101, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1102, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1103, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1104, NULL, NULL, '/TA_Ubilearn/siswa/assignment_detail/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1105, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1106, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1107, NULL, NULL, '/TA_Ubilearn/siswa/assignment_detail/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1108, NULL, NULL, '/TA_Ubilearn/siswa/assignment_detail/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1109, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/assignment_detail/2'),
(1110, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/assignment_detail/2'),
(1111, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1112, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1113, NULL, NULL, '/TA_Ubilearn/siswa/assignment_detail/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1114, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1115, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1116, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1117, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1118, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1119, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1120, NULL, NULL, '/TA_Ubilearn/siswa/assignment_detail/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1121, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1122, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1123, NULL, NULL, '/TA_Ubilearn/siswa/assignment_detail/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1124, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1125, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1126, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1127, NULL, NULL, '/TA_Ubilearn/siswa/forum_siswa', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1128, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(1129, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/forum_siswa'),
(1130, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1131, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1132, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1133, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1134, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1135, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1136, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1137, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1138, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1139, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1140, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1141, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1142, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1143, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1144, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin');
INSERT INTO `usertracking` (`id`, `session_id`, `user_identifier`, `request_uri`, `timestamp`, `client_ip`, `client_user_agent`, `referer_page`) VALUES
(1145, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1146, NULL, NULL, '/TA_Ubilearn/instruktur/MyCourse', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(1147, NULL, NULL, '/TA_Ubilearn/instruktur/MyCourse', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(1148, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/MyCourse'),
(1149, NULL, NULL, '/TA_Ubilearn/instruktur/add_assesment/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1150, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/MyCourse'),
(1151, NULL, NULL, '/TA_Ubilearn/instruktur/add_assesment/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1152, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/MyCourse'),
(1153, NULL, NULL, '/TA_Ubilearn/instruktur/add_lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1154, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/MyCourse'),
(1155, NULL, NULL, '/TA_Ubilearn/instruktur/add_lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1156, NULL, NULL, '/TA_Ubilearn/instruktur/insert_lesson', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_lesson/14'),
(1157, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/insert_lesson'),
(1158, NULL, NULL, '/TA_Ubilearn/instruktur/add_assesment/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1159, NULL, NULL, '/TA_Ubilearn/instruktur/Assesment/insert_assesment/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_assesment/14'),
(1160, NULL, NULL, '/TA_Ubilearn/instruktur/add_assesment/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_assesment/14'),
(1161, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_assesment/14'),
(1162, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(1163, NULL, NULL, '/TA_Ubilearn/instruktur/add_assesment/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1164, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(1165, NULL, NULL, '/TA_Ubilearn/instruktur/add_assesment/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1166, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_assesment/14'),
(1167, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(1168, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(1169, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1170, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1171, NULL, NULL, '/TA_Ubilearn/siswa/akun', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1172, NULL, NULL, '/TA_Ubilearn/siswa/akun', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1173, NULL, NULL, '/TA_Ubilearn/siswa/akun/update_user', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/akun'),
(1174, NULL, NULL, '/TA_Ubilearn/siswa/akun/update_user', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/akun'),
(1175, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/akun'),
(1176, NULL, NULL, '/TA_Ubilearn/siswa/akun', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1177, NULL, NULL, '/TA_Ubilearn/siswa/akun', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1178, NULL, NULL, '/TA_Ubilearn/siswa/akun/update_user', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/akun'),
(1179, NULL, NULL, '/TA_Ubilearn/siswa/akun/update_user', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/akun'),
(1180, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/akun'),
(1181, NULL, NULL, '/TA_Ubilearn/siswa/akun', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1182, NULL, NULL, '/TA_Ubilearn/siswa/akun', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1183, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/akun'),
(1184, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1185, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1186, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1187, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1188, NULL, NULL, '/TA_Ubilearn/instruktur/MyCourse', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(1189, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/MyCourse'),
(1190, NULL, NULL, '/TA_Ubilearn/instruktur/add_assesment/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1191, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/MyCourse'),
(1192, NULL, NULL, '/TA_Ubilearn/instruktur/add_assignment/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1193, NULL, NULL, '/TA_Ubilearn/instruktur/add_assignment/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1194, NULL, NULL, '/TA_Ubilearn/instruktur/add_assignment/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1195, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_assignment/14'),
(1196, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(1197, NULL, NULL, '/TA_Ubilearn/instruktur/add_assignment/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1198, NULL, NULL, '/TA_Ubilearn/instruktur/add_assignment/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1199, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_assignment/14'),
(1200, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_assignment/14'),
(1201, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1202, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1203, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1204, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1205, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1206, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1207, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1208, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1209, NULL, NULL, '/TA_Ubilearn/siswa/akun', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1210, NULL, NULL, '/TA_Ubilearn/siswa/akun', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1211, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/akun'),
(1212, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/akun'),
(1213, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1214, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1215, NULL, NULL, '/TA_Ubilearn/siswa/akun', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1216, NULL, NULL, '/TA_Ubilearn/siswa/akun', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1217, NULL, NULL, '/TA_Ubilearn/siswa/akun/update_user', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/akun'),
(1218, NULL, NULL, '/TA_Ubilearn/siswa/akun/update_user', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/akun'),
(1219, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/akun'),
(1220, NULL, NULL, '/TA_Ubilearn/siswa/akun', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1221, NULL, NULL, '/TA_Ubilearn/siswa/akun', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1222, NULL, NULL, '/TA_Ubilearn/siswa/akun', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1223, NULL, NULL, '/TA_Ubilearn/siswa/akun', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1224, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/akun'),
(1225, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/akun'),
(1226, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/akun'),
(1227, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1228, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1229, NULL, NULL, '/TA_Ubilearn/siswa/akun', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1230, NULL, NULL, '/TA_Ubilearn/siswa/akun', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1231, NULL, NULL, '/TA_Ubilearn/siswa/akun/update_user', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/akun'),
(1232, NULL, NULL, '/TA_Ubilearn/siswa/akun/update_user', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/akun'),
(1233, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/akun'),
(1234, NULL, NULL, '/TA_Ubilearn/siswa/akun', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1235, NULL, NULL, '/TA_Ubilearn/siswa/akun', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1236, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/akun'),
(1237, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/akun'),
(1238, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1239, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1240, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1241, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1242, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1243, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1244, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1245, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1246, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1247, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1248, NULL, NULL, '/TA_Ubilearn/instruktur/MyCourse', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(1249, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/MyCourse'),
(1250, NULL, NULL, '/TA_Ubilearn/instruktur/add_assesment/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1251, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_assesment/14'),
(1252, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_assesment/14'),
(1253, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1254, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1255, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1256, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1257, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1258, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1259, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1260, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1261, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1262, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1263, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1264, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1265, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1266, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1267, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1268, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1269, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1270, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1271, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1272, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1273, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1274, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1275, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1276, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1277, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1278, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1279, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1280, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1281, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1282, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1283, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1284, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1285, NULL, NULL, '/TA_Ubilearn/siswa/assesment_doing/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/assesment_info/2'),
(1286, NULL, NULL, '/TA_Ubilearn/siswa/assesment_doing/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/assesment_info/2'),
(1287, NULL, NULL, '/TA_Ubilearn/siswa/assesment_doing/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/assesment_info/2'),
(1288, NULL, NULL, '/TA_Ubilearn/siswa/assesment_doing/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/assesment_info/2'),
(1289, NULL, NULL, '/TA_Ubilearn/siswa/assesment_doing/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/assesment_info/2'),
(1290, NULL, NULL, '/TA_Ubilearn/siswa/assesment_doing/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/assesment_info/2'),
(1291, NULL, NULL, '/TA_Ubilearn/siswa/assesment/calc_ass/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/assesment_doing/2'),
(1292, NULL, NULL, '/TA_Ubilearn/siswa/assesment/calc_ass/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/assesment_doing/2'),
(1293, NULL, NULL, '/TA_Ubilearn/siswa/Assesment/result/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/assesment_doing/2'),
(1294, NULL, NULL, '/TA_Ubilearn/siswa/Assesment/result/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/assesment_doing/2'),
(1295, NULL, NULL, '/TA_Ubilearn/siswa/Assesment/result/images/DB_16%D1%8516.png', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/Assesment/result/2'),
(1296, NULL, NULL, '/TA_Ubilearn/siswa/Assesment/result/images/DB_16%D1%8516.png', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/Assesment/result/2'),
(1297, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/Assesment/result/2'),
(1298, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1299, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1300, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1301, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1302, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1303, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1304, NULL, NULL, '/TA_Ubilearn/siswa/assesment_doing/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/assesment_info/2'),
(1305, NULL, NULL, '/TA_Ubilearn/siswa/assesment_doing/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/assesment_info/2'),
(1306, NULL, NULL, '/TA_Ubilearn/siswa/assesment/result/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/assesment_info/2'),
(1307, NULL, NULL, '/TA_Ubilearn/siswa/assesment/result/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/assesment_info/2'),
(1308, NULL, NULL, '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/assesment/result/2'),
(1309, NULL, NULL, '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/assesment/result/2'),
(1310, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1311, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1312, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1313, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1314, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1315, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1316, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1317, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1318, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1319, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1320, NULL, NULL, '/TA_Ubilearn/siswa/assesment_doing/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/assesment_info/2'),
(1321, NULL, NULL, '/TA_Ubilearn/siswa/assesment_doing/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/assesment_info/2'),
(1322, NULL, NULL, '/TA_Ubilearn/siswa/assesment/result/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/assesment_info/2'),
(1323, NULL, NULL, '/TA_Ubilearn/siswa/assesment/result/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/assesment_info/2'),
(1324, NULL, NULL, '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/assesment/result/2'),
(1325, NULL, NULL, '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/assesment/result/2'),
(1326, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1327, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1328, NULL, NULL, '/TA_Ubilearn/siswa/assesment_doing/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/assesment_info/2'),
(1329, NULL, NULL, '/TA_Ubilearn/siswa/assesment_doing/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/assesment_info/2'),
(1330, NULL, NULL, '/TA_Ubilearn/siswa/assesment/result/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/assesment_info/2'),
(1331, NULL, NULL, '/TA_Ubilearn/siswa/assesment/result/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/assesment_info/2'),
(1332, NULL, NULL, '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/assesment/result/2'),
(1333, NULL, NULL, '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/assesment/result/2'),
(1334, NULL, NULL, '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/assesment/result/2');
INSERT INTO `usertracking` (`id`, `session_id`, `user_identifier`, `request_uri`, `timestamp`, `client_ip`, `client_user_agent`, `referer_page`) VALUES
(1335, NULL, NULL, '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/assesment/result/2'),
(1336, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/assesment/result/2'),
(1337, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/assesment/result/2'),
(1338, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1339, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1340, NULL, NULL, '/TA_Ubilearn/siswa/assignment_detail/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1341, NULL, NULL, '/TA_Ubilearn/siswa/assignment/upload_assignment/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/assignment_detail/2'),
(1342, NULL, NULL, '/TA_Ubilearn/siswa/assignment_detail/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/assignment_detail/2'),
(1343, NULL, NULL, '/TA_Ubilearn/siswa/assignment/upload_assignment/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/assignment_detail/2'),
(1344, NULL, NULL, '/TA_Ubilearn/siswa/assignment_detail/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/assignment_detail/2'),
(1345, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/assignment_detail/2'),
(1346, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/assignment_detail/2'),
(1347, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1348, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1349, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1350, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1351, NULL, NULL, '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1352, NULL, NULL, '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1353, NULL, NULL, '/TA_Ubilearn/siswa/course_close/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course'),
(1354, NULL, NULL, '/TA_Ubilearn/siswa/course_close/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course'),
(1355, NULL, NULL, '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1356, NULL, NULL, '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1357, NULL, NULL, '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1358, NULL, NULL, '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1359, NULL, NULL, '/TA_Ubilearn/siswa/course_close/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course'),
(1360, NULL, NULL, '/TA_Ubilearn/siswa/course_close/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course'),
(1361, NULL, NULL, '/TA_Ubilearn/siswa/enrol/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_close/14'),
(1362, NULL, NULL, '/TA_Ubilearn/siswa/enrol/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_close/14'),
(1363, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_close/14'),
(1364, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_close/14'),
(1365, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1366, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1367, NULL, NULL, '/TA_Ubilearn/siswa/assignment_detail/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1368, NULL, NULL, '/TA_Ubilearn/siswa/assignment/upload_assignment/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/assignment_detail/2'),
(1369, NULL, NULL, '/TA_Ubilearn/siswa/assignment_detail/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/assignment_detail/2'),
(1370, NULL, NULL, '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/assignment_detail/2'),
(1371, NULL, NULL, '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/assignment_detail/2'),
(1372, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course'),
(1373, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course'),
(1374, NULL, NULL, '/TA_Ubilearn/siswa/akun', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1375, NULL, NULL, '/TA_Ubilearn/siswa/akun', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1376, NULL, NULL, '/TA_Ubilearn/siswa/akun/update_user', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/akun'),
(1377, NULL, NULL, '/TA_Ubilearn/siswa/akun/update_user', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/akun'),
(1378, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/akun'),
(1379, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1380, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1381, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1382, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1383, NULL, NULL, '/TA_Ubilearn/instruktur/MyCourse', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(1384, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/MyCourse'),
(1385, NULL, NULL, '/TA_Ubilearn/instruktur/assignment/result_siswa_assignment/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1386, NULL, NULL, '/TA_Ubilearn/instruktur/assignment/result_siswa_assignment/images/DB_16%D1%8516.png', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/assignment/result_siswa_assignment/2'),
(1387, NULL, NULL, '/TA_Ubilearn/instruktur/assignment/result_siswa_assignment/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1388, NULL, NULL, '/TA_Ubilearn/instruktur/assignment/result_siswa_assignment/images/DB_16%D1%8516.png', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/assignment/result_siswa_assignment/2'),
(1389, NULL, NULL, '/TA_Ubilearn/instruktur/assignment/result_siswa_assignment/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1390, NULL, NULL, '/TA_Ubilearn/instruktur/assignment/result_siswa_assignment/images/DB_16%D1%8516.png', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/assignment/result_siswa_assignment/2'),
(1391, NULL, NULL, '/TA_Ubilearn/instruktur/MyCourse', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/assignment/result_siswa_assignment/2'),
(1392, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/MyCourse'),
(1393, NULL, NULL, '/TA_Ubilearn/instruktur/add_lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1394, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/MyCourse'),
(1395, NULL, NULL, '/TA_Ubilearn/instruktur/content/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1396, NULL, NULL, '/TA_Ubilearn/instruktur/edit_content/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/content/10'),
(1397, NULL, NULL, '/TA_Ubilearn/instruktur/content/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1398, NULL, NULL, '/TA_Ubilearn/instruktur/add_content/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/content/10'),
(1399, NULL, NULL, '/TA_Ubilearn/instruktur/add_content/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/content/10'),
(1400, NULL, NULL, '/TA_Ubilearn/instruktur/add_content/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/content/10'),
(1401, NULL, NULL, '/TA_Ubilearn/instruktur/MyCourse', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_content/10'),
(1402, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/MyCourse'),
(1403, NULL, NULL, '/TA_Ubilearn/instruktur/add_assignment/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1404, NULL, NULL, '/TA_Ubilearn/instruktur/add_assignment/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1405, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_assignment/14'),
(1406, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/add_assignment/14'),
(1407, NULL, NULL, '/TA_Ubilearn/instruktur/MyCourse', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(1408, NULL, NULL, '/TA_Ubilearn/instruktur/MyCourse', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/MyCourse'),
(1409, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/MyCourse'),
(1410, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/MyCourse'),
(1411, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/MyCourse'),
(1412, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/MyCourse'),
(1413, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/MyCourse'),
(1414, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/MyCourse'),
(1415, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/MyCourse'),
(1416, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/MyCourse'),
(1417, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/MyCourse'),
(1418, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/MyCourse'),
(1419, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/MyCourse'),
(1420, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1421, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1422, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1423, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1424, NULL, NULL, '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1425, NULL, NULL, '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1426, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course'),
(1427, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course'),
(1428, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course'),
(1429, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course'),
(1430, NULL, NULL, '/TA_Ubilearn/siswa/materi/11', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1431, NULL, NULL, '/TA_Ubilearn/siswa/materi/11', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1432, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course'),
(1433, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course'),
(1434, NULL, NULL, '/TA_Ubilearn/siswa/materi/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1435, NULL, NULL, '/TA_Ubilearn/siswa/materi/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1436, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course'),
(1437, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course'),
(1438, NULL, NULL, '/TA_Ubilearn/siswa/materi/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1439, NULL, NULL, '/TA_Ubilearn/siswa/materi/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1440, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course'),
(1441, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course'),
(1442, NULL, NULL, '/TA_Ubilearn/siswa/materi/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1443, NULL, NULL, '/TA_Ubilearn/siswa/materi/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1444, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course'),
(1445, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course'),
(1446, NULL, NULL, '/TA_Ubilearn/siswa/materi/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1447, NULL, NULL, '/TA_Ubilearn/siswa/materi/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1448, NULL, NULL, '/TA_Ubilearn/siswa/content/video/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/materi/10'),
(1449, NULL, NULL, '/TA_Ubilearn/siswa/content/video/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/materi/10'),
(1450, NULL, NULL, '/TA_Ubilearn/siswa/materi/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1451, NULL, NULL, '/TA_Ubilearn/siswa/materi/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1452, NULL, NULL, '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/materi/10'),
(1453, NULL, NULL, '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/materi/10'),
(1454, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course'),
(1455, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course'),
(1456, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course'),
(1457, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course'),
(1458, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course'),
(1459, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course'),
(1460, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course'),
(1461, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course'),
(1462, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course'),
(1463, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course'),
(1464, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course'),
(1465, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course'),
(1466, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course'),
(1467, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course'),
(1468, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course'),
(1469, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course'),
(1470, NULL, NULL, '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1471, NULL, NULL, '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1472, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course'),
(1473, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course'),
(1474, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1475, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1476, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1477, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1478, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1479, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1480, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1481, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1482, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1483, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1484, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1485, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1486, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1487, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1488, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1489, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1490, NULL, NULL, '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1491, NULL, NULL, '/TA_Ubilearn/siswa/course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1492, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course'),
(1493, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course'),
(1494, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1495, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1496, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course'),
(1497, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1498, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1499, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1500, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1501, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1502, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1503, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1504, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1505, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1506, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1507, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1508, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1509, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1510, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1511, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1512, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1513, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1514, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1515, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1516, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1517, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1518, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1519, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1520, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1521, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1522, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1523, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1524, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14');
INSERT INTO `usertracking` (`id`, `session_id`, `user_identifier`, `request_uri`, `timestamp`, `client_ip`, `client_user_agent`, `referer_page`) VALUES
(1525, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1526, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1527, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1528, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1529, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1530, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1531, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1532, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1533, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1534, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1535, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1536, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1537, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1538, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1539, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1540, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1541, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1542, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1543, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1544, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1545, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1546, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1547, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1548, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1549, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1550, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1551, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1552, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1553, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1554, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1555, NULL, NULL, '/TA_Ubilearn/siswa/assignment_detail/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1556, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1557, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1558, NULL, NULL, '/TA_Ubilearn/siswa/assignment_detail/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1559, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1560, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1561, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1562, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1563, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1564, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1565, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1566, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1567, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1568, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1569, NULL, NULL, '/TA_Ubilearn/siswa/assesment_doing/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/assesment_info/2'),
(1570, NULL, NULL, '/TA_Ubilearn/siswa/assesment_doing/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/assesment_info/2'),
(1571, NULL, NULL, '/TA_Ubilearn/siswa/assesment/result/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/assesment_info/2'),
(1572, NULL, NULL, '/TA_Ubilearn/siswa/assesment/result/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/assesment_info/2'),
(1573, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1574, NULL, NULL, '/TA_Ubilearn/siswa/assesment_info/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1575, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1576, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1577, NULL, NULL, '/TA_Ubilearn/siswa/materi/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1578, NULL, NULL, '/TA_Ubilearn/siswa/materi/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1579, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1580, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1581, NULL, NULL, '/TA_Ubilearn/siswa/materi/11', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1582, NULL, NULL, '/TA_Ubilearn/siswa/materi/11', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1583, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1584, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1585, NULL, NULL, '/TA_Ubilearn/siswa/materi/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1586, NULL, NULL, '/TA_Ubilearn/siswa/materi/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1587, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1588, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1589, NULL, NULL, '/TA_Ubilearn/siswa/materi/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1590, NULL, NULL, '/TA_Ubilearn/siswa/materi/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1591, NULL, NULL, '/TA_Ubilearn/siswa/materi/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1592, NULL, NULL, '/TA_Ubilearn/siswa/materi/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1593, NULL, NULL, '/TA_Ubilearn/siswa/materi/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1594, NULL, NULL, '/TA_Ubilearn/siswa/materi/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1595, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1596, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1597, NULL, NULL, '/TA_Ubilearn/siswa/materi/11', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1598, NULL, NULL, '/TA_Ubilearn/siswa/materi/11', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1599, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1600, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1601, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1602, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1603, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1604, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1605, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1606, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1607, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1608, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1609, NULL, NULL, '/TA_Ubilearn/instruktur/lesson', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(1610, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1611, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1612, NULL, NULL, '/TA_Ubilearn/instruktur/MyCourse', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(1613, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/MyCourse'),
(1614, NULL, NULL, '/TA_Ubilearn/instruktur/content/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1615, NULL, NULL, '/TA_Ubilearn/instruktur/content/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1616, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/MyCourse'),
(1617, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/MyCourse'),
(1618, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/MyCourse'),
(1619, NULL, NULL, '/TA_Ubilearn/instruktur/MyCourse', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(1620, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/MyCourse'),
(1621, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1622, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1623, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1624, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1625, NULL, NULL, '/TA_Ubilearn/siswa/result/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1626, NULL, NULL, '/TA_Ubilearn/siswa/result/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1627, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1628, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1629, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1630, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1631, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1632, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1633, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1634, NULL, NULL, '/TA_Ubilearn/instruktur/lesson', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(1635, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1636, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1637, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1638, NULL, NULL, '/TA_Ubilearn/instruktur/lesson', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(1639, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1640, NULL, NULL, '/TA_Ubilearn/instruktur/MyCourse', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(1641, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/MyCourse'),
(1642, NULL, NULL, '/TA_Ubilearn/instruktur/MyCourse', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(1643, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1644, NULL, NULL, '/TA_Ubilearn/instruktur/lesson', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(1645, NULL, NULL, '/TA_Ubilearn/instruktur/lesson', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(1646, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1647, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1648, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/43', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(1649, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1650, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1651, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(1652, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(1653, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(1654, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(1655, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(1656, NULL, NULL, '/TA_Ubilearn/instruktur/akun', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1657, NULL, NULL, '/TA_Ubilearn/instruktur/edit_akun', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/akun'),
(1658, NULL, NULL, '/TA_Ubilearn/instruktur/akun', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1659, NULL, NULL, '/TA_Ubilearn/instruktur/edit_akun', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/akun'),
(1660, NULL, NULL, '/TA_Ubilearn/instruktur/akun', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1661, NULL, NULL, '/TA_Ubilearn/instruktur/edit_akun', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/akun'),
(1662, NULL, NULL, '/TA_Ubilearn/instruktur/akun', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1663, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(1664, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(1665, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(1666, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(1667, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(1668, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(1669, NULL, NULL, '/TA_Ubilearn/instruktur/akun', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1670, NULL, NULL, '/TA_Ubilearn/instruktur/edit_akun', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/akun'),
(1671, NULL, NULL, '/TA_Ubilearn/instruktur/akun', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1672, NULL, NULL, '/TA_Ubilearn/instruktur/akun', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1673, NULL, NULL, '/TA_Ubilearn/instruktur/edit_akun', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/akun'),
(1674, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/akun'),
(1675, NULL, NULL, '/TA_Ubilearn/instruktur/akun', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(1676, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/akun'),
(1677, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/akun'),
(1678, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/akun'),
(1679, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/akun'),
(1680, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/akun'),
(1681, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/akun'),
(1682, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/akun'),
(1683, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/akun'),
(1684, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(1685, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/akun'),
(1686, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(1687, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/akun'),
(1688, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/akun'),
(1689, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/akun'),
(1690, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/akun'),
(1691, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/akun'),
(1692, NULL, NULL, '/TA_Ubilearn/instruktur/akun', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(1693, NULL, NULL, '/TA_Ubilearn/instruktur/edit_akun', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/akun'),
(1694, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/akun'),
(1695, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(1696, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(1697, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1698, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1699, NULL, NULL, '/TA_Ubilearn/siswa/akun', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1700, NULL, NULL, '/TA_Ubilearn/siswa/akun', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1701, NULL, NULL, '/TA_Ubilearn/siswa/akun/update_user', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/akun'),
(1702, NULL, NULL, '/TA_Ubilearn/siswa/akun/update_user', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/akun'),
(1703, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/akun'),
(1704, NULL, NULL, '/TA_Ubilearn/siswa/akun', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1705, NULL, NULL, '/TA_Ubilearn/siswa/akun', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1706, NULL, NULL, '/TA_Ubilearn/siswa/akun/update_user', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/akun'),
(1707, NULL, NULL, '/TA_Ubilearn/siswa/akun/update_user', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/akun'),
(1708, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/akun'),
(1709, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1710, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1711, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1712, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1713, NULL, NULL, '/TA_Ubilearn/siswa/assignment_detail/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1714, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1715, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1716, NULL, NULL, '/TA_Ubilearn/siswa/assignment_detail/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14');
INSERT INTO `usertracking` (`id`, `session_id`, `user_identifier`, `request_uri`, `timestamp`, `client_ip`, `client_user_agent`, `referer_page`) VALUES
(1717, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1718, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/my_course'),
(1719, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1720, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1721, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1722, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1723, NULL, NULL, '/TA_Ubilearn/instruktur/MyCourse', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(1724, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/MyCourse'),
(1725, NULL, NULL, '/TA_Ubilearn/instruktur/edit_assignment/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1726, NULL, NULL, '/TA_Ubilearn/instruktur/assignment/update_asing', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/edit_assignment/1'),
(1727, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/edit_assignment/1'),
(1728, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1729, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1730, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1731, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1732, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1733, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1734, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1735, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1736, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1737, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1738, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1739, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1740, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1741, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1742, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1743, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1744, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1745, NULL, NULL, '/TA_Ubilearn/siswa/my_course', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1746, NULL, NULL, '/TA_Ubilearn/siswa/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1747, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1748, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1749, NULL, NULL, '/TA_Ubilearn/siswa/assignment_detail/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1750, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1751, NULL, NULL, '/TA_Ubilearn/siswa/course_detail/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/dashboard'),
(1752, NULL, NULL, '/TA_Ubilearn/logout', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1753, NULL, NULL, '/TA_Ubilearn/signin', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/course_detail/14'),
(1754, NULL, NULL, '/TA_Ubilearn/C_login/masuk', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1755, NULL, NULL, '/TA_Ubilearn/instruktur/dashboard', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/signin'),
(1756, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(1757, NULL, NULL, '/TA_Ubilearn/instruktur/assignment/result_siswa_assignment/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1758, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(1759, NULL, NULL, '/TA_Ubilearn/instruktur/edit_assignment/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1760, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(1761, NULL, NULL, '/TA_Ubilearn/instruktur/edit_assignment/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1762, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(1763, NULL, NULL, '/TA_Ubilearn/instruktur/content/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1764, NULL, NULL, '/TA_Ubilearn/instruktur/edit_content/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/content/10'),
(1765, NULL, NULL, '/TA_Ubilearn/instruktur/content/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1766, NULL, NULL, '/TA_Ubilearn/instruktur/edit_content/2', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/content/10'),
(1767, NULL, NULL, '/TA_Ubilearn/instruktur/content/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1768, NULL, NULL, '/TA_Ubilearn/instruktur/add_content/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/content/10'),
(1769, NULL, NULL, '/TA_Ubilearn/instruktur/content/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1770, NULL, NULL, '/TA_Ubilearn/instruktur/add_content/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/content/10'),
(1771, NULL, NULL, '/TA_Ubilearn/instruktur/content/10', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1772, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(1773, NULL, NULL, '/TA_Ubilearn/instruktur/add_assignment/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1774, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(1775, NULL, NULL, '/TA_Ubilearn/instruktur/edit_assignment/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1776, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/dashboard'),
(1777, NULL, NULL, '/TA_Ubilearn/instruktur/edit_assignment/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1778, NULL, NULL, '/TA_Ubilearn/instruktur/edit_assignment/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1779, NULL, NULL, '/TA_Ubilearn/instruktur/edit_assignment/1', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/lesson/14'),
(1780, NULL, NULL, '/TA_Ubilearn/instruktur/assignment/update_asing', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/edit_assignment/1'),
(1781, NULL, NULL, '/TA_Ubilearn/instruktur/lesson/14', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/instruktur/edit_assignment/1');

-- --------------------------------------------------------

--
-- Table structure for table `user_event_log`
--

CREATE TABLE `user_event_log` (
  `id` int(11) NOT NULL,
  `event_log_name` varchar(100) DEFAULT NULL,
  `event_log_des` varchar(255) DEFAULT NULL,
  `user_event_type` varchar(45) DEFAULT NULL,
  `event_log_user_id` int(11) DEFAULT NULL,
  `event_log_time` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_event_log`
--

INSERT INTO `user_event_log` (`id`, `event_log_name`, `event_log_des`, `user_event_type`, `event_log_user_id`, `event_log_time`) VALUES
(1, 'user_first_log_in', '用户首次注册', 'user_score', 1, '2018-03-01 09:34:45'),
(2, 'nhfjso243085s7v1nlmmnjh0vcj4qdc1', '/TA_Ubilearn/example', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) App', 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_logs`
--

CREATE TABLE `user_logs` (
  `log_id` int(10) NOT NULL,
  `log_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `usr_id` int(10) UNSIGNED NOT NULL,
  `log_event_context` varchar(100) NOT NULL,
  `log_name` varchar(100) NOT NULL,
  `log_origin` varchar(100) NOT NULL,
  `log_ip` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

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
  ADD UNIQUE KEY `ass_tipe` (`ass_tipe`),
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
-- Indexes for table `course_assignment`
--
ALTER TABLE `course_assignment`
  ADD PRIMARY KEY (`asg_id`),
  ADD KEY `course_assignment_foreign` (`crs_id`);

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
-- Indexes for table `course_enrol_detail`
--
ALTER TABLE `course_enrol_detail`
  ADD PRIMARY KEY (`end_id`),
  ADD KEY `enrol_details_foreign` (`usr_id`),
  ADD KEY `enrol_enrol_details_foreign` (`enr_id`);

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
  ADD UNIQUE KEY `usr_kode` (`usr_kode`);

--
-- Indexes for table `usertracking`
--
ALTER TABLE `usertracking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_event_log`
--
ALTER TABLE `user_event_log`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `crs_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `course_assesment`
--
ALTER TABLE `course_assesment`
  MODIFY `ass_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `course_assesment_question`
--
ALTER TABLE `course_assesment_question`
  MODIFY `qst_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `course_assesment_questions_answer`
--
ALTER TABLE `course_assesment_questions_answer`
  MODIFY `ans_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `course_assesment_questions_answer_of_student`
--
ALTER TABLE `course_assesment_questions_answer_of_student`
  MODIFY `ast_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `course_assignment`
--
ALTER TABLE `course_assignment`
  MODIFY `asg_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `course_assignment_submission`
--
ALTER TABLE `course_assignment_submission`
  MODIFY `sub_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `course_category`
--
ALTER TABLE `course_category`
  MODIFY `cat_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course_content`
--
ALTER TABLE `course_content`
  MODIFY `cnt_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `course_enrol`
--
ALTER TABLE `course_enrol`
  MODIFY `enr_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `course_enrol_detail`
--
ALTER TABLE `course_enrol_detail`
  MODIFY `end_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_forum`
--
ALTER TABLE `course_forum`
  MODIFY `cfr_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_forum_thread`
--
ALTER TABLE `course_forum_thread`
  MODIFY `cft_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_forum_thread_reply`
--
ALTER TABLE `course_forum_thread_reply`
  MODIFY `ftr_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_forum_thread_reply_reply`
--
ALTER TABLE `course_forum_thread_reply_reply`
  MODIFY `trr_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_forum_thread_reply_reply_reply`
--
ALTER TABLE `course_forum_thread_reply_reply_reply`
  MODIFY `rrr_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_learning_outcomes`
--
ALTER TABLE `course_learning_outcomes`
  MODIFY `loc_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `course_lesson`
--
ALTER TABLE `course_lesson`
  MODIFY `lsn_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
  MODIFY `usr_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `usertracking`
--
ALTER TABLE `usertracking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1782;

--
-- AUTO_INCREMENT for table `user_event_log`
--
ALTER TABLE `user_event_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_logs`
--
ALTER TABLE `user_logs`
  MODIFY `log_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

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
-- Constraints for table `course_assignment`
--
ALTER TABLE `course_assignment`
  ADD CONSTRAINT `course_assignment_foreign` FOREIGN KEY (`crs_id`) REFERENCES `course` (`crs_id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
-- Constraints for table `course_enrol_detail`
--
ALTER TABLE `course_enrol_detail`
  ADD CONSTRAINT `enrol_enrol_details_foreign` FOREIGN KEY (`enr_id`) REFERENCES `course_enrol` (`enr_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `enrol_users_foreign` FOREIGN KEY (`usr_id`) REFERENCES `users` (`usr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
-- Constraints for table `user_logs`
--
ALTER TABLE `user_logs`
  ADD CONSTRAINT `user_log_foreign` FOREIGN KEY (`usr_id`) REFERENCES `users` (`usr_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
