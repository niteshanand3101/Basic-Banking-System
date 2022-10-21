-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2022 at 09:31 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mybank`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branchId` int(11) NOT NULL,
  `branchNo` varchar(111) NOT NULL,
  `branchName` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branchId`, `branchNo`, `branchName`) VALUES
(10001, '284585', 'HANUMAN NAGAR'),
(10012, '100102', 'RAJENDRA NAGAR');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedbackId` int(11) NOT NULL,
  `message` text NOT NULL,
  `userId` double NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `email` varchar(111) NOT NULL,
  `password` varchar(111) NOT NULL,
  `type` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `email`, `password`, `type`, `date`) VALUES
(1, 'cashier@cashier.com', 'cashier', 'cashier', '2022-07-15 04:36:27'),
(2, 'manager@manager.com', 'manager', 'manager', '2022-07-15 04:36:27'),
(3, 'sadfas@gmail.com', 'sdfas', 'type', '2022-07-16 07:13:12'),
(4, 'fkgeo@gmail.com', 'asdfsa', 'type', '2022-07-16 07:13:18'),
(6, 'cashier2@cashier.com', 'cashier2', 'cashier', '2022-07-16 07:14:47');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `userId` varchar(111) NOT NULL,
  `notice` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `userId`, `notice`, `date`) VALUES
(1, '1', 'Dear Customer! <br> If slowness is observed during Login Page loading, Please refresh the page for better experience', '2022-07-14 13:11:46'),
(2, '2', 'Dear Customer! <br> If slowness is observed during Login Page loading, Please refresh the page for better experience', '2022-07-16 06:29:23');

-- --------------------------------------------------------

--
-- Table structure for table `otheraccounts`
--

CREATE TABLE `otheraccounts` (
  `id` int(11) NOT NULL,
  `accountNo` varchar(111) NOT NULL,
  `bankName` varchar(111) NOT NULL,
  `holderName` varchar(111) NOT NULL,
  `balance` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `otheraccounts`
--

INSERT INTO `otheraccounts` (`id`, `accountNo`, `bankName`, `holderName`, `balance`, `date`) VALUES
(201, '12001122', 'STATE BANK OF INDIA', 'NITESH ANAND', '40800021', '2022-07-14 11:55:07'),
(202, '12001123', 'ICICI BANK', 'NIKITA KUMARI', '2000000', '2022-07-14 11:55:07'),
(203, '12001124', 'PUNJAB NATIONAL BANK', 'ANKITA KUMARI', '71000025', '2022-07-14 11:55:07');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transactionId` int(11) NOT NULL,
  `action` varchar(111) NOT NULL,
  `credit` varchar(111) NOT NULL,
  `debit` varchar(111) NOT NULL,
  `balance` varchar(111) NOT NULL,
  `beneId` varchar(111) NOT NULL,
  `other` varchar(111) NOT NULL,
  `userId` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transactionId`, `action`, `credit`, `debit`, `balance`, `beneId`, `other`, `userId`, `date`) VALUES
(4, 'transfer', '', '200', '', '', '12001122', 1, '2022-07-14 12:33:40'),
(5, 'transfer', '', '200', '', '', '10054777', 1, '2022-07-14 12:56:48'),
(6, 'transfer', '', '333', '', '', '10054777', 1, '2022-07-14 12:57:20'),
(7, 'transfer', '', '222', '', '', '10054777', 1, '2022-07-15 12:58:19'),
(8, 'transfer', '', '333', '', '', '10054777', 1, '2022-07-15 13:00:23'),
(16, 'withdraw', '', '100', '', '', '23423', 1, '2022-07-16 08:31:59'),
(17, 'deposit', '1200', '', '', '', '234232', 1, '2022-07-16 08:32:17'),
(18, 'transfer', '', '467', '', '', '12001122', 1, '2022-07-16 06:44:48'),
(22, 'deposit', '1200', '', '', '', '32424', 2, '2022-07-17 06:56:29'),
(23, 'withdraw', '', '12', '', '', '23423', 2, '2022-07-17 06:59:02'),
(24, 'deposit', '12', '', '', '', '21321', 2, '2022-07-17 06:59:20'),
(25, 'transfer', '', '1200', '', '', '10054777', 1, '2022-07-18 07:01:37'),
(26, 'deposit', '600', '', '', '', '342342', 2, '2022-07-18 07:04:39'),
(27, 'withdraw', '', '1012', '', '', '23423', 2, '2022-07-18 07:04:58'),
(28, 'transfer', '', '2', '', '', '12001122', 1, '2022-10-19 16:12:56'),
(29, 'deposit', '2', '', '', '', '1', 2, '2022-10-19 16:33:05'),
(30, 'transfer', '', '1', '', '', '10054777', 1, '2022-10-19 18:18:27'),
(31, 'transfer', '', '1', '', '', '10054777', 2, '2022-10-19 18:44:03');

-- --------------------------------------------------------

--
-- Table structure for table `useraccounts`
--

CREATE TABLE `useraccounts` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `name` varchar(111) NOT NULL,
  `balance` varchar(111) NOT NULL,
  `cnic` varchar(111) NOT NULL,
  `number` varchar(111) NOT NULL,
  `city` varchar(111) NOT NULL,
  `address` varchar(111) NOT NULL,
  `source` varchar(111) NOT NULL,
  `accountNo` varchar(111) NOT NULL,
  `branch` varchar(111) NOT NULL,
  `accountType` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `useraccounts`
--

INSERT INTO `useraccounts` (`id`, `email`, `password`, `name`, `balance`, `cnic`, `number`, `city`, `address`, `source`, `accountNo`, `branch`, `accountType`, `date`) VALUES
(1, 'ankita@gmail.com', 'ankita', 'ANKITA KUMARI', '98000256', '3210375555426', '9898589802', 'PATNA', 'RAJENDRA NAGAR', 'WORKS AT AMAZON', '12001124', '10012', 'SAVINGS', '2022-07-14 05:50:06'),
(2, 'nikita@gmail.com', 'nikita', 'NIKITA KUMARI', '1600006', '3210375555343', '7589825496', 'PATNA', 'KANKERBAGH', 'C A', '12001123', '10001', 'SAVINGS', '2022-07-14 04:50:06'),
(6, 'nitesh@gmail.com', 'nitesh', 'NITESH ANAND', '234234', '3240338834902', '9875865858', 'PATNA', 'BORING ROAD', 'SOFTWARE ENGINEER', '12001122', '10012', 'SAVINGS', '2022-07-16 07:52:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branchId`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedbackId`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otheraccounts`
--
ALTER TABLE `otheraccounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transactionId`);

--
-- Indexes for table `useraccounts`
--
ALTER TABLE `useraccounts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branchId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10014;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedbackId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `otheraccounts`
--
ALTER TABLE `otheraccounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transactionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `useraccounts`
--
ALTER TABLE `useraccounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
