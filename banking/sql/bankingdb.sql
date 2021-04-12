-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2021 at 02:43 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bankingdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers_tb`
--

CREATE TABLE `customers_tb` (
  `customers_id` int(11) NOT NULL,
  `customers_name` varchar(60) COLLATE utf8_bin NOT NULL,
  `customers_email` varchar(100) COLLATE utf8_bin NOT NULL,
  `customers_current_balance` bigint(60) NOT NULL,
  `customers_account_no` bigint(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `customers_tb`
--

INSERT INTO `customers_tb` (`customers_id`, `customers_name`, `customers_email`, `customers_current_balance`, `customers_account_no`) VALUES
(1, 'Yash', 'yash@gmail.com', 97000, 100012345801),
(2, 'Sanjay', 'sanjay@gmail.com', 80000, 100012345802),
(3, 'Raj', 'raj@gmail.com', 75000, 100012345803),
(4, 'Meena', 'meena@gmail.com', 100000, 100012345804),
(5, 'Sonu', 'sonu@gmail.com', 150000, 100012345805),
(6, 'Ankit', 'ankit@gmail.com', 80000, 100012345806),
(7, 'Anand', 'anand@gmail.com', 76000, 100012345807),
(8, 'Sam', 'sam@gmail.com', 80000, 100012345808),
(9, 'Ritu', 'ritu@gmail.com', 100000, 100012345809),
(10, 'Ayesha', 'ayesha@gmail.com', 100000, 100012345810);

-- --------------------------------------------------------

--
-- Table structure for table `transaction_tb`
--

CREATE TABLE `transaction_tb` (
  `transaction_id` int(11) NOT NULL,
  `sender` varchar(60) COLLATE utf8_bin NOT NULL,
  `receiver` varchar(60) COLLATE utf8_bin NOT NULL,
  `balance` bigint(100) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `transaction_tb`
--

INSERT INTO `transaction_tb` (`transaction_id`, `sender`, `receiver`, `balance`, `date_time`) VALUES
(1, 'Yash', 'Anand', 1000, '2021-04-12 12:12:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers_tb`
--
ALTER TABLE `customers_tb`
  ADD PRIMARY KEY (`customers_id`);

--
-- Indexes for table `transaction_tb`
--
ALTER TABLE `transaction_tb`
  ADD PRIMARY KEY (`transaction_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers_tb`
--
ALTER TABLE `customers_tb`
  MODIFY `customers_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transaction_tb`
--
ALTER TABLE `transaction_tb`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
