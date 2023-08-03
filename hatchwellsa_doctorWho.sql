-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 03, 2023 at 05:08 AM
-- Server version: 8.0.33-0ubuntu0.20.04.2
-- PHP Version: 7.4.3-4ubuntu2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hatchwellsa_doctorWho`
--

-- --------------------------------------------------------

--
-- Table structure for table `companions`
--

CREATE TABLE `companions` (
  `companionID` smallint UNSIGNED NOT NULL,
  `Fname` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Lname` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `actrFname` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `actrLname` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `companions`
--

INSERT INTO `companions` (`companionID`, `Fname`, `Lname`, `actrFname`, `actrLname`) VALUES
(1, 'susan', NULL, 'carole', 'Annford'),
(2, 'barbara', 'wright', 'jacqueline', 'hill'),
(3, 'ian', 'chesterton', 'william', 'russell'),
(4, 'vicki', NULL, 'maureen', 'o’Brien'),
(5, 'steven', 'taylor', 'peter', 'purves'),
(6, 'katarina', NULL, 'adrienne', 'hill'),
(7, 'sara', 'kingdom', 'jean', 'marsh'),
(8, 'dodo', 'chaplet', 'jackie', 'lane'),
(9, 'polly', NULL, 'anneke', 'wills'),
(10, 'ben', 'jackson', 'michael', 'craze'),
(11, 'jamie', 'McCrimmon', 'frazer', 'hines'),
(12, 'victoria', 'waterfield', 'deborah', 'watling'),
(13, 'zoe', 'heriot', 'wendy', 'padbury'),
(14, 'liz', 'shaw', 'caroline', 'john'),
(15, 'jo', 'grant', 'katy', 'manning'),
(16, 'sarah', 'smith', 'elisabeth', 'sladen'),
(17, 'leela', NULL, 'louise', 'jameson'),
(18, 'k9', NULL, 'john', 'leeson'),
(19, 'tegan', 'jovanka', 'janet', 'fielding'),
(20, 'kamelion', NULL, 'gerald', 'flood'),
(21, 'melanie', 'bush', 'bonnie', 'langford'),
(22, 'ace', NULL, 'sophie', 'aldred'),
(23, 'lucie', 'miller', 'sheridan', 'smith'),
(24, 'charlotte', 'pollard', 'india', 'fisher'),
(25, 'rose', 'tyler', 'billie', 'piper'),
(26, 'jack', 'harkness', 'john', 'barrowman'),
(27, 'astrid', 'peth', 'kylie', 'minogue'),
(28, 'martha', 'jones', 'freema', 'agyeman'),
(29, 'amy', 'pond', 'karen', 'gillan'),
(30, 'rory', 'williams', 'arthur', 'darvill'),
(31, 'river', 'song', 'alex', 'kingston'),
(32, 'clara', 'oswald', 'jenna-Louise', 'coleman'),
(33, 'graham', 'o’Brien', 'bradley', 'walsh'),
(34, 'ryan', 'sinclair', 'tosin', 'cole'),
(35, 'yasmin', 'khan', 'mandip', 'gill'),
(36, 'donna', 'noble', 'catherine', 'tate'),
(37, 'ruby', 'sunday', 'millie', 'gibson');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `doctorID` smallint UNSIGNED NOT NULL,
  `title` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `actrFname` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `actrLname` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`doctorID`, `title`, `actrFname`, `actrLname`) VALUES
(1, '1st', 'william', 'hartnell'),
(2, '2nd', 'patrick', 'troughton'),
(3, '3rd', 'jon', 'pertwee'),
(4, '4th', 'tom', 'baker'),
(5, '5th', 'peter', 'davison'),
(6, '6th', 'colin', 'baker'),
(7, '7th', 'sylvester', 'mcCoy'),
(8, '8th', 'paul', 'mcGann'),
(9, '9th', 'christopher', 'eccleston'),
(10, '10th', 'david', 'tennant'),
(11, '11th', 'matt', 'smith'),
(12, '12th', 'peter', 'capaldi'),
(13, '13th', 'jodie', 'whittaker'),
(14, '14th', 'david', 'tennant'),
(15, '15th', 'ncuti', 'gatwa');

-- --------------------------------------------------------

--
-- Table structure for table `seasonComps`
--

CREATE TABLE `seasonComps` (
  `seasonCompID` smallint UNSIGNED NOT NULL,
  `seasonID` smallint UNSIGNED NOT NULL,
  `companionID` smallint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seasonComps`
--

INSERT INTO `seasonComps` (`seasonCompID`, `seasonID`, `companionID`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 1, 2),
(4, 2, 2),
(5, 1, 3),
(6, 2, 3),
(7, 2, 4),
(8, 3, 4),
(9, 2, 5),
(10, 3, 5),
(11, 3, 6),
(12, 3, 7),
(13, 3, 8),
(14, 3, 9),
(15, 4, 9),
(16, 3, 10),
(17, 4, 10),
(18, 4, 11),
(19, 5, 11),
(20, 6, 11),
(21, 4, 12),
(22, 5, 12),
(23, 5, 13),
(24, 6, 13),
(25, 8, 14),
(26, 9, 14),
(27, 10, 14),
(28, 14, 15),
(29, 15, 15),
(30, 15, 16),
(31, 16, 16),
(32, 17, 16),
(33, 18, 16),
(34, 18, 17),
(35, 20, 18),
(36, 21, 18),
(37, 24, 19),
(38, 25, 19),
(39, 26, 19),
(40, 29, 20),
(41, 31, 20),
(42, 30, 21),
(43, 31, 21),
(44, 30, 22),
(45, 31, 22),
(46, 32, 23),
(47, 33, 23),
(48, 34, 23),
(49, 32, 24),
(50, 33, 24),
(51, 34, 24),
(52, 33, 25),
(53, 35, 26),
(54, 36, 26),
(55, 37, 26),
(56, 39, 27),
(57, 39, 28),
(58, 39, 29);

-- --------------------------------------------------------

--
-- Table structure for table `seasons`
--

CREATE TABLE `seasons` (
  `seasonID` smallint UNSIGNED NOT NULL,
  `doctorID` smallint UNSIGNED NOT NULL,
  `rating` float NOT NULL,
  `year` smallint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seasons`
--

INSERT INTO `seasons` (`seasonID`, `doctorID`, `rating`, `year`) VALUES
(1, 1, 70, 1963),
(2, 1, 88, 1964),
(3, 1, 83, 1965),
(4, 2, 50, 1966),
(5, 2, 60, 1967),
(6, 2, 71, 1968),
(7, 3, 86, 1970),
(8, 3, 91, 1971),
(9, 3, 73, 1972),
(10, 3, 78, 1972),
(11, 3, 73, 1973),
(12, 4, 75, 1974),
(13, 4, 100, 1975),
(14, 4, 100, 1976),
(15, 4, 83, 1977),
(16, 4, 80, 1978),
(17, 4, 36, 1979),
(18, 4, 67, 1980),
(19, 5, 63, 1982),
(20, 5, 57, 1983),
(21, 5, 43, 1984),
(22, 6, 33, 1985),
(23, 6, 50, 1986),
(24, 7, 29, 1987),
(25, 7, 88, 1988),
(26, 7, 57, 1989),
(27, 7, 78, 1990),
(28, 8, 88, 1991),
(29, 9, 83, 2005),
(30, 10, 92, 2006),
(31, 10, 92, 2007),
(32, 10, 98, 2008),
(33, 11, 92, 2010),
(34, 11, 90, 2011),
(35, 11, 84, 2012),
(36, 12, 79, 2014),
(37, 12, 82, 2015),
(38, 12, 68, 2017),
(39, 13, 16, 2018),
(40, 13, 25, 2020),
(41, 13, 44, 2021);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companions`
--
ALTER TABLE `companions`
  ADD PRIMARY KEY (`companionID`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`doctorID`);

--
-- Indexes for table `seasonComps`
--
ALTER TABLE `seasonComps`
  ADD PRIMARY KEY (`seasonCompID`),
  ADD KEY `seasonID` (`seasonID`),
  ADD KEY `companionID` (`companionID`);

--
-- Indexes for table `seasons`
--
ALTER TABLE `seasons`
  ADD PRIMARY KEY (`seasonID`),
  ADD KEY `doctorID` (`doctorID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `companions`
--
ALTER TABLE `companions`
  MODIFY `companionID` smallint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `doctorID` smallint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `seasonComps`
--
ALTER TABLE `seasonComps`
  MODIFY `seasonCompID` smallint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `seasons`
--
ALTER TABLE `seasons`
  MODIFY `seasonID` smallint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `seasonComps`
--
ALTER TABLE `seasonComps`
  ADD CONSTRAINT `seasonComps_ibfk_1` FOREIGN KEY (`seasonID`) REFERENCES `seasons` (`seasonID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `seasonComps_ibfk_2` FOREIGN KEY (`companionID`) REFERENCES `companions` (`companionID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `seasons`
--
ALTER TABLE `seasons`
  ADD CONSTRAINT `seasons_ibfk_1` FOREIGN KEY (`doctorID`) REFERENCES `doctors` (`doctorID`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
