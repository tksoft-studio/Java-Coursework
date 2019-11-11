-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2019 at 06:58 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--
CREATE DATABASE IF NOT EXISTS `hospital` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `hospital`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` varchar(2) NOT NULL,
  `title` varchar(10) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `dob` date NOT NULL,
  `tel` varchar(12) NOT NULL,
  `nic` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pwd` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `admin`:
--

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `title`, `fname`, `lname`, `gender`, `dob`, `tel`, `nic`, `address`, `email`, `pwd`) VALUES
('A1', 'MR', 'Tharusha', 'Alpha', 'Male', '1999-01-02', '084569321', '123456789V', 'Hello world', '123@456.com', 'one');

-- --------------------------------------------------------

--
-- Table structure for table `diagnosis`
--

CREATE TABLE `diagnosis` (
  `UPIN` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `bmi` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `diagnosis`:
--   `UPIN`
--       `patients` -> `UPIN`
--

--
-- Dumping data for table `diagnosis`
--

INSERT INTO `diagnosis` (`UPIN`, `date`, `bmi`) VALUES
('10026140', '2019-11-11', 21.56);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `ID` varchar(4) NOT NULL,
  `title` varchar(10) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `dob` date NOT NULL,
  `tel` varchar(12) NOT NULL,
  `nic` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mlicense` varchar(20) NOT NULL,
  `speciality` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pwd` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `doctor`:
--

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`ID`, `title`, `fname`, `lname`, `gender`, `dob`, `tel`, `nic`, `address`, `mlicense`, `speciality`, `email`, `pwd`) VALUES
('D001', 'Dr', 'Yashen', 'Raveesha', 'Male', '1985-02-12', '7894561235', '456789123V', 'Maththegoda', 'no license', 'Psycology', 'jkl@wer.lk', '123');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `UPIN` varchar(20) NOT NULL,
  `title` varchar(10) NOT NULL,
  `fName` varchar(20) NOT NULL,
  `lName` varchar(20) NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `DOB` date NOT NULL,
  `Address` varchar(255) NOT NULL,
  `tele` int(10) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `patients`:
--

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`UPIN`, `title`, `fName`, `lName`, `Gender`, `DOB`, `Address`, `tele`, `email`) VALUES
('10026140', 'MR', 'Suchith', 'Devanga', 'Male', '2019-11-02', 'Moratuwa', 1234567890, '234@fg.lk');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacist`
--

CREATE TABLE `pharmacist` (
  `ID` varchar(3) NOT NULL,
  `title` varchar(15) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `dob` date NOT NULL,
  `tel` varchar(12) NOT NULL,
  `nic` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pwd` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `pharmacist`:
--

--
-- Dumping data for table `pharmacist`
--

INSERT INTO `pharmacist` (`ID`, `title`, `fname`, `lname`, `gender`, `dob`, `tel`, `nic`, `address`, `email`, `pwd`) VALUES
('P1', 'Miss', 'Java', 'Espresso', 'Female', '2019-01-01', '45699871230', '2574255577v', 'IDK', 'wtf@java.io', 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy`
--

CREATE TABLE `pharmacy` (
  `ID` varchar(15) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `type` varchar(20) NOT NULL,
  `dosage` varchar(20) NOT NULL,
  `uprice` decimal(8,2) NOT NULL,
  `availability` int(6) NOT NULL,
  `category` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `pharmacy`:
--

--
-- Dumping data for table `pharmacy`
--

INSERT INTO `pharmacy` (`ID`, `Name`, `type`, `dosage`, `uprice`, `availability`, `category`) VALUES
('T001', 'Panadol', 'Tablet', '250mg', '18.00', 10000, 'pain killer');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `UPIN` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `n1` varchar(50) NOT NULL,
  `t1` varchar(15) NOT NULL,
  `d1` varchar(15) NOT NULL,
  `q1` varchar(10) NOT NULL,
  `n2` varchar(50) NOT NULL,
  `t2` varchar(15) NOT NULL,
  `d2` varchar(15) NOT NULL,
  `q2` varchar(10) NOT NULL,
  `n3` varchar(50) NOT NULL,
  `t3` varchar(15) NOT NULL,
  `d3` varchar(15) NOT NULL,
  `q3` varchar(10) NOT NULL,
  `n4` varchar(50) NOT NULL,
  `t4` varchar(15) NOT NULL,
  `d4` varchar(15) NOT NULL,
  `q4` varchar(10) NOT NULL,
  `n5` varchar(50) NOT NULL,
  `t5` varchar(15) NOT NULL,
  `d5` varchar(15) NOT NULL,
  `q5` varchar(10) NOT NULL,
  `n6` varchar(50) NOT NULL,
  `t6` varchar(15) NOT NULL,
  `d6` varchar(15) NOT NULL,
  `q6` varchar(10) NOT NULL,
  `n7` varchar(50) NOT NULL,
  `t7` varchar(15) NOT NULL,
  `d7` varchar(15) NOT NULL,
  `q7` varchar(10) NOT NULL,
  `n8` varchar(50) NOT NULL,
  `t8` varchar(15) NOT NULL,
  `d8` varchar(15) NOT NULL,
  `q8` varchar(10) NOT NULL,
  `n9` varchar(50) NOT NULL,
  `t9` varchar(15) NOT NULL,
  `d9` varchar(15) NOT NULL,
  `q9` varchar(10) NOT NULL,
  `n10` varchar(50) NOT NULL,
  `t10` varchar(15) NOT NULL,
  `d10` varchar(15) NOT NULL,
  `q10` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `prescription`:
--   `UPIN`
--       `patients` -> `UPIN`
--

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`UPIN`, `date`, `n1`, `t1`, `d1`, `q1`, `n2`, `t2`, `d2`, `q2`, `n3`, `t3`, `d3`, `q3`, `n4`, `t4`, `d4`, `q4`, `n5`, `t5`, `d5`, `q5`, `n6`, `t6`, `d6`, `q6`, `n7`, `t7`, `d7`, `q7`, `n8`, `t8`, `d8`, `q8`, `n9`, `t9`, `d9`, `q9`, `n10`, `t10`, `d10`, `q10`) VALUES
('10026140', '2019-11-11', 'Panadol', 'Tablets', '250mg', '12', 'Vitamin C', 'Tablets', '100mg', '20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `reg`
--

CREATE TABLE `reg` (
  `ID` varchar(2) NOT NULL,
  `title` varchar(15) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `dob` date NOT NULL,
  `tel` varchar(12) NOT NULL,
  `nic` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pwd` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `reg`:
--

--
-- Dumping data for table `reg`
--

INSERT INTO `reg` (`ID`, `title`, `fname`, `lname`, `gender`, `dob`, `tel`, `nic`, `address`, `email`, `pwd`) VALUES
('R1', 'Prof', 'Kavindu', 'Prabashwara', 'Male', '2019-08-02', '7894561230', '458962351V', 'Pannipitiya', 'ggjhgjh@hgjh.uk', '456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `diagnosis`
--
ALTER TABLE `diagnosis`
  ADD KEY `diagnosis_ibfk_1` (`UPIN`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`UPIN`);

--
-- Indexes for table `pharmacist`
--
ALTER TABLE `pharmacist`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `pharmacy`
--
ALTER TABLE `pharmacy`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`UPIN`,`date`);

--
-- Indexes for table `reg`
--
ALTER TABLE `reg`
  ADD PRIMARY KEY (`ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `diagnosis`
--
ALTER TABLE `diagnosis`
  ADD CONSTRAINT `diagnosis_ibfk_1` FOREIGN KEY (`UPIN`) REFERENCES `patients` (`UPIN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `prescription`
--
ALTER TABLE `prescription`
  ADD CONSTRAINT `prescription_ibfk_1` FOREIGN KEY (`UPIN`) REFERENCES `patients` (`UPIN`) ON DELETE CASCADE ON UPDATE CASCADE;


--
-- Metadata
--
USE `phpmyadmin`;

--
-- Metadata for table admin
--

--
-- Metadata for table diagnosis
--

--
-- Metadata for table doctor
--

--
-- Metadata for table patients
--

--
-- Metadata for table pharmacist
--

--
-- Metadata for table pharmacy
--

--
-- Metadata for table prescription
--

--
-- Metadata for table reg
--

--
-- Metadata for database hospital
--
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
