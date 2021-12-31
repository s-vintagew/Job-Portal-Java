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
-- Database: `company`
--

-- --------------------------------------------------------

--
-- Table structure for table `app`
--

CREATE TABLE `app` (
  `job_id` int(225) DEFAULT NULL,
  `username` varchar(225) DEFAULT NULL,
  `company_id` int(6) DEFAULT NULL,
  `status` varchar(225) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app`
--

INSERT INTO `app` (`job_id`, `username`, `company_id`, `status`) VALUES
(1, 'test1', 1, 'Rejected'),
(2, 'test1', 1, 'Accepted'),
(3, 'test2', 2, 'Pending'),
(2, 'test2', 1, 'Pending'),
(3, 'test2', 2, 'Pending'),
(3, 'test2', 2, 'Pending'),
(4, 'test1', 3, 'Pending'),
(4, 'test2', 3, 'Pending'),
(4, 'test2', 3, 'Pending'),
(4, 'test2', 3, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `company_id` int(6) NOT NULL,
  `Name` varchar(225) DEFAULT NULL,
  `State` varchar(25) DEFAULT NULL,
  `city` varchar(25) DEFAULT NULL,
  `street_address` varchar(225) DEFAULT NULL,
  `contact_no` bigint(10) DEFAULT NULL,
  `email` varchar(225) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`company_id`, `Name`, `State`, `city`, `street_address`, `contact_no`, `email`, `username`) VALUES
(1, 'test1', 'gujrat', 'ahmedabad', '', 7894561230, 't@t.com', 'test1'),
(2, 'test2', 'wb', 'kolkata', '', 7845961230, 't@t.com', 'test2'),
(3, 'test3', NULL, NULL, NULL, 7845966123, 't@t.cm', 'test3');

-- --------------------------------------------------------

--
-- Table structure for table `company_jobs`
--

CREATE TABLE `company_jobs` (
  `Job_id` int(225) NOT NULL,
  `job_skill` varchar(225) DEFAULT NULL,
  `job_role` varchar(225) DEFAULT NULL,
  `salary` int(10) DEFAULT NULL,
  `vacancy` int(4) NOT NULL,
  `company_id` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company_jobs`
--

INSERT INTO `company_jobs` (`Job_id`, `job_skill`, `job_role`, `salary`, `vacancy`, `company_id`) VALUES
(1, 'c++', 'manager', 50000, 5, 1),
(2, 'ruby', 'assistant', 10000, 10, 1),
(3, 'python', 'manager', 60000, 89, 2),
(4, 'c++', 'manager', 460000, 10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `logindata`
--

CREATE TABLE `logindata` (
  `username` varchar(225) NOT NULL,
  `passcode` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logindata`
--

INSERT INTO `logindata` (`username`, `passcode`) VALUES
('test1', 't1'),
('test2', 't2'),
('test3', 't3');

-- --------------------------------------------------------

--
-- Table structure for table `notif`
--

CREATE TABLE `notif` (
  `cid` int(6) DEFAULT NULL,
  `notification` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app`
--
ALTER TABLE `app`
  ADD KEY `job_id` (`job_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `company_jobs`
--
ALTER TABLE `company_jobs`
  ADD PRIMARY KEY (`Job_id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `logindata`
--
ALTER TABLE `logindata`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `notif`
--
ALTER TABLE `notif`
  ADD KEY `cid` (`cid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `company_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `company_jobs`
--
ALTER TABLE `company_jobs`
  MODIFY `Job_id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `app`
--
ALTER TABLE `app`
  ADD CONSTRAINT `app_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `company_jobs` (`Job_id`);

--
-- Constraints for table `company_jobs`
--
ALTER TABLE `company_jobs`
  ADD CONSTRAINT `company_jobs_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `companies` (`company_id`);

--
-- Constraints for table `notif`
--
ALTER TABLE `notif`
  ADD CONSTRAINT `notif_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `companies` (`company_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
