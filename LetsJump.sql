CREATE DATABASE LetsJump;
-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 05, 2020 at 07:03 PM
-- Server version: 5.5.64-MariaDB
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `LetsJump`
--

-- --------------------------------------------------------

--
-- Table structure for table `Activities`
USE LetsJump;
   
CREATE TABLE IF NOT EXISTS `Activities` (
  `ActivityID` int(11) NOT NULL,
  `ActivityName` varchar(255) DEFAULT NULL,
  `ActivityLocation` varchar(255) DEFAULT NULL,
  `ActivityType` varchar(255) DEFAULT NULL,
  `ActivityDescription` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Activities`
--

INSERT INTO `Activities` (`ActivityID`, `ActivityName`, `ActivityLocation`, `ActivityType`, `ActivityDescription`) VALUES
(1, 'Lets Skydive', 'Redmond', 'Extreme Sport', 'I will show you how to skydive and more'),
(2, 'Lets Scuba dive', 'Newport', 'Recreational Sport', 'I will show you how to scuba dive'),
(3, 'Lets Dance', 'Seattle', 'Dancing', 'I will show you the best concerts in Seattle'),
(4, 'Lets Hike', 'Seattle greater area', 'Hiking', 'I will show you Seattle''s best hiking trails'),
(5, 'Lets Ride', 'Seattle', 'Motorsports', 'I will show you Seattle''s most famous go-kart tracks');

-- --------------------------------------------------------

--
-- Table structure for table `ActivityReviews`
--

CREATE TABLE IF NOT EXISTS `ActivityReviews` (
  `ActivitiyReviewID` int(11) NOT NULL,
  `ActivityID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `UserReview` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ActivityReviews`
--

INSERT INTO `ActivityReviews` (`ActivitiyReviewID`, `ActivityID`, `UserID`, `UserReview`) VALUES
(31, 1, 21, 'I had so much fun'),
(32, 2, 22, 'blew my mind'),
(33, 3, 23, 'Just do it'),
(34, 4, 24, 'One of the most amazing things i ever did'),
(35, 5, 25, 'Ivan took me here and showed me good time');

-- --------------------------------------------------------

--
-- Table structure for table `EventReviews`
--

CREATE TABLE IF NOT EXISTS `EventReviews` (
  `EventReviewID` int(11) NOT NULL,
  `EventID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `UserReview` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EventReviews`
--

INSERT INTO `EventReviews` (`EventReviewID`, `EventID`, `UserID`, `UserReview`) VALUES
(41, 11, 21, 'Review numero uno'),
(42, 12, 22, 'numerito dos'),
(43, 13, 23, 'oh god review 3'),
(44, 14, 24, 'Good god'),
(45, 15, 25, 'Sweet mother of god');

-- --------------------------------------------------------

--
-- Table structure for table `Events`
--

CREATE TABLE IF NOT EXISTS `Events` (
  `EventID` int(11) NOT NULL,
  `EventName` varchar(255) DEFAULT NULL,
  `EventLocation` varchar(255) DEFAULT NULL,
  `EventType` varchar(255) DEFAULT NULL,
  `EventDescription` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Events`
--

INSERT INTO `Events` (`EventID`, `EventName`, `EventLocation`, `EventType`, `EventDescription`) VALUES
(11, 'Malaa', 'Q nightclub', 'Clubbing', 'Lets dance with one of the best DJs '),
(12, 'Grum', 'Underground', 'Rave', 'Rave underground Seattle'),
(13, 'Lauv', 'Wamu', 'Concert', 'Tour How I''m feeling'),
(14, 'Seahawks', 'Stadium', 'Football match', 'Enjoying football game '),
(15, 'Sounders Game', 'Stadium', 'Soccer game', 'Watch sounders play');

-- --------------------------------------------------------

--
-- Table structure for table `UserActivities`
--

CREATE TABLE IF NOT EXISTS `UserActivities` (
  `UserActivityID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `ActivityID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `UserActivities`
--

INSERT INTO `UserActivities` (`UserActivityID`, `UserID`, `ActivityID`) VALUES
(51, 21, 1),
(52, 22, 2),
(53, 23, 3),
(54, 24, 4),
(55, 25, 5);

-- --------------------------------------------------------

--
-- Table structure for table `UserEvents`
--

CREATE TABLE IF NOT EXISTS `UserEvents` (
  `UserEventID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `EventID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `UserEvents`
--

INSERT INTO `UserEvents` (`UserEventID`, `UserID`, `EventID`) VALUES
(61, 21, 11),
(62, 22, 12),
(63, 23, 13),
(64, 24, 14),
(65, 25, 15);

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE IF NOT EXISTS `Users` (
  `UserID` int(11) NOT NULL,
  `UserFullName` varchar(255) DEFAULT NULL,
  `UserEmail` varchar(255) DEFAULT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `UserBio` varchar(500) DEFAULT NULL,
  `UserCity` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`UserID`, `UserFullName`, `UserEmail`, `Username`, `Password`, `UserBio`, `UserCity`) VALUES
(21, 'Ivan Dimov', 'ivan@gmail.com', 'Vanco', 'vancilica', 'I like raves and babes', 'Tacoma'),
(22, 'Sabri Tahir', 'sabri@gmail.com', 'sabreezy', 'Sabrisha', 'I like java and books', 'Lynwood'),
(23, 'Joseph Yehulugeta', 'joe@gmail.com', 'josephinho', 'Imalittlegirl', 'I like to sheckle and paganship', 'Kent'),
(24, 'Tyler Newton', 'tyler@gmail.com', 'tylerta', 'OHADsk', 'I like to front end and back end', 'Kent'),
(25, 'Dusan Matic', 'dusko@gmail.com', 'Radmila', 'Radmilitza', 'I like fast cars ', 'Seattle');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Activities`
--
ALTER TABLE `Activities`
  ADD PRIMARY KEY (`ActivityID`);

--
-- Indexes for table `ActivityReviews`
--
ALTER TABLE `ActivityReviews`
  ADD KEY `ActivityID` (`ActivityID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `EventReviews`
--
ALTER TABLE `EventReviews`
  ADD KEY `UserID` (`UserID`),
  ADD KEY `EventID` (`EventID`);

--
-- Indexes for table `Events`
--
ALTER TABLE `Events`
  ADD PRIMARY KEY (`EventID`);

--
-- Indexes for table `UserActivities`
--
ALTER TABLE `UserActivities`
  ADD KEY `ActivityID` (`ActivityID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `UserEvents`
--
ALTER TABLE `UserEvents`
  ADD KEY `UserID` (`UserID`),
  ADD KEY `EventID` (`EventID`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`UserID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ActivityReviews`
--
ALTER TABLE `ActivityReviews`
  ADD CONSTRAINT `ActivityReviews_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `Users` (`UserID`),
  ADD CONSTRAINT `ActivityReviews_ibfk_1` FOREIGN KEY (`ActivityID`) REFERENCES `Activities` (`ActivityID`);

--
-- Constraints for table `EventReviews`
--
ALTER TABLE `EventReviews`
  ADD CONSTRAINT `EventReviews_ibfk_2` FOREIGN KEY (`EventID`) REFERENCES `Events` (`EventID`),
  ADD CONSTRAINT `EventReviews_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `Users` (`UserID`);

--
-- Constraints for table `UserActivities`
--
ALTER TABLE `UserActivities`
  ADD CONSTRAINT `UserActivities_ibfk_3` FOREIGN KEY (`UserID`) REFERENCES `Users` (`UserID`),
  ADD CONSTRAINT `UserActivities_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `Users` (`UserID`),
  ADD CONSTRAINT `UserActivities_ibfk_2` FOREIGN KEY (`ActivityID`) REFERENCES `Activities` (`ActivityID`);

--
-- Constraints for table `UserEvents`
--
ALTER TABLE `UserEvents`
  ADD CONSTRAINT `UserEvents_ibfk_2` FOREIGN KEY (`EventID`) REFERENCES `Events` (`EventID`),
  ADD CONSTRAINT `UserEvents_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `Users` (`UserID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
