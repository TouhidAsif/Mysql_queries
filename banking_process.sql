-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2015 at 08:36 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `banking_process`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE IF NOT EXISTS `account` (
  `account_number` varchar(20) NOT NULL,
  `branch_name` varchar(30) NOT NULL,
  `balance` float NOT NULL,
  UNIQUE KEY `account_number` (`account_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`account_number`, `branch_name`, `balance`) VALUES
('ac001', 'sea', 1500),
('ac002', 'sea', 2500),
('ac003', 'sea', 2000),
('ac004', 'sea', 3300),
('ac005', 'sea', 4000),
('ac006', 'river', 2200),
('ac008', 'bird', 2000);

-- --------------------------------------------------------

--
-- Table structure for table `borrower`
--

CREATE TABLE IF NOT EXISTS `borrower` (
  `customer_name` varchar(30) NOT NULL,
  `loan_number` varchar(20) NOT NULL,
  UNIQUE KEY `loan_number` (`loan_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `borrower`
--

INSERT INTO `borrower` (`customer_name`, `loan_number`) VALUES
('pagli1', 'ac001'),
('pagli3', 'ac003'),
('pagli4', 'ac005'),
('pagli10', 'ac10');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE IF NOT EXISTS `branch` (
  `branch_name` varchar(30) NOT NULL,
  `branch_city` varchar(30) NOT NULL,
  `assets` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch_name`, `branch_city`, `assets`) VALUES
('sea', 'noakhali', 10000),
('river', 'noakhali', 15000),
('bird', 'noakhali', 25000);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(30) NOT NULL,
  `customer_street` varchar(30) NOT NULL,
  `customer_city` varchar(30) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `customer_street`, `customer_city`) VALUES
(1, 'pagli1', 'st1', 'ct1'),
(2, 'pagli2', 'st2', 'ct2'),
(3, 'pagli3', 'st3', 'ct3'),
(4, 'pagli4', 'st4', 'ct4'),
(5, 'pagli5', 'st5', 'ct5'),
(6, 'pagli6', 'st6', 'ct6');

-- --------------------------------------------------------

--
-- Table structure for table `depositor`
--

CREATE TABLE IF NOT EXISTS `depositor` (
  `customer_name` varchar(30) NOT NULL,
  `account_number` varchar(20) NOT NULL,
  UNIQUE KEY `account_number` (`account_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `depositor`
--

INSERT INTO `depositor` (`customer_name`, `account_number`) VALUES
('pagli1', 'ac001'),
('pagli3', 'ac002'),
('pagli2', 'ac003'),
('pagli5', 'ac004'),
('pagli4', 'ac005');

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE IF NOT EXISTS `loan` (
  `loan_number` varchar(20) NOT NULL,
  `branch_name` varchar(30) NOT NULL,
  `amount` float NOT NULL,
  UNIQUE KEY `loan_number` (`loan_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`loan_number`, `branch_name`, `amount`) VALUES
('ac001', 'sea', 300),
('ac003', 'river', 1500),
('ac004', 'sea', 2100),
('ac005', 'sea', 2909),
('ac10', 'sea', 1000);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
