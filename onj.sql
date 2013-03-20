-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 03, 2013 at 06:40 PM
-- Server version: 5.5.22
-- PHP Version: 5.3.10-1ubuntu3.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `onj`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
  `blogName` varchar(50) DEFAULT NULL,
  `blogID` int(11) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`blogName`, `blogID`, `time`) VALUES
('WPC', 1, '2012-06-24 17:52:04'),
('Hello', 2, '2012-08-06 14:39:08'),
('hell', 3, '2012-08-06 14:40:36');

-- --------------------------------------------------------

--
-- Table structure for table `contests`
--

CREATE TABLE IF NOT EXISTS `contests` (
  `contestID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  `startTime` datetime DEFAULT NULL,
  `endTime` datetime DEFAULT NULL,
  PRIMARY KEY (`contestID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `contests`
--

INSERT INTO `contests` (`contestID`, `Name`, `startTime`, `endTime`) VALUES
(1, 'abc', '2012-06-21 23:00:00', '2012-06-21 23:00:01'),
(2, '123', '2012-12-12 21:00:00', '2012-12-12 21:00:01'),
(3, 'TEST', '2012-06-21 21:00:00', '2012-06-26 21:00:00'),
(4, 'WPC', '2012-06-21 02:00:00', '2012-08-27 02:00:00'),
(5, 'New', '2012-08-06 21:00:00', '2012-08-07 21:00:00'),
(6, 'ababaab', '2012-07-24 21:01:00', '2012-09-24 21:01:00'),
(7, 'aa', '2012-09-06 21:00:00', '2012-09-16 21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `contest_1`
--

CREATE TABLE IF NOT EXISTS `contest_1` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `score` int(11) DEFAULT '0',
  `p1` int(11) DEFAULT '0',
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `contest_1`
--

INSERT INTO `contest_1` (`userID`, `username`, `score`, `p1`) VALUES
(1, 'admin', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contest_2`
--

CREATE TABLE IF NOT EXISTS `contest_2` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `score` int(11) DEFAULT '0',
  `p2` int(11) DEFAULT '0',
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `contest_2`
--

INSERT INTO `contest_2` (`userID`, `username`, `score`, `p2`) VALUES
(1, 'admin', 2, 2),
(2, 'abc', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `contest_3`
--

CREATE TABLE IF NOT EXISTS `contest_3` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `score` int(11) DEFAULT '0',
  `p3` int(11) DEFAULT '0',
  `p0` int(11) DEFAULT '0',
  `penalty` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `contest_3`
--

INSERT INTO `contest_3` (`userID`, `username`, `score`, `p3`, `p0`, `penalty`) VALUES
(1, 'admin', 10, 10, 0, 0),
(2, 'abc', 10, 10, 0, 0),
(6, 'aaaa', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `contest_4`
--

CREATE TABLE IF NOT EXISTS `contest_4` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `score` int(11) DEFAULT '0',
  `penalty` int(11) NOT NULL DEFAULT '0',
  `p6` int(11) DEFAULT '0',
  `p7` int(11) DEFAULT '0',
  `p0` int(11) DEFAULT '0',
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `contest_4`
--

INSERT INTO `contest_4` (`userID`, `username`, `score`, `penalty`, `p6`, `p7`, `p0`) VALUES
(1, 'admin', 210, 0, 100, 10, 0),
(2, 'abc', 210, 84, 100, 10, 0),
(6, 'aaaa', 100, 0, 100, 0, 0),
(8, 'helpless', 100, 86, 100, 0, 0),
(9, 'ankush', 100, 91, 100, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `contest_5`
--

CREATE TABLE IF NOT EXISTS `contest_5` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `score` int(11) DEFAULT '0',
  `p8` int(11) DEFAULT '0',
  `penalty` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `contest_5`
--

INSERT INTO `contest_5` (`userID`, `username`, `score`, `p8`, `penalty`) VALUES
(1, 'admin', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `contest_6`
--

CREATE TABLE IF NOT EXISTS `contest_6` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `score` int(11) DEFAULT '0',
  `penalty` int(11) DEFAULT '0',
  `p9` int(11) DEFAULT '0',
  `p0` int(11) DEFAULT '0',
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `contest_7`
--

CREATE TABLE IF NOT EXISTS `contest_7` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `score` int(11) DEFAULT '0',
  `penalty` int(11) DEFAULT '0',
  `p10` int(11) DEFAULT '0',
  `p0` int(11) DEFAULT '0',
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `problems`
--

CREATE TABLE IF NOT EXISTS `problems` (
  `contestID` int(11) NOT NULL,
  `problemID` int(11) NOT NULL AUTO_INCREMENT,
  `visible` tinyint(1) DEFAULT NULL,
  `problemName` varchar(50) NOT NULL,
  `statement` varchar(10000) DEFAULT NULL,
  `accepted` int(11) DEFAULT '0',
  `submissions` int(11) DEFAULT '0',
  `timeLimit` int(11) DEFAULT '2',
  `memoryLimit` int(11) DEFAULT '5',
  `score` int(11) DEFAULT '0',
  PRIMARY KEY (`problemID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `problems`
--

INSERT INTO `problems` (`contestID`, `problemID`, `visible`, `problemName`, `statement`, `accepted`, `submissions`, `timeLimit`, `memoryLimit`, `score`) VALUES
(1, 1, 1, '1', '1', 1, 3, 1, 1, 1),
(2, 2, 1, 'a', 'a', 0, 6, 1, 1, 1),
(3, 3, 1, 'Product', 'A Little Elephant from the Zoo of Lviv likes lucky numbers very much. Everybody knows that the lucky numbers are positive integers whose decimal representation contains only the lucky digits 4 and 7. </br>For example, numbers 47, 744, 4 are lucky and 5, 17, 467 are not.\n</br>\nLet F4(X) be the number of digits 4 in the decimal representation of X, and F7(X) be the number of digits 7 in the decimal representation of X. For example, F4(456) = 1, F4(444) = 3, F7(1) = 0, F7(747) = 2. The Little Elephant wants to know the largest product F4(X) ? F7(X), where L ? X ? R. In other words he wants to know the value\nmax{F4(X) ? F7(X) : L ? X ? R}.\n</br>\nInput\n</br>\nThe first line of the input file contains an integer T, the number of test cases. T test cases follow. The only line of each test case contains two integers L and R separated by exactly one space.\nOutput\n</br>\nFor each test case output a single line containing the answer for the corresponding test case.\n</br>\nConstraints\n</br>\n1 ? T ? 1000\n</br>\n1 ? L ? R ? 1018\n</br>\nExample\n</br>\nInput:</br>\n3</br>\n1 10</br>\n1 100</br>\n47 74</br>\n</br>\nOutput:</br>\n0</br>\n1</br>\n1</br>\n</br>\nExplanation</br>\n</br>\nIn both second and third test cases the maximal product is achieved at the numbers 47 and 74.', 19, 60, 2, 10, 10),
(0, 4, 0, 'dummy', 'dd', 0, 1, 2, 5, 0),
(4, 6, 1, 'MARIO', 'Problem Statement : </br>\nabc\n</br>\nabc\n</br>\nabc\n</br></br>\nInput:\n</br>\ninput format\n</br>\nOutput:</br>\noutput format</br>\nTest Cases</br>\nInput</br>\n1</br>2</br>3</br>\nOutput</br>\n1</br>2</br>3</br>', 111, 280, 1, 20, 100),
(4, 7, 1, 'SUPERMAN', 'Problem Statement : </br>\nabc\n</br>\nabc\n</br>\nabc\n</br></br>\nInput:\n</br>\ninput format\n</br>\nOutput:</br>\noutput format</br>\nTest Cases</br>\nInput</br>\n1</br>2</br>3</br>\nOutput</br>\n1</br>2</br>3</br>', 5, 32, 10, 10, 10),
(5, 8, NULL, 'ABC', 'abc', 12, 13, 1, 1, 100),
(6, 9, NULL, 'a', 'a', 0, 0, 1, 1, 1),
(7, 10, NULL, '11', 'qq', 0, 0, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `submissions`
--

CREATE TABLE IF NOT EXISTS `submissions` (
  `subtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `submID` int(11) NOT NULL AUTO_INCREMENT,
  `problemID` int(11) NOT NULL,
  `problemName` varchar(50) NOT NULL,
  `userID` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `runtime` decimal(4,2) DEFAULT NULL,
  `runmem` decimal(4,2) DEFAULT '0.00',
  `score` int(11) DEFAULT NULL,
  `submlang` varchar(15) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`submID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=299 ;

--
-- Dumping data for table `submissions`
--

INSERT INTO `submissions` (`subtime`, `submID`, `problemID`, `problemName`, `userID`, `username`, `runtime`, `runmem`, `score`, `submlang`, `status`) VALUES
('2012-06-24 17:40:09', 1, 6, 'MARIO', 1, 'admin', 0.00, 0.00, 0, 'C', 1),
('2012-06-24 17:40:18', 2, 7, 'SUPERMAN', 1, 'admin', 0.00, 0.00, 0, 'C', 1),
('2012-06-24 17:40:32', 3, 3, 'Product', 1, 'admin', 0.00, 0.00, 0, 'C++', 1),
('2012-06-24 17:43:58', 4, 3, 'Product', 1, 'admin', 0.00, 0.00, 0, 'C', 2),
('2012-06-24 17:44:08', 5, 6, 'MARIO', 1, 'admin', 0.00, 0.00, 0, 'C', 2),
('2012-06-24 17:45:18', 6, 6, 'MARIO', 1, 'admin', 0.00, 0.00, 10, 'C', 0),
('2012-06-24 17:45:53', 7, 3, 'Product', 1, 'admin', 0.02, 0.00, 10, 'C', 0),
('2012-06-24 17:53:41', 8, 6, 'MARIO', 1, 'admin', 0.04, 0.00, 10, 'C', 0),
('2012-06-24 17:53:49', 9, 3, 'Product', 1, 'admin', 0.00, 0.00, 0, 'C', 3),
('2012-06-24 18:48:39', 10, 6, 'MARIO', 2, 'abc', 0.02, 0.00, 10, 'C++', 0),
('2012-06-25 01:28:19', 11, 3, 'Product', 2, 'abc', 0.02, 0.00, 10, 'C', 0),
('2012-06-25 01:28:32', 12, 6, 'MARIO', 2, 'abc', 0.05, 0.00, 10, 'C++', 0),
('2012-06-25 01:29:37', 13, 3, 'Product', 2, 'abc', 0.00, 0.00, 0, 'C', 2),
('2012-06-25 01:29:59', 14, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 10, 'C', 0),
('2012-06-25 01:30:51', 15, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 10, 'C', 0),
('2012-06-25 01:40:55', 16, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 1),
('2012-06-25 01:41:14', 17, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 2),
('2012-06-25 01:55:01', 18, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 2),
('2012-06-25 01:55:46', 19, 3, 'Product', 2, 'abc', 0.01, 0.00, 10, 'C', 0),
('2012-06-25 01:56:42', 20, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 2),
('2012-06-25 02:00:30', 21, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 2),
('2012-06-25 03:26:57', 22, 3, 'Product', 1, 'admin', 0.05, 0.00, 10, 'C', 0),
('2012-06-25 03:33:36', 23, 3, 'Product', 1, 'admin', 0.03, 0.00, 10, 'C', 0),
('2012-06-25 03:50:27', 24, 6, 'MARIO', 1, 'admin', 0.00, 0.00, 10, 'C', 0),
('2012-06-25 03:50:34', 25, 6, 'MARIO', 1, 'admin', 0.00, 0.00, 0, 'C', 1),
('2012-06-25 03:50:41', 26, 6, 'MARIO', 1, 'admin', 0.00, 0.00, 0, 'C', 3),
('2012-06-25 03:50:45', 27, 6, 'MARIO', 1, 'admin', 0.00, 0.00, 0, 'C', 2),
('2012-06-25 03:51:37', 28, 6, 'MARIO', 1, 'admin', 0.02, 0.00, 10, 'C', 0),
('2012-06-25 03:52:50', 29, 6, 'MARIO', 1, 'admin', 0.00, 0.00, 0, 'C', 5),
('2012-06-25 03:53:40', 30, 6, 'MARIO', 1, 'admin', 0.00, 0.00, 0, 'C', 1),
('2012-06-25 03:59:52', 31, 6, 'MARIO', 1, 'admin', 0.00, 0.00, 0, 'C', 3),
('2012-06-25 04:01:47', 32, 6, 'MARIO', 1, 'admin', 0.00, 0.00, 0, 'C', 3),
('2012-06-25 04:03:06', 33, 6, 'MARIO', 1, 'admin', 2.07, 0.00, 10, 'C', 0),
('2012-06-25 04:03:51', 34, 6, 'MARIO', 1, 'admin', 2.08, 0.00, 10, 'C', 0),
('2012-06-25 04:04:25', 35, 6, 'MARIO', 1, 'admin', 2.14, 0.00, 10, 'C', 0),
('2012-06-25 04:05:19', 36, 6, 'MARIO', 1, 'admin', 0.00, 0.00, 0, 'C', 3),
('2012-06-25 04:06:47', 37, 6, 'MARIO', 1, 'admin', 2.06, 0.00, 10, 'C', 0),
('2012-06-25 04:08:53', 38, 6, 'MARIO', 1, 'admin', 0.00, 0.00, 11, 'C', 0),
('2012-06-25 04:11:34', 39, 6, 'MARIO', 1, 'admin', 0.00, 0.00, 100, 'C', 0),
('2012-06-25 04:16:33', 40, 6, 'MARIO', 1, 'admin', 0.00, 0.00, 100, 'C', 0),
('2012-06-25 04:18:24', 41, 6, 'MARIO', 1, 'admin', 0.00, 0.00, 100, 'C', 0),
('2012-06-25 04:23:15', 42, 3, 'Product', 1, 'admin', 0.02, 0.00, 10, 'C', 0),
('2012-06-25 04:23:58', 43, 6, 'MARIO', 1, 'admin', 0.00, 0.00, 100, 'C', 0),
('2012-06-25 04:24:04', 44, 6, 'MARIO', 1, 'admin', 0.00, 0.00, 0, 'C', 1),
('2012-06-25 04:24:10', 45, 6, 'MARIO', 1, 'admin', 0.00, 0.00, 0, 'C', 5),
('2012-06-25 04:24:16', 46, 6, 'MARIO', 1, 'admin', 0.00, 0.00, 0, 'C', 3),
('2012-06-25 04:24:23', 47, 6, 'MARIO', 1, 'admin', 0.00, 0.00, 0, 'C', 2),
('2012-06-25 04:27:51', 48, 6, 'MARIO', 1, 'admin', 0.02, 0.00, 100, 'C', 0),
('2012-06-25 04:28:47', 49, 6, 'MARIO', 1, 'admin', 0.02, 0.00, 100, 'C', 0),
('2012-06-25 04:36:08', 50, 6, 'MARIO', 1, 'admin', 0.00, 0.00, 100, 'C', 0),
('2012-06-25 04:36:16', 51, 6, 'MARIO', 1, 'admin', 0.00, 0.00, 0, 'C', 1),
('2012-06-25 04:36:26', 52, 6, 'MARIO', 1, 'admin', 0.00, 0.00, 0, 'C', 5),
('2012-06-25 04:36:34', 53, 6, 'MARIO', 1, 'admin', 0.00, 0.00, 0, 'C', 3),
('2012-06-25 04:36:45', 54, 6, 'MARIO', 1, 'admin', 0.00, 0.00, 0, 'C', 2),
('2012-06-25 04:37:32', 55, 6, 'MARIO', 1, 'admin', 2.05, 0.00, 100, 'C', 0),
('2012-06-25 04:38:10', 56, 6, 'MARIO', 1, 'admin', 0.01, 0.00, 100, 'C', 0),
('2012-07-12 13:27:57', 57, 3, 'Product', 2, 'abc', 0.04, 0.00, 10, 'C', 0),
('2012-07-25 09:48:52', 58, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 100, 'C', 0),
('2012-07-25 09:50:05', 59, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 1),
('2012-07-25 09:50:33', 60, 6, 'MARIO', 2, 'abc', 2.05, 0.00, 100, 'C', 0),
('2012-07-25 09:52:01', 61, 6, 'MARIO', 2, 'abc', 2.09, 0.00, 100, 'C', 0),
('2012-07-25 09:52:50', 62, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 3),
('2012-07-25 09:53:02', 63, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 5),
('2012-07-25 10:11:18', 64, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 100, 'C', 0),
('2012-07-25 10:11:43', 65, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 3),
('2012-07-25 10:40:04', 66, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 100, 'C', 0),
('2012-07-25 10:40:47', 67, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 3),
('2012-07-25 10:54:19', 68, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 100, 'C', 0),
('2012-07-25 10:55:27', 69, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 3),
('2012-07-25 10:56:48', 70, 6, 'MARIO', 2, 'abc', 2.10, 0.00, 100, 'C', 0),
('2012-07-25 11:03:34', 71, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 100, 'C', 0),
('2012-07-25 11:04:27', 72, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 3),
('2012-07-25 11:05:03', 73, 6, 'MARIO', 2, 'abc', 2.16, 0.00, 100, 'C', 0),
('2012-07-26 09:51:50', 74, 6, 'MARIO', 2, 'abc', 0.04, 0.00, 100, 'C', 0),
('2012-07-26 09:58:36', 75, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 100, 'C', 0),
('2012-07-26 09:59:02', 76, 6, 'MARIO', 2, 'abc', 2.12, 0.00, 100, 'C', 0),
('2012-07-26 10:00:29', 77, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 3),
('2012-07-26 10:51:06', 78, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 100, 'C', 0),
('2012-07-26 10:51:24', 79, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 3),
('2012-07-26 10:52:25', 80, 6, 'MARIO', 2, 'abc', 2.08, 0.00, 100, 'C', 0),
('2012-07-31 05:19:28', 81, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'python', 2),
('2012-07-31 05:23:39', 82, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'python', 2),
('2012-07-31 05:24:17', 83, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 100, 'C', 0),
('2012-07-31 05:26:55', 84, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'python', 2),
('2012-07-31 05:29:18', 85, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 2),
('2012-07-31 05:34:12', 86, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'python', 2),
('2012-07-31 05:35:08', 87, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'python', 2),
('2012-07-31 05:40:09', 88, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'python', 2),
('2012-07-31 05:43:02', 89, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'python', 2),
('2012-07-31 05:43:51', 90, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'python', 2),
('2012-07-31 05:45:11', 91, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'python', 2),
('2012-07-31 05:45:53', 92, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'python', 2),
('2012-07-31 05:46:51', 93, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'python', 2),
('2012-07-31 05:47:34', 94, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'python', 2),
('2012-07-31 05:48:18', 95, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'python', 2),
('2012-07-31 05:49:04', 96, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'python', 2),
('2012-07-31 05:50:29', 97, 6, 'MARIO', 2, 'abc', 0.01, 0.00, 100, 'python', 0),
('2012-07-31 05:51:31', 98, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'python', 2),
('2012-07-31 05:51:54', 99, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'python', 2),
('2012-07-31 06:02:38', 100, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'python', 2),
('2012-07-31 06:03:17', 101, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'python', 2),
('2012-07-31 06:06:04', 102, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'python', 3),
('2012-07-31 06:07:15', 103, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 1),
('2012-07-31 06:08:30', 104, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'python', 3),
('2012-07-31 06:09:02', 105, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'python', 2),
('2012-07-31 06:13:22', 106, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'python', 5),
('2012-07-31 06:14:15', 107, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'python', 5),
('2012-07-31 06:15:18', 108, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'python', 2),
('2012-07-31 06:20:34', 109, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'python', 5),
('2012-07-31 06:33:32', 110, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 100, 'C', 0),
('2012-07-31 06:58:05', 111, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 100, 'C', 0),
('2012-07-31 07:02:06', 112, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 100, 'C', 0),
('2012-07-31 07:11:19', 113, 6, 'MARIO', 2, 'abc', 0.00, 0.00, NULL, 'C', 1),
('2012-07-31 07:14:31', 114, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 100, 'C', 0),
('2012-07-31 07:16:32', 115, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 1),
('2012-08-01 15:50:10', 116, 6, 'MARIO', 2, 'abc', 0.01, 0.00, 100, 'C', 0),
('2012-08-01 15:52:31', 117, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 100, 'C', 0),
('2012-08-01 15:54:31', 118, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 100, 'C', 0),
('2012-08-01 15:59:14', 119, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 100, 'C', 0),
('2012-08-01 16:02:32', 120, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 100, 'C', 0),
('2012-08-01 16:03:09', 121, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 100, 'C', 0),
('2012-08-01 16:06:08', 122, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 100, 'C', 0),
('2012-08-01 16:09:43', 123, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 100, 'C', 0),
('2012-08-01 16:10:04', 124, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 1),
('2012-08-01 16:10:19', 125, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'python', 5),
('2012-08-01 16:11:02', 126, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'python', 5),
('2012-08-01 16:13:10', 127, 2, 'a', 2, 'abc', 0.00, 0.00, 0, 'C', 2),
('2012-08-01 16:14:12', 128, 3, 'Product', 6, 'aaaa', 0.00, 0.00, 0, 'C', 2),
('2012-08-01 16:22:25', 129, 3, 'Product', 6, 'aaaa', 0.00, 0.00, 0, 'C', 2),
('2012-08-01 16:27:36', 130, 3, 'Product', 6, 'aaaa', 0.00, 0.00, 0, 'C', 2),
('2012-08-01 16:33:02', 131, 3, 'Product', 6, 'aaaa', 0.00, 0.00, 0, 'C', 1),
('2012-08-01 16:33:37', 132, 6, 'MARIO', 6, 'aaaa', 0.00, 0.00, 0, 'C', 1),
('2012-08-01 16:33:42', 133, 6, 'MARIO', 6, 'aaaa', 0.00, 0.00, 0, 'C', 1),
('2012-08-01 16:35:27', 134, 6, 'MARIO', 6, 'aaaa', 0.00, 0.00, 100, 'C', 0),
('2012-08-01 16:37:45', 135, 6, 'MARIO', 6, 'aaaa', 0.00, 0.00, 100, 'C', 0),
('2012-08-01 16:45:26', 136, 6, 'MARIO', 6, 'aaaa', 0.00, 0.00, 100, 'C', 0),
('2012-08-01 16:46:18', 137, 6, 'MARIO', 6, 'aaaa', 0.00, 0.00, 0, 'python', 5),
('2012-08-01 16:47:03', 138, 6, 'MARIO', 6, 'aaaa', 0.00, 0.00, 100, 'C', 0),
('2012-08-01 16:47:14', 139, 6, 'MARIO', 6, 'aaaa', 0.00, 0.00, 100, 'C', 0),
('2012-08-01 16:47:19', 140, 6, 'MARIO', 6, 'aaaa', 0.00, 0.00, 0, 'C', 1),
('2012-08-01 16:49:24', 141, 6, 'MARIO', 6, 'aaaa', 2.07, 0.00, 100, 'C', 0),
('2012-08-01 16:50:18', 142, 6, 'MARIO', 6, 'aaaa', 0.00, 0.00, 0, 'C', 5),
('2012-08-01 16:53:06', 143, 6, 'MARIO', 6, 'aaaa', 0.00, 0.00, 0, 'python', 5),
('2012-08-01 17:07:30', 144, 3, 'Product', 6, 'aaaa', 0.00, 0.00, 0, 'C', 2),
('2012-08-01 17:08:00', 145, 6, 'MARIO', 6, 'aaaa', 0.00, 0.00, 0, 'C', 1),
('2012-08-01 17:27:13', 146, 3, 'Product', 6, 'aaaa', 0.00, 0.00, 0, 'C', 1),
('2012-08-06 06:19:46', 147, 7, 'SUPERMAN', 1, 'admin', 0.00, 0.00, 0, 'python', 2),
('2012-08-06 06:25:24', 148, 7, 'SUPERMAN', 1, 'admin', 0.00, 0.00, 0, 'C', 2),
('2012-08-06 06:26:44', 149, 6, 'MARIO', 1, 'admin', 0.00, 0.00, 100, 'C', 0),
('2012-08-06 06:27:10', 150, 6, 'MARIO', 1, 'admin', 0.00, 0.00, 0, 'python', 5),
('2012-08-06 06:28:18', 151, 6, 'MARIO', 1, 'admin', 0.00, 0.00, 0, 'python', 2),
('2012-08-06 06:28:40', 152, 6, 'MARIO', 1, 'admin', 0.02, 0.00, 100, 'python', 0),
('2012-08-06 06:29:02', 153, 6, 'MARIO', 1, 'admin', 0.00, 0.00, 0, 'C++', 1),
('2012-08-06 12:37:26', 154, 6, 'MARIO', 2, 'abc', 0.01, 0.00, 100, 'C', 0),
('2012-08-06 12:37:37', 155, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 1),
('2012-08-06 14:10:51', 156, 6, 'MARIO', 2, 'abc', 2.08, 0.00, 100, 'C', 0),
('2012-08-06 14:12:01', 157, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 3),
('2012-08-06 14:17:58', 158, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 2),
('2012-08-06 14:18:07', 159, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 3),
('2012-08-06 14:18:25', 160, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 2),
('2012-08-06 14:18:45', 161, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 100, 'C', 0),
('2012-08-06 14:19:22', 162, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 100, 'C', 0),
('2012-08-06 14:20:52', 163, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 100, 'C', 0),
('2012-08-06 14:30:57', 164, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 100, 'C', 0),
('2012-08-06 15:49:11', 165, 8, 'ABC', 1, 'admin', 0.04, 0.00, 1, 'C', 0),
('2012-08-06 15:56:23', 166, 6, 'MARIO', 1, 'admin', 0.00, 0.00, 100, 'C', 0),
('2012-08-07 09:52:30', 167, 6, 'MARIO', 2, 'abc', 0.01, 0.00, 100, 'C', 0),
('2012-08-07 09:52:38', 168, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 100, 'C', 0),
('2012-08-07 09:52:46', 169, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 100, 'C', 0),
('2012-08-07 09:52:51', 170, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 100, 'C', 0),
('2012-08-07 13:30:36', 171, 6, 'MARIO', 2, 'abc', 0.01, 0.00, 100, 'C', 0),
('2012-08-07 13:31:24', 172, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 100, 'C', 0),
('2012-08-08 07:31:31', 173, 6, 'MARIO', 2, 'abc', 0.01, 0.00, 100, 'C', 0),
('2012-08-08 07:51:15', 174, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 100, 'C', 0),
('2012-08-09 16:18:13', 175, 2, 'a', 2, 'abc', 0.00, 0.00, 0, 'C', 2),
('2012-08-09 16:27:34', 176, 2, 'a', 2, 'abc', 0.00, 0.00, 0, 'C', 2),
('2012-08-09 16:28:56', 177, 2, 'a', 2, 'abc', 0.00, 0.00, 0, 'C', 2),
('2012-08-09 16:30:27', 178, 3, 'Product', 2, 'abc', 0.00, 0.00, 0, 'C', 1),
('2012-08-09 16:37:54', 179, 2, 'a', 2, 'abc', 0.00, 0.00, 0, 'C', 2),
('2012-08-09 16:41:20', 180, 4, 'dummy', 2, 'abc', 0.00, 0.00, 0, 'C', 2),
('2012-08-09 16:41:29', 181, 2, 'a', 2, 'abc', 0.00, 0.00, 0, 'C', 2),
('2012-08-09 17:02:13', 182, 3, 'Product', 2, 'abc', 0.00, 0.00, 0, 'C', 2),
('2012-08-09 17:03:36', 183, 2, 'a', 2, 'abc', 0.00, 0.00, NULL, 'C', 4),
('2012-08-09 17:06:51', 184, 3, 'Product', 2, 'abc', 0.00, 0.00, 0, 'C', 2),
('2012-08-09 17:08:07', 185, 2, 'a', 2, 'abc', -1.00, 0.00, 0, 'C', 4),
('2012-08-09 17:10:34', 186, 2, 'a', 2, 'abc', -1.00, 0.00, 0, 'C', 4),
('2012-08-09 17:10:47', 187, 3, 'Product', 2, 'abc', 0.00, 0.00, 0, 'C', 2),
('2012-08-09 17:12:11', 188, 6, 'MARIO', 8, 'helpless', 0.00, 0.00, 100, 'C', 0),
('2012-08-09 17:16:46', 189, 6, 'MARIO', 8, 'helpless', 0.00, 0.00, 100, 'C', 0),
('2012-08-09 17:17:15', 190, 8, 'ABC', 8, 'helpless', 0.00, 0.00, 1, 'C', 0),
('2012-08-09 17:18:12', 191, 8, 'ABC', 8, 'helpless', 0.00, 0.00, 100, 'C', 0),
('2012-08-09 17:18:27', 192, 8, 'ABC', 8, 'helpless', 0.00, 0.00, 0, 'C', 2),
('2012-08-09 17:19:43', 193, 8, 'ABC', 8, 'helpless', 0.00, 0.00, 100, 'C', 0),
('2012-08-09 17:22:59', 194, 8, 'ABC', 8, 'helpless', 0.00, 0.00, 100, 'C', 0),
('2012-08-09 17:23:28', 195, 8, 'ABC', 8, 'helpless', 0.00, 0.00, 100, 'C', 0),
('2012-08-09 17:24:43', 196, 8, 'ABC', 8, 'helpless', 0.00, 0.00, 100, 'C', 0),
('2012-08-09 17:25:22', 197, 8, 'ABC', 8, 'helpless', 0.00, 0.00, 100, 'C', 0),
('2012-08-09 17:26:42', 198, 8, '', 8, 'helpless', 0.00, 0.00, 100, 'C', 0),
('2012-08-09 17:27:19', 199, 8, 'ABC', 8, 'helpless', 0.00, 0.00, 100, 'C', 0),
('2012-08-09 17:27:38', 200, 8, 'ABC', 8, 'helpless', 0.00, 0.00, 100, 'C', 0),
('2012-08-09 17:29:12', 201, 8, 'ABC', 8, 'helpless', 0.00, 0.00, 100, 'C', 0),
('2012-08-09 17:52:31', 202, 3, 'Product', 2, 'abc', 0.02, 0.00, 10, 'C', 0),
('2012-08-11 12:45:22', 203, 6, 'MARIO', 9, 'ankush', 0.01, 0.00, 100, 'C', 0),
('2012-08-11 12:49:01', 204, 6, 'MARIO', 9, 'ankush', 0.00, 0.00, 100, 'C', 0),
('2012-08-11 12:49:33', 205, 6, 'MARIO', 9, 'ankush', 0.00, 0.00, 100, 'C', 0),
('2012-08-11 12:50:29', 206, 6, 'MARIO', 9, 'ankush', 0.00, 0.00, 100, 'C', 0),
('2012-08-11 12:51:13', 207, 6, 'MARIO', 9, 'ankush', 0.00, 0.00, 100, 'C', 0),
('2012-08-11 12:51:34', 208, 6, 'MARIO', 9, 'ankush', 0.00, 0.00, 100, 'C', 0),
('2012-08-31 07:46:45', 209, 6, 'MARIO', 2, 'abc', 0.04, 0.00, 100, 'C', 0),
('2012-08-31 07:49:35', 210, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 100, 'C', 0),
('2012-08-31 07:50:23', 211, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 1),
('2012-08-31 07:50:42', 212, 6, 'MARIO', 2, 'abc', 0.46, 0.00, 100, 'python', 0),
('2012-09-07 18:28:28', 213, 6, 'MARIO', 9, 'ankush', 0.01, 0.00, 100, 'C', 0),
('2012-09-07 19:20:05', 214, 6, 'MARIO', 1, 'admin', 0.00, 0.00, 0, 'C', 1),
('2012-09-07 19:22:35', 215, 6, 'MARIO', 1, 'admin', 0.00, 0.00, 0, 'C', 1),
('2012-09-07 19:23:44', 216, 6, 'MARIO', 1, 'admin', 0.00, 0.00, 0, 'C', 1),
('2012-09-07 19:24:59', 217, 6, 'MARIO', 1, 'admin', 0.00, 0.00, 0, 'python', 2),
('2012-09-07 19:54:42', 218, 6, 'MARIO', 9, 'ankush', 0.00, 0.00, 0, 'C', 1),
('2012-09-07 19:55:34', 219, 6, 'MARIO', 9, 'ankush', 0.00, 0.00, 0, 'C', 1),
('2012-09-07 19:57:22', 220, 6, 'MARIO', 9, 'ankush', 0.00, 0.00, 0, 'C', 1),
('2012-09-07 19:59:34', 221, 6, 'MARIO', 9, 'ankush', 0.00, 0.00, 0, 'C', 1),
('2012-09-07 20:00:12', 222, 6, 'MARIO', 9, 'ankush', 0.00, 0.00, 0, 'C', 1),
('2012-09-07 20:02:44', 223, 6, 'MARIO', 9, 'ankush', 0.00, 0.00, 0, 'C', 1),
('2012-09-07 20:03:01', 224, 6, 'MARIO', 9, 'ankush', 0.00, 0.00, 0, 'C', 1),
('2012-09-07 20:03:56', 225, 6, 'MARIO', 9, 'ankush', 0.00, 0.00, 0, 'C', 1),
('2012-09-07 20:04:06', 226, 6, 'MARIO', 9, 'ankush', 0.00, 0.00, 0, 'C', 1),
('2012-09-07 20:04:59', 227, 6, 'MARIO', 9, 'ankush', 0.00, 0.00, 0, 'C', 1),
('2012-09-07 20:07:27', 228, 6, 'MARIO', 9, 'ankush', 0.00, 0.00, 0, 'C', 1),
('2012-09-07 20:10:44', 229, 6, 'MARIO', 9, 'ankush', 0.00, 0.00, 0, 'C', 1),
('2012-09-07 20:10:58', 230, 6, 'MARIO', 9, 'ankush', 0.00, 0.00, 0, 'C', 1),
('2012-09-07 20:13:11', 231, 6, 'MARIO', 9, 'ankush', 0.00, 0.00, 0, 'C', 1),
('2012-09-07 20:14:58', 232, 6, 'MARIO', 9, 'ankush', 0.00, 0.00, 0, 'C', 1),
('2012-09-07 20:16:46', 233, 6, 'MARIO', 9, 'ankush', 0.00, 0.00, 0, 'C', 1),
('2012-09-07 20:18:13', 234, 6, 'MARIO', 9, 'ankush', 0.00, 0.00, 0, 'C', 1),
('2012-09-07 20:22:37', 235, 6, 'MARIO', 9, 'ankush', 0.00, 0.00, 0, 'C', 2),
('2012-09-07 20:23:22', 236, 6, 'MARIO', 9, 'ankush', 0.00, 0.00, 0, 'C', 2),
('2012-09-07 20:26:00', 237, 6, 'MARIO', 9, 'ankush', 0.00, 0.00, 0, 'C', 2),
('2012-09-07 20:28:49', 238, 6, 'MARIO', 9, 'ankush', 0.00, 0.00, 0, 'C', 2),
('2012-09-07 20:32:13', 239, 6, 'MARIO', 9, 'ankush', 0.00, 0.00, 0, 'C', 2),
('2012-09-07 20:35:54', 240, 6, 'MARIO', 9, 'ankush', 0.00, 0.00, 0, 'C', 2),
('2012-09-07 20:36:13', 241, 6, 'MARIO', 9, 'ankush', 0.00, 0.00, 0, 'C', 2),
('2012-09-07 20:36:59', 242, 6, 'MARIO', 9, 'ankush', 0.00, 0.00, 100, 'C', 0),
('2012-09-07 20:39:43', 243, 6, 'MARIO', 9, 'ankush', 0.00, 0.00, 0, 'C', 1),
('2012-09-07 20:40:20', 244, 6, 'MARIO', 9, 'ankush', 0.00, 0.00, 100, 'C', 0),
('2012-09-07 20:42:24', 245, 6, 'MARIO', 9, 'ankush', 0.00, 0.00, 100, 'C', 0),
('2012-09-07 20:43:00', 246, 6, 'MARIO', 9, 'ankush', 0.00, 0.00, 100, 'C', 0),
('2012-09-07 20:43:25', 247, 6, 'MARIO', 9, 'ankush', 0.00, 0.00, 100, 'C', 0),
('2012-09-07 20:43:30', 248, 6, 'MARIO', 9, 'ankush', 0.00, 0.00, 100, 'C', 0),
('2012-09-07 20:43:34', 249, 6, 'MARIO', 9, 'ankush', 0.00, 0.00, 100, 'C', 0),
('2012-09-07 21:07:57', 250, 6, 'MARIO', 9, 'ankush', 0.00, 0.00, 0, 'C', 1),
('2012-09-07 21:08:15', 251, 6, 'MARIO', 9, 'ankush', 0.00, 0.00, 0, 'C', 1),
('2012-09-07 21:08:46', 252, 6, 'MARIO', 9, 'ankush', 0.00, 0.00, 0, 'C', 2),
('2012-09-07 21:11:15', 253, 6, 'MARIO', 9, 'ankush', 0.00, 0.00, 0, 'C', 2),
('2012-09-07 21:12:12', 254, 6, 'MARIO', 9, 'ankush', 0.00, 0.00, 100, 'C', 0),
('2012-09-07 21:13:22', 255, 6, 'MARIO', 9, 'ankush', 0.00, 0.00, 100, 'C', 0),
('2012-09-07 21:14:11', 256, 6, 'MARIO', 9, 'ankush', 0.00, 0.00, 100, 'C', 0),
('2012-09-07 21:14:23', 257, 6, 'MARIO', 9, 'ankush', 0.00, 0.00, 0, 'C', 3),
('2012-09-07 21:14:34', 258, 6, 'MARIO', 9, 'ankush', 0.00, 0.00, 0, 'C', 2),
('2012-09-07 21:14:47', 259, 6, 'MARIO', 9, 'ankush', 0.00, 0.00, 0, 'C', 1),
('2012-09-07 21:14:56', 260, 6, 'MARIO', 9, 'ankush', 0.00, 0.00, 0, 'C', 5),
('2012-10-01 10:45:12', 261, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'JAVA', 1),
('2012-10-01 10:47:36', 262, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'JAVA', 1),
('2012-10-01 10:47:54', 263, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 1),
('2012-10-01 10:52:11', 264, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 1),
('2012-10-01 10:53:38', 265, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 1),
('2012-10-01 10:56:49', 266, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 1),
('2012-10-01 10:58:55', 267, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 1),
('2012-10-01 10:59:19', 268, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 1),
('2012-10-01 11:04:21', 269, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 1),
('2012-10-01 11:05:24', 270, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 1),
('2012-10-01 11:10:47', 271, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 1),
('2012-10-01 11:12:06', 272, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 2),
('2012-10-01 11:12:49', 273, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 2),
('2012-10-01 11:13:59', 274, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 2),
('2012-10-01 11:19:09', 275, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 2),
('2012-10-01 11:20:10', 276, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 2),
('2013-01-11 11:45:36', 277, 7, 'SUPERMAN', 2, 'abc', 0.00, 0.00, 0, 'C', 1),
('2013-01-11 12:54:41', 278, 7, 'SUPERMAN', 2, 'abc', 0.00, 0.00, 0, 'C', 1),
('2013-01-11 14:13:02', 279, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 1),
('2013-01-11 14:15:06', 280, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 1),
('2013-01-11 14:18:33', 281, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 1),
('2013-01-11 14:21:11', 282, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 1),
('2013-01-11 14:21:41', 283, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 1),
('2013-01-11 14:23:12', 284, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 1),
('2013-01-11 14:25:25', 285, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 5),
('2013-01-11 14:29:14', 286, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 5),
('2013-01-11 14:30:12', 287, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 5),
('2013-01-11 14:30:27', 288, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 5),
('2013-01-11 14:32:54', 289, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 5),
('2013-01-11 14:37:37', 290, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 5),
('2013-01-11 14:39:53', 291, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 5),
('2013-01-11 14:41:22', 292, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 5),
('2013-01-11 14:42:50', 293, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 5),
('2013-01-11 14:46:49', 294, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 5),
('2013-01-11 14:47:30', 295, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 5),
('2013-01-11 14:48:18', 296, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 0, 'C', 5),
('2013-01-11 14:57:29', 297, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 100, 'C', 0),
('2013-01-11 15:03:06', 298, 6, 'MARIO', 2, 'abc', 0.00, 0.00, 100, 'python', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `college` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `rank` int(11) DEFAULT '0',
  `score` int(11) DEFAULT '0',
  `penalty` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userID`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `username`, `password`, `firstname`, `lastname`, `college`, `email`, `rank`, `score`, `penalty`) VALUES
(1, 'admin', 'password', 'admin', 'admin', 'IITK', 'a@.', 0, 122, 0),
(2, 'abc', 'password', 'abc', 'abc', 'iitk', 'A@.', 0, 220, 0),
(3, 'vijay', 'password', 'Vijay', 'Keswani', 'IIT K', 'a@.', 10, 10, 0),
(4, 'ankushsachdeva', 'password', 'Ankush', 'Sachdeva', 'a', 'a@.', 0, 12, 0),
(5, 'irfanh', 'password', 'Irfan', 'Hudda', 'IITK', 'a@.', 0, 12, 1),
(6, 'aaaa', 'password', 'aaa', 'aaaa', 'a', 'a@.', 0, 100, 0),
(7, 'rp', 'rprprp', 'rp', 'rp', 'iitk', 'riki.dude03@gmail.com', 0, 0, 0),
(8, 'helpless', 'abcdefgh', 'Manish', 'Sharma', 'IITM', 'skmanish@iitk.ac.in', 0, 100, 86),
(9, 'ankush', '12345678', 'anksuh', 'jsbxdk', 'iiy', 'a@.', 0, 500, 445);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
