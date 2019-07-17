-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 17, 2019 at 08:41 AM
-- Server version: 5.7.26-0ubuntu0.16.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `DUC`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `userName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `userName`, `password`) VALUES
(1, 'miran', 'iit123'),
(2, 'pritom', 'iit123'),
(3, 'iit', 'iit123');

-- --------------------------------------------------------

--
-- Table structure for table `board_of_proctor`
--

CREATE TABLE `board_of_proctor` (
  `id` int(11) NOT NULL,
  `name` varchar(1500) COLLATE utf8_unicode_ci NOT NULL,
  `institute` varchar(1500) COLLATE utf8_unicode_ci NOT NULL,
  `membership` varchar(3000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `board_of_proctor`
--

INSERT INTO `board_of_proctor` (`id`, `name`, `institute`, `membership`) VALUES
(1, 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦ à¦•à§‡ à¦à¦® à¦—à§‹à¦²à¦¾à¦® à¦°à¦¬à§à¦¬à¦¾à¦¨à§€', '', 'à¦ªà§à¦°à¦•à§à¦Ÿà¦°'),
(2, 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦®à§‹. à¦®à¦¾à¦•à¦¸à§à¦¦à§à¦° à¦°à¦¹à¦®à¦¾à¦¨ ', 'à¦à¦¨à§‡à¦•à§à¦¸ à¦­à¦¬à¦¨', 'à¦¸à¦¹à¦•à¦¾à¦°à§€ à¦ªà§à¦°à¦•à§à¦Ÿà¦°'),
(3, 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦®à§à¦¹à¦¾à¦®à§à¦®à¦¦ à¦®à¦¾à¦ˆà¦¨à§à¦² à¦•à¦°à¦¿à¦® ', 'à¦‡à¦žà§à¦œà¦¿à¦¨à¦¿à§Ÿà¦¾à¦°à¦¿à¦‚ à¦à¦¨à§à¦¡ à¦Ÿà§‡à¦•à¦¨à§‹à¦²à¦œà¦¿ à¦…à¦¨à§à¦·à¦¦', 'à¦¸à¦¹à¦•à¦¾à¦°à§€ à¦ªà§à¦°à¦•à§à¦Ÿà¦°'),
(4, 'à¦¡. à¦ à¦•à§‡ à¦²à§à§Žà¦«à§à¦² à¦•à¦¬à¦¿à¦° ', 'à¦«à¦¾à¦°à§à¦®à§‡à¦¸à§€ à¦…à¦¨à§à¦·à¦¦', 'à¦¸à¦¹à¦•à¦¾à¦°à§€ à¦ªà§à¦°à¦•à§à¦Ÿà¦°'),
(5, 'à¦œà¦¨à¦¾à¦¬ à¦®à§‹à¦¹à¦¾à¦®à§à¦®à¦¦ à¦¸à§‹à¦¹à§‡à¦² à¦°à¦¾à¦¨à¦¾ ', 'à¦œà§€à¦¬à¦¬à¦¿à¦œà§à¦žà¦¾à¦¨ à¦…à¦¨à§à¦·à¦¦', 'à¦¸à¦¹à¦•à¦¾à¦°à§€ à¦ªà§à¦°à¦•à§à¦Ÿà¦°'),
(6, 'à¦œà¦¨à¦¾à¦¬ à¦†à¦¬à§ à¦¹à§‹à¦¸à§‡à¦¨ à¦®à§à¦¹à¦®à§à¦®à¦¦ à¦†à¦¹à¦¸à¦¾à¦¨', ' à¦¸à¦¾à¦®à¦¾à¦œà¦¿à¦• à¦¬à¦¿à¦œà§à¦žà¦¾à¦¨ à¦…à¦¨à§à¦·à¦¦', 'à¦¸à¦¹à¦•à¦¾à¦°à§€ à¦ªà§à¦°à¦•à§à¦Ÿà¦°'),
(7, 'à¦œà¦¨à¦¾à¦¬ à¦®à§‹. à¦†à¦¬à¦¦à§à¦° à¦°à¦¹à¦¿à¦® ', 'à¦•à¦²à¦¾ à¦…à¦¨à§à¦·à¦¦', 'à¦¸à¦¹à¦•à¦¾à¦°à§€ à¦ªà§à¦°à¦•à§à¦Ÿà¦°'),
(8, 'à¦¡. à¦²à¦¿à¦Ÿà¦¨ à¦•à§à¦®à¦¾à¦° à¦¸à¦¾à¦¹à¦¾ ', 'à¦¬à¦¿à¦œà§à¦žà¦¾à¦¨ à¦…à¦¨à§à¦·à¦¦', 'à¦¸à¦¹à¦•à¦¾à¦°à§€ à¦ªà§à¦°à¦•à§à¦Ÿà¦°'),
(9, 'à¦œà¦¨à¦¾à¦¬ à¦®à§à¦¹à¦¾à¦®à§à¦®à¦¦ à¦®à¦¾à¦‡à¦¨à¦‰à¦¦à§à¦¦à¦¿à¦¨ à¦®à§‹à¦²à§à¦²à¦¾ ', 'à¦¸à¦®à¦¾à¦œà¦•à¦²à§à¦¯à¦¾à¦£ à¦“ à¦—à¦¬à§‡à¦·à¦£à¦¾ à¦‡à¦¨à¦¸à§à¦Ÿà¦¿à¦Ÿà¦¿à¦‰à¦Ÿ', 'à¦¸à¦¹à¦•à¦¾à¦°à§€ à¦ªà§à¦°à¦•à§à¦Ÿà¦°'),
(10, 'à¦œà¦¨à¦¾à¦¬ à¦®à§‹. à¦¨à¦¾à¦œà¦¿à¦° à¦¹à§‹à¦¸à§‡à¦¨ à¦–à¦¾à¦¨ ', 'à¦šà¦¾à¦°à§à¦•à¦²à¦¾ à¦…à¦¨à§à¦·à¦¦', 'à¦¸à¦¹à¦•à¦¾à¦°à§€ à¦ªà§à¦°à¦•à§à¦Ÿà¦°'),
(11, 'à¦¡. à¦®à§‹à¦¹à¦¾à¦®à§à¦®à¦¦ à¦¬à¦¦à¦°à§à¦œà§à¦œà¦¾à¦®à¦¾à¦¨ à¦­à§‚à¦à¦‡à§Ÿà¦¾ ', 'à¦¬à¦¿à¦œà¦¨à§‡à¦¸ à¦¸à§à¦Ÿà¦¾à¦¡à¦¿à¦œ à¦…à¦¨à§à¦·à¦¦', 'à¦¸à¦¹à¦•à¦¾à¦°à§€ à¦ªà§à¦°à¦•à§à¦Ÿà¦°');

-- --------------------------------------------------------

--
-- Table structure for table `calendar`
--

CREATE TABLE `calendar` (
  `eventid` int(100) NOT NULL,
  `eventname` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(2000) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Official Dhaka University Holiday',
  `date` varchar(60) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `calendar`
--

INSERT INTO `calendar` (`eventid`, `eventname`, `description`, `date`) VALUES
(1, 'Weekend', 'Weekend for students and Employees.', '05/07/2019'),
(2, 'Weekend', 'Weekend for students and Employees.', '06/07/2019'),
(3, 'Weekend', 'Weekend for students and Employees.', '12/07/2019'),
(4, 'Weekend', 'Weekend for students and Employees.', '13/07/2019'),
(5, 'Weekend', 'Weekend for students and Employees.', '19/07/2019'),
(6, 'Weekend', 'Weekend for students and Employees.', '20/07/2019'),
(7, 'Weekend', 'Weekend for students and Employees.', '26/07/2019'),
(8, 'Weekend', 'Weekend for students and Employees.', '27/07/2019'),
(9, 'Weekend', 'Weekend for students and Employees.', '02/08/2019'),
(10, 'Weekend', 'Weekend for students and Employees.', '03/08/2019'),
(11, 'Eid-Ul_Azha', 'Weekend for Eid ul Azha', '07/08/2019'),
(12, 'Eid-Ul_Azha', 'Weekend for Eid ul Azha', '08/08/2019'),
(13, 'Eid-Ul_Azha', 'Weekend for Eid ul Azha', '09/08/2019'),
(14, 'Eid-Ul_Azha', 'Weekend for Eid ul Azha', '10/08/2019'),
(15, 'Eid-Ul_Azha', 'Weekend for Eid ul Azha', '11/08/2019'),
(16, 'Eid-Ul_Azha', 'Eid ul Azha (Dependent on moon)', '12/08/2019'),
(17, 'Eid-Ul_Azha', 'holidays of Eid Ul Adha', '13/08/2019'),
(18, 'Eid-Ul_Azha', 'holidays of Eid Ul Adha', '14/08/2019'),
(19, 'Eid Ul Azha', 'holidays of Eid Ul Adha', '16/08/2019'),
(20, 'Eid Ul Azha', 'holidays of Eid Ul Adha', '17/08/2019'),
(21, 'janmashtami', ' Holiday of Janmashtami.', '31/08/2019'),
(22, 'Weekend', 'Weekend for students and Employees.', '24/08/2019'),
(24, 'Weekend', 'Weekend for students and Employees.', '30/08/2019'),
(25, 'Weekend', 'Weekend for students and Employees.', '31/08/2019'),
(26, 'Muharram', 'Holidays of Muharram', '09/09/2019'),
(27, 'Muharram', 'Holidays of Muharram', '10/09/2019'),
(28, 'Weekend', 'Weekend for students and Employees.', '06/09/2019'),
(29, 'Weekend', 'Weekend for students and Employees.', '07/09/2019'),
(30, 'Weekend', 'Weekend for students and Employees.', '13/09/2019'),
(31, 'Weekend', 'Weekend for students and Employees.', '14/09/2019'),
(32, 'Weekend', 'Weekend for students and Employees.', '20/09/2019'),
(33, 'Weekend', 'Weekend for students and Employees.', '21/09/2019'),
(34, 'Weekend', 'Weekend for students and Employees.', '27/09/2019'),
(35, 'Weekend', 'Weekend for students and Employees.', '28/09/2019'),
(36, 'Weekend', 'Weekend for students and Employees.', '04/10/2019'),
(37, 'Weekend', 'Weekend for students and Employees.', '05/10/2019'),
(38, 'Durga puja, Holiday of Autumn,Lakshmi puja, University day of mourning', 'Holidays for Durga puja, Holiday of Autumn,Lakshmi puja, University day of mourning', '06/10/2019'),
(39, 'Durga puja, Holiday of Autumn,Lakshmi puja, University day of mourning', 'Holidays for Durga puja, Holiday of Autumn,Lakshmi puja, University day of mourning', '07/10/2019'),
(40, 'Durga puja, Holiday of Autumn,Lakshmi puja, University day of mourning', 'Holidays for Durga puja, Holiday of Autumn,Lakshmi puja, University day of mourning', '08/10/2019'),
(41, 'Durga puja, Holiday of Autumn,Lakshmi puja, University day of mourning', 'Holidays for Durga puja, Holiday of Autumn,Lakshmi puja, University day of mourning', '09/10/2019'),
(42, 'Durga puja, Holiday of Autumn,Lakshmi puja, University day of mourning', 'Holidays for Durga puja, Holiday of Autumn,Lakshmi puja, University day of mourning', '10/10/2019'),
(43, 'Durga puja, Holiday of Autumn,Lakshmi puja, University day of mourning', 'Holidays for Durga puja, Holiday of Autumn,Lakshmi puja, University day of mourning', '11/10/2019'),
(44, 'Durga puja, Holiday of Autumn,Lakshmi puja, University day of mourning', 'Holidays for Durga puja, Holiday of Autumn,Lakshmi puja, University day of mourning', '12/10/2019'),
(45, 'Durga puja, Holiday of Autumn,Lakshmi puja, University day of mourning', 'Holidays for Durga puja, Holiday of Autumn,Lakshmi puja, University day of mourning', '13/10/2019'),
(46, 'Durga puja, Holiday of Autumn,Lakshmi puja, University day of mourning', 'Holidays for Durga puja, Holiday of Autumn,Lakshmi puja, University day of mourning', '14/10/2019'),
(47, 'Durga puja, Holiday of Autumn,Lakshmi puja, University day of mourning', 'Holidays for Durga puja, Holiday of Autumn,Lakshmi puja, University day of mourning', '15/10/2019'),
(48, 'Weekend', 'Weekend for students and Employees.', '18/10/2019'),
(49, 'Weekend', 'Weekend for students and Employees.', '19/10/2019'),
(50, 'Weekend', 'Weekend for students and Employees.', '25/10/2019'),
(51, 'Weekend', 'Weekend for students and Employees.', '26/10/2019'),
(52, 'Weekend', 'Weekend for students and Employees.', '01/11/2019'),
(53, 'Weekend', 'Weekend for students and Employees.', '02/11/2019'),
(54, 'Weekend', 'Weekend for students and Employees.', '08/11/2019'),
(55, 'Weekend', 'Weekend for students and Employees.', '09/11/2019'),
(56, 'Eid ul milad un nabi', 'Holiday of eid ul milad un nabi', '10/11/2019'),
(57, 'Weekend', 'Weekend for students and Employees.', '15/11/2019'),
(58, 'Weekend', 'Weekend for students and Employees.', '16/11/2019'),
(59, 'Weekend', 'Weekend for students and Employees.', '22/11/2019'),
(60, 'Weekend', 'Weekend for students and Employees.', '23/11/2019'),
(61, 'Weekend', 'Weekend for students and Employees.', '29/11/2019'),
(62, 'Weekend', 'Weekend for students and Employees.', '30/11/2019'),
(63, 'Weekend', 'Weekend for students and Employees.', '06/12/2019'),
(64, 'Weekend', 'Weekend for students and Employees.', '07/12/2019'),
(65, 'Fatiha eaj daham, Shaheed buddhijibi dibosh, Victory day, Winter holidays,  The birth of Jesus', 'Holidays of Fatiha eaj daham, Shaheed buddhijibi dibosh, Victory day, Winter holidays,  The birth of Jesus', '09/12/2019'),
(66, 'Fatiha eaj daham, Shaheed buddhijibi dibosh, Victory day, Winter holidays,  The birth of Jesus', 'Holidays of Fatiha eaj daham, Shaheed buddhijibi dibosh, Victory day, Winter holidays,  The birth of Jesus', '10/12/2019'),
(67, 'Fatiha eaj daham, Shaheed buddhijibi dibosh, Victory day, Winter holidays,  The birth of Jesus', 'Holidays of Fatiha eaj daham, Shaheed buddhijibi dibosh, Victory day, Winter holidays,  The birth of Jesus', '11/12/2019'),
(68, 'Fatiha eaj daham, Shaheed buddhijibi dibosh, Victory day, Winter holidays,  The birth of Jesus', 'Holidays of Fatiha eaj daham, Shaheed buddhijibi dibosh, Victory day, Winter holidays,  The birth of Jesus', '12/12/2019'),
(69, 'Fatiha eaj daham, Shaheed buddhijibi dibosh, Victory day, Winter holidays,  The birth of Jesus', 'Holidays of Fatiha eaj daham, Shaheed buddhijibi dibosh, Victory day, Winter holidays,  The birth of Jesus', '13/12/2019'),
(70, 'Fatiha eaj daham, Shaheed buddhijibi dibosh, Victory day, Winter holidays,  The birth of Jesus', 'Holidays of Fatiha eaj daham, Shaheed buddhijibi dibosh, Victory day, Winter holidays,  The birth of Jesus', '14/12/2019'),
(71, 'Fatiha eaj daham, Shaheed buddhijibi dibosh, Victory day, Winter holidays,  The birth of Jesus', 'Holidays of Fatiha eaj daham, Shaheed buddhijibi dibosh, Victory day, Winter holidays,  The birth of Jesus', '15/12/2019'),
(72, 'Fatiha eaj daham, Shaheed buddhijibi dibosh, Victory day, Winter holidays,  The birth of Jesus', 'Holiday of Victory day', '16/12/2019'),
(73, 'Fatiha eaj daham, Shaheed buddhijibi dibosh, Victory day, Winter holidays,  The birth of Jesus', 'Holidays of Fatiha eaj daham, Shaheed buddhijibi dibosh, Victory day, Winter holidays,  The birth of Jesus', '17/12/2019'),
(74, 'Fatiha eaj daham, Shaheed buddhijibi dibosh, Victory day, Winter holidays,  The birth of Jesus', 'Holidays of Fatiha eaj daham, Shaheed buddhijibi dibosh, Victory day, Winter holidays,  The birth of Jesus', '18/12/2019'),
(75, 'Fatiha eaj daham, Shaheed buddhijibi dibosh, Victory day, Winter holidays,  The birth of Jesus', 'Holidays of Fatiha eaj daham, Shaheed buddhijibi dibosh, Victory day, Winter holidays,  The birth of Jesus', '19/12/2019'),
(76, 'Fatiha eaj daham, Shaheed buddhijibi dibosh, Victory day, Winter holidays,  The birth of Jesus', 'Holidays of Fatiha eaj daham, Shaheed buddhijibi dibosh, Victory day, Winter holidays,  The birth of Jesus', '20/12/2019'),
(77, 'Fatiha eaj daham, Shaheed buddhijibi dibosh, Victory day, Winter holidays,  The birth of Jesus', 'Holidays of Fatiha eaj daham, Shaheed buddhijibi dibosh, Victory day, Winter holidays,  The birth of Jesus', '21/12/2019'),
(78, 'Fatiha eaj daham, Shaheed buddhijibi dibosh, Victory day, Winter holidays,  The birth of Jesus', 'Holidays of Fatiha eaj daham, Shaheed buddhijibi dibosh, Victory day, Winter holidays,  The birth of Jesus', '22/12/2019'),
(79, 'Fatiha eaj daham, Shaheed buddhijibi dibosh, Victory day, Winter holidays,  The birth of Jesus', 'Holidays of Fatiha eaj daham, Shaheed buddhijibi dibosh, Victory day, Winter holidays,  The birth of Jesus', '23/12/2019'),
(80, 'Fatiha eaj daham, Shaheed buddhijibi dibosh, Victory day, Winter holidays,  The birth of Jesus', 'Holidays of Fatiha eaj daham, Shaheed buddhijibi dibosh, Victory day, Winter holidays,  The birth of Jesus', '24/12/2019'),
(81, 'Fatiha eaj daham, Shaheed buddhijibi dibosh, Victory day, Winter holidays,  The birth of Jesus', 'Holidays of Christmas', '25/12/2019'),
(82, 'Fatiha eaj daham, Shaheed buddhijibi dibosh, Victory day, Winter holidays,  The birth of Jesus', 'Holidays of Fatiha eaj daham, Shaheed buddhijibi dibosh, Victory day, Winter holidays,  The birth of Jesus', '26/12/2019'),
(83, 'Weekend', 'Weekend for students and Employees.', '27/12/2019'),
(84, 'Weekend', 'Weekend for students and Employees.', '28/12/2019'),
(85, 'Weekend', 'Weekend for students and Employees.', '03/01/2020'),
(86, 'Weekend', 'Weekend for students and Employees.', '04/01/2020'),
(87, 'Weekend', 'Weekend for students and Employees.', '10/01/2020'),
(88, 'Weekend', 'Weekend for students and Employees.', '11/01/2020'),
(89, 'Weekend', 'Weekend for students and Employees.', '17/01/2020'),
(90, 'Weekend', 'Weekend for students and Employees.', '18/01/2020'),
(91, 'Weekend', 'Weekend for students and Employees.', '24/01/2020'),
(92, 'Weekend', 'Weekend for students and Employees.', '25/01/2020'),
(93, 'Saraswati puja', 'Holiday of Saraswati puja.', '30/01/2020'),
(94, 'Weekend', 'Weekend for students and Employees.', '31/01/2020'),
(95, 'Weekend', 'Weekend for students and Employees.', '01/02/2020'),
(96, 'Weekend', 'Weekend for students and Employees.', '07/02/2020'),
(97, 'Weekend', 'Weekend for students and Employees.', '08/02/2020'),
(98, 'Weekend', 'Weekend for students and Employees.', '14/02/2020'),
(99, 'Weekend', 'Weekend for students and Employees.', '15/02/2020'),
(100, 'international mother language day', 'Holiday of international mother language day', '21/02/2020'),
(101, 'Weekend', 'Weekend for students and Employees.', '22/02/2020'),
(102, 'Weekend', 'Weekend for students and Employees.', '28/02/2020'),
(103, 'Weekend', 'Weekend for students and Employees.', '29/02/2020');

-- --------------------------------------------------------

--
-- Table structure for table `calendarCse`
--

CREATE TABLE `calendarCse` (
  `eventid` int(50) NOT NULL,
  `eventname` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(15000) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `calendarCse`
--

INSERT INTO `calendarCse` (`eventid`, `eventname`, `description`, `date`) VALUES
(1, 'Exam Start', 'Semester Final Exam ', '11/05/2019'),
(2, 'Exam End', 'Semester Final Exam ', '28/05/2019');

-- --------------------------------------------------------

--
-- Table structure for table `chairman_of_dept`
--

CREATE TABLE `chairman_of_dept` (
  `id` int(11) NOT NULL,
  `dept_name` varchar(1500) COLLATE utf8_unicode_ci NOT NULL,
  `chairman_name` varchar(1500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chairman_of_dept`
--

INSERT INTO `chairman_of_dept` (`id`, `dept_name`, `chairman_name`) VALUES
(1, 'à¦¬à¦¾à¦‚à¦²à¦¾ à¦¬à¦¿à¦­à¦¾à¦—', ' à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦­à§€à¦·à§à¦®à¦¦à§‡à¦¬ à¦šà§Œà¦§à§à¦°à§€'),
(2, 'à¦‡à¦‚à¦°à§‡à¦œà§€ à¦¬à¦¿à¦­à¦¾à¦— ', 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦•à¦¾à¦œà¦² à¦•à§ƒà¦·à§à¦£ à¦¬à§à¦¯à¦¾à¦¨à¦¾à¦°à§à¦œà§€'),
(3, 'à¦†à¦°à¦¬à§€ à¦¬à¦¿à¦­à¦¾à¦— ', 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦®à§‹à¦¹à¦¾à¦®à§à¦®à¦¦ à¦‡à¦‰à¦›à§à¦«'),
(4, 'à¦«à¦¾à¦°à¦¸à¦¿ à¦­à¦¾à¦·à¦¾ à¦“ à¦¸à¦¾à¦¹à¦¿à¦¤à§à¦¯ à¦¬à¦¿à¦­à¦¾à¦— ', 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦®à§‹. à¦†à¦¬à§à¦² à¦•à¦¾à¦²à¦¾à¦® à¦¸à¦°à¦•à¦¾à¦°'),
(5, 'à¦‰à¦°à§à¦¦à§ à¦¬à¦¿à¦­à¦¾à¦— ', 'à¦¡. à¦°à¦¶à¦¿à¦¦ à¦†à¦¹à¦®à¦¦'),
(6, 'à¦¸à¦‚à¦¸à§à¦•à§ƒà¦¤ à¦¬à¦¿à¦­à¦¾à¦— ', 'à¦¨à¦®à¦¿à¦¤à¦¾ à¦®à¦£à§à¦¡à¦²'),
(7, 'à¦ªà¦¾à¦²à¦¿ à¦à¦¨à§à¦¡ à¦¬à§à¦¦à§à¦§à¦¿à¦¸à§à¦Ÿ à¦¸à§à¦Ÿà¦¾à¦¡à¦¿à¦œ à¦¬à¦¿à¦­à¦¾à¦— ', 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦¬à¦¿à¦®à¦¾à¦¨ à¦šà¦¨à§à¦¦à§à¦° à¦¬à§œà§à§Ÿà¦¾'),
(8, ' à¦‡à¦¤à¦¿à¦¹à¦¾à¦¸ à¦¬à¦¿à¦­à¦¾à¦— ', 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦†à¦¹à¦®à§‡à¦¦ à¦†à¦¬à¦¦à§à¦²à§à¦²à¦¾à¦¹ à¦œà¦¾à¦®à¦¾à¦²'),
(9, 'à¦¦à¦°à§à¦¶à¦¨ à¦¬à¦¿à¦­à¦¾à¦— ', 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦®à§‹. à¦¸à¦¾à¦œà¦¾à¦¹à¦¾à¦¨ à¦®à¦¿à§Ÿà¦¾'),
(10, ' à¦‡à¦¸à¦²à¦¾à¦®à¦¿à¦• à¦¸à§à¦Ÿà¦¾à¦¡à¦¿à¦œ à¦¬à¦¿à¦­à¦¾à¦— ', 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦®à§à¦¹à¦®à§à¦®à¦¦ à¦¶à¦«à¦¿à¦•à§à¦° à¦°à¦¹à¦®à¦¾à¦¨');

-- --------------------------------------------------------

--
-- Table structure for table `club`
--

CREATE TABLE `club` (
  `id` int(50) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(15000) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `longitude` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dean`
--

CREATE TABLE `dean` (
  `id` int(11) NOT NULL,
  `faculty_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `dean_name` varchar(300) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dean`
--

INSERT INTO `dean` (`id`, `faculty_name`, `dean_name`) VALUES
(1, 'à¦•à¦²à¦¾ à¦…à¦¨à§à¦·à¦¦', 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦†à¦¬à§ à¦®à§‹. à¦¦à§‡à¦²à§‹à§Ÿà¦¾à¦° à¦¹à§‹à¦¸à§‡à¦¨ à¦‡à¦¤à¦¿à¦¹à¦¾à¦¸ à¦¬à¦¿à¦­à¦¾à¦—, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ'),
(2, 'à¦¬à¦¿à¦œà§à¦žà¦¾à¦¨ à¦…à¦¨à§à¦·à¦¦', 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦¤à§‹à¦«à¦¾à§Ÿà§‡à¦² à¦†à¦¹à¦®à¦¦ à¦šà§Œà¦§à§à¦°à§€ à¦°à¦¸à¦¾à§Ÿà¦¨ à¦¬à¦¿à¦­à¦¾à¦—, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ'),
(3, 'à¦†à¦‡à¦¨ à¦…à¦¨à§à¦·à¦¦', 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦®à§‹. à¦°à¦¹à¦®à¦¤ à¦‰à¦²à§à¦²à¦¾à¦¹ à¦†à¦‡à¦¨ à¦¬à¦¿à¦­à¦¾à¦—, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ'),
(4, 'à¦¬à¦¿à¦œà¦¨à§‡à¦¸ à¦¸à§à¦Ÿà¦¾à¦¡à¦¿à¦œ à¦…à¦¨à§à¦·à¦¦', 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¶à¦¿à¦¬à¦²à§€ à¦°à§à¦¬à¦¾à¦‡à§Ÿà¦¾à¦¤à§à¦² à¦‡à¦¸à¦²à¦¾à¦® à¦¬à§à¦¯à¦¾à¦‚à¦•à¦¿à¦‚ à¦à¦¨à§à¦¡ à¦‡à¦¨à§à¦¸à§à¦¯à§à¦°à§‡à¦¨à§à¦¸ à¦¬à¦¿à¦­à¦¾à¦—, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ'),
(5, 'à¦¸à¦¾à¦®à¦¾à¦œà¦¿à¦• à¦¬à¦¿à¦œà§à¦žà¦¾à¦¨ à¦…à¦¨à§à¦·à¦¦', 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦¸à¦¾à¦¦à§‡à¦•à¦¾ à¦¹à¦¾à¦²à¦¿à¦® à¦¸à¦®à¦¾à¦œà¦¬à¦¿à¦œà§à¦žà¦¾à¦¨ à¦¬à¦¿à¦­à¦¾à¦—, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ'),
(6, 'à¦œà§€à¦¬à¦¬à¦¿à¦œà§à¦žà¦¾à¦¨ à¦…à¦¨à§à¦·à¦¦', 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦®à§‹. à¦‡à¦®à¦¦à¦¾à¦¦à§à¦² à¦¹à¦• à¦‰à¦¦à§à¦­à¦¿à¦¦à¦¬à¦¿à¦œà§à¦žà¦¾à¦¨ à¦¬à¦¿à¦­à¦¾à¦—, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ'),
(7, 'à¦«à¦¾à¦°à§à¦®à§‡à¦¸à§€ à¦…à¦¨à§à¦·à¦¦', 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦à¦¸ à¦à¦® à¦†à¦¬à§à¦¦à§à¦° à¦°à¦¹à¦®à¦¾à¦¨ à¦•à§à¦²à¦¿à¦¨à¦¿à¦•à§à¦¯à¦¾à¦² à¦«à¦¾à¦°à§à¦®à§‡à¦¸à§€ à¦“ à¦«à¦¾à¦°à§à¦®à¦¾à¦•à§‹à¦²à¦œà¦¿ à¦¬à¦¿à¦­à¦¾à¦—, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ'),
(8, 'à¦†à¦°à§à¦¥ à¦à¦¨à§à¦¡ à¦à¦¨à¦­à¦¾à§Ÿà¦°à¦¨à¦®à§‡à¦¨à§à¦Ÿà¦¾à¦² à¦¸à¦¾à§Ÿà§‡à¦¨à§à¦¸à§‡à¦¸ à¦…à¦¨à§à¦·à¦¦', 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦. à¦à¦¸. à¦à¦®. à¦®à¦¾à¦•à¦¸à§à¦¦ à¦•à¦¾à¦®à¦¾à¦² à¦¦à§à¦°à§à¦¯à§‹à¦— à¦¬à¦¿à¦œà§à¦žà¦¾à¦¨ à¦“ à¦¬à§à¦¯à¦¬à¦¸à§à¦¥à¦¾à¦ªà¦¨à¦¾ à¦¬à¦¿à¦­à¦¾à¦—, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ'),
(9, 'à¦‡à¦žà§à¦œà¦¿à¦¨à¦¿à§Ÿà¦¾à¦°à¦¿à¦‚ à¦à¦¨à§à¦¡ à¦Ÿà§‡à¦•à¦¨à§‹à¦²à¦œà¦¿ à¦…à¦¨à§à¦·à¦¦', 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦®à§‹. à¦¹à¦¾à¦¸à¦¾à¦¨à§à¦œà§à¦œà¦¾à¦®à¦¾à¦¨ à¦•à¦®à§à¦ªà¦¿à¦‰à¦Ÿà¦¾à¦° à¦¬à¦¿à¦œà§à¦žà¦¾à¦¨ à¦“ à¦ªà§à¦°à¦•à§Œà¦¶à¦² à¦¬à¦¿à¦­à¦¾à¦—, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ'),
(10, 'à¦šà¦¾à¦°à§à¦•à¦²à¦¾ à¦…à¦¨à§à¦·à¦¦', 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¨à¦¿à¦¸à¦¾à¦° à¦¹à§‹à¦¸à§‡à¦¨ à¦…à¦‚à¦•à¦¨ à¦“ à¦šà¦¿à¦¤à§à¦°à¦¾à§Ÿà¦¨ à¦¬à¦¿à¦­à¦¾à¦—, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ'),
(11, 'à¦šà¦¿à¦•à¦¿à§Žà¦¸à¦¾ à¦…à¦¨à§à¦·à¦¦', '	à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡à¦¾. à¦–à¦¾à¦¨ à¦†à¦¬à§à¦² à¦•à¦¾à¦²à¦¾à¦® à¦†à¦œà¦¾à¦¦'),
(12, 'à¦¶à¦¿à¦•à§à¦·à¦¾ à¦…à¦¨à§à¦·à¦¦', 'à¦¡. à¦®à§‹. à¦°à¦®à¦œà¦¾à¦¨ à¦†à¦²à§€ (à¦­à¦¾à¦°à¦ªà§à¦°à¦¾à¦ªà§à¦¤) (à¦¸à¦¹à¦¯à§‹à¦—à§€ à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦“ à¦…à¦§à§à¦¯à¦•à§à¦·, à¦Ÿà§‡à¦•à¦¨à¦¿à¦•à§à¦¯à¦¾à¦² à¦Ÿà¦¿à¦šà¦¾à¦°à§à¦¸ à¦Ÿà§à¦°à§‡à¦¨à¦¿à¦‚ à¦•à¦²à§‡à¦œ, à¦¤à§‡à¦œà¦—à¦¾à¦à¦“, à¦¢à¦¾à¦•à¦¾)'),
(13, 'à¦¸à§à¦¨à¦¾à¦¤à¦•à§‹à¦¤à§à¦¤à¦° à¦šà¦¿à¦•à¦¿à§Žà¦¸à¦¾ à¦¬à¦¿à¦œà§à¦žà¦¾à¦¨ à¦“ à¦—à¦¬à§‡à¦·à¦£à¦¾ à¦…à¦¨à§à¦·à¦¦', 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡à¦¾. à¦–à¦¾à¦¨ à¦†à¦¬à§à¦² à¦•à¦¾à¦²à¦¾à¦® à¦†à¦œà¦¾à¦¦');

-- --------------------------------------------------------

--
-- Table structure for table `director_of_institute`
--

CREATE TABLE `director_of_institute` (
  `id` int(11) NOT NULL,
  `institute_name` varchar(1500) COLLATE utf8_unicode_ci NOT NULL,
  `director_name` varchar(1500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `director_of_institute`
--

INSERT INTO `director_of_institute` (`id`, `institute_name`, `director_name`) VALUES
(1, 'à¦¶à¦¿à¦•à§à¦·à¦¾ à¦“ à¦—à¦¬à§‡à¦·à¦£à¦¾ à¦‡à¦¨à¦¸à§à¦Ÿà¦¿à¦Ÿà¦¿à¦‰à¦Ÿ ', 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¸à§ˆà§Ÿà¦¦à¦¾ à¦¤à¦¾à¦¹à¦®à¦¿à¦¨à¦¾ à¦†à¦–à¦¤à¦¾à¦°'),
(2, 'à¦ªà¦°à¦¿à¦¸à¦‚à¦–à§à¦¯à¦¾à¦¨ à¦—à¦¬à§‡à¦·à¦£à¦¾ à¦“ à¦¶à¦¿à¦•à§à¦·à¦£ à¦‡à¦¨à¦¸à§à¦Ÿà¦¿à¦Ÿà¦¿à¦‰à¦Ÿ ', 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦®à§‹. à¦‡à¦¶à¦°à¦¾à¦¤ à¦°à¦¾à§Ÿà¦¹à¦¾à¦¨'),
(3, 'à¦¬à§à¦¯à¦¬à¦¸à¦¾à§Ÿ à¦ªà§à¦°à¦¶à¦¾à¦¸à¦¨ à¦‡à¦¨à¦¸à§à¦Ÿà¦¿à¦Ÿà¦¿à¦‰à¦Ÿ ', 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦¸à§ˆà§Ÿà¦¦ à¦«à¦¾à¦°à¦¹à¦¾à¦¤ à¦†à¦¨à§‹à§Ÿà¦¾à¦°'),
(4, 'à¦ªà§à¦·à§à¦Ÿà¦¿ à¦“ à¦–à¦¾à¦¦à§à¦¯ à¦¬à¦¿à¦œà§à¦žà¦¾à¦¨ à¦‡à¦¨à¦¸à§à¦Ÿà¦¿à¦Ÿà¦¿à¦‰à¦Ÿ ', 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦¶à§‡à¦– à¦¨à¦œà¦°à§à¦² à¦‡à¦¸à¦²à¦¾à¦®'),
(5, 'à¦¸à¦®à¦¾à¦œà¦•à¦²à§à¦¯à¦¾à¦£ à¦“ à¦—à¦¬à§‡à¦·à¦£à¦¾ à¦‡à¦¨à¦¸à§à¦Ÿà¦¿à¦Ÿà¦¿à¦‰à¦Ÿ', ' à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¤à¦¾à¦¹à¦®à¦¿à¦¨à¦¾ à¦†à¦–à¦¤à¦¾à¦°'),
(6, 'à¦†à¦§à§à¦¨à¦¿à¦• à¦­à¦¾à¦·à¦¾ à¦‡à¦¨à¦¸à§à¦Ÿà¦¿à¦Ÿà¦¿à¦‰à¦Ÿ ', 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦¶à¦¿à¦¶à¦¿à¦° à¦­à¦Ÿà§à¦Ÿà¦¾à¦šà¦¾à¦°à§à¦¯à§à¦¯'),
(7, 'à¦¸à§à¦¬à¦¾à¦¸à§à¦¥à§à¦¯ à¦…à¦°à§à¦¥à¦¨à§€à¦¤à¦¿ à¦‡à¦¨à¦¸à§à¦Ÿà¦¿à¦Ÿà¦¿à¦‰à¦Ÿ', 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦¸à§ˆà§Ÿà¦¦ à¦†à¦¬à§à¦¦à§à¦² à¦¹à¦¾à¦®à¦¿à¦¦ (à§¨à§«-à§¦à§«-à§¨à§¦à§§à§¯ à¦ªà¦°à§à¦¯à¦¨à§à¦¤)'),
(8, 'à¦¤à¦¥à§à¦¯ à¦ªà§à¦°à¦¯à§à¦•à§à¦¤à¦¿ à¦‡à¦¨à¦¸à§à¦Ÿà¦¿à¦Ÿà¦¿à¦‰à¦Ÿ ', 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦®à§‹. à¦¶à¦°à¦¿à¦«à§à¦² à¦‡à¦¸à¦²à¦¾à¦®'),
(9, 'à¦¶à¦•à§à¦¤à¦¿ à¦‡à¦¨à¦¸à§à¦Ÿà¦¿à¦Ÿà¦¿à¦‰à¦Ÿ ', 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦¸à¦¾à¦‡à¦«à§à¦² à¦¹à¦•'),
(10, 'à¦‡à¦¨à¦¸à§à¦Ÿà¦¿à¦Ÿà¦¿à¦‰à¦Ÿ à¦…à¦¬ à¦¡à¦¿à¦œà¦¾à¦¸à§à¦Ÿà¦¾à¦° à¦®à§à¦¯à¦¾à¦¨à§‡à¦œà¦®à§‡à¦¨à§à¦Ÿ à¦à¦¨à§à¦¡ à¦­à¦¾à¦²à¦¨à¦¾à¦°à§‡à¦¬à¦¿à¦²à¦¿à¦Ÿà¦¿ à¦¸à§à¦Ÿà¦¾à¦¡à¦¿à¦œ ', ' à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦®à¦¾à¦¹à¦¬à§à¦¬à¦¾ à¦¨à¦¾à¦¸à¦°à§€à¦¨'),
(11, ' à¦‡à¦¨à¦¸à§à¦Ÿà¦¿à¦Ÿà¦¿à¦‰à¦Ÿ à¦…à¦¬ à¦²à§‡à¦¦à¦¾à¦° à¦‡à¦žà§à¦œà¦¿à¦¨à¦¿à§Ÿà¦¾à¦°à¦¿à¦‚ à¦à¦¨à§à¦¡ à¦Ÿà§‡à¦•à¦¨à§‹à¦²à¦œà¦¿ ', 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦¸à§ˆà§Ÿà¦¦ à¦®à§‹à¦¹à¦¾à¦®à§à¦®à¦¦ à¦¶à¦¾à¦®à¦›à§à¦¦à§à¦¦à¦¿à¦¨'),
(12, 'à¦•à¦¨à¦«à§à¦¸à¦¿à§Ÿà¦¾à¦¸ à¦‡à¦¨à¦¸à§à¦Ÿà¦¿à¦Ÿà¦¿à¦‰à¦Ÿ ', 'à¦¡. à¦œà§‹à¦‰ à¦®à¦¿à¦‚à¦¡à¦‚ (à¦®à¦¿à¦œ à¦®à¦¿à¦¨à¦¡à¦¿)');

-- --------------------------------------------------------

--
-- Table structure for table `editorial_committee`
--

CREATE TABLE `editorial_committee` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `rank` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `membership` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `editorial_committee`
--

INSERT INTO `editorial_committee` (`id`, `name`, `rank`, `membership`) VALUES
(1, 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦•à¦¾à¦œà¦² à¦•à§ƒà¦·à§à¦£ à¦¬à§à¦¯à¦¾à¦¨à¦¾à¦°à§à¦œà§€', 'à¦šà§‡à§Ÿà¦¾à¦°à¦®à§à¦¯à¦¾à¦¨, à¦‡à¦‚à¦°à§‡à¦œà§€ à¦¬à¦¿à¦­à¦¾à¦—, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦ªà§à¦°à¦§à¦¾à¦¨ à¦¸à¦®à§à¦ªà¦¾à¦¦à¦•'),
(2, 'à¦¡. à¦¹à§‹à¦¸à¦¨à§‡ à¦†à¦°à¦¾', 'à¦¸à¦¹à¦¯à§‹à¦—à§€ à¦…à¦§à§à¦¯à¦¾à¦ªà¦•, à¦¬à¦¾à¦‚à¦²à¦¾ à¦¬à¦¿à¦­à¦¾à¦—, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦¸à¦¹à¦¯à§‹à¦—à§€ à¦¸à¦®à§à¦ªà¦¾à¦¦à¦•'),
(3, 'à¦®à§‹. à¦‡à¦²à¦¿à§Ÿà¦¾à¦¸ à¦‰à¦¦à§à¦¦à¦¿à¦¨ ', 'à¦ªà§à¦°à¦­à¦¾à¦·à¦•, à¦‡à¦‚à¦°à§‡à¦œà§€ à¦¬à¦¿à¦­à¦¾à¦—, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦¸à¦¹à¦¯à§‹à¦—à§€ à¦¸à¦®à§à¦ªà¦¾à¦¦à¦•'),
(4, 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦†à¦¬à§ à¦®à§‹. à¦¦à§‡à¦²à§‹à§Ÿà¦¾à¦° à¦¹à§‹à¦¸à§‡à¦¨', 'à¦¡à¦¿à¦¨, à¦•à¦²à¦¾ à¦…à¦¨à§à¦·à¦¦, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦¸à¦¦à¦¸à§à¦¯'),
(5, 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦®à§‹à¦¹à¦¾à¦®à§à¦®à¦¦ à¦†à¦¬à§à¦¦à§à¦² à¦†à¦œà¦¿à¦œ', ' à¦ªà§à¦°à¦¾à¦•à§à¦¤à¦¨ à¦¡à¦¿à¦¨, à¦¬à¦¿à¦œà§à¦žà¦¾à¦¨ à¦…à¦¨à§à¦·à¦¦, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦¸à¦¦à¦¸à§à¦¯'),
(6, 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦®à§‹. à¦°à¦¹à¦®à¦¤ à¦‰à¦²à§à¦²à¦¾à¦¹', 'à¦¡à¦¿à¦¨, à¦†à¦‡à¦¨ à¦…à¦¨à§à¦·à¦¦, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦¸à¦¦à¦¸à§à¦¯'),
(7, 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¶à¦¿à¦¬à¦²à§€ à¦°à§à¦¬à¦¾à¦‡à§Ÿà¦¾à¦¤à§à¦² à¦‡à¦¸à¦²à¦¾à¦®', 'à¦¡à¦¿à¦¨, à¦¬à¦¿à¦œà¦¨à§‡à¦¸ à¦¸à§à¦Ÿà¦¾à¦¡à¦¿à¦œ à¦…à¦¨à§à¦·à¦¦, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦¸à¦¦à¦¸à§à¦¯'),
(8, 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦¸à¦¾à¦¦à§‡à¦•à¦¾ à¦¹à¦¾à¦²à¦¿à¦®', 'à¦¡à¦¿à¦¨, à¦¸à¦¾à¦®à¦¾à¦œà¦¿à¦• à¦¬à¦¿à¦œà§à¦žà¦¾à¦¨ à¦…à¦¨à§à¦·à¦¦, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦¸à¦¦à¦¸à§à¦¯'),
(9, 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦®à§‹. à¦‡à¦®à¦¦à¦¾à¦¦à§à¦² à¦¹à¦•', 'à¦¡à¦¿à¦¨, à¦œà§€à¦¬à¦¬à¦¿à¦œà§à¦žà¦¾à¦¨ à¦…à¦¨à§à¦·à¦¦, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦¸à¦¦à¦¸à§à¦¯'),
(10, 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦à¦¸ à¦à¦® à¦†à¦¬à§à¦¦à§à¦° à¦°à¦¹à¦®à¦¾à¦¨', ' à¦¡à¦¿à¦¨, à¦«à¦¾à¦°à§à¦®à§‡à¦¸à§€ à¦…à¦¨à§à¦·à¦¦, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦¸à¦¦à¦¸à§à¦¯'),
(11, 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦. à¦à¦¸. à¦à¦®. à¦®à¦¾à¦•à¦¸à§à¦¦ à¦•à¦¾à¦®à¦¾à¦²', 'à¦¡à¦¿à¦¨, à¦†à¦°à§à¦¥ à¦à¦¨à§à¦¡ à¦à¦¨à¦­à¦¾à§Ÿà¦°à¦¨à¦®à§‡à¦¨à§à¦Ÿà¦¾à¦² à¦¸à¦¾à§Ÿà§‡à¦¨à§à¦¸à§‡à¦¸ à¦…à¦¨à§à¦·à¦¦, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦¸à¦¦à¦¸à§à¦¯'),
(12, 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦®à§‹. à¦¹à¦¾à¦¸à¦¾à¦¨à§à¦œà§à¦œà¦¾à¦®à¦¾à¦¨', 'à¦¡à¦¿à¦¨, à¦‡à¦žà§à¦œà¦¿à¦¨à¦¿à§Ÿà¦¾à¦°à¦¿à¦‚ à¦à¦¨à§à¦¡ à¦Ÿà§‡à¦•à¦¨à§‹à¦²à¦œà¦¿ à¦…à¦¨à§à¦·à¦¦, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦¸à¦¦à¦¸à§à¦¯'),
(13, 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¨à¦¿à¦¸à¦¾à¦° à¦¹à§‹à¦¸à§‡à¦¨', 'à¦¡à¦¿à¦¨, à¦šà¦¾à¦°à§à¦•à¦²à¦¾ à¦…à¦¨à§à¦·à¦¦, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ ', 'à¦¸à¦¦à¦¸à§à¦¯'),
(14, 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦°à§‡à¦œà¦“à§Ÿà¦¾à¦¨ à¦¹à§‹à¦¸à§‡à¦¨ à¦­à§‚à¦‡à§Ÿà¦¾', 'à¦šà§‡à§Ÿà¦¾à¦°à¦®à§à¦¯à¦¾à¦¨, à¦­à§‚à¦—à§‹à¦² à¦“ à¦ªà¦°à¦¿à¦¬à§‡à¦¶ à¦¬à¦¿à¦­à¦¾à¦—, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦¸à¦¦à¦¸à§à¦¯'),
(15, 'à¦°à§‡à¦œà¦¾ à¦†à¦¸à¦¾à¦¦ à¦†à¦² à¦¹à§à¦¦à¦¾ à¦…à¦¨à§à¦ªà¦®', 'à¦šà§‡à§Ÿà¦¾à¦°à¦®à§à¦¯à¦¾à¦¨, à¦—à§à¦°à¦¾à¦«à¦¿à¦• à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦¬à¦¿à¦­à¦¾à¦—, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦¸à¦¦à¦¸à§à¦¯'),
(16, 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦¸à§ˆà§Ÿà¦¦ à¦«à¦¾à¦°à¦¹à¦¾à¦¤ à¦†à¦¨à§‹à§Ÿà¦¾à¦°', 'à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦•, à¦¬à§à¦¯à¦¬à¦¸à¦¾à§Ÿ à¦ªà§à¦°à¦¶à¦¾à¦¸à¦¨ à¦‡à¦¨à¦¸à§à¦Ÿà¦¿à¦Ÿà¦¿à¦‰à¦Ÿ, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦¸à¦¦à¦¸à§à¦¯'),
(17, 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦¶à§‡à¦– à¦¨à¦œà¦°à§à¦² à¦‡à¦¸à¦²à¦¾à¦®', ' à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦•, à¦ªà§à¦·à§à¦Ÿà¦¿ à¦“ à¦–à¦¾à¦¦à§à¦¯ à¦¬à¦¿à¦œà§à¦žà¦¾à¦¨ à¦‡à¦¨à¦¸à§à¦Ÿà¦¿à¦Ÿà¦¿à¦‰à¦Ÿ, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦¸à¦¦à¦¸à§à¦¯'),
(18, 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦®à§‹. à¦¶à¦°à¦¿à¦«à§à¦² à¦‡à¦¸à¦²à¦¾à¦®', ' à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦•, à¦¤à¦¥à§à¦¯ à¦ªà§à¦°à¦¯à§à¦•à§à¦¤à¦¿ à¦‡à¦¨à¦¸à§à¦Ÿà¦¿à¦Ÿà¦¿à¦‰à¦Ÿ, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦¸à¦¦à¦¸à§à¦¯'),
(19, 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦®à¦¾à¦¹à¦¬à§à¦¬à¦¾ à¦¨à¦¾à¦¸à¦°à§€à¦¨', 'à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦•, à¦¡à¦¿à¦œà¦¾à¦¸à§à¦Ÿà¦¾à¦° à¦®à§à¦¯à¦¾à¦¨à§‡à¦œà¦®à§‡à¦¨à§à¦Ÿ à¦à¦¨à§à¦¡ à¦­à¦¾à¦²à¦¨à¦¾à¦°à§‡à¦¬à¦¿à¦²à¦¿à¦Ÿà¦¿ à¦¸à§à¦Ÿà¦¾à¦¡à¦¿à¦œ à¦‡à¦¨à¦¸à§à¦Ÿà¦¿à¦Ÿà¦¿à¦‰à¦Ÿ, à¦¢à¦¾.à¦¬à¦¿.', 'à¦¸à¦¦à¦¸à§à¦¯'),
(20, 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦¸à§ˆà§Ÿà¦¦ à¦†à¦œà¦¿à¦œà§à¦² à¦¹à¦•', 'à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦•, à¦ªà§à¦°à¦•à¦¾à¦¶à¦¨à¦¾ à¦¸à¦‚à¦¸à§à¦¥à¦¾, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦¸à¦¦à¦¸à§à¦¯'),
(21, 'à¦®à¦¾à¦¹à¦®à§à¦¦ à¦†à¦²à¦®', 'à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦•, à¦œà¦¨à¦¸à¦‚à¦¯à§‹à¦— à¦…à¦«à¦¿à¦¸, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦¸à¦¦à¦¸à§à¦¯'),
(22, 'à¦®à§‹à¦¸à§à¦¤à¦¾à¦• à¦†à¦¹à¦®à§‡à¦¦', 'à¦¸à¦¿à¦¨à¦¿à§Ÿà¦° à¦“à§Ÿà§‡à¦¬ à¦ªà§à¦°à§‹à¦—à§à¦°à¦¾à¦®à¦¾à¦°-à¦•à¦¾à¦®-à¦“à§Ÿà§‡à¦¬ à¦®à¦¾à¦¸à§à¦Ÿà¦¾à¦°, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦¸à¦¦à¦¸à§à¦¯'),
(23, 'à¦¬à¦¿à¦ªà§à¦² à¦•à§à¦®à¦¾à¦° à¦¸à¦¾à¦¹à¦¾', 'à¦¡à§‡à¦ªà§à¦Ÿà¦¿ à¦°à§‡à¦œà¦¿à¦¸à§à¦Ÿà§à¦°à¦¾à¦° (à¦¶à¦¿à¦•à§à¦·à¦¾-à§©), à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦¸à¦¦à¦¸à§à¦¯-à¦¸à¦šà¦¿à¦¬');

-- --------------------------------------------------------

--
-- Table structure for table `exciting_place`
--

CREATE TABLE `exciting_place` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(6000) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `longitude` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exciting_place`
--

INSERT INTO `exciting_place` (`id`, `name`, `description`, `image`, `latitude`, `longitude`) VALUES
(1, 'Curzon Hall', 'The Curzon Hall is a British Raj-era building and home of the Faculty of Sciences at the University of Dhaka.[1]  The building was originally intended to be a town hall and is named after Lord Curzon, the Viceroy of India who laid its foundation stone in 1904.[1] Upon the establishment of Dacca University in 1921, it became the base of the university\'s science faculty.', 'https://firebasestorage.googleapis.com/v0/b/signindemo-f56a8.appspot.com/o/DU_images%2Fcurzon_hall.jpg?alt=media&token=e657a6a7-338a-4389-ad77-384712a4d075', '23.727500', '90.401870'),
(2, 'Teacher-Student Centre', 'Teacher-Student Centre of the University of Dhaka is a building on the Dhaka University campus in Shahbagh, Dhaka, Bangladesh. The Centre was established in 1961 by the Dhaka University as the Division public Affairs. The construction of the Teacher-Student Centre was financed by the Pakistan Government and the Ford foundation. Parts of the site used to be land of the old Sujatpur Palace grounds (the oldest Nawab Mansion in Shahbagh). There was a Greek cemetery on the west side of the race course, now Suhrawardy Udyan. Many historically important political meetings and discussions were held at the Teacher-Student Centre during the Bangladesh Liberation War. Student political situations are still held there.', 'https://firebasestorage.googleapis.com/v0/b/signindemo-f56a8.appspot.com/o/DU_images%2Ftsc.PNG?alt=media&token=4193684b-f028-4f6a-a499-62501b270882', '23.731869', '90.395764'),
(3, 'Gurdwara Nanak Shahi', 'Gurdwara Nanak Shahi (Bengali: à¦—à§à¦°à§à¦¦à§à¦¯à¦¼à¦¾à¦°à¦¾ à¦¨à¦¾à¦¨à¦•à¦¶à¦¾à¦¹à§€, Punjabi: à¨—à©à¨°à¨¦à©à¨†à¨°à¨¾ à¨¨à¨¾à¨¨à¨• à¨¸à¨¼à¨¾à¨¹à©€) is the principal Sikh Gurdwara (prayer hall) in Dhaka, Bangladesh. It is located at the campus of the University of Dhaka and considered to be the biggest of the 9 to 10 Gurdwaras in the country.[1] The Gurudwara commemorates the visit of Guru Nanak (1506â€“1507). It is said to have been built in 1830. The present building of the Gurdwara was renovated in 1988â€“1989. The parkarma verandah had been constructed on all four sides of the original building to provide protection.', 'https://firebasestorage.googleapis.com/v0/b/signindemo-f56a8.appspot.com/o/DU_images%2FGurdwara%20Nanak%20Shahi.PNG?alt=media&token=a24332f2-5e9f-4838-8afc-9668332fc0d5', '23.733534', '90.393624'),
(4, 'à¦¸à§à¦®à§ƒà¦¤à¦¿ à¦šà¦¿à¦°à¦¨à§à¦¤à¦¨', 'â€œà¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ â€  à¦¶à§à¦§à§ à¦à¦•à¦Ÿà¦¾ à¦¨à¦¾à¦® à¦¨à§Ÿ, à¦à¦•à¦Ÿà¦¾ à¦ªà§à¦°à¦¤à¦¿à¦·à§à¦ à¦¾à¦¨ à¦¨à§Ÿ, `à§«à§¨, `à§¬à§¯, `à§­à§§ à¦¥à§‡à¦•à§‡ à¦¶à§à¦°à§ à¦•à¦°à§‡ à¦à¦°à¦¶à¦¾à¦¦à¦¬à¦¿à¦°à§‹à¦§à§€ à¦†à¦¨à§à¦¦à§‹à¦²à¦¨à§‡à¦° à¦®à¦§à§à¦¯ à¦¦à¦¿à§Ÿà§‡ à¦¸à§à¦¬à§ˆà¦°à¦¾à¦šà¦¾à¦°à§€ à¦¶à¦¾à¦¸à¦¨à§‡à¦° à¦ªà¦¤à¦¨ à¦¤à¦¥à¦¾ à¦¦à§‡à¦¶à§‡à¦° à¦¸à¦®à¦¸à§à¦¤ à¦°à¦¾à¦œà¦¨à§ˆà¦¤à¦¿à¦• à¦†à¦° à¦¸à¦‚à¦¸à§à¦•à§ƒà¦¤à¦¿à¦• à¦ªà¦Ÿ à¦ªà¦°à¦¿à¦¬à¦°à§à¦¤à¦¨à§‡à¦° à¦¶à§à¦°à§à¦Ÿà¦¾ à¦˜à¦Ÿà§‡à¦›à¦¿à¦²à§‹ à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ à¦à¦° à¦¨à§‡à¦¤à§ƒà¦¤à§à¦¬à§‡, à¦à¦‡ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ à¦¤à¦¾à¦‡ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿà§‡à¦° à¦—à¦£à§à¦¡à¦¿ à¦ªà§‡à§œà¦¿à§Ÿà§‡ à¦¹à§Ÿà§‡ à¦“à¦ à§‡ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶à§‡à¦° à¦…à¦¸à§à¦¤à¦¿à¦¤à§à¦¬à§‡à¦° à¦†à¦à¦¤à§à¦°à¦˜à¦°, à¦šà§‡à¦¤à¦¨à¦¾à¦° à¦à¦• à¦®à§‚à¦°à§à¦¤ à¦ªà§à¦°à¦¤à§€à¦•à¥¤  à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ à¦à¦° à¦ªà§à¦°à¦§à¦¾à¦¨ à¦«à¦Ÿà¦• "à¦®à§à¦•à§à¦¤à¦¿ à¦“ à¦—à¦£à¦¤à¦¨à§à¦¤à§à¦° à¦¤à§‹à¦°à¦£" à¦¦à¦¿à§Ÿà§‡ à¦ªà§à¦°à¦¬à§‡à¦¶ à¦•à¦°à§‡ à¦•à¦¿à¦›à§à¦¦à§‚à¦° à¦¸à¦¾à¦®à¦¨à§‡ à¦à¦—à§‹à¦²à§‡ à¦­à¦¿à¦¸à¦¿à¦° à¦¬à¦¾à¦¸à¦­à¦¬à¦¨à§‡à¦° à¦¸à¦¾à¦®à¦¨à§‡ à¦šà§‹à¦–à§‡ à¦ªà§œà¦¬à§‡ à§­à§§ à¦à¦° à¦®à¦¹à¦¾à¦¨ à¦®à§à¦•à§à¦¤à¦¿à¦¯à§à¦¦à§à¦§à§‡à¦° à¦¸à¦¾à¦¥à§‡ à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿà§‡à¦° à¦¯à§‡ à¦†à¦¤à§à¦®à¦¤à§à¦¯à¦¾à¦—-à¦¤à¦¾à¦°à¦‡ à¦¨à¦¿à¦¦à¦°à§à¦¶à¦¨à¦¸à§à¦¬à¦°à§‚à¦ª à¦—à§à¦°à¦¾à¦¨à¦¾à¦‡à¦Ÿ à¦ªà¦¾à¦¥à¦°à§‡à¦° à¦›à§‹à¦Ÿ à¦¬à§œ à§§à§ª à¦Ÿà¦¿ à¦¦à§‡à§Ÿà¦¾à¦²à¥¤ à¦¬à§‡à¦¦à¦¿à¦¤à§‡ à¦“à¦ à¦¾à¦° à¦¸à¦®à§Ÿ à¦•à¦¾à¦²à§‹ à¦¸à¦¿à¦à§œà¦¿à¦° à¦‰à¦­à§Ÿ à¦ªà¦¾à¦¶à§‡ à¦¬à¦¾à¦‚à¦²à¦¾ à¦“ à¦‡à¦‚à¦°à§‡à¦œà§€à¦¤à§‡ à¦®à§à¦•à§à¦¤à¦¿à¦¯à§à¦¦à§à¦§à§‡à¦° à¦¸à¦®à§Ÿ à¦¨à¦¿à¦¹à¦¤ à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ à¦“ à¦à¦° à¦¶à¦¹à§€à¦¦ à¦¸à¦¦à¦¸à§à¦¯à¦¦à§‡à¦° à¦ªà§à¦°à¦¤à¦¿ à¦¶à§à¦°à¦¦à§à¦§à¦¾ à¦œà¦¾à¦¨à¦¿à§Ÿà§‡ "à¦¸à§à¦®à§ƒà¦¤à¦¿ à¦šà¦¿à¦°à¦¨à§à¦¤à¦¨" à¦¶à¦¿à¦°à§‹à¦¨à¦¾à¦®à§‡ à¦¨à¦¾à¦® à¦«à¦²à¦•à¥¤', 'https://firebasestorage.googleapis.com/v0/b/signindemo-f56a8.appspot.com/o/DU_images%2Fsriti_shrinonton.PNG?alt=media&token=7a99f36b-97f4-41f4-9dc0-68fb1b89b87f', '23.733032', '90.391038'),
(5, 'Shaheed Minar', 'The Shaheed Minar (Bengali: à¦¶à¦¹à§€à¦¦ à¦®à¦¿à¦¨à¦¾à¦° Shohid Minar lit. "Martyr Monument") is a national monument in Dhaka, Bangladesh, established to commemorate those killed during the Bengali Language Movement demonstrations of 1952 in then East Pakistan.  On 21 and 22 February 1952, students from Dhaka University and Dhaka Medical College and political activists were killed when the Pakistani police force opened fire on Bengali protesters who were demanding official status for their native tongue, Bengali.[1] The massacre occurred near Dhaka Medical College and Ramna Park in Dhaka. A makeshift monument was erected on 23 February[2][3] by students of Dhaka medical college and other educational institutions, but soon demolished on 24 February[3] by the Pakistani police force.  The Language Movement gained momentum, and after a long struggle, Bengali gained official status in Pakistan (with Urdu) in 1956. To commemorate the dead, the Shaheed Minar was designed and built by Bangladeshi sculptors Hamidur Rahman in collaboration with Novera Ahmed. Construction was delayed by martial law, but the monument was finally completed in 1963, and stood until the Bangladesh Liberation War in 1971, when it was demolished completely during Operation Searchlight. After Bangladesh gained independence later that year, it was rebuilt. It was expanded in 1983.  National, mourning, cultural and other activities are held each year on 21 February (Ekushey February) to mark Language Movement Day or Shaheed Dibas (Martyrs\' Day), centred on the Shaheed Minar. Since 2000, 21 February is also recognised as International Mother Language Day.', '', '23.727114', '90.396886');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_of_arts`
--

CREATE TABLE `faculty_of_arts` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(10000) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `longitude` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `faculty_of_arts`
--

INSERT INTO `faculty_of_arts` (`id`, `name`, `description`, `image`, `latitude`, `longitude`) VALUES
(1, 'Department of Bengali', 'The Department of Bengali, University of Dhaka set out its journey in July, 1921. Then it was part of the department of Sanskrit and Bengali. M. M. Haraprasad Shastri was the first Head of the Department. Â Muhammad Shahidullah [later Dr.] joined this department as lecturer. Â Only Dr. Muhammad Shahidullah among the four teachers appointed initially used to teach Bengali. Â He designed the syllabus intended for students of the department of Bengali at tertiary level. His frame of syllabus had endured intact for years until new courses were introduced in the 1970s of the last century. Â Many learned personalities, academicians, teachers, intellectuals and researchersÂ like Dr. Muhammad Shahidullah glorified this department by being part of it. Among them Mohitlal Majumder, Dr. Ashutosh Battacharya, Â Charu Chandra Bandyopadhyay, Dr. Monomohan Ghosh, Poet Jashim Uddin, Muhammad Abdul Hai, Munier Chowdhury, Mofazzal Haider Chowdhury, Dr. Ahmed Sharif, Dr. Mohammad Moniruzzaman, Dr. Humayun Azad and so on Â are notable. Soon after the separation of Bengali and Sanskrit as distinct departments, Sushilkumar Dey and Muhammad Shahidullah graced the departments of Sanskrit and Bengali as their heads respectively. This department is proud of having survived a series of crises cropping up after the partition of Bengal in 1947, having up teachers and students who chose to be the vanguards of renaissance in the language-literature-culture trajectory and playing a historic role in the language movement of 1952 and other cultural movements later on. Dr. Muhammad Shahidullah was the first emeritus professor of this department and Dr. Anisuzzaman is presently serving in that position. This department was blessed with an ambience of research since it beginning which gained momentum with the publication of Shahitya Patrika in 1958 under the progressive editorial stance of Professor Muhammad Abdul Hai. The department also brings out other important research publications. The â€˜Munir Optimaâ€™, a keyboard layout for standardization of Bengali writers developed by Professor Munier Chowdhury is a very significant contribution of this department.  This department is also celebrated for its glorious contribution to the great liberation war in 1971. Professor Munier Chowdhury, Mofazzal Haider Chowdhury and Anwar Pasha and some other students of this department received martyrdom by sacrificing their lives. The Department of Bengali offers a four-year B.A [Honours] course and a one-year Master\'s course. It also provides M.Phil and Ph.D Programmes. A four-year semester system of teaching and letter grade system of evaluation has been introduced at the B.A Honours level from the Academic year 2006-2007. The B.A Honours consists of 8 semesters with 2 semesters in a year. The duration of each semester is 26 weeks. There are 28 one-unit [four credits] teaching courses for the B.A Honours. A one-year semester system of teaching and letter grade system of evaluation is also in existence at the Masters level from the academic year 2006-2007. The one-year Masters programme is of two semesters, with the duration of 26 weeks each. Eight one-unit [four credits] courses are to be taken at the Masters level including compulsory and optional courses. The M.Phil and Ph.D programmes are normally of two and three years duration respectively. The M. Phil programme requires one-year course work and one year research work. M.Phil and Ph.D students must defend their thesis successfully to obtain their degrees, and must have a minimum qualification before enrolment.  Professor Dr. Bhishmadeb Choudhury is currently the chairman of this department. There are twenty seven teachers presently working here. Dr. Syed Akram Hossain is working as supernumerary professor. Prescribed and recommended books and journals are available in the seminar library of the Department.', 'https://firebasestorage.googleapis.com/v0/b/signindemo-f56a8.appspot.com/o/DU_images%2Fbengali_dept.jpg?alt=media&token=df105a54-ca0e-49b6-a1d7-0f822ab88f26', '23.733958', '90.392705'),
(2, 'Department of English', 'The Department of English at the University of Dhaka has a long and distinguished history. It was one of the first twenty departments the university started with on July 1, 1921. Today, it is a nationally reputed centre for English studies incorporating Literature, ELT and Cultural Studies, academic excellence and literary creativity. The Department is presently situated on the first floor of the Arts building. It has a dedicated multimedia room and a computer lab for providing technical supports. It has two seminar libraries: the Guhathakurata-Rashid Seminar is the Literature library and the Abi Md. Nizamul Huq Seminar is the language library. The students have to pay a small fee in order to access the library and lab facilities. The Department offers courses for four-year B.A Honors degrees in English. At the M.A level students can specialize in either Applied Linguistics and ELT or English Literature. The Department also offers M.Phil and Ph.D. degrees. Many foreign students from Korea, Nepal, Iran, Iraq, Turkey, Libya, Palestine and Somalia come to the department to study English. The Department has a peer-reviewed journal â€“ Spectrum-which publishes scholarly articles, book reviews, translations, interviews and creative pieces. Spectrum welcomes contributions from the teachers, alumni and students.  There are several financial aid programs and stipends available for the meritorious as well as the needy students. They are provided by the alumni and different donors. The department regularly arranges workshops, seminars, memorial meetings and cultural programmes. The students join in extracurricular activities like sports, debating and public speaking and various cultural programmes. The students and teachers of the Department of English contributed to making the nationâ€™s cultural and literary landmarks. A student of this Department, Lila Nag was the first woman graduate of Dhaka University. Famous literary geniuses like Budhadev Bose and Munier Chowdhury have graduated from the department. The teachers and the students played a glorious role in the War of Liberation in 1971. Professor Dr. Jyotirmoy Guhathakurata and senior lecturer Mr. Rashidul Hasan as well as many students were martyred in the war. The Literature Seminar library has been named the Guhathakurta-Rashid Seminar in the memory of the two martyrs. In 2008, Profssor Dr. Khondakar Ashraf Hossain who was the Chair of the department took the initiative to build a wooden installation on the wall of the seminar library. Presently there are three distinguished full-time scholars and faculty members, one Professor Emeritus, one Super numeary Professor and three part-time teachers working at the department. Most of them are specialized from reputed foreign universities in the areas of British, American, Caribbean and Postcolonial literature. National Professor Kabir Chowdhury, after his retirement, became a part-time teacher in the department. He continued working here till his demise. Professor Serajul Islam Choudhury is the present Professor Emeritus of the department. Both of them have been experts in Bangla and English language and literature.  Recently with the financial aid and support of the World Bank and the University Grants Commission of Bangladesh, and under the supervision of HEQEP (Higher Education Quality Enhancement Project) a two-year long project â€˜Improvement and Innovation in English Teaching-Learningâ€™ was started in 2011. Professor Dr. Fakrul Alam was in charge of the project as the Sub-project Manager. His careful monitoring and management made it a highly acclaimed venture on its completion. The University of Dhaka further recommended the project to be turned into a research centre in 2013. It is now the Centre for English Teaching and Research (CETR). ', '', '23.734489', '90.392655'),
(3, 'Department of Arabic ', 'The Department of Arabic is one of the ancient Departments of the University of Dhaka. This department started its journey with 4 qualified teachers in 1921. Then, the name of this department was â€œDepartment of Arabic and Islamic studiesâ€™â€™.  Shamsul Ulama Abu Nasr Wahid was the first head of this Department.  An alumnus as well as a faculty member of this Department Dr. S M Hussain was the first Vice-Chancellor of the University of Dhaka.  In 1980 the Department of Arabic turned into an individual Department. Currently there are 27 teachers including 1 supernumerary and 5 part-time teachers.  Now around 800 students are studying at different academic levels of this Department.  At present the Department of Arabic offers B.A honours in Arabic (4-year), M.A in Arabic literarture and ALT (1 year). Besides, it also offers M.Phil and Ph.D research degree in Arabic language and literature. Since its inception, Department of Arabic has been contributing significantly to different national and international sectors .The Department of Arabic has a seminar library which is well equipped with considerable number of books, journals, periodicals and disertations on modern & classical Arabic language and literature. Under  the supervision of the Department of Arabic the inauguration of a center named â€œCentre for Arabic Teaching, Training and Research (CATTR)â€™â€™ was approved in Syndicate meeting on 21/07/2016 with the proposal of the academic committee and in accordance with the  recommendation of the Deanâ€™s committee. The purpose of this center is to conduct different Arabic language courses to teach essential spoken Arabic to those professionals who are willing to go to the Middle East for their career as teachers, doctors, engineers and nurses for example. This centre also offers Advanced Arabic language courses in order to enhance the efficiency of the teachers of Arabic language in other institutions. ', 'https://firebasestorage.googleapis.com/v0/b/signindemo-f56a8.appspot.com/o/DU_images%2Farabic_dept.png?alt=media&token=24e3fb61-de78-4925-8619-707a88de1898', '23.734347', '90.392224'),
(4, 'Department of Persian Language and Literature', 'In 1921 the Dhaka University started its journey with 12 departments of which the Persian Department was one. At the beginning, this department was named Persian and Urdu. In the past long 97 years, the Department played a substantial role in developing and reconstructing the nation. The Department of Persian and Urdu was established with Professor Fida Ali Khan as the head. Professor Andalib Shadani, former Dean of the Faculty of Arts and Professor Sirajul Haque were student as well as teachers of this Department. In the post-independence period, though there was some stagnation, the Department has gradually improvement in all respects. The number of students increased gradually. Therefore, the demand of separation of this Combined Department (Persian and Urdu) was raised and eventually the authorities of the Dhaka University and the University Grant commission decided to separate the Combined Department into two independent ones in 2006. The syndicate accordingly approved the name of the Persian Department as the Department of Persian Language and Literature. The Departments has offered BA Hons, MA, MPhil, and PhD degree ', '', '23.734228', '90.392824'),
(5, 'Department of Urdu', 'The Department of Urdu was previouly part of the Department Persian & Urdu which started functioning on 1 July 1921. It became a separate department on 10 March 2007. This Department offers four year BA (Honâ€™s), one-year MA Program along with MPhil and PhD programs. Professor W. H. A. Shadani of this department was elected Dean of the faculty of Arts four times. At present nine full-time and six part-time faculty members are teaching in the department. Among the full-time faculty members, there are four Professors, two Associate Professors, two Assistant Professors and one Lecturer. The students of this department actively participate in extra curricular activities including literary competition, cultural functions in different occasions and in sports like football, cricket, basketball, etc. The department has a seminar library and a computer lab. The department organizes annual picnic for all students, teachers and staff members and a study tour for the final year students. The department publishes an annual Journal titled â€˜The Dhaka University Journal of Urduâ€™. ', '', '23.734016', '90.393104'),
(6, 'Department of Sanskrit', 'In 1921 The University of Dhaka started its academic function with three faculties ï€­ Arts, Science and Law having fourteen departments in total. The Arts Faculty had eleven departments of which the Department of Sanskrit was one. The name of the department has been changed. At the beginning its name was â€˜Department of Sanskritic Studies and Sanskrit & Bengaliâ€™. There were six teachers and Mahamahopadhyaya Haraprasad Shastri was the head of the department. Md. Shahidullah was the Lecturer of Bengali. There were two streams of learning here ï€­ Sanskritic Studies and Sanskrit & Bengali with different syllabi and the degrees were conferred in that way. The courses were BA Pass, BA Hons, and MA MPhil and PhD degrees were also awarded from here. In the academic year 1930-31 the name of the department was changed to Department of Sanskrit and Bengali. In 1937 the department was divided into two fullï€­fledged departments ï€­ Department of Sanskrit and  Department of Bengali.During the partition of India in 1947 the study of Sanskrit was seriously affected. The teachers migrated to India one by one. In the session 1950-51 there were no teachers in this Department, so it unified with the Department of Bengali and then the Department was renamed as the â€˜Department of Bengali and Sanskritâ€™. Due to the scarcity of teachers and students the study of Sanskrit was disrupted very much for some years. In the academic year 1955-56 it restarted due to the attempt and keen interest of Professor Md. Abdul Hye, the Head of the Department. In the academic year 1958-59 four students got admitted in BA Hons. program and since then the number of students has increased gradually. In 1970-71 the Department regained its independent identity with the name of the Department of Sanskrit and Pali (30 October 1970) due to the attempt of Professor Munier Chowdhury, the Head of the Department and the Vice-Chancellor Justice Abu Sayeed Chowdhury. Mr. Rabindra Nath Ghosh Tagore took over the responsibility of the Head of the Department. After him, the teachers of the Department carried out this duty according to seniority. It is to be mentioned here that the duration of Chairmanship (Head of the Department) is three years. In 2007 the Department was divided into two : the Department of Sanskrit and the Department of Pali and Buddhist Studies. Since then the Department of Sanskrit has been functioning as such. In the first phase the last PhD degree was awarded from this Department in the session 1948-49. And then after many years in 1991 Mrs. Kalpana Halder was awarded PhD degree. Now the MPhil and PhD research work is going on regularly in the department. From 1999 an annual research journal entitled Prachyavidya Patrika is being published by the Department. From 2016 a Sanskrit journal entitled Mandakranta is being published.  The department has a rich seminar library with valuable books and journals. There is a research centre in the name of â€˜Professor Dilip Kumar Bhattacharyya Research Centreâ€™ at the department. Professor Bhattacharyya, before his death, donated 50% of his wealth to the Department by a will. With this donation the centre was established. There is a â€˜Cultural Clubâ€™ and a â€˜Debating Clubâ€™ in the Department. Except these there is a rich Computer Lab in the Department which was established with the help of the High Commission of India, Dhaka. A trust fund named â€˜Professor Nurunnahar Begum Trust Fundâ€™ has been founded by Professor Narayan Chandra Biswas. Another trust fund named â€˜Dr. Faizunnesa Begum Trust Fundâ€™ has been founded by Professor Faizunnesa Begum in the Department. From these funds a few students of the Department get scholarships according to the rules of the funds. Every year study tour and picnic are arranged by the Department. Students of the Department take part in Inter-department Football, Cricket and Basketball competitions. Among the reputed teachers were Mahamahopadhyaya Haraprasad Shastri, Shrish Chandra Chakraborty, SK De, PC Lahiri, RG Basak and RC Hazra, who were well known for their scholarship in different schools of learning. M M Haraprasad Shastri discovered and edited Charyapada the earliest extent writing Bengali literature.  He played a pioneering role for collecting, deciphering and editing manuscripts. Prof SK De and Professor Md. Shahidullah are known by name for their scholarship. In 2007 Professor Narayan Chandra Biswas was awarded the title of â€˜Vidyalankaraâ€™ for his outstanding achievement and contribution to the field of Sanskrit Education by the Purbanchal Academy of Oriental Studies, West Bengal, in association with the Ministry of Human Resources Development, Govternment of India. In 2012 Professor Niranjan Adhikary was honoured as a Poet-literateur-linguist by the Chadaktala SAARC Cultural Forum, Kolkata. The present Chairperson Chandana Rani Biswas is an Assistant Professor.  At present four-year BA Honours and one-year MA program are going on following the semester system. MPhil and PhD degrees are also offered.', '', '23.734269', '90.393303');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_of_biological_sciences`
--

CREATE TABLE `faculty_of_biological_sciences` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(6000) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `longitude` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faculty_of_business_studies`
--

CREATE TABLE `faculty_of_business_studies` (
  `id` int(11) NOT NULL,
  `name` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(6000) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `longitude` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `faculty_of_business_studies`
--

INSERT INTO `faculty_of_business_studies` (`id`, `name`, `description`, `image`, `latitude`, `longitude`) VALUES
(1, 'Department of Management', 'The Department of Management commenced its journey in 1970.  Currently the Department offers four-year undergraduate BBA program, one year MBA program under the current syllabus. The Department is also offering MPhil and PhD and DBA degrees. Additionally, the Department is offering MBA (Evening) and Master of Professional Human Resource Management program. There are 34 teachers in the Department: 15 Professors, 4 Associate Professors, 11 Assistant Professors and 4 lecturers.  Most of the teachers have degree from abroad and a number of research publications. To mobilize educational activities, the Department has its own computer lab, air conditioned classrooms with multimedia projector and sound system.', 'https://firebasestorage.googleapis.com/v0/b/signindemo-f56a8.appspot.com/o/DU_images%2Fmanagement%20dept.jpg?alt=media&token=f072e69e-cb0d-4ee4-9109-01f444d0db9e', '23.735532', '90.392550'),
(2, 'à¦à¦•à¦¾à¦‰à¦¨à§à¦Ÿà¦¿à¦‚ à¦à¦¨à§à¦¡ à¦‡à¦¨à¦«à¦°à¦®à§‡à¦¶à¦¨ à¦¸à¦¿à¦¸à§à¦Ÿà§‡à¦®à¦¸à§â€Œ à¦¬à¦¿à¦­à¦¾à¦—', 'à¦¹à¦¿à¦¸à¦¾à¦¬à¦¬à¦¿à¦œà§à¦žà¦¾à¦¨ à¦¬à¦¿à¦­à¦¾à¦— à§§à§¯à§­à§¦ à¦¸à¦¾à¦²à§‡ à¦ªà§à¦°à¦¤à¦¿à¦·à§à¦ à¦¿à¦¤ à¦¹à¦²à§‡à¦“ à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿà§‡à¦° à¦œà¦¨à§à¦®à¦²à¦—à§à¦¨ à¦¥à§‡à¦•à§‡à¦‡ à¦¦à§à¦‡ à¦¬à§Žà¦¸à¦° à¦®à§‡à§Ÿà¦¾à¦¦à¦¿ à¦¸à§à¦¨à¦¾à¦¤à¦• à¦ªà§à¦°à§‹à¦—à§à¦°à¦¾à¦®à§‡ à¦¹à¦¿à¦¸à¦¾à¦¬à¦¬à¦¿à¦œà§à¦žà¦¾à¦¨ à¦¬à¦¿à¦·à§Ÿà¦Ÿà¦¿ à¦•à¦²à¦¾ à¦…à¦¨à§à¦·à¦¦à§‡ à¦ªà§œà¦¾à¦¨à§‹ à¦¹à¦¤à§‹à¥¤ à§§à§¯à§¨à§ª à¦¸à¦¾à¦²à§‡ à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ à¦¥à§‡à¦•à§‡ à¦ªà§à¦°à¦¥à¦® à¦¬à¦¾à¦£à¦¿à¦œà§à¦¯ à¦¬à¦¿à¦·à§Ÿà§‡ à¦¸à§à¦¨à¦¾à¦¤à¦• à¦¡à¦¿à¦—à§à¦°à¦¿ à¦ªà§à¦°à¦¦à¦¾à¦¨ à¦•à¦°à¦¾ à¦¹à§Ÿà¥¤ à§§à§¯à§ªà§® à¦¸à¦¾à¦² à¦ªà¦°à§à¦¯à¦¨à§à¦¤ à¦¬à¦¾à¦£à¦¿à¦œà§à¦¯ à¦¬à¦¿à¦­à¦¾à¦—à§‡ à¦•à§‡à¦¬à¦² à¦¸à§à¦¨à¦¾à¦¤à¦• à¦ªà¦°à§à¦¯à¦¾à§Ÿà§‡ à¦¬à¦¿. à¦•à¦®. à¦ªà§à¦°à§‹à¦—à§à¦°à¦¾à¦® à¦šà¦¾à¦²à§ à¦›à¦¿à¦²à¥¤ à¦à¦°à¦ªà¦° à¦¥à§‡à¦•à§‡ à¦à¦®. à¦•à¦®. à¦¤à¦¥à¦¾ à¦¸à§à¦¨à¦¾à¦¤à¦•à§‹à¦¤à§à¦¤à¦° à¦ªà§à¦°à§‹à¦—à§à¦°à¦¾à¦® à¦šà¦¾à¦²à§ à¦¹à§Ÿà¥¤ à¦ªà¦°à¦¬à¦°à§à¦¤à§€à¦•à¦¾à¦²à§‡ à§§à§¯à§«à§© à¦¸à¦¾à¦²à§‡ à¦¬à¦¾à¦£à¦¿à¦œà§à¦¯ à¦¬à¦¿à¦·à§Ÿà§‡ à¦¬à¦¿. à¦•à¦®. (à¦¸à¦®à§à¦®à¦¾à¦¨) à¦¶à¦¿à¦•à§à¦·à¦¾à¦•à§à¦°à¦® à¦šà¦¾à¦²à§ à¦¹à§Ÿà¥¤ à§§à§¯à§¬à§§ à¦¸à¦¾à¦² à¦¥à§‡à¦•à§‡ à¦¬à¦¾à¦£à¦¿à¦œà§à¦¯ à¦¬à¦¿à¦­à¦¾à¦—à§‡ à¦¸à§à¦¨à¦¾à¦¤à¦•à§‹à¦¤à§à¦¤à¦° à¦ªà¦°à§à¦¯à¦¾à§Ÿà§‡ à¦¹à¦¿à¦¸à¦¾à¦¬à¦¬à¦¿à¦œà§à¦žà¦¾à¦¨ à¦¬à¦¿à¦·à§Ÿà§‡ à¦à¦®. à¦•à¦®. à¦¶à¦¿à¦•à§à¦·à¦¾à¦•à§à¦°à¦® à¦šà¦¾à¦²à§ à¦¹à§Ÿà¥¤ à§§à§¯à§­à§¦ à¦¸à¦¾à¦²à§‡ à¦¬à¦¾à¦£à¦¿à¦œà§à¦¯ à¦…à¦¨à§à¦·à¦¦ à¦ªà§à¦°à¦¤à¦¿à¦·à§à¦ à¦¾à¦° à¦¸à¦¾à¦¥à§‡ à¦¸à¦¾à¦¥à§‡ à¦¹à¦¿à¦¸à¦¾à¦¬à¦¬à¦¿à¦œà§à¦žà¦¾à¦¨ à¦¬à¦¿à¦­à¦¾à¦—à¦“ à¦ªà§à¦°à¦¤à¦¿à¦·à§à¦ à¦¾ à¦•à¦°à¦¾ à¦¹à§Ÿà¥¤ à¦¤à¦–à¦¨ à¦®à¦¾à¦¤à§à¦° à§® à¦œà¦¨ à¦¶à¦¿à¦•à§à¦·à¦• à¦¨à¦¿à§Ÿà§‡ à¦¹à¦¿à¦¸à¦¾à¦¬à¦¬à¦¿à¦œà§à¦žà¦¾à¦¨ à¦¬à¦¿à¦­à¦¾à¦— à¦¸à§à¦¨à¦¾à¦¤à¦• à¦ªà¦°à§à¦¯à¦¾à§Ÿà§‡ à¦¸à¦®à§à¦®à¦¾à¦¨ à¦¶à§à¦°à§‡à¦£à¦¿à¦° à¦ªà¦¾à¦ à¦•à§à¦°à¦® à¦à¦¬à¦‚ à¦¸à§à¦¨à¦¾à¦¤à¦•à§‹à¦¤à§à¦¤à¦° à¦ªà¦°à§à¦¯à¦¾à§Ÿà§‡ à¦à¦®. à¦•à¦® à¦ªà¦¾à¦ à¦•à§à¦°à¦® à¦šà¦¾à¦²à§ à¦•à¦°à§‡à¥¤ à§§à§¯à§­à§® à¦¸à¦¾à¦²à§‡ à¦¸à§‡à¦®à¦¿à¦¸à§à¦Ÿà¦¾à¦° à¦ªà¦¦à§à¦§à¦¤à¦¿ à¦šà¦¾à¦²à§ à¦¹à§Ÿà¥¤ à§§à§¯à§¯à§ª-à§¯à§« à¦¶à¦¿à¦•à§à¦·à¦¾à¦¬à¦°à§à¦· à¦¥à§‡à¦•à§‡ à¦ à¦¬à¦¿à¦­à¦¾à¦—à§‡ à§ª à¦¬à¦›à¦° à¦®à§‡à§Ÿà¦¾à¦¦à¦¿ à¦¸à§à¦¨à¦¾à¦¤à¦• à¦¬à¦¿. à¦¬à¦¿. à¦. à¦à¦¬à¦‚ à¦à¦• à¦¬à¦›à¦° à¦®à§‡à§Ÿà¦¾à¦¦à¦¿ à¦à¦®. à¦¬à¦¿. à¦. à¦ªà¦¾à¦ à¦•à§à¦°à¦® à¦šà¦¾à¦²à§ à¦•à¦°à¦¾ à¦¹à§Ÿà¥¤ à¦¬à¦¿. à¦¬à¦¿. à¦. à¦“ à¦à¦®. à¦¬à¦¿. à¦. à¦ªà¦¾à¦ à¦•à§à¦°à¦®à§‡ à§© à¦®à¦¾à¦¸ à¦®à§‡à§Ÿà¦¾à¦¦à¦¿ à¦‡à¦¨à§à¦Ÿà¦¾à¦°à§à¦¨à¦¶à¦¿à¦ª à¦ªà§à¦°à¦¶à¦¿à¦•à§à¦·à¦£ à¦¬à¦¾à¦§à§à¦¯à¦¤à¦¾à¦®à§‚à¦²à¦•à¥¤ à¦à¦®. à¦¬à¦¿. à¦. à¦ªà¦°à§à¦¯à¦¾à§Ÿà§‡ (à¦•) à¦ªà§à¦°à¦«à§‡à¦¶à¦¨à¦¾à¦² à¦à¦•à¦¾à¦‰à¦¨à§à¦Ÿà¦¿à¦‚ (à¦–) à¦•à¦¸à§à¦Ÿà§â€Œ à¦“ à¦®à§à¦¯à¦¾à¦¨à§‡à¦œà¦®à§‡à¦¨à§à¦Ÿ à¦à¦•à¦¾à¦‰à¦¨à§à¦Ÿà¦¿à¦‚ à¦à¦¬à¦‚ (à¦—) à¦‡à¦¨à¦«à¦°à¦®à§‡à¦¶à¦¨ à¦¸à¦¿à¦¸à§à¦Ÿà§‡à¦®à§â€Œà¦¸-à¦ à¦¸à§à¦ªà§‡à¦¶à¦¾à¦²à¦¾à¦‡à¦œ à¦•à¦°à¦¾à¦° à¦¸à§à¦¯à§‹à¦— à¦†à¦›à§‡à¥¤ à¦¤à¦¾à¦›à¦¾à§œà¦¾ à¦ à¦¬à¦¿à¦­à¦¾à¦—à§‡ à¦à¦®. à¦«à¦¿à¦². à¦“ à¦ªà¦¿à¦à¦‡à¦š. à¦¡à¦¿. à¦ªà§à¦°à§‹à¦—à§à¦°à¦¾à¦® à¦šà¦¾à¦²à§ à¦†à¦›à§‡à¥¤ à¦¹à¦¿à¦¸à¦¾à¦¬à¦¬à¦¿à¦œà§à¦žà¦¾à¦¨ à¦¬à¦¿à¦·à§Ÿà§‡à¦° à¦ªà¦°à¦¿à¦§à¦¿ à¦¬à¦¿à¦¸à§à¦¤à¦¾à¦° à¦²à¦¾à¦­ à¦•à¦°à¦¾à§Ÿ à§¨à§¦à§¦à§¨ à¦¸à¦¾à¦²à§‡ à¦¬à¦¿à¦­à¦¾à¦—à§‡à¦° à¦¨à¦¾à¦® à¦ªà¦°à¦¿à¦¬à¦°à§à¦¤à¦¨ à¦•à¦°à§‡ à¦¬à¦°à§à¦¤à¦®à¦¾à¦¨à§‡ à¦à¦•à¦¾à¦‰à¦¨à§à¦Ÿà¦¿à¦‚ à¦à¦¨à§à¦¡ à¦‡à¦¨à¦«à¦°à¦®à§‡à¦¶à¦¨ à¦¸à¦¿à¦¸à§à¦Ÿà§‡à¦®à§â€Œà¦¸ à¦¬à¦¿à¦­à¦¾à¦— à¦•à¦°à¦¾ à¦¹à§Ÿà§‡à¦›à§‡à¥¤ à¦¬à¦°à§à¦¤à¦®à¦¾à¦¨à§‡ à¦ à¦¬à¦¿à¦­à¦¾à¦—à§‡ à§«à§ªà¦œà¦¨ à¦¶à¦¿à¦•à§à¦·à¦•à§‡à¦° à¦®à¦¾à¦à§‡ à§§à§«à¦œà¦¨ à¦…à¦§à§à¦¯à¦¾à¦ªà¦•, à§¦à§©à¦œà¦¨ à¦¸à¦¹à¦¯à§‹à¦—à§€ à¦…à¦§à§à¦¯à¦¾à¦ªà¦•, à§¦à§­à¦œà¦¨ à¦¸à¦¹à¦•à¦¾à¦°à§€ à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦“ à§§à§¨à¦œà¦¨ à¦²à§‡à¦•à¦šà¦¾à¦°à¦¾à¦°à¦¸à¦¹ à¦®à§‹à¦Ÿ à§©à§­à¦œà¦¨ à¦¶à¦¿à¦•à§à¦·à¦• à¦•à¦°à§à¦®à¦°à¦¤ à¦†à¦›à§‡à¦¨à¥¤ Bangladesh Accounting Review à¦¨à¦¾à¦®à§‡ à¦¬à¦¿à¦­à¦¾à¦—à§‡ à¦à¦•à¦Ÿà¦¿ à¦œà¦¾à¦°à§à¦¨à¦¾à¦² à¦…à¦¨à§à¦®à§‹à¦¦à¦¿à¦¤ à¦¹à§Ÿà¥¤ à¦¬à¦°à§à¦¤à¦®à¦¾à¦¨à§‡ à¦¦à¦¿à¦¬à¦¾ à¦¬à¦¿à¦­à¦¾à¦—à§‡ à¦ªà§à¦°à¦¾à§Ÿ à§§à§¬à§¦à§¦ à¦œà¦¨ à¦à¦¬à¦‚ à¦¸à¦¾à¦¨à§à¦§à§à¦¯à¦•à¦¾à¦²à§€à¦¨ à¦à¦®. à¦¬à¦¿. à¦. à¦ªà§à¦°à§‹à¦—à§à¦°à¦¾à¦®à§‡ à§¬à§¦à§¦à¦œà¦¨ à¦›à¦¾à¦¤à§à¦°/à¦›à¦¾à¦¤à§à¦°à§€ à¦ªà§œà¦¾à¦¶à§à¦¨à¦¾ à¦•à¦°à¦›à§‡à¥¤ à¦à¦®. à¦«à¦¿à¦². à¦“ à¦ªà¦¿à¦à¦‡à¦š. à¦¡à¦¿. à¦—à¦¬à§‡à¦·à¦•à§‡à¦° à¦¸à¦‚à¦–à§à¦¯à¦¾ à¦¬à¦°à§à¦¤à¦®à¦¾à¦¨à§‡ à§¨à§«à¥¤ ', 'https://firebasestorage.googleapis.com/v0/b/signindemo-f56a8.appspot.com/o/DU_images%2FAccounting%20and%20Information%20Systems%20du.PNG?alt=media&token=14d2d57d-822b-467c-a20b-9a06aea83031', '23.735262', '90.392452'),
(3, 'Department of Marketing ', 'The Department of Marketing, one of the members of the Faculty of Business Studies, was established on 1 July 1974. This department started functioning with a view to fulfilling the need for specialized education, research and training in the field of marketing.  The Department of Marketing started its function with only 3 teachers and 49 students in 1974. At present there are about 1700 students in its BBA, MBA (Regular), MBA (Evening), MPhil, PhD and Master of Professional Marketing (MPM) programs in the department. Since its inception, more than 4000 Marketing graduates obtained degrees from this department, who cater to the need of the growing demand for executives and trained manpower with strong skills in this specialized business area. The alumni of the department are holding important managerial positions in prestigious national and multinational organizations.  The department offers undergraduate, graduate, MPhil and PhD programs in marketing. The Department is committed to achieve the highest academic performance and excellence. The department has 40 distinguished and experienced faculty members who possess outstanding academic credentials and who are devoted to their professional integrity. Currently, seven teachers of the department are staying abroad on study leave for pursuing higher studies leading to PhD degree. Since 1978, Integrated Semester System has been introduced in Bachelor and Master degree programs at this department.', 'https://firebasestorage.googleapis.com/v0/b/signindemo-f56a8.appspot.com/o/DU_images%2Fmarketing.PNG?alt=media&token=b31b3f63-bd6b-4cc5-a9d1-8182ca1024d3', '23.735175', '90.391953'),
(4, 'Department of Finance', 'The Department of Finance was established in 1974. Since its inception the Department has been playinga pioneer role by providing specialized Finance education and training for creating skilled executives and human resource with strong finance background. The Department offers four-year BBA program and one-year MBA program for the students. Most of the faculty members of the Department are trained in foreign countries and have PhD degrees. The trained faculty members of the Department have been contributing greatly at home and abroad to the field of teaching, research and other specialized areas. They also served and have been serving in key positions in the University administration and financial institutions. A good number of the teacherhave received best award for research from the faculty. For the betterment of education the Department has been designing and following modern syllabus and course curriculum which has earned widespread recognition from home and abroad. Almost all the top ranking students in the admission test get enrolled in this Department. In addition to the regular BBA and MBA programs the Department offers Master of Professional Program, DBA Program, MPhil and PhD. programs. The Department has been running Evening MBA program for professionals and executives. There are around 2000 students currently studying in the Department of Finance. Every year on 1st July the Department celebrates its Foundation Day. The Department also organizes events like â€˜Finance Festâ€™, â€˜Financial Quiz Competitionâ€™ etc.', 'https://firebasestorage.googleapis.com/v0/b/signindemo-f56a8.appspot.com/o/DU_images%2Ffinnace.PNG?alt=media&token=1d7e7884-1abc-4b4c-a7df-e386582be2da', '23.735172', '90.392035'),
(5, 'Department of Banking and Insurance', 'The vision of the Department of Banking and Insurnace is to develop skilled human resources with specialized education and training particularly in Banking and Financial services. Since its inception in 2004, the Department is committed to catering the needs of modern business world and trained manpower with strong skills in business, particularly in Banking and Insurnce.  The Department offers four-year BBA Program, one-year MBA Program and other post-graduate programs (including MPhil, PhD, DBA, MPB, MAS and DTM) in Banking and Insurnce. It has introduced MBA (Evening) program for the executives and officials. Right from the outset, the Department of Banking and Insurnce constantly focuses on academic excellence and uncompromissing standard, for which it has earned a good reputation. Recently, the Department of Banking and Insurance has introduced three professional programs namely Master of Actuarial Science, Master of Professional Banking and Diploma in Tax Management to meet the emerging corporate challenges of the professionals. Faculty members of this Department are highly qualified and actively engaged in extensive research. They have many research publications to their credit. Dynamic course structure, supreme expertise of the faculty members and modern teaching standard add greater value to the Department. Department of Banking and Insurance has already earned commendable exposure in the financial services sector for imparting quality teaching and creating outstanding graduates.', 'https://firebasestorage.googleapis.com/v0/b/signindemo-f56a8.appspot.com/o/DU_images%2Fbanking.jpg?alt=media&token=68f5089b-f187-4a3e-acf1-8cd4d93694e3', '23.735509', '90.392412');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_of_du`
--

CREATE TABLE `faculty_of_du` (
  `id` int(11) NOT NULL,
  `name` varchar(1500) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(1500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `faculty_of_du`
--

INSERT INTO `faculty_of_du` (`id`, `name`, `description`, `image`) VALUES
(1, 'Faculty of Arts', 'The Faculty of Arts, the largest faculty in the  University, consists of seventeen departments : Department of Bangla, Department of English, Department of History, Department of Islamic History and Culture, Department of Philosophy, Department of Information Science and Library Management, Department of Arabic, Department of Islamic Studies, Department of Sanskrit, Department of Persian Language and Literature, Department of Pali and Buddhist Studies, Department of Urdu, Department of Linguistics, Department of Theatre and Performance Studies, Department of Music, Department of World Religions and Culture, and Department of Dance . The academic activities of these departments are conducted by the Faculty of Arts. The Faculty of Arts has 7779 students. 1662 students are enrolled every academic year. 385 teachers are currently working in this faculty.  The admission of students into 1st year Honours classes in the Departments of the Arts Faculty is conducted through Ã”Kha Unitâ€™ (Unit-A). Besides, admission  of students into 1st year Honours classes in the following departments and institute is also conducted through â€˜Kha Unitâ€™ under the management of this Faculty : Department of Economics, Department of Political Science, Department of Public Administration, Department of Sociology, Department of  Mass Communication and Journalism, Department of International Relations, Department of Anthropology, Department of Peace and Conflict Studies, Department of Development Studies,  Department of Women and Gender Studies, Department of Population Sciences, Department of Television, Film and Photography,  Department of Criminology and Department of Communication Disorders of the Faculty of Social Sciences, Department of Law of the Faculty of Law, Department of Psychology of the Faculty of Biological Sciences, Department of Geography and Environment of the Faculty of Earth and Environmental Sciences and five Institutes- the Institute of Social Well-fare and Research, Institute of Education and Research, Institute of Health Economics, Institute of Disaster management and vulnerability Studies and Institute of Modern Languages  Distribution of classrooms for different Faculties situated at the Arts Building and allocation of space for various academic and administrative activities including Mid-term and Semester Final Examinations are scheduled by the Faculty of Arts. The maintenance of Arts Faculty Building and Lecture Theater Building is carried out by the Dean of the Faculty of Arts. Two research journals, one in Bengali and the other in English, are published every year from the Faculty. At the initiative of the Faculty, broadband connection has been installed at the Arts Faculty Building and Lecture Theatre. In addition to these, broadband connection has been extended to all the offices of the Faculty and seminar rooms and teachersâ€™ rooms as per their need. Internet connection has been set up at the Department of Psychology and the office of the Proctor of the university located at the Arts Building. The historical Battola and the Aparajeyo Bangla are located at Arts Faculty campus. The responsibility of looking after these historic places mainly lies with this faculty. Also situated around here are Madhur Canteen, DUCSU Building and Dhaka University Central Library. Guruduwara Nanakshahi, the holy temple of the Shikh community, is adjacent to the faculty. The University Authority is doing a comprehensive renovation work for the historical Arts Building and Lecture Theatre with Tk. 9,90,00000 released from the non-ADP budget of the Ministry of Education in 2015-2016 fiscal year, which was duly approved by the Ministry of Finance. It is to be noted that the construction work is about to be completed soon.', 'https://firebasestorage.googleapis.com/v0/b/signindemo-f56a8.appspot.com/o/DU_images%2Farts.jpg?alt=media&token=17f9e88e-af93-4e4e-b9e2-602c956fcaae');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_of_earth_and_environmental_sciences`
--

CREATE TABLE `faculty_of_earth_and_environmental_sciences` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(6000) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `longitude` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faculty_of_education`
--

CREATE TABLE `faculty_of_education` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(6000) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `longitude` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faculty_of_engineering_and_technology`
--

CREATE TABLE `faculty_of_engineering_and_technology` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(6000) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `longitude` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faculty_of_fine_art`
--

CREATE TABLE `faculty_of_fine_art` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(6000) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `longitude` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faculty_of_law`
--

CREATE TABLE `faculty_of_law` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(6000) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `longitude` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `faculty_of_law`
--

INSERT INTO `faculty_of_law` (`id`, `name`, `description`, `image`, `latitude`, `longitude`) VALUES
(1, 'Department of Law', 'The Department of Law has a fascinating history in educating members of the society in generall and legal profession in particular. It boasts a host of eminent lawyers and judges who have made their marks in the legal profession as well as in the fields of public administration, diplomacy, academia, business and politics. The Department began its journey in 1921. Until 1973 it offered a two-year LL.B. programme in the evening. During the 1973-1974 session, it introduced a three-year LL.B. Honours course. The duration of this course was subsequently extended to four years since the 1977-1978 session. During the 1976-1977 session, a one-year LL.M. course was introduced. In the 2004-2005 sessions, a new syllabus was introduced for the LL.B. Honours students increasing the marks from 1700 to 2300. During the 2005-2006 sessions, LL.M. (General & Specialised) program was introduced, comprising a general Masters course and six specialised Masters courses. The Department also offers MPhil and PhD Besides, the Department runs the Dhaka University Law Clinic and the Dhaka University Moot Court Society. The Department has 43 faculty members with expertise and recognition nationally and internationally. The total number of students in the Department during the 2016-2017 sessions was 694 among whom 491 are male and 203 are female. 03 PhD students and 05 MPhil students are also pursuing their research.', 'https://firebasestorage.googleapis.com/v0/b/signindemo-f56a8.appspot.com/o/DU_images%2Fdept_law.PNG?alt=media&token=7646707e-5c05-47c3-b1d3-05a0699b4576', '23.728484', '90.397877');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_of_medicine`
--

CREATE TABLE `faculty_of_medicine` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(6000) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `longitude` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faculty_of_pharmacy`
--

CREATE TABLE `faculty_of_pharmacy` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(6000) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `longitude` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faculty_of_postgraduate_medical_science_and_research`
--

CREATE TABLE `faculty_of_postgraduate_medical_science_and_research` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(6000) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `longitude` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faculty_of_sciences`
--

CREATE TABLE `faculty_of_sciences` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(6000) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `longitude` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `faculty_of_sciences`
--

INSERT INTO `faculty_of_sciences` (`id`, `name`, `description`, `image`, `latitude`, `longitude`) VALUES
(1, 'Department of Physics ', 'The Department of Physics is one of the oldest and largest departments of the University of Dhaka. It is was one of the four departments with which this premier institute started its academic activities back in 1921. It enrolls more than 140 undergraduates and 100 new postgraduates every year. It also offers minor courses to many other departments of the university including Mathematics, Chemistry, Geology, Applied Chemistry and Chemical Engineering. There are about fifty faculty members in the department. The department has a glorious past due to the presence of many eminent physicists as faculty members among whom were S. N. Bose, K. S. Krishnan and others. It was the remarkable discovery by S. N. Bose that led to the amazing phenomenon of Bose-Einstein condensation. The discovery of Bose-Einstein statistics was made by Bose during his stay in the Department. In fact, the whole nation takes pride in it. The department tries to maintain its heritage to this day.  The reputation of the department rests not only on its high quality of teaching but also on the quality of research activities,  the diversity and excellence reflected in the topics taught in the undergraduate and postgraduate courses. In their pursuit of original research, the faculty members collaborate with international scientists including scientists from Europe and America. Research opportunities exist for investigating a wide range of topics in theoretical and experimental physics including particle physics, general relativity, atomic physics, biophysics, condensed matter physics, theory of liquid metals, band theory, thin films, laser physics, geophysics, low temperature physics, nuclear physics and statistical mechanics (equilibrium and non-equilibrium).', 'https://firebasestorage.googleapis.com/v0/b/signindemo-f56a8.appspot.com/o/DU_images%2Fphysics_dept.PNG?alt=media&token=4eb2b197-e98c-47f5-92b3-64de300cc1a6', '23.727970', '90.398664'),
(2, 'à¦—à¦£à¦¿à¦¤ à¦¬à¦¿à¦­à¦¾à¦— ', 'à§§à§¯à§¨à§§ à¦¸à¦¾à¦²à§‡ à¦‰à¦ªà¦®à¦¹à¦¾à¦¦à§‡à¦¶à§‡à¦° à¦ªà§à¦°à¦–à§à¦¯à¦¾à¦¤ à¦—à¦£à¦¿à¦¤à¦¬à¦¿à¦¦ à¦­à§‚à¦ªà¦¤à¦¿à¦®à§‹à¦¹à¦¨ à¦¸à§‡à¦¨ à¦“ à¦¡. à¦¨à¦²à¦¿à¦¨à§€à¦®à§‹à¦¹à¦¨ à¦¬à¦¸à§à¦° à¦¨à§‡à¦¤à§ƒà¦¤à§à¦¬à§‡ à§« à¦œà¦¨ à¦¶à¦¿à¦•à§à¦·à¦• à¦¨à¦¿à§Ÿà§‡ à¦—à¦£à¦¿à¦¤ à¦¬à¦¿à¦­à¦¾à¦—à§‡à¦° à¦•à¦¾à¦°à§à¦¯à¦•à§à¦°à¦® à¦¶à§à¦°à§ à¦¹à§Ÿà¥¤ à¦ªà§à¦°à¦¥à¦®à§‡ à¦ªà§‚à¦°à§à¦¬ à¦¬à¦¾à¦‚à¦²à¦¾ à¦¸à¦°à¦•à¦¾à¦°à§‡à¦° à¦¸à§‡à¦•à§à¦°à§‡à¦Ÿà¦¾à¦°à¦¿à§Ÿà§‡à¦Ÿ à¦­à¦¬à¦¨à§‡à¦° à¦•à¦•à§à¦·à§‡ à¦à¦¬à¦‚ à¦•à¦¿à¦›à§à¦•à¦¾à¦² à¦•à¦¾à¦°à§à¦œà¦¨ à¦¹à¦²à§‡à¦° à¦ªà¦¶à§à¦šà¦¿à¦® à¦ªà¦¾à¦°à§à¦¶à§à¦¬à§‡à¦° à¦¦à§‹à¦¤à¦¾à¦²à¦¾à§Ÿ à¦—à¦£à¦¿à¦¤ à¦¬à¦¿à¦­à¦¾à¦—à§‡à¦° à¦ªà§à¦°à¦¶à¦¾à¦¸à¦¨à¦¿à¦• à¦“ à¦¶à¦¿à¦•à§à¦·à¦¾ à¦•à¦¾à¦°à§à¦¯à¦•à§à¦°à¦® à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦¿à¦¤ à¦¹à¦¤à§‹à¥¤ à¦¸à¦°à§à¦¬à¦¶à§‡à¦· à§§à§¯à§¬à§« à¦¸à¦¾à¦²à§‡ à¦¸à¦¾à§Ÿà§‡à¦¨à§à¦¸ à¦à¦¨à§‡à¦•à§à¦¸ à¦­à¦¬à¦¨à§‡à¦° (à¦¬à¦°à§à¦¤à¦®à¦¾à¦¨à§‡ à¦•à¦¾à¦œà§€ à¦®à§‹à¦¤à¦¾à¦¹à¦¾à¦° à¦¹à§‹à¦¸à§‡à¦¨ à¦­à¦¬à¦¨) à¦¤à¦¿à¦¨ à¦¤à¦²à¦¾à§Ÿ à¦—à¦£à¦¿à¦¤ à¦¬à¦¿à¦­à¦¾à¦—à¦Ÿà¦¿à¦° à¦œà¦¨à§à¦¯ à¦¸à§à¦¥à¦¾à¦¨ à¦¬à¦°à¦¾à¦¦à§à¦¦ à¦•à¦°à¦¾ à¦¹à§Ÿà¥¤ à§§à§¯à§¯à§¬-à§¯à§­ à¦¶à¦¿à¦•à§à¦·à¦¾à¦¬à¦°à§à¦·à§‡ à§ª à¦¬à¦›à¦° à¦®à§‡à§Ÿà¦¾à¦¦à¦¿ à¦¸à¦®à¦¨à§à¦¬à¦¿à¦¤ à¦…à¦¨à¦¾à¦°à§à¦¸ à¦•à§‹à¦°à§à¦¸ à¦šà¦¾à¦²à§ à¦¹à§Ÿà¥¤ à¦à¦‡ à¦¬à¦¿à¦­à¦¾à¦—à§‡ à¦¸à§‡à¦®à¦¿à¦¨à¦¾à¦° à¦²à¦¾à¦‡à¦¬à§à¦°à§‡à¦°à¦¿ à¦à¦¬à¦‚ à¦¸à§-à¦¸à¦œà§à¦œà¦¿à¦¤ à¦•à¦®à§à¦ªà¦¿à¦‰à¦Ÿà¦¾à¦° à¦²à§à¦¯à¦¾à¦¬à¦•à¦•à§à¦· à¦°à§Ÿà§‡à¦›à§‡à¥¤ à¦¶à¦¹à¦¿à¦¦ à¦¶à¦¿à¦•à§à¦·à¦• à¦œà¦¨à¦¾à¦¬ à¦¶à¦°à¦¾à¦«à¦¤ à¦†à¦²à§€à¦° à¦¸à§à¦®à¦°à¦£à§‡ à¦¬à¦¿à¦­à¦¾à¦—à§€à§Ÿ à¦¸à§‡à¦®à¦¿à¦¨à¦¾à¦° à¦•à¦•à§à¦· â€œà¦¶à¦¹à¦¿à¦¦ à¦¶à¦°à¦¾à¦«à¦¤ à¦†à¦²à§€ à¦•à¦¾à¦‰à¦¨à§à¦¸à¦¿à¦² à¦•à¦•à§à¦·â€ à¦à¦¬à¦‚ â€œà¦¶à¦¹à¦¿à¦¦ à¦†à¦œà¦¿à¦® à¦¸à§‡à¦®à¦¿à¦¨à¦¾à¦° à¦²à¦¾à¦‡à¦¬à§à¦°à§‡à¦°à¦¿â€ à¦›à¦¾à¦¤à§à¦° à¦¶à¦¹à¦¿à¦¦ à¦†à¦œà¦¿à¦®à§‡à¦° à¦¸à§à¦®à¦°à¦£à§‡ à¦¨à¦¾à¦®à¦•à¦°à¦£ à¦•à¦°à¦¾ à¦¹à§Ÿà§‡à¦›à§‡à¥¤ à¦¬à¦¿à¦­à¦¾à¦— à¦ªà§à¦°à¦¤à¦¿à¦·à§à¦ à¦¾à¦•à¦¾à¦² à¦¹à¦¤à§‡à¦‡ à¦®à¦¾à¦¸à§à¦Ÿà¦¾à¦°à§à¦¸ à¦ªà§à¦°à§‹à¦—à§à¦°à¦¾à¦®à§‡ à¦¬à¦¿à¦¶à§à¦¦à§à¦§ à¦—à¦£à¦¿à¦¤ à¦“ à¦«à¦²à¦¿à¦¤ à¦—à¦£à¦¿à¦¤ à¦¦à§à¦Ÿà¦¿ à¦­à¦¾à¦— à¦°à§Ÿà§‡à¦›à§‡à¥¤ à§§à§¯à§­à§ª-à§­à§« à¦¶à¦¿à¦•à§à¦·à¦¾à¦¬à¦°à§à¦· à¦¹à¦¤à§‡ à¦¬à¦¿à¦¶à§à¦¦à§à¦§ à¦“ à¦«à¦²à¦¿à¦¤ à¦—à¦£à¦¿à¦¤-à¦ à¦¥à¦¿à¦¸à¦¿à¦¸ à¦—à§à¦°à§à¦ª, à¦à¦®. à¦«à¦¿à¦². à¦“ à¦ªà¦¿à¦à¦‡à¦š. à¦¡à¦¿. à¦ªà§à¦°à§‹à¦—à§à¦°à¦¾à¦® à¦šà¦¾à¦²à§ à¦¹à§Ÿà§‡à¦›à§‡à¥¤ à¦¤à¦¾à¦›à¦¾à§œà¦¾ à¦®à¦¾à¦‡à¦¨à¦° à¦•à§‹à¦°à§à¦¸ à¦¹à¦¿à¦¸à§‡à¦¬à§‡ à¦¸à¦¾à¦¤à¦Ÿà¦¿ à¦¬à¦¿à¦­à¦¾à¦—à§‡ à¦—à¦£à¦¿à¦¤ à¦ªà¦¾à¦ à¦¦à¦¾à¦¨ à¦•à¦°à¦¾ à¦¹à¦šà§à¦›à§‡à¥¤ à¦¬à¦°à§à¦¤à¦®à¦¾à¦¨à§‡ à¦šà¦¾à¦° à¦¬à§Žà¦¸à¦° à¦®à§‡à§Ÿà¦¾à¦¦à¦¿ à¦¸à¦¿à¦²à§‡à¦¬à¦¾à¦¸à§‡ à§§à§¨ à¦•à§à¦°à§‡à¦¡à¦¿à¦Ÿ à¦®à§à¦¯à¦¾à¦¥-à¦²à§à¦¯à¦¾à¦¬ à¦¬à§à¦¯à¦¬à¦¹à¦¾à¦°à¦¿à¦• à¦•à§‹à¦°à§à¦¸ à¦šà¦¾à¦²à§ à¦°à§Ÿà§‡à¦›à§‡à¥¤ à§ªà¦°à§à¦¥ à¦¬à¦°à§à¦· à¦…à¦¨à¦¾à¦°à§à¦¸ à¦•à§‹à¦°à§à¦¸à§‡ à¦¸à¦•à¦² à¦¶à¦¿à¦•à§à¦·à¦¾à¦°à§à¦¥à§€à¦¦à§‡à¦° à¦œà¦¨à§à¦¯ à§© à¦•à§à¦°à§‡à¦¡à¦¿à¦Ÿ à¦ªà§à¦°à¦œà§‡à¦•à§à¦Ÿ à¦•à§‹à¦°à§à¦¸ à¦ªà§à¦°à¦¬à¦°à§à¦¤à¦¨ à¦¹à§Ÿà§‡à¦›à§‡à¥¤ ', 'https://firebasestorage.googleapis.com/v0/b/signindemo-f56a8.appspot.com/o/DU_images%2Fmath_du.PNG?alt=media&token=2dc496ed-4eba-4d3b-9fa9-2a0e56138aa0', '23.727641', '90.398104'),
(3, 'Department of Chemistry', 'The Faculty of Science started its journey in 1921 in the Curzon Hall campus with three Departments namely Department of Mathematics, Department of Physics and Department of Chemistry. The Chemistry Department at present is situated in two locations, â€œCurzon Hallâ€ and â€œMukarram Hossain Khundker Biggan Bhabanâ€.   Heads of the Department and Chairmen Professor Sir J. C. Ghosh was appointed as the first Head of the Department of Chemistry in 1921. Professor Ghosh was a renowned Physical Chemist having particular interest in Photochemistry and Electrochemistry. He was famous for the â€œGhoshâ€™s theory of strong electrolytesâ€, included in the Physical Chemistry text books. He left the Department in 1939 to become the Director of the Indian Institute of Science, Bangalore. Professor J. K. Chowdhury took over as the Head of the Department and continued till 1947. Professor J. Zernike, from Holland, joined the Department as Head towards the end of 1947. Professor Zernike constructed a Curie-Cheneveau magnetic balance. When Professor Zernike left in 1954, Dr. Mukarram Hossain Khundker was appointed as Head of the Department. He was the first Bengali Muslim to become the Professor of Chemistry (1960) at the University. He was in the forefront of the pioneers in laying the foundation of modern chemistry education and chemical research in the country. He was the first recipient of the Pakistan Academy of Sciences Gold Medal in the Physical sciences.  Teaching Staff There are 31 Professors, 4 Associate Professors, 6 Assistant Professors and 12 Lecturers in the Department. 09 teachers are on study leave for higher studies abroad. Rest of the 56 positions are vacant. Among the teachers 36 have PhD degrees. There is an additional position of Professor, named â€œKhundkar Chairâ€. Professor Dr. S. Z. Haider was appointed to this Chair in 1986 for the first time.  The Department has been regularly arranging â€œKhundker Memorial Lectureâ€ since 1981, instituted by the University of Dhaka, to honour the memory of Late Professor Dr. M H Khundker.  Number of Students and Degrees Offered The Department runs courses for the BS Honours, MS, MPhil and Ph.D. degrees in Chemistry. Besides it gives minor courses in Chemistry of various Departments under the Faculties of Sciences and Biological Sciences. There are about 747 students (including those of minor courses) in the Department. Of the students 25 percent are females.  Research Activities in the Department of Chemistry: Currently, 67 MS, 8 MPhil and 05 PhD students are doing research in the Department. Since the inception of Bangladesh, 45 students received PhD degrees in different branches of Chemistry.', '', '23.727194', '90.402943'),
(4, 'Department of Statistics', 'Department of Statistics, University of Dhaka was established in 1950 by a famous intellectual and statistician Professor Dr. Qazi Motahar Hussain. Since then this department has been consistently producing many leading statisticians in the world including founders of several departments of statistics in Bangladesh, US, Canada and elsewhere. The name of this department was changed to â€œDepartment of Statistics, Biostatistics and Informaticsâ€ in 2008. However, it retained its old name â€œDepartment of Statisticsâ€ in 2016.  This department offers BS Hounours, MS, MPhil and PhD degrees. Courses on Statistics are also offered for students of other disciplines. This department owns a seminar library as well as computer labratories equipped with modern facilities. The faculty members carry out research in diversified areas including Biostatistics, Econometrics, Demography, Design of Experiments and many others. The highly qualified teachers of this department are able to supervise and train (MSc, MPhil and PhD) research students.', 'https://firebasestorage.googleapis.com/v0/b/signindemo-f56a8.appspot.com/o/DU_images%2Fstatistics.PNG?alt=media&token=81ddb19a-5a68-411f-9a97-638216c8096b', '23.728130', '90.398004'),
(5, 'Department of Biomedical Physics & Technology ', 'Starting its journey on November 3, 2008 this department aims, to make itself one of the centrepieces of Biomedical Physics and Technology in the World. Professor Khondder Siddique-e-Rabbani joined as the first chairman of this department. This post-graduate multidisciplinary department emphasises research and development at the PhD level aimed at delivering the benefits of modern healthcare technology to the common people in the Third World countries like Bangladesh, home to about 80% of the global population. Aiming for relevant and target-oriented research, this department initially started with PhD and MPhil programmes. Depending on the research programmes of the department, and the consent of individual supervisors, candidates from any field of science, engineering and Medicine may apply for the PhD and MPhil programmes following the rules and regulations of the university. The Department of Biomedical Physics & Technology offers Master of Science programmes in two specialized branches: (i) Biomedical Engineering and (ii) Medical Physics; in order to create manpower for developing healthcare technology locally, and for creating manpower to understand, install and operate radiotherapy and other sophisticated equipment in hospitals, and to assist medical doctors in preparing treatment plans using these devices.', 'https://firebasestorage.googleapis.com/v0/b/signindemo-f56a8.appspot.com/o/DU_images%2Fbiomedical_physics.jpg?alt=media&token=2314a9d5-b8dc-43a9-867b-3cffe6d8b225', '23.727269', '90.401873');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_of_social_sciences`
--

CREATE TABLE `faculty_of_social_sciences` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(6000) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `longitude` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hall`
--

CREATE TABLE `hall` (
  `id` int(30) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(15000) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `longitude` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hall`
--

INSERT INTO `hall` (`id`, `name`, `description`, `image`, `latitude`, `longitude`) VALUES
(1, 'Dr. Muhammad Shahidullah Hall', 'Shahidullah Hall, formerly Dhaka Hall, is one of the oldest halls of University of Dhaka, established on 1 July, 1921. The Hostel Building of the Hindu students of Dhaka College was incorporated in Dhaka University and named as Dhaka Hall (Now Shahidullah Hall). From the very beginning, it is a Hall of cosmopolitan character. The Hall is named after the renowned polyglot of the country Dr. Muhammad Shahidullah in 1969. The hall was originally a quadrangular two-storied building of red bricks with the accommodation for 160 students. Later on, it was raised to a three-storied building. In the seventies, 4 new buildings were constructed on the south and south-east of the original (main) building. The new ones are (1) Extension Building-1 (at present Shahid Sharafat Ali Bhaban); (2) Extension Building-2 (at present Shahid Ataur Rahman Khan Khadem Bhaban); (3) Student centre (Anwarul Azim Chowdhury Bhaban) and (4) Five-storied House tutor Quarters. Besides, there are two well furnished reading rooms which are open 24 hours for the students. Current student strength of the hall is 2620; of them 1294 are residents including doublers and the rest are attached.', 'https://firebasestorage.googleapis.com/v0/b/signindemo-f56a8.appspot.com/o/DU_images%2FShahidullah-Hall_Collected-from-Facebook_edited.jpg?alt=media&token=d3674e18-07dd-4b05-a285-0544e3c7c19d', '23.725871', '90.401529'),
(2, 'Salimullah Muslim Hall ', 'On 22 August 1929 Sir Stanly Jackson, Chancellor of Dhaka University laid the foundation-stone of the Salimullah Muslim Hall. Until then, the present Salimullah Muslim Hall had been only known as Muslim Hall operating in the 1st floor of the Old Secretarial Building (at present Dhaka Medical College and Hospital). On 11 August 1931 Sir Stanley Jackson Chancellor of the Dhaka University officially inaugurated the Salimullah Muslim Hall Building. In 1931-32 academic session the students were given the first attachment with this hall. The effective guidance of the first provost Sir A.F. Rahman (1921-26) contributed to the making of the prestigious tradition of Salimullah Muslim Hall. The present provost of Salimullah Muslim Hall is Professor Dr. Md. Mahbubul Alam Joarder. Ten house-tutors are also appointed to help the provost for discharging the admistrative activities of this hall. There are 47 staffs in this hall. There are 1887 students staying in this hall, among them 342 students are doublers, 402 students are residents and the rest (1143) are non-residents. There are 180 rooms in this hall. The students of this hall are given different kinds of scholarships. A new hall stipend started from the last year fully supported by the hall fund. 20 students are given Tk. 5000 each, per year. The stipents are given to the poor and meritorious students. There is a beautiful garden inside the hall premises where many seasonal plants are cultivated every year. To support the academic, spiritual and extra curricular activities of the students, the hall has a mosque, a debating club, a hall library, a reading room, a drama and a music club. The results of the students in this hall in both honours and masters are highly satisfactory.', 'https://firebasestorage.googleapis.com/v0/b/signindemo-f56a8.appspot.com/o/DU_images%2F26_big.jpg?alt=media&token=a432680d-0a9f-42d6-b1ae-1e217c52b22d', '23.728851', '90.390790'),
(3, 'Amar Ekushey Hall', 'Amar Ekushey Hall started its journey on May 7, 2001 as the neoteric hall of Dhaka University. The then Honâ€™ble Prime Minister of the Peopleâ€™s Republic of Bangladesh, Sheikh Hasina, inaugurated this hall. Four buildings of this hall were named after four language martyrs â€“ Shahid Rafiq Uddin, Shahid Abdus Salam, Shahid Abul Barkat and Shahid Abdul Jabbar. The motto of the hall is to provide better environment for residence and quality education. The participation of the students in social, cultural, political, sports and welfare activities is praiseworthy. For studentsâ€™ good living this hall has its own dining, canteen, TV room, indoor games room, library, reading room, guest room, prayer room, saloon and laundry facilitices. Currently, nine house tutors/assistant house tutors are actively performing under the guidance of the provost to achieve overall success of the hall.', 'https://firebasestorage.googleapis.com/v0/b/signindemo-f56a8.appspot.com/o/DU_images%2Famar.jpeg?alt=media&token=dd579027-ac7a-44da-a157-d6e799b4117c', '23.724076', '90.403104'),
(4, 'The Jatir Janak Bangabandhu Sheikh Mujibur Rahman Hall', 'Jatir Janak Bangabandhu Sheikh Mujibur Rahman is the architect of independent Bangladesh. The Jatir Janak Bangabandhu Sheikh Mujibur Rahman Hall was named after this great leader. The hall was established in 1988. During the establishment the hall was named Bangabandhu Sheikh Mujibur Rahman Hall. Later, on June 22 of 2014, the Jatir Janak was prefixed to the Sheikh Mujibur Rahman Hall and the hall was newly named as â€œThe Jatir Janak Bangabandhu Sheikh Mujibur Rahman Hallâ€. The Jatir Janak Bangabandhu Sheikh Mujibur Rahman Hall is one of the halls of University of Dhaka which are equipped with modern amenities. There are high-speed wireless internet connections (Wi-Fi), a rich library, a well-equipped reading room, a prayer hall, a canteen, and a dining room for the students. All areas of the hall are under surveillance of CCTV cameras 24 hours of the day. There are opportunities of playing various indoor games e.g., carom, table tennis, chess, etc. for the students. Every year, the students of different faculties residing in the hall having highest results in their honorâ€™s final exams are awarded with the Bangabandhu Merit Award to inspire them towards merit-based competion. Discussion programs, cultural programs, debate-competition, etc. are arranged to commemorate the national days. Films on liberation war are screened to mark the victory day of Bangladesh for few days on December of every year.', 'https://firebasestorage.googleapis.com/v0/b/signindemo-f56a8.appspot.com/o/DU_images%2Fban.jpg?alt=media&token=d053a558-9df4-408e-98c6-9fc0f7e92d9a', '23.737881', '90.392363'),
(5, 'Haji Muhammad Mohsin Hall', 'The Haji Muhammad Mohsin Hall named after the great philanthropist of the subcontinent Haji Muhammad Mohsin was founded in the University of Dhaka in 1967. Teachers from different departments have acted as Provost of this hall since its establishment. Professor Dr. Md. Nizamul Hoque Bhuiyan, Institute of Nutrition and Food Science, is presently serving as the provost. Many remarkable figures successfully completed their educational career from this hall. Among them the name of Humayan Ahmed, Obaidul Qader can be cited. â€œMohsin Hall Debating Clubâ€ and â€œBadhonâ€ are working in the hall to increase the extra-curricular capacity of the residential students. Students can take their meals from the hall canteen. There is also a mass â€œFoyots Entertainmentâ€ operated by the students where residential students can take meals. The hall authority is very sincere and regularly arrange cultural programes, sports and debating competitions. All national days are observed in the hall with due respect. The hall authority arranges special lunch during â€œPohela Boishakhâ€ and Eid days. The students of this hall are sports loving and they showed remarkable performances in Inter-Hall Sports. There are two reading rooms and a library in the hall for the students. The library is very rich, and students can access national and international books and journals. The hall authority is very sincere on takening care of the students under the combinedefforts of all, the students every year have shown remarkable success in different examinations. ', 'https://firebasestorage.googleapis.com/v0/b/signindemo-f56a8.appspot.com/o/DU_images%2Fe1_8.jpg?alt=media&token=a209100e-5b36-40e2-9d42-f6c8fc66e067', '23.735044', '90.389271'),
(6, 'Fazlul Huq Muslim Hall', 'The Fazlul Huq Muslim Hall was established in 1940, after the name of A. K. Fazlul Huq, former Prime-Minister of Un-divided Bengal. It is one of the oldest residential halls of Dhaka University. This hall started functioning on 1 July 1940 with a total of 363 students, of which 231 were residents and 132 non-resident students including three girl students. The hall has two buildings : Main building and Extension Building known as â€˜South Buildingâ€™. There are 244 rooms and 636 seats in this hall. The total number of students of this hall is about 2169 of which 766 are residents, 375 doublers and 1028 non-resident students. The first Provost of the hall was Dr. Mohammad Shahidullah.  Professor Dr. Md. Harunur Rashid is the current Provost. There are seven house tutors and seven assistant house tutors in the hall. The hall administration is run by the Provost. All house tutors and assistant house tutors are assigned with different activities related to hall administration and welfare for the students. Each of them is assigned with a particular block of the Hall for allotting seats and regular monitoring of their respective blocks. Hall dinning (Sristi Mess) is being run by an organizing committee of the mess under the guidance of the senior most House Tutor as its finance advisor. The administration of this hall runs very smoothly.', 'https://firebasestorage.googleapis.com/v0/b/signindemo-f56a8.appspot.com/o/DU_images%2Fdownload.jpeg?alt=media&token=e9f8280f-4bf6-42ff-ac4d-f10fa941a9b4', '23.726146', '90.403573'),
(7, 'Jagannath Hall', 'The name of Jagannath Hall is closely associated with education, culture, politics and human awakening of Bangladesh. The University of Dhaka started its journey on July 1, 1921, with three halls, namely Dhaka Hall, Jagannath Hall and Muslim Hall as per the endorsement of Calcutta University Commission. The nomenclature of â€˜Jagannath Hallâ€™ and â€˜Dhaka Hallâ€™ were taken as the newly-established Dhaka University was founded on the land of Jagannath College and Dhaka College. Basically the name of Jagannath College and Jagannath Hall were taken after the name of Jagannath Roychowdhury, the father of Zaminder of Baliati of Manikiganj Kishorilal Roychowdhury. The number of students who were initially attached with Jagannath Hall got admitted into Dhaka University up to 9 September of 1921 was 313. Jagannath Hall initially started its functioning temporarily on Bunglow no. 6 of Civil Line of Ramna. The then government requisitioned the premises, where the present Jagannath Hall stands, and later or different houses and necessary structures and facilities were created. The Jagannath Hall did not have its own entity as a separate hall for more than a decade during the period of World War II, Partition of India, and Pakistan regime. In spite of getting its separate entity in the month of July 1957, Jagannath Hall needed another decade to get its own building. In the long history of Jagannath Hall several numbers of scholars and educationists have ornamented the coveted post of Provost. Among them were Dr. Naresh Chandra Sengupta, Dr. Ramesh Chandra Majumder, Dr. Haridas Bhattacharga, Professor Debendranath Banarjee, Dr. Prithwish Chakrabarty, Dr. Gobinda Chandra Dev and Dr. Jyotirmoy Guhathakurata. During the time of establishment, the non-Muslim students of Arts Faculty and Law Faculty usually were to be attached with Jagannath Hall, and all the female students of all religions were also to be attached with Jagannath Hall. All the non-Muslim students of all faculties and institutes are now being attached with Jagannath Hall. Following the mass killing on the eventful night of 25 March 1971, the second big blow came down on Jagannath Hall on 15 Oct, 1985, through a collapse of a roof top on an old house of Jagannath Hall. Forty students, staff and guests were killed. Since then, that day have been being observed every year as Dhaka University Mourning Day. The students of Jagannath Hall made a significant contribution to the progress of literature, culture, and socio-political values. The students of Jagannath Hall were always in the forefront during the Language Movement, War of Liberaation and in all democratic movements of the nation.  Jagannath Hall right now has four houses. These are: Govinda Chandra Dev Bhavan, Jyotirmoy Guhathakurata Bhavan, Santosh Chandra Bhattacharya Bhavan and October Smriti Bhavan. Another house is under construction, financed by the government. A teacher of Sanskrit Department and member of Senate of Dhaka University Professor Dr. Asim Sarker presently holds the position of Provost of Jagannath Hall. ', 'https://firebasestorage.googleapis.com/v0/b/signindemo-f56a8.appspot.com/o/DU_images%2FJagannath_Hall%2C_Dhaka_University_04.jpg?alt=media&token=92385ce5-e82e-4d14-90ca-2fd395b627f8', '23.728950', '90.394282'),
(8, 'Shahid Sergeant Zahurul Huq Hall', 'The Shahid Sergeant Zahurul Huq Hall was established in 1957 as the 5th Hall of the University of Dhaka. In the beginning, the hall was named after the Pakistani Poet Allama Iqbal. With the toppling of the General Ayubâ€™s dictatorial regime due to the mass upsurge in 1969 led by students, Iqbal Hall was renamed (unofficially by the studnts) in memory of martyred Sergeant Zahurul Huq, who was then charge-sheeted as the 17th accused of the infamous Agartala Conspiracy case. During the days of non-cooperation movement of March 1971, the hall became a source of political direction for the Bengali nation. The â€˜Joy Banglaâ€™ force was established from this hall in order to liberate the nation. The first National Flag, which was the sign of inspiration during the days of Liberation war, was prepared in this hall. On 2 March 1971, student leaders of Dhaka University hoisted the Flag at the Arts Building for the first time. Instructed by the historic Speech of the Father of the Nation, Bangabandhu Sheikh Mujibur Rahman on 7 March 1971, the students started arms training at the playground of the hall. The non-cooperation movement was also organized and led from this hall. It was due to this reason the Pakistan army attacked the Hall on the Black Night of 25th March 1971 as a prime target and killed many students, staff and innocent people. After Liberation, the Dhaka University authority, as a true reflection of general expectations, renamed the Hall officially as Zahurul Huq Hall. In 2013 the Dhaka University authority added the title of â€˜Shahid Sergeantâ€™ to the existing name to give it a complete sense and befitting respect. Henceforth, the Hall is know as Shahid Sergeant Zahurul Huq Hall.', 'https://firebasestorage.googleapis.com/v0/b/signindemo-f56a8.appspot.com/o/DU_images%2Fjhhall.jpeg?alt=media&token=6e50274a-9fa0-4058-85cf-8740f98d4fb5', '23.730994', '90.389180'),
(9, 'Kabi Jasimuddin Hall', 'With a view to accommodating the ever-increasing number of students of the university Kabi Jasimuddin Hall was established in 1976. In terms of area it is one of the smallest residential halls of the university. It has only 120 rooms for the inmates. But in terms of curricular, co-curricular and extra-curricular activities, it is one of the top performing halls. It has one room that is exclusively dedicated to newspaper reading. For the more attentive students, the hall has reserved a regular reading room where students can study round the clock. The wi-fi network of the hall covers most part of the hall premises. So students can get access to university online library from their personal laptops and desktops. Besides, the hall has a library that can be a great attraction for the avid readers of literature and history. The hall has a two-story mosque. Debate sessions regularly take place in the house of debaters a room reserved for exercising debate. The hall has a large television room that is often used as auditorium and two separate dinning rooms. In the field of literature, debate and cultural activities, the hall has national reputation. The most famous organization of blood-donors `Bandhonâ€™ was founded by the students of this hall. Activists of Kabi Jasimuddin Hall unit Bandhon is donating blood everyday with equal enthusiasm for the suffering humanity. Currently, the hall house 2232 students of whom 397 have residential status, 390 have doublers status and 1445 have non-residential status. Professor of Law Dr. Md. Rahmat Ullah is serving as the Hall Provost. Ten house-tutors and fifty officers and staffs of different levels work to make the hall a dynamic one.', 'https://firebasestorage.googleapis.com/v0/b/signindemo-f56a8.appspot.com/o/DU_images%2Fjsuhall.jpeg?alt=media&token=54db40cd-6560-457e-91f0-e5df97dd7e63', '23.736645', ' 90.392457'),
(10, 'à¦¸à§à¦¯à¦¾à¦° à¦. à¦à¦«. à¦°à¦¹à¦®à¦¾à¦¨ à¦¹à¦² ', 'à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿà§‡à¦° à¦¬à¦¿à¦­à¦¿à¦¨à§à¦¨ à¦¹à¦²à§‡à¦° à¦®à¦§à§à¦¯à§‡ à¦¸à§à¦¯à¦¾à¦° à¦. à¦à¦«. à¦°à¦¹à¦®à¦¾à¦¨ à¦¹à¦² à¦à¦•à¦Ÿà¦¿ à¦à¦¤à¦¿à¦¹à§à¦¯à¦¬à¦¾à¦¹à§€ à¦¹à¦²à¥¤ à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ à¦¸à¦¿à¦¨à§à¦¡à¦¿à¦•à§‡à¦Ÿà§‡à¦° à§¨à§§.à§¦à§®.à§§à§¯à§­à§¬ à¦¤à¦¾à¦°à¦¿à¦–à§‡à¦° à¦à¦• à¦¸à¦­à¦¾à¦° à¦¸à¦¿à¦¦à§à¦§à¦¾à¦¨à§à¦¤ à¦…à¦¨à§à¦¯à¦¾à§Ÿà§€ à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿà§‡à¦° à¦ªà§à¦°à¦¥à¦® à¦¬à¦¾à¦™à¦¾à¦²à¦¿ à¦­à¦¾à¦‡à¦¸-à¦šà§à¦¯à¦¾à¦¨à§à¦¸à§‡à¦²à¦° à¦“ à¦ªà§à¦°à¦–à§à¦¯à¦¾à¦¤ à¦¶à¦¿à¦•à§à¦·à¦¾à¦¬à¦¿à¦¦ à¦¸à§à¦¯à¦¾à¦° à¦. à¦à¦«. à¦°à¦¹à¦®à¦¾à¦¨à§‡à¦° à¦¨à¦¾à¦®à¦¾à¦¨à§à¦¸à¦¾à¦°à§‡ à¦¤à¦¦à¦¾à¦¨à§€à¦¨à§à¦¤à¦¨ à§§à¦¸à¦‚à¦–à§à¦¯à¦• à¦¹à§‹à¦¸à§à¦Ÿà§‡à¦²à§‡à¦° à¦¨à¦¾à¦®à¦•à¦°à¦£ à¦•à¦°à¦¾ à¦¹à§Ÿ à¦. à¦à¦«. à¦°à¦¹à¦®à¦¾à¦¨ à¦¹à¦²à¥¤ à¦ à¦¸à¦®à§Ÿ à¦¹à¦²à§‡à¦° à¦¨à¦¾à¦®à§‡à¦° à¦¸à¦™à§à¦—à§‡ â€˜à¦¸à§à¦¯à¦¾à¦°â€™ à¦¶à¦¬à§à¦¦à¦Ÿà¦¿ à¦¯à§à¦•à§à¦¤ à¦¨à¦¾ à¦¥à¦¾à¦•à¦²à§‡à¦“ à§§à§©-à§©-à§¨à§¦à§§à§ª à¦¤à¦¾à¦°à¦¿à¦–à§‡ à¦…à¦¨à§à¦·à§à¦ à¦¿à¦¤ à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿà§‡à¦° à¦¸à¦¿à¦¨à§à¦¡à¦¿à¦•à§‡à¦Ÿà§‡à¦° à¦à¦• à¦¸à¦­à¦¾à¦° à¦¸à¦¿à¦¦à§à¦§à¦¾à¦¨à§à¦¤ à¦…à¦¨à§à¦¯à¦¾à§Ÿà§€ à¦¹à¦²à§‡à¦° à¦¨à¦¾à¦®à§‡à¦° à¦¸à¦™à§à¦—à§‡ â€˜à¦¸à§à¦¯à¦¾à¦°â€™ à¦¶à¦¬à§à¦¦à¦Ÿà¦¿ à¦¯à§‹à¦— à¦•à¦°à§‡ à¦à¦‡ à¦¹à¦²à§‡à¦° à¦¨à¦¾à¦®à¦•à¦°à¦£ à¦•à¦°à¦¾ à¦¹à§Ÿ à¦¸à§à¦¯à¦¾à¦° à¦. à¦à¦«. à¦°à¦¹à¦®à¦¾à¦¨ à¦¹à¦²à¥¤ à¦¸à§à¦¯à¦¾à¦° à¦. à¦à¦«. à¦°à¦¹à¦®à¦¾à¦¨ à¦¹à¦² à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿà§‡à¦° à¦à¦•à¦Ÿà¦¿ à¦—à§à¦°à§à¦¤à§à¦¬à¦ªà§‚à¦°à§à¦£ à¦¸à§à¦¥à¦¾à¦ªà¦¨à¦¾à¥¤ à¦ à¦¹à¦²à§‡à¦° à¦¶à¦¿à¦•à§à¦·à¦•, à¦¶à¦¿à¦•à§à¦·à¦¾à¦°à§à¦¥à§€, à¦•à¦°à§à¦®à¦•à¦°à§à¦¤à¦¾, à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€à¦¦à§‡à¦° à¦¸à¦™à§à¦—à§‡ à¦›à¦¾à¦¤à§à¦°à¦¦à§‡à¦° à¦¸à¦®à§à¦ªà¦°à§à¦• à¦…à¦¤à§à¦¯à¦¨à§à¦¤ à¦˜à¦¨à¦¿à¦·à§à¦ à¥¤ à¦†à¦¬à¦¾à¦¸à¦¿à¦• à¦“ à¦¸à¦¹à¦•à¦¾à¦°à§€ à¦¶à¦¿à¦•à§à¦·à¦•à¦¬à§ƒà¦¨à§à¦¦ à¦›à¦¾à¦¤à§à¦°à¦¦à§‡à¦°à¦•à§‡ à¦ªà§œà¦¾à¦²à§‡à¦–à¦¾à¦° à¦ªà¦¾à¦¶à¦¾à¦ªà¦¾à¦¶à¦¿ à¦¬à¦¿à¦­à¦¿à¦¨à§à¦¨ à¦–à§‡à¦²à¦¾à¦§à§à¦²à¦¾ à¦“ à¦¸à¦¾à¦‚à¦¸à§à¦•à§ƒà¦¤à¦¿à¦• à¦•à¦°à§à¦®à¦•à¦¾à¦£à§à¦¡à§‡ à¦‰à§Žà¦¸à¦¾à¦¹ à¦ªà§à¦°à¦¦à¦¾à¦¨ à¦•à¦°à§‡ à¦¥à¦¾à¦•à§‡à¦¨à¥¤ à¦¹à¦²à§‡à¦° à¦¸à¦¾à¦°à§à¦¬à¦¿à¦• à¦¨à¦¿à¦°à¦¾à¦ªà¦¤à§à¦¤à¦¾ à¦ªà§à¦°à¦¦à¦¾à¦¨à§‡à¦° à¦œà¦¨à§à¦¯ à¦¸à¦¿à¦¸à¦¿ à¦•à§à¦¯à¦¾à¦®à§‡à¦°à¦¾ à¦²à¦¾à¦—à¦¾à¦¨à§‹ à¦¹à§Ÿà§‡à¦›à§‡à¥¤ à¦›à¦¾à¦¤à§à¦°à¦¦à§‡à¦° à¦¬à¦¿à¦¶à§à¦¦à§à¦§ à¦ªà¦¾à¦¨à¦¿à¦° à¦¨à¦¿à¦¶à§à¦šà§Ÿà¦¤à¦¾à¦¦à¦¾à¦¨à§‡à¦° à¦œà¦¨à§à¦¯ à¦¹à¦²à§‡à¦° à¦ªà§à¦°à¦¤à¦¿à¦Ÿà¦¿ à¦«à§à¦²à§‹à¦°à§‡ à¦¬à¦¿à¦¶à§à¦¦à§à¦§à¦•à¦°à¦£ à¦ªà¦¾à¦¨à¦¿à¦° à¦«à¦¿à¦²à§à¦Ÿà¦¾à¦°à§‡à¦° à¦¬à§à¦¯à¦¬à¦¸à§à¦¥à¦¾ à¦•à¦°à¦¾ à¦¹à§Ÿà§‡à¦›à§‡à¥¤ à¦¬à¦°à§à¦¤à¦®à¦¾à¦¨ à¦ªà§à¦°à¦¶à¦¾à¦¸à¦¨à§‡à¦° à¦…à¦•à§à¦²à¦¾à¦¨à§à¦¤ à¦ªà¦°à¦¿à¦¶à§à¦°à¦® à¦“ à¦¦à§‚à¦°à¦¦à¦°à§à¦¶à¦¿à¦¤à¦¾à¦° à¦•à¦¾à¦°à¦£à§‡ à¦¸à§à¦¯à¦¾à¦° à¦. à¦à¦«. à¦°à¦¹à¦®à¦¾à¦¨ à¦¹à¦² à¦‡à¦¤à§‹à¦®à¦§à§à¦¯à§‡à¦‡ à¦¸à§à¦¨à¦¾à¦® à¦…à¦°à§à¦œà¦¨ à¦•à¦°à§‡à¦›à§‡à¥¤ à¦ à¦¹à¦²à§‡ à¦à¦•à¦œà¦¨ à¦ªà§à¦°à¦­à§‹à¦¸à§à¦Ÿ à¦“ à¦¬à¦¾à¦°à§‹ à¦œà¦¨ à¦†à¦¬à¦¾à¦¸à¦¿à¦• à¦¶à¦¿à¦•à§à¦·à¦• à¦“ à¦¸à¦¹à¦•à¦¾à¦°à§€ à¦†à¦¬à¦¾à¦¸à¦¿à¦• à¦¶à¦¿à¦•à§à¦·à¦• à¦°à§Ÿà§‡à¦›à§‡à¦¨à¥¤ à¦¸à§à¦¯à¦¾à¦° à¦. à¦à¦«. à¦°à¦¹à¦®à¦¾à¦¨ à¦¹à¦²à§‡à¦° à¦¬à¦°à§à¦§à¦¿à¦¤à¦¾à¦‚à¦¶ à¦¹à¦²à§‹ à¦¶à¦¾à¦¹à¦¨à§‡à¦“à§Ÿà¦¾à¦œ à¦›à¦¾à¦¤à§à¦°à¦¾à¦¬à¦¾à¦¸à¥¤ à¦šà¦¾à¦°à§à¦•à¦²à¦¾ à¦…à¦¨à§à¦·à¦¦à¦­à§à¦•à§à¦¤ à¦›à¦¾à¦¤à§à¦°à¦°à¦¾ à¦à¦–à¦¾à¦¨à§‡ à¦¥à¦¾à¦•à¦¾à¦° à¦¸à§à¦¯à§‹à¦— à¦ªà¦¾à§Ÿà¥¤ à¦ à¦­à¦¬à¦¨à¦Ÿà¦¿ à¦¤à¦¿à¦¨ à¦¤à¦²à¦¾ à¦¬à¦¿à¦¶à¦¿à¦·à§à¦Ÿ, à¦à¦–à¦¾à¦¨à§‡ à§§à§¯à¦Ÿà¦¿ à¦•à¦•à§à¦·à§‡ à¦›à¦¾à¦¤à§à¦° à¦…à¦¬à¦¸à§à¦¥à¦¾à¦¨ à¦•à¦°à§‡à¥¤ à¦¹à¦²à§‡à¦° à¦¸à¦¾à¦®à¦¨à§‡à¦‡ à¦à¦•à¦Ÿà¦¿ à¦®à¦¾à¦  à¦°à§Ÿà§‡à¦›à§‡ à¦¯à¦¾à¦¤à§‡ à¦›à¦¾à¦¤à§à¦°à¦°à¦¾ à¦–à§‡à¦²à¦¾à¦§à§à¦²à¦¾à¦° à¦…à¦¨à§à¦¶à§€à¦²à¦¨ à¦•à¦°à¦¤à§‡ à¦ªà¦¾à¦°à§‡à¥¤ à¦ à¦›à¦¾à¦¤à§à¦°à¦¾à¦¬à¦¾à¦¸à§‡ à¦à¦•à¦œà¦¨ à¦“à§Ÿà¦¾à¦°à§à¦¡à§‡à¦¨ à¦“ à¦à¦•à¦œà¦¨ à¦¸à¦¹à¦•à¦¾à¦°à§€ à¦“à§Ÿà¦¾à¦°à§à¦¡à§‡à¦¨ à¦°à§Ÿà§‡à¦›à§‡à¦¨à¥¤ à¦“à§Ÿà¦¾à¦°à§à¦¡à§‡à¦¨ à¦›à¦¾à¦¤à§à¦°à¦¾à¦¬à¦¾à¦¸à§‡à¦‡ à¦…à¦¬à¦¸à§à¦¥à¦¾à¦¨ à¦•à¦°à§‡à¦¨à¥¤ à¦›à¦¾à¦¤à§à¦°à¦°à¦¾ à¦¯à¦¾à¦¤à§‡ à¦¨à¦¿à¦°à§à¦¬à¦¿à¦˜à§à¦¨à§‡ à¦ªà§œà¦¾à¦²à§‡à¦–à¦¾ à¦“ à¦¶à¦¿à¦•à§à¦·à¦¾à¦¤à¦¿à¦°à¦¿à¦•à§à¦¤ à¦•à¦¾à¦°à§à¦¯à¦•à§à¦°à¦® à¦šà¦¾à¦²à¦¿à§Ÿà§‡ à¦¯à§‡à¦¤à§‡ à¦ªà¦¾à¦°à§‡ à¦¸à§‡ à¦œà¦¨à§à¦¯ à¦¸à§à¦¯à¦¾à¦° à¦. à¦à¦«. à¦°à¦¹à¦®à¦¾à¦¨ à¦¹à¦² à¦ªà§à¦°à¦¶à¦¾à¦¸à¦¨à§‡à¦° à¦¸à¦¹à¦¾à§Ÿà¦¤à¦¾à§Ÿ à¦à¦‡ à¦›à¦¾à¦¤à§à¦°à¦¾à¦¬à¦¾à¦¸à§‡à¦° à¦“à§Ÿà¦¾à¦°à§à¦¡à§‡à¦¨ à¦“ à¦¸à¦¹à¦•à¦¾à¦°à§€ à¦“à§Ÿà¦¾à¦°à§à¦¡à§‡à¦¨ à¦¸à¦¾à¦°à§à¦¬à¦•à§à¦·à¦£à¦¿à¦• à¦¦à¦¾à§Ÿà¦¿à¦¤à§à¦¬à§‡ à¦¨à¦¿à§Ÿà§‹à¦œà¦¿à¦¤ à¦°à§Ÿà§‡à¦›à§‡à¦¨à¥¤  à¦†à¦¬à¦¾à¦¸à¦¿à¦• à¦›à¦¾à¦¤à§à¦°à§‡à¦° à¦¸à¦‚à¦–à§à¦¯à¦¾ à§ªà§¯à§¬à¦œà¦¨, à¦¦à§à¦¬à§ˆà¦¤à¦¾à¦¬à¦¾à¦¸à¦¿à¦• à§ªà§¯à§¬à¦œà¦¨ à¦à¦¬à¦‚ à¦…à¦¨à¦¾à¦¬à¦¾à¦¸à¦¿à¦• à¦›à¦¾à¦¤à§à¦°à§‡à¦° à¦¸à¦‚à¦–à§à¦¯à¦¾ à§®à§¯à§«à¦œà¦¨, à¦¬à¦¿à¦¶à§‡à¦· à¦•à§‹à¦°à§à¦¸à§‡ à¦…à¦§à§à¦¯à§Ÿà¦¨à¦°à¦¤ à¦›à¦¾à¦¤à§à¦° à§ªà§§à§§ (à¦à¦®. à¦«à¦¿à¦², à¦ªà¦¿à¦à¦‡à¦š. à¦¡à¦¿)à¥¤ à¦¸à¦°à§à¦¬à¦®à§‹à¦Ÿ à¦›à¦¾à¦¤à§à¦°à§‡à¦° à¦¸à¦‚à¦–à§à¦¯à¦¾ à§¨à§¨à§¯à§® à¦œà¦¨à¥¤', 'https://firebasestorage.googleapis.com/v0/b/signindemo-f56a8.appspot.com/o/DU_images%2Fafrhall.jpeg?alt=media&token=979bec89-e141-49ad-9be6-3502a22aaba2', '23.733857', '90.388276'),
(11, 'à¦®à§à¦•à§à¦¤à¦¿à¦¯à§‹à¦¦à§à¦§à¦¾ à¦œà¦¿à§Ÿà¦¾à¦‰à¦° à¦°à¦¹à¦®à¦¾à¦¨ à¦¹à¦²', 'à¦¹à¦²à§‡à¦° à¦†à¦¬à¦¾à¦¸à¦¿à¦• à¦›à¦¾à¦¤à§à¦°à§‡à¦° à¦¸à¦‚à¦–à§à¦¯à¦¾ à§ªà§®à§ª à¦œà¦¨, à¦¦à§à¦¬à§ˆà¦¤à¦¾à¦¬à¦¾à¦¸à¦¿à¦• à§¨à§«à§¦, à¦¬à¦¿à¦¶à§‡à¦· à¦¦à§à¦¬à§ˆà¦¤à¦¾à¦¬à¦¾à¦¸à¦¿à¦• à§¨à§¦à§¦ à¦œà¦¨ à¦à¦¬à¦‚ à¦…à¦¨à¦¾à¦¬à¦¾à¦¸à¦¿à¦• à¦›à¦¾à¦¤à§à¦°à§‡à¦° à¦¸à¦‚à¦–à§à¦¯à¦¾ à§¨à§§à§®à§¦ à¦œà¦¨à¥¤ à¦¸à¦°à§à¦¬à¦®à§‹à¦Ÿ à¦›à¦¾à¦¤à§à¦°à§‡à¦° à¦¸à¦‚à¦–à§à¦¯à¦¾ à§©à§§à§§à§ª à¦œà¦¨à¥¤ ', 'https://firebasestorage.googleapis.com/v0/b/signindemo-f56a8.appspot.com/o/DU_images%2Fjrhall.jpg?alt=media&token=1def039e-0669-4c42-bf14-2f383f847f30', '23.738055', '90.391172'),
(12, 'à¦¸à§à¦¯à¦¾à¦° à¦ªà¦¿. à¦œà§‡. à¦¹à¦¾à¦°à§à¦Ÿà¦— à¦‡à¦¨à§à¦Ÿà¦¾à¦°à¦¨à§à¦¯à¦¾à¦¶à¦¨à¦¾à¦² à¦¹à¦²', 'à§§à§¯à§¬à§¬ à¦¸à¦¾à¦²à§‡ à¦†à¦¨à§à¦¤à¦°à§à¦œà¦¾à¦¤à¦¿à¦• à¦¹à§‹à¦¸à§à¦Ÿà§‡à¦² à¦¨à¦¾à¦®à§‡ à¦à¦Ÿà¦¿ à¦ªà§à¦°à¦¤à¦¿à¦·à§à¦ à¦¿à¦¤ à¦¹à§Ÿà¥¤ à§¨à§¦à§¦à§¨ à¦¸à¦¾à¦²à§‡ à¦à¦Ÿà¦¿ à¦›à¦¾à¦¤à§à¦°à¦¾à¦¬à¦¾à¦¸à§‡ à¦‰à¦¨à§à¦¨à§€à¦¤ à¦¹à§Ÿà¥¤ à¦†à¦¬à¦¾à¦¸à¦¿à¦• à¦›à¦¾à¦¤à§à¦°-à¦›à¦¾à¦¤à§à¦°à§€à¦° à¦¸à¦‚à¦–à§à¦¯à¦¾ à§¯à§® à¦œà¦¨à¥¤ à¦¦à§à¦¬à§ˆà¦¤à¦¾à¦¬à¦¾à¦¸à¦¿à¦• à¦›à¦¾à¦¤à§à¦°-à¦›à¦¾à¦¤à§à¦°à§€-à§§à§¯, à¦…à¦¨à¦¾à¦¬à¦¾à¦¸à¦¿à¦• à¦›à¦¾à¦¤à§à¦°-à¦›à¦¾à¦¤à§à¦°à§€-à§¦à§« à¦œà¦¨à¥¤ à¦¸à¦°à§à¦¬à¦®à§‹à¦Ÿ à¦›à¦¾à¦¤à§à¦°-à¦›à¦¾à¦¤à§à¦°à§€à¦° à¦¸à¦‚à¦–à§à¦¯à¦¾ à§§à§¨à§¨ à¦œà¦¨à¥¤ ', 'https://firebasestorage.googleapis.com/v0/b/signindemo-f56a8.appspot.com/o/DU_images%2Finterhall.jpeg?alt=media&token=e1d3ef4d-9837-41d6-acac-753f5978de17', '23.735760', '90.392419'),
(13, 'à¦¬à¦¿à¦œà§Ÿ à¦à¦•à¦¾à¦¤à§à¦¤à¦° à¦¹à¦²', 'à¦†à¦¬à¦¾à¦¸à¦¿à¦• à¦›à¦¾à¦¤à§à¦°à¦¸à¦‚à¦–à§à¦¯à¦¾ à§§à§¦à§¦à§¦à¦œà¦¨, à¦¦à§à¦¬à§ˆà¦¤à¦¾à¦¬à¦¾à¦¸à¦¿à¦• à§¬à§©à§§à¦œà¦¨ à¦à¦¬à¦‚ à¦…à¦¨à¦¾à¦¬à¦¾à¦¸à¦¿à¦• à§«à§ªà§¦à¦œà¦¨à¥¤ à¦¸à¦°à§à¦¬à¦®à§‹à¦Ÿ à§¨à§§à§­à§§ à¦œà¦¨à¥¤ ', 'https://firebasestorage.googleapis.com/v0/b/signindemo-f56a8.appspot.com/o/DU_images%2Fbijoy_ekattor_du_deshrupant.jpg?alt=media&token=3446ad2c-a835-48a4-9064-65380d02e0be', '23.737172', '90.390706'),
(14, 'Ruqayyah Hall', 'In terms of lodging facilities and studentsâ€™ number, Ruqayyah Hall is the largest womenâ€™s residential hall of Dhaka University. It was recognized as a womenâ€™s hall in 1956. It was named "Ruqayyah Hall" in 1964 after the name of Begum Ruqayyah who emancipated the Indian sub-continentâ€™s women. Mrs. Akhtar Imam was appointed as the first provost of this hall.  Currently, 6,923 residential and non-residential students are living here. There are in 224 seats 56 rooms of the Chameli Building, 384 seats in 96 rooms within the Oporajita Building and 288 seats in 72 rooms inside the Shapla Building. There are 323 students dwelling here in single seats. The numbers of dual residential students are 1600 and non-residential students are 5,000. There are 18 residential teachers, 6 officers, 2 part-time psychologists and 80 class three and four office staffs working here. In addition, there are two dining halls, two kitchens for students, two reading rooms, one small reading room for blind students, one library, a music room, ranger / Badhon office, studentsâ€™ parliament office, visitorâ€™s room and a large playground. It has an efficient administration and management system. Furthermore, the construction project of a new eleven-storied â€˜Seven March Buildingâ€™ (for approximately 1000 students), a five-storied administrative building, one service building and eleven-storied teachersâ€™ residential building is almost complete.', 'https://firebasestorage.googleapis.com/v0/b/signindemo-f56a8.appspot.com/o/DU_images%2Frkhall.jpg?alt=media&token=caf6bb78-cb2e-414c-9295-c7515a5e2b03', '23.732700', '90.394231'),
(15, 'Shamsun Nahar Hall', 'Shamsun Nahar Hall is one of the historical halls of the University of Dhaka. The hall has been named offer of Begum Shamsun Nahar Mahmud. This noble woman was born in a Muslim aristoeratic family at Feni under Noakhali district in 1908 and died on 14th April, 1964. Shamsun Nahar hall was established on 12 January 1971. It is the second largest female studentsâ€™ hall at Dhaka University. The administrative activities started on 15 January, 1971. Before this, the construction of the building started by the name â€˜New Womens Hallâ€™. The Vice Chancellor, Professor Mojaffar Ahmed Chowdhury inagurated this hall on 02 august, 1972. At that time, the total number of female students were 839, among them, 288 were resident students. Professor Dr. Syeda Fetema Sadaq, Department of Islamic Studies, was the first Provost of the hall. Till now, 14 respected female faculties of this university have acted as provost. At present, Professor, Dr. Supria Saha, Department of Physics, is conducting the role of Provost. In this hall, there are 2 Full-time, 14 Part-time and 5 Assistant House Tutors to conduct their responsibilities.  The number of residential seats for the students is 688, which indicates scarcity of seats compared to the number of female students. The total number of students attached to this hall are 5883; among them, 1405 are residents and 4478 are non-residents. There is a study room and a library to provide educational facilites for the students. The results of students in academic examinations are quite satisfactory. Shamsun Nahar hall observes all religious and national festivals with great honour. This hall is arranging different competitions like â€“ Annual sportd competition, Inter hall competition, Competition on Literature and Culture for the students in each year. In addition to this, the debating club of this hall takes part on inter hall debate competition and national television debate competition. Badhan (association of voluntary service for humanities), the unit of shamsun Nahar hall is conducting the programs for donating blood at free of cost. There are a dining and canteen for providing food facilities to the students. The residential students can collect their food items at a specificed rate / price.', 'https://firebasestorage.googleapis.com/v0/b/signindemo-f56a8.appspot.com/o/DU_images%2Fshnhall.jpg?alt=media&token=9904f034-c197-470a-9d99-a6ad49ba1b0f', '23.730697', '90.394331'),
(16, 'à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶-à¦•à§à§Ÿà§‡à¦¤ à¦®à§ˆà¦¤à§à¦°à§€ à¦¹à¦²', 'à¦†à¦¬à¦¾à¦¸à¦¿à¦• à¦›à¦¾à¦¤à§à¦°à§€à¦¸à¦‚à¦–à§à¦¯à¦¾ à§¬à§§à§ªà¦œà¦¨, à¦¦à§à¦¬à§ˆà¦¤à¦¾à¦¬à¦¾à¦¸à¦¿à¦• à§«à§¬à¦œà¦¨ à¦à¦¬à¦‚ à¦…à¦¨à¦¾à¦¬à¦¾à¦¸à¦¿à¦• à¦›à¦¾à¦¤à§à¦°à§€à¦¸à¦‚à¦–à§à¦¯à¦¾ à§§à§ªà§©à§®à¦œà¦¨à¥¤ à¦¸à¦°à§à¦¬à¦®à§‹à¦Ÿ à¦›à¦¾à¦¤à§à¦°à§€à¦° à¦¸à¦‚à¦–à§à¦¯à¦¾ à§¨à§§à§¦à§®à¦œà¦¨à¥¤ ', 'https://firebasestorage.googleapis.com/v0/b/signindemo-f56a8.appspot.com/o/DU_images%2Fkmhall.jpg?alt=media&token=761314bf-4a0f-4ba2-b942-8adfe4505753', '23.732604', '90.380608'),
(17, 'Bangamata Sheikh Fazilatunnessa Mujib Hall', 'Considering the huge crisis of residential facilities for the students of University of Dhaka, Begum Fazilatunnessa Mujib Hall, named after the noble and eminent woman Bangamata Sheikh Fazilatunnessa Mujib, was established. The foundation of the Hall was laid on 18 September 1999 and inaugurated on 7 May 2001 by the Honâ€™ble Prime Minister of Bangladesh Sheikh Hasina. Professor Dr. Nasreen Ahmad was the first provost and also the project director of the Hall. On the proposal of the hall authority followed by the decision of the Syndicate of the university on 27.10.2014 and also by the approval of the Father of Nation Banghabondhu Sheikh Mujibur Rahman Memorial Trust Fund on 06 April 2015 the name of the â€œBegum Fazilatunnessa Mujib Hallâ€ was changed to â€œBangamata Sheikh Fazilatunnessa Mujib Hallâ€.   Presently, the hall is run efficiently under the adept supervision and leadership of Professor Dr. Zakia Parveen, Provost, â€œBangamata Sheikh Fazilatunnessa Mujib Hallâ€.  There are 3 part-time house tutors and 10 assistant house tutors in the hall. 2352 students both residential and non-residential are enrolled under the Hall. The numbers of officers, 3rd and 4th class employees of the hall are 5, 9 and 38 respectively. There is also a physician for medical treatment and a psychologist to provide counseling for the benefits of the students in the hall. Like the students of other halls of University of Dhaka, the students of Bangamata Sheikh Fazilatunnessa Mujib  Hall after establishment have been proving their continuous success in different sectors. They have achieved the positions of Champion or Runner-up in both indoor and outdoor sports in inter-hall and inter-university sports competitions. In the field of culture and literature, the students have also proved their ingenuity.           To ensure the congenial atmosphere of free-thinking among the students of the hall, â€œBangamata Fazilatunnessa Debating Clubâ€ has been established inside the hall. There is a humanitarian organization named â€œBadhanâ€ that donates blood and tests the blood groups for free of cost. Moreover, the Ranger unit of the hall performs the responsibilities of volunteer on different national and university days and also participates in different skill programs.    On behalf of the hall administration, several national days are celebrated in festive mode in combination of students, teachers, officers and employees. Students participate in rallies and Hall authority keeps arrangement of high quality food for students on special days. Apart from library to facilitate studentsâ€™ learning, the hall administration has established three reading rooms. Students perform religious activities in a spacious prayer room for praying and reciting the holy Quran. Though there are insufficient numbers of books in the hall library, new books are bought every year considering the requirement of students. To promote regular cultural activities, there is a cultural practice room for the students of drama, music, and dance and also for others who are interested in these activities. There is a large auditorium to celebrate different programs hall. For studentsâ€™ entertainment, there is also a television at the auditorium. At one side of the auditorium, there is an arrangement for newspaper reading. Ten newspapers including two English and eight Bangla newspapers along with a weekly newspaper are provided regularly. Students can avail internet facility with high technology provided by university authority. In order to serve students, there are phone recharge facility, laundry, Photostat and stationary shop. Students get services from these shops till ten at night.', 'https://firebasestorage.googleapis.com/v0/b/signindemo-f56a8.appspot.com/o/DU_images%2Fbnmfzhall.jpg?alt=media&token=1d5fd33d-4777-4a28-855c-8ac50f43ad3a', '23.732136', '90.381250'),
(18, 'Kabi Sufia Kamal Hall', ' Kabi Sufia Kamal Hall was inaugurated on 14 November 2012 by Honourable Prime Minister Sheikh Hasina, Peopleâ€™s Republic of Bangladesh. Kabi Sufia Kamal Hall is located opposite the (East side) Curzon Hall Campus. At present, it is the largest studentâ€™s residence where 2000 students can get single-bed accommodation. The architecture of the building is made according to the Curzn Hall Campus with all modern facilities. These are two high-rise buildings situated at the North and South side.  A four-storied administration building is in the East side and a four-storied building West side of the Twin Hall. Another high-rise 11 storied building was made for house-tutorâ€™s and Assistant House Tutorâ€™s accommodation at the North-West side of the North block of students hall. the visiting room for guardians of the students is situated close to the main gate. Some unique services were created for the students so that they do not need to go outside for their living. A departmental store, two laundries, photocopy, tailoring shops, a medicine corner and a beauty parlour were set up. Four special rooms were made with all modern facilities for foreign students. Physicians can take emergency measures for the students. ', 'https://firebasestorage.googleapis.com/v0/b/signindemo-f56a8.appspot.com/o/DU_images%2Fkskhall.jpg?alt=media&token=8306c256-b48b-41de-b98d-b3622fb02f65', '23.726083', '90.404574'),
(19, 'Nawab Faizunnessa Chowdhurani Chatrinibash', ' The foundation stone of Nawab Faizunnessa Chowdhurani Chatribibas was placed inside the Rokeya Hall of Dhaka University in 1993 for the students of higher studies (M. Phil/Ph. D), It was inaugurated later in 1994 for the students. Students who are admitted for M.Phil or Ph.D are allotted to other halls as non-resident studnets but if they want, They can stay here as residents. All activities are conducted from one building. This building has 35 rooms, an auditorium including TV, one cyber-room, one library, one dining, office room for warder and assistant warder each and an administrative office room for the students. Also, there is a small courtyard, which adds aesthetic beauty to the dormitory. All kinds of administrative works in this dormitory is conducted through a committee headed by warden and assistant warden. Every month this committee organizes a general meeting and talks directly to the students and various issues are resolved in this consultation. The acting warden of this female dormitory is Professor Dr. Aleya Begum and the a Assistant warden is associate professor Dr. Kazi Hanium Maria. At present there are 130 students residing in this hostel, and many of them are researchers, who are also engaged in different professions. It is like a platform for students from all occupations ranging from public universities to banks, BCS jobs, teaching at schools and colleges, media etc. The students of all ages in this hostel participate in different cultural programs and celebrate various national days with proper enthusiasm. Students also celebrate religious programs with due importance. Arranging milad mahfils and saraswati puja are some instances of these activities.', '', '', ''),
(20, 'à¦†à¦‡à¦¬à¦¿à¦ à¦¹à§‹à¦¸à§à¦Ÿà§‡à¦² (à§§à§¯à§®à§¬)', 'à¦à¦‡ à¦¹à§‹à¦¸à§à¦Ÿà§‡à¦²à§‡ à¦†à¦¬à¦¾à¦¸à¦¿à¦• à¦›à¦¾à¦¤à§à¦°à¦¸à¦‚à¦–à§à¦¯à¦¾ à§§à§©à§®à¦œà¦¨à¥¤ à¦à¦° à¦®à¦§à§à¦¯à§‡ à¦à¦•à§à¦¸à¦¿à¦•à¦¿à¦‰à¦Ÿà¦¿à¦­ à¦¬à§à¦²à¦•à§‡ à§«à§¦à¦œà¦¨, à¦¸à§à¦Ÿà§à¦¡à§‡à¦¨à§à¦Ÿ à¦¬à§à¦²à¦•à§‡-à§®à§® à¦œà¦¨, à¦¸à¦°à§à¦¬à¦®à§‹à¦Ÿ à¦›à¦¾à¦¤à§à¦°à¦¸à¦‚à¦–à§à¦¯à¦¾ à§§à§©à§®à¦œà¦¨à¥¤', '', '23.753870', '90.388148'),
(21, 'à¦¡. à¦•à§à¦¦à¦°à¦¾à¦¤-à¦‡-à¦–à§à¦¦à¦¾ à¦¹à§‹à¦¸à§à¦Ÿà§‡à¦²', 'à¦à¦‡ à¦¹à§‹à¦¸à§à¦Ÿà§‡à¦²à§‡ à¦†à¦¬à¦¾à¦¸à¦¿à¦• à¦›à¦¾à¦¤à§à¦°à¦¸à¦‚à¦–à§à¦¯à¦¾ à§©à§®à§¦ à¦œà¦¨à¥¤ à¦…à¦¨à¦¬à¦¾à¦¸à¦¿à¦• à¦›à¦¾à¦¤à§à¦°à¦¸à¦‚à¦–à§à¦¯à¦¾-à§ªà§¨à§© à¦œà¦¨ à¦¸à¦°à§à¦¬à¦®à§‹à¦Ÿ à¦›à¦¾à¦¤à§à¦°à¦¸à¦‚à¦–à§à¦¯à¦¾ à§®à§¦à§© à¦œà¦¨à¥¤', '', '', ''),
(22, 'à¦¶à¦¹à¦¿à¦¦ à¦…à§à¦¯à¦¾à¦¥à¦²à§‡à¦Ÿ à¦¸à§à¦²à¦¤à¦¾à¦¨à¦¾ à¦•à¦¾à¦®à¦¾à¦² à¦¹à§‹à¦¸à§à¦Ÿà§‡à¦²', 'à¦à¦‡ à¦¹à§‹à¦¸à§à¦Ÿà§‡à¦²à§‡ à¦†à¦¬à¦¾à¦¸à¦¿à¦• à¦›à¦¾à¦¤à§à¦°à§€à¦¸à¦‚à¦–à§à¦¯à¦¾ à§§à§§à§¯à¦œà¦¨à¥¤ à¦¸à¦°à§à¦¬à¦®à§‹à¦Ÿ à¦›à¦¾à¦¤à§à¦°à§€à¦¸à¦‚à¦–à§à¦¯à¦¾ à§§à§§à§¯à¦œà¦¨à¥¤', 'https://firebasestorage.googleapis.com/v0/b/signindemo-f56a8.appspot.com/o/DU_images%2Fshskhall.jpeg?alt=media&token=440f5e5a-5828-44d1-b07f-a554ffc1c361', '23.731525', '90.369826');

-- --------------------------------------------------------

--
-- Table structure for table `head_of_du`
--

CREATE TABLE `head_of_du` (
  `id` int(11) NOT NULL,
  `rank` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(1000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `head_of_du`
--

INSERT INTO `head_of_du` (`id`, `rank`, `name`, `image`) VALUES
(1, 'à¦­à¦¾à¦‡à¦¸ à¦šà§à¦¯à¦¾à¦¨à§à¦¸à§‡à¦²à¦°, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦®à§à¦¹à¦¾à¦®à§à¦®à¦¦ à¦†à¦–à¦¤à¦¾à¦°à§à¦œà§à¦œà¦¾à¦®à¦¾à¦¨', 'https://firebasestorage.googleapis.com/v0/b/signindemo-f56a8.appspot.com/o/DU_images%2Fvc_sir.jpg?alt=media&token=08519ab4-370f-417d-af5d-eed6ed3b6df3'),
(2, 'à¦ªà§à¦°à§‹-à¦­à¦¾à¦‡à¦¸ à¦šà§à¦¯à¦¾à¦¨à§à¦¸à§‡à¦²à¦° (à¦¶à¦¿à¦•à§à¦·à¦¾), à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦¨à¦¾à¦¸à¦°à§€à¦¨ à¦†à¦¹à¦®à¦¦', 'https://firebasestorage.googleapis.com/v0/b/signindemo-f56a8.appspot.com/o/DU_images%2Fpro_vc_madam.jpg?alt=media&token=b0cf961f-c9c6-4de6-80df-ba9834383dc6'),
(3, 'à¦ªà§à¦°à§‹-à¦­à¦¾à¦‡à¦¸ à¦šà§à¦¯à¦¾à¦¨à§à¦¸à§‡à¦²à¦° (à¦ªà§à¦°à¦¶à¦¾à¦¸à¦¨), à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦®à§à¦¹à¦¾à¦®à§à¦®à¦¦ à¦¸à¦¾à¦®à¦¾à¦¦', 'https://firebasestorage.googleapis.com/v0/b/signindemo-f56a8.appspot.com/o/DU_images%2Fpro_vc_sir.jpg?alt=media&token=1da14610-a4bb-4157-bfd8-4c9144bc1d21'),
(4, 'à¦•à§‹à¦·à¦¾à¦§à§à¦¯à¦•à§à¦·', 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦®à§à¦¹à¦¾à¦®à§à¦®à¦¦ à¦•à¦¾à¦®à¦¾à¦² à¦‰à¦¦à§à¦¦à¦¿à¦¨', 'https://firebasestorage.googleapis.com/v0/b/signindemo-f56a8.appspot.com/o/DU_images%2Ftresurere_sir.jpg?alt=media&token=d715324b-2f71-49ca-a552-74c329ba20b4');

-- --------------------------------------------------------

--
-- Table structure for table `head_of_office`
--

CREATE TABLE `head_of_office` (
  `id` int(11) NOT NULL,
  `office_name` varchar(1500) COLLATE utf8_unicode_ci NOT NULL,
  `head_name` varchar(1500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `head_of_office`
--

INSERT INTO `head_of_office` (`id`, `office_name`, `head_name`) VALUES
(1, 'à¦­à¦¾à¦‡à¦¸-à¦šà§à¦¯à¦¾à¦¨à§à¦¸à§‡à¦²à¦° à¦…à¦«à¦¿à¦¸', 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦®à§‹. à¦†à¦–à¦¤à¦¾à¦°à§à¦œà§à¦œà¦¾à¦®à¦¾à¦¨ à¦­à¦¾à¦‡à¦¸-à¦šà§à¦¯à¦¾à¦¨à§à¦¸à§‡à¦²à¦°'),
(2, 'à¦ªà§à¦°à§‹-à¦­à¦¾à¦‡à¦¸ à¦šà§à¦¯à¦¾à¦¨à§à¦¸à§‡à¦²à¦° à¦…à¦«à¦¿à¦¸ (à¦à¦•à¦¾à¦¡à§‡à¦®à¦¿à¦•)', 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦¨à¦¾à¦¸à¦°à§€à¦¨ à¦†à¦¹à¦®à¦¾à¦¦ à¦ªà§à¦°à§‹-à¦­à¦¾à¦‡à¦¸ à¦šà§à¦¯à¦¾à¦¨à§à¦¸à§‡à¦²à¦° (à¦à¦•à¦¾à¦¡à§‡à¦®à¦¿à¦•)'),
(3, 'à¦ªà§à¦°à§‹-à¦­à¦¾à¦‡à¦¸ à¦šà§à¦¯à¦¾à¦¨à§à¦¸à§‡à¦²à¦° à¦…à¦«à¦¿à¦¸ (à¦ªà§à¦°à¦¶à¦¾à¦¸à¦¨)', 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦®à§à¦¹à¦¾à¦®à§à¦®à¦¦ à¦¸à¦¾à¦®à¦¾à¦¦  à¦ªà§à¦°à§‹-à¦­à¦¾à¦‡à¦¸ à¦šà§à¦¯à¦¾à¦¨à§à¦¸à§‡à¦²à¦° (à¦ªà§à¦°à¦¶à¦¾à¦¸à¦¨)'),
(4, 'à¦•à§‹à¦·à¦¾à¦§à§à¦¯à¦•à§à¦·à§‡à¦° à¦…à¦«à¦¿à¦¸', 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦®à§‹. à¦•à¦¾à¦®à¦¾à¦² à¦‰à¦¦à§à¦¦à§€à¦¨ à¦•à§‹à¦·à¦¾à¦§à§à¦¯à¦•à§à¦·'),
(5, 'à¦°à§‡à¦œà¦¿à¦¸à§à¦Ÿà§à¦°à¦¾à¦°à§‡à¦° à¦…à¦«à¦¿à¦¸', 'à¦œà¦¨à¦¾à¦¬ à¦®à§‹. à¦à¦¨à¦¾à¦®à¦‰à¦œà§à¦œà¦¾à¦®à¦¾à¦¨ à¦°à§‡à¦œà¦¿à¦¸à§à¦Ÿà§à¦°à¦¾à¦° (à¦­à¦¾à¦°à¦ªà§à¦°à¦¾à¦ªà§à¦¤)'),
(6, 'à¦ªà§à¦°à¦•à§à¦Ÿà¦° à¦…à¦«à¦¿à¦¸', 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦ à¦•à§‡ à¦à¦® à¦—à§‹à¦²à¦¾à¦® à¦°à¦¬à§à¦¬à¦¾à¦¨à§€ à¦ªà§à¦°à¦•à§à¦Ÿà¦°'),
(7, 'à¦•à¦²à§‡à¦œ à¦ªà¦°à¦¿à¦¦à¦°à§à¦¶à¦•à§‡à¦° à¦…à¦«à¦¿à¦¸', 'à¦œà¦¨à¦¾à¦¬ à¦®à§‹. à¦®à§‹à¦¸à§à¦¤à¦¾à¦«à¦¿à¦œà§à¦° à¦°à¦¹à¦®à¦¾à¦¨ à¦•à¦²à§‡à¦œ à¦ªà¦°à¦¿à¦¦à¦°à§à¦¶à¦• (à¦­à¦¾à¦°à¦ªà§à¦°à¦¾à¦ªà§à¦¤)'),
(8, ' à¦ªà¦°à¦¿à¦•à¦²à§à¦ªà¦¨à¦¾ à¦“ à¦‰à¦¨à§à¦¨à§Ÿà¦¨ à¦…à¦«à¦¿à¦¸', 'à¦œà¦¨à¦¾à¦¬ à¦œà§€à¦¬à¦¨ à¦•à§à¦®à¦¾à¦° à¦®à¦¿à¦¶à§à¦° à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦• (à¦­à¦¾à¦°à¦ªà§à¦°à¦¾à¦ªà§à¦¤)'),
(9, 'à¦›à¦¾à¦¤à§à¦° à¦¨à¦¿à¦°à§à¦¦à§‡à¦¶à¦¨à¦¾ à¦“ à¦ªà¦°à¦¾à¦®à¦°à§à¦¶à¦¦à¦¾à¦¨ à¦¦à¦ªà§à¦¤à¦°', 'à¦œà¦¨à¦¾à¦¬ à¦®à§‡à¦¹à¦œà¦¾à¦¬à§€à¦¨ à¦¹à¦• à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦• (à¦­à¦¾à¦°à¦ªà§à¦°à¦¾à¦ªà§à¦¤)'),
(10, 'à¦ªà§à¦°à¦§à¦¾à¦¨ à¦ªà§à¦°à¦•à§Œà¦¶à¦²à§€à¦° à¦…à¦«à¦¿à¦¸', 'à¦œà¦¨à¦¾à¦¬ à¦ à¦•à§‡ à¦à¦® à¦†à¦«à¦œà¦¾à¦²à§à¦² à¦¹à¦• à¦ªà§à¦°à¦§à¦¾à¦¨ à¦ªà§à¦°à¦•à§Œà¦¶à¦²à§€ (à¦­à¦¾à¦°à¦ªà§à¦°à¦¾à¦ªà§à¦¤)');

-- --------------------------------------------------------

--
-- Table structure for table `history_of_du`
--

CREATE TABLE `history_of_du` (
  `id` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(2000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `history_of_du`
--

INSERT INTO `history_of_du` (`id`, `description`, `image`) VALUES
(1, 'à¦¬à§à¦°à¦¿à¦Ÿà¦¿à¦¶ à¦”à¦ªà¦¨à¦¿à¦¬à§‡à¦¶à¦¿à¦• à¦¶à¦¾à¦¸à¦¨à¦•à¦¾à¦²à§‡ à¦¸à§à¦¬à¦¾à¦§à§€à¦¨ à¦œà¦¾à¦¤à¦¿à¦¸à¦¤à§à¦¤à¦¾à¦° à¦¬à¦¿à¦•à¦¾à¦¶à§‡à¦° à¦²à¦•à§à¦·à§à¦¯à§‡ à¦¬à¦¿à¦¶ à¦¶à¦¤à¦•à§‡à¦° à¦¦à§à¦¬à¦¿à¦¤à§€à§Ÿ à¦¦à¦¶à¦•à§‡ à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ à¦ªà§à¦°à¦¤à¦¿à¦·à§à¦ à¦¾à¦° à¦ªà§à¦°à¦•à§à¦°à¦¿à§Ÿà¦¾ à¦¶à§à¦°à§ à¦¹à§Ÿà¥¤ à§§à§¯à§§à§¨ à¦¸à¦¾à¦²à§‡à¦° à§¨à¦°à¦¾ à¦«à§‡à¦¬à§à¦°à§à§Ÿà¦¾à¦°à¦¿ à¦¢à¦¾à¦•à¦¾à§Ÿ à¦à¦•à¦Ÿà¦¿ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ à¦ªà§à¦°à¦¤à¦¿à¦·à§à¦ à¦¾à¦° à¦ªà§à¦°à¦¤à¦¿à¦¶à§à¦°à§à¦¤à¦¿ à¦¦à§‡à¦¨ à¦¤à§Žà¦•à¦¾à¦²à§€à¦¨ à¦¬à§à¦°à¦¿à¦Ÿà¦¿à¦¶ à¦­à¦¾à¦°à¦¤à§‡à¦° à¦­à¦¾à¦‡à¦¸à¦°à§Ÿ à¦²à¦°à§à¦¡ nvwWÂ©Ã„| à¦à¦° à¦®à¦¾à¦¤à§à¦° à¦¤à¦¿à¦¨ à¦¦à¦¿à¦¨ à¦ªà§‚à¦°à§à¦¬à§‡ à¦­à¦¾à¦‡à¦¸à¦°à§Ÿà§‡à¦° à¦¸à¦™à§à¦—à§‡ à¦¸à¦¾à¦•à§à¦·à¦¾à§Ž à¦•à¦°à§‡ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ à¦ªà§à¦°à¦¤à¦¿à¦·à§à¦ à¦¾à¦° à¦†à¦¬à§‡à¦¦à¦¨ à¦œà¦¾à¦¨à¦¿à§Ÿà§‡à¦›à¦¿à¦²à§‡à¦¨ à¦¢à¦¾à¦•à¦¾à¦° à¦¨à¦“à§Ÿà¦¾à¦¬ à¦¸à§à¦¯à¦¾à¦° à¦¸à¦²à¦¿à¦®à§à¦²à§à¦²à¦¾à¦¹, à¦§à¦¨à¦¬à¦¾à§œà¦¿à¦° à¦¨à¦¬à¦¾à¦¬ à¦¸à§ˆà§Ÿà¦¦ à¦¨à¦“à§Ÿà¦¾à¦¬ à¦†à¦²à§€ à¦šà§Œà¦§à§à¦°à§€, à¦¶à§‡à¦°à§‡ à¦¬à¦¾à¦‚à¦²à¦¾ à¦. à¦•à§‡. à¦«à¦œà¦²à§à¦² à¦¹à¦• à¦à¦¬à¦‚ à¦…à¦¨à§à¦¯à¦¾à¦¨à§à¦¯ à¦¨à§‡à¦¤à¦¾à¥¤ à§¨à§­-à¦ à¦®à§‡ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ à¦ªà§à¦°à¦¤à¦¿à¦·à§à¦ à¦¾à¦° à¦¸à¦¿à¦¦à§à¦§à¦¾à¦¨à§à¦¤ à¦¨à§‡à¦“à§Ÿà¦¾à¦° à¦œà¦¨à§à¦¯ à¦¬à§à¦¯à¦¾à¦°à¦¿à¦¸à§à¦Ÿà¦¾à¦° à¦†à¦°. à¦¨à¦¾à¦¥à¦¾à¦¨à§‡à¦° à¦¨à§‡à¦¤à§ƒà¦¤à§à¦¬à§‡ à¦à¦¬à¦‚ à¦¡à¦¿. à¦†à¦°. à¦•à§à¦šà¦²à¦¾à¦°, à¦¡. à¦°à¦¾à¦¸à¦¬à¦¿à¦¹à¦¾à¦°à§€ à¦˜à§‹à¦·, à¦¨à¦¬à¦¾à¦¬ à¦¸à§ˆà§Ÿà¦¦ à¦¨à¦“à§Ÿà¦¾à¦¬ à¦†à¦²à§€ à¦šà§Œà¦§à§à¦°à§€, à¦¨à¦¬à¦¾à¦¬ à¦¸à¦¿à¦°à¦¾à¦œà§à¦² à¦‡à¦¸à¦²à¦¾à¦®, à¦¢à¦¾à¦•à¦¾à¦° à¦ªà§à¦°à¦­à¦¾à¦¬à¦¶à¦¾à¦²à§€ à¦¨à¦¾à¦—à¦°à¦¿à¦• à¦†à¦¨à¦¨à§à¦¦à¦šà¦¨à§à¦¦à§à¦° à¦°à¦¾à§Ÿ, à¦¢à¦¾à¦•à¦¾ à¦•à¦²à§‡à¦œà§‡à¦° à¦…à¦§à§à¦¯à¦•à§à¦· à¦¡à¦¬à§à¦²à¦¿à¦‰. à¦. à¦Ÿà¦¿. à¦†à¦°à§à¦šà¦¿à¦¬à¦²à§à¦¡, à¦œà¦—à¦¨à§à¦¨à¦¾à¦¥ à¦•à¦²à§‡à¦œà§‡à¦° à¦…à¦§à§à¦¯à¦•à§à¦· à¦²à¦²à¦¿à¦¤à¦®à§‹à¦¹à¦¨ à¦šà¦Ÿà§à¦Ÿà§‹à¦ªà¦¾à¦§à§à¦¯à¦¾à§Ÿ, à¦¢à¦¾à¦•à¦¾ à¦®à¦¾à¦¦à§à¦°à¦¾à¦¸à¦¾à¦° (à¦¬à¦°à§à¦¤à¦®à¦¾à¦¨ à¦•à¦¬à¦¿ à¦¨à¦œà¦°à§à¦² à¦¸à¦°à¦•à¦¾à¦°à¦¿ à¦•à¦²à§‡à¦œ) à¦¤à¦¤à§à¦¤à§à¦¬à¦¾à¦¬à¦§à¦¾à§Ÿà¦• à¦¶à¦¾à¦®à¦¸à§à¦² à¦‰à¦²à¦¾à¦®à¦¾ à¦†à¦¬à§ à¦¨à¦¸à¦° à¦®à§à¦¹à¦®à§à¦®à¦¦ à¦“à§Ÿà¦¾à¦¹à§‡à¦¦, à¦®à§‹à¦¹à¦¾à¦®à§à¦®à¦¦ à¦†à¦²à§€ (à¦†à¦²à§€à¦—à§œ), à¦ªà§à¦°à§‡à¦¸à¦¿à¦¡à§‡à¦¨à§à¦¸à¦¿ à¦•à¦²à§‡à¦œà§‡à¦° (à¦•à¦²à¦•à¦¾à¦¤à¦¾) à¦…à¦§à§à¦¯à¦•à§à¦· à¦à¦‡à¦š. à¦à¦‡à¦š. à¦†à¦°. à¦œà§‡à¦®à§â€Œâ€Œà¦¸à§â€Œ, à¦ªà§à¦°à§‡à¦¸à¦¿à¦¡à§‡à¦¨à§à¦¸à¦¿ à¦•à¦²à§‡à¦œà§‡à¦° à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¸à¦¿. à¦¡à¦¬à§à¦²à¦¿à¦‰. à¦ªà¦¿à¦• à¦à¦¬à¦‚ à¦¸à¦‚à¦¸à§à¦•à§ƒà¦¤ à¦•à¦²à§‡à¦œà§‡à¦° (à¦•à¦²à¦•à¦¾à¦¤à¦¾) à¦…à¦§à§à¦¯à¦•à§à¦· à¦¸à¦¤à§€à¦¶à¦šà¦¨à§à¦¦à§à¦° à¦†à¦šà¦¾à¦°à§à¦¯-à¦•à§‡ à¦¸à¦¦à¦¸à§à¦¯ à¦•à¦°à§‡ à¦à¦•à¦Ÿà¦¿ à¦¶à¦•à§à¦¤à¦¿à¦¶à¦¾à¦²à§€ à¦•à¦®à¦¿à¦Ÿà¦¿ à¦—à¦ à¦¿à¦¤ à¦¹à§Ÿà¥¤ à§§à§¯à§§à§© à¦¸à¦¾à¦²à§‡ à¦ªà§à¦°à¦•à¦¾à¦¶à¦¿à¦¤ à¦¹à§Ÿ à¦¨à¦¾à¦¥à¦¾à¦¨ à¦•à¦®à¦¿à¦Ÿà¦¿à¦° à¦‡à¦¤à¦¿à¦¬à¦¾à¦šà¦• à¦°à¦¿à¦ªà§‹à¦°à§à¦Ÿ, à¦à¦¬à¦‚ à¦ à¦¬à¦›à¦°à¦‡ à¦¡à¦¿à¦¸à§‡à¦®à§à¦¬à¦° à¦®à¦¾à¦¸à§‡ à¦¸à§‡à¦Ÿà¦¿ à¦…à¦¨à§à¦®à§‹à¦¦à¦¿à¦¤ à¦¹à§Ÿà¥¤ à§§à§¯à§§à§­ à¦¸à¦¾à¦²à§‡ à¦—à¦ à¦¿à¦¤ à¦¸à§à¦¯à¦¾à¦¡à¦²à¦¾à¦° à¦•à¦®à¦¿à¦¶à¦¨à¦“ à¦‡à¦¤à¦¿à¦¬à¦¾à¦šà¦• à¦ªà§à¦°à¦¸à§à¦¤à¦¾à¦¬ à¦¦à¦¿à¦²à§‡ à§§à§¯à§¨à§¦ à¦¸à¦¾à¦²à§‡à¦° à§§à§©à¦‡ à¦®à¦¾à¦°à§à¦š à¦­à¦¾à¦°à¦¤à§€à§Ÿ à¦†à¦‡à¦¨ à¦¸à¦­à¦¾ à¦ªà¦¾à¦¸ à¦•à¦°à§‡ â€˜à¦¦à¦¿ à¦¢à¦¾à¦•à¦¾ à¦‡à¦‰à¦¨à¦¿à¦­à¦¾à¦°à§à¦¸à¦¿à¦Ÿà¦¿ à¦…à§à¦¯à¦¾à¦•à§à¦Ÿ (à¦…à§à¦¯à¦¾à¦•à§à¦Ÿ à¦¨à¦®à§à¦¬à¦°-18)-1920Ã•à¥¤ à¦›à¦¾à¦¤à§à¦°-à¦›à¦¾à¦¤à§à¦°à§€à¦¦à§‡à¦° à¦œà¦¨à§à¦¯ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿà§‡à¦° à¦¦à§à¦¬à¦¾à¦° à¦‰à¦¨à§à¦®à§à¦•à§à¦¤ à¦¹à§Ÿ à§§à§¯à§¨à§§ à¦¸à¦¾à¦²à§‡à¦° à§§à¦²à¦¾ à¦œà§à¦²à¦¾à¦‡à¥¤ à¦¸à§‡-à¦¸à¦®à§Ÿà¦•à¦¾à¦° à¦¢à¦¾à¦•à¦¾à¦° à¦¸à¦¬à¦šà§‡à§Ÿà§‡ à¦…à¦­à¦¿à¦œà¦¾à¦¤ à¦“ à¦¸à§Œà¦¨à§à¦¦à¦°à§à¦¯à¦®à¦£à§à¦¡à¦¿à¦¤ à¦°à¦®à¦¨à¦¾ à¦à¦²à¦¾à¦•à¦¾à§Ÿ à¦ªà§à¦°à¦¾à§Ÿ à§¬à§¦à§¦ à¦à¦•à¦° à¦œà¦®à¦¿à¦° à¦“à¦ªà¦° à¦ªà§‚à¦°à§à¦¬à¦¬à¦™à§à¦— à¦à¦¬à¦‚ à¦†à¦¸à¦¾à¦® à¦ªà§à¦°à¦¦à§‡à¦¶ à¦¸à¦°à¦•à¦¾à¦°à§‡à¦° à¦ªà¦°à¦¿à¦¤à§à¦¯à¦•à§à¦¤ à¦­à¦¬à¦¨à¦¸à¦®à§‚à¦¹ à¦“ à¦¢à¦¾à¦•à¦¾ à¦•à¦²à§‡à¦œà§‡à¦° (à¦¬à¦°à§à¦¤à¦®à¦¾à¦¨ à¦•à¦¾à¦°à§à¦œà¦¨ à¦¹à¦²) à¦­à¦¬à¦¨à¦¸à¦®à§‚à¦¹à§‡à¦° à¦¸à¦®à¦¨à§à¦¬à§Ÿà§‡ à¦®à¦¨à§‹à¦°à¦® à¦ªà¦°à¦¿à¦¬à§‡à¦¶à§‡ à¦—à§œà§‡ à¦“à¦ à§‡ à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿà¥¤ à§©à¦Ÿà¦¿ à¦…à¦¨à§à¦·à¦¦ à¦“ à§§à§¨à¦Ÿà¦¿ à¦¬à¦¿à¦­à¦¾à¦— à¦¨à¦¿à§Ÿà§‡ à¦à¦•à¦Ÿà¦¿ à¦†à¦¬à¦¾à¦¸à¦¿à¦• à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ à¦¹à¦¿à¦¸à§‡à¦¬à§‡ à¦à¦° à¦¯à¦¾à¦¤à§à¦°à¦¾ à¦¶à§à¦°à§ à¦¹à§Ÿà¥¤ à¦•à¦²à¦¾, à¦¬à¦¿à¦œà§à¦žà¦¾à¦¨ à¦“ à¦†à¦‡à¦¨ à¦…à¦¨à§à¦·à¦¦à§‡à¦° à¦…à¦¨à§à¦¤à¦°à§à¦­à§à¦•à§à¦¤ à¦¬à¦¿à¦­à¦¾à¦—à¦—à§à¦²à§‹ à¦›à¦¿à¦² à¦¸à¦‚à¦¸à§à¦•à§ƒà¦¤ à¦“ à¦¬à¦¾à¦‚à¦²à¦¾, à¦‡à¦‚à¦°à§‡à¦œà¦¿, à¦¶à¦¿à¦•à§à¦·à¦¾, à¦‡à¦¤à¦¿à¦¹à¦¾à¦¸, à¦†à¦°à¦¬à¦¿ à¦“ à¦‡à¦¸à¦²à¦¾à¦®à¦¿à¦• à¦¸à§à¦Ÿà¦¾à¦¡à¦¿à¦œ, à¦«à¦¾à¦°à¦¸à¦¿ à¦“ à¦‰à¦°à§à¦¦à§, à¦¦à¦°à§à¦¶à¦¨, à¦…à¦°à§à¦¥à¦¨à§€à¦¤à¦¿ à¦“ à¦°à¦¾à¦œà¦¨à§€à¦¤à¦¿, à¦ªà¦¦à¦¾à¦°à§à¦¥à¦¬à¦¿à¦¦à§à¦¯à¦¾, à¦°à¦¸à¦¾à§Ÿà¦¨, à¦—à¦£à¦¿à¦¤ à¦à¦¬à¦‚ à¦†à¦‡à¦¨à¥¤ à¦ªà§à¦°à¦¥à¦® à¦¶à¦¿à¦•à§à¦·à¦¾à¦¬à¦°à§à¦·à§‡ à¦¬à¦¿à¦­à¦¿à¦¨à§à¦¨ à¦¬à¦¿à¦­à¦¾à¦—à§‡ à¦®à§‹à¦Ÿ à¦›à¦¾à¦¤à§à¦°-à¦›à¦¾à¦¤à§à¦°à§€à¦° à¦¸à¦‚à¦–à§à¦¯à¦¾ à¦›à¦¿à¦² à§®à§­à§­ à¦œà¦¨ à¦à¦¬à¦‚ à¦¶à¦¿à¦•à§à¦·à¦• à¦¸à¦‚à¦–à§à¦¯à¦¾ à¦›à¦¿à¦² à¦®à¦¾à¦¤à§à¦° à§¬à§¦ à¦œà¦¨à¥¤ à¦¯à§‡à¦¸à¦¬ à¦ªà§à¦°à¦¥à¦¿à¦¤à¦¯à¦¶à¦¾ à¦¶à¦¿à¦•à§à¦·à¦¾à¦¬à¦¿à¦¦ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿà§‡à¦° à¦ªà§à¦°à¦¤à¦¿à¦·à§à¦ à¦¾à¦²à¦—à§à¦¨à§‡ à¦¶à¦¿à¦•à§à¦·à¦•à¦¤à¦¾à¦° à¦¦à¦¾à§Ÿà¦¿à¦¤à§à¦¬à§‡ à¦¨à¦¿à§Ÿà§‹à¦œà¦¿à¦¤ à¦›à¦¿à¦²à§‡à¦¨ à¦¤à¦¾à¦à¦°à¦¾ à¦¹à¦²à§‡à¦¨ : à¦¹à¦°à¦ªà§à¦°à¦¸à¦¾à¦¦ à¦¶à¦¾à¦¸à§à¦¤à§à¦°à§€, à¦à¦«. à¦¸à¦¿. à¦Ÿà¦¾à¦°à§à¦¨à¦¾à¦°, à¦®à§à¦¹à¦®à§à¦®à¦¦ à¦¶à¦¹à§€à¦¦à§à¦²à§à¦²à¦¾à¦¹, à¦œà¦¿. à¦à¦‡à¦š. à¦²à§à¦¯à¦¾à¦‚à¦²à¦¿, à¦¹à¦°à¦¿à¦¦à¦¾à¦¸ à¦­à¦Ÿà§à¦Ÿà¦¾à¦šà¦¾à¦°à§à¦¯, à¦¡à¦¬à§à¦²à¦¿à¦‰. à¦. à¦œà§‡à¦¨à¦•à¦¿à¦¨à§à¦¸, à¦°à¦®à§‡à¦¶à¦šà¦¨à§à¦¦à§à¦° à¦®à¦œà§à¦®à¦¦à¦¾à¦°, à¦. à¦à¦«. à¦°à¦¹à¦®à¦¾à¦¨, à¦¸à¦¤à§à¦¯à§‡à¦¨à§à¦¦à§à¦°à¦¨à¦¾à¦¥ à¦¬à¦¸à§, à¦¨à¦°à§‡à¦¶à¦šà¦¨à§à¦¦à§à¦° à¦¸à§‡à¦¨à¦—à§à¦ªà§à¦¤, à¦œà§à¦žà¦¾à¦¨à¦šà¦¨à§à¦¦à§à¦° à¦˜à§‹à¦· à¦ªà§à¦°à¦®à§à¦–à¥¤ à¦¦à§à¦¬à¦¿à¦¤à§€à§Ÿ à¦¬à¦¿à¦¶à§à¦¬à¦¯à§à¦¦à§à¦§à¦•à¦¾à¦²à§€à¦¨ à¦…à¦¸à§à¦¥à¦¿à¦°à¦¤à¦¾ à¦“ à¦¦à§‡à¦¶à¦­à¦¾à¦—à§‡à¦° à¦•à¦¾à¦°à¦£à§‡ à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿà§‡à¦° à¦…à¦—à§à¦°à¦¯à¦¾à¦¤à§à¦°à¦¾ à¦•à¦¿à¦›à§à¦Ÿà¦¾ à¦¬à§à¦¯à¦¾à¦¹à¦¤ à¦¹à§Ÿà¥¤ à§§à§¯à§ªà§­ à¦¸à¦¾à¦²à§‡ à¦­à¦¾à¦°à¦¤ à¦“ à¦ªà¦¾à¦•à¦¿à¦¸à§à¦¤à¦¾à¦¨ à¦¨à¦¾à¦®à¦• à¦¦à§à¦Ÿà¦¿ à¦°à¦¾à¦·à§à¦Ÿà§à¦° à¦ªà§à¦°à¦¤à¦¿à¦·à§à¦ à¦¿à¦¤ à¦¹à§Ÿà¥¤ à¦¤à§Žà¦•à¦¾à¦²à§€à¦¨ à¦ªà§‚à¦°à§à¦¬à¦¬à¦™à§à¦—à§‡à¦° à¦¬à¦¾ à¦ªà¦°à¦¬à¦°à§à¦¤à§€ à¦¸à¦®à§Ÿà§‡à¦° à¦ªà§‚à¦°à§à¦¬ à¦ªà¦¾à¦•à¦¿à¦¸à§à¦¤à¦¾à¦¨à§‡à¦° à¦°à¦¾à¦œà¦§à¦¾à¦¨à§€ à¦¢à¦¾à¦•à¦¾à§Ÿ à¦…à¦¬à¦¸à§à¦¥à¦¿à¦¤ à¦ªà§à¦°à¦¦à§‡à¦¶à§‡à¦° à¦à¦•à¦®à¦¾à¦¤à§à¦° à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ; à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿà¦•à§‡ à¦•à§‡à¦¨à§à¦¦à§à¦° à¦•à¦°à§‡ à¦ à¦¦à§‡à¦¶à§‡à¦° à¦®à¦¾à¦¨à§à¦·à§‡à¦° à¦†à¦¶à¦¾-à¦†à¦•à¦¾à¦™à§à¦•à§à¦·à¦¾ à¦‰à¦œà§à¦œà§€à¦¬à¦¿à¦¤ à¦¹à§Ÿà¥¤ à¦¨à¦¤à§à¦¨ à¦‰à¦¦à§à¦¯à¦®à§‡ à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿà§‡à¦° à¦•à¦°à§à¦®à¦•à¦¾à¦£à§à¦¡ à¦¶à§à¦°à§ à¦¹à§Ÿà¥¤ à¦¤à§Žà¦•à¦¾à¦²à§€à¦¨ à¦ªà§‚à¦°à§à¦¬à¦¬à¦¾à¦‚à¦²à¦¾à¦° à§«à§«à¦Ÿà¦¿ à¦•à¦²à§‡à¦œ à¦ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿà§‡à¦° à¦…à¦§à¦¿à¦­à§à¦•à§à¦¤ à¦¹à§Ÿà¥¤ à§§à§¯à§ªà§­-à§­à§§ à¦¸à¦¨ à¦ªà¦°à§à¦¯à¦¨à§à¦¤ à¦¸à¦®à§Ÿà§‡à¦° à¦®à¦§à§à¦¯à§‡ à§«à¦Ÿà¦¿ à¦¨à¦¤à§à¦¨ à¦…à¦¨à§à¦·à¦¦, à§§à§¬à¦Ÿà¦¿ à¦¨à¦¤à§à¦¨ à¦¬à¦¿à¦­à¦¾à¦— à¦“ à§ªà¦Ÿà¦¿ à¦‡à¦¨à¦¸à§à¦Ÿà¦¿à¦Ÿà¦¿à¦‰à¦Ÿ à¦ªà§à¦°à¦¤à¦¿à¦·à§à¦ à¦¿à¦¤ à¦¹à§Ÿà¥¤ à§§à§¯à§«à§¨ à¦¸à¦¾à¦²à§‡à¦° à¦°à¦¾à¦·à§à¦Ÿà§à¦°à¦­à¦¾à¦·à¦¾ à¦†à¦¨à§à¦¦à§‹à¦²à¦¨ à¦¥à§‡à¦•à§‡ à¦¶à§à¦°à§ à¦•à¦°à§‡ à§§à§¯à§­à§§-à¦à¦° à¦¸à§à¦¬à¦¾à¦§à§€à¦¨à¦¤à¦¾ à¦¯à§à¦¦à§à¦§ à¦ªà¦°à§à¦¯à¦¨à§à¦¤ à¦ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿà§‡à¦° à¦°à§Ÿà§‡à¦›à§‡ à¦—à§Œà¦°à¦¬à¦®à§Ÿ à¦­à§‚à¦®à¦¿à¦•à¦¾à¥¤ à¦¸à§à¦¬à¦¾à¦§à§€à¦¨à¦¤à¦¾ à¦¯à§à¦¦à§à¦§à§‡ à¦ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ à¦ªà¦¾à¦•à¦¿à¦¸à§à¦¤à¦¾à¦¨à¦¿ à¦¹à¦¾à¦¨à¦¾à¦¦à¦¾à¦° à¦¬à¦¾à¦¹à¦¿à¦¨à§€à¦° à¦†à¦•à§à¦°à¦®à¦£à§‡à¦° à¦¶à¦¿à¦•à¦¾à¦° à¦¹à§Ÿà¥¤ à¦à¦¤à§‡ à¦ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿà§‡à¦° à¦¶à¦¿à¦•à§à¦·à¦•-à¦•à¦°à§à¦®à¦•à¦°à§à¦¤à¦¾-à¦•à¦°à§à¦®à¦šà¦¾à¦°à§€ à¦à¦¬à¦‚ à¦›à¦¾à¦¤à§à¦°-à¦›à¦¾à¦¤à§à¦°à§€à¦¸à¦¹ à¦¶à¦¹à¦¿à¦¦ à¦¹à§Ÿà§‡à¦›à§‡à¦¨ à¦¬à¦¹à§à¦œà¦¨à¥¤ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿà§‡à¦° wkÃ¿K à¦“ à¦›à¦¾à¦¤à§à¦°à¦¦à§‡à¦° à¦•à¦ à§‹à¦° à¦¨à¦¿à§Ÿà¦¨à§à¦¤à§à¦°à¦£à§‡ à¦°à¦¾à¦–à¦¾à¦° à¦²à¦•à§à¦·à§à¦¯à§‡ à§§à§¯à§¬à§§ à¦¸à¦¾à¦²à§‡ à¦†à¦‡à§Ÿà§à¦¬ à¦¸à¦°à¦•à¦¾à¦° à¦ªà§à¦°à¦¬à¦°à§à¦¤à¦¿à¦¤ à¦…à¦°à§à¦¡à¦¿à¦¨à§à¦¯à¦¾à¦¨à§à¦¸ à¦¬à¦¾à¦¤à¦¿à¦²à§‡à¦° à¦œà¦¨à§à¦¯ à¦·à¦¾à¦Ÿà§‡à¦° à¦¦à¦¶à¦• à¦¥à§‡à¦•à§‡ à¦¶à¦¿à¦•à§à¦·à¦•à¦¦à§‡à¦° à¦¦à¦¾à¦¬à¦¿à¦° à¦ªà¦°à¦¿à¦ªà§à¦°à§‡à¦•à§à¦·à¦¿à¦¤à§‡ à¦¸à§à¦¬à¦¾à¦§à§€à¦¨à¦¤à¦¾à¦° à¦ªà¦° à¦—à¦£à¦ªà§à¦°à¦œà¦¾à¦¤à¦¨à§à¦¤à§à¦°à§€ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶à§‡à¦° à¦œà¦¾à¦¤à§€à§Ÿ à¦¸à¦‚à¦¸à¦¦ à¦‰à¦•à§à¦¤ à¦…à¦°à§à¦¡à¦¿à¦¨à§à¦¯à¦¾à¦¨à§à¦¸ à¦¬à¦¾à¦¤à¦¿à¦² à¦•à¦°à§‡ à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ à¦†à¦¦à§‡à¦¶-à§§à§¯à§­à§© à¦œà¦¾à¦°à¦¿ à¦•à¦°à§‡à¥¤ à¦«à¦²à§‡ à¦à¦‡ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ à¦à¦•à¦Ÿà¦¿ à¦¸à§à¦¬à¦¾à§Ÿà¦¤à§à¦¤à¦¶à¦¾à¦¸à¦¿à¦¤ à¦ªà§à¦°à¦¤à¦¿à¦·à§à¦ à¦¾à¦¨à§‡à¦° à¦®à¦°à§à¦¯à¦¾à¦¦à¦¾ à¦²à¦¾à¦­ à¦•à¦°à§‡ à¦à¦¬à¦‚ à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦¨à¦¾ à¦“ à¦¬à§à¦¯à¦¬à¦¸à§à¦¥à¦¾à¦ªà¦¨à¦¾à¦° à¦•à§à¦·à§‡à¦¤à§à¦°à§‡ à¦à¦¤à§‡ à¦—à¦£à¦¤à¦¾à¦¨à§à¦¤à§à¦°à¦¿à¦• à¦°à§€à¦¤à¦¿ à¦ªà§à¦°à¦¤à¦¿à¦·à§à¦ à¦¿à¦¤ à¦¹à§Ÿà¥¤ à¦¬à¦°à§à¦¤à¦®à¦¾à¦¨à§‡ à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿà§‡ à§§à§©à¦Ÿà¦¿ à¦…à¦¨à§à¦·à¦¦, à§§à§¨à¦Ÿà¦¿ à¦‡à¦¨à¦¸à§à¦Ÿà¦¿à¦Ÿà¦¿à¦‰à¦Ÿ, à§®à§ª à¦Ÿà¦¿ à¦¬à¦¿à¦­à¦¾à¦—, à§«à§­à¦Ÿà¦¿ à¦¬à§à¦¯à§à¦°à§‹ à¦“ à¦—à¦¬à§‡à¦·à¦£à¦¾ à¦•à§‡à¦¨à§à¦¦à§à¦° à¦à¦¬à¦‚ à¦›à¦¾à¦¤à§à¦°-à¦›à¦¾à¦¤à§à¦°à§€à¦¦à§‡à¦° à§§à§¯à¦Ÿà¦¿ à¦†à¦¬à¦¾à¦¸à¦¿à¦• à¦¹à¦², à§§à¦Ÿà¦¿ à¦›à¦¾à¦¤à§à¦°à§€à¦¨à¦¿à¦¬à¦¾à¦¸, à§¨à¦Ÿà¦¿ à¦›à¦¾à¦¤à§à¦° à¦¹à§‹à¦¸à§à¦Ÿà§‡à¦², à§§à¦Ÿà¦¿ à¦›à¦¾à¦¤à§à¦°à§€ à¦¹à§‹à¦¸à§à¦Ÿà§‡à¦² à¦“ à§§à§¨à§©à¦Ÿà¦¿ à¦‰à¦ªà¦¾à¦¦à¦¾à¦¨à¦•à¦²à§à¦ª à¦•à¦²à§‡à¦œ à¦°à§Ÿà§‡à¦›à§‡à¥¤ à¦ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿà§‡ à¦…à¦§à§à¦¯à§Ÿà¦¨à¦°à¦¤ à¦›à¦¾à¦¤à§à¦°-à¦›à¦¾à¦¤à§à¦°à§€à¦° à¦¸à¦‚à¦–à§à¦¯à¦¾ à¦ªà§à¦°à¦¾à§Ÿ à§©à§­,à§¯à§®à§ª à¦œà¦¨à¥¤ à¦ªà¦¾à¦ à¦¦à¦¾à¦¨ à¦“ à¦—à¦¬à§‡à¦·à¦£à¦¾à§Ÿ à¦¨à¦¿à§Ÿà§‹à¦œà¦¿à¦¤ à¦°à§Ÿà§‡à¦›à§‡à¦¨ à¦ªà§à¦°à¦¾à§Ÿ à§¨à§¨à§¬à§® à¦œà¦¨ à¦¶à¦¿à¦•à§à¦·à¦•à¥¤ à¦¦à§‡à¦¶ à¦“ à¦œà¦¾à¦¤à¦¿à¦° à¦¸à¦¾à¦°à§à¦¬à¦¿à¦• à¦•à¦²à§à¦¯à¦¾à¦£à§‡ à¦‰à¦šà§à¦šà¦¶à¦¿à¦•à§à¦·à¦¾à¦° à¦¸à¦®à§à¦ªà§à¦°à¦¸à¦¾à¦°à¦£ à¦“ à¦…à¦—à§à¦°à¦—à¦¤à¦¿à¦¤à§‡ à¦¨à¦¿à¦¬à§‡à¦¦à¦¿à¦¤ à¦ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ à¦œà§à¦žà¦¾à¦¨-à¦¬à¦¿à¦œà§à¦žà¦¾à¦¨à§‡à¦° à¦ªà§à¦°à¦¤à¦¿à¦Ÿà¦¿ à¦•à§à¦·à§‡à¦¤à§à¦°à§‡ à¦—à¦¬à§‡à¦·à¦£à¦¾-à¦•à¦¾à¦°à§à¦¯à¦•à§à¦°à¦®à¦•à§‡ à¦‰à§Žà¦¸à¦¾à¦¹à¦¿à¦¤ à¦•à¦°à¦¤à§‡ à¦…à¦™à§à¦—à§€à¦•à¦¾à¦°à¦¾à¦¬à¦¦à§à¦§à¥¤', 'https://firebasestorage.googleapis.com/v0/b/signindemo-f56a8.appspot.com/o/DU_images%2Fhistory.png?alt=media&token=c0565bd9-b74d-4d4f-a7e1-ae33d60aa8fc');

-- --------------------------------------------------------

--
-- Table structure for table `implementation_committee`
--

CREATE TABLE `implementation_committee` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `rank` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `membership` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `implementation_committee`
--

INSERT INTO `implementation_committee` (`id`, `name`, `rank`, `membership`) VALUES
(1, 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦¨à¦¾à¦¸à¦°à§€à¦¨ à¦†à¦¹à¦®à¦¦', 'à¦ªà§à¦°à§‹-à¦­à¦¾à¦‡à¦¸ à¦šà§à¦¯à¦¾à¦¨à§à¦¸à§‡à¦²à¦° (à¦¶à¦¿à¦•à§à¦·à¦¾), à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦¸à¦­à¦¾à¦ªà¦¤à¦¿'),
(2, 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦®à§à¦¹à¦¾à¦®à§à¦®à¦¦ à¦¸à¦¾à¦®à¦¾à¦¦', 'à¦ªà§à¦°à§‹-à¦­à¦¾à¦‡à¦¸ à¦šà§à¦¯à¦¾à¦¨à§à¦¸à§‡à¦²à¦° (à¦ªà§à¦°à¦¶à¦¾à¦¸à¦¨), à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦¸à¦¦à¦¸à§à¦¯'),
(3, 'à¦œà¦¨à¦¾à¦¬ à¦®à§‹. à¦à¦¨à¦¾à¦®à¦‰à¦œà§à¦œà¦¾à¦®à¦¾à¦¨', 'à¦°à§‡à¦œà¦¿à¦¸à§à¦Ÿà§à¦°à¦¾à¦° (à¦­à¦¾à¦°à¦ªà§à¦°à¦¾à¦ªà§à¦¤), à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦¸à¦¦à¦¸à§à¦¯'),
(4, 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦†à¦¬à§ à¦®à§‹. à¦¦à§‡à¦²à§‹à§Ÿà¦¾à¦° à¦¹à§‹à¦¸à§‡à¦¨', 'à¦¡à¦¿à¦¨, à¦•à¦²à¦¾ à¦…à¦¨à§à¦·à¦¦, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦¸à¦¦à¦¸à§à¦¯'),
(5, 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦®à§‹à¦¹à¦¾à¦®à§à¦®à¦¦ à¦†à¦¬à§à¦¦à§à¦² à¦†à¦œà¦¿à¦œ', 'à¦ªà§à¦°à¦¾à¦•à§à¦¤à¦¨ à¦¡à¦¿à¦¨, à¦¬à¦¿à¦œà§à¦žà¦¾à¦¨ à¦…à¦¨à§à¦·à¦¦, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦¸à¦¦à¦¸à§à¦¯'),
(6, 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦®à§‹. à¦°à¦¹à¦®à¦¤ à¦‰à¦²à§à¦²à¦¾à¦¹', 'à¦¡à¦¿à¦¨, à¦†à¦‡à¦¨ à¦…à¦¨à§à¦·à¦¦, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦¸à¦¦à¦¸à§à¦¯'),
(7, 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¶à¦¿à¦¬à¦²à§€ à¦°à§à¦¬à¦¾à¦‡à§Ÿà¦¾à¦¤à§à¦² à¦‡à¦¸à¦²à¦¾à¦®', 'à¦¡à¦¿à¦¨, à¦¬à¦¿à¦œà¦¨à§‡à¦¸ à¦¸à§à¦Ÿà¦¾à¦¡à¦¿à¦œ à¦…à¦¨à§à¦·à¦¦, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦¸à¦¦à¦¸à§à¦¯'),
(8, 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦¸à¦¾à¦¦à§‡à¦•à¦¾ à¦¹à¦¾à¦²à¦¿à¦®', 'à¦¡à¦¿à¦¨, à¦¸à¦¾à¦®à¦¾à¦œà¦¿à¦• à¦¬à¦¿à¦œà§à¦žà¦¾à¦¨ à¦…à¦¨à§à¦·à¦¦, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦¸à¦¦à¦¸à§à¦¯'),
(9, 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦®à§‹. à¦‡à¦®à¦¦à¦¾à¦¦à§à¦² à¦¹à¦•', 'à¦¡à¦¿à¦¨, à¦œà§€à¦¬à¦¬à¦¿à¦œà§à¦žà¦¾à¦¨ à¦…à¦¨à§à¦·à¦¦, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦¸à¦¦à¦¸à§à¦¯'),
(10, 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦à¦¸ à¦à¦® à¦†à¦¬à§à¦¦à§à¦° à¦°à¦¹à¦®à¦¾à¦¨', 'à¦¡à¦¿à¦¨, à¦«à¦¾à¦°à§à¦®à§‡à¦¸à§€ à¦…à¦¨à§à¦·à¦¦, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦¸à¦¦à¦¸à§à¦¯'),
(11, 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦. à¦à¦¸. à¦à¦®. à¦®à¦¾à¦•à¦¸à§à¦¦ à¦•à¦¾à¦®à¦¾à¦²', 'à¦¡à¦¿à¦¨, à¦†à¦°à§à¦¥ à¦à¦¨à§à¦¡ à¦à¦¨à¦­à¦¾à§Ÿà¦°à¦¨à¦®à§‡à¦¨à§à¦Ÿà¦¾à¦² à¦¸à¦¾à§Ÿà§‡à¦¨à§à¦¸à§‡à¦¸ à¦…à¦¨à§à¦·à¦¦, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦¸à¦¦à¦¸à§à¦¯'),
(12, 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦®à§‹. à¦¹à¦¾à¦¸à¦¾à¦¨à§à¦œà§à¦œà¦¾à¦®à¦¾à¦¨', 'à¦¡à¦¿à¦¨, à¦‡à¦žà§à¦œà¦¿à¦¨à¦¿à§Ÿà¦¾à¦°à¦¿à¦‚ à¦à¦¨à§à¦¡ à¦Ÿà§‡à¦•à¦¨à§‹à¦²à¦œà¦¿ à¦…à¦¨à§à¦·à¦¦, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦¸à¦¦à¦¸à§à¦¯'),
(13, 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¨à¦¿à¦¸à¦¾à¦° à¦¹à§‹à¦¸à§‡à¦¨', 'à¦¡à¦¿à¦¨, à¦šà¦¾à¦°à§à¦•à¦²à¦¾ à¦…à¦¨à§à¦·à¦¦, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦¸à¦¦à¦¸à§à¦¯'),
(14, 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦­à§€à¦·à§à¦®à¦¦à§‡à¦¬ à¦šà§Œà¦§à§à¦°à§€', 'à¦šà§‡à§Ÿà¦¾à¦°à¦®à§à¦¯à¦¾à¦¨, à¦¬à¦¾à¦‚à¦²à¦¾ à¦¬à¦¿à¦­à¦¾à¦—, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦¸à¦¦à¦¸à§à¦¯'),
(15, 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦•à¦¾à¦œà¦² à¦•à§ƒà¦·à§à¦£ à¦¬à§à¦¯à¦¾à¦¨à¦¾à¦°à§à¦œà§€', 'à¦šà§‡à§Ÿà¦¾à¦°à¦®à§à¦¯à¦¾à¦¨, à¦‡à¦‚à¦°à§‡à¦œà§€ à¦¬à¦¿à¦­à¦¾à¦—, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦¸à¦¦à¦¸à§à¦¯'),
(16, 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦¸à§à¦§à¦¾à¦‚à¦¶à§ à¦¶à§‡à¦–à¦° à¦°à¦¾à§Ÿ', 'à¦šà§‡à§Ÿà¦¾à¦°à¦®à§à¦¯à¦¾à¦¨, à¦ªà§à¦°à¦¿à¦¨à§à¦Ÿà¦¿à¦‚ à¦à¦¨à§à¦¡ à¦ªà¦¾à¦¬à¦²à¦¿à¦•à§‡à¦¶à¦¨ à¦¸à§à¦Ÿà¦¾à¦¡à¦¿à¦œ à¦¬à¦¿à¦­à¦¾à¦—, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦¸à¦¦à¦¸à§à¦¯'),
(17, 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¶à¦¿à¦¶à¦¿à¦° à¦•à§à¦®à¦¾à¦° à¦­à¦Ÿà§à¦Ÿà¦¾à¦šà¦¾à¦°à§à¦¯à§à¦¯', 'à¦šà§‡à§Ÿà¦¾à¦°à¦®à§à¦¯à¦¾à¦¨, à¦…à¦‚à¦•à¦¨ à¦“ à¦šà¦¿à¦¤à§à¦°à¦¾à§Ÿà¦£ à¦¬à¦¿à¦­à¦¾à¦—, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦¸à¦¦à¦¸à§à¦¯'),
(18, 'à¦°à§‡à¦œà¦¾ à¦†à¦¸à¦¾à¦¦ à¦†à¦² à¦¹à§à¦¦à¦¾ à¦…à¦¨à§à¦ªà¦®', 'à¦šà§‡à§Ÿà¦¾à¦°à¦®à§à¦¯à¦¾à¦¨, à¦—à§à¦°à¦¾à¦«à¦¿à¦• à¦¡à¦¿à¦œà¦¾à¦‡à¦¨ à¦¬à¦¿à¦­à¦¾à¦—, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦¸à¦¦à¦¸à§à¦¯'),
(19, 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¸à§ˆà§Ÿà¦¦à¦¾ à¦¤à¦¾à¦¹à¦®à¦¿à¦¨à¦¾ à¦†à¦–à¦¤à¦¾à¦°', 'à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦•, à¦¶à¦¿à¦•à§à¦·à¦¾ à¦“ à¦—à¦¬à§‡à¦·à¦£à¦¾ à¦‡à¦¨à¦¸à§à¦Ÿà¦¿à¦Ÿà¦¿à¦‰à¦Ÿ, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦¸à¦¦à¦¸à§à¦¯'),
(20, ' à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦®à§‹. à¦‡à¦¶à¦°à¦¾à¦¤ à¦°à¦¾à§Ÿà¦¹à¦¾à¦¨', 'à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦•, à¦ªà¦°à¦¿à¦¸à¦‚à¦–à§à¦¯à¦¾à¦¨ à¦—à¦¬à§‡à¦·à¦£à¦¾ à¦“ à¦¶à¦¿à¦•à§à¦·à¦£ à¦‡à¦¨à¦¸à§à¦Ÿà¦¿à¦Ÿà¦¿à¦‰à¦Ÿ, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦¸à¦¦à¦¸à§à¦¯'),
(21, '  à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦¸à§ˆà§Ÿà¦¦ à¦«à¦¾à¦°à¦¹à¦¾à¦¤ à¦†à¦¨à§‹à§Ÿà¦¾à¦°', 'à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦•, à¦¬à§à¦¯à¦¬à¦¸à¦¾à§Ÿ à¦ªà§à¦°à¦¶à¦¾à¦¸à¦¨ à¦‡à¦¨à¦¸à§à¦Ÿà¦¿à¦Ÿà¦¿à¦‰à¦Ÿ, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦¸à¦¦à¦¸à§à¦¯'),
(22, ' à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦¶à§‡à¦– à¦¨à¦œà¦°à§à¦² à¦‡à¦¸à¦²à¦¾à¦®', 'à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦•, à¦ªà§à¦·à§à¦Ÿà¦¿ à¦“ à¦–à¦¾à¦¦à§à¦¯ à¦¬à¦¿à¦œà§à¦žà¦¾à¦¨ à¦‡à¦¨à¦¸à§à¦Ÿà¦¿à¦Ÿà¦¿à¦‰à¦Ÿ, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦¸à¦¦à¦¸à§à¦¯'),
(23, ' à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦¶à¦¿à¦¶à¦¿à¦° à¦­à¦Ÿà§à¦Ÿà¦¾à¦šà¦¾à¦°à§à¦¯à§à¦¯', 'à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦•, à¦†à¦§à§à¦¨à¦¿à¦• à¦­à¦¾à¦·à¦¾ à¦‡à¦¨à¦¸à§à¦Ÿà¦¿à¦Ÿà¦¿à¦‰à¦Ÿ, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦¸à¦¦à¦¸à§à¦¯'),
(24, ' à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦¸à§ˆà§Ÿà¦¦ à¦†à¦¬à§à¦¦à§à¦² à¦¹à¦¾à¦®à¦¿à¦¦', 'à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦•, à¦¸à§à¦¬à¦¾à¦¸à§à¦¥à§à¦¯ à¦…à¦°à§à¦¥à¦¨à§€à¦¤à¦¿ à¦‡à¦¨à¦¸à§à¦Ÿà¦¿à¦Ÿà¦¿à¦‰à¦Ÿ, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦¸à¦¦à¦¸à§à¦¯'),
(25, ' à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦®à§‹. à¦¶à¦°à¦¿à¦«à§à¦² à¦‡à¦¸à¦²à¦¾à¦®', 'à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦•, à¦¤à¦¥à§à¦¯ à¦ªà§à¦°à¦¯à§à¦•à§à¦¤à¦¿ à¦‡à¦¨à¦¸à§à¦Ÿà¦¿à¦Ÿà¦¿à¦‰à¦Ÿ, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦¸à¦¦à¦¸à§à¦¯'),
(26, 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦¸à¦¾à¦‡à¦«à§à¦² à¦¹à¦•', 'à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦•, à¦¶à¦•à§à¦¤à¦¿ à¦‡à¦¨à¦¸à§à¦Ÿà¦¿à¦Ÿà¦¿à¦‰à¦Ÿ, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦¸à¦¦à¦¸à§à¦¯'),
(27, ' à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦®à¦¾à¦¹à¦¬à§à¦¬à¦¾ à¦¨à¦¾à¦¸à¦°à§€à¦¨', 'à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦•, à¦¡à¦¿à¦œà¦¾à¦¸à§à¦Ÿà¦¾à¦° à¦®à§à¦¯à¦¾à¦¨à§‡à¦œà¦®à§‡à¦¨à§à¦Ÿ à¦à¦¨à§à¦¡ à¦­à¦¾à¦²à¦¨à¦¾à¦°à§‡à¦¬à¦¿à¦²à¦¿à¦Ÿà¦¿ à¦¸à§à¦Ÿà¦¾à¦¡à¦¿à¦œ à¦‡à¦¨à¦¸à§à¦Ÿà¦¿à¦Ÿà¦¿à¦‰à¦Ÿ, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦¸à¦¦à¦¸à§à¦¯'),
(28, 'à¦®à§‹. à¦¬à¦¾à¦¹à¦¾à¦²à§à¦² à¦¹à¦• à¦šà§Œà¦§à§à¦°à§€', 'à¦ªà¦°à§€à¦•à§à¦·à¦¾ à¦¨à¦¿à§Ÿà¦¨à§à¦¤à§à¦°à¦•, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦¸à¦¦à¦¸à§à¦¯'),
(29, 'à¦®à¦¾à¦¹à¦®à§à¦¦ à¦†à¦²à¦®', 'à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦•, à¦œà¦¨à¦¸à¦‚à¦¯à§‹à¦— à¦…à¦«à¦¿à¦¸, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦¸à¦¦à¦¸à§à¦¯'),
(30, 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦¸à§ˆà§Ÿà¦¦ à¦†à¦œà¦¿à¦œà§à¦² à¦¹à¦•', ' à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦•, à¦ªà§à¦°à¦•à¦¾à¦¶à¦¨à¦¾ à¦¸à¦‚à¦¸à§à¦¥à¦¾, à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦¸à¦¦à¦¸à§à¦¯'),
(31, 'à¦¬à¦¿à¦ªà§à¦² à¦•à§à¦®à¦¾à¦° à¦¸à¦¾à¦¹à¦¾', 'à¦¡à§‡à¦ªà§à¦Ÿà¦¿ à¦°à§‡à¦œà¦¿à¦¸à§à¦Ÿà§à¦°à¦¾à¦° (à¦¶à¦¿à¦•à§à¦·à¦¾-à§©), à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿ', 'à¦¸à¦¦à¦¸à§à¦¯-à¦¸à¦šà¦¿à¦¬');

-- --------------------------------------------------------

--
-- Table structure for table `institutes`
--

CREATE TABLE `institutes` (
  `id` int(11) NOT NULL,
  `name` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(20000) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `longitude` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `institutes`
--

INSERT INTO `institutes` (`id`, `name`, `description`, `image`, `latitude`, `longitude`) VALUES
(1, 'Institute of Education and Research', 'Among the institutes of Dhaka University, Institute of Education and Research is the oldest and biggest institution. In short it is known as IER. It was established in November 1959 with the assistance of the United States of Americaâ€™s International development organization (USAID). At present the Institute of Education and Research (IER) of Dhaka University is the leading institution of Bangladesh which offers BA honours, Masters and higher degrees, I also provides extension services and conducts researches in Education. It prepares skilled, specialized manpower and suitable professionals for working in the field of education. Most of its professional staff with overseas post graduate and doctoral degrees, long experiences and varied expertise render consultancy services to support the quality of education at both national and international levels.  The Institute of Education and Research (IER) publishes a journal titled Teachers World twice a year in which research articles in English are published. At present there are 53 teachers. Besides, there are 1 Professor Emeritus, 2 honorary professors and 2 part-time teachers. Currently there are 1400 students in this institution.  Total number of students: Honours		---	610 Masters			---	144 Masters (Evening)	--	650  Institute of Education and Research (IER) offers the following degrees: 1. Four-year Bachelor of Education (Honours) 2. One â€“year Master of Education  3. Evening Master of Education 4. Two-year M.Phil and 5. Ph. D  There are 10 specialized departments in IER:     1. Pre-primary and Primary Education (PPE)     2. Language Education (LE)     3. Social Science Education (SSE)     4. Science, Mathematics and Technology (SMTE)     5. Curriculum and Educational Technology (CET)      6. Educational Administration (EA)     7. Educational Psychology and Guidance (EPG)     8. Educational Evaluation and Research (EER)     9. Nonformal and Continuing Education (NFCE)     10. Special Education (SpE)  					 The faculty of IER has 57 teaching positions and other supporting staff. Enrolment capacity of the institution is 1400 at the undergraduate, postgraduate and doctoral levels. IER publishes a journal titled Teacherâ€™s World on bi-yearly basis. The journal provides an opportunity to publish research and creative articles by the faculty members and other professionals. IER organizes seminars, conferences and colloquiums on burning issues in education. It also organizes short courses for professionals serving in different sectors of education.', 'https://firebasestorage.googleapis.com/v0/b/signindemo-f56a8.appspot.com/o/DU_images%2Fier.jpg?alt=media&token=30614631-0ca2-404a-ba58-ad341023ce42', '23.733658', '90.390378'),
(2, 'Institute of Statistical Research and Training', 'The Institute of Statistical Research and Training, popularly known as ISRT, was established in 1964 by a statute of theÂ University of Dhaka. The renowned scientist Late ProfessorÂ Dr. Qazi Motahar HussainÂ was the founder Director of ISRT. Â Dr. Md. Israt RayhanÂ is theÂ current DirectorÂ (in-charge) of the institute. The main purpose of this institute is toÂ encourage and create theÂ necessary opportunity for higher education and research in Statistics, expand the concepts related to Statistics, undertake training for statisticians, extend assistance to the development plans of different departments and agencies, and conduct research for government, non-government, national and international organizations. The institute has 10 professors, 6 associate professors, 5 assistant professors, 8 lecturers, 1 supernumerary professor and 3 part-time teachers. Currently, about 250 students are studying in different courses in this institute. The Institute offers 4-year Bachelor of Science (BS) (Honors) and 1-year MS degree in Applied Statistics. Ph.D. and M Phil degrees are also offered. ISRT also organizes training programs in SPSS and Stata for students in various disciplines, professionals, and academicians. ISRT maintains a vibrant academic environment encompassing a rich library with over 15,000 collections, and three state-of-the-art computer labs for graduate and undergraduate students. To celebrate the 50thÂ anniversary of the institute, during December 27-29, 2014 an international conference (International Conference on Applied Statistics, ICAS 2014) was arranged. About 120 renowned statisticians from different countries participated in that conference. The Institute is the proud publisher of the Journal of Statistical Research (JSR), a prestigious bi-annual International Journal in Statistical Sciences, published since 1970.', 'https://firebasestorage.googleapis.com/v0/b/signindemo-f56a8.appspot.com/o/DU_images%2Fisrt.jpg?alt=media&token=3a759e0a-aa9d-47b9-a166-5b635203ee5e', '23.728838', '90.398485'),
(3, 'Institute of Business Administration', 'The Institute of Business Administration (IBA), University of Dhaka was founded in 1966 in collaboration with Indiana University, Bloomington, USA, under a Ford Foundation Financial Assistance Program. The main objective of this institute was to provide professional training in business administration. The Institute started its journey with the MBA program in 1966. Later on, BBA program was also started in 1993 Executive MBA Program was launched in 2007; and Doctor of Business Administration (DBA) program was launched in 2013. M.Phil and Ph.D. program were launched in 1970. The institute is the pioneer in business education in Bangladesh and is free from session jam. BBA Program The BBA program is a 4-year professional bachelor degree. The program focuses on the studentsâ€™ education and skill development so that they can take the responsibility as a new employee. This program is also applicable for those who are interested to work in different Government, semi-government, multinational, and social organizations. The main goal of this program is to develop the personality of the students through a blend of business and general education. MBA Program MBA is a professional masterâ€™s degree aimed at developing individual skills and consideration process needed for an effective management. This program focuses on developing the studentâ€™s business evaluation and situation handling skills so that he/she can provide information-based scrutiny in terms of policy preparation and implementation. The program is divided into two parts: A) For the regular students- â€˜Full timeâ€™ and B) For the evening students- â€˜Part Timeâ€™. To complete the program, a full-time student requires a maximum of 6 alternate semesters. On the other hand, a part-time student needs 11 semesters on average to complete the program.  After the completion of courses, BBA and MBA students need to work as an intern for some time to get an initial corporate exposure.   Executive MBA Program In an effort to make the field of business education timely and strong, IBA started Executive MBA Program from May 2007. This program will help employees of different levels and managers become more skillful in their respective fields.     M. Phil & Ph. D Program M. Phil and Ph. D program are for those meritorious students who want to pursue teaching and research as their profession. Although this program is research-related, the students are required to complete seminar, course etc.  Doctor of Business Administration (DBA) Program With a view to providing higher education in business administration, IBA has started Doctor of Business Administration (DBA) program. The institute has gained the highest reputation as a professional training organization in Bangladesh through a mix of developed data and active process in a congenial environment.  à§«à¥¤	à¦‡à¦¨à¦¸à§à¦Ÿà¦¿à¦Ÿà¦¿à¦‰à¦Ÿà§‡à¦° à§¨à§¦à§§à§® à¦¸à¦¾à¦²à§‡à¦° à¦‰à¦²à§à¦²à§‡à¦–à¦¯à§‹à¦—à§à¦¯ à¦•à¦¾à¦°à§à¦¯à¦•à§à¦°à¦®: à§§. à¦—à¦¤ à§¦à§® à¦®à§‡ à§¨à§¦à§§à§® à¦¥à§‡à¦•à§‡ à§§à§§ à¦®à§‡ à§¨à§¦à§§à§® à¦¤à¦¾à¦°à¦¿à¦– à¦ªà¦°à§à¦¯à¦¨à§à¦¤ Association of Management Development Institutions in South Asia (AMDISA) à¦à¦° à¦¸à¦¿à¦¦à§à¦§à¦¾à¦¨à§à¦¤ à¦®à§‹à¦¤à¦¾à¦¬à§‡à¦• à¦¹à§‹à¦¸à§à¦Ÿ à¦¹à¦¿à¦¸à§‡à¦¬à§‡ SAQS Peer Reviewers Workshop à¦†à¦‡à¦¬à¦¿à¦-à¦¤à§‡ à¦…à¦¨à§à¦·à§à¦ à¦¿à¦¤ à¦¹à§Ÿà§‡à¦›à§‡à¥¤ à¦à¦œà¦¨à§à¦¯ à¦ªà§à¦°à¦¾à§Ÿ à§¨à§« à¦¸à¦¦à¦¸à§à¦¯ à¦¬à¦¿à¦¶à¦¿à¦·à§à¦Ÿ à¦‡à¦¨à§à¦¡à¦¿à§Ÿà¦¾à¦¨, à¦¶à§à¦°à§€à¦²à¦‚à¦•à¦¾à¦¨, à¦ªà¦¾à¦•à¦¿à¦¸à§à¦¤à¦¾à¦¨à¦¿ à¦“ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶à§€ à¦¡à§‡à¦²à¦¿à¦—à§‡à¦Ÿà¦¸ à¦ à¦¸à¦®à§Ÿà§‡ à¦¢à¦¾à¦•à¦¾à§Ÿ à¦…à¦¬à¦¸à§à¦¥à¦¾à¦¨ à¦•à¦°à§‡à¦›à§‡à¦¨à¥¤ à§¨. à¦—à¦¤ à§¦à§¨ à¦¨à¦­à§‡à¦®à§à¦¬à¦° à§¨à§¦à§§à§® à¦¤à¦¾à¦°à¦¿à¦– à¦¬à¦™à§à¦—à¦¬à¦¨à§à¦§à§ à¦‡à¦¨à§à¦Ÿà¦¾à¦°à¦¨à§à¦¯à¦¾à¦¶à¦¨à¦¾à¦² à¦•à¦¨à¦­à§‡à¦¨à¦¶à¦¨ à¦¹à¦²à§‡ à¦†à¦‡à¦¬à¦¿à¦â€™à¦° à¦¬à¦¿à¦¬à¦¿à¦â€™à¦° à§¯à§¨ à¦œà¦¨ à¦›à¦¾à¦¤à§à¦°-à¦›à¦¾à¦¤à§à¦°à§€, à¦à¦®à¦¬à¦¿à¦â€™à¦° à§§à§©à§« à¦œà¦¨ à¦›à¦¾à¦¤à§à¦°-à¦›à¦¾à¦¤à§à¦°à§€, à¦‡à¦à¦®à¦¬à¦¿à¦â€™à¦°  à¦¬à¦¿à¦­à¦¿à¦¨à§à¦¨ à¦¬à§à¦¯à¦¾à¦šà§‡à¦° à§¯à§­ à¦œà¦¨ à¦›à¦¾à¦¤à§à¦°-à¦›à¦¾à¦¤à§à¦°à§€à¦° à¦—à§à¦°à¦¾à¦œà§à§Ÿà§‡à¦¶à¦¨ à¦…à¦¨à§à¦·à§à¦ à¦¾à¦¨ à¦…à¦¨à§à¦·à§à¦ à¦¿à¦¤ à¦¹à§Ÿà§‡à¦›à§‡à¥¤ à§©. à§§à§ª à¦†à¦—à¦¸à§à¦Ÿ à§¨à§¦à§§à§® à¦¤à¦¾à¦°à¦¿à¦– à¦œà¦¾à¦¤à§€à§Ÿ à¦¶à§‹à¦• à¦¦à¦¿à¦¬à¦¸ à¦‰à¦ªà¦²à¦•à§à¦·à§à¦¯à§‡ à¦†à¦²à§‹à¦šà¦¨à¦¾ à¦¸à¦­à¦¾à¦° à¦†à§Ÿà§‹à¦œà¦¨ à¦•à¦°à¦¾ à¦¹à§Ÿà§‡à¦›à§‡à¥¤ à¦ªà§à¦°à¦§à¦¾à¦¨ à¦…à¦¤à¦¿à¦¥à¦¿ à¦¹à¦¿à¦¸à§‡à¦¬à§‡ à¦‰à¦ªà¦¸à§à¦¥à¦¿à¦¤ à¦›à¦¿à¦²à§‡à¦¨ à¦‡à¦‰à¦œà¦¿à¦¸à¦¿ à¦šà§‡à§Ÿà¦¾à¦°à¦®à§à¦¯à¦¾à¦¨ à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦†à¦¬à§à¦¦à§à¦² à¦®à¦¾à¦¨à§à¦¨à¦¾à¦¨à¥¤  à§ª. à¦…à¦¸à§à¦Ÿà§à¦°à§‡à¦²à¦¿à§Ÿà¦¾à¦° Griffith University à¦à¦° à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦°à§‡à¦œà¦¾ à¦®à§à¦¨à¦¿à¦® à¦à¦° à¦¸à¦­à¦¾à¦ªà¦¤à¦¿à¦¤à§à¦¬à§‡ Research Methodology à¦à¦° à¦‰à¦ªà¦° à§¦à§® à¦œà§à¦²à¦¾à¦‡ à§¨à§¦à§§à§® à¦¤à¦¾à¦°à¦¿à¦– à¦†à¦‡. à¦¬à¦¿. à¦-à¦à¦° à¦à¦®. à¦«à¦¿à¦²., à¦ªà¦¿à¦à¦‡à¦š. à¦¡à¦¿. à¦“ à¦¡à¦¿. à¦¬à¦¿. à¦. à¦¸à§à¦Ÿà§à¦¡à§‡à¦¨à§à¦Ÿà¦¦à§‡à¦° à¦œà¦¨à§à¦¯ à¦…à¦¨à¦²à¦¾à¦‡à¦¨ à¦¸à§‡à¦®à¦¿à¦¨à¦¾à¦° à¦…à¦¨à§à¦·à§à¦ à¦¿à¦¤ à¦¹à§Ÿà§‡à¦›à§‡à¥¤ à§¬. Bangladesh Society for Human Resource Management (BSHRM) à¦†à§Ÿà§‹à¦œà¦¿à¦¤ à¦…à¦¨à§à¦·à§à¦ à¦¾à¦¨à§‡ à¦†à¦‡à¦¬à¦¿à¦â€™à¦° à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦• à¦¡. à¦¸à§ˆà§Ÿà¦¦ à¦«à¦¾à¦°à¦¹à¦¾à¦¤ à¦†à¦¨à§‹à§Ÿà¦¾à¦° Key Note Speaker à¦¹à¦¿à¦¸à§‡à¦¬à§‡ Ã”Impact of fourth Industrial Revolution in Human Resource Managementâ€™ à¦¶à§€à¦°à§à¦·à¦• à¦¬à¦•à§à¦¤à§ƒà¦¤à¦¾ à¦ªà§à¦°à¦¦à¦¾à¦¨ à¦•à¦°à§‡à¦¨à¥¤  à§­. à¦¬à¦¿à¦­à¦¿à¦¨à§à¦¨ à¦ªà¦¾à¦¬à¦²à¦¿à¦• à¦“ à¦ªà§à¦°à¦¾à¦‡à¦­à§‡à¦Ÿ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿà§‡à¦° à¦›à¦¾à¦¤à§à¦°-à¦›à¦¾à¦¤à§à¦°à§€à¦¦à§‡à¦° à¦…à¦‚à¦¶à¦—à§à¦°à¦¹à¦£à§‡ à¦—à¦¤ à§§à§¦/à§¦à§§/à§¨à§¦à§§à§® à¦¤à¦¾à¦°à¦¿à¦– à¦†à¦‡à¦¬à¦¿à¦ à¦•à¦®à¦¿à¦‰à¦¨à¦¿à¦•à§‡à¦¶à¦¨ à¦•à§à¦²à¦¾à¦¬à§‡à¦° à¦†à¦“à¦¤à¦¾à§Ÿ Brandwitz Competition à¦…à¦¨à§à¦·à§à¦ à¦¿à¦¤ à¦¹à§Ÿà§‡à¦›à§‡à¥¤  à§®. à§§à§«, à§¨à§©, à§¨à§ª à¦“ à§©à§¦ à¦®à¦¾à¦°à§à¦š à§¨à§¦à§§à§® à¦¤à¦¾à¦°à¦¿à¦– HSBC IBA Business Case Competition à¦…à¦¨à§à¦·à§à¦ à¦¿à¦¤ à¦¹à§Ÿà§‡à¦›à§‡à¥¤  à§¯. Campus Session by Coats Bangladesh à¦…à¦¨à§à¦·à§à¦ à¦¿à¦¤ à¦¹à§Ÿà§‡à¦›à§‡ à¦—à¦¤ à§¦à§¯/à§¦à§­/à§§à§® à¦¤à¦¾à¦°à¦¿à¦–à¥¤ à§§à§¦. Bangladesh Brand Forum Road Show à¦…à¦¨à§à¦·à§à¦ à¦¿à¦¤ à¦¹à§Ÿà§‡à¦›à§‡ à¦—à¦¤ à§¨à§¨ à¦…à¦•à§à¦Ÿà§‹à¦¬à¦° à§¨à§¦à§§à§® à¦¤à¦¾à¦°à¦¿à¦–à¥¤ à§§à§§. Unilever Bangladesh Carrier fest à¦…à¦¨à§à¦·à§à¦ à¦¿à¦¤ à¦¹à§Ÿà§‡à¦›à§‡ à¦—à¦¤ à§¦à§ª à¦¡à¦¿à¦¸à§‡à¦®à§à¦¬à¦° à§¨à§¦à§§à§® à¦¤à¦¾à¦°à¦¿à¦–à¥¤', 'https://firebasestorage.googleapis.com/v0/b/signindemo-f56a8.appspot.com/o/DU_images%2Fiba.jpg?alt=media&token=40f76921-c1df-4782-a4f2-ff7f53ff9d9d', '23.734904', '90.393442'),
(4, 'à¦ªà§à¦·à§à¦Ÿà¦¿ à¦“ à¦–à¦¾à¦¦à§à¦¯à¦¬à¦¿à¦œà§à¦žà¦¾à¦¨ à¦‡à¦¨à¦¸à§à¦Ÿà¦¿à¦Ÿà¦¿à¦‰à¦Ÿ', 'à§§à§¯à§«à§­ à¦¸à¦¾à¦²à§‡ à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿà§‡à¦° à¦…à¦§à§€à¦¨à§‡ à¦ªà§à¦°à¦¾à¦£à¦°à¦¸à¦¾à§Ÿà¦¨ à¦¬à¦¿à¦­à¦¾à¦— à¦ªà§à¦°à¦¤à¦¿à¦·à§à¦ à¦¾à¦° à¦ªà¦° à¦ªà§à¦·à§à¦Ÿà¦¿ à¦—à¦¬à§‡à¦·à¦£à¦¾à¦° à¦“à¦ªà¦° à¦•à¦°à§à¦®à¦¤à§Žà¦ªà¦°à¦¤à¦¾ à¦œà§‹à¦°à¦¦à¦¾à¦° à¦¹à§Ÿà¥¤ à§§à§¯à§¬à§¨-à§¬à§ª à¦¸à¦¾à¦²à§‡ à¦ªà§à¦°à¦¥à¦® à¦œà¦¾à¦¤à§€à§Ÿ à¦ªà§à¦·à§à¦Ÿà¦¿ à¦œà¦°à¦¿à¦ª à¦¸à¦®à§à¦ªà¦¨à§à¦¨ à¦•à¦°à¦¾ à¦¹à§Ÿà¥¤ à¦à¦°à¦‡ à¦¸à§à¦ªà¦¾à¦°à¦¿à¦¶à§‡à¦° à¦†à¦²à§‹à¦•à§‡ à§§à§¯à§¬à§¯ à¦¸à¦¾à¦²à§‡ à¦¸à§à¦¬à¦¤à¦¨à§à¦¤à§à¦° à¦ªà§à¦°à¦¤à¦¿à¦·à§à¦ à¦¾à¦¨ à¦¹à¦¿à¦¸à¦¾à¦¬à§‡ â€œà¦ªà§à¦·à§à¦Ÿà¦¿ à¦ªà§à¦°à¦¤à¦¿à¦·à§à¦ à¦¾à¦¨â€ à¦¨à¦¾à¦®à§‡ à¦¢à¦¾à¦•à¦¾ à¦¬à¦¿à¦¶à§à¦¬à¦¬à¦¿à¦¦à§à¦¯à¦¾à¦²à§Ÿà§‡ à¦à¦•à¦Ÿà¦¿ à¦‡à¦¨à¦¸à§à¦Ÿà¦¿à¦Ÿà¦¿à¦‰à¦Ÿ à¦ªà§à¦°à¦¤à¦¿à¦·à§à¦ à¦¿à¦¤ à¦¹à§Ÿ, à¦¯à¦¾ à¦ªà¦°à¦¬à¦°à§à¦¤à§€à¦•à¦¾à¦²à§‡ à¦¨à¦¾à¦® à¦ªà¦°à¦¿à¦¬à¦°à§à¦¤à¦¿à¦¤ à¦¹à§Ÿà§‡ â€˜à¦ªà§à¦·à§à¦Ÿà¦¿ à¦“ à¦–à¦¾à¦¦à§à¦¯ à¦¬à¦¿à¦œà§à¦žà¦¾à¦¨ à¦‡à¦¨à¦¸à§à¦Ÿà¦¿à¦Ÿà¦¿à¦‰à¦Ÿâ€™ à¦•à¦°à¦¾ à¦¹à§Ÿà¥¤ à¦ªà§à¦°à¦¾à¦¥à¦®à¦¿à¦• à¦ªà¦°à§à¦¯à¦¾à§Ÿà§‡ à¦à¦‡ à¦‡à¦¨à¦¸à§à¦Ÿà¦¿à¦Ÿà¦¿à¦‰à¦Ÿà§‡ à¦ªà§à¦·à§à¦Ÿà¦¿ à¦“ à¦–à¦¾à¦¦à§à¦¯à¦¬à¦¿à¦œà§à¦žà¦¾à¦¨ à¦¸à¦®à§à¦ªà¦°à§à¦•à¦¿à¦¤ à¦—à¦¬à§‡à¦·à¦£à¦¾ à¦à¦¬à¦‚ à¦œà¦¾à¦¤à§€à§Ÿ à¦“ à¦®à¦¾à¦  à¦ªà¦°à§à¦¯à¦¾à§Ÿà§‡ à¦¹à¦¾à¦¤à§‡ à¦•à¦²à¦®à§‡ à¦ªà§à¦·à§à¦Ÿà¦¿ à¦¶à¦¿à¦•à§à¦·à¦¾ à¦“ à¦ªà§à¦°à¦¶à¦¿à¦•à§à¦·à¦£ à¦¦à§‡à¦“à§Ÿà¦¾ à¦¹à¦¤à§‹à¥¤ à¦ªà¦¾à¦¶à¦¾à¦ªà¦¾à¦¶à¦¿ à¦ªà§à¦·à§à¦Ÿà¦¿ à¦“ à¦–à¦¾à¦¦à§à¦¯à¦¬à¦¿à¦œà§à¦žà¦¾à¦¨ à¦¸à¦®à§à¦ªà¦°à§à¦•à¦¿à¦¤ à¦‰à¦šà§à¦šà¦¤à¦° à¦¡à¦¿à¦—à§à¦°à¦¿  à¦¯à§‡à¦®à¦¨- à¦à¦®. à¦«à¦¿à¦². à¦“ à¦ªà¦¿à¦à¦‡à¦š. à¦¡à¦¿. à¦•à§‹à¦°à§à¦¸ à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦¨à¦¾ à¦•à¦°à¦¾ à¦¹à¦¤à¥¤ à¦ªà¦°à¦¬à¦°à§à¦¤à§€à¦•à¦¾à¦²à§‡ à§§à§¯à§¯à§§ à¦¸à¦¾à¦² à¦¥à§‡à¦•à§‡ à¦¥à¦¿à¦¸à¦¿à¦¸à¦¸à¦¹ à¦®à¦¾à¦¸à§à¦Ÿà¦¾à¦°à§à¦¸ à¦¡à¦¿à¦—à§à¦°à¦¿ à¦“ à§§à§¯à§¯à§­ à¦¸à¦¾à¦² à¦¥à§‡à¦•à§‡ à§ª à¦¬à§Žà¦¸à¦° à¦®à§‡à§Ÿà¦¾à¦¦à¦¿ à¦ªà§à¦·à§à¦Ÿà¦¿ à¦“ à¦–à¦¾à¦¦à§à¦¯à¦¬à¦¿à¦œà§à¦žà¦¾à¦¨ à¦¬à¦¿à¦·à§Ÿà§‡ à¦¬à¦¿. à¦à¦¸à¦¸à¦¿. à¦…à¦¨à¦¾à¦°à§à¦¸ à¦•à§‹à¦°à§à¦¸ à¦šà¦¾à¦²à§ à¦•à¦°à¦¾ à¦¹à§Ÿà¥¤   à¦à¦›à¦¾à§œà¦¾à¦“ à¦‰à¦šà§à¦šà¦¤à¦° à¦—à¦¬à§‡à¦·à¦£à¦¾à¦° à¦®à¦¾à¦§à§à¦¯à¦®à§‡ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶à§‡ à¦ªà§à¦·à§à¦Ÿà¦¿à¦° à¦¸à¦¾à¦°à§à¦¬à¦¿à¦• à¦…à¦¬à¦¸à§à¦¥à¦¾ à¦¨à¦¿à¦°à§‚à¦ªà¦£ à¦à¦¬à¦‚ à¦¤à§Žà¦¸à¦‚à¦•à§à¦°à¦¾à¦¨à§à¦¤ à¦ªà§à¦°à¦¶à¦¿à¦•à§à¦·à¦£, à¦ªà§à¦·à§à¦Ÿà¦¿ à¦“ à¦…à¦ªà§à¦·à§à¦Ÿà¦¿ à¦¸à¦®à§à¦ªà¦°à§à¦•à§‡ à¦®à§Œà¦²à¦¿à¦• à¦§à¦¾à¦°à¦£à¦¾, à¦œà¦°à§à¦°à¦¿ à¦…à¦¬à¦¸à§à¦¥à¦¾à§Ÿ à¦ªà§à¦·à§à¦Ÿà¦¿ à¦ªà¦°à¦¿à¦šà¦¿à¦¤à¦¿, à¦ªà§à¦°à¦¤à§à¦¯à¦•à§à¦· à¦ªà§à¦·à§à¦Ÿà¦¿ à¦•à¦¾à¦°à§à¦¯à¦•à§à¦°à¦®, à¦¦à§à¦°à§à¦¯à§‹à¦—à¦•à¦¾à¦²à§€à¦¨ à¦…à¦¬à¦¸à§à¦¥à¦¾à§Ÿ à¦ªà§à¦·à§à¦Ÿà¦¿à¦—à¦¤ à¦ªà§à¦°à¦¸à§à¦¤à§à¦¤à¦¿, à¦œà¦°à§à¦°à¦¿ à¦…à¦¬à¦¸à§à¦¥à¦¾à§Ÿ à¦¶à¦¿à¦¶à§à¦° à¦–à¦¾à¦¦à§à¦¯ à¦“ à¦ªà§à¦·à§à¦Ÿà¦¿ à¦‰à¦¨à§à¦¨à§Ÿà¦¨ à¦¬à¦¿à¦·à§Ÿà§‡ à¦ªà§à¦°à¦¶à¦¿à¦•à§à¦·à¦£ à¦ªà§à¦°à¦¦à¦¾à¦¨, à¦¶à¦¿à¦•à§à¦·à¦¾ à¦‰à¦ªà¦•à¦°à¦£ à¦¤à§ˆà¦°à¦¿, à¦œà¦¾à¦¤à§€à§Ÿ à¦“ à¦†à¦¨à§à¦¤à¦°à§à¦œà¦¾à¦¤à¦¿à¦• à¦ªà§à¦°à¦¤à¦¿à¦·à§à¦ à¦¾à¦¨à§‡à¦° à¦¸à¦™à§à¦—à§‡ à¦¬à¦¿à¦·à§Ÿà¦—à¦¤ à¦•à¦°à§à¦®à¦¸à¦‚à¦¯à§‹à¦— à¦—à§œà§‡ à¦¤à§‹à¦²à¦¾ à¦à¦¬à¦‚ à¦¸à§‡à¦®à¦¿à¦¨à¦¾à¦°, à¦¸à¦¿à¦®à§à¦ªà§‹à¦œà¦¿à§Ÿà¦¾à¦®, à¦•à¦¨à¦«à¦¾à¦°à§‡à¦¨à§à¦¸à§‡à¦° à¦†à§Ÿà§‹à¦œà¦¨ à¦•à¦°à¦¾à¥¤  à¦ à¦›à¦¾à§œà¦¾à¦“ à¦¨à¦¿à¦‰à¦Ÿà§à¦°à¦¿à¦¶à¦¨à¦¾à¦² à¦¬à¦¾à§Ÿà§‹à¦•à§‡à¦®à¦¿à¦¸à§à¦Ÿà§à¦°à¦¿, à¦•à§à¦²à¦¿à¦¨à¦¿à¦•à§à¦¯à¦¾à¦² à¦¨à¦¿à¦‰à¦Ÿà§à¦°à¦¿à¦¶à¦¨, à¦«à§à¦¡ à¦¸à¦¾à¦‡à¦¨à§à¦¸, à¦•à¦®à¦¿à¦‰à¦¨à¦¿à¦Ÿà¦¿ à¦¨à¦¿à¦‰à¦Ÿà§à¦°à¦¿à¦¶à¦¨, à¦¨à¦¿à¦‰à¦Ÿà§à¦°à¦¿à¦¶à¦¨ à¦à¦¡à§à¦•à§‡à¦¶à¦¨, à¦¡à¦¾à§Ÿà§‡à¦Ÿà§‡à¦Ÿà¦¿à¦•à¦¸ à¦‡à¦¤à§à¦¯à¦¾à¦¦à¦¿ à¦¸à¦‚à¦¶à§à¦²à¦¿à¦·à§à¦Ÿ à¦¬à¦¿à¦·à§Ÿà§‡ à¦²à§à¦¯à¦¾à¦¬à¦°à§‡à¦Ÿà¦°à¦¿ à¦à¦¬à¦‚ à¦®à¦¾à¦  à¦ªà¦°à§à¦¯à¦¾à§Ÿà§‡ à¦›à¦¾à¦¤à§à¦°-à¦›à¦¾à¦¤à§à¦°à§€à¦°à¦¾ à¦à¦¬à¦‚ à¦¶à¦¿à¦•à§à¦·à¦•à¦°à¦¾ à¦—à¦¬à§‡à¦·à¦£à¦¾ à¦•à¦¾à¦œ à¦¸à§à¦¨à¦¾à¦®à§‡à¦° à¦¸à¦™à§à¦—à§‡ à¦•à¦°à§‡ à¦†à¦¸à¦›à§‡à¦¨à¥¤ à¦à¦•à¦‡à¦­à¦¾à¦¬à§‡ à¦ à¦‡à¦¨à¦¸à§à¦Ÿà¦¿à¦Ÿà¦¿à¦‰à¦Ÿà§‡ â€˜à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦œà¦¾à¦°à§à¦¨à¦¾à¦² à¦…à¦¬ à¦¨à¦¿à¦‰à¦Ÿà§à¦°à¦¿à¦¶à¦¨â€™ à¦¨à¦¾à¦®à§‡ à¦à¦•à¦Ÿà¦¿ à¦—à¦¬à§‡à¦·à¦£à¦¾ à¦œà¦¾à¦°à§à¦¨à¦¾à¦² à¦ªà§à¦°à¦•à¦¾à¦¶à¦¿à¦¤ à¦¹à§Ÿà§‡ à¦†à¦¸à¦›à§‡à¥¤ à¦à¦‡ à¦‡à¦¨à¦¸à§à¦Ÿà¦¿à¦Ÿà¦¿à¦‰à¦Ÿà§‡à¦° à¦ªà§à¦°à¦¥à¦¿à¦¤à¦¯à¦¶à¦¾ à¦¶à¦¿à¦•à§à¦·à¦•à¦—à¦£ à¦¬à¦¿à¦­à¦¿à¦¨à§à¦¨ à¦®à¦¨à§à¦¤à§à¦°à¦£à¦¾à¦²à§Ÿ à¦à¦¬à¦‚ à¦œà¦¾à¦¤à§€à§Ÿ à¦“ à¦†à¦¨à§à¦¤à¦°à§à¦œà¦¾à¦¤à¦¿à¦• à¦¸à¦‚à¦¸à§à¦¥à¦¾à§Ÿ à¦ªà§à¦·à§à¦Ÿà¦¿ à¦“ à¦–à¦¾à¦¦à§à¦¯à¦¬à¦¿à¦œà§à¦žà¦¾à¦¨ à¦¬à¦¿à¦·à§Ÿà§‡ à¦†à¦®à¦¨à§à¦¤à§à¦°à¦£à¦®à§‚à¦²à¦•à¦­à¦¾à¦¬à§‡ à¦ªà¦°à¦¾à¦®à¦°à§à¦¶ à¦¦à¦¿à§Ÿà§‡ à¦œà¦¾à¦¤à§€à§Ÿà¦­à¦¾à¦¬à§‡ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶à§‡à¦° à¦‰à¦¨à§à¦¨à§Ÿà¦¨à§‡ à¦‰à¦²à§à¦²à§‡à¦–à¦¯à§‹à¦—à§à¦¯ à¦…à¦¬à¦¦à¦¾à¦¨ à¦°à¦¾à¦–à¦›à§‡à¦¨à¥¤', 'https://firebasestorage.googleapis.com/v0/b/signindemo-f56a8.appspot.com/o/DU_images%2Finfs.jpg?alt=media&token=d3b420f3-b6a0-4238-b61d-d1dd452aba93', '23.729568', '90.398507'),
(5, 'Institute of Information Technology (IIT) ', 'To create efficient manpower in information technology, the Institute of Information Technology (IIT) was established in June 2001 by converting the erstwhile Computer Centre (estd. in 1985). The Institute offers Bachelor of Science in Software Engineering (BSSE-students admitted under KA-Unit Honours admission test) and Master of Science in Software Engineering (MSSE) degrees. The main theme of BSSE and MSSE is Software Engineering. Considering the market demand of IIT, the Institute has taken the credit of starting the software engineering education in this country. The students of IIT earn about the various issues of information technology and gain practical knowledge. Besides the students, faculties, researchers of IIT are involved in up-to-date research and provide their valuable opinions in the policy and decision making issues of the state. The Post Graduate Diploma in Information Technology (PGDIT) and Master in Information Technology (MIT) are two of the oldest programs, still continuing. IIT also offers MPhil and PhD courses. Training programmes (short course) on Web Design, Web Programming, Computer Network and Internet Applications, Office Applications for Smart Office are offered for both Dhaka University students and outsiders. Package training programmes are also arranged for the Ministry and other Government Institutions. The Institute has seven computer laboratories. The four-storeyed red ceramic IIT Building is in the north-western corner of Dhaka University Science Library and Khondker Mukarram Hossain Science Building area.', 'https://firebasestorage.googleapis.com/v0/b/signindemo-f56a8.appspot.com/o/DU_images%2Fiit.jpg?alt=media&token=9ff009b0-88b7-4b2a-9cc1-ae06213f020f', '23.729009', '90.398309');

-- --------------------------------------------------------

--
-- Table structure for table `office`
--

CREATE TABLE `office` (
  `id` int(50) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(15000) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `longitude` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `office`
--

INSERT INTO `office` (`id`, `name`, `description`, `image`, `latitude`, `longitude`) VALUES
(1, 'Office of the Registrar', 'According to the Presidents Order No.11 of 1973, Article 15 The Registrar shall act as Secretary of the Senate, the Syndicate and the Academic Council. He shall maintain a register of registered graduates in accordance with the Statutes and shall exercise such other powers as may be prescribed by the Statutes and the University Ordinances.', 'https://firebasestorage.googleapis.com/v0/b/ohno-4fdcd.appspot.com/o/Office%2F8_reg_building.jpg?alt=media&token=c29b2820-f3b7-4050-b685-71adc8a8435b', '0', '0'),
(2, 'Office of the Controller of Examinations', 'The office of the Controller of Examinations is one of the largest and most important office of the University of Dhaka. During the foundation of this University in 1921 there was no separate entity of this office. The total functions related to Examinations were performed by the Examination section of Registrar office. At that time the Registrar discharged the duties in addition, which is now discharged by the Controller of Examinations.\r\n\r\nIt was the only University in the Eastern zone of undivided Bengal and at that time there was no affiliated or constituent Colleges under this University. Due to termination of British realm and independence of India and Pakistan fiftyfive Colleges of East Bengal which were under the University of Calcutta came within the jurisdiction of the University of Dhaka in 1948. ', '', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `provost_of_hall`
--

CREATE TABLE `provost_of_hall` (
  `id` int(11) NOT NULL,
  `hall_name` varchar(1500) COLLATE utf8_unicode_ci NOT NULL,
  `provost_name` varchar(1500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `provost_of_hall`
--

INSERT INTO `provost_of_hall` (`id`, `hall_name`, `provost_name`) VALUES
(1, 'à¦¸à¦²à¦¿à¦®à§à¦²à§à¦²à¦¾à¦¹ à¦®à§à¦¸à¦²à¦¿à¦® à¦¹à¦² ', 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦®à§‹. à¦®à¦¾à¦¹à¦¬à§à¦¬à§à¦² à¦†à¦²à¦® à¦œà§‹à§Ÿà¦¾à¦°à§à¦¦à¦¾à¦° (à§§à§§-à§§à§¨-à§§à§¯ à¦ªà¦°à§à¦¯à¦¨à§à¦¤)'),
(2, 'à¦¡. à¦®à§à¦¹à¦®à§à¦®à¦¦ à¦¶à¦¹à§€à¦¦à§à¦²à§à¦²à¦¾à¦¹à§â€Œ à¦¹à¦²', ' à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦¸à§ˆà§Ÿà¦¦ à¦¹à§à¦®à¦¾à§Ÿà§à¦¨ à¦†à¦–à¦¤à¦¾à¦°'),
(3, 'à¦œà¦—à¦¨à§à¦¨à¦¾à¦¥ à¦¹à¦² ', 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦®à¦¿à¦¹à¦¿à¦° à¦²à¦¾à¦² à¦¸à¦¾à¦¹à¦¾'),
(4, 'à¦«à¦œà¦²à§à¦² à¦¹à¦• à¦®à§à¦¸à¦²à¦¿à¦® à¦¹à¦²', ' à¦¡. à¦®à§‹. à¦…à¦²à¦¿à¦‰à¦° à¦°à¦¹à¦®à¦¾à¦¨ (à¦­à¦¾à¦°à¦ªà§à¦°à¦¾à¦ªà§à¦¤)'),
(5, 'à¦¶à¦¹à§€à¦¦ à¦¸à¦¾à¦°à§à¦œà§‡à¦¨à§à¦Ÿ à¦œà¦¹à§à¦°à§à¦² à¦¹à¦• à¦¹à¦²', 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦¦à§‡à¦²à§‹à§Ÿà¦¾à¦° à¦¹à§‹à¦¸à§‡à¦¨ (à§¨à§¨-à§§à§§-à§§à§¯ à¦ªà¦°à§à¦¯à¦¨à§à¦¤)'),
(6, 'à¦®à¦¾à¦¸à§à¦Ÿà¦¾à¦°â€™à¦¦à¦¾ à¦¸à§‚à¦°à§à¦¯ à¦¸à§‡à¦¨ à¦¹à¦²', 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦®à§‹. à¦®à¦•à¦¬à§à¦² à¦¹à§‹à¦¸à§‡à¦¨ à¦­à§‚à¦à¦‡à§Ÿà¦¾'),
(7, 'à¦¹à¦¾à¦œà§€ à¦®à§à¦¹à¦®à§à¦®à¦¦ à¦®à§à¦¹à¦¸à§€à¦¨ à¦¹à¦²', 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦®à§‹. à¦¨à¦¿à¦œà¦¾à¦®à§à¦² à¦¹à¦• à¦­à§‚à¦‡à§Ÿà¦¾'),
(8, 'à¦•à¦¬à¦¿ à¦œà¦¸à§€à¦® à¦‰à¦¦à§â€Œà¦¦à§€à¦¨ à¦¹à¦²', 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦®à§‹. à¦°à¦¹à¦®à¦¤ à¦‰à¦²à§à¦²à¦¾à¦¹'),
(9, 'à¦¸à§à¦¯à¦¾à¦° à¦. à¦à¦«. à¦°à¦¹à¦®à¦¾à¦¨ à¦¹à¦²', 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦•à§‡ à¦à¦® à¦¸à¦¾à¦‡à¦«à§à¦² à¦‡à¦¸à¦²à¦¾à¦® à¦–à¦¾à¦¨'),
(10, 'à¦®à§à¦•à§à¦¤à¦¿à¦¯à§‹à¦¦à§à¦§à¦¾ à¦œà¦¿à§Ÿà¦¾à¦‰à¦° à¦°à¦¹à¦®à¦¾à¦¨ à¦¹à¦²', 'à¦…à¦§à§à¦¯à¦¾à¦ªà¦• à¦¡. à¦œà¦¿à§Ÿà¦¾ à¦°à¦¹à¦®à¦¾à¦¨');

-- --------------------------------------------------------

--
-- Table structure for table `specific_calendar`
--

CREATE TABLE `specific_calendar` (
  `eventid` int(50) NOT NULL,
  `dept_name` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `academic_year` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `eventname` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(15000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `specific_calendar`
--

INSERT INTO `specific_calendar` (`eventid`, `dept_name`, `academic_year`, `date`, `eventname`, `description`) VALUES
(1, 'Institute of Information Technology', '1st year', '06/01/2019', 'Beginning of class', 'Start of 1st semester classes'),
(2, 'Institute of Information Technology', '1st year', '30/04/2019', 'End of class', 'End of 1st semester classes'),
(3, 'Institute of Information Technology', '1st year', '03/03/2019', 'Mid term exam', 'Beginning of mid term exam date'),
(4, 'Institute of Information Technology', '1st year', '10/03/2019', 'Mid term exam', 'End of mid term exam date'),
(5, 'Institute of Information Technology', '1st year', '26/05/2019', 'Semester final', 'End of first semester final exam date'),
(6, 'Institute of Information Technology', '1st year', '01/07/2019', 'Beginning of second semester', 'Start of 2nd semester classes'),
(7, 'Institute of Information Technology', '1st year', '31/10/2019', 'End of second semester class', 'Official end of second semester class'),
(8, 'Institute of Information Technology', '1st year', '01/09/2019', 'Mid term exam', 'Beginning of mid term exam '),
(9, 'Institute of Information Technology', '1st year', '07/09/2019', 'Mid term exam', 'End of mid term exam '),
(10, 'Institute of Information Technology', '1st year', '11/11/2019', 'Semester final exam', 'Start of second semester final exam'),
(11, 'Institute of Information Technology', '1st year', '28/11/2019', 'Semester final exam', 'End of second semester final exam'),
(12, 'Institute of Information Technology', '1st year', '08/05/2019', 'Semester final exam', 'Start of first semester final exam'),
(13, 'Institute of Information Technology', '2nd year', '06/01/2019', 'Beginning of class', 'Start of 3rd semester classes'),
(14, 'Institute of Information Technology', '2nd year', '30/04/2019', 'End of class', 'End of 3rd semester classes'),
(15, 'Institute of Information Technology', '2nd year', '06/03/2019', 'Mid term exam', 'Start of mid term exam'),
(16, 'Institute of Information Technology', '2nd year', '10/03/2019', 'Mid term exam', 'End of mid term exam'),
(17, 'Institute of Information Technology', '2nd year', '08/05/2019', 'Semester final exam', 'Start of 3rd semester final exam'),
(18, 'Institute of Information Technology', '2nd year', '26/05/2019', 'Semester final exam', 'End of 3rd semester final exam'),
(19, 'Institute of Information Technology', '2nd year', '02/07/2019', 'Beginning of class', 'Start of 4th semester classes'),
(20, 'Institute of Information Technology', '2nd year', '31/10/2019', 'End of class', 'End of 4th semester classes'),
(21, 'Institute of Information Technology', '2nd year', '01/09/2019', 'Mid term exam', 'Beginning of mid term exam '),
(22, 'Institute of Information Technology', '2nd year', '07/09/2019', 'Mid term exam', 'End of mid term exam '),
(23, 'Institute of Information Technology', '2nd year', '11/11/2019', 'Semester final exam', 'Start of 4th semester final exam'),
(24, 'Institute of Information Technology', '2nd year', '28/11/2019', 'Semester final exam', 'End of 4th semester final exam'),
(25, 'Institute of Information Technology', '3rd year', '06/01/2019', 'Beginning of class', 'Start of 5th semester classes'),
(26, 'Institute of Information Technology', '3rd year', '30/04/2019', 'End of class', 'End of 5th semester classes'),
(27, 'Institute of Information Technology', '3rd year', '06/03/2019', 'Mid term exam', 'Beginning of mid term exam '),
(28, 'Institute of Information Technology', '3rd year', '10/03/2019', 'Mid term exam', 'End of mid term exam '),
(29, 'Institute of Information Technology', '3rd year', '08/05/2019', 'Semester final exam', 'Start of 5th semester final exam'),
(30, 'Institute of Information Technology', '3rd year', '26/05/2019', 'Semester final exam', 'End of 5th semester final exam'),
(31, 'Institute of Information Technology', '3rd year', '02/07/2019', 'Beginning of class', 'Start of 6th semester classes'),
(32, 'Institute of Information Technology', '3rd year', '31/10/2019', 'End of class', 'End of 6th semester classes'),
(33, 'Institute of Information Technology', '3rd year', '01/09/2019', 'Mid term exam', 'Beginning of mid term exam '),
(34, 'Institute of Information Technology', '3rd year', '07/09/2019', 'Mid term exam', 'End of mid term exam '),
(35, 'Institute of Information Technology', '3rd year', '11/11/2019', 'Semester final exam', 'Start of 6th semester final exam'),
(36, 'Institute of Information Technology', '3rd year', '28/11/2019', 'Semester final exam', 'End of 6th semester final exam'),
(37, 'Institute of Information Technology', '4th year', '06/01/2019', 'Beginning of class', 'Start of 7th semester classes'),
(38, 'Institute of Information Technology', '4th year', '30/04/2019', 'End of class', 'End of 7th semester classes'),
(39, 'Institute of Information Technology', '4th year', '03/03/2019', 'Mid term exam', 'Beginning of mid term exam '),
(40, 'Institute of Information Technology', '4th year', '10/03/2019', 'Mid term exam', 'End of mid term exam '),
(41, 'Institute of Information Technology', '4th year', '08/05/2019', 'Semester final exam', 'Start of 7th semester final exam'),
(42, 'Institute of Information Technology', '4th year', '26/05/2019', 'Semester final exam', 'End of 7th semester final exam'),
(43, 'Institute of Information Technology', '4th year', '02/07/2019', 'Beginning of class', 'Start of 8th semester classes'),
(44, 'Institute of Information Technology', '4th year', '31/10/2019', 'End of class', 'End of 8th semester classes'),
(45, 'Institute of Information Technology', '4th year', '01/09/2019', 'Mid term exam', 'Beginning of mid term exam '),
(46, 'Institute of Information Technology', '4th year', '07/09/2019', 'Mid term exam', 'End of mid term exam '),
(47, 'Institute of Information Technology', '4th year', '11/11/2019', 'Semester final exam', 'Start of 8th semester final exam'),
(48, 'Institute of Information Technology', '4th year', '28/11/2019', 'Semester final exam', 'End of 8th semester final exam');

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE `transport` (
  `id` int(50) NOT NULL,
  `busName` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `routeName` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `busType` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `runType` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `time` varchar(300) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `transport`
--

INSERT INTO `transport` (`id`, `busName`, `routeName`, `busType`, `runType`, `time`) VALUES
(1, 'Chytali', 'Curzon to Mirpur', 'BRTC', 'UP', '7.00 am'),
(2, 'Chytali', 'Curzon to Mirpur', 'BRTC', 'UP', '7.30 am'),
(3, 'Chytali', 'Curzon to Mirpur', 'BRTC', 'UP', '8.40 am'),
(4, 'Chytali', 'Curzon to Mirpur', 'BRTC', 'UP', '9.50 am'),
(5, 'Chytali', 'Curzon to Mirpur', 'BRTC', 'DOWN', '1.00 pm'),
(6, 'Chytali', 'Curzon to Mirpur', 'BRTC', 'DOWN', '2.10 pm'),
(7, 'Chytali', 'Curzon to Mirpur', 'BRTC', 'DOWN', '3.20 pm'),
(8, 'Chytali', 'Curzon to Mirpur', 'BRTC', 'DOWN', '4.00 pm'),
(9, 'Chytali', 'Curzon to Mirpur', 'BRTC', 'DOWN', '4.30 pm'),
(10, 'Chytali', 'Curzon to Mirpur', 'BRTC', 'DOWN', '5.00 pm'),
(11, 'Chytali', 'Curzon to Mirpur', 'BRTC', 'DOWN', '5.30 pm'),
(12, 'Torongo', 'Curzon to Mohammodpur', 'BRTC', 'UP', '6.50 am'),
(13, 'Torongo', 'Curzon to Mohammodpur', 'BRTC', 'UP', '7.10 am'),
(14, 'Torongo', 'Curzon to Mohammodpur', 'BRTC', 'UP', '7.40 am'),
(15, 'Torongo', 'Curzon to Mohammodpur', 'BRTC', 'UP', '8.15 am'),
(16, 'Torongo', 'Curzon to Mohammodpur', 'BRTC', 'UP', '9.00 am'),
(17, 'Torongo', 'Curzon to Mohammodpur', 'BRTC', 'UP', '10.00 am'),
(18, 'Torongo', 'Curzon to Mohammodpur', 'BRTC', 'DOWN', '12.10 pm'),
(19, 'Torongo', 'Curzon to Mohammodpur', 'BRTC', 'DOWN', '1.30 pm'),
(20, 'Torongo', 'Curzon to Mohammodpur', 'BRTC', 'DOWN', '2.20 pm'),
(21, 'Torongo', 'Curzon to Mohammodpur', 'BRTC', 'DOWN', '3.20 pm'),
(22, ' Baishakhi', 'Kochukhet to Curzon Hall', 'BRTC', 'UP', '6.30 am'),
(23, ' Baishakhi', 'Kochukhet to Curzon Hall', 'BRTC', 'UP', '7.00 am'),
(24, ' Baishakhi', 'Kochukhet to Curzon Hall', 'BRTC', 'UP', '7.30 am'),
(25, ' Baishakhi', 'Kochukhet to Curzon Hall', 'BRTC', 'UP', '8.20 am'),
(26, ' Baishakhi', 'Kochukhet to Curzon Hall', 'BRTC', 'UP', '9.00 am'),
(27, ' Baishakhi', 'Kochukhet to Curzon Hall', 'BRTC', 'UP', '9.45 am'),
(28, ' Baishakhi', ' Curzon Hall to Kochukhet ', 'BRTC', 'DOWN', '12.30 pm'),
(29, ' Baishakhi', ' Curzon Hall to Kochukhet ', 'BRTC', 'DOWN', '1.10 pm'),
(30, ' Baishakhi', ' Curzon Hall to Kochukhet ', 'BRTC', 'DOWN', '2.20 pm'),
(31, ' Baishakhi', ' Curzon Hall to Kochukhet ', 'BRTC', 'DOWN', '3.30 pm'),
(32, ' Baishakhi', ' Curzon Hall to Kochukhet ', 'BRTC', 'DOWN', '4.30 pm'),
(33, ' Baishakhi', ' Curzon Hall to Kochukhet ', 'BRTC', 'DOWN', '530 pm'),
(34, 'Khonika', 'Tongi / Gazipur to Curzon Hall', 'BRTC', 'UP', '5.50 am'),
(35, 'Khonika', 'Tongi / Gazipur to Curzon Hall', 'BRTC', 'UP', '6.20 am'),
(36, 'Khonika', 'Tongi / Gazipur to Curzon Hall', 'BRTC', 'UP', '6.35 am'),
(37, 'Khonika', 'Tongi / Gazipur to Curzon Hall', 'BRTC', 'UP', '6.40 am'),
(38, 'Khonika', 'Tongi / Gazipur to Curzon Hall', 'BRTC', 'UP', '6.50 am'),
(39, 'Khonika', 'Tongi / Gazipur to Curzon Hall', 'BRTC', 'UP', '7.30 am'),
(40, 'Khonika', 'Tongi / Gazipur to Curzon Hall', 'BRTC', 'UP', '8.15 am'),
(41, 'Khonika', 'Tongi / Gazipur to Curzon Hall', 'BRTC', 'UP', '9.30 am'),
(42, 'Khonika', 'Curzon Hall to  Tongi / Gazipur', 'BRTC', 'DOWN', '12.10 pm'),
(43, 'Khonika', 'Curzon Hall to  Tongi / Gazipur', 'BRTC', 'DOWN', '1.10 pm'),
(44, 'Khonika', 'Curzon Hall to  Tongi / Gazipur', 'BRTC', 'DOWN', '1.50 pm'),
(45, 'Khonika', 'Curzon Hall to  Tongi / Gazipur', 'BRTC', 'DOWN', '2.30 pm'),
(46, 'Khonika', 'Curzon Hall to  Tongi / Gazipur', 'BRTC', 'DOWN', '3.30 pm'),
(47, 'Khonika', 'Curzon Hall to  Tongi / Gazipur', 'BRTC', 'DOWN', '4.15 pm'),
(48, 'Khonika', 'Curzon Hall to  Tongi / Gazipur', 'BRTC', 'DOWN', '5.00 pm'),
(49, 'Khonika', 'Curzon Hall to  Tongi / Gazipur', 'BRTC', 'DOWN', '5.30 pm'),
(50, 'Hemanta', ' Savar / Nabinagar to  Curzon Hal', 'DU', 'UP', '6.20 am'),
(51, 'Hemanta', ' Savar / Nabinagar to  Curzon Hal', 'BRTC', 'UP', '7.30 am'),
(52, 'Hemanta', ' Savar / Nabinagar to  Curzon Hal', 'DU', 'UP', '8.00 am'),
(53, 'Hemanta', '  Curzon Hal to Savar / Nabinagar ', 'DU', 'DOWN', '1.10 pm from à¦®à¦² à¦šà¦¤à§à¦¬à¦°'),
(54, 'Hemanta', '  Curzon Hal to Savar / Nabinagar ', 'DU', 'DOWN', '3.10 pm from à¦®à¦² à¦šà¦¤à§à¦¬à¦°'),
(55, 'Hemanta', '  Curzon Hal to Savar / Nabinagar ', 'BRTC', 'DOWN', '5.00 pm from à¦•à¦¾à¦°à§à¦œà¦¨ à¦¹à¦²');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `board_of_proctor`
--
ALTER TABLE `board_of_proctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calendar`
--
ALTER TABLE `calendar`
  ADD PRIMARY KEY (`eventid`);

--
-- Indexes for table `calendarCse`
--
ALTER TABLE `calendarCse`
  ADD PRIMARY KEY (`eventid`);

--
-- Indexes for table `chairman_of_dept`
--
ALTER TABLE `chairman_of_dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `club`
--
ALTER TABLE `club`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dean`
--
ALTER TABLE `dean`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `director_of_institute`
--
ALTER TABLE `director_of_institute`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `editorial_committee`
--
ALTER TABLE `editorial_committee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exciting_place`
--
ALTER TABLE `exciting_place`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty_of_arts`
--
ALTER TABLE `faculty_of_arts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty_of_biological_sciences`
--
ALTER TABLE `faculty_of_biological_sciences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty_of_business_studies`
--
ALTER TABLE `faculty_of_business_studies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty_of_du`
--
ALTER TABLE `faculty_of_du`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty_of_earth_and_environmental_sciences`
--
ALTER TABLE `faculty_of_earth_and_environmental_sciences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty_of_education`
--
ALTER TABLE `faculty_of_education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty_of_engineering_and_technology`
--
ALTER TABLE `faculty_of_engineering_and_technology`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty_of_fine_art`
--
ALTER TABLE `faculty_of_fine_art`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty_of_law`
--
ALTER TABLE `faculty_of_law`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty_of_medicine`
--
ALTER TABLE `faculty_of_medicine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty_of_pharmacy`
--
ALTER TABLE `faculty_of_pharmacy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty_of_postgraduate_medical_science_and_research`
--
ALTER TABLE `faculty_of_postgraduate_medical_science_and_research`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty_of_sciences`
--
ALTER TABLE `faculty_of_sciences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty_of_social_sciences`
--
ALTER TABLE `faculty_of_social_sciences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hall`
--
ALTER TABLE `hall`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `head_of_du`
--
ALTER TABLE `head_of_du`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `head_of_office`
--
ALTER TABLE `head_of_office`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_of_du`
--
ALTER TABLE `history_of_du`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `implementation_committee`
--
ALTER TABLE `implementation_committee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `institutes`
--
ALTER TABLE `institutes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `office`
--
ALTER TABLE `office`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provost_of_hall`
--
ALTER TABLE `provost_of_hall`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specific_calendar`
--
ALTER TABLE `specific_calendar`
  ADD PRIMARY KEY (`eventid`);

--
-- Indexes for table `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `board_of_proctor`
--
ALTER TABLE `board_of_proctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `calendar`
--
ALTER TABLE `calendar`
  MODIFY `eventid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
--
-- AUTO_INCREMENT for table `calendarCse`
--
ALTER TABLE `calendarCse`
  MODIFY `eventid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `chairman_of_dept`
--
ALTER TABLE `chairman_of_dept`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `club`
--
ALTER TABLE `club`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `dean`
--
ALTER TABLE `dean`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `director_of_institute`
--
ALTER TABLE `director_of_institute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `editorial_committee`
--
ALTER TABLE `editorial_committee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `exciting_place`
--
ALTER TABLE `exciting_place`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `faculty_of_arts`
--
ALTER TABLE `faculty_of_arts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `faculty_of_biological_sciences`
--
ALTER TABLE `faculty_of_biological_sciences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `faculty_of_business_studies`
--
ALTER TABLE `faculty_of_business_studies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `faculty_of_du`
--
ALTER TABLE `faculty_of_du`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `faculty_of_earth_and_environmental_sciences`
--
ALTER TABLE `faculty_of_earth_and_environmental_sciences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `faculty_of_education`
--
ALTER TABLE `faculty_of_education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `faculty_of_engineering_and_technology`
--
ALTER TABLE `faculty_of_engineering_and_technology`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `faculty_of_fine_art`
--
ALTER TABLE `faculty_of_fine_art`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `faculty_of_law`
--
ALTER TABLE `faculty_of_law`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `faculty_of_medicine`
--
ALTER TABLE `faculty_of_medicine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `faculty_of_pharmacy`
--
ALTER TABLE `faculty_of_pharmacy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `faculty_of_postgraduate_medical_science_and_research`
--
ALTER TABLE `faculty_of_postgraduate_medical_science_and_research`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `faculty_of_sciences`
--
ALTER TABLE `faculty_of_sciences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `faculty_of_social_sciences`
--
ALTER TABLE `faculty_of_social_sciences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hall`
--
ALTER TABLE `hall`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1134;
--
-- AUTO_INCREMENT for table `head_of_du`
--
ALTER TABLE `head_of_du`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `head_of_office`
--
ALTER TABLE `head_of_office`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `history_of_du`
--
ALTER TABLE `history_of_du`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `implementation_committee`
--
ALTER TABLE `implementation_committee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `institutes`
--
ALTER TABLE `institutes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `office`
--
ALTER TABLE `office`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `provost_of_hall`
--
ALTER TABLE `provost_of_hall`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `specific_calendar`
--
ALTER TABLE `specific_calendar`
  MODIFY `eventid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `transport`
--
ALTER TABLE `transport`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
