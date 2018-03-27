-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 25 Mar 2018 pada 18.45
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
(14, 'SBP', 'Sistem Berbasis Pengetahuan', 'Berisi tentang mekanisme/metode penyelesaian problem yang tidak\r\ndapat diselesaikan dengan pemrograman konvensional secara efisien', 'Telkom University', '2018-03-05 04:17:15', '2018-03-13 21:33:41', 1, 43),
(18, 'SFH123', 'Pemodelan Sistem', 'MOSEN!!!!!', 'UNIKOM', '2018-03-13 10:31:29', '2018-03-13 10:31:29', 1, 45),
(19, 'SPPK', 'Sistem Pendukung Pengambilan Keputusan', 'Decision Support System', 'Telkom University', '2018-03-13 16:35:57', '2018-03-13 16:35:57', 1, 43),
(20, 'RPL', 'Rekayasa Perangkat Lunak', 'SE', 'Telkom University', '2018-03-13 16:39:36', '2018-03-13 16:39:36', 1, 43);

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
(2, 'Pre-test', 'Pre-test Kuis 2', '-', '2018-03-05 23:00:00', '2018-03-30 12:35:00', NULL, NULL, '2018-03-05 21:49:39', '2018-03-16 13:00:22', 14),
(3, 'Kuis', 'Kuis 3', '-', '2018-03-15 08:00:00', '2018-07-01 09:25:00', NULL, NULL, '2018-03-15 09:31:55', '2018-03-15 09:31:55', 14),
(4, 'Kuis', 'Kuis 1 SPPK', '-', '2018-03-14 21:55:00', '2018-03-17 06:55:00', NULL, NULL, '2018-03-15 10:02:17', '2018-03-15 10:02:17', 19),
(5, 'Kuis', 'Kuis 1 Mosi', '-', '2018-03-14 10:05:00', '2018-03-17 10:00:00', NULL, NULL, '2018-03-15 10:19:10', '2018-03-15 10:19:10', 18),
(6, 'Kuis', 'RPL - 1', '-', '2018-03-15 08:15:00', '2018-03-23 08:15:00', NULL, NULL, '2018-03-16 08:19:48', '2018-03-16 08:19:48', 20),
(7, 'Kuis', 'Naive Bayes', '-', '2018-03-16 17:00:00', '2018-03-31 14:00:00', NULL, NULL, '2018-03-17 14:08:25', '2018-03-17 14:08:25', 19);

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
(4, '                <p>Pertanyaan dummy 1</p>\r\n      \r\n                  ', NULL, '2018-03-05 21:49:39', '2018-03-16 13:00:22', 2, 3),
(5, '                <p>Pertanyaan dummy 2</p>\r\n      \r\n                  ', NULL, '2018-03-05 21:49:39', '2018-03-16 13:00:22', 2, 4),
(6, '                <p>Pertanyaan dummy 4</p>\r\n      \r\n                  ', NULL, '2018-03-05 21:49:39', '2018-03-16 13:00:22', 2, 4),
(7, '                <p>Pertanyaan dummy 4</p>\r\n      \r\n                  ', NULL, '2018-03-05 21:49:39', '2018-03-16 13:00:22', 2, 4),
(8, '<p>Mesin inferen implementasi</p>', NULL, '2018-03-15 09:31:55', '2018-03-15 09:31:55', 3, 4),
(9, '<p>Soal pertama</p>', NULL, '2018-03-15 10:02:17', '2018-03-15 10:02:17', 4, 5),
(10, '<p>Soal Kedua</p>', NULL, '2018-03-15 10:02:17', '2018-03-15 10:02:17', 4, 5),
(11, '<p>Pertanyaan dummy 1</p>', NULL, '2018-03-15 10:19:10', '2018-03-15 10:19:10', 5, 6),
(12, '<p>Pertanyaan dummy 2<br></p>', NULL, '2018-03-15 10:19:10', '2018-03-15 10:19:10', 5, 6),
(13, '<p>Pertanyaan dummy 3<br></p>', NULL, '2018-03-15 10:19:10', '2018-03-15 10:19:10', 5, 6),
(14, '<p>Pertanyaan dummy 1</p>', NULL, '2018-03-16 08:19:48', '2018-03-16 08:19:48', 6, 7),
(15, '<p>Pertanyaan dummy 2</p>', NULL, '2018-03-16 08:19:48', '2018-03-16 08:19:48', 6, 0),
(16, '<p>Pertnyaan dummy 3</p>', NULL, '2018-03-16 08:19:48', '2018-03-16 08:19:48', 6, 0),
(17, '<p>Pertanyaan dummy 4</p>', NULL, '2018-03-16 08:19:48', '2018-03-16 08:19:48', 6, 0),
(18, '<p>soal dummy 1</p>', NULL, '2018-03-17 14:08:25', '2018-03-17 14:08:25', 7, 5);

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
(35, 'false', '0.0000000', 7),
(36, 'true', '100.0000000', 8),
(37, 'false', '0.0000000', 8),
(38, 'false', '0.0000000', 8),
(39, 'false', '0.0000000', 8),
(40, 'false', '0.0000000', 8),
(41, 'false', '0.0000000', 9),
(42, 'false', '0.0000000', 9),
(43, 'false', '0.0000000', 9),
(44, 'false', '0.0000000', 9),
(45, 'true', '50.0000000', 9),
(46, 'false', '0.0000000', 10),
(47, 'false', '0.0000000', 10),
(48, 'false', '0.0000000', 10),
(49, 'true', '50.0000000', 10),
(50, 'false', '0.0000000', 10),
(51, 'false', '0.0000000', 11),
(52, 'true', '50.0000000', 11),
(53, 'false', '0.0000000', 11),
(54, 'false', '0.0000000', 11),
(55, 'false', '0.0000000', 11),
(56, 'true', '25.0000000', 12),
(57, 'false', '0.0000000', 12),
(58, 'false', '0.0000000', 12),
(59, 'false', '0.0000000', 12),
(60, 'false', '0.0000000', 12),
(61, 'false', '0.0000000', 13),
(62, 'true', '25.0000000', 13),
(63, 'false', '0.0000000', 13),
(64, 'false', '0.0000000', 13),
(65, 'false', '0.0000000', 13),
(66, 'false', '0.0000000', 14),
(67, 'false', '0.0000000', 14),
(68, 'false', '0.0000000', 14),
(69, 'false', '0.0000000', 14),
(70, 'true', '25.0000000', 14),
(71, 'false', '0.0000000', 15),
(72, 'false', '0.0000000', 15),
(73, 'false', '0.0000000', 15),
(74, 'true', '25.0000000', 15),
(75, 'false', '0.0000000', 15),
(76, 'true', '25.0000000', 16),
(77, 'false', '0.0000000', 16),
(78, 'false', '0.0000000', 16),
(79, 'false', '0.0000000', 16),
(80, 'false', '0.0000000', 16),
(81, 'false', '0.0000000', 17),
(82, 'false', '0.0000000', 17),
(83, 'true', '25.0000000', 17),
(84, 'false', '0.0000000', 17),
(85, 'false', '0.0000000', 17),
(86, 'true', '100.0000000', 18),
(87, 'false', '0.0000000', 18),
(88, 'false', '0.0000000', 18),
(89, 'false', '0.0000000', 18),
(90, 'false', '0.0000000', 18);

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
(4, '25.0000000', 2, 31, 42),
(5, '100.0000000', 3, 36, 42),
(16, '0.0000000', 4, 44, 42),
(17, '50.0000000', 4, 49, 42),
(18, '25.0000000', 6, 70, 42),
(19, '0.0000000', 6, 72, 42),
(20, '25.0000000', 6, 76, 42),
(21, '0.0000000', 6, 82, 42),
(22, '0.0000000', 6, 67, 44),
(23, '25.0000000', 6, 74, 44),
(24, '25.0000000', 6, 76, 44),
(25, '25.0000000', 6, 83, 44);

-- --------------------------------------------------------

--
-- Struktur dari tabel `course_assesment_result`
--

CREATE TABLE `course_assesment_result` (
  `id` int(10) NOT NULL,
  `ass_id` int(10) UNSIGNED NOT NULL,
  `ass_result` float DEFAULT NULL,
  `usr_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `course_assesment_result`
--

INSERT INTO `course_assesment_result` (`id`, `ass_id`, `ass_result`, `usr_id`) VALUES
(15, 4, 50, 42),
(25, 6, 50, 42),
(37, 6, 50, 44),
(52, 3, 100, 42),
(54, 2, 100, 42),
(55, 4, 75, 44);

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
(2, 'Tugas 2 - Implementasi Mesin Inferensi', '<p>-</p>\r\n', 'Tugas_2_-_Implementasi_Mesin_Inferensi1520305092.pdf', '2018-04-06 23:55:00', '2018-03-05 20:58:12', '2018-03-05 20:58:12', 14),
(3, 'asfasdfasdf', '<p>sadfasdfasdfsdf</p>', 'asfasdfasdf1521559016.pdf', '2018-03-21 22:15:00', '2018-03-20 15:16:56', '2018-03-20 15:16:56', 14),
(4, 'aaaa', '<p>aaaa</p>', 'aaaa1521559105.pdf', '2018-03-21 14:15:00', '2018-03-20 15:18:25', '2018-03-20 15:18:25', 14);

-- --------------------------------------------------------

--
-- Struktur dari tabel `course_assignment_loc`
--

CREATE TABLE `course_assignment_loc` (
  `id` int(10) NOT NULL,
  `asg_id` int(10) UNSIGNED NOT NULL,
  `loc_id` int(10) UNSIGNED NOT NULL
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

--
-- Dumping data untuk tabel `course_assignment_submission`
--

INSERT INTO `course_assignment_submission` (`sub_id`, `sub_attachment`, `sub_comment`, `sub_due_status`, `sub_timecreated`, `sub_timemodified`, `usr_id`, `asg_id`) VALUES
(1, 'file_siswa1520312973.zip', '', NULL, '2018-03-06 05:09:33', '2018-03-06 05:09:33', 42, 2),
(5, 'file_siswa1521277954.pdf', '', 'Ontime', '2018-03-17 09:12:34', '2018-03-17 09:12:34', 46, 2);

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
(5, 'Diambil', '2018-03-13 11:04:11', '2018-03-13 11:04:11', 44, 18),
(6, 'Diambil', '2018-03-15 10:03:32', '2018-03-15 10:03:32', 42, 19),
(7, 'Diambil', '2018-03-16 08:13:33', '2018-03-16 08:13:33', 44, 19),
(8, 'Diambil', '2018-03-16 08:20:07', '2018-03-16 08:20:07', 42, 20),
(9, 'Diambil', '2018-03-16 08:21:04', '2018-03-16 08:21:04', 44, 20),
(10, 'Diambil', '2018-03-17 08:22:55', '2018-03-17 08:22:55', 46, 14);

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
  `lsn_id` int(10) UNSIGNED NOT NULL,
  `usr_count` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `course_forum`
--

INSERT INTO `course_forum` (`cfr_id`, `cfr_title`, `cfr_desc`, `usr_id`, `lsn_id`, `usr_count`) VALUES
(8, 'Introduction', 'Pengenalan introduction', 45, 12, NULL),
(17, 'Introduction', 'Forum ini membahas tentang dasar-dasar dari Mesin Inferensi', 43, 10, NULL);

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
(72, 'Membahas tentang apa Mesin Inferensi?', '<p>Saya ingin mengetahui apa saja bahasan mengenai Mesin inferensi</p>', NULL, '2018-03-21 02:06:35', '2018-03-21 02:06:35', 17, 44);

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
  `usr_id` int(10) UNSIGNED NOT NULL,
  `ftr_ratingsum` int(10) DEFAULT '0',
  `ftr_ratingcount` int(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `course_forum_thread_reply`
--

INSERT INTO `course_forum_thread_reply` (`ftr_id`, `ftr_content`, `ftr_timecreated`, `ftr_timemodified`, `cft_id`, `usr_id`, `ftr_ratingsum`, `ftr_ratingcount`) VALUES
(13, '<p><em style=\"border: 0px; font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 16px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(36, 36, 36);\">Inference engine</em><span style=\"color: rgb(36, 36, 36); font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 16px;\">&nbsp;merupakan otak dari&nbsp;</span><a href=\"http://informatika.web.id/sistem-pakar.htm\" style=\"border: 0px; font-family: &quot;Noto Sans&quot;, sans-serif; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(231, 79, 78); transition: all 0.15s ease-in-out; background-color: rgb(255, 255, 255);\">sistem pakar</a><span style=\"color: rgb(36, 36, 36); font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 16px;\">, bagian ini mengandung mekanisme fungsi berpikir dan pola-pola penalaran sistem yang digunakan oleh seorang pakar. Mekanisme ini akan menganalisa suatu masalah tertentu dan kemudian mencari jawaban atau kesimpulan yang terbaik.&nbsp;</span><br></p>', '2018-03-21 02:20:03', '2018-03-25 16:15:51', 72, 42, 1, 1);

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
  `usr_id` int(10) UNSIGNED NOT NULL,
  `trr_ratingsum` int(10) DEFAULT '0',
  `trr_ratingcount` int(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `course_forum_thread_reply_reply`
--

INSERT INTO `course_forum_thread_reply_reply` (`trr_id`, `trr_content`, `trr_timecreated`, `trr_timemodified`, `ftr_id`, `usr_id`, `trr_ratingsum`, `trr_ratingcount`) VALUES
(15, '<p><span style=\"color: rgb(36, 36, 36); font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 16px;\">Mesin inferensi berfungsi untuk memandu proses penalaran terhadap suatu kondisi</span><br></p>', '2018-03-21 02:39:50', '2018-03-21 02:39:50', 13, 43, 0, 0);

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
  `usr_id` int(10) UNSIGNED NOT NULL,
  `rrr_ratingsum` int(10) DEFAULT '0',
  `rrr_ratingcount` int(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `course_forum_thread_reply_reply_reply`
--

INSERT INTO `course_forum_thread_reply_reply_reply` (`rrr_id`, `rrr_content`, `rrr_timecreated`, `rrr_timemodified`, `trr_id`, `usr_id`, `rrr_ratingsum`, `rrr_ratingcount`) VALUES
(20, '<p><span style=\"color: rgb(36, 36, 36); font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 16px;\">Di dalam mesin inferensi terjadi proses untuk memanipulasi dan mengarahkan kaidah, model, dan fakta yang disimpan dalam basis pengetahuan dalam rangka mencapai solusi atau kesimpulan</span><br></p>', '2018-03-21 02:43:40', '2018-03-21 02:43:40', 15, 42, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `course_forum_user`
--

CREATE TABLE `course_forum_user` (
  `cfu_id` int(10) NOT NULL,
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
  `cfu_prestige` int(10) DEFAULT '0'
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
(3, 'Memahami mesin inferensi', '2018-03-05 04:23:27', '2018-03-05 04:23:27', 14),
(4, 'Mampu memahami dan mengimplentasikan mesin inferen', '2018-03-05 20:54:49', '2018-03-05 20:54:49', 14),
(5, 'Memahami naive bayes untuk pengambilan keputusan', '2018-03-15 09:56:56', '2018-03-15 09:56:56', 19),
(6, 'Optimasi model sistem', '2018-03-15 10:11:24', '2018-03-15 10:11:24', 18),
(7, 'Memahami rekayasa perangkat lunak', '2018-03-16 08:17:35', '2018-03-16 08:17:35', 20);

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
(12, 'Introduction', 'Ini adalah pengenalan', '2018-03-13 10:32:17', '2018-03-13 10:32:17', 18),
(13, 'BAB 1 ', 'Mengenal SKPL pada RPL', '2018-03-17 07:32:05', '2018-03-17 07:32:05', 20);

-- --------------------------------------------------------

--
-- Struktur dari tabel `lesson_access_log`
--

CREATE TABLE `lesson_access_log` (
  `lal_id` int(10) NOT NULL,
  `usr_id` int(10) NOT NULL,
  `lsn_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `lesson_access_log`
--

INSERT INTO `lesson_access_log` (`lal_id`, `usr_id`, `lsn_id`) VALUES
(5, 42, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `notifications`
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

--
-- Dumping data untuk tabel `notifications`
--

INSERT INTO `notifications` (`ntf_id`, `ntf_type`, `ntf_instructor`, `ntf_message`, `ntf_read`, `ntf_time`, `usr_id`, `ass_id`, `lsn_id`, `asg_id`) VALUES
(1, 'ASG', 'Dade Nurjanah', 'Menambahkan konten materi baru.', 'N', '2018-03-20 22:18:25', 42, NULL, NULL, 4),
(2, 'ASG', 'Yanti Rusmawanti', 'Menambahkan Assesment baru.', 'N', '2018-03-20 22:18:25', 42, NULL, NULL, 4),
(3, 'ASG', '', 'Fikri Fikri menambahkan Assesment baru.', 'N', '2018-03-20 22:18:26', 46, NULL, NULL, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rating_reply`
--

CREATE TABLE `rating_reply` (
  `rry_id` int(10) NOT NULL,
  `ftr_id` int(10) UNSIGNED NOT NULL,
  `usr_id` int(10) UNSIGNED DEFAULT NULL,
  `rry_rated` int(5) DEFAULT NULL,
  `rry_timecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `rry_timemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rating_reply`
--

INSERT INTO `rating_reply` (`rry_id`, `ftr_id`, `usr_id`, `rry_rated`, `rry_timecreated`, `rry_timemodified`) VALUES
(13, 13, 43, 1, '2018-03-21 02:20:03', '2018-03-25 16:15:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rating_reply_reply`
--

CREATE TABLE `rating_reply_reply` (
  `rrp_id` int(10) NOT NULL,
  `trr_id` int(10) UNSIGNED NOT NULL,
  `usr_id` int(10) UNSIGNED DEFAULT NULL,
  `rrp_rated` int(5) DEFAULT NULL,
  `rrp_timecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `rrp_timemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rating_reply_reply`
--

INSERT INTO `rating_reply_reply` (`rrp_id`, `trr_id`, `usr_id`, `rrp_rated`, `rrp_timecreated`, `rrp_timemodified`) VALUES
(15, 15, NULL, NULL, '2018-03-21 02:39:50', '2018-03-21 02:39:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rating_reply_reply_reply`
--

CREATE TABLE `rating_reply_reply_reply` (
  `rrl_id` int(10) NOT NULL,
  `rrr_id` int(10) NOT NULL,
  `usr_id` int(10) UNSIGNED DEFAULT NULL,
  `rrl_rated` int(5) DEFAULT NULL,
  `rrl_timecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `rrl_timemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rating_reply_reply_reply`
--

INSERT INTO `rating_reply_reply_reply` (`rrl_id`, `rrr_id`, `usr_id`, `rrl_rated`, `rrl_timecreated`, `rrl_timemodified`) VALUES
(20, 20, NULL, NULL, '2018-03-21 02:43:40', '2018-03-21 02:43:40');

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
(42, NULL, 'iqbal', 'Iqbal', 'Maulana', 'eedae20fc3c7a6e9c5b1102098771c70', 'iqbalmlna@student.telkomuniversity.ac.id', 'iqbal1520309207.jpeg', '3.50', NULL, '2018-03-21 02:43:40', '2', '1', '1996-08-07', 2, 0, 0),
(43, 'RZQ', 'razzaq', 'Fikri', 'Razzaq', '2f3383ed694d0e9446f98e90abf539cc', 'fikri@razzaq.gmail.com', 'razzaq1520959378.jpg', NULL, NULL, '2018-03-13 16:42:58', '3', '1', '1995-06-19', 0, 0, 0),
(44, NULL, 'adzan', 'Adzan', 'Anugrah', '88c7dc5f4ea5d6f5283946f53e166dfe', 'adzan@anu.co.id', 'adzan1520314965.jpg', NULL, NULL, '2018-03-21 02:17:02', '2', '2', '1996-07-25', 1, 1, 0),
(45, NULL, 'nungki', 'Nungki', 'Selviandro', '6d882a978ee7a24596f5bb9d9e07d250', 'nungkiselviandro@gmail.com', 'avatar_default.jpg', NULL, NULL, NULL, '3', '1', '1956-07-08', 0, 0, 0),
(46, NULL, 'martcel', 'Martcelius', 'Saragih', 'a0e13e106218e1cb1b72d5b58a85ab58', 'marsel@marsel.ac.id', 'martcel1521275671.jpeg', NULL, NULL, '2018-03-17 08:34:31', '2', '1', '2002-06-12', 0, 0, 0);

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
  `log_desc` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_logs`
--

INSERT INTO `user_logs` (`log_id`, `log_time`, `usr_id`, `log_event_context`, `log_referrer`, `log_name`, `log_origin`, `log_ip`, `log_desc`) VALUES
(23, '2018-03-13 16:47:41', 42, '/TA_Ubilearn/C_login/masuk', 'http://localhost/TA_Ubilearn/signin', 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.14', '::1', 'iqbal melakukan aksi Login'),
(24, '2018-03-13 16:48:30', 43, '/TA_Ubilearn/C_login/masuk', 'http://localhost/TA_Ubilearn/signin', 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.14', '::1', 'razzaq melakukan aksi Login'),
(25, '2018-03-13 21:33:19', 43, '/TA_Ubilearn/C_login/masuk', 'http://localhost/TA_Ubilearn/signin', 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.14', '::1', 'razzaq melakukan aksi Login'),
(26, '2018-03-13 21:40:32', 42, '/TA_Ubilearn/C_login/masuk', 'http://localhost/TA_Ubilearn/signin', 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.14', '::1', 'iqbal melakukan aksi Login'),
(27, '2018-03-14 00:47:00', 42, '/TA_Ubilearn/C_login/masuk', 'http://localhost/TA_Ubilearn/signin', 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.14', '::1', 'iqbal melakukan aksi Login'),
(28, '2018-03-14 00:54:21', 42, '/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/10', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/14', 'View Forum', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.14', '::1', 'iqbal melakukan aksi View Forum '),
(29, '2018-03-14 00:57:04', 42, '/TA_Ubilearn/siswa/course_detail/14', 'http://localhost/TA_Ubilearn/siswa/course', 'View Course', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.14', '::1', 'iqbal melakukan aksi View Course Sistem Berbasis P'),
(30, '2018-03-14 00:57:12', 42, '/TA_Ubilearn/siswa/materi/10', 'http://localhost/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.14', '::1', 'iqbal melakukan aksi View Lesson Mesin Inferensi p'),
(32, '2018-03-14 01:25:46', 42, '/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/10', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/14', 'View Forum', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.14', '::1', 'iqbal melakukan aksi View Forum '),
(33, '2018-03-14 01:26:07', 42, '/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/10', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/14', 'View Forum', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.14', '::1', 'iqbal melakukan aksi View Forum '),
(34, '2018-03-14 01:45:09', 42, '/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/10', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/14', 'View Forum', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.14', '::1', 'iqbal melakukan aksi View Forum Mesin Inferensi'),
(35, '2018-03-14 01:45:13', 42, '/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/10', 'http://localhost/TA_Ubilearn/siswa/dashboard_forum_siswa/14', 'View Forum', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.14', '::1', 'iqbal melakukan aksi View Forum Mesin Inferensi'),
(36, '2018-03-14 01:48:39', 42, '/TA_Ubilearn/siswa/list_thread_siswa/9', '', 'View Forum', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.14', '::1', 'iqbal melakukan aksi View Forum Inferensi'),
(37, '2018-03-14 01:51:42', 42, '/TA_Ubilearn/siswa/thread/insert_thread_siswa/9', 'http://localhost/TA_Ubilearn/siswa/add_thread_siswa/9', 'Create Thread', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.14', '::1', 'iqbal melakukan aksi Create Thread Implementasi Inferensi'),
(38, '2018-03-14 01:51:42', 42, '/TA_Ubilearn/siswa/list_thread_siswa/9', 'http://localhost/TA_Ubilearn/siswa/add_thread_siswa/9', 'View Forum', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.14', '::1', 'iqbal melakukan aksi View Forum Inferensi'),
(39, '2018-03-14 01:51:54', 42, '/TA_Ubilearn/siswa/list_thread_siswa/8', 'http://localhost/TA_Ubilearn/siswa/edit_thread_siswa/16/9', 'View Forum', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.14', '::1', 'iqbal melakukan aksi View Forum Introduction'),
(40, '2018-03-14 01:52:17', 42, '/TA_Ubilearn/siswa/list_thread_siswa/8', 'http://localhost/TA_Ubilearn/siswa/edit_thread_siswa/15/8', 'View Forum', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.14', '::1', 'iqbal melakukan aksi View Forum Introduction'),
(41, '2018-03-14 02:14:51', 42, '/TA_Ubilearn/siswa/list_thread_siswa/9', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/10', 'View Forum', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.14', '::1', 'iqbal melakukan aksi View Forum Inferensi'),
(42, '2018-03-14 02:15:12', 42, '/TA_Ubilearn/siswa/thread/insert_thread_siswa/9', 'http://localhost/TA_Ubilearn/siswa/add_thread_siswa/9', 'Create Thread', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.14', '::1', 'iqbal melakukan aksi Create Thread sdfasdf'),
(43, '2018-03-14 02:15:12', 42, '/TA_Ubilearn/siswa/list_thread_siswa/9', 'http://localhost/TA_Ubilearn/siswa/add_thread_siswa/9', 'View Forum', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.14', '::1', 'iqbal melakukan aksi View Forum Inferensi'),
(44, '2018-03-14 02:15:29', 42, '/TA_Ubilearn/siswa/list_thread_siswa/9', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/10', 'View Forum', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.14', '::1', 'iqbal melakukan aksi View Forum Inferensi'),
(45, '2018-03-14 02:16:05', 42, '/TA_Ubilearn/siswa/list_thread_siswa/8', 'http://localhost/TA_Ubilearn/siswa/detail_dashboard_forum_siswa/12', 'View Forum', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.14', '::1', 'iqbal melakukan aksi View Forum Introduction'),
(46, '2018-03-14 02:51:14', 42, 'View Forum: Inferensi', '/TA_Ubilearn/siswa/list_thread_siswa/9', 'View Forum', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.14', '::1', 'iqbal melakukan aksi View Forum \'Inferensi\''),
(47, '2018-03-14 02:51:19', 42, 'View Thread: ', '/TA_Ubilearn/siswa/detail_thread_siswa/17', 'View Thread', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.14', '::1', 'iqbal melakukan aksi View Thread \'\''),
(60, '2018-03-14 05:00:06', 42, 'Login: iqbal', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Login'),
(61, '2018-03-14 05:00:21', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(62, '2018-03-15 08:42:08', 42, 'Login: iqbal', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Login'),
(63, '2018-03-15 08:43:09', 42, 'View Forum: Inferensi', '/TA_Ubilearn/siswa/list_thread_siswa/9', 'View Forum', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi View Forum \'Inferensi\''),
(64, '2018-03-15 08:58:20', 42, 'Done Assesment: {\"ass_id\":2,\"ass_tipe\":\"Pre-test\",\"ass_name\":\"Pre-test Kuis 2\",\"ass_desc\":\"-\",\"ass_t', '/TA_Ubilearn/siswa/result/2', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Pre-test Kuis 2\''),
(65, '2018-03-15 09:26:13', 42, 'Done Assesment: {\"ass_id\":2,\"ass_tipe\":\"Pre-test\",\"ass_name\":\"Pre-test Kuis 2\",\"ass_desc\":\"-\",\"ass_t', '/TA_Ubilearn/siswa/result/2', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Pre-test Kuis 2\''),
(66, '2018-03-15 09:29:18', 43, 'Login: razzaq', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'razzaq melakukan aksi Login'),
(67, '2018-03-15 09:32:59', 42, 'Login: iqbal', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Login'),
(68, '2018-03-15 09:33:14', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(69, '2018-03-15 09:36:30', 42, 'Done Assesment: {\"ass_id\":3,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 3\",\"ass_desc\":\"-\",\"ass_timeopen\":\"201', '/TA_Ubilearn/siswa/Assesment/result/3', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 3\''),
(70, '2018-03-15 09:36:30', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/Assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(71, '2018-03-15 09:38:16', 42, 'View Course: Pemodelan Sistem', '/TA_Ubilearn/siswa/course_detail/18', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi View Course \'Pemodelan Sistem\''),
(72, '2018-03-15 09:38:18', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(73, '2018-03-15 09:38:25', 42, 'Done Assesment: {\"ass_id\":3,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 3\",\"ass_desc\":\"-\",\"ass_timeopen\":\"201', '/TA_Ubilearn/siswa/assesment/result/3', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 3\''),
(74, '2018-03-15 09:38:25', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(75, '2018-03-15 09:38:31', 42, 'Done Assesment: {\"ass_id\":3,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 3\",\"ass_desc\":\"-\",\"ass_timeopen\":\"201', '/TA_Ubilearn/siswa/assesment/result/3', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 3\''),
(76, '2018-03-15 09:38:31', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(77, '2018-03-15 09:50:15', 42, 'Done Assesment: {\"ass_id\":3,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 3\",\"ass_desc\":\"-\",\"ass_timeopen\":\"201', '/TA_Ubilearn/siswa/assesment/result/3', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 3\''),
(78, '2018-03-15 09:50:16', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(79, '2018-03-15 09:50:21', 42, 'Done Assesment: {\"ass_id\":3,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 3\",\"ass_desc\":\"-\",\"ass_timeopen\":\"201', '/TA_Ubilearn/siswa/assesment/result/3', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 3\''),
(80, '2018-03-15 09:50:22', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(81, '2018-03-15 09:54:10', 42, 'Done Assesment: {\"ass_id\":3,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 3\",\"ass_desc\":\"-\",\"ass_timeopen\":\"201', '/TA_Ubilearn/siswa/assesment/result/3', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 3\''),
(82, '2018-03-15 09:54:10', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(83, '2018-03-15 09:55:05', 43, 'Login: razzaq', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'razzaq melakukan aksi Login'),
(84, '2018-03-15 10:02:48', 42, 'Login: iqbal', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Login'),
(85, '2018-03-15 10:03:30', 42, 'View Course: Sistem Pendukung Pengambilan Keputusan', '/TA_Ubilearn/siswa/course_close/19', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi View Course \'Sistem Pendukung Pengambilan Keputusan\''),
(86, '2018-03-15 10:03:32', 42, 'Enrol Course: Sistem Pendukung Pengambilan Keputusan', '/TA_Ubilearn/siswa/enrol/19', 'Enrol', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Enrol Course \'Sistem Pendukung Pengambilan Keputusan\''),
(87, '2018-03-15 10:03:57', 42, 'View Course: Sistem Pendukung Pengambilan Keputusan', '/TA_Ubilearn/siswa/course_detail/19', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi View Course \'Sistem Pendukung Pengambilan Keputusan\''),
(88, '2018-03-15 10:08:38', 42, 'Done Assesment: {\"ass_id\":4,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 1\",\"ass_desc\":\"-\",\"ass_timeopen\":\"201', '/TA_Ubilearn/siswa/Assesment/result/4', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 1\''),
(89, '2018-03-15 10:09:41', 42, 'Done Assesment: {\"ass_id\":4,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 1\",\"ass_desc\":\"-\",\"ass_timeopen\":\"201', '/TA_Ubilearn/siswa/Assesment/result/4', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 1\''),
(90, '2018-03-15 10:10:45', 45, 'Login: nungki', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'nungki melakukan aksi Login'),
(91, '2018-03-15 10:19:25', 42, 'Login: iqbal', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Login'),
(92, '2018-03-15 10:19:30', 42, 'Done Assesment: {\"ass_id\":3,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 3\",\"ass_desc\":\"-\",\"ass_timeopen\":\"201', '/TA_Ubilearn/siswa/result/3', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 3\''),
(93, '2018-03-15 10:22:00', 42, 'View Course: Sistem Pendukung Pengambilan Keputusan', '/TA_Ubilearn/siswa/course_detail/19', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi View Course \'Sistem Pendukung Pengambilan Keputusan\''),
(94, '2018-03-15 10:22:05', 42, 'Done Assesment: {\"ass_id\":4,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 1\",\"ass_desc\":\"-\",\"ass_timeopen\":\"201', '/TA_Ubilearn/siswa/assesment/result/4', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 1\''),
(95, '2018-03-15 10:22:14', 42, 'View Course: Sistem Pendukung Pengambilan Keputusan', '/TA_Ubilearn/siswa/course_detail/19', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi View Course \'Sistem Pendukung Pengambilan Keputusan\''),
(96, '2018-03-15 10:22:16', 42, 'View Course: Pemodelan Sistem', '/TA_Ubilearn/siswa/course_detail/18', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi View Course \'Pemodelan Sistem\''),
(97, '2018-03-15 10:22:41', 42, 'Done Assesment: {\"ass_id\":5,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 1 SPPK\",\"ass_desc\":\"-\",\"ass_timeopen\"', '/TA_Ubilearn/siswa/Assesment/result/5', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 1 SPPK\''),
(98, '2018-03-15 10:23:21', 42, 'Done Assesment: {\"ass_id\":5,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 1 SPPK\",\"ass_desc\":\"-\",\"ass_timeopen\"', '/TA_Ubilearn/siswa/assesment/result/5', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 1 SPPK\''),
(99, '2018-03-15 10:24:07', 42, 'Done Assesment: {\"ass_id\":5,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 1 SPPK\",\"ass_desc\":\"-\",\"ass_timeopen\"', '/TA_Ubilearn/siswa/assesment/result/5', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 1 SPPK\''),
(100, '2018-03-15 10:35:02', 42, 'Login: iqbal', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Login'),
(101, '2018-03-15 10:35:11', 42, 'View Course: Sistem Pendukung Pengambilan Keputusan', '/TA_Ubilearn/siswa/course_detail/19', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi View Course \'Sistem Pendukung Pengambilan Keputusan\''),
(102, '2018-03-15 10:43:24', 42, 'Done Assesment: {\"ass_id\":4,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 1\",\"ass_desc\":\"-\",\"ass_timeopen\":\"201', '/TA_Ubilearn/siswa/Assesment/result/4', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 1\''),
(103, '2018-03-15 10:43:24', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/Assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(104, '2018-03-15 10:43:32', 42, 'Done Assesment: {\"ass_id\":4,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 1\",\"ass_desc\":\"-\",\"ass_timeopen\":\"201', '/TA_Ubilearn/siswa/Assesment/result/4', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 1\''),
(105, '2018-03-15 10:43:32', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/Assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(106, '2018-03-15 10:43:38', 42, 'Done Assesment: {\"ass_id\":4,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 1\",\"ass_desc\":\"-\",\"ass_timeopen\":\"201', '/TA_Ubilearn/siswa/assesment/result/4', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 1\''),
(107, '2018-03-15 10:43:38', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(108, '2018-03-15 11:38:52', 42, 'Done Assesment: {\"ass_id\":4,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 1\",\"ass_desc\":\"-\",\"ass_timeopen\":\"201', '/TA_Ubilearn/siswa/assesment/result/4', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 1\''),
(109, '2018-03-15 11:38:52', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(110, '2018-03-15 11:38:57', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(111, '2018-03-15 11:39:02', 42, 'View Course: Sistem Pendukung Pengambilan Keputusan', '/TA_Ubilearn/siswa/course_detail/19', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi View Course \'Sistem Pendukung Pengambilan Keputusan\''),
(112, '2018-03-15 11:39:12', 42, 'Done Assesment: {\"ass_id\":4,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 1\",\"ass_desc\":\"-\",\"ass_timeopen\":\"201', '/TA_Ubilearn/siswa/assesment/result/4', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 1\''),
(113, '2018-03-15 11:39:12', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(114, '2018-03-15 11:39:14', 42, 'View Course: Sistem Pendukung Pengambilan Keputusan', '/TA_Ubilearn/siswa/course_detail/19', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi View Course \'Sistem Pendukung Pengambilan Keputusan\''),
(115, '2018-03-15 11:39:17', 42, 'View Course: Pemodelan Sistem', '/TA_Ubilearn/siswa/course_detail/18', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi View Course \'Pemodelan Sistem\''),
(116, '2018-03-15 11:39:40', 42, 'Done Assesment: {\"ass_id\":5,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 1 SPPK\",\"ass_desc\":\"-\",\"ass_timeopen\"', '/TA_Ubilearn/siswa/Assesment/result/5', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 1 SPPK\''),
(117, '2018-03-15 11:39:40', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/Assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(118, '2018-03-15 11:45:00', 42, 'Done Assesment: {\"ass_id\":5,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 1 SPPK\",\"ass_desc\":\"-\",\"ass_timeopen\"', '/TA_Ubilearn/siswa/Assesment/result/5', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 1 SPPK\''),
(119, '2018-03-15 11:45:00', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/Assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(120, '2018-03-15 11:46:54', 42, 'Done Assesment: {\"ass_id\":5,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 1 SPPK\",\"ass_desc\":\"-\",\"ass_timeopen\"', '/TA_Ubilearn/siswa/Assesment/result/5', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 1 SPPK\''),
(121, '2018-03-15 11:46:54', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/Assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(122, '2018-03-15 11:47:23', 42, 'Done Assesment: {\"ass_id\":5,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 1 SPPK\",\"ass_desc\":\"-\",\"ass_timeopen\"', '/TA_Ubilearn/siswa/Assesment/result/5', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 1 SPPK\''),
(123, '2018-03-15 11:47:24', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/Assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(124, '2018-03-15 11:47:41', 42, 'Done Assesment: {\"ass_id\":5,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 1 SPPK\",\"ass_desc\":\"-\",\"ass_timeopen\"', '/TA_Ubilearn/siswa/Assesment/result/5', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 1 SPPK\''),
(125, '2018-03-15 11:47:41', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/Assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(126, '2018-03-15 11:47:43', 42, 'Done Assesment: {\"ass_id\":5,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 1 SPPK\",\"ass_desc\":\"-\",\"ass_timeopen\"', '/TA_Ubilearn/siswa/Assesment/result/5', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 1 SPPK\''),
(127, '2018-03-15 11:47:43', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/Assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(128, '2018-03-15 11:49:20', 42, 'Login: iqbal', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Login'),
(129, '2018-03-15 11:49:25', 42, 'View Course: Sistem Pendukung Pengambilan Keputusan', '/TA_Ubilearn/siswa/course_detail/19', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi View Course \'Sistem Pendukung Pengambilan Keputusan\''),
(130, '2018-03-15 11:49:33', 42, 'Done Assesment: {\"ass_id\":4,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 1\",\"ass_desc\":\"-\",\"ass_timeopen\":\"201', '/TA_Ubilearn/siswa/assesment/result/4', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 1\''),
(131, '2018-03-15 11:49:33', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(132, '2018-03-15 11:49:37', 42, 'Done Assesment: {\"ass_id\":5,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 1 SPPK\",\"ass_desc\":\"-\",\"ass_timeopen\"', '/TA_Ubilearn/siswa/Assesment/result/5', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 1 SPPK\''),
(133, '2018-03-15 11:49:38', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/Assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(134, '2018-03-15 11:49:48', 42, 'Done Assesment: {\"ass_id\":5,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 1 SPPK\",\"ass_desc\":\"-\",\"ass_timeopen\"', '/TA_Ubilearn/siswa/Assesment/result/5', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 1 SPPK\''),
(135, '2018-03-15 11:49:48', 42, 'Done Assesment: {\"ass_id\":5,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 1 SPPK\",\"ass_desc\":\"-\",\"ass_timeopen\"', '/TA_Ubilearn/siswa/Assesment/result/5', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 1 SPPK\''),
(136, '2018-03-15 11:49:48', 42, 'Done Assesment: {\"ass_id\":5,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 1 SPPK\",\"ass_desc\":\"-\",\"ass_timeopen\"', '/TA_Ubilearn/siswa/Assesment/result/5', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 1 SPPK\''),
(137, '2018-03-15 11:49:49', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/Assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(138, '2018-03-15 11:49:50', 42, 'Done Assesment: {\"ass_id\":5,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 1 SPPK\",\"ass_desc\":\"-\",\"ass_timeopen\"', '/TA_Ubilearn/siswa/Assesment/result/5', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 1 SPPK\''),
(139, '2018-03-15 11:49:50', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/Assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(140, '2018-03-15 11:49:51', 42, 'Done Assesment: {\"ass_id\":5,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 1 SPPK\",\"ass_desc\":\"-\",\"ass_timeopen\"', '/TA_Ubilearn/siswa/Assesment/result/5', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 1 SPPK\''),
(141, '2018-03-15 11:49:51', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/Assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(142, '2018-03-15 11:49:54', 42, 'Done Assesment: {\"ass_id\":4,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 1\",\"ass_desc\":\"-\",\"ass_timeopen\":\"201', '/TA_Ubilearn/siswa/assesment/result/4', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 1\''),
(143, '2018-03-15 11:49:54', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(144, '2018-03-15 11:49:57', 42, 'View Course: Sistem Pendukung Pengambilan Keputusan', '/TA_Ubilearn/siswa/course_detail/19', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi View Course \'Sistem Pendukung Pengambilan Keputusan\''),
(145, '2018-03-15 11:50:05', 42, 'View Course: Sistem Pendukung Pengambilan Keputusan', '/TA_Ubilearn/siswa/course_detail/19', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi View Course \'Sistem Pendukung Pengambilan Keputusan\''),
(146, '2018-03-15 11:50:15', 42, 'View Course: Sistem Pendukung Pengambilan Keputusan', '/TA_Ubilearn/siswa/course_detail/19', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi View Course \'Sistem Pendukung Pengambilan Keputusan\''),
(147, '2018-03-15 11:50:26', 42, 'Done Assesment: {\"ass_id\":4,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 1\",\"ass_desc\":\"-\",\"ass_timeopen\":\"201', '/TA_Ubilearn/siswa/assesment/result/4', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 1\''),
(148, '2018-03-15 11:50:26', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(149, '2018-03-15 11:50:30', 42, 'Done Assesment: {\"ass_id\":5,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 1 SPPK\",\"ass_desc\":\"-\",\"ass_timeopen\"', '/TA_Ubilearn/siswa/Assesment/result/5', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 1 SPPK\''),
(150, '2018-03-15 11:50:30', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/Assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(151, '2018-03-15 11:50:33', 42, 'Done Assesment: {\"ass_id\":4,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 1\",\"ass_desc\":\"-\",\"ass_timeopen\":\"201', '/TA_Ubilearn/siswa/assesment/result/4', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 1\''),
(152, '2018-03-15 11:50:33', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(153, '2018-03-15 11:50:39', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/Assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(154, '2018-03-15 11:50:45', 42, 'View Course: Sistem Pendukung Pengambilan Keputusan', '/TA_Ubilearn/siswa/course_detail/19', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi View Course \'Sistem Pendukung Pengambilan Keputusan\''),
(155, '2018-03-15 11:50:53', 42, 'Done Assesment: {\"ass_id\":4,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 1\",\"ass_desc\":\"-\",\"ass_timeopen\":\"201', '/TA_Ubilearn/siswa/assesment/result/4', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 1\''),
(156, '2018-03-15 11:50:53', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(157, '2018-03-15 11:51:01', 42, 'Done Assesment: {\"ass_id\":4,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 1\",\"ass_desc\":\"-\",\"ass_timeopen\":\"201', '/TA_Ubilearn/siswa/assesment/result/4', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 1\''),
(158, '2018-03-15 11:51:01', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(159, '2018-03-15 11:51:03', 42, 'View Course: Sistem Pendukung Pengambilan Keputusan', '/TA_Ubilearn/siswa/course_detail/19', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi View Course \'Sistem Pendukung Pengambilan Keputusan\''),
(160, '2018-03-15 11:51:07', 42, 'View Course: Pemodelan Sistem', '/TA_Ubilearn/siswa/course_detail/18', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi View Course \'Pemodelan Sistem\''),
(161, '2018-03-15 11:51:15', 42, 'View Course: Pemodelan Sistem', '/TA_Ubilearn/siswa/course_detail/18', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi View Course \'Pemodelan Sistem\''),
(162, '2018-03-15 11:51:37', 42, 'View Course: Pemodelan Sistem', '/TA_Ubilearn/siswa/course_detail/18', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3', '::1', 'iqbal melakukan aksi View Course \'Pemodelan Sistem\''),
(163, '2018-03-16 07:30:41', 42, 'Login: iqbal', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Login'),
(164, '2018-03-16 07:31:38', 42, 'View Course: Pemodelan Sistem', '/TA_Ubilearn/siswa/course_detail/18', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi View Course \'Pemodelan Sistem\''),
(165, '2018-03-16 07:31:52', 42, 'Done Assesment: {\"ass_id\":5,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 1 Mosi\",\"ass_desc\":\"-\",\"ass_timeopen\"', '/TA_Ubilearn/siswa/Assesment/result/5', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 1 Mosi\''),
(166, '2018-03-16 07:31:52', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/Assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(167, '2018-03-16 08:06:04', 42, 'Done Assesment: {\"ass_id\":5,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 1 Mosi\",\"ass_desc\":\"-\",\"ass_timeopen\"', '/TA_Ubilearn/siswa/Assesment/result/5', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 1 Mosi\''),
(168, '2018-03-16 08:06:04', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/Assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(169, '2018-03-16 08:07:01', 42, 'Done Assesment: {\"ass_id\":5,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 1 Mosi\",\"ass_desc\":\"-\",\"ass_timeopen\"', '/TA_Ubilearn/siswa/Assesment/result/5', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 1 Mosi\''),
(170, '2018-03-16 08:07:02', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/Assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(171, '2018-03-16 08:07:15', 42, 'Done Assesment: {\"ass_id\":5,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 1 Mosi\",\"ass_desc\":\"-\",\"ass_timeopen\"', '/TA_Ubilearn/siswa/Assesment/result/5', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 1 Mosi\''),
(172, '2018-03-16 08:07:16', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/Assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(173, '2018-03-16 08:07:35', 42, 'Done Assesment: {\"ass_id\":5,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 1 Mosi\",\"ass_desc\":\"-\",\"ass_timeopen\"', '/TA_Ubilearn/siswa/Assesment/result/5', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 1 Mosi\''),
(174, '2018-03-16 08:07:35', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/Assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(175, '2018-03-16 08:08:58', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/Assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(176, '2018-03-16 08:09:00', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/Assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(177, '2018-03-16 08:09:37', 42, 'View Course: Sistem Pendukung Pengambilan Keputusan', '/TA_Ubilearn/siswa/course_detail/19', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi View Course \'Sistem Pendukung Pengambilan Keputusan\''),
(178, '2018-03-16 08:09:47', 42, 'Done Assesment: {\"ass_id\":4,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 1 SPPK\",\"ass_desc\":\"-\",\"ass_timeopen\"', '/TA_Ubilearn/siswa/Assesment/result/4', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 1 SPPK\''),
(179, '2018-03-16 08:09:48', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/Assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(180, '2018-03-16 08:10:27', 42, 'Done Assesment: {\"ass_id\":4,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 1 SPPK\",\"ass_desc\":\"-\",\"ass_timeopen\"', '/TA_Ubilearn/siswa/Assesment/result/4', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 1 SPPK\''),
(181, '2018-03-16 08:11:03', 42, 'Done Assesment: {\"ass_id\":4,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 1 SPPK\",\"ass_desc\":\"-\",\"ass_timeopen\"', '/TA_Ubilearn/siswa/Assesment/result/4', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 1 SPPK\''),
(182, '2018-03-16 08:11:37', 42, 'Done Assesment: {\"ass_id\":4,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 1 SPPK\",\"ass_desc\":\"-\",\"ass_timeopen\"', '/TA_Ubilearn/siswa/assesment/result/4', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 1 SPPK\''),
(183, '2018-03-16 08:11:38', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(184, '2018-03-16 08:12:15', 42, 'Done Assesment: {\"ass_id\":4,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 1 SPPK\",\"ass_desc\":\"-\",\"ass_timeopen\"', '/TA_Ubilearn/siswa/Assesment/result/4', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 1 SPPK\''),
(185, '2018-03-16 08:12:16', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/Assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(186, '2018-03-16 08:12:30', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/Assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(187, '2018-03-16 08:12:34', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/Assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(188, '2018-03-16 08:12:36', 42, 'Done Assesment: {\"ass_id\":4,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 1 SPPK\",\"ass_desc\":\"-\",\"ass_timeopen\"', '/TA_Ubilearn/siswa/assesment/result/4', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 1 SPPK\''),
(189, '2018-03-16 08:12:36', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(190, '2018-03-16 08:12:38', 42, 'Done Assesment: {\"ass_id\":4,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 1 SPPK\",\"ass_desc\":\"-\",\"ass_timeopen\"', '/TA_Ubilearn/siswa/assesment/result/4', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 1 SPPK\''),
(191, '2018-03-16 08:12:38', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(192, '2018-03-16 08:12:40', 42, 'Done Assesment: {\"ass_id\":4,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 1 SPPK\",\"ass_desc\":\"-\",\"ass_timeopen\"', '/TA_Ubilearn/siswa/assesment/result/4', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 1 SPPK\'');
INSERT INTO `user_logs` (`log_id`, `log_time`, `usr_id`, `log_event_context`, `log_referrer`, `log_name`, `log_origin`, `log_ip`, `log_desc`) VALUES
(193, '2018-03-16 08:12:40', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(194, '2018-03-16 08:12:48', 42, 'Done Assesment: {\"ass_id\":4,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 1 SPPK\",\"ass_desc\":\"-\",\"ass_timeopen\"', '/TA_Ubilearn/siswa/assesment/result/4', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 1 SPPK\''),
(195, '2018-03-16 08:12:49', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(196, '2018-03-16 08:13:14', 44, 'Login: adzan', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Login'),
(197, '2018-03-16 08:13:31', 44, 'View Course: Sistem Pendukung Pengambilan Keputusan', '/TA_Ubilearn/siswa/course_close/19', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi View Course \'Sistem Pendukung Pengambilan Keputusan\''),
(198, '2018-03-16 08:13:33', 44, 'Enrol Course: Sistem Pendukung Pengambilan Keputusan', '/TA_Ubilearn/siswa/enrol/19', 'Enrol', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Enrol Course \'Sistem Pendukung Pengambilan Keputusan\''),
(199, '2018-03-16 08:13:36', 44, 'View Course: Sistem Pendukung Pengambilan Keputusan', '/TA_Ubilearn/siswa/course_detail/19', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi View Course \'Sistem Pendukung Pengambilan Keputusan\''),
(200, '2018-03-16 08:14:41', 44, 'Done Assesment: {\"ass_id\":4,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 1 SPPK\",\"ass_desc\":\"-\",\"ass_timeopen\"', '/TA_Ubilearn/siswa/assesment/result/4', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'Kuis 1 SPPK\''),
(201, '2018-03-16 08:14:41', 44, 'Done Assesment: ', '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'\''),
(202, '2018-03-16 08:15:21', 44, 'Done Assesment: {\"ass_id\":4,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 1 SPPK\",\"ass_desc\":\"-\",\"ass_timeopen\"', '/TA_Ubilearn/siswa/assesment/result/4', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'Kuis 1 SPPK\''),
(203, '2018-03-16 08:15:21', 44, 'Done Assesment: ', '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'\''),
(204, '2018-03-16 08:16:05', 45, 'Login: nungki', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'nungki melakukan aksi Login'),
(205, '2018-03-16 08:16:37', 43, 'Login: razzaq', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'razzaq melakukan aksi Login'),
(206, '2018-03-16 08:19:56', 42, 'Login: iqbal', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Login'),
(207, '2018-03-16 08:20:05', 42, 'View Course: Rekayasa Perangkat Lunak', '/TA_Ubilearn/siswa/course_close/20', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi View Course \'Rekayasa Perangkat Lunak\''),
(208, '2018-03-16 08:20:07', 42, 'Enrol Course: Rekayasa Perangkat Lunak', '/TA_Ubilearn/siswa/enrol/20', 'Enrol', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Enrol Course \'Rekayasa Perangkat Lunak\''),
(209, '2018-03-16 08:20:15', 42, 'View Course: Rekayasa Perangkat Lunak', '/TA_Ubilearn/siswa/course_detail/20', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi View Course \'Rekayasa Perangkat Lunak\''),
(210, '2018-03-16 08:20:37', 42, 'Done Assesment: {\"ass_id\":6,\"ass_tipe\":\"Kuis\",\"ass_name\":\"RPL - 1\",\"ass_desc\":\"-\",\"ass_timeopen\":\"20', '/TA_Ubilearn/siswa/Assesment/result/6', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'RPL - 1\''),
(211, '2018-03-16 08:20:37', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/Assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(212, '2018-03-16 08:20:57', 44, 'Login: adzan', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Login'),
(213, '2018-03-16 08:21:02', 44, 'View Course: Rekayasa Perangkat Lunak', '/TA_Ubilearn/siswa/course_close/20', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi View Course \'Rekayasa Perangkat Lunak\''),
(214, '2018-03-16 08:21:04', 44, 'Enrol Course: Rekayasa Perangkat Lunak', '/TA_Ubilearn/siswa/enrol/20', 'Enrol', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Enrol Course \'Rekayasa Perangkat Lunak\''),
(215, '2018-03-16 08:21:07', 44, 'View Course: Rekayasa Perangkat Lunak', '/TA_Ubilearn/siswa/course_detail/20', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi View Course \'Rekayasa Perangkat Lunak\''),
(216, '2018-03-16 08:21:12', 44, 'Done Assesment: {\"ass_id\":6,\"ass_tipe\":\"Kuis\",\"ass_name\":\"RPL - 1\",\"ass_desc\":\"-\",\"ass_timeopen\":\"20', '/TA_Ubilearn/siswa/assesment/result/6', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'RPL - 1\''),
(217, '2018-03-16 08:21:12', 44, 'Done Assesment: ', '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'\''),
(218, '2018-03-16 08:26:54', 44, 'Done Assesment: {\"ass_id\":6,\"ass_tipe\":\"Kuis\",\"ass_name\":\"RPL - 1\",\"ass_desc\":\"-\",\"ass_timeopen\":\"20', '/TA_Ubilearn/siswa/assesment/result/6', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'RPL - 1\''),
(219, '2018-03-16 08:27:50', 44, 'Done Assesment: {\"ass_id\":6,\"ass_tipe\":\"Kuis\",\"ass_name\":\"RPL - 1\",\"ass_desc\":\"-\",\"ass_timeopen\":\"20', '/TA_Ubilearn/siswa/assesment/result/6', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'RPL - 1\''),
(220, '2018-03-16 08:28:47', 44, 'Done Assesment: {\"ass_id\":6,\"ass_tipe\":\"Kuis\",\"ass_name\":\"RPL - 1\",\"ass_desc\":\"-\",\"ass_timeopen\":\"20', '/TA_Ubilearn/siswa/assesment/result/6', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'RPL - 1\''),
(221, '2018-03-16 08:30:53', 44, 'Done Assesment: {\"ass_id\":6,\"ass_tipe\":\"Kuis\",\"ass_name\":\"RPL - 1\",\"ass_desc\":\"-\",\"ass_timeopen\":\"20', '/TA_Ubilearn/siswa/assesment/result/6', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'RPL - 1\''),
(222, '2018-03-16 08:31:06', 44, 'Done Assesment: {\"ass_id\":6,\"ass_tipe\":\"Kuis\",\"ass_name\":\"RPL - 1\",\"ass_desc\":\"-\",\"ass_timeopen\":\"20', '/TA_Ubilearn/siswa/assesment/result/6', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'RPL - 1\''),
(223, '2018-03-16 08:31:20', 44, 'Done Assesment: {\"ass_id\":6,\"ass_tipe\":\"Kuis\",\"ass_name\":\"RPL - 1\",\"ass_desc\":\"-\",\"ass_timeopen\":\"20', '/TA_Ubilearn/siswa/assesment/result/6', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'RPL - 1\''),
(224, '2018-03-16 08:31:50', 44, 'Done Assesment: {\"ass_id\":6,\"ass_tipe\":\"Kuis\",\"ass_name\":\"RPL - 1\",\"ass_desc\":\"-\",\"ass_timeopen\":\"20', '/TA_Ubilearn/siswa/assesment/result/6', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'RPL - 1\''),
(225, '2018-03-16 08:37:32', 44, 'Done Assesment: {\"ass_id\":6,\"ass_tipe\":\"Kuis\",\"ass_name\":\"RPL - 1\",\"ass_desc\":\"-\",\"ass_timeopen\":\"20', '/TA_Ubilearn/siswa/assesment/result/6', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'RPL - 1\''),
(226, '2018-03-16 08:37:33', 44, 'Done Assesment: ', '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'\''),
(227, '2018-03-16 08:37:49', 44, 'Done Assesment: {\"ass_id\":6,\"ass_tipe\":\"Kuis\",\"ass_name\":\"RPL - 1\",\"ass_desc\":\"-\",\"ass_timeopen\":\"20', '/TA_Ubilearn/siswa/assesment/result/6', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'RPL - 1\''),
(228, '2018-03-16 08:37:50', 44, 'Done Assesment: ', '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'\''),
(229, '2018-03-16 08:38:12', 44, 'Done Assesment: {\"ass_id\":6,\"ass_tipe\":\"Kuis\",\"ass_name\":\"RPL - 1\",\"ass_desc\":\"-\",\"ass_timeopen\":\"20', '/TA_Ubilearn/siswa/assesment/result/6', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'RPL - 1\''),
(230, '2018-03-16 08:38:12', 44, 'Done Assesment: ', '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'\''),
(231, '2018-03-16 08:41:07', 44, 'Done Assesment: {\"ass_id\":6,\"ass_tipe\":\"Kuis\",\"ass_name\":\"RPL - 1\",\"ass_desc\":\"-\",\"ass_timeopen\":\"20', '/TA_Ubilearn/siswa/Assesment/result/6', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'RPL - 1\''),
(232, '2018-03-16 08:41:07', 44, 'Done Assesment: ', '/TA_Ubilearn/siswa/Assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'\''),
(233, '2018-03-16 08:41:22', 44, 'Done Assesment: {\"ass_id\":6,\"ass_tipe\":\"Kuis\",\"ass_name\":\"RPL - 1\",\"ass_desc\":\"-\",\"ass_timeopen\":\"20', '/TA_Ubilearn/siswa/assesment/result/6', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'RPL - 1\''),
(234, '2018-03-16 08:41:23', 44, 'Done Assesment: ', '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'\''),
(235, '2018-03-16 08:41:42', 44, 'Done Assesment: {\"ass_id\":6,\"ass_tipe\":\"Kuis\",\"ass_name\":\"RPL - 1\",\"ass_desc\":\"-\",\"ass_timeopen\":\"20', '/TA_Ubilearn/siswa/assesment/result/6', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'RPL - 1\''),
(236, '2018-03-16 08:41:42', 44, 'Done Assesment: ', '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'\''),
(237, '2018-03-16 08:49:10', 44, 'Done Assesment: {\"ass_id\":6,\"ass_tipe\":\"Kuis\",\"ass_name\":\"RPL - 1\",\"ass_desc\":\"-\",\"ass_timeopen\":\"20', '/TA_Ubilearn/siswa/assesment/result/6', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'RPL - 1\''),
(238, '2018-03-16 08:49:11', 44, 'Done Assesment: ', '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'\''),
(239, '2018-03-16 08:49:14', 44, 'Done Assesment: {\"ass_id\":6,\"ass_tipe\":\"Kuis\",\"ass_name\":\"RPL - 1\",\"ass_desc\":\"-\",\"ass_timeopen\":\"20', '/TA_Ubilearn/siswa/assesment/result/6', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'RPL - 1\''),
(240, '2018-03-16 08:49:14', 44, 'Done Assesment: ', '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'\''),
(241, '2018-03-16 08:50:42', 44, 'Done Assesment: {\"ass_id\":6,\"ass_tipe\":\"Kuis\",\"ass_name\":\"RPL - 1\",\"ass_desc\":\"-\",\"ass_timeopen\":\"20', '/TA_Ubilearn/siswa/assesment/result/6', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'RPL - 1\''),
(242, '2018-03-16 08:50:42', 44, 'Done Assesment: ', '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'\''),
(243, '2018-03-16 08:52:01', 44, 'Done Assesment: {\"ass_id\":6,\"ass_tipe\":\"Kuis\",\"ass_name\":\"RPL - 1\",\"ass_desc\":\"-\",\"ass_timeopen\":\"20', '/TA_Ubilearn/siswa/Assesment/result/6', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'RPL - 1\''),
(244, '2018-03-16 08:52:01', 44, 'Done Assesment: ', '/TA_Ubilearn/siswa/Assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'\''),
(245, '2018-03-16 09:01:12', 44, 'Done Assesment: {\"ass_id\":6,\"ass_tipe\":\"Kuis\",\"ass_name\":\"RPL - 1\",\"ass_desc\":\"-\",\"ass_timeopen\":\"20', '/TA_Ubilearn/siswa/assesment/result/6', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'RPL - 1\''),
(246, '2018-03-16 09:01:13', 44, 'Done Assesment: ', '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'\''),
(247, '2018-03-16 09:02:51', 44, 'Done Assesment: {\"ass_id\":6,\"ass_tipe\":\"Kuis\",\"ass_name\":\"RPL - 1\",\"ass_desc\":\"-\",\"ass_timeopen\":\"20', '/TA_Ubilearn/siswa/assesment/result/6', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'RPL - 1\''),
(248, '2018-03-16 09:02:52', 44, 'Done Assesment: ', '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'\''),
(249, '2018-03-16 09:04:32', 44, 'Done Assesment: {\"ass_id\":6,\"ass_tipe\":\"Kuis\",\"ass_name\":\"RPL - 1\",\"ass_desc\":\"-\",\"ass_timeopen\":\"20', '/TA_Ubilearn/siswa/Assesment/result/6', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'RPL - 1\''),
(250, '2018-03-16 09:04:32', 44, 'Done Assesment: ', '/TA_Ubilearn/siswa/Assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'\''),
(251, '2018-03-16 09:40:17', 44, 'Done Assesment: {\"ass_id\":6,\"ass_tipe\":\"Kuis\",\"ass_name\":\"RPL - 1\",\"ass_desc\":\"-\",\"ass_timeopen\":\"20', '/TA_Ubilearn/siswa/Assesment/result/6', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'RPL - 1\''),
(252, '2018-03-16 09:40:17', 44, 'Done Assesment: ', '/TA_Ubilearn/siswa/Assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'\''),
(253, '2018-03-16 09:42:59', 44, 'Done Assesment: {\"ass_id\":6,\"ass_tipe\":\"Kuis\",\"ass_name\":\"RPL - 1\",\"ass_desc\":\"-\",\"ass_timeopen\":\"20', '/TA_Ubilearn/siswa/Assesment/result/6', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'RPL - 1\''),
(254, '2018-03-16 09:43:00', 44, 'Done Assesment: ', '/TA_Ubilearn/siswa/Assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'\''),
(255, '2018-03-16 09:55:06', 44, 'Done Assesment: {\"ass_id\":6,\"ass_tipe\":\"Kuis\",\"ass_name\":\"RPL - 1\",\"ass_desc\":\"-\",\"ass_timeopen\":\"20', '/TA_Ubilearn/siswa/assesment/result/6', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'RPL - 1\''),
(256, '2018-03-16 09:55:07', 44, 'Done Assesment: ', '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'\''),
(257, '2018-03-16 09:55:23', 44, 'Done Assesment: {\"ass_id\":6,\"ass_tipe\":\"Kuis\",\"ass_name\":\"RPL - 1\",\"ass_desc\":\"-\",\"ass_timeopen\":\"20', '/TA_Ubilearn/siswa/assesment/result/6', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'RPL - 1\''),
(258, '2018-03-16 09:55:23', 44, 'Done Assesment: ', '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'\''),
(259, '2018-03-16 09:56:31', 44, 'Done Assesment: {\"ass_id\":6,\"ass_tipe\":\"Kuis\",\"ass_name\":\"RPL - 1\",\"ass_desc\":\"-\",\"ass_timeopen\":\"20', '/TA_Ubilearn/siswa/assesment/result/6', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'RPL - 1\''),
(260, '2018-03-16 09:56:31', 44, 'Done Assesment: ', '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'\''),
(261, '2018-03-16 09:57:02', 44, 'Done Assesment: {\"ass_id\":6,\"ass_tipe\":\"Kuis\",\"ass_name\":\"RPL - 1\",\"ass_desc\":\"-\",\"ass_timeopen\":\"20', '/TA_Ubilearn/siswa/assesment/result/6', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'RPL - 1\''),
(262, '2018-03-16 09:57:02', 44, 'Done Assesment: ', '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'\''),
(263, '2018-03-16 09:58:05', 42, 'Login: iqbal', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Login'),
(264, '2018-03-16 09:58:10', 42, 'View Course: Rekayasa Perangkat Lunak', '/TA_Ubilearn/siswa/course_detail/20', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi View Course \'Rekayasa Perangkat Lunak\''),
(265, '2018-03-16 09:58:16', 42, 'Done Assesment: {\"ass_id\":6,\"ass_tipe\":\"Kuis\",\"ass_name\":\"RPL - 1\",\"ass_desc\":\"-\",\"ass_timeopen\":\"20', '/TA_Ubilearn/siswa/assesment/result/6', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'RPL - 1\''),
(266, '2018-03-16 09:58:16', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(267, '2018-03-16 09:58:21', 42, 'Done Assesment: {\"ass_id\":6,\"ass_tipe\":\"Kuis\",\"ass_name\":\"RPL - 1\",\"ass_desc\":\"-\",\"ass_timeopen\":\"20', '/TA_Ubilearn/siswa/assesment/result/6', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'RPL - 1\''),
(268, '2018-03-16 09:58:21', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(269, '2018-03-16 11:56:43', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(270, '2018-03-16 12:25:48', 42, 'View Course: Rekayasa Perangkat Lunak', '/TA_Ubilearn/siswa/course_detail/20', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi View Course \'Rekayasa Perangkat Lunak\''),
(271, '2018-03-16 12:33:42', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(272, '2018-03-16 12:33:48', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(273, '2018-03-16 12:33:51', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(274, '2018-03-16 12:34:44', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(275, '2018-03-16 12:37:12', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(276, '2018-03-16 12:37:14', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(277, '2018-03-16 12:47:25', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(278, '2018-03-16 12:47:47', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(279, '2018-03-16 12:47:53', 42, 'Done Assesment: {\"ass_id\":3,\"ass_tipe\":\"Kuis\",\"ass_name\":\"Kuis 3\",\"ass_desc\":\"-\",\"ass_timeopen\":\"201', '/TA_Ubilearn/siswa/assesment/result/3', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Kuis 3\''),
(280, '2018-03-16 12:47:53', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(281, '2018-03-16 12:48:02', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(282, '2018-03-16 12:52:24', 42, 'Login: iqbal', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Login'),
(283, '2018-03-16 12:52:28', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(284, '2018-03-16 12:52:40', 43, 'Login: razzaq', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'razzaq melakukan aksi Login'),
(285, '2018-03-16 13:00:28', 42, 'Login: iqbal', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Login'),
(286, '2018-03-16 13:00:41', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(287, '2018-03-16 13:00:46', 42, 'Done Assesment: {\"ass_id\":2,\"ass_tipe\":\"Pre-test\",\"ass_name\":\"Pre-test Kuis 2\",\"ass_desc\":\"-\",\"ass_t', '/TA_Ubilearn/siswa/assesment/result/2', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Pre-test Kuis 2\''),
(288, '2018-03-16 13:00:46', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(289, '2018-03-16 13:01:17', 42, 'Done Assesment: {\"ass_id\":2,\"ass_tipe\":\"Pre-test\",\"ass_name\":\"Pre-test Kuis 2\",\"ass_desc\":\"-\",\"ass_t', '/TA_Ubilearn/siswa/assesment/result/2', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'Pre-test Kuis 2\''),
(290, '2018-03-16 13:01:18', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(291, '2018-03-16 13:01:57', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(292, '2018-03-16 13:02:04', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(293, '2018-03-17 07:25:26', 42, 'Login: iqbal', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Login'),
(294, '2018-03-17 07:25:31', 42, 'View Course: Sistem Pendukung Pengambilan Keputusan', '/TA_Ubilearn/siswa/course_detail/19', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi View Course \'Sistem Pendukung Pengambilan Keputusan\''),
(295, '2018-03-17 07:25:38', 42, 'View Course: Sistem Pendukung Pengambilan Keputusan', '/TA_Ubilearn/siswa/course_detail/19', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi View Course \'Sistem Pendukung Pengambilan Keputusan\''),
(296, '2018-03-17 07:25:41', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(297, '2018-03-17 07:25:52', 42, 'View Course: Rekayasa Perangkat Lunak', '/TA_Ubilearn/siswa/course_detail/20', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi View Course \'Rekayasa Perangkat Lunak\''),
(298, '2018-03-17 07:25:57', 42, 'Done Assesment: {\"ass_id\":6,\"ass_tipe\":\"Kuis\",\"ass_name\":\"RPL - 1\",\"ass_desc\":\"-\",\"ass_timeopen\":\"20', '/TA_Ubilearn/siswa/assesment/result/6', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'RPL - 1\''),
(299, '2018-03-17 07:25:58', 42, 'Done Assesment: ', '/TA_Ubilearn/siswa/assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Done Assesment \'\''),
(300, '2018-03-17 07:26:09', 44, 'Login: adzan', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Login'),
(301, '2018-03-17 07:26:11', 44, 'View Course: Rekayasa Perangkat Lunak', '/TA_Ubilearn/siswa/course_detail/20', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi View Course \'Rekayasa Perangkat Lunak\''),
(302, '2018-03-17 07:26:25', 44, 'Done Assesment: {\"ass_id\":6,\"ass_tipe\":\"Kuis\",\"ass_name\":\"RPL - 1\",\"ass_desc\":\"-\",\"ass_timeopen\":\"20', '/TA_Ubilearn/siswa/Assesment/result/6', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'RPL - 1\''),
(303, '2018-03-17 07:26:25', 44, 'Done Assesment: ', '/TA_Ubilearn/siswa/Assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'\''),
(304, '2018-03-17 07:26:32', 44, 'Done Assesment: {\"ass_id\":6,\"ass_tipe\":\"Kuis\",\"ass_name\":\"RPL - 1\",\"ass_desc\":\"-\",\"ass_timeopen\":\"20', '/TA_Ubilearn/siswa/Assesment/result/6', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'RPL - 1\''),
(305, '2018-03-17 07:26:33', 44, 'Done Assesment: ', '/TA_Ubilearn/siswa/Assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'\''),
(306, '2018-03-17 07:26:36', 44, 'Done Assesment: {\"ass_id\":6,\"ass_tipe\":\"Kuis\",\"ass_name\":\"RPL - 1\",\"ass_desc\":\"-\",\"ass_timeopen\":\"20', '/TA_Ubilearn/siswa/Assesment/result/6', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'RPL - 1\''),
(307, '2018-03-17 07:26:36', 44, 'Done Assesment: ', '/TA_Ubilearn/siswa/Assesment/result/images/DB_16%D1%8516.png', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'\''),
(308, '2018-03-17 07:26:39', 44, 'Done Assesment: {\"ass_id\":6,\"ass_tipe\":\"Kuis\",\"ass_name\":\"RPL - 1\",\"ass_desc\":\"-\",\"ass_timeopen\":\"20', '/TA_Ubilearn/siswa/result/6', 'Done Assesment', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi Done Assesment \'RPL - 1\''),
(309, '2018-03-17 07:29:15', 44, 'View Course: Rekayasa Perangkat Lunak', '/TA_Ubilearn/siswa/course_detail/20', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'adzan melakukan aksi View Course \'Rekayasa Perangkat Lunak\''),
(310, '2018-03-17 07:29:23', 43, 'Login: razzaq', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'razzaq melakukan aksi Login'),
(311, '2018-03-17 08:21:10', 46, 'Login: martcel', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'martcel melakukan aksi Login'),
(312, '2018-03-17 08:22:54', 46, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_close/14', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'martcel melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(313, '2018-03-17 08:22:55', 46, 'Enrol Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/enrol/14', 'Enrol', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'martcel melakukan aksi Enrol Course \'Sistem Berbasis Pengetahuan\''),
(314, '2018-03-17 08:22:58', 46, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'martcel melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(315, '2018-03-17 08:23:07', 46, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'martcel melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(316, '2018-03-17 08:24:53', 43, 'Login: razzaq', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'razzaq melakukan aksi Login'),
(317, '2018-03-17 08:33:37', 46, 'Login: martcel', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'martcel melakukan aksi Login'),
(318, '2018-03-17 08:33:39', 46, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'martcel melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(319, '2018-03-17 08:34:33', 46, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'martcel melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(320, '2018-03-17 08:49:50', 46, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'martcel melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(321, '2018-03-17 09:00:27', 43, 'Login: razzaq', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/604.5.6 (KHTML, like Gecko) Version/11.0', '::1', 'razzaq melakukan aksi Login'),
(322, '2018-03-17 09:15:27', 43, 'Login: razzaq', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'razzaq melakukan aksi Login'),
(323, '2018-03-17 10:31:05', 43, 'Login: razzaq', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'razzaq melakukan aksi Login'),
(324, '2018-03-17 10:32:16', 43, 'Login: razzaq', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/604.5.6 (KHTML, like Gecko) Version/11.0', '::1', 'razzaq melakukan aksi Login'),
(325, '2018-03-17 10:35:43', 43, 'Login: razzaq', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/604.5.6 (KHTML, like Gecko) Version/11.0', '::1', 'razzaq melakukan aksi Login'),
(326, '2018-03-17 10:37:33', 43, 'Login: razzaq', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'razzaq melakukan aksi Login'),
(327, '2018-03-17 14:08:36', 42, 'Login: iqbal', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3', '::1', 'iqbal melakukan aksi Login'),
(328, '2018-03-19 06:47:17', 42, 'Login: iqbal', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi Login'),
(329, '2018-03-19 06:47:30', 42, 'View Course: Pemodelan Sistem', '/TA_Ubilearn/siswa/course_detail/18', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Pemodelan Sistem\''),
(330, '2018-03-19 06:47:34', 42, 'View Lesson: Introduction', '/TA_Ubilearn/siswa/materi/12', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Introduction\' pada Course \'Pemodelan Sistem\''),
(331, '2018-03-19 06:47:38', 42, 'View Course: Pemodelan Sistem', '/TA_Ubilearn/siswa/course_detail/18', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Pemodelan Sistem\''),
(332, '2018-03-19 06:47:45', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(333, '2018-03-19 06:47:49', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(337, '2018-03-19 07:05:29', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(338, '2018-03-19 07:06:12', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(339, '2018-03-19 07:06:42', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(340, '2018-03-19 07:07:07', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(341, '2018-03-19 07:07:33', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(342, '2018-03-19 07:09:09', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(343, '2018-03-19 07:09:31', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(344, '2018-03-19 07:10:19', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(345, '2018-03-19 07:18:53', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(346, '2018-03-19 07:19:02', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(347, '2018-03-19 07:19:13', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(348, '2018-03-19 07:19:24', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(349, '2018-03-19 07:19:31', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(350, '2018-03-19 07:21:51', 43, 'Login: razzaq', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'razzaq melakukan aksi Login'),
(351, '2018-03-19 07:22:39', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(352, '2018-03-19 07:22:55', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(353, '2018-03-19 07:23:04', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(354, '2018-03-19 07:23:17', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(355, '2018-03-19 07:23:39', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(356, '2018-03-19 07:23:56', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(357, '2018-03-19 07:24:19', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\'');
INSERT INTO `user_logs` (`log_id`, `log_time`, `usr_id`, `log_event_context`, `log_referrer`, `log_name`, `log_origin`, `log_ip`, `log_desc`) VALUES
(358, '2018-03-19 07:24:34', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(359, '2018-03-19 07:24:47', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(360, '2018-03-19 07:26:34', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(361, '2018-03-19 07:26:43', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(362, '2018-03-19 07:26:59', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(363, '2018-03-19 07:27:08', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(364, '2018-03-19 07:27:43', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(365, '2018-03-19 07:27:50', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(366, '2018-03-19 07:27:55', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(367, '2018-03-19 07:29:31', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(368, '2018-03-19 07:30:28', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(369, '2018-03-19 07:30:42', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(370, '2018-03-19 07:30:53', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(371, '2018-03-19 07:31:19', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(372, '2018-03-19 07:32:26', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(373, '2018-03-19 07:33:00', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(374, '2018-03-19 07:33:03', 42, 'View Content: Mesin Inferensi part 1', '/TA_Ubilearn/siswa/content/video/1', 'View Content Video', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Content \'Mesin Inferensi part 1\' pada Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan.'),
(375, '2018-03-19 07:34:49', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(376, '2018-03-19 07:38:48', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(377, '2018-03-19 07:49:09', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(378, '2018-03-19 07:49:25', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(379, '2018-03-19 07:49:37', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(380, '2018-03-19 07:49:53', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(381, '2018-03-19 07:56:10', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(382, '2018-03-19 07:59:37', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(383, '2018-03-19 08:00:22', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(384, '2018-03-19 08:00:42', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(385, '2018-03-19 08:01:09', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(386, '2018-03-19 08:03:29', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(387, '2018-03-19 08:09:26', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(388, '2018-03-19 08:19:00', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(389, '2018-03-19 08:19:05', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(390, '2018-03-19 08:54:50', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(391, '2018-03-19 08:55:56', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(392, '2018-03-19 08:58:34', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(393, '2018-03-19 08:58:39', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(394, '2018-03-19 08:59:23', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(395, '2018-03-19 08:59:44', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(396, '2018-03-19 09:02:09', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(397, '2018-03-19 09:02:12', 42, 'View Content: Mesin Inferensi part 1', '/TA_Ubilearn/siswa/content/video/1', 'View Content Video', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Content \'Mesin Inferensi part 1\' pada Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan.'),
(398, '2018-03-19 09:02:14', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(399, '2018-03-19 09:04:16', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(400, '2018-03-19 09:04:31', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(401, '2018-03-19 09:04:43', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(402, '2018-03-19 09:06:25', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(403, '2018-03-19 09:06:50', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(404, '2018-03-19 09:07:55', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(405, '2018-03-19 09:08:34', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(406, '2018-03-19 09:08:42', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(407, '2018-03-19 09:11:18', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(408, '2018-03-19 09:15:51', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(409, '2018-03-19 09:17:28', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(410, '2018-03-19 09:17:42', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(411, '2018-03-19 09:18:13', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(412, '2018-03-19 09:19:00', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(413, '2018-03-19 09:30:19', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(414, '2018-03-19 09:31:23', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(415, '2018-03-19 09:31:36', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(416, '2018-03-19 09:34:08', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(417, '2018-03-19 09:34:33', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(418, '2018-03-19 09:43:25', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(419, '2018-03-19 09:44:07', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(420, '2018-03-19 09:44:35', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(421, '2018-03-19 09:45:29', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(422, '2018-03-19 09:45:39', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(423, '2018-03-19 09:51:16', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(424, '2018-03-19 09:52:00', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(425, '2018-03-19 09:52:22', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(426, '2018-03-19 09:52:39', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(427, '2018-03-19 09:53:23', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(428, '2018-03-19 09:53:26', 42, 'View Content: ', '/TA_Ubilearn/siswa/content/countLogContent', 'View Content Video', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Content \'\' pada Lesson \'\' pada Course \'.'),
(429, '2018-03-19 09:53:46', 42, 'View Content: ', '/TA_Ubilearn/siswa/content/countLogContent', 'View Content Video', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Content \'\' pada Lesson \'\' pada Course \'.'),
(430, '2018-03-19 09:54:43', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(431, '2018-03-19 09:55:42', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(432, '2018-03-19 09:56:18', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(433, '2018-03-19 09:56:38', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(434, '2018-03-19 09:56:49', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(435, '2018-03-19 09:57:26', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(436, '2018-03-19 09:59:41', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(437, '2018-03-19 09:59:52', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(438, '2018-03-19 10:00:15', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(439, '2018-03-19 10:01:06', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(440, '2018-03-19 10:01:18', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(441, '2018-03-19 10:02:28', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(442, '2018-03-19 10:02:55', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(443, '2018-03-19 10:03:05', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(444, '2018-03-19 10:03:08', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(445, '2018-03-19 10:03:13', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(446, '2018-03-19 10:03:36', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(447, '2018-03-19 10:04:02', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(448, '2018-03-19 10:04:31', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(449, '2018-03-19 10:04:57', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(450, '2018-03-19 10:05:54', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(451, '2018-03-19 10:06:11', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(452, '2018-03-19 10:07:17', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(453, '2018-03-19 10:07:29', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(454, '2018-03-19 10:07:43', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(455, '2018-03-19 10:08:05', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(456, '2018-03-19 10:08:22', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(457, '2018-03-19 10:12:44', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(458, '2018-03-19 10:12:53', 42, 'View Content: Mesin Inferensi part 1', '/TA_Ubilearn/siswa/content/video/1', 'View Content Video', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Content \'Mesin Inferensi part 1\' pada Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan.'),
(459, '2018-03-19 10:12:55', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(460, '2018-03-19 10:13:37', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(461, '2018-03-19 10:13:49', 42, 'View Content: Mesin Inferensi part 1', '/TA_Ubilearn/siswa/content/video/1', 'View Content Video', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Content \'Mesin Inferensi part 1\' pada Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan.'),
(462, '2018-03-19 10:13:51', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(463, '2018-03-19 10:16:13', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(464, '2018-03-19 10:16:50', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(465, '2018-03-19 10:17:02', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(466, '2018-03-19 10:17:16', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(467, '2018-03-19 10:17:21', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(468, '2018-03-19 10:18:15', 42, 'View Content: Mesin Inferensi part 1', '/TA_Ubilearn/siswa/content/video/1', 'View Content Video', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Content \'Mesin Inferensi part 1\' pada Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan.'),
(469, '2018-03-19 10:18:20', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(470, '2018-03-19 10:19:18', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(471, '2018-03-19 10:19:49', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(472, '2018-03-19 10:20:23', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(473, '2018-03-19 10:22:33', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(474, '2018-03-19 10:23:20', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(475, '2018-03-19 10:24:16', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(476, '2018-03-19 10:25:12', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(477, '2018-03-19 10:31:15', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(478, '2018-03-19 10:31:25', 42, 'View Content: Mesin Inferensi part 1', '/TA_Ubilearn/siswa/content/video/1', 'View Content Video', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Content \'Mesin Inferensi part 1\' pada Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan.'),
(479, '2018-03-19 10:31:27', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(480, '2018-03-19 10:31:53', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(481, '2018-03-19 10:32:33', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(482, '2018-03-19 10:32:54', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(483, '2018-03-19 10:32:57', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(484, '2018-03-19 10:33:10', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(485, '2018-03-19 10:34:01', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(486, '2018-03-19 10:36:44', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(487, '2018-03-19 10:37:16', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(488, '2018-03-19 10:37:19', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(489, '2018-03-19 10:37:38', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(490, '2018-03-19 10:37:42', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(491, '2018-03-19 10:37:46', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(492, '2018-03-19 10:37:51', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(493, '2018-03-19 10:47:01', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(494, '2018-03-19 10:47:10', 42, 'View Content: Mesin Inferensi part 1', '/TA_Ubilearn/siswa/content/video/1', 'View Content Video', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Content \'Mesin Inferensi part 1\' pada Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan.'),
(495, '2018-03-19 10:52:51', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(496, '2018-03-19 10:53:25', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(497, '2018-03-19 10:53:30', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(498, '2018-03-19 10:53:33', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(499, '2018-03-19 10:53:36', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(500, '2018-03-19 10:54:09', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(501, '2018-03-19 10:54:15', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(502, '2018-03-19 10:56:58', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(503, '2018-03-19 10:57:19', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(504, '2018-03-19 10:57:21', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(505, '2018-03-19 10:57:46', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(506, '2018-03-19 10:58:03', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(507, '2018-03-19 10:58:19', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(508, '2018-03-19 10:58:23', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(509, '2018-03-19 10:58:35', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(510, '2018-03-19 10:58:41', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(511, '2018-03-19 10:58:46', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(512, '2018-03-19 11:02:17', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(513, '2018-03-19 11:03:20', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(514, '2018-03-19 11:03:23', 42, 'View Content: Mesin Inferensi part 1', '/TA_Ubilearn/siswa/content/video/1', 'View Content Video', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Content \'Mesin Inferensi part 1\' pada Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan.'),
(515, '2018-03-19 11:03:26', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(516, '2018-03-19 11:03:35', 42, 'View Content: Mesin Inferensi part 1', '/TA_Ubilearn/siswa/content/video/1', 'View Content Video', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Content \'Mesin Inferensi part 1\' pada Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan.'),
(517, '2018-03-19 11:03:38', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(518, '2018-03-19 11:05:49', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(519, '2018-03-19 11:05:53', 42, 'View Content: Mesin Inferensi part 1', '/TA_Ubilearn/siswa/content/video/1', 'View Content Video', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Content \'Mesin Inferensi part 1\' pada Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan.'),
(520, '2018-03-19 11:05:56', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\'');
INSERT INTO `user_logs` (`log_id`, `log_time`, `usr_id`, `log_event_context`, `log_referrer`, `log_name`, `log_origin`, `log_ip`, `log_desc`) VALUES
(521, '2018-03-19 11:09:05', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(522, '2018-03-19 11:10:07', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(523, '2018-03-19 11:12:36', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(524, '2018-03-19 11:12:52', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(525, '2018-03-19 11:13:10', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(526, '2018-03-19 11:13:34', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(527, '2018-03-19 11:13:56', 42, 'View Content: Mesin Inferensi part 1', '/TA_Ubilearn/siswa/content/video/1', 'View Content Video', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Content \'Mesin Inferensi part 1\' pada Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan.'),
(528, '2018-03-19 11:13:59', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(529, '2018-03-19 11:15:19', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(530, '2018-03-19 11:15:38', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(531, '2018-03-19 11:16:13', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(532, '2018-03-19 11:16:16', 42, 'View Content: Mesin Inferensi part 1', '/TA_Ubilearn/siswa/content/video/1', 'View Content Video', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Content \'Mesin Inferensi part 1\' pada Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan.'),
(533, '2018-03-19 11:16:19', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(534, '2018-03-19 11:16:35', 42, 'View Content: Mesin Inferensi part 1', '/TA_Ubilearn/siswa/content/video/1', 'View Content Video', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Content \'Mesin Inferensi part 1\' pada Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan.'),
(535, '2018-03-19 11:16:36', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(536, '2018-03-19 11:19:24', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(537, '2018-03-19 11:19:29', 42, 'View Course: Pemodelan Sistem', '/TA_Ubilearn/siswa/course_detail/18', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Pemodelan Sistem\''),
(538, '2018-03-19 11:19:34', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(539, '2018-03-19 11:23:45', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(540, '2018-03-19 11:24:23', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(541, '2018-03-19 11:25:06', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(542, '2018-03-19 11:25:19', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(543, '2018-03-19 11:25:23', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(544, '2018-03-19 11:25:28', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(545, '2018-03-19 11:26:43', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(546, '2018-03-19 11:26:47', 42, 'View Lesson: Ontologi Tools', '/TA_Ubilearn/siswa/materi/11', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Ontologi Tools\' pada Course \'Sistem Berbasis Pengetahuan\''),
(547, '2018-03-19 11:26:50', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(548, '2018-03-19 11:27:19', 42, 'View Lesson: Ontologi Tools', '/TA_Ubilearn/siswa/materi/11', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Ontologi Tools\' pada Course \'Sistem Berbasis Pengetahuan\''),
(549, '2018-03-19 11:27:22', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(550, '2018-03-19 11:27:49', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(551, '2018-03-19 11:27:56', 42, 'View Lesson: Mesin Inferensi', '/TA_Ubilearn/siswa/materi/10', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Lesson \'Mesin Inferensi\' pada Course \'Sistem Berbasis Pengetahuan\''),
(552, '2018-03-19 11:28:02', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '127.0.0.1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(553, '2018-03-20 15:15:56', 43, 'Login: razzaq', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'razzaq melakukan aksi Login'),
(554, '2018-03-20 15:19:43', 42, 'Login: iqbal', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'iqbal melakukan aksi Login'),
(555, '2018-03-20 15:48:13', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(556, '2018-03-20 15:48:56', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(557, '2018-03-20 15:49:34', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(558, '2018-03-20 15:51:24', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(559, '2018-03-20 15:52:08', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(560, '2018-03-20 16:01:27', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(561, '2018-03-20 16:02:40', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(562, '2018-03-20 16:03:51', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(563, '2018-03-20 16:04:51', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(564, '2018-03-20 16:05:24', 42, 'View Course: Sistem Berbasis Pengetahuan', '/TA_Ubilearn/siswa/course_detail/14', 'View Course', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'iqbal melakukan aksi View Course \'Sistem Berbasis Pengetahuan\''),
(565, '2018-03-20 17:10:34', 43, 'Login: razzaq', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'razzaq melakukan aksi Login'),
(566, '2018-03-20 17:38:53', 43, 'Delete Thread: ', '/TA_Ubilearn/instruktur/delete_thread_instruktur/71/9', 'Delete Thread', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'razzaq melakukan aksi Delete Thread \'\''),
(567, '2018-03-21 01:21:42', 43, 'Login: razzaq', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'razzaq melakukan aksi Login'),
(568, '2018-03-21 02:05:00', 44, 'Login: adzan', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'adzan melakukan aksi Login'),
(569, '2018-03-21 02:05:47', 44, 'View Forum: Introduction', '/TA_Ubilearn/siswa/list_thread_siswa/17', 'View Forum', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'adzan melakukan aksi View Forum \'Introduction\''),
(570, '2018-03-21 02:06:35', 44, 'Create Thread: Membahas tentang apa Mesin Inferensi?', '/TA_Ubilearn/siswa/thread/insert_thread_siswa/17', 'Create Thread', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'adzan melakukan aksi Create Thread \'Membahas tentang apa Mesin Inferensi?\''),
(571, '2018-03-21 02:06:35', 44, 'View Forum: Introduction', '/TA_Ubilearn/siswa/list_thread_siswa/17', 'View Forum', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'adzan melakukan aksi View Forum \'Introduction\''),
(572, '2018-03-21 02:07:27', 42, 'Login: iqbal', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'iqbal melakukan aksi Login'),
(573, '2018-03-21 02:08:07', 42, 'View Forum: Introduction', '/TA_Ubilearn/siswa/list_thread_siswa/17', 'View Forum', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'iqbal melakukan aksi View Forum \'Introduction\''),
(574, '2018-03-21 02:08:11', 42, 'View Thread: Membahas tentang apa Mesin Inferensi?', '/TA_Ubilearn/siswa/detail_thread_siswa/72', 'View Thread', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'iqbal melakukan aksi View Thread \'Membahas tentang apa Mesin Inferensi?\''),
(575, '2018-03-21 02:09:33', 43, 'Login: razzaq', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'razzaq melakukan aksi Login'),
(576, '2018-03-21 02:09:58', 44, 'Login: adzan', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'adzan melakukan aksi Login'),
(577, '2018-03-21 02:10:06', 42, 'Login: iqbal', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'iqbal melakukan aksi Login'),
(578, '2018-03-21 02:10:25', 42, 'View Forum: Introduction', '/TA_Ubilearn/siswa/list_thread_siswa/17', 'View Forum', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'iqbal melakukan aksi View Forum \'Introduction\''),
(579, '2018-03-21 02:10:27', 42, 'View Thread: Membahas tentang apa Mesin Inferensi?', '/TA_Ubilearn/siswa/detail_thread_siswa/72', 'View Thread', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'iqbal melakukan aksi View Thread \'Membahas tentang apa Mesin Inferensi?\''),
(580, '2018-03-21 02:14:20', 44, 'Login: adzan', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'adzan melakukan aksi Login'),
(581, '2018-03-21 02:14:30', 44, 'View Forum: Introduction', '/TA_Ubilearn/siswa/list_thread_siswa/17', 'View Forum', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'adzan melakukan aksi View Forum \'Introduction\''),
(582, '2018-03-21 02:14:33', 44, 'View Thread: Membahas tentang apa Mesin Inferensi?', '/TA_Ubilearn/siswa/detail_thread_siswa/72', 'View Thread', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'adzan melakukan aksi View Thread \'Membahas tentang apa Mesin Inferensi?\''),
(583, '2018-03-21 02:15:50', 44, 'View Thread: Membahas tentang apa Mesin Inferensi?', '/TA_Ubilearn/siswa/detail_thread_siswa/72', 'View Thread', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'adzan melakukan aksi View Thread \'Membahas tentang apa Mesin Inferensi?\''),
(584, '2018-03-21 02:17:02', 44, 'Create Reply: Membahas tentang apa Mesin Inferensi?', '/TA_Ubilearn/siswa/thread/insert_komentar_reply/72', 'Create Reply', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'adzan melakukan aksi Create Reply pada \'Membahas tentang apa Mesin Inferensi?\''),
(585, '2018-03-21 02:17:02', 44, 'View Thread: Membahas tentang apa Mesin Inferensi?', '/TA_Ubilearn/siswa/detail_thread_siswa/72', 'View Thread', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'adzan melakukan aksi View Thread \'Membahas tentang apa Mesin Inferensi?\''),
(586, '2018-03-21 02:19:17', 44, 'View Thread: Membahas tentang apa Mesin Inferensi?', '/TA_Ubilearn/siswa/detail_thread_siswa/72', 'View Thread', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'adzan melakukan aksi View Thread \'Membahas tentang apa Mesin Inferensi?\''),
(587, '2018-03-21 02:19:30', 44, 'View Thread: Membahas tentang apa Mesin Inferensi?', '/TA_Ubilearn/siswa/detail_thread_siswa/72', 'View Thread', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'adzan melakukan aksi View Thread \'Membahas tentang apa Mesin Inferensi?\''),
(588, '2018-03-21 02:19:38', 42, 'Login: iqbal', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'iqbal melakukan aksi Login'),
(589, '2018-03-21 02:19:49', 42, 'View Forum: Introduction', '/TA_Ubilearn/siswa/list_thread_siswa/17', 'View Forum', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'iqbal melakukan aksi View Forum \'Introduction\''),
(590, '2018-03-21 02:19:52', 42, 'View Thread: Membahas tentang apa Mesin Inferensi?', '/TA_Ubilearn/siswa/detail_thread_siswa/72', 'View Thread', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'iqbal melakukan aksi View Thread \'Membahas tentang apa Mesin Inferensi?\''),
(591, '2018-03-21 02:20:03', 42, 'Create Reply: Membahas tentang apa Mesin Inferensi?', '/TA_Ubilearn/siswa/thread/insert_komentar_reply/72', 'Create Reply', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'iqbal melakukan aksi Create Reply pada \'Membahas tentang apa Mesin Inferensi?\''),
(592, '2018-03-21 02:20:04', 42, 'View Thread: Membahas tentang apa Mesin Inferensi?', '/TA_Ubilearn/siswa/detail_thread_siswa/72', 'View Thread', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'iqbal melakukan aksi View Thread \'Membahas tentang apa Mesin Inferensi?\''),
(593, '2018-03-21 02:20:56', 42, 'View Forum: Introduction', '/TA_Ubilearn/siswa/list_thread_siswa/17', 'View Forum', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'iqbal melakukan aksi View Forum \'Introduction\''),
(594, '2018-03-21 02:21:24', 42, 'View Thread: Membahas tentang apa Mesin Inferensi?', '/TA_Ubilearn/siswa/detail_thread_siswa/72', 'View Thread', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'iqbal melakukan aksi View Thread \'Membahas tentang apa Mesin Inferensi?\''),
(595, '2018-03-21 02:21:27', 42, 'View Forum: Introduction', '/TA_Ubilearn/siswa/list_thread_siswa/17', 'View Forum', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'iqbal melakukan aksi View Forum \'Introduction\''),
(596, '2018-03-21 02:21:50', 43, 'Login: razzaq', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'razzaq melakukan aksi Login'),
(597, '2018-03-21 02:43:04', 42, 'Login: iqbal', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'iqbal melakukan aksi Login'),
(598, '2018-03-21 02:43:24', 42, 'View Forum: Introduction', '/TA_Ubilearn/siswa/list_thread_siswa/17', 'View Forum', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'iqbal melakukan aksi View Forum \'Introduction\''),
(599, '2018-03-21 02:43:27', 42, 'View Thread: Membahas tentang apa Mesin Inferensi?', '/TA_Ubilearn/siswa/detail_thread_siswa/72', 'View Thread', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'iqbal melakukan aksi View Thread \'Membahas tentang apa Mesin Inferensi?\''),
(600, '2018-03-21 02:43:33', 42, 'View Thread: Membahas tentang apa Mesin Inferensi?', '/TA_Ubilearn/siswa/detail_thread_siswa/72', 'View Thread', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'iqbal melakukan aksi View Thread \'Membahas tentang apa Mesin Inferensi?\''),
(601, '2018-03-21 02:43:40', 42, 'Create Reply: Membahas tentang apa Mesin Inferensi?', '/TA_Ubilearn/siswa/thread/insert_komentar_reply_reply_reply/15/72', 'Create Reply', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'iqbal melakukan aksi Create Reply pada \'Membahas tentang apa Mesin Inferensi?\''),
(602, '2018-03-21 02:43:40', 42, 'View Thread: Membahas tentang apa Mesin Inferensi?', '/TA_Ubilearn/siswa/detail_thread_siswa/72', 'View Thread', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'iqbal melakukan aksi View Thread \'Membahas tentang apa Mesin Inferensi?\''),
(603, '2018-03-21 02:45:47', 43, 'Login: razzaq', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'razzaq melakukan aksi Login'),
(604, '2018-03-21 02:54:01', 44, 'Login: adzan', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'adzan melakukan aksi Login'),
(605, '2018-03-21 02:54:12', 44, 'View Forum: Introduction', '/TA_Ubilearn/siswa/list_thread_siswa/17', 'View Forum', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'adzan melakukan aksi View Forum \'Introduction\''),
(606, '2018-03-21 02:54:14', 44, 'View Thread: Membahas tentang apa Mesin Inferensi?', '/TA_Ubilearn/siswa/detail_thread_siswa/72', 'View Thread', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'adzan melakukan aksi View Thread \'Membahas tentang apa Mesin Inferensi?\''),
(607, '2018-03-21 02:54:16', 44, 'View Forum: Introduction', '/TA_Ubilearn/siswa/list_thread_siswa/17', 'View Forum', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'adzan melakukan aksi View Forum \'Introduction\''),
(608, '2018-03-21 03:03:00', 42, 'Login: iqbal', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'iqbal melakukan aksi Login'),
(609, '2018-03-21 03:03:11', 42, 'View Forum: Introduction', '/TA_Ubilearn/siswa/list_thread_siswa/17', 'View Forum', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'iqbal melakukan aksi View Forum \'Introduction\''),
(610, '2018-03-21 03:03:13', 42, 'View Thread: Membahas tentang apa Mesin Inferensi?', '/TA_Ubilearn/siswa/detail_thread_siswa/72', 'View Thread', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.16', '::1', 'iqbal melakukan aksi View Thread \'Membahas tentang apa Mesin Inferensi?\''),
(611, '2018-03-21 04:58:01', 42, 'View Thread: Membahas tentang apa Mesin Inferensi?', '/TA_Ubilearn/siswa/detail_thread_siswa/72', 'View Thread', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.18', '::1', 'iqbal melakukan aksi View Thread \'Membahas tentang apa Mesin Inferensi?\''),
(612, '2018-03-21 04:58:55', 42, 'View Forum: Introduction', '/TA_Ubilearn/siswa/list_thread_siswa/17', 'View Forum', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.18', '::1', 'iqbal melakukan aksi View Forum \'Introduction\''),
(613, '2018-03-21 04:58:59', 42, 'View Thread: Membahas tentang apa Mesin Inferensi?', '/TA_Ubilearn/siswa/detail_thread_siswa/72', 'View Thread', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.18', '::1', 'iqbal melakukan aksi View Thread \'Membahas tentang apa Mesin Inferensi?\''),
(614, '2018-03-21 04:59:02', 42, 'View Forum: Introduction', '/TA_Ubilearn/siswa/list_thread_siswa/17', 'View Forum', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.18', '::1', 'iqbal melakukan aksi View Forum \'Introduction\''),
(615, '2018-03-21 04:59:21', 43, 'Login: razzaq', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.18', '::1', 'razzaq melakukan aksi Login'),
(616, '2018-03-21 05:04:06', 44, 'Login: adzan', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.18', '::1', 'adzan melakukan aksi Login'),
(617, '2018-03-21 05:04:21', 44, 'View Forum: Introduction', '/TA_Ubilearn/siswa/list_thread_siswa/17', 'View Forum', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.18', '::1', 'adzan melakukan aksi View Forum \'Introduction\''),
(618, '2018-03-21 05:05:03', 44, 'View Forum: Introduction', '/TA_Ubilearn/siswa/list_thread_siswa/17', 'View Forum', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.18', '::1', 'adzan melakukan aksi View Forum \'Introduction\''),
(619, '2018-03-21 05:05:47', 44, 'View Forum: Introduction', '/TA_Ubilearn/siswa/list_thread_siswa/17', 'View Forum', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.18', '::1', 'adzan melakukan aksi View Forum \'Introduction\''),
(620, '2018-03-21 05:07:43', 44, 'View Forum: Introduction', '/TA_Ubilearn/siswa/list_thread_siswa/17', 'View Forum', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.18', '::1', 'adzan melakukan aksi View Forum \'Introduction\''),
(621, '2018-03-21 05:08:02', 44, 'View Forum: Introduction', '/TA_Ubilearn/siswa/list_thread_siswa/17', 'View Forum', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.18', '::1', 'adzan melakukan aksi View Forum \'Introduction\''),
(622, '2018-03-21 05:56:24', 44, 'View Forum: Introduction', '/TA_Ubilearn/siswa/list_thread_siswa/17', 'View Forum', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.18', '::1', 'adzan melakukan aksi View Forum \'Introduction\''),
(623, '2018-03-25 15:30:43', 43, 'Login: razzaq', '/TA_Ubilearn/C_login/masuk', 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.18', '::1', 'razzaq melakukan aksi Login'),
(624, '2018-03-25 16:15:51', 43, 'Rate Post: Membahas tentang apa Mesin Inferensi?', '/TA_Ubilearn/instruktur/thread/insert_rating_reply/13/72/1', 'Rate Post', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.18', '::1', 'razzaq melakukan aksi Rate Post pada \'Membahas tentang apa Mesin Inferensi?\'');

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
  MODIFY `crs_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `course_assesment`
--
ALTER TABLE `course_assesment`
  MODIFY `ass_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `course_assesment_question`
--
ALTER TABLE `course_assesment_question`
  MODIFY `qst_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `course_assesment_questions_answer`
--
ALTER TABLE `course_assesment_questions_answer`
  MODIFY `ans_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `course_assesment_questions_answer_of_student`
--
ALTER TABLE `course_assesment_questions_answer_of_student`
  MODIFY `ast_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `course_assesment_result`
--
ALTER TABLE `course_assesment_result`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
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
  MODIFY `cnt_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `course_enrol`
--
ALTER TABLE `course_enrol`
  MODIFY `enr_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `course_enrol_detail`
--
ALTER TABLE `course_enrol_detail`
  MODIFY `end_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `course_forum`
--
ALTER TABLE `course_forum`
  MODIFY `cfr_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `course_forum_thread`
--
ALTER TABLE `course_forum_thread`
  MODIFY `cft_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `course_forum_thread_reply`
--
ALTER TABLE `course_forum_thread_reply`
  MODIFY `ftr_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `course_forum_thread_reply_reply`
--
ALTER TABLE `course_forum_thread_reply_reply`
  MODIFY `trr_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `course_forum_thread_reply_reply_reply`
--
ALTER TABLE `course_forum_thread_reply_reply_reply`
  MODIFY `rrr_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `course_forum_user`
--
ALTER TABLE `course_forum_user`
  MODIFY `cfu_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `course_learning_outcomes`
--
ALTER TABLE `course_learning_outcomes`
  MODIFY `loc_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `course_lesson`
--
ALTER TABLE `course_lesson`
  MODIFY `lsn_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `lesson_access_log`
--
ALTER TABLE `lesson_access_log`
  MODIFY `lal_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `ntf_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `rating_reply`
--
ALTER TABLE `rating_reply`
  MODIFY `rry_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `rating_reply_reply`
--
ALTER TABLE `rating_reply_reply`
  MODIFY `rrp_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `rating_reply_reply_reply`
--
ALTER TABLE `rating_reply_reply_reply`
  MODIFY `rrl_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
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
  MODIFY `usr_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `user_logs`
--
ALTER TABLE `user_logs`
  MODIFY `log_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=625;
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
-- Ketidakleluasaan untuk tabel `course_assesment_result`
--
ALTER TABLE `course_assesment_result`
  ADD CONSTRAINT `assesment_foreign` FOREIGN KEY (`ass_id`) REFERENCES `course_assesment` (`ass_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_foreign` FOREIGN KEY (`usr_id`) REFERENCES `users` (`usr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `course_assignment`
--
ALTER TABLE `course_assignment`
  ADD CONSTRAINT `course_assignment_foreign` FOREIGN KEY (`crs_id`) REFERENCES `course` (`crs_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `course_assignment_loc`
--
ALTER TABLE `course_assignment_loc`
  ADD CONSTRAINT `asg_foreign` FOREIGN KEY (`asg_id`) REFERENCES `course_assignment` (`asg_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `loc_foreign` FOREIGN KEY (`loc_id`) REFERENCES `course_learning_outcomes` (`loc_id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
-- Ketidakleluasaan untuk tabel `course_forum_user`
--
ALTER TABLE `course_forum_user`
  ADD CONSTRAINT `cfu_forum` FOREIGN KEY (`cfr_id`) REFERENCES `course_forum` (`cfr_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cfu_user` FOREIGN KEY (`usr_id`) REFERENCES `users` (`usr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
-- Ketidakleluasaan untuk tabel `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `asg_foreign_key` FOREIGN KEY (`asg_id`) REFERENCES `course_assignment` (`asg_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ass_foreign_key` FOREIGN KEY (`ass_id`) REFERENCES `course_assesment` (`ass_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lsn_foreign_key` FOREIGN KEY (`lsn_id`) REFERENCES `course_lesson` (`lsn_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usr_foreign_key` FOREIGN KEY (`usr_id`) REFERENCES `users` (`usr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
