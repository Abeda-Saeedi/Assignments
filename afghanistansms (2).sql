-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 08, 2025 at 04:44 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `afghanistansms`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_table`
--

DROP TABLE IF EXISTS `about_table`;
CREATE TABLE IF NOT EXISTS `about_table` (
  `ID` int(90) NOT NULL AUTO_INCREMENT,
  `About_Title` varchar(400) NOT NULL,
  `About_Info` varchar(900) NOT NULL,
  `Picture` varchar(600) NOT NULL,
  `Visiblity` enum('show','hide') NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `about_table`
--

INSERT INTO `about_table` (`ID`, `About_Title`, `About_Info`, `Picture`, `Visiblity`) VALUES
(4, 'About Us', 'Lorem ipsum dolor sit amet, consectetur adipisicing. Ut quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '360089402_656303316530315_4135041923539868731_n.jpg', 'show'),
(8, 'About', ' velisse cillum dolore eu fugiat nulla pariatur. xcepteur sint occaecat cupidatat non proident, sun', 'mansion-nature-scene_1308-29621.jpg', 'hide');

-- --------------------------------------------------------

--
-- Table structure for table `about_us_table`
--

DROP TABLE IF EXISTS `about_us_table`;
CREATE TABLE IF NOT EXISTS `about_us_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(100) NOT NULL,
  `Description` varchar(300) NOT NULL,
  `Picture` varchar(600) NOT NULL,
  `Visiblity` enum('show','hide') NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `about_us_table`
--

INSERT INTO `about_us_table` (`ID`, `Title`, `Description`, `Picture`, `Visiblity`) VALUES
(2, 'Why Choose Us?', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', 'childern.jpg', 'show');

-- --------------------------------------------------------

--
-- Table structure for table `admissions_condition`
--

DROP TABLE IF EXISTS `admissions_condition`;
CREATE TABLE IF NOT EXISTS `admissions_condition` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(100) NOT NULL,
  `Description` varchar(400) NOT NULL,
  `First_Condition` varchar(200) NOT NULL,
  `Second_Condition` varchar(200) NOT NULL,
  `Third_Condition` varchar(200) NOT NULL,
  `Fourth_Condition` varchar(150) NOT NULL,
  `Picture` varchar(600) NOT NULL,
  `Visiblity` enum('show','hide') NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admissions_condition`
--

INSERT INTO `admissions_condition` (`ID`, `Title`, `Description`, `First_Condition`, `Second_Condition`, `Third_Condition`, `Fourth_Condition`, `Picture`, `Visiblity`) VALUES
(1, 'Conditions of inclusion', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'A completed admission form', 'A copy of your childâ€™s birth certificate or passport as proof of age', 'The most recent completed immunization record', 'School transfer records if applicable', 'pop-up-school-book_1308-25894.jpg', 'show');

-- --------------------------------------------------------

--
-- Table structure for table `discounts_table`
--

DROP TABLE IF EXISTS `discounts_table`;
CREATE TABLE IF NOT EXISTS `discounts_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Person` varchar(100) NOT NULL,
  `Discounts` varchar(100) NOT NULL,
  `Visiblity` enum('show','hide') NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `discounts_table`
--

INSERT INTO `discounts_table` (`ID`, `Person`, `Discounts`, `Visiblity`) VALUES
(1, '3', '1-100%', 'show'),
(3, '6', '2-100%', 'show');

-- --------------------------------------------------------

--
-- Table structure for table `employee_table`
--

DROP TABLE IF EXISTS `employee_table`;
CREATE TABLE IF NOT EXISTS `employee_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Picture` varchar(600) NOT NULL,
  `Visiblity` enum('show','hide') NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee_table`
--

INSERT INTO `employee_table` (`ID`, `Name`, `Email`, `Description`, `Picture`, `Visiblity`) VALUES
(1, 'Sara Safai', 'Sara123@gmail.com', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'team-1.jpg', 'show'),
(3, 'Hosna Shahada', 'Hosan123@gmail.com', 'empor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam incididunt ut labore et dolore magna aliqua.', 'team-3.jpg', 'show'),
(4, 'Ali Ahmad', 'Ali123@gmail.com', 'empor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam incididunt ut labore et dolore magna aliqua.', 'team-4.jpg', 'show');

-- --------------------------------------------------------

--
-- Table structure for table `facilities_table`
--

DROP TABLE IF EXISTS `facilities_table`;
CREATE TABLE IF NOT EXISTS `facilities_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Picture` varchar(600) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `Visiblity` enum('show','hide') NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `facilities_table`
--

INSERT INTO `facilities_table` (`ID`, `Picture`, `Description`, `Visiblity`) VALUES
(1, 'Facility-3.jpg', 'A safe and secured learning environment forstudents needs effective policies.', 'show'),
(3, 'Facility-1.jpg', 'A safe and secured learning environment forstudents needs effective policies.', 'show'),
(4, 'Facility-5.jpg', 'A safe and secured learning environment forstudents needs effective policies.', 'hide'),
(5, 'Facility-6.jpg', 'A safe and secured learning environment forstudents needs effective policies.', 'show'),
(6, 'Facility-2.jpg', 'A safe and secured learning environment forstudents needs effective policies.', 'show'),
(7, 'Facility-7.jpg', ' A safe and secured learning environment forstudents needs effective policies.', 'show'),
(8, 'Facility.jpg', 'A safe and secured learning environment forstudents needs effective policies.', 'show');

-- --------------------------------------------------------

--
-- Table structure for table `facility_table`
--

DROP TABLE IF EXISTS `facility_table`;
CREATE TABLE IF NOT EXISTS `facility_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title_Facilities` varchar(100) NOT NULL,
  `Description_Facilities` varchar(500) NOT NULL,
  `Facilities_Picture` varchar(600) NOT NULL,
  `Visiblity` enum('show','hide') NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `facility_table`
--

INSERT INTO `facility_table` (`ID`, `Title_Facilities`, `Description_Facilities`, `Facilities_Picture`, `Visiblity`) VALUES
(1, 'FACILITIES', 'Lorem dolor sit , consectr adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magnaua. Lorem dolor sit amet, consectr adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magnauaLorem dolor sit amet, consectr adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magnaua', '347113121_641889990650547_2617971876715186684_n.jpg', 'hide'),
(3, 'CAMPUS & FACILITIES', 'Lorem dolor sit , consectr adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magnaua. Lorem dolor sit amet, consectr adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magnauaLorem dolor sit amet, consectr adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magnaua', '337237550_715394456955764_5130535951406736173_n.jpg', 'show');

-- --------------------------------------------------------

--
-- Table structure for table `fees_table`
--

DROP TABLE IF EXISTS `fees_table`;
CREATE TABLE IF NOT EXISTS `fees_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Class` varchar(100) NOT NULL,
  `First_Semester` varchar(100) NOT NULL,
  `Second_Semester` varchar(200) NOT NULL,
  `Third_Semester` varchar(100) NOT NULL,
  `Discount` varchar(100) NOT NULL,
  `installments` varchar(100) NOT NULL,
  `Visiblity` enum('show','hide') NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fees_table`
--

INSERT INTO `fees_table` (`ID`, `Class`, `First_Semester`, `Second_Semester`, `Third_Semester`, `Discount`, `installments`, `Visiblity`) VALUES
(1, '1st', '100$', '100$', '100$', '20%', '2', 'show'),
(4, '2nd', '100$', '100$', '100$', '20%', '2', 'show'),
(5, '3rd', '100$', '100$', '100$', '20%', '2', 'show'),
(6, '4th', '150$', '150$', '150$', '20%', '3', 'show'),
(7, '5th', '150$', '150$', '150$', '20%', '3', 'show'),
(8, '6th', '150$', '150$', '150$', '20%', '3', 'show'),
(9, '7th', '200$', '200$', '200$', '25%', '3', 'show'),
(10, '8th', '200$', '200$', '200$', '25%', '3', 'show'),
(11, '9th', '200$', '200$', '200$', '25%', '3', 'show'),
(12, '10', '250$', '250$', '250$', '30%', '3', 'show'),
(13, '11th', '250$', '250$', '250$', '30%', '3', 'show'),
(14, '12th', '250$', '250$', '250$', '30%', '3', 'show');

-- --------------------------------------------------------

--
-- Table structure for table `form_page`
--

DROP TABLE IF EXISTS `form_page`;
CREATE TABLE IF NOT EXISTS `form_page` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(90) NOT NULL,
  `Phone` varchar(19) NOT NULL,
  `Comment` varchar(500) NOT NULL,
  `Insertion_Date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `form_page`
--

INSERT INTO `form_page` (`ID`, `Name`, `Phone`, `Comment`, `Insertion_Date`) VALUES
(6, 'Laila', '07829023499', 'tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '2023-07-11 20:52:26'),
(7, 'pppp', 'safe.baba@gmail.com', 'nm jhjh jkhj', '2023-10-10 11:04:06'),
(8, 'mmm', 'mj ds', 'jjkj', '2023-10-10 11:26:56'),
(9, 'sara', 'sarajj@gmail.com', 'nkjk kjlkj', '2023-10-10 11:37:26'),
(10, 'kjskdj', 'jkkl djkjsl', 'njklj', '2023-10-10 11:39:47'),
(11, 'pppp', 'baba@gmail.com', 'kjlkjkl', '2023-10-10 21:15:11'),
(12, 'pppp', 'safe.baba@gmail.com', 'njklkj', '2023-10-10 21:18:35'),
(13, 'ali', 'aaa1232gmail.com', 'jk jkja kjdk', '2023-10-10 21:19:15');

-- --------------------------------------------------------

--
-- Table structure for table `home_page_activitise`
--

DROP TABLE IF EXISTS `home_page_activitise`;
CREATE TABLE IF NOT EXISTS `home_page_activitise` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Activitise` varchar(100) NOT NULL,
  `Activity_Title` varchar(200) NOT NULL,
  `Description` varchar(600) NOT NULL,
  `Visiblity` enum('show','hide') NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_page_activitise`
--

INSERT INTO `home_page_activitise` (`ID`, `Activitise`, `Activity_Title`, `Description`, `Visiblity`) VALUES
(1, 'Our New Activities', 'Activities', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', 'show');

-- --------------------------------------------------------

--
-- Table structure for table `home_page_activity_types`
--

DROP TABLE IF EXISTS `home_page_activity_types`;
CREATE TABLE IF NOT EXISTS `home_page_activity_types` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name_Active` varchar(100) NOT NULL,
  `Description` varchar(500) NOT NULL,
  `Picture` varchar(600) NOT NULL,
  `Visiblity` enum('show','hide') NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_page_activity_types`
--

INSERT INTO `home_page_activity_types` (`ID`, `Name_Active`, `Description`, `Picture`, `Visiblity`) VALUES
(4, 'Web design & development', 'empor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam incididunt ut labore et dolore magna aliqua.', '354034416_639268808233766_7228992123116901876_n.jpg', 'show'),
(2, 'Web design & development', 'empor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam incididunt ut labore et dolore magna aliqua.', '347113121_641889990650547_2617971876715186684_n.jpg', 'show'),
(5, 'Web design & development', 'empor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam incididunt ut labore et dolore magna aliqua.', '337237550_715394456955764_5130535951406736173_n.jpg', 'show'),
(6, 'Web design & development', 'empor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam incididunt ut labore et dolore magna aliqua.', '362247944_661048209389159_6467870935100761383_n.jpg', 'show');

-- --------------------------------------------------------

--
-- Table structure for table `home_slideshow`
--

DROP TABLE IF EXISTS `home_slideshow`;
CREATE TABLE IF NOT EXISTS `home_slideshow` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SlideShow_Title` varchar(100) NOT NULL,
  `SlideShow_Picture` varchar(600) NOT NULL,
  `Visiblity` enum('show','hide') NOT NULL,
  `School` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_slideshow`
--

INSERT INTO `home_slideshow` (`ID`, `SlideShow_Title`, `SlideShow_Picture`, `Visiblity`, `School`) VALUES
(4, 'Afghanistan International', 'slideShow-2.jpg', 'show', ' School'),
(3, 'Afghanistan International ', 'slideShow-1.jpg', 'show', 'School'),
(5, 'Afghanistan International', 'slideShow-3.jpg', 'show', 'School'),
(6, 'Afghanistan International ', 'slideShow-4.jpg', 'show', 'School');

-- --------------------------------------------------------

--
-- Table structure for table `home_table`
--

DROP TABLE IF EXISTS `home_table`;
CREATE TABLE IF NOT EXISTS `home_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title_Home` varchar(100) NOT NULL,
  `Description_Home` varchar(500) NOT NULL,
  `Picture_Home` varchar(600) NOT NULL,
  `Visiblity` enum('show','hide') NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_table`
--

INSERT INTO `home_table` (`ID`, `Title_Home`, `Description_Home`, `Picture_Home`, `Visiblity`) VALUES
(2, 'Home', 'Lorem dolor sit , consectr adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magnaua. Lorem dolor sit amet, consectr adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magnauaLorem dolor sit amet, consectr adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magnaua', 'student-with-school-bus-front-school_1308-133399.jpg', 'show');

-- --------------------------------------------------------

--
-- Table structure for table `join_us_table`
--

DROP TABLE IF EXISTS `join_us_table`;
CREATE TABLE IF NOT EXISTS `join_us_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(100) NOT NULL,
  `Description` varchar(600) NOT NULL,
  `Picture` varchar(600) NOT NULL,
  `Visiblity` enum('show','hide') NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `join_us_table`
--

INSERT INTO `join_us_table` (`ID`, `Title`, `Description`, `Picture`, `Visiblity`) VALUES
(1, 'Join Us?', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. Ut enim ad minim veniam incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam. Ut enim ad minim veniam incididunt ut labore et dolore magna aliqua.', 'happy-girl-cartoon-character-holding-toy-ship_1308-63820.jpg', 'show'),
(3, 'Join Us?', 'consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. Ut enim ad minim veniam incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam. Ut enim ad minim veniam incididunt ut labore et dolore magna aliqua.', 'childern.jpg', 'hide');

-- --------------------------------------------------------

--
-- Table structure for table `learning_table`
--

DROP TABLE IF EXISTS `learning_table`;
CREATE TABLE IF NOT EXISTS `learning_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(100) NOT NULL,
  `Description` varchar(600) NOT NULL,
  `Picture` varchar(600) NOT NULL,
  `Visiblity` enum('show','hide') NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `learning_table`
--

INSERT INTO `learning_table` (`ID`, `Title`, `Description`, `Picture`, `Visiblity`) VALUES
(1, 'Student', 'we ensure that your child receives the best education in a comfortable and progressive environment. We make it our business to ensure that every child at the school is provided with the education required to assure their success.', '370476976_678663857627594_405755053418945561_n.jpg', 'hide'),
(3, 'Student Success', 'Aliquyam accusam clita nonumy ipsum sit sea clita ipsum clita, ipsum dolores amet voluptua duo dolores et sit ipsum rebum, sadipscing et erat eirmod diam kasd labore clita est. Diam sanctus gubergren sit rebum clita amet, sea est sea vero sed et. Sadipscing labore tempor at sit dolor clita consetetur diam. Diam ut diam tempor no et, lorem dolore invidunt no nonumy stet ea labore, dolor justo et sit gubergren diam sed sed no ipsum. Sit tempor ut nonumy elitr dolores justo aliquyam ipsum stet', 'Student.jpg', 'show');

-- --------------------------------------------------------

--
-- Table structure for table `news_table`
--

DROP TABLE IF EXISTS `news_table`;
CREATE TABLE IF NOT EXISTS `news_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(100) NOT NULL,
  `Description` varchar(400) NOT NULL,
  `Picture` varchar(600) NOT NULL,
  `Visiblity` enum('show','hide') NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news_table`
--

INSERT INTO `news_table` (`ID`, `Title`, `Description`, `Picture`, `Visiblity`) VALUES
(1, 'Fees Courses', ' Lorem dolor sit amet, consectr adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magnauaLorem dolor sit amet, consectr adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magnaua', '370522154_678663074294339_1422786015482747928_n.jpg', 'show'),
(3, 'Soccer Matches', ' Lorem dolor sit amet, consectr adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magnauaLorem dolor sit amet, consectr adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magnaua', '299883243_5400311283385756_4326796641291387218_n.jpg', 'show'),
(4, 'Cultural Exhibition', ' Lorem dolor sit amet, consectr adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magnauaLorem dolor sit amet, consectr adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magnaua', 'Facility-1.jpg', 'show');

-- --------------------------------------------------------

--
-- Table structure for table `qualty_learning`
--

DROP TABLE IF EXISTS `qualty_learning`;
CREATE TABLE IF NOT EXISTS `qualty_learning` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(100) NOT NULL,
  `Description` varchar(600) NOT NULL,
  `Picture` varchar(600) NOT NULL,
  `Visiblity` enum('show','hide') NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qualty_learning`
--

INSERT INTO `qualty_learning` (`ID`, `Title`, `Description`, `Picture`, `Visiblity`) VALUES
(1, 'Islamic Study', 'empor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam incididunt ut labore et dolore magna aliqua.', 'Study-1.jpg', 'show'),
(3, 'Maths Study', 'empor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam incididunt ut labore et dolore magna aliqua.', 'Study-2.jpg', 'show'),
(4, 'Computer Study', 'empor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam incididunt ut labore et dolore magna aliqua.', 'Study-3.jpg', 'show'),
(5, 'Practical', 'empor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam incididunt ut labore et dolore magna aliqua.', 'Study-4.jpg', 'show');

-- --------------------------------------------------------

--
-- Table structure for table `sibling_discounts`
--

DROP TABLE IF EXISTS `sibling_discounts`;
CREATE TABLE IF NOT EXISTS `sibling_discounts` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Visiblity` enum('show','hide') NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sibling_discounts`
--

INSERT INTO `sibling_discounts` (`ID`, `Title`, `Description`, `Visiblity`) VALUES
(1, 'Sibling Discounts', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.Lorem ipsum dolor sit amet elit.', 'show');

-- --------------------------------------------------------

--
-- Table structure for table `team_table`
--

DROP TABLE IF EXISTS `team_table`;
CREATE TABLE IF NOT EXISTS `team_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(100) NOT NULL,
  `Description` varchar(500) NOT NULL,
  `Visiblity` enum('show','hide') NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `team_table`
--

INSERT INTO `team_table` (`ID`, `Title`, `Description`, `Visiblity`) VALUES
(1, 'Our Team', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', 'show'),
(2, 'Team', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', 'hide');

-- --------------------------------------------------------

--
-- Table structure for table `time_date_table`
--

DROP TABLE IF EXISTS `time_date_table`;
CREATE TABLE IF NOT EXISTS `time_date_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `semester` varchar(100) NOT NULL,
  `start_date` varchar(100) NOT NULL,
  `end_date` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL,
  `Visiblity` enum('show','hide') NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `time_date_table`
--

INSERT INTO `time_date_table` (`ID`, `semester`, `start_date`, `end_date`, `time`, `Visiblity`) VALUES
(1, 'First', 'Jan 1st', 'Apr 30', '7:00Am - 4:00Pm', 'show'),
(3, 'Second', 'May 1st', 'Aug 30', '7:30Am - 4:30Pm', 'show'),
(4, 'Third', 'Sep 1st', 'Dec 30', '8:00Am - 4:30Pm', 'show');

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

DROP TABLE IF EXISTS `time_table`;
CREATE TABLE IF NOT EXISTS `time_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Picture` varchar(600) NOT NULL,
  `Visiblity` enum('show','hide') NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`ID`, `Title`, `Description`, `Picture`, `Visiblity`) VALUES
(1, 'Term Dates', 'Aliquyam accusam clita nonumy ipsum sit sea clita ipsum clita, ipsum dolores amet voluptua duo dolores et sit ipsum rebum, sadipscing et erat eirmod diam kasd labore clita est.', 'school-children-going-to.jpg', 'show');

-- --------------------------------------------------------

--
-- Table structure for table `user_record`
--

DROP TABLE IF EXISTS `user_record`;
CREATE TABLE IF NOT EXISTS `user_record` (
  `ID` int(100) NOT NULL AUTO_INCREMENT,
  `First_name` varchar(100) NOT NULL,
  `Last_name` varchar(100) NOT NULL,
  `user_Name` varchar(200) NOT NULL,
  `Password` varchar(600) NOT NULL,
  `user_picture` varchar(600) NOT NULL,
  `Address` varchar(350) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_record`
--

INSERT INTO `user_record` (`ID`, `First_name`, `Last_name`, `user_Name`, `Password`, `user_picture`, `Address`) VALUES
(5, 'Sara', 'Ahmadi', 'sara ahmadi', '12345', 'testimonial-2.jpg', 'Kabul');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
