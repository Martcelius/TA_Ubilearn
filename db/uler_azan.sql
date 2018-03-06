-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 05 Mar 2018 pada 11.04
-- Versi Server: 10.1.26-MariaDB
-- PHP Version: 7.1.8

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
-- Struktur dari tabel `course`
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
-- Dumping data untuk tabel `course`
--

INSERT INTO `course` (`crs_id`, `crs_code`, `crs_name`, `crs_summary`, `crs_univ`, `crs_timecreated`, `crs_timemodified`, `cat_id`, `usr_id`) VALUES
(2, 'KK22', 'Juvetic', 'asdfkjk as', 'Universitas Komedian', '2018-01-31 04:15:39', '2018-01-31 04:15:39', 1, 3),
(3, 'Injek2', 'Evvean', 'aaaaaa 23\r', 'Universitas Komedian', '2018-01-31 04:16:12', '2018-01-31 04:16:12', 1, 5),
(5, 'Injek22', 'Evvean', 'aaaaaa 23\r\n123\r\n123\r\n123\r\n124\r\n1243\r\n2 rf\r\na\r\n1234\r\n', 'Universitas Komedian', '2018-01-31 04:23:00', '2018-01-31 04:23:00', 1, 6),
(6, 'Injeksi221', 'Teu dicalana', 'Moal dicalana dicalana club', 'Univ Komedi', '2018-02-01 01:04:10', '2018-02-01 01:04:10', 1, 3),
(7, 'Polisu23', 'Polisi Lalu Lintas', 'Mempolisikan Diri', 'Polisi Bandung', '2018-02-01 01:04:33', '2018-02-01 01:04:33', 1, 3),
(8, 'Merdi22', 'Merda Merdi', 'Merda aklsdfj iawefq jafj asdklf jawioef j', 'Univvean', '2018-02-01 01:04:55', '2018-02-01 01:04:55', 1, 3),
(9, 'JJK99', 'Penambangan Teks', 'Teksmin aip aip aip aip aip aip aip kasep', 'Universitas Aip Club', '2018-02-01 01:05:33', '2018-02-01 01:05:33', 1, 3),
(10, 'AIP22', 'Penambangan Data', 'Damin aip aip aip aip aip aip aip kasep', 'Universitas Aip Club', '2018-02-01 01:05:48', '2018-02-01 01:05:48', 1, 3),
(11, 'ADD', 'Stupid Mana', 'lasdfklasjdflkasjdflk', 'Kon sama', '2018-02-26 23:53:50', '2018-02-26 23:53:50', 1, 4),
(12, 'CRS01', 'MA KRUS', 'KRUS INI KRUS TERBAOX', 'Universitas KRUS', '2018-03-01 03:37:54', '2018-03-01 03:37:54', 1, 37),
(13, 'QWE123', 'Untuk User A', 'qweqwe', 'Comedian', '2018-03-03 03:19:23', '2018-03-03 03:19:23', 1, 39);

-- --------------------------------------------------------

--
-- Struktur dari tabel `course_assesment`
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

-- --------------------------------------------------------

--
-- Struktur dari tabel `course_assesment_question`
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

-- --------------------------------------------------------

--
-- Struktur dari tabel `course_assesment_questions_answer`
--

CREATE TABLE `course_assesment_questions_answer` (
  `ans_id` int(10) UNSIGNED NOT NULL,
  `ans_text` varchar(500) NOT NULL,
  `ans_point` decimal(12,7) DEFAULT NULL,
  `qst_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `course_assesment_questions_answer_of_student`
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
-- Struktur dari tabel `course_assignment`
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
-- Struktur dari tabel `course_assignment_submission`
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
-- Struktur dari tabel `course_category`
--

CREATE TABLE `course_category` (
  `cat_id` int(10) UNSIGNED NOT NULL,
  `cat_name` varchar(50) NOT NULL,
  `cat_timecreated` timestamp NULL DEFAULT NULL,
  `cat_timemodified` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `course_category`
--

INSERT INTO `course_category` (`cat_id`, `cat_name`, `cat_timecreated`, `cat_timemodified`) VALUES
(1, 'Teknik Informatika', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `course_content`
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
-- Struktur dari tabel `course_enrol`
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
-- Dumping data untuk tabel `course_enrol`
--

INSERT INTO `course_enrol` (`enr_id`, `enr_status`, `enr_timecreated`, `enr_timemodified`, `usr_id`, `crs_id`) VALUES
(1, 'Diambil', '2018-03-03 03:23:12', '2018-03-03 03:23:12', 40, 13);

-- --------------------------------------------------------

--
-- Struktur dari tabel `course_enrol_detail`
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
-- Struktur dari tabel `course_forum`
--

CREATE TABLE `course_forum` (
  `cfr_id` int(10) UNSIGNED NOT NULL,
  `cfr_title` varchar(75) NOT NULL,
  `cfr_desc` varchar(150) NOT NULL,
  `usr_id` int(10) UNSIGNED NOT NULL,
  `lsn_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `course_forum`
--

INSERT INTO `course_forum` (`cfr_id`, `cfr_title`, `cfr_desc`, `usr_id`, `lsn_id`) VALUES
(1, 'Teori Tentang Klasifikasi', 'Bagaimanapun sedikitpun sama sekali euyyyyy', 3, 1),
(2, 'Ngoding Klasifikasi', 'Injeksi bos', 3, 1),
(3, 'Dolan GBLG', 'askjdfh kjasdhf kjasdhf jkhasdkjf hkajsdf ', 11, 2),
(4, 'WQWE', '<p>TESTING123</p>\r\n', 39, 8),
(7, 'Forum di Lesson 1', '<p>Test forum Lesson 1</p>\r\n', 39, 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `course_forum_thread`
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

--
-- Dumping data untuk tabel `course_forum_thread`
--

INSERT INTO `course_forum_thread` (`cft_id`, `cft_title`, `cft_content`, `cft_rated`, `cft_timecreated`, `cft_timemodified`, `cfr_id`, `usr_id`) VALUES
(1, 'Injek Thread Forum #1', NULL, NULL, '2018-02-28 05:25:35', '2018-02-28 10:32:42', 3, 13),
(2, 'Injek Thread Forum #2', NULL, NULL, '2018-02-28 05:25:35', '2018-02-28 10:32:42', 3, 13),
(6, 'aTEST', '<p>sdfdsfdsfs</p>\r\n', NULL, '2018-03-05 01:46:59', '2018-03-05 01:46:59', 7, 40),
(8, 'asd', '<p>asd</p>\r\n', NULL, '2018-03-05 03:57:46', '2018-03-05 03:57:46', 4, 40),
(9, '123', '<p>123</p>\r\n', NULL, '2018-03-05 03:59:22', '2018-03-05 03:59:22', 4, 40);

-- --------------------------------------------------------

--
-- Struktur dari tabel `course_forum_thread_reply`
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
-- Struktur dari tabel `course_forum_thread_reply_reply`
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
-- Struktur dari tabel `course_forum_thread_reply_reply_reply`
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
-- Struktur dari tabel `course_learning_outcomes`
--

CREATE TABLE `course_learning_outcomes` (
  `loc_id` int(10) UNSIGNED NOT NULL,
  `loc_desc` varchar(50) NOT NULL,
  `loc_timecreated` timestamp NULL DEFAULT NULL,
  `loc_timemodified` timestamp NULL DEFAULT NULL,
  `crs_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `course_learning_outcomes`
--

INSERT INTO `course_learning_outcomes` (`loc_id`, `loc_desc`, `loc_timecreated`, `loc_timemodified`, `crs_id`) VALUES
(1, 'Mengimplementasikan Klasifikasi Data', '2018-01-31 17:00:00', '2018-01-31 17:00:00', 7),
(2, 'Menjelaskan Klasifikasi Data', '2018-01-31 17:00:00', '2018-01-31 17:00:00', 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `course_lesson`
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
-- Dumping data untuk tabel `course_lesson`
--

INSERT INTO `course_lesson` (`lsn_id`, `lsn_name`, `lsn_intro`, `lsn_timecreated`, `lsn_timemodified`, `crs_id`) VALUES
(1, 'Klasifikasi', 'Klasifikasi data enjoy', '2018-01-31 17:00:00', '2018-01-31 17:00:00', 8),
(2, 'Klasterisasi', 'Klasterisasi Data Enjoy', '2018-01-31 17:00:00', '2018-01-31 17:00:00', 8),
(4, 'Single Linked List', 'bos', '2018-02-12 01:02:01', '2018-02-12 01:02:01', 5),
(5, 'Double Linked List', 'gdfgdfg', '2018-02-12 01:02:39', '2018-02-12 01:02:39', 5),
(6, 'Multi Linked List', 'gdfgdfgfff', '2018-02-12 01:03:27', '2018-02-12 01:03:27', 5),
(7, 'Circular Linked List', 'aaa', '2018-02-12 01:04:23', '2018-02-12 01:04:23', 5),
(8, 'Lesson 1', '<p>asd</p>\r\n', '2018-03-03 03:20:07', '2018-03-03 03:20:07', 13),
(9, 'Lesson 2', '<p>asdasdsa</p>\r\n', '2018-03-03 04:44:59', '2018-03-03 04:44:59', 13);

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `rol_id` int(10) UNSIGNED NOT NULL,
  `rol_name` varchar(50) NOT NULL,
  `rol_timecreated` timestamp NULL DEFAULT NULL,
  `rol_timemodified` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `university`
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
-- Dumping data untuk tabel `university`
--

INSERT INTO `university` (`unv_id`, `unv_name`, `unv_latlong`, `unv_address`, `unv_contact`, `unv_email`, `unv_website`, `unv_stats`, `unv_timecreated`, `unv_timemodified`) VALUES
(1, 'Polisi Bandung', NULL, 'Kantor Polisi', 'Polban', 'Polbin@polban.com', 'Pol', 'Ban', '2018-02-12 00:02:01', '2018-02-12 00:02:01'),
(2, '14124', NULL, 'asdfsadf', '124124', 'asdfasdf@asdf', '124124', 'asdfsadf', '2018-02-12 00:14:45', '2018-02-12 00:14:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`usr_id`, `usr_kode`, `usr_username`, `usr_firstname`, `usr_lastname`, `usr_password`, `usr_email`, `usr_picture`, `usr_gpa`, `usr_timecreated`, `usr_timemodified`, `usr_level`, `usr_jk`, `usr_tgllahir`) VALUES
(1, NULL, 'admin', 'admin', 'uler', 'admin', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(2, NULL, 'dummy', 'dummy', 'uler', 'dummy', NULL, NULL, NULL, NULL, NULL, '2', NULL, NULL),
(3, 'DNH', 'dade', 'Dade', 'Nurjanah', 'dade', NULL, 'dade1518416677.jpg', NULL, NULL, '2018-02-12 00:24:38', '', NULL, NULL),
(4, 'NDN', 'anisa', 'Anisa', 'Herdiani', 'anisa', NULL, NULL, NULL, NULL, NULL, '3', NULL, NULL),
(5, 'NKS', 'nungki', 'Nungki', 'Selviandro', 'nungki', NULL, NULL, NULL, NULL, NULL, '3', NULL, NULL),
(6, 'SFY', 'said', 'Said', 'Al Faraby', 'said', NULL, NULL, NULL, NULL, NULL, '3', NULL, NULL),
(7, 'MAB', 'arif', 'Arif', 'Bijaksana', 'arif', NULL, NULL, NULL, NULL, NULL, '3', NULL, NULL),
(8, 'VRE', 'vero', 'Veronikha', 'Effendy', 'vero', NULL, NULL, NULL, NULL, NULL, '3', NULL, NULL),
(9, 'DJN', 'danang', 'Danang', 'Junaedi', 'danang', NULL, NULL, NULL, NULL, NULL, '3', NULL, NULL),
(10, 'IDL', 'indra', 'Indra', 'Lukmana', 'indra', NULL, NULL, NULL, NULL, NULL, '3', NULL, NULL),
(11, 'MDI', 'dickson', 'Mohamad', 'Dickson', 'dickson', NULL, NULL, NULL, NULL, NULL, '3', NULL, NULL),
(12, 'SYP', 'shinta', 'Shinta', 'Yulia', 'shinta', NULL, NULL, NULL, NULL, NULL, '3', NULL, NULL),
(13, NULL, 'olen', 'Olen', 'Olen', 'olen', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL),
(14, NULL, 'dolan', 'Dolan', 'Gblg', 'dolan', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL),
(15, NULL, 'juvetic', 'Gianluigi', 'Juvetic', 'juvetic', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL),
(16, NULL, 'luna', 'Luna', 'Moonfang', 'luna', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL),
(17, NULL, 'pevitot', 'Pevitot', 'Injeksi', 'pevitot', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL),
(18, NULL, 'ikento', 'Ikento', 'Injeinje', 'ikento', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL),
(19, NULL, 'jenifer', 'Jenifer', 'Dolan', 'jenifer', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL),
(20, NULL, 'aweci', 'Aweci', 'CC', 'aweci', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL),
(21, NULL, 'ciwastra', 'Ciwastra', 'Margahayu', 'ciwastra', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL),
(22, NULL, 'jasuke', 'Jasuke', 'Idolaque', 'jasuke', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL),
(23, NULL, 'oliver', 'Oliver', 'Queen', 'oliver', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL),
(24, NULL, 'thea', 'Thea', 'Queen', 'thea', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL),
(25, NULL, 'laurel', 'Laurel', 'Lance', 'laurel', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL),
(26, NULL, 'bruce', 'Bruce', 'Wayne', 'bruce', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL),
(27, NULL, 'frodo', 'Frodo', 'Baggines', 'frodo', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL),
(28, NULL, 'caitlin', 'Caitlin', 'Snow', 'caitlin', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL),
(29, NULL, 'patty', 'Patty', 'Spivot', 'patty', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL),
(30, NULL, 'barry', 'Bartholomeuw', 'Allen', 'barry', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL),
(31, NULL, 'felicity', 'Felicity', 'Smoak', 'felicity', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL),
(32, NULL, 'cayden', 'Cayden', 'James', 'cayden', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL),
(33, NULL, 'arwen', 'Arwen', 'Lady', 'arwen', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL),
(34, NULL, 'sizuka', 'Sizuka', 'Suzuki', 'sizuka', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL),
(35, NULL, 'arzuko', 'Arzuko', 'Mawa Golok', 'arzuko', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL),
(36, NULL, 'gblg', 'Gblg', 'Anjg', 'gblg', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL),
(37, NULL, 'injeksibos', 'injek', 'atuh', 'f634cd7228dd922d43321698ed498291', 'injek@gmail.com', NULL, NULL, NULL, NULL, '3', NULL, NULL),
(38, NULL, 'makrus', 'makrus', 'makrus', 'f634cd7228dd922d43321698ed498291', NULL, NULL, NULL, NULL, NULL, '2', NULL, NULL),
(39, 'SPG', 'a', 'a', 'a', '0cc175b9c0f1b6a831c399e269772661', 'a@gmail.com', 'avatar_default.jpg', NULL, NULL, NULL, '3', '1', '0001-11-11'),
(40, NULL, 's', 's', 's', '03c7c0ace395d80182db07ae2c30f034', 's@gmail.com', 'avatar_default.jpg', NULL, NULL, NULL, '2', '1', '0001-11-11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `usertracking`
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
-- Dumping data untuk tabel `usertracking`
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
(869, NULL, NULL, '/TA_Ubilearn/siswa/list_thread_siswa/4', '0000-00-00 00:00:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'http://localhost/TA_Ubilearn/siswa/add_thread_siswa/4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_event_log`
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
-- Dumping data untuk tabel `user_event_log`
--

INSERT INTO `user_event_log` (`id`, `event_log_name`, `event_log_des`, `user_event_type`, `event_log_user_id`, `event_log_time`) VALUES
(1, 'user_first_log_in', '用户首次注册', 'user_score', 1, '2018-03-01 09:34:45'),
(2, 'nhfjso243085s7v1nlmmnjh0vcj4qdc1', '/TA_Ubilearn/example', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) App', 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_logs`
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
-- Dumping data untuk tabel `user_logs`
--

INSERT INTO `user_logs` (`log_id`, `log_time`, `usr_id`, `log_event_context`, `log_name`, `log_origin`, `log_ip`) VALUES
(1, '2018-02-28 11:13:21', 37, 'MODOL DI CALANA', 'MODIL', 'FIREFOX', '20.10.20.10');

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
  MODIFY `crs_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `course_assesment`
--
ALTER TABLE `course_assesment`
  MODIFY `ass_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `course_assesment_question`
--
ALTER TABLE `course_assesment_question`
  MODIFY `qst_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `course_assesment_questions_answer`
--
ALTER TABLE `course_assesment_questions_answer`
  MODIFY `ans_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `course_assesment_questions_answer_of_student`
--
ALTER TABLE `course_assesment_questions_answer_of_student`
  MODIFY `ast_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `course_assignment`
--
ALTER TABLE `course_assignment`
  MODIFY `asg_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `course_assignment_submission`
--
ALTER TABLE `course_assignment_submission`
  MODIFY `sub_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `course_category`
--
ALTER TABLE `course_category`
  MODIFY `cat_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `course_content`
--
ALTER TABLE `course_content`
  MODIFY `cnt_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `course_enrol`
--
ALTER TABLE `course_enrol`
  MODIFY `enr_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `course_enrol_detail`
--
ALTER TABLE `course_enrol_detail`
  MODIFY `end_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `course_forum`
--
ALTER TABLE `course_forum`
  MODIFY `cfr_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `course_forum_thread`
--
ALTER TABLE `course_forum_thread`
  MODIFY `cft_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
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
  MODIFY `loc_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `course_lesson`
--
ALTER TABLE `course_lesson`
  MODIFY `lsn_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
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
  MODIFY `usr_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `usertracking`
--
ALTER TABLE `usertracking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=870;
--
-- AUTO_INCREMENT for table `user_event_log`
--
ALTER TABLE `user_event_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_logs`
--
ALTER TABLE `user_logs`
  MODIFY `log_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_category_course_foreign` FOREIGN KEY (`cat_id`) REFERENCES `course_category` (`cat_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `course_user_foreign` FOREIGN KEY (`usr_id`) REFERENCES `users` (`usr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `course_assesment`
--
ALTER TABLE `course_assesment`
  ADD CONSTRAINT `course_assesment_foreign` FOREIGN KEY (`crs_id`) REFERENCES `course` (`crs_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `course_assesment_question`
--
ALTER TABLE `course_assesment_question`
  ADD CONSTRAINT `assesment_questions_foreign` FOREIGN KEY (`ass_id`) REFERENCES `course_assesment` (`ass_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `course_assesment_questions_answer`
--
ALTER TABLE `course_assesment_questions_answer`
  ADD CONSTRAINT `questions_answers_foreign` FOREIGN KEY (`qst_id`) REFERENCES `course_assesment_question` (`qst_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `course_assesment_questions_answer_of_student`
--
ALTER TABLE `course_assesment_questions_answer_of_student`
  ADD CONSTRAINT `answer_answerstudent_foreign` FOREIGN KEY (`ans_id`) REFERENCES `course_assesment_questions_answer` (`ans_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `assesment_answerstudent_foreign` FOREIGN KEY (`ass_id`) REFERENCES `course_assesment` (`ass_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_answerstudent_foreign` FOREIGN KEY (`usr_id`) REFERENCES `users` (`usr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `course_assignment`
--
ALTER TABLE `course_assignment`
  ADD CONSTRAINT `course_assignment_foreign` FOREIGN KEY (`crs_id`) REFERENCES `course` (`crs_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `course_assignment_submission`
--
ALTER TABLE `course_assignment_submission`
  ADD CONSTRAINT `assignment_submission_foreign` FOREIGN KEY (`asg_id`) REFERENCES `course_assignment` (`asg_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_submission_foreign` FOREIGN KEY (`usr_id`) REFERENCES `users` (`usr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `course_content`
--
ALTER TABLE `course_content`
  ADD CONSTRAINT `content_learningoutcomes_foreign` FOREIGN KEY (`loc_id`) REFERENCES `course_learning_outcomes` (`loc_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `content_lesson_foreign` FOREIGN KEY (`lsn_id`) REFERENCES `course_lesson` (`lsn_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `course_enrol`
--
ALTER TABLE `course_enrol`
  ADD CONSTRAINT `course_enrol_foreign` FOREIGN KEY (`crs_id`) REFERENCES `course` (`crs_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_enrol_foreign` FOREIGN KEY (`usr_id`) REFERENCES `users` (`usr_id`);

--
-- Ketidakleluasaan untuk tabel `course_enrol_detail`
--
ALTER TABLE `course_enrol_detail`
  ADD CONSTRAINT `enrol_enrol_details_foreign` FOREIGN KEY (`enr_id`) REFERENCES `course_enrol` (`enr_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `enrol_users_foreign` FOREIGN KEY (`usr_id`) REFERENCES `users` (`usr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `course_forum`
--
ALTER TABLE `course_forum`
  ADD CONSTRAINT `course_forum_foreign` FOREIGN KEY (`lsn_id`) REFERENCES `course_lesson` (`lsn_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_forum_foreign` FOREIGN KEY (`usr_id`) REFERENCES `users` (`usr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `course_forum_thread`
--
ALTER TABLE `course_forum_thread`
  ADD CONSTRAINT `forum_thread_foreign` FOREIGN KEY (`cfr_id`) REFERENCES `course_forum` (`cfr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `course_forum_thread_reply`
--
ALTER TABLE `course_forum_thread_reply`
  ADD CONSTRAINT `cft_ftr_foreign` FOREIGN KEY (`cft_id`) REFERENCES `course_forum_thread` (`cft_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_ftr_foreign` FOREIGN KEY (`usr_id`) REFERENCES `users` (`usr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `course_forum_thread_reply_reply`
--
ALTER TABLE `course_forum_thread_reply_reply`
  ADD CONSTRAINT `threads_posts_foreign` FOREIGN KEY (`ftr_id`) REFERENCES `course_forum_thread_reply` (`ftr_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_posts_foreign` FOREIGN KEY (`usr_id`) REFERENCES `users` (`usr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `course_forum_thread_reply_reply_reply`
--
ALTER TABLE `course_forum_thread_reply_reply_reply`
  ADD CONSTRAINT `reply_reply_foreign` FOREIGN KEY (`trr_id`) REFERENCES `course_forum_thread_reply_reply` (`trr_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_reply_foreign` FOREIGN KEY (`usr_id`) REFERENCES `users` (`usr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `course_learning_outcomes`
--
ALTER TABLE `course_learning_outcomes`
  ADD CONSTRAINT `course_loc_foreign` FOREIGN KEY (`crs_id`) REFERENCES `course` (`crs_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `course_lesson`
--
ALTER TABLE `course_lesson`
  ADD CONSTRAINT `course_lesson_foreign` FOREIGN KEY (`crs_id`) REFERENCES `course` (`crs_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user_logs`
--
ALTER TABLE `user_logs`
  ADD CONSTRAINT `user_log_foreign` FOREIGN KEY (`usr_id`) REFERENCES `users` (`usr_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
