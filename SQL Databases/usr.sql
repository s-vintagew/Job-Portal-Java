-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2021 at 04:58 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `usr`
--

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `username` varchar(225) NOT NULL,
  `secondary` varchar(225) DEFAULT NULL,
  `year_of_passing_secondary` int(4) DEFAULT NULL,
  `Higher_secondary_or_diploma` varchar(225) DEFAULT NULL,
  `year_of_passing_higher_secondary` int(4) DEFAULT NULL,
  `degree` varchar(225) DEFAULT NULL,
  `year_of_completion_degree` int(4) DEFAULT NULL,
  `masters_` varchar(225) DEFAULT NULL,
  `year_of_completion_masters` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`username`, `secondary`, `year_of_passing_secondary`, `Higher_secondary_or_diploma`, `year_of_passing_higher_secondary`, `degree`, `year_of_completion_degree`, `masters_`, `year_of_completion_masters`) VALUES
('test1', '99', 2018, '96', 2020, '9.8', 2022, '', 0),
('test2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job_applied`
--

CREATE TABLE `job_applied` (
  `username` varchar(225) DEFAULT NULL,
  `job_id` int(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_applied`
--

INSERT INTO `job_applied` (`username`, `job_id`) VALUES
('test1', 1),
('test1', 2),
('test2', 3),
('test2', 2),
('test2', 3),
('test2', 3),
('test1', 4),
('test2', 4),
('test2', 4),
('test2', 4);

-- --------------------------------------------------------

--
-- Table structure for table `logindata`
--

CREATE TABLE `logindata` (
  `username` varchar(225) NOT NULL,
  `passcode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logindata`
--

INSERT INTO `logindata` (`username`, `passcode`) VALUES
('test1', 't1'),
('test2', 't2');

-- --------------------------------------------------------

--
-- Table structure for table `notif`
--

CREATE TABLE `notif` (
  `username` varchar(225) DEFAULT NULL,
  `notif` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `username` varchar(225) NOT NULL,
  `skill1` varchar(25) DEFAULT NULL,
  `skill2` varchar(25) DEFAULT NULL,
  `skill3` varchar(25) DEFAULT NULL,
  `skill4` varchar(25) DEFAULT NULL,
  `skill5` varchar(25) DEFAULT NULL,
  `skill6` varchar(25) DEFAULT NULL,
  `skill7` varchar(25) DEFAULT NULL,
  `skill8` varchar(25) DEFAULT NULL,
  `skill9` varchar(25) DEFAULT NULL,
  `skill10` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`username`, `skill1`, `skill2`, `skill3`, `skill4`, `skill5`, `skill6`, `skill7`, `skill8`, `skill9`, `skill10`) VALUES
('test1', 'c', 'c++', 'java', '', '', '', '', '', '', ''),
('test2', 'python', 'ruby', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

CREATE TABLE `userdata` (
  `username` varchar(225) NOT NULL,
  `Name` varchar(225) DEFAULT NULL,
  `email` varchar(225) DEFAULT NULL,
  `phone` bigint(10) DEFAULT NULL,
  `age` int(5) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `address` varchar(225) DEFAULT NULL,
  `WorkExperience` varchar(225) DEFAULT NULL,
  `certifications` varchar(255) DEFAULT NULL,
  `projects` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userdata`
--

INSERT INTO `userdata` (`username`, `Name`, `email`, `phone`, `age`, `gender`, `address`, `WorkExperience`, `certifications`, `projects`) VALUES
('test1', 'test1', 't@t.com', 7845962130, 19, 'Male', 'd', 'ghgh', 'sdasd', 'github'),
('test2', 'test2', 't@t.com', 7845961230, 19, 'Female', '', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `job_applied`
--
ALTER TABLE `job_applied`
  ADD KEY `username` (`username`);

--
-- Indexes for table `logindata`
--
ALTER TABLE `logindata`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `userdata`
--
ALTER TABLE `userdata`
  ADD PRIMARY KEY (`username`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `job_applied`
--
ALTER TABLE `job_applied`
  ADD CONSTRAINT `job_applied_ibfk_1` FOREIGN KEY (`username`) REFERENCES `userdata` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
