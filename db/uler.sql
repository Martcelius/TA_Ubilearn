CREATE DATABASE IF NOT EXISTS `uler`;
USE `uler`;

CREATE TABLE IF NOT EXISTS `roles` (
  `rol_id` int(10) unsigned NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `rol_name` varchar(50) NOT NULL,
  `rol_timecreated` timestamp NULL DEFAULT NULL,
  `rol_timemodified` timestamp NULL DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS `users` (
  `usr_id` int(10) unsigned NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `usr_username` varchar(50) NOT NULL,
  `usr_firstname` varchar(50) NOT NULL,
  `usr_lastname` varchar(50) NOT NULL,
  `usr_password` varchar(50) NOT NULL,
  `usr_email` varchar(50) NOT NULL,
  `usr_picture` varchar(150) NOT NULL,
  `usr_gpa` decimal(3,2) NULL,
  `usr_timecreated` timestamp NULL DEFAULT NULL,
  `usr_timemodified` timestamp NULL DEFAULT NULL,
  `rol_id` int(10) unsigned NOT NULL
);
ALTER TABLE `users`
ADD CONSTRAINT `roles_users_foreign` FOREIGN KEY (`rol_id`) REFERENCES `uler`.`roles` (`rol_id`) ON DELETE CASCADE ON UPDATE CASCADE;

CREATE TABLE IF NOT EXISTS `university` (
  `unv_id` int(10) unsigned NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `unv_name` varchar(50) NOT NULL,
  `unv_latlong` varchar(50) NULL,
  `unv_address` varchar(200) NULL,
  `unv_contact` varchar(50) NULL,
  `unv_email` varchar(50) NULL,
  `unv_website` varchar(50) NULL,
  `unv_stats` varchar(50) NULL,
  `unv_timecreated` timestamp NULL DEFAULT NULL,
  `unv_timemodified` timestamp NULL DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS `course_category` (
  `cat_id` int(10) unsigned NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `cat_name` varchar(50) NOT NULL,
  `cat_timecreated` timestamp NULL DEFAULT NULL,
  `cat_timemodified` timestamp NULL DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS `course` (
  `crs_id` int(10) unsigned NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `crs_code` varchar(10) NOT NULL,
  `crs_name` varchar(50) NOT NULL,
  `crs_summary` varchar(10) NULL,
  `crs_univ` varchar(50) NULL,
  `crs_timecreated` timestamp NULL DEFAULT NULL,
  `crs_timemodified` timestamp NULL DEFAULT NULL,
  `cat_id` int(10) unsigned NOT NULL,
  `usr_id` int(10) unsigned NOT NULL
);
ALTER TABLE `course`
ADD CONSTRAINT `course_category_course_foreign` FOREIGN KEY (`cat_id`) REFERENCES `course_category` (`cat_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `user_course_foreign` FOREIGN KEY (`usr_id`) REFERENCES `users` (`usr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

CREATE TABLE IF NOT EXISTS `course_lesson` (
  `lsn_id` int(10) unsigned NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `lsn_name` varchar(50) NOT NULL,
  `lsn_intro` varchar(150) NULL,
  `lsn_timecreated` timestamp NULL DEFAULT NULL,
  `lsn_timemodified` timestamp NULL DEFAULT NULL,
  `crs_id` int(10) unsigned NOT NULL
);
ALTER TABLE `course_lesson`
ADD CONSTRAINT `course_lesson_foreign` FOREIGN KEY (`crs_id`) REFERENCES `course` (`crs_id`) ON DELETE CASCADE ON UPDATE CASCADE;

CREATE TABLE IF NOT EXISTS `course_learning_outcomes` (
  `loc_id` int(10) unsigned NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `loc_desc` varchar(50) NOT NULL,
  `loc_timecreated` timestamp NULL DEFAULT NULL,
  `loc_timemodified` timestamp NULL DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS `course_content` (
  `cnt_id` int(10) unsigned NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `cnt_name` varchar(50) NOT NULL,
  `cnt_type` varchar(10) NULL,
  `cnt_source` varchar(500) NULL,
  `cnt_timecreated` timestamp NULL DEFAULT NULL,
  `cnt_timemodified` timestamp NULL DEFAULT NULL,
  `lsn_id` int(10) unsigned NOT NULL,
  `loc_id` int(10) unsigned NOT NULL
);
ALTER TABLE `course_content`
ADD CONSTRAINT `content_lesson_foreign` FOREIGN KEY (`lsn_id`) REFERENCES `course_lesson` (`lsn_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `content_learningoutcomes_foreign` FOREIGN KEY (`loc_id`) REFERENCES `course_learning_outcomes` (`loc_id`) ON DELETE CASCADE ON UPDATE CASCADE;

CREATE TABLE IF NOT EXISTS `course_forum` (
  `cfr_id` int(10) unsigned NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `cfr_title` varchar(75) NOT NULL,
  `cfr_desc` varchar(150) NOT NULL,
  `usr_id` int(10) unsigned NOT NULL,
  `crs_id` int(10) unsigned NOT NULL
);
ALTER TABLE `course_forum`
ADD CONSTRAINT `user_forum_foreign` FOREIGN KEY (`usr_id`) REFERENCES `users` (`usr_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `course_forum_foreign` FOREIGN KEY (`crs_id`) REFERENCES `course` (`crs_id`) ON DELETE CASCADE ON UPDATE CASCADE;

CREATE TABLE IF NOT EXISTS `course_forum_thread` (
  `cft_id` int(10) unsigned NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `cft_title` varchar(50) NOT NULL,
  `cft_rated` int(50) NULL,
  `cft_timecreated` timestamp NULL DEFAULT NULL,
  `cft_timemodified` timestamp NULL DEFAULT NULL,
  `crs_id` int(10) unsigned NOT NULL,
  `usr_id` int(10) unsigned NOT NULL
);
ALTER TABLE `course_forum_thread`
ADD CONSTRAINT `course_thread_foreign` FOREIGN KEY (`crs_id`) REFERENCES `course` (`crs_id`) ON DELETE CASCADE ON UPDATE CASCADE;

CREATE TABLE IF NOT EXISTS `course_forum_thread_reply` (
  `ftr_id` int(10) unsigned NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `ftr_content` varchar(10) NULL,
  `ftr_timecreated` timestamp NULL DEFAULT NULL,
  `ftr_timemodified` timestamp NULL DEFAULT NULL,
  `cft_id` int(10) unsigned NOT NULL,
  `usr_id` int(10) unsigned NOT NULL
);
ALTER TABLE `course_forum_thread_reply`
ADD CONSTRAINT `cft_ftr_foreign` FOREIGN KEY (`cft_id`) REFERENCES `course_forum_thread` (`cft_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `users_ftr_foreign` FOREIGN KEY (`usr_id`) REFERENCES `users` (`usr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

CREATE TABLE IF NOT EXISTS `course_forum_thread_reply_reply` (
  `trr_id` int(10) unsigned NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `trr_content` varchar(10) NULL,
  `trr_timecreated` timestamp NULL DEFAULT NULL,
  `trr_timemodified` timestamp NULL DEFAULT NULL,
  `ftr_id` int(10) unsigned NOT NULL,
  `usr_id` int(10) unsigned NOT NULL
);
ALTER TABLE `course_forum_thread_reply_reply`
ADD CONSTRAINT `threads_posts_foreign` FOREIGN KEY (`ftr_id`) REFERENCES `course_forum_thread_reply` (`ftr_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `users_posts_foreign` FOREIGN KEY (`usr_id`) REFERENCES `users` (`usr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

CREATE TABLE IF NOT EXISTS `course_assesment` (
  `ass_id` int(10) unsigned NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `ass_name` varchar(50) NOT NULL,
  `ass_desc` varchar(150) NOT NULL,
  `ass_timeopen` timestamp NULL DEFAULT NULL,
  `ass_timeclose` timestamp NULL DEFAULT NULL,
  `ass_shufflequestions` varchar(10) NULL,
  `ass_timelimit` int(100) NULL,
  `ass_timecreated` timestamp NULL DEFAULT NULL,
  `ass_timemodified` timestamp NULL DEFAULT NULL,
  `crs_id` int(10) unsigned NOT NULL,
  `lsn_id` int(10) unsigned NOT NULL
);
ALTER TABLE `course_assesment`
ADD CONSTRAINT `course_assesment_foreign` FOREIGN KEY (`crs_id`) REFERENCES `course` (`crs_id`) ON DELETE CASCADE ON UPDATE CASCADE;

CREATE TABLE IF NOT EXISTS `course_assesment_question` (
  `qst_id` int(10) unsigned NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `qst_text` varchar(500) NOT NULL,
  `qst_shuffleanswers` varchar(10) NULL,
  `qst_timecreated` timestamp NULL DEFAULT NULL,
  `qst_timemodified` timestamp NULL DEFAULT NULL,
  `ass_id` int(10) unsigned NOT NULL,
  `loc_id` int(10) unsigned NOT NULL
);
ALTER TABLE `course_assesment_question`
ADD CONSTRAINT `assesment_questions_foreign` FOREIGN KEY (`ass_id`) REFERENCES `course_assesment` (`ass_id`) ON DELETE CASCADE ON UPDATE CASCADE;

CREATE TABLE IF NOT EXISTS `course_assignment` (
  `asg_id` int(10) unsigned NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `asg_name` varchar(50) NOT NULL,
  `asg_text` varchar(500) NOT NULL,
  `asg_attachment` varchar(500) NULL,
  `asg_timecreated` timestamp NULL DEFAULT NULL,
  `asg_timemodified` timestamp NULL DEFAULT NULL,
  `crs_id` int(10) unsigned NOT NULL
);
ALTER TABLE `course_assignment`
ADD CONSTRAINT `course_assignment_foreign` FOREIGN KEY (`crs_id`) REFERENCES `course` (`crs_id`) ON DELETE CASCADE ON UPDATE CASCADE;

CREATE TABLE IF NOT EXISTS `course_assignment_submission` (
  `sub_id` int(10) unsigned NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `sub_attachment` varchar(500) NULL,
  `sub_comment` varchar(500) NOT NULL,
  `sub_timecreated` timestamp NULL DEFAULT NULL,
  `sub_timemodified` timestamp NULL DEFAULT NULL,
  `usr_id` int(10) unsigned NOT NULL,
  `asg_id` int(10) unsigned NOT NULL
);
ALTER TABLE `course_assignment_submission`
ADD CONSTRAINT `assignment_submission_foreign` FOREIGN KEY (`asg_id`) REFERENCES `course_assignment` (`asg_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `user_submission_foreign` FOREIGN KEY (`usr_id`) REFERENCES `users` (`usr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

CREATE TABLE IF NOT EXISTS `course_enrol` (
  `enr_id` int(10) unsigned NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `enr_status` varchar(500) NULL,
  `enr_timecreated` timestamp NULL DEFAULT NULL,
  `enr_timemodified` timestamp NULL DEFAULT NULL,
  `crs_id` int(10) unsigned NOT NULL
);
ALTER TABLE `course_enrol`
ADD CONSTRAINT `course_enrol_foreign` FOREIGN KEY (`crs_id`) REFERENCES `course` (`crs_id`) ON DELETE CASCADE ON UPDATE CASCADE;

CREATE TABLE IF NOT EXISTS `course_enrol_detail` (
  `end_id` int(10) unsigned NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `end_status` varchar(500) NULL,
  `end_timecreated` timestamp NULL DEFAULT NULL,
  `end_timemodified` timestamp NULL DEFAULT NULL,
  `usr_id` int(10) unsigned NOT NULL
);
ALTER TABLE `course_enrol_detail`
ADD CONSTRAINT `enrol_details_foreign` FOREIGN KEY (`usr_id`) REFERENCES `users` (`usr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

CREATE TABLE IF NOT EXISTS `course_assesment_questions_answer` (
  `ans_id` int(10) unsigned NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `ans_text` varchar(500) NOT NULL,
  `ans_point` decimal(12,7) NULL,
  `qst_id` int(10) unsigned NOT NULL
);
ALTER TABLE `course_assesment_questions_answer`
ADD CONSTRAINT `questions_answers_foreign` FOREIGN KEY (`qst_id`) REFERENCES `course_assesment_question` (`qst_id`) ON DELETE CASCADE ON UPDATE CASCADE;

CREATE TABLE IF NOT EXISTS `course_assesment_questions_answer_of_student` (
  `ast_id` int(10) unsigned NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `ast_text` varchar(500) NULL,
  `ast_point` decimal(12,7) NULL,
  `ass_id` int(10) unsigned NOT NULL,
  `qst_id` int(10) unsigned NOT NULL,
  `usr_id` int(10) unsigned NOT NULL
);
ALTER TABLE `course_assesment_questions_answer_of_student`
ADD CONSTRAINT `assesment_answerstudent_foreign` FOREIGN KEY (`ass_id`) REFERENCES `course_assesment` (`ass_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `question_answerstudent_foreign` FOREIGN KEY (`qst_id`) REFERENCES `course_assesment_question` (`qst_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `users_answerstudent_foreign` FOREIGN KEY (`usr_id`) REFERENCES `users` (`usr_id`) ON DELETE CASCADE ON UPDATE CASCADE;
