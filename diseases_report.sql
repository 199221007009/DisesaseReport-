-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 23, 2021 at 12:29 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `diseases_report`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(50) NOT NULL,
  `psw` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `psw`) VALUES
('admin', '11');

-- --------------------------------------------------------

--
-- Table structure for table `awarness`
--

CREATE TABLE `awarness` (
  `id` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `orgin` varchar(50) NOT NULL,
  `symptoms` varchar(50) NOT NULL,
  `precaution` varchar(50) NOT NULL,
  `treatment` varchar(50) NOT NULL,
  `details` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `awarness`
--

INSERT INTO `awarness` (`id`, `name`, `orgin`, `symptoms`, `precaution`, `treatment`, `details`) VALUES
(1, 'test', 'Trichy', 'fever cold caugh ', 'Test Precaution', 'Vacine Processing', 'test details'),
(2, 'Covid-19', 'china', 'fever, breathing difficulty', 'wearmask', 'Special tratment', 'Available in GH only');

-- --------------------------------------------------------

--
-- Table structure for table `diseases`
--

CREATE TABLE `diseases` (
  `id` int(5) NOT NULL,
  `hname` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `person` varchar(50) NOT NULL,
  `orgin` varchar(50) NOT NULL,
  `symptoms` varchar(250) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `mcenter` varchar(50) NOT NULL,
  `status` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diseases`
--

INSERT INTO `diseases` (`id`, `hname`, `name`, `person`, `orgin`, `symptoms`, `fname`, `mcenter`, `status`) VALUES
(1, 'test', 'test', 'admin', 'Trichy', 'fever Cold Stomach Pain', 'complaint.sql', 'admin', 'Updated Sucessfully'),
(2, 'test', 'Covid-19', 'PT.Kumar', 'china', 'fever, head ache', 'dbconnect.php', '', ''),
(3, 'kmc', 'SARS', 'PT.Kumar', 'china', 'fever', 'tutor_find.doc', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `hregist`
--

CREATE TABLE `hregist` (
  `id` int(5) NOT NULL,
  `hname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `psw` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hregist`
--

INSERT INTO `hregist` (`id`, `hname`, `email`, `phone`, `location`, `address`, `psw`) VALUES
(1, 'test', 'test@gmail.com', '9087408475', 'trichy', 'trichy', '111'),
(2, 'KMC', 'kmc@info.com', '0431 2777777', 'tennur', 'tennur, trichy', '123');

-- --------------------------------------------------------

--
-- Table structure for table `mregister`
--

CREATE TABLE `mregister` (
  `id` int(50) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `psw` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `mregister`
--

INSERT INTO `mregister` (`id`, `name`, `email`, `phone`, `location`, `address`, `uname`, `psw`) VALUES
(1, 'test', 'test@gmail.com', '9087408476', 'trichy', 'trichy', 'admin', '111');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(5) NOT NULL,
  `hname` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `age` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `reason` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `hname`, `name`, `gender`, `age`, `phone`, `reason`, `date`) VALUES
(1, 'test', 'admin', 'male', '21', '9087408475', 'test reason', '2020-10-23'),
(2, 'kmc', 'PT.Ram', 'male', '31', '9876547654', 'Fever', '2021-10-23');
