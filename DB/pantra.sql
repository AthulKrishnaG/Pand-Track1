-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 04, 2025 at 11:19 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pantra`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `c_id` int NOT NULL AUTO_INCREMENT,
  `c_patient` int NOT NULL,
  `c_district` varchar(50) NOT NULL,
  `c_visited_places` varchar(500) NOT NULL,
  `c_explain_the_activities` varchar(500) NOT NULL,
  `c_explanation_activities_date` varchar(100) NOT NULL,
  `c_explanation_activities_time` varchar(100) NOT NULL,
  `c_in_date` varchar(50) NOT NULL,
  `c_up_date` varchar(50) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`c_id`, `c_patient`, `c_district`, `c_visited_places`, `c_explain_the_activities`, `c_explanation_activities_date`, `c_explanation_activities_time`, `c_in_date`, `c_up_date`) VALUES
(9, 13, 'Kasaragod', 'Cheruvathur', 'Visited cheruvathur mall and fishmarket', '2021-05-03', '4;00 pm', '2021-06-17 11:10:05', '2021-06-17 11:10:05'),
(7, 12, 'Kasaragod', 'Cheruvathur,Kayyur', 'Visited cheruvathur market and kayyur health center', '2021-02-27', '10:00 AM', '2021-06-17 11:01:22', '2021-06-17 11:07:21'),
(10, 12, 'Kasaragod', 'Kuttamath', 'Visited kuttamath temple and attended the wedding', '2021-06-05', '11;00 AM', '2021-06-17 11:11:54', '2021-06-17 11:11:54'),
(11, 14, 'Kasaragod', 'Konnakad', 'Visited konnakad with friends and cheemeni college', '2021-06-01', '9:00 AM', '2021-06-17 11:14:55', '2021-06-17 11:14:55'),
(13, 22, 'Kannur', 'Payyanur,Karivellur', 'Visited payyanur mall', '2025-06-02', '14:05', '2025-06-03 15:05:55', '2025-06-03 15:05:55'),
(17, 22, 'Kannur', 'Payyanur', 'shopping', '2025-06-03', '16:00', '2025-06-04 12:52:46', '2025-06-04 12:52:46'),
(18, 24, 'Kannur', 'Payyanur', 'Visited mall,Beach', '2025-06-04', '17:00', '2025-06-04 14:13:11', '2025-06-04 16:16:05');

-- --------------------------------------------------------

--
-- Table structure for table `dailyduties`
--

DROP TABLE IF EXISTS `dailyduties`;
CREATE TABLE IF NOT EXISTS `dailyduties` (
  `doctor_duty_id` int NOT NULL AUTO_INCREMENT,
  `doctor_duty_list` varchar(100) NOT NULL,
  `doctor_duty_dept` varchar(100) NOT NULL,
  `doctor_duty_day_and_date` varchar(100) NOT NULL,
  `doctor_duty_fromtime` varchar(100) NOT NULL,
  `doctor_duty_totime` varchar(100) NOT NULL,
  `doctor_duty_indate` varchar(100) NOT NULL,
  `doctor_duty_update` varchar(100) NOT NULL,
  PRIMARY KEY (`doctor_duty_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dailyduties`
--

INSERT INTO `dailyduties` (`doctor_duty_id`, `doctor_duty_list`, `doctor_duty_dept`, `doctor_duty_day_and_date`, `doctor_duty_fromtime`, `doctor_duty_totime`, `doctor_duty_indate`, `doctor_duty_update`) VALUES
(3, 'Lavanya', 'Infectious disease specialist', '2021-03-20', '10:00', '14:00', '2021-06-18 11:01:26', '2021-06-18 11:01:26'),
(4, 'Harikrishnan', 'Emergency', '2021-05-11', '10:00', '16:00', '2021-06-18 11:03:39', '2021-06-18 11:03:39'),
(5, 'Abin joseph', 'Emergency', '2021-05-15', '08:00', '16:00', '2021-06-18 11:05:37', '2021-06-18 11:07:28'),
(7, 'Navya ram', 'Emergency', '2021-05-13', '08:00', '14:00', '2021-06-18 11:13:48', '2021-06-18 11:15:31'),
(9, 'Jeevan', 'General Medicine', '2025-06-03', '09:00', '16:00', '2025-06-04 15:17:32', '2025-06-04 15:17:32'),
(10, 'Jiya', 'Neurology', '2025-06-02', '09:30', '16:30', '2025-06-04 16:27:08', '2025-06-04 16:27:33');

-- --------------------------------------------------------

--
-- Table structure for table `discharge`
--

DROP TABLE IF EXISTS `discharge`;
CREATE TABLE IF NOT EXISTS `discharge` (
  `discharge_p_id` int NOT NULL AUTO_INCREMENT,
  `discharge_p_name` varchar(100) NOT NULL,
  `discharge_p_gender` varchar(100) NOT NULL,
  `discharge_p_mobilenum` varchar(100) NOT NULL,
  `discharge_p_address` varchar(100) NOT NULL,
  `discharge_p_email` varchar(100) NOT NULL,
  `discharge_p_type` varchar(100) NOT NULL,
  `discharge_p_in_date` varchar(50) NOT NULL,
  `discharge_p_up_date` varchar(50) NOT NULL,
  PRIMARY KEY (`discharge_p_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `discharge`
--

INSERT INTO `discharge` (`discharge_p_id`, `discharge_p_name`, `discharge_p_gender`, `discharge_p_mobilenum`, `discharge_p_address`, `discharge_p_email`, `discharge_p_type`, `discharge_p_in_date`, `discharge_p_up_date`) VALUES
(13, 'Anusree', 'Female', '9857438278	', 'Mele House Kayyur Cheruvathur Kasaragod	', 'anusree123@gmail.com', 'Nipha virus', '2021-06-18 11:22:32', '2021-06-18 11:50:28'),
(20, 'Anu', 'Female', '78678467587', 'kannur', 'anu@gmail.com', 'covid', '2025-06-04 16:29:02', '2025-06-04 16:29:15'),
(17, 'Sreelakshmi	', 'Female', '9457834523	', 'Cheruvathur Kasaragod Kerala', 'sreelakshmi@gmail.com', 'Corona virus', '2021-06-18 11:40:32', '2021-06-18 11:43:42'),
(18, 'Anu', 'Female', '78678467587', 'kannur', 'anu@gmail.com', 'covid', '2025-06-04 12:12:44', '2025-06-04 12:12:44'),
(19, 'Anusree m', 'Female', '78678467589', 'kannur', 'anusreem@gmail.com', 'covid', '2025-06-04 15:18:10', '2025-06-04 15:21:00');

-- --------------------------------------------------------

--
-- Table structure for table `disease`
--

DROP TABLE IF EXISTS `disease`;
CREATE TABLE IF NOT EXISTS `disease` (
  `d_id` int NOT NULL AUTO_INCREMENT,
  `d_title` varchar(200) NOT NULL,
  `d_date_of_onset` varchar(50) NOT NULL,
  `in_date` varchar(50) NOT NULL,
  `up_date` varchar(50) NOT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `disease`
--

INSERT INTO `disease` (`d_id`, `d_title`, `d_date_of_onset`, `in_date`, `up_date`) VALUES
(18, 'Covid-19', '2021-05-05', '2021-06-16 21:38:27', '2021-06-16 21:38:27'),
(21, 'Nipha', '2021-06-11', '2021-06-16 21:45:03', '2021-06-16 21:45:03'),
(22, 'Covid-19', '2021-05-06', '2021-06-16 21:45:26', '2021-06-16 21:45:26'),
(24, 'SARS', '2025-06-02', '2025-06-04 16:29:47', '2025-06-04 16:30:20');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
CREATE TABLE IF NOT EXISTS `doctor` (
  `doctor_id` int NOT NULL AUTO_INCREMENT,
  `doctor_name` varchar(100) NOT NULL,
  `doctor_dept` varchar(100) NOT NULL,
  `doctor_in_date` varchar(50) NOT NULL,
  `doctor_up_date` varchar(50) NOT NULL,
  PRIMARY KEY (`doctor_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctor_id`, `doctor_name`, `doctor_dept`, `doctor_in_date`, `doctor_up_date`) VALUES
(12, 'Lakshmiprabha', 'Infectious disease specialist', '2021-06-18 10:52:28', '2021-06-18 10:52:28'),
(14, 'Rajeev', 'Emergency', '2021-06-18 10:55:36', '2021-06-18 10:55:36'),
(13, 'Sukanya', 'Emergency', '2021-06-18 10:54:27', '2021-06-18 10:54:27'),
(15, 'Shyamaprasad', 'Infectious disease specialist', '2021-06-18 10:56:44', '2021-06-18 10:56:44'),
(16, 'Rekha', 'Emergency', '2021-06-18 10:58:43', '2021-06-18 10:58:43');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
CREATE TABLE IF NOT EXISTS `history` (
  `h_id` int NOT NULL AUTO_INCREMENT,
  `h_patient` int NOT NULL,
  `h_days_after_the_onset_of_the_disease` varchar(200) NOT NULL,
  `h_effective_medicines` varchar(500) NOT NULL,
  `h_in_date` varchar(50) NOT NULL,
  `h_up_date` varchar(50) NOT NULL,
  PRIMARY KEY (`h_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`h_id`, `h_patient`, `h_days_after_the_onset_of_the_disease`, `h_effective_medicines`, `h_in_date`, `h_up_date`) VALUES
(12, 10, 'After 5 days', 'Immunotheraptic treatment', '2021-06-17 11:34:10', '2021-06-17 11:34:10'),
(9, 14, 'After 8 days', 'Immunotheraptic treatment,Pepto-Bismol', '2021-06-17 11:28:18', '2021-06-17 11:28:18'),
(11, 11, 'After 6 days', 'paracetamole', '2021-06-17 11:32:55', '2021-06-17 11:32:55'),
(13, 13, 'After 6 days', 'paracetamole', '2021-06-17 11:34:34', '2021-06-17 11:34:34'),
(20, 22, '2 days after', 'Paracetamol', '2025-06-04 15:03:49', '2025-06-04 15:04:29'),
(18, 22, '10 days after', 'Paracetamol', '2025-06-03 16:20:33', '2025-06-03 16:20:33'),
(22, 22, '5 day after', 'Paracetamol', '2025-06-04 16:21:05', '2025-06-04 16:22:16');

-- --------------------------------------------------------

--
-- Table structure for table `hotspot`
--

DROP TABLE IF EXISTS `hotspot`;
CREATE TABLE IF NOT EXISTS `hotspot` (
  `h_id` int NOT NULL AUTO_INCREMENT,
  `h_state` varchar(100) NOT NULL,
  `h_district` varchar(100) NOT NULL,
  `h_taluk` varchar(100) NOT NULL,
  `h_block` varchar(100) NOT NULL,
  `h_panchayath` varchar(100) NOT NULL,
  `h_ward_no` varchar(100) NOT NULL,
  `h_confirmed_area` varchar(100) NOT NULL,
  `h_in_date` varchar(50) NOT NULL,
  `h_up_date` varchar(50) NOT NULL,
  PRIMARY KEY (`h_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotspot`
--

INSERT INTO `hotspot` (`h_id`, `h_state`, `h_district`, `h_taluk`, `h_block`, `h_panchayath`, `h_ward_no`, `h_confirmed_area`, `h_in_date`, `h_up_date`) VALUES
(11, 'kerala', 'Kasaragod', 'Hosdurg', 'Nileswar', 'Nileswar', '13', 'Cheemeni', '2021-06-17 05:46:11', '2021-06-17 05:46:11'),
(8, 'Kerala', 'Kasaragod', 'Hosdurg', 'Nileswar', 'Nileswar', '10', 'NIleswar', '2021-06-17 05:41:40', '2021-06-17 05:41:40'),
(10, 'Kerala', 'Kasaragod', 'Hosdurg', 'Nileswar', 'Kayyur-cheemeni', '15', 'Thimiri', '2021-06-17 05:44:41', '2021-06-17 05:44:41'),
(9, 'Kerala', 'Kasaragod', 'Hosdurg', 'Nileswar', 'Kayyur-cheemeni', '16', 'Muzhakkom', '2021-06-17 05:43:39', '2021-06-17 05:43:39'),
(7, 'Kerala', 'Kasaragod', 'Hosdurg', 'Nileswar', 'Kayyur-cheemeni', '13', 'Kayyur', '2021-06-17 05:39:30', '2021-06-17 05:39:30');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `lid` int NOT NULL AUTO_INCREMENT,
  `luname` varchar(200) NOT NULL,
  `lpass` varchar(200) NOT NULL,
  `lrole` varchar(50) NOT NULL,
  `lflag` varchar(50) NOT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=MyISAM AUTO_INCREMENT=227 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`lid`, `luname`, `lpass`, `lrole`, `lflag`) VALUES
(207, 'admin@gmail.com', 'admin', 'Admin', 'Available'),
(208, 'manju@gmail.com', '123456789', 'Patient', 'Available'),
(209, 'buildoutlife@gmail.com', '23232323', 'Doctor', 'Available'),
(210, 'miya1@gmail.com', 'Mi@123456-', 'Patient', 'Available'),
(211, 'vinu@gmail.com', 'Vinu@1234', 'Patient', 'Available'),
(212, 'riya@gmail.com', 'Riya@12345', 'Patient', 'Available'),
(213, 'anu@gmail.com', 'Anu@12345', 'Patient', 'Available'),
(214, 'anusree@gmail.com', 'Anusree@12345', 'Patient', 'Available'),
(215, 'anusreem@gmail.com', 'Anu@123456', 'Patient', 'Available'),
(216, 'anitha@gmail.com', 'Anitha@12345', 'Patient', 'Available'),
(224, 'jiya@gmail.com', '8776544451', 'Doctor', 'Available'),
(225, 'vincent@gmail.com', '8776544451', 'Doctor', 'Available'),
(219, 'vinu@gmail.com', '8767876564', 'Patient', 'Available'),
(221, 'anusree@gmail.com', '8767876564', 'Patient', 'Available'),
(222, 'jeevan@gmail.com', '8789876567', 'Doctor', 'Available'),
(226, 'vincent@gmail.com', '8776544429', 'Doctor', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

DROP TABLE IF EXISTS `medicines`;
CREATE TABLE IF NOT EXISTS `medicines` (
  `d_m_id` int NOT NULL AUTO_INCREMENT,
  `d_m_name` varchar(200) NOT NULL,
  `d_m_dose` varchar(100) NOT NULL,
  `d_m_startingdate` varchar(50) NOT NULL,
  `d_m_duration` varchar(50) NOT NULL,
  `d_m_indate` varchar(50) NOT NULL,
  `d_m_update` varchar(50) NOT NULL,
  PRIMARY KEY (`d_m_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicines`
--

INSERT INTO `medicines` (`d_m_id`, `d_m_name`, `d_m_dose`, `d_m_startingdate`, `d_m_duration`, `d_m_indate`, `d_m_update`) VALUES
(14, 'Paracetamole,Actaminophen', '300', '2021-05-08', '5 days', '2021-06-17 05:25:38', '2021-06-17 05:25:38'),
(11, 'Paracetamole,Actaminophen', '200', '2021-05-08', '5 days', '2021-06-17 05:22:25', '2021-06-17 05:22:25'),
(12, 'Paracetamole,Actaminophen', '200', '2021-05-10', '6 days', '2021-06-17 05:23:35', '2021-06-17 05:26:23'),
(10, 'Acctaminophen,Naproxen 150', '150', '2021-05-05', 'one week', '2021-06-16 22:03:04', '2021-06-16 22:03:04'),
(17, 'Ciprofloxacin', '150mg', '2025-06-03', '6 days', '2025-06-04 16:33:03', '2025-06-04 16:33:31'),
(16, 'Azithromycin', '250mg', '2025-06-02', '6 days', '2025-06-04 16:00:33', '2025-06-04 16:00:33');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE IF NOT EXISTS `patient` (
  `p_id` int NOT NULL AUTO_INCREMENT,
  `p_name` varchar(100) NOT NULL,
  `p_gender` varchar(100) NOT NULL,
  `p_mobilenum` varchar(50) NOT NULL,
  `p_address` varchar(200) NOT NULL,
  `p_email` varchar(200) NOT NULL,
  `p_indate` varchar(50) NOT NULL,
  `p_update` varchar(50) NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`p_id`, `p_name`, `p_gender`, `p_mobilenum`, `p_address`, `p_email`, `p_indate`, `p_update`) VALUES
(12, 'Vismaya', 'Female', '9424125108', 'Cheruvathur\r\nKasaragod\r\nKerala', 'vismaya@gmail.com', '2021-06-16 21:28:30', '2021-06-18 11:45:57'),
(13, 'Lakshmi ', 'Female', '7892341570', 'Cheruvathur\r\nkasaragod\r\nKerala\r\n', 'lakshmi@gmail.com', '2021-06-16 21:31:57', '2021-06-16 21:31:57'),
(14, 'Sreelakshmi', 'Female', '9457834523', 'Cheruvathur\r\nKasaragod\r\nKerala', 'sreelakshmi@gmail.com', '2021-06-16 21:33:37', '2021-06-16 21:33:37'),
(11, 'Vineeth', 'Male', '8787554899', 'Nileswar\r\nKasaragod\r\nKerala', 'vineeth57@gmail.com', '2021-06-15 21:11:40', '2021-06-16 21:35:02'),
(10, 'Anusree', 'Female', '9857438278', 'Mele House\r\nKayyur\r\nCheruvathur\r\nKasaragod', 'anusree123@gmail.com', '2021-06-14 20:47:16', '2021-06-18 11:51:12'),
(18, 'Manju K', 'Female', '123456789', 'Kannur', 'manju@gmail.com', '2021-07-13 22:46:43', '2021-07-13 22:46:43'),
(19, 'miya', 'Female', '8909008879', 'kannur\r\nkerala', 'miya1@gmail.com', '2024-01-06 09:52:15', '2024-01-06 09:52:15'),
(20, 'Vinu', 'Male', '8767876567', 'kannur', 'vinu@gmail.com', '2025-05-14 09:07:28', '2025-05-14 09:07:28'),
(21, 'Riya', 'Female', '8767876568', 'Kannur', 'riya@gmail.com', '2025-06-03 12:43:16', '2025-06-03 12:43:16'),
(22, 'Anu', 'Female', '8767876565', 'Kannur', 'anu@gmail.com', '2025-06-03 12:53:02', '2025-06-04 13:54:46'),
(23, 'Anusree', 'Female', '8767876564', 'Kannur', 'anusree@gmail.com', '2025-06-03 12:56:50', '2025-06-03 12:56:50'),
(24, 'Anusree m', 'Female', '8767876564', 'Kannur', 'anusreem@gmail.com', '2025-06-03 13:01:12', '2025-06-03 13:01:12'),
(27, 'Anusree', 'Female', '8767876564', 'kannur', 'anusree@gmail.com', '2025-06-04 13:42:11', '2025-06-04 13:57:57'),
(26, 'Anusree m', 'Female', '78967859867', 'kannur', 'anusreem@gmail.com', '2025-06-04 13:25:44', '2025-06-04 13:26:30');

-- --------------------------------------------------------

--
-- Table structure for table `primary_contact`
--

DROP TABLE IF EXISTS `primary_contact`;
CREATE TABLE IF NOT EXISTS `primary_contact` (
  `c_p_id` int NOT NULL AUTO_INCREMENT,
  `c_p_patient` int NOT NULL,
  `c_p_person` varchar(100) NOT NULL,
  `c_p_district` varchar(100) NOT NULL,
  `c_p_town` varchar(200) NOT NULL,
  `c_p_place` varchar(200) NOT NULL,
  `c_p_in_date` varchar(50) NOT NULL,
  `c_p_up_date` varchar(50) NOT NULL,
  PRIMARY KEY (`c_p_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `primary_contact`
--

INSERT INTO `primary_contact` (`c_p_id`, `c_p_patient`, `c_p_person`, `c_p_district`, `c_p_town`, `c_p_place`, `c_p_in_date`, `c_p_up_date`) VALUES
(10, 12, 'Family members', 'Kasaragod', 'Cheruvathur', 'Kayyur', '2021-06-17 11:17:14', '2021-06-17 11:17:14'),
(11, 10, 'Family members ,Friends', 'Kasaragod', 'Nileswar', 'Nileswar', '2021-06-17 11:18:33', '2021-06-17 11:18:33'),
(12, 11, 'Kayyur CHC doctor,Family members', 'Kasaragod', 'Cheruvathur', 'Kayyur', '2021-06-17 11:19:59', '2021-06-17 11:19:59'),
(13, 14, 'Family members ', 'Kasaragod', 'Cheruvathur', 'Kuttamath', '2021-06-17 11:23:10', '2021-06-17 11:23:10'),
(16, 22, 'Sanu', 'Kasaragod', 'cheruvathur', 'Kayyur,Cheruvathur', '2025-06-03 15:32:13', '2025-06-03 15:32:13'),
(17, 22, 'Manu', 'Kasaragod', 'cheruvathur', 'Kayyur,Cheruvathur', '2025-06-04 12:55:58', '2025-06-04 12:55:58'),
(21, 22, 'Ranjith K', 'Kannur', 'Payyanur', 'Payyanur', '2025-06-04 14:59:24', '2025-06-04 16:16:30');

-- --------------------------------------------------------

--
-- Table structure for table `source`
--

DROP TABLE IF EXISTS `source`;
CREATE TABLE IF NOT EXISTS `source` (
  `d_source_id` int NOT NULL AUTO_INCREMENT,
  `d_source_patient` int NOT NULL,
  `d_source_confirmed_location` varchar(50) NOT NULL,
  `d_source_state` varchar(50) NOT NULL,
  `d_source_district` varchar(50) NOT NULL,
  `d_source_panchayath` varchar(50) NOT NULL,
  `d_source_ward_no` int NOT NULL,
  `d_source_in_date` varchar(50) NOT NULL,
  `d_source_up_date` varchar(50) NOT NULL,
  PRIMARY KEY (`d_source_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `source`
--

INSERT INTO `source` (`d_source_id`, `d_source_patient`, `d_source_confirmed_location`, `d_source_state`, `d_source_district`, `d_source_panchayath`, `d_source_ward_no`, `d_source_in_date`, `d_source_up_date`) VALUES
(9, 12, 'Thimiri', 'Kerala', 'Kasaragod', 'kayyur-cheemeni', 15, '2021-06-17 05:33:23', '2021-06-17 05:34:28'),
(7, 13, 'NIleswar', 'Kerala', 'kasargod', 'Nileswar', 10, '2021-06-17 05:31:34', '2021-06-17 05:31:34'),
(8, 14, 'Cheruvathur', 'Kerala', 'Kasaragod', 'Cheruvathur', 16, '2021-06-17 05:32:38', '2021-06-17 05:32:38'),
(6, 12, 'Kayyur', 'kerala', 'Kasaragod', 'kayyur-cheemeni', 13, '2021-06-17 05:30:26', '2021-06-17 05:35:59'),
(20, 21, 'Payyanur', 'Kerala', 'Thiruvananthapuram', 'nileswar', 112, '2025-06-04 14:11:37', '2025-06-04 14:12:15'),
(14, 22, 'Nileswar', 'Kerala', 'Kasargod', 'nileswar', 115, '2025-06-03 13:44:21', '2025-06-03 13:44:21'),
(15, 22, 'Nileswar', 'Kerala', 'Kasargod', 'Nileswar', 119, '2025-06-03 13:53:32', '2025-06-04 16:15:09'),
(16, 22, 'Cheruvathur', 'Kerala', 'Kasargod', 'cheruvathur', 122, '2025-06-04 12:46:23', '2025-06-04 12:46:23'),
(17, 22, 'Payyanur', 'Kerala', 'Kannur', 'payyanur', 114, '2025-06-04 12:51:05', '2025-06-04 12:51:05'),
(18, 10, 'Payyanur', 'Kerala', 'Kannur', 'payyanur', 116, '2025-06-04 13:58:49', '2025-06-04 13:58:49'),
(19, 10, 'Nileswar', 'Kerala', 'Thrissur', 'nileswar', 119, '2025-06-04 14:10:12', '2025-06-04 14:10:12');

-- --------------------------------------------------------

--
-- Table structure for table `symptoms`
--

DROP TABLE IF EXISTS `symptoms`;
CREATE TABLE IF NOT EXISTS `symptoms` (
  `d_s_id` int NOT NULL AUTO_INCREMENT,
  `d_s_name` varchar(100) NOT NULL,
  `d_s_date_of_onset` varchar(50) NOT NULL,
  `in_date` varchar(50) NOT NULL,
  `up_date` varchar(50) NOT NULL,
  PRIMARY KEY (`d_s_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `symptoms`
--

INSERT INTO `symptoms` (`d_s_id`, `d_s_name`, `d_s_date_of_onset`, `in_date`, `up_date`) VALUES
(13, 'Sore Throat', '2025-06-03', '2025-06-04 16:31:32', '2025-06-04 16:31:32'),
(7, 'Headache,Fever', '2021-05-01', '2021-06-16 21:50:33', '2021-06-16 21:50:33'),
(9, 'Difficulty Breathing,Sour throat', '2021-06-04', '2021-06-16 21:53:04', '2021-06-16 21:56:05'),
(10, 'Fever', '2021-05-02', '2021-06-16 21:56:33', '2021-06-16 21:56:33'),
(12, 'Headache', '2025-06-04', '2025-06-04 15:57:06', '2025-06-04 16:31:58');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `uid` int NOT NULL AUTO_INCREMENT,
  `uempid` varchar(20) NOT NULL,
  `uname` varchar(100) NOT NULL,
  `udesignation` varchar(150) NOT NULL,
  `uemail` varchar(150) NOT NULL,
  `umob` varchar(15) NOT NULL,
  `uimg` varchar(500) NOT NULL,
  `urole` varchar(50) NOT NULL,
  `ustatus` varchar(25) NOT NULL,
  `u_in_date` varchar(50) NOT NULL,
  `u_up_date` varchar(50) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `uempid`, `uname`, `udesignation`, `uemail`, `umob`, `uimg`, `urole`, `ustatus`, `u_in_date`, `u_up_date`) VALUES
(1, 'P12345', 'Admin', 'System Admin', 'admin@gmail.com', '1234567890', 'user.png', 'Admin', 'Available', '', ''),
(2, '44', 'Sumesh K', 'Cardiology', 'buildoutlife@gmail.com', '23232323', 'team2.jpg', 'Doctor', '', '2021-07-14 10:53:15', '2021-07-14 10:53:15'),
(3, '20', 'Jeevan', 'Doctor', 'jeevan@gmail.com', '8789876567', 'men.jpeg', 'Doctor', '', '2025-06-04 15:05:33', '2025-06-04 15:05:33'),
(5, '50', 'Jiya', 'Doctor', 'jiya@gmail.com', '8776544451', 'women.jpg', 'Doctor', '', '2025-06-04 16:24:54', '2025-06-04 16:24:54'),
(7, '51', 'Vincent', 'Doctor', 'vincent@gmail.com', '8776544429', 'd.jpeg', 'Doctor', '', '2025-06-04 16:42:07', '2025-06-04 16:42:07');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
