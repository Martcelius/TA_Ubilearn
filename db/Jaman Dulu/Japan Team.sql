-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 13 Mar 2018 pada 12.35
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
(14, 'SBP', 'Sistem Berbasis Pengetahuan', 'Berisi tentang mekanisme/metode penyelesaian problem yang tidak\r\ndapat diselesaikan dengan pemrograman konvensional secara efisien', 'Universitas Telkom', '2018-03-05 04:17:15', '2018-03-05 04:17:15', 1, 43),
(18, 'SFH123', 'Pemodelan Sistem', 'MOSEN!!!!!', 'UNIKOM', '2018-03-13 10:31:29', '2018-03-13 10:31:29', 1, 45);

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

--
-- Dumping data untuk tabel `course_assesment`
--

INSERT INTO `course_assesment` (`ass_id`, `ass_tipe`, `ass_name`, `ass_desc`, `ass_timeopen`, `ass_timeclose`, `ass_shufflequestions`, `ass_timelimit`, `ass_timecreated`, `ass_timemodified`, `crs_id`) VALUES
(1, 'Kuis', 'Kuis 1', 'Kuis 1 mencakup materi mesin inferensi', '2018-03-07 10:00:00', '2018-03-07 12:00:00', NULL, NULL, '2018-03-05 04:32:07', '2018-03-05 04:32:07', 14),
(2, 'Pre-test', 'Pre-test Kuis 2', '-', '2018-03-05 23:00:00', '2018-03-06 23:00:00', NULL, NULL, '2018-03-05 21:49:39', '2018-03-05 21:49:39', 14);

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

--
-- Dumping data untuk tabel `course_assesment_question`
--

INSERT INTO `course_assesment_question` (`qst_id`, `qst_text`, `qst_shuffleanswers`, `qst_timecreated`, `qst_timemodified`, `ass_id`, `loc_id`) VALUES
(3, '<p>Pertanyaan dengan poin tinggi?</p>\r\n', NULL, '2018-03-05 04:32:07', '2018-03-05 04:32:07', 1, 0),
(4, '<p>Pertanyaan dummy 1</p>\r\n', NULL, '2018-03-05 21:49:39', '2018-03-05 21:49:39', 2, 3),
(5, '<p>Pertanyaan dummy 2</p>\r\n', NULL, '2018-03-05 21:49:39', '2018-03-05 21:49:39', 2, 4),
(6, '<p>Pertanyaan dummy 4</p>\r\n', NULL, '2018-03-05 21:49:39', '2018-03-05 21:49:39', 2, 4),
(7, '<p>Pertanyaan dummy 4</p>\r\n', NULL, '2018-03-05 21:49:39', '2018-03-05 21:49:39', 2, 4);

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

--
-- Dumping data untuk tabel `course_assesment_questions_answer`
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
-- Struktur dari tabel `course_assesment_questions_answer_of_student`
--

CREATE TABLE `course_assesment_questions_answer_of_student` (
  `ast_id` int(10) UNSIGNED NOT NULL,
  `ast_point` decimal(12,7) DEFAULT NULL,
  `ass_id` int(10) UNSIGNED NOT NULL,
  `ans_id` int(10) UNSIGNED NOT NULL,
  `usr_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `course_assesment_questions_answer_of_student`
--

INSERT INTO `course_assesment_questions_answer_of_student` (`ast_id`, `ast_point`, `ass_id`, `ans_id`, `usr_id`) VALUES
(1, '25.0000000', 2, 16, 42),
(2, '25.0000000', 2, 22, 42),
(3, '25.0000000', 2, 26, 42),
(4, '25.0000000', 2, 31, 42);

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

--
-- Dumping data untuk tabel `course_assignment`
--

INSERT INTO `course_assignment` (`asg_id`, `asg_name`, `asg_text`, `asg_attachment`, `asg_duedate`, `asg_timecreated`, `asg_timemodified`, `crs_id`) VALUES
(1, 'Tugas 1 - Intro Mesin Inferensi', '<p><strong>Pada lingkungan pembelajaran <em>ubiquitous learning</em>, <em>learner </em>akan menerima materi pembelajaran sesuai dengan kondisi serta interaksi <em>learner </em>dengan sistem. Ada <em>learner </em>yang lulus mengikuti kelas pembelajaran, ada juga yang gagal. Dalam beberapa tahun terakhir ini, studi telah menunjukan minat dan perhatian yang terus meningkat dari berbagai negara mengenai tingginya ketidaklulusan <em>learner</em>. Berbagai cara dilakukan untuk membantu <em>learner</em', 'Tugas_1_-_Intro_Mesin_Inferensi1520338085.pdf', '2018-03-13 23:55:00', '2018-03-05 20:56:22', '2018-03-06 12:12:23', 14),
(2, 'Tugas 2 - Implementasi Mesin Inferensi', '<p>-</p>\r\n', 'Tugas_2_-_Implementasi_Mesin_Inferensi1520305092.pdf', '2018-04-06 23:55:00', '2018-03-05 20:58:12', '2018-03-05 20:58:12', 14);

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

--
-- Dumping data untuk tabel `course_assignment_submission`
--

INSERT INTO `course_assignment_submission` (`sub_id`, `sub_attachment`, `sub_comment`, `sub_due_status`, `sub_timecreated`, `sub_timemodified`, `usr_id`, `asg_id`) VALUES
(1, 'file_siswa1520312973.zip', '', NULL, '2018-03-06 05:09:33', '2018-03-06 05:09:33', 42, 2),
(2, '3 Mesin inferensi.pptx', '', NULL, '2018-03-06 05:40:42', '2018-03-06 05:40:42', 44, 2);

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

--
-- Dumping data untuk tabel `course_content`
--

INSERT INTO `course_content` (`cnt_id`, `cnt_name`, `cnt_desc`, `cnt_comment`, `cnt_type`, `cnt_source`, `cnt_timecreated`, `cnt_timemodified`, `lsn_id`, `loc_id`) VALUES
(1, 'Mesin Inferensi part 1', '<p>E.g., &forall;x King(x) &and; Greedy(x) &rArr; Evil(x) yields:</p>\r\n\r\n<p>King(John) &and; Greedy(John) &rArr; Evil(John)</p>\r\n\r\n<p><br />\r\nKing(Richard) &and; Greedy(Richard) &rArr; Evil(Richard)</p>\r\n\r\n<p><br />\r\nKing(Father(John)) &and; Greedy(Father(John)) &rArr; Evil(Father(John))</p>\r\n', '-', 'Video', 'https://www.youtube.com/watch?v=2pEkWk-LHmU', '2018-03-05 04:25:02', '2018-03-05 04:25:02', 10, 3),
(2, 'Mesin Inferensi part 2', '<p>For any sentence &alpha;, variable v, and constant symbol k<br />\r\nthat does not appear elsewhere in the knowledge base:</p>\r\n\r\n<p><br />\r\n&exist;v &alpha;</p>\r\n\r\n<p><br />\r\nSubst({v/k}, &alpha;)</p>\r\n\r\n<p>E.g., &exist;x Crown(x) &and; OnHead(x,John) yields:</p>\r\n\r\n<p><br />\r\nCrown(C1) &and; OnHead(C1,John)</p>\r\n\r\n<p><br />\r\nprovided C1 is a new constant symbol, called a Skolem</p>\r\n', '-', 'Text', 'Mesin_Inferensi_part_21520305893.pptx', '2018-03-05 04:27:20', '2018-03-05 21:11:33', 10, 3);

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
(1, 'Diambil', '2018-03-05 21:01:59', '2018-03-05 21:01:59', 42, 14),
(2, 'Diambil', '2018-03-06 05:40:09', '2018-03-06 05:40:09', 44, 14),
(4, 'Diambil', '2018-03-13 10:38:34', '2018-03-13 10:38:34', 42, 18),
(5, 'Diambil', '2018-03-13 11:04:11', '2018-03-13 11:04:11', 44, 18);

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
(8, 'Introduction', 'Pengenalan introduction', 45, 12);

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
(15, 'Pengen Kenalan', '<p>Masalah Introduction</p>\r\n', NULL, '2018-03-13 10:39:24', '2018-03-13 10:39:24', 8, 42);

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

--
-- Dumping data untuk tabel `course_forum_thread_reply`
--

INSERT INTO `course_forum_thread_reply` (`ftr_id`, `ftr_content`, `ftr_timecreated`, `ftr_timemodified`, `cft_id`, `usr_id`) VALUES
(2, NULL, '2018-03-13 11:00:24', '2018-03-13 11:00:24', 15, 42);

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

--
-- Dumping data untuk tabel `course_forum_thread_reply_reply`
--

INSERT INTO `course_forum_thread_reply_reply` (`trr_id`, `trr_content`, `trr_timecreated`, `trr_timemodified`, `ftr_id`, `usr_id`) VALUES
(2, 'oi udah pada ngopi belommmmm', '2018-03-13 11:11:18', '2018-03-13 11:11:18', 2, 44);

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

--
-- Dumping data untuk tabel `course_forum_thread_reply_reply_reply`
--

INSERT INTO `course_forum_thread_reply_reply_reply` (`rrr_id`, `rrr_content`, `rrr_timecreated`, `rrr_timemodified`, `trr_id`, `usr_id`) VALUES
(1, 'oiiiiiiiiiiiiiiiii', '2018-03-13 11:12:21', '2018-03-13 11:12:21', 2, 42);

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
(3, 'Memahami mesin inferensi', '2018-03-05 04:23:27', '2018-03-05 04:23:27', 14),
(4, 'Mampu memahami dan mengimplentasikan mesin inferen', '2018-03-05 20:54:49', '2018-03-05 20:54:49', 14);

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
(10, 'Mesin Inferensi', '<p>Reducing first-order inference to propositional inference</p>\r\n', '2018-03-05 04:17:55', '2018-03-05 04:17:55', 14),
(11, 'Ontologi Tools', '<p>CLIPS atau protege</p>\r\n', '2018-03-05 21:44:11', '2018-03-05 21:44:11', 14),
(12, 'Introduction', 'Ini adalah pengenalan', '2018-03-13 10:32:17', '2018-03-13 10:32:17', 18);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rating_reply`
--

CREATE TABLE `rating_reply` (
  `rry_id` int(10) NOT NULL,
  `ftr_id` int(10) UNSIGNED NOT NULL,
  `usr_id` int(10) UNSIGNED NOT NULL,
  `rry_rated` int(5) NOT NULL,
  `rry_timecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rating_reply`
--

INSERT INTO `rating_reply` (`rry_id`, `ftr_id`, `usr_id`, `rry_rated`, `rry_timecreated`) VALUES
(1, 2, 44, 1, '2018-03-13 11:07:16'),
(4, 2, 44, 3, '2018-03-13 11:18:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rating_reply_reply`
--

CREATE TABLE `rating_reply_reply` (
  `rrp_id` int(10) NOT NULL,
  `trr_id` int(10) UNSIGNED NOT NULL,
  `usr_id` int(10) UNSIGNED NOT NULL,
  `rrp_rated` int(5) NOT NULL,
  `rrp_timecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rating_reply_reply`
--

INSERT INTO `rating_reply_reply` (`rrp_id`, `trr_id`, `usr_id`, `rrp_rated`, `rrp_timecreated`) VALUES
(1, 2, 42, 3, '2018-03-13 11:11:56'),
(2, 2, 42, 3, '2018-03-13 11:19:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rating_reply_reply_reply`
--

CREATE TABLE `rating_reply_reply_reply` (
  `rrl_id` int(10) NOT NULL,
  `rrr_id` int(10) NOT NULL,
  `usr_id` int(10) UNSIGNED NOT NULL,
  `rrl_rated` int(5) NOT NULL,
  `rrl_timecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rating_reply_reply_reply`
--

INSERT INTO `rating_reply_reply_reply` (`rrl_id`, `rrr_id`, `usr_id`, `rrl_rated`, `rrl_timecreated`) VALUES
(3, 1, 44, 3, '2018-03-13 11:16:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rating_thread`
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
  `usr_tgllahir` date DEFAULT NULL,
  `usr_post_count` int(30) DEFAULT '0',
  `usr_thread_count` int(30) DEFAULT '0',
  `usr_reply_count` int(30) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`usr_id`, `usr_kode`, `usr_username`, `usr_firstname`, `usr_lastname`, `usr_password`, `usr_email`, `usr_picture`, `usr_gpa`, `usr_timecreated`, `usr_timemodified`, `usr_level`, `usr_jk`, `usr_tgllahir`, `usr_post_count`, `usr_thread_count`, `usr_reply_count`) VALUES
(41, NULL, 'admin', 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@admin.co.id', 'avatar_default.jpg', NULL, NULL, NULL, '1', NULL, NULL, 0, 0, 0),
(42, NULL, 'iqbal', 'Iqbal', 'Maulana', 'eedae20fc3c7a6e9c5b1102098771c70', 'iqbalmlna@student.telkomuniversity.ac.id', 'iqbal1520309207.jpeg', '3.50', NULL, '2018-03-05 22:06:47', '2', '1', '1996-08-07', 0, 0, 0),
(43, 'RZQ', 'razzaq', 'Fikri', 'Razzaq', '2f3383ed694d0e9446f98e90abf539cc', 'fikri@razzaq.gmail.com', 'razzaq1520305206.jpg', NULL, NULL, '2018-03-06 11:52:19', '3', '1', '1995-06-19', 0, 0, 0),
(44, NULL, 'adzan', 'Adzan', 'Anugrah', '88c7dc5f4ea5d6f5283946f53e166dfe', 'adzan@anu.co.id', 'adzan1520314965.jpg', NULL, NULL, '2018-03-06 05:42:45', '2', '2', '1996-07-25', 0, 0, 0),
(45, NULL, 'nungki', 'Nungki', 'Selviandro', '6d882a978ee7a24596f5bb9d9e07d250', 'nungkiselviandro@gmail.com', 'avatar_default.jpg', NULL, NULL, NULL, '3', '1', '1956-07-08', 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_logs`
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
  `log_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_logs`
--

INSERT INTO `user_logs` (`log_id`, `log_time`, `usr_id`, `log_event_context`, `log_referrer`, `log_name`, `log_origin`, `log_ip`, `log_desc`) VALUES
(1, '2018-02-28 11:13:21', 37, 'MODOL DI CALANA', NULL, 'MODIL', 'FIREFOX', '20.10.20.10', ''),
(3, '2018-03-06 10:03:07', 40, '/TA_Ubilearn/C_login/masuk', 'http://localhost/TA_Ubilearn/s', 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.18', '::1', 's melakukan aksi Login'),
(4, '2018-03-06 10:17:22', 40, '/TA_Ubilearn/C_login/masuk', 'http://localhost/TA_Ubilearn/s', 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.18', '::1', 's melakukan aksi Login'),
(5, '2018-03-06 10:17:39', 40, '/TA_Ubilearn/siswa/course_close/8', 'http://localhost/TA_Ubilearn/s', 'View Course', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.18', '::1', 's melakukan aksi View Course '),
(6, '2018-03-06 10:18:21', 40, '/TA_Ubilearn/siswa/course_close/8', 'http://localhost/TA_Ubilearn/s', 'View Course', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.18', '::1', 's melakukan aksi View Course Merda Merdi'),
(7, '2018-03-06 10:23:08', 40, '/TA_Ubilearn/siswa/course_detail/3', 'http://localhost/TA_Ubilearn/siswa/course', 'View Course', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.18', '::1', 's melakukan aksi View Course Evvean'),
(8, '2018-03-06 10:23:23', 39, '/TA_Ubilearn/C_login/masuk', 'http://localhost/TA_Ubilearn/signin', 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.18', '::1', 'a melakukan aksi Login'),
(9, '2018-03-06 10:25:15', 40, '/TA_Ubilearn/C_login/masuk', 'http://localhost/TA_Ubilearn/signin', 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.18', '::1', 's melakukan aksi Login'),
(10, '2018-03-06 10:25:33', 40, '/TA_Ubilearn/siswa/course_detail/13', 'http://localhost/TA_Ubilearn/siswa/course', 'View Course', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.18', '::1', 's melakukan aksi View Course Untuk User A'),
(11, '2018-03-06 10:32:19', 40, '/TA_Ubilearn/C_login/masuk', 'http://localhost/TA_Ubilearn/signin', 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.18', '::1', 's melakukan aksi Login'),
(12, '2018-03-06 10:32:51', 39, '/TA_Ubilearn/C_login/masuk', 'http://localhost/TA_Ubilearn/signin', 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.18', '::1', 'a melakukan aksi Login'),
(13, '2018-03-06 10:34:21', 40, '/TA_Ubilearn/siswa/course_detail/13', 'http://localhost/TA_Ubilearn/siswa/course', 'View Course', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.18', '::1', 's melakukan aksi View Course Untuk User A'),
(14, '2018-03-06 10:34:29', 40, '/TA_Ubilearn/siswa/materi/9', 'http://localhost/TA_Ubilearn/siswa/course_detail/13', 'View Course', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.18', '::1', 's melakukan aksi View Lesson Lesson 2 pada Course '),
(15, '2018-03-06 10:44:55', 40, '/TA_Ubilearn/siswa/materi/9', '', 'View Course', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.18', '::1', 's melakukan aksi View Lesson Lesson 2 pada Course '),
(16, '2018-03-06 10:45:02', 40, '/TA_Ubilearn/siswa/materi/9', '', 'View Course', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.18', '::1', 's melakukan aksi View Lesson Lesson 2 pada Course '),
(17, '2018-03-06 10:45:07', 40, '/TA_Ubilearn/siswa/materi/8', '', 'View Course', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.18', '::1', 's melakukan aksi View Lesson Lesson 1 pada Course ');

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
  ADD UNIQUE KEY `usr_kode` (`usr_kode`);

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
  MODIFY `crs_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
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
  MODIFY `enr_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `course_enrol_detail`
--
ALTER TABLE `course_enrol_detail`
  MODIFY `end_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `course_forum`
--
ALTER TABLE `course_forum`
  MODIFY `cfr_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `course_forum_thread`
--
ALTER TABLE `course_forum_thread`
  MODIFY `cft_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `course_forum_thread_reply`
--
ALTER TABLE `course_forum_thread_reply`
  MODIFY `ftr_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `course_forum_thread_reply_reply`
--
ALTER TABLE `course_forum_thread_reply_reply`
  MODIFY `trr_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `course_forum_thread_reply_reply_reply`
--
ALTER TABLE `course_forum_thread_reply_reply_reply`
  MODIFY `rrr_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `course_learning_outcomes`
--
ALTER TABLE `course_learning_outcomes`
  MODIFY `loc_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `course_lesson`
--
ALTER TABLE `course_lesson`
  MODIFY `lsn_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `rating_reply`
--
ALTER TABLE `rating_reply`
  MODIFY `rry_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `rating_reply_reply`
--
ALTER TABLE `rating_reply_reply`
  MODIFY `rrp_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `rating_reply_reply_reply`
--
ALTER TABLE `rating_reply_reply_reply`
  MODIFY `rrl_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
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
  MODIFY `usr_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `user_logs`
--
ALTER TABLE `user_logs`
  MODIFY `log_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
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
-- Ketidakleluasaan untuk tabel `rating_reply`
--
ALTER TABLE `rating_reply`
  ADD CONSTRAINT `ftr_foreign` FOREIGN KEY (`ftr_id`) REFERENCES `course_forum_thread_reply` (`ftr_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usr_foreign` FOREIGN KEY (`usr_id`) REFERENCES `users` (`usr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `rating_reply_reply`
--
ALTER TABLE `rating_reply_reply`
  ADD CONSTRAINT `reply_rating` FOREIGN KEY (`trr_id`) REFERENCES `course_forum_thread_reply_reply` (`trr_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_rating` FOREIGN KEY (`usr_id`) REFERENCES `users` (`usr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `rating_reply_reply_reply`
--
ALTER TABLE `rating_reply_reply_reply`
  ADD CONSTRAINT `injek_rating` FOREIGN KEY (`rrr_id`) REFERENCES `course_forum_thread_reply_reply_reply` (`rrr_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `userr_rating` FOREIGN KEY (`usr_id`) REFERENCES `users` (`usr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `rating_thread`
--
ALTER TABLE `rating_thread`
  ADD CONSTRAINT `rating_thread` FOREIGN KEY (`cft_id`) REFERENCES `course_forum_thread` (`cft_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rating_user` FOREIGN KEY (`usr_id`) REFERENCES `users` (`usr_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
