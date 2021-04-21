-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2021 at 06:40 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `info`
--

-- --------------------------------------------------------

--
-- Table structure for table `67832`
--

CREATE TABLE `67832` (
  `COURSE NAME` text NOT NULL,
  `COURSE CODE` varchar(20) NOT NULL,
  `UNIT` int(11) DEFAULT NULL,
  `SCORE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `67832`
--

INSERT INTO `67832` (`COURSE NAME`, `COURSE CODE`, `UNIT`, `SCORE`) VALUES
('Advanced Chemistry', 'CHM401', 4, 99),
('Organic Chemistry', 'CHM402', 3, 80),
('Data Structures', 'CSC402', 3, 90),
('Object Oriented Programming', 'CSC407', 2, 90),
('Advanced Surgery', 'MDS405', 6, 78),
('Introduction to Calculus', 'MTH301', 2, 90),
('Advanced Integration', 'MTH407', 2, 90);

-- --------------------------------------------------------

--
-- Table structure for table `2204866`
--

CREATE TABLE `2204866` (
  `COURSE NAME` text NOT NULL,
  `COURSE CODE` varchar(20) NOT NULL,
  `UNIT` int(11) DEFAULT NULL,
  `SCORE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `2204866`
--

INSERT INTO `2204866` (`COURSE NAME`, `COURSE CODE`, `UNIT`, `SCORE`) VALUES
('Organic Chemistry', 'CHM402', 3, 90),
('Quantum Computing', 'CPE401', 4, 80),
('Advanced Computing', 'CSC401', 3, 84),
('Object Oriented Programming', 'CSC407', 2, 97),
('Introduction to Body Parts', 'MDS209', 3, 80),
('Introduction to Calculus', 'MTH301', 2, 85),
('Advanced Integration', 'MTH407', 2, 80);

-- --------------------------------------------------------

--
-- Table structure for table `chm401`
--

CREATE TABLE `chm401` (
  `REG_NUM` varchar(20) NOT NULL,
  `NAME` text NOT NULL,
  `SCORE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chm401`
--

INSERT INTO `chm401` (`REG_NUM`, `NAME`, `SCORE`) VALUES
('67832', 'ISRAEL PRECIOUS TOLUWANIMI', 99),
('CSC/209', 'BANJO ELIJAH', 0),
('MDS/123/090', 'Roy Ola', 80),
('MDS/2019/10', 'BANJO HALMAT', 100),
('MDS/2019/190', 'ADEWALE FEMI', 70);

-- --------------------------------------------------------

--
-- Table structure for table `chm402`
--

CREATE TABLE `chm402` (
  `REG_NUM` varchar(20) NOT NULL,
  `NAME` text NOT NULL,
  `SCORE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chm402`
--

INSERT INTO `chm402` (`REG_NUM`, `NAME`, `SCORE`) VALUES
('2204866', 'OYESILE BOLUWATIFE', 90),
('67832', 'ISRAEL PRECIOUS TOLUWANIMI', 80),
('CHM/2017/110', 'SMITH MARY', 80),
('MDS/123/090', 'Roy Ola', 70);

-- --------------------------------------------------------

--
-- Table structure for table `chm405`
--

CREATE TABLE `chm405` (
  `REG_NUM` varchar(20) NOT NULL,
  `NAME` text NOT NULL,
  `SCORE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chm405`
--

INSERT INTO `chm405` (`REG_NUM`, `NAME`, `SCORE`) VALUES
('CSC/209', 'BANJO ELIJAH', 0),
('MDS/123/090', 'Roy Ola', 0);

-- --------------------------------------------------------

--
-- Table structure for table `courselist`
--

CREATE TABLE `courselist` (
  `COURSE_TITLE` text NOT NULL,
  `DEPT` text NOT NULL,
  `COURSE_CODE` varchar(7) NOT NULL,
  `COURSE_UNIT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courselist`
--

INSERT INTO `courselist` (`COURSE_TITLE`, `DEPT`, `COURSE_CODE`, `COURSE_UNIT`) VALUES
('Advanced Chemistry', 'CHM', 'CHM401', 4),
('Organic Chemistry', 'CHM', 'CHM402', 3),
('Introduction to Organic', 'CHM', 'CHM405', 2),
('Quantum Computing', 'CSC', 'CPE401', 4),
('Advanced Computing', 'CSC', 'CSC401', 3),
('Data Structures', 'CSC', 'CSC402', 3),
('Data Algorithms', 'CSC', 'CSC405', 3),
('Object Oriented Programming', 'CSC', 'CSC407', 2),
('Introduction to Body Parts', 'MDS', 'MDS209', 3),
('The Internal Organs', 'MDS', 'MDS301', 4),
('Advanced Surgery', 'MDS', 'MDS405', 6),
('Introduction to Calculus', 'MTH', 'MTH301', 2),
('Complex Integration', 'MTH', 'MTH401', 2),
('Advanced Integration', 'MTH', 'MTH407', 2);

-- --------------------------------------------------------

--
-- Table structure for table `cpe401`
--

CREATE TABLE `cpe401` (
  `REG_NUM` varchar(20) NOT NULL,
  `NAME` text NOT NULL,
  `SCORE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cpe401`
--

INSERT INTO `cpe401` (`REG_NUM`, `NAME`, `SCORE`) VALUES
('2204866', 'OYESILE BOLUWATIFE', 80),
('CSC/2017/170', 'BANJO ELIJAH', 90);

-- --------------------------------------------------------

--
-- Table structure for table `csc/209`
--

CREATE TABLE `csc/209` (
  `COURSE NAME` text NOT NULL,
  `COURSE CODE` varchar(20) NOT NULL,
  `UNIT` int(11) DEFAULT NULL,
  `SCORE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `csc/209`
--

INSERT INTO `csc/209` (`COURSE NAME`, `COURSE CODE`, `UNIT`, `SCORE`) VALUES
('Advanced Chemistry', 'CHM401', 4, 0),
('Introduction to Organic', 'CHM405', 2, 0),
('Advanced Computing', 'CSC401', 3, 0),
('Data Structures', 'CSC402', 3, 0),
('Object Oriented Programming', 'CSC407', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `csc309`
--

CREATE TABLE `csc309` (
  `COURSE NAME` text NOT NULL,
  `COURSE CODE` varchar(20) NOT NULL,
  `UNIT` int(11) DEFAULT NULL,
  `SCORE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `csc309`
--

INSERT INTO `csc309` (`COURSE NAME`, `COURSE CODE`, `UNIT`, `SCORE`) VALUES
('Introduction to Body Parts', 'MDS209', 3, 0),
('The Internal Organs', 'MDS301', 4, 0),
('Introduction to Calculus', 'MTH301', 2, 0),
('Complex Integration', 'MTH401', 2, 0),
('Advanced Integration', 'MTH407', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `csc401`
--

CREATE TABLE `csc401` (
  `REG_NUM` varchar(20) NOT NULL,
  `NAME` text NOT NULL,
  `SCORE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `csc401`
--

INSERT INTO `csc401` (`REG_NUM`, `NAME`, `SCORE`) VALUES
('2204866', 'OYESILE BOLUWATIFE', 84),
('CSC/209', 'BANJO ELIJAH', 0);

-- --------------------------------------------------------

--
-- Table structure for table `csc402`
--

CREATE TABLE `csc402` (
  `REG_NUM` varchar(20) NOT NULL,
  `NAME` text NOT NULL,
  `SCORE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `csc402`
--

INSERT INTO `csc402` (`REG_NUM`, `NAME`, `SCORE`) VALUES
('67832', 'ISRAEL PRECIOUS TOLUWANIMI', 90),
('CSC/209', 'BANJO ELIJAH', 0),
('MDS/123/090', 'Roy Ola', 70);

-- --------------------------------------------------------

--
-- Table structure for table `csc405`
--

CREATE TABLE `csc405` (
  `REG_NUM` varchar(20) NOT NULL,
  `NAME` text NOT NULL,
  `SCORE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `csc407`
--

CREATE TABLE `csc407` (
  `REG_NUM` varchar(20) NOT NULL,
  `NAME` text NOT NULL,
  `SCORE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `csc407`
--

INSERT INTO `csc407` (`REG_NUM`, `NAME`, `SCORE`) VALUES
('2204866', 'OYESILE BOLUWATIFE', 97),
('67832', 'ISRAEL PRECIOUS TOLUWANIMI', 90),
('CHM/2017/110', 'SMITH MARY', 87),
('CSC/2017/170', 'BANJO ELIJAH', 100),
('CSC/209', 'BANJO ELIJAH', 0),
('MTH/2017/070', 'FRANK JOHN', 77);

-- --------------------------------------------------------

--
-- Table structure for table `mds209`
--

CREATE TABLE `mds209` (
  `REG_NUM` varchar(20) NOT NULL,
  `NAME` text NOT NULL,
  `SCORE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mds209`
--

INSERT INTO `mds209` (`REG_NUM`, `NAME`, `SCORE`) VALUES
('2204866', 'OYESILE BOLUWATIFE', 80),
('CSC309', 'BANJO ELIJAH', 0),
('MDS/2019/10', 'BANJO HALMAT', 90),
('MDS/2019/190', 'ADEWALE FEMI', 78);

-- --------------------------------------------------------

--
-- Table structure for table `mds301`
--

CREATE TABLE `mds301` (
  `REG_NUM` varchar(20) NOT NULL,
  `NAME` text NOT NULL,
  `SCORE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mds301`
--

INSERT INTO `mds301` (`REG_NUM`, `NAME`, `SCORE`) VALUES
('CSC309', 'BANJO ELIJAH', 0),
('MDS/2019/190', 'ADEWALE FEMI', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mds405`
--

CREATE TABLE `mds405` (
  `REG_NUM` varchar(20) NOT NULL,
  `NAME` text NOT NULL,
  `SCORE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mds405`
--

INSERT INTO `mds405` (`REG_NUM`, `NAME`, `SCORE`) VALUES
('67832', 'ISRAEL PRECIOUS TOLUWANIMI', 78),
('MDS/2019/190', 'ADEWALE FEMI', 90);

-- --------------------------------------------------------

--
-- Table structure for table `mth301`
--

CREATE TABLE `mth301` (
  `REG_NUM` varchar(20) NOT NULL,
  `NAME` text NOT NULL,
  `SCORE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mth301`
--

INSERT INTO `mth301` (`REG_NUM`, `NAME`, `SCORE`) VALUES
('2204866', 'OYESILE BOLUWATIFE', 85),
('67832', 'ISRAEL PRECIOUS TOLUWANIMI', 90),
('CHM/2017/110', 'SMITH MARY', 95),
('CSC/2017/170', 'BANJO ELIJAH', 100),
('CSC309', 'BANJO ELIJAH', 0),
('MDS/2019/10', 'BANJO HALMAT', 100),
('MDS/2019/190', 'ADEWALE FEMI', 77),
('MTH/2017/070', 'FRANK JOHN', 80);

-- --------------------------------------------------------

--
-- Table structure for table `mth401`
--

CREATE TABLE `mth401` (
  `REG_NUM` varchar(20) NOT NULL,
  `NAME` text NOT NULL,
  `SCORE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mth401`
--

INSERT INTO `mth401` (`REG_NUM`, `NAME`, `SCORE`) VALUES
('CSC309', 'BANJO ELIJAH', 0),
('MDS/2019/190', 'ADEWALE FEMI', 0),
('MTH/2017/070', 'FRANK JOHN', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mth407`
--

CREATE TABLE `mth407` (
  `REG_NUM` varchar(20) NOT NULL,
  `NAME` text NOT NULL,
  `SCORE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mth407`
--

INSERT INTO `mth407` (`REG_NUM`, `NAME`, `SCORE`) VALUES
('2204866', 'OYESILE BOLUWATIFE', 80),
('67832', 'ISRAEL PRECIOUS TOLUWANIMI', 90),
('CSC309', 'BANJO ELIJAH', 0);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `NAME` text NOT NULL,
  `REG_NUM` varchar(20) NOT NULL,
  `DEPT` text NOT NULL,
  `EMAIL` varchar(30) NOT NULL,
  `COURSE1` varchar(10) NOT NULL,
  `COURSE2` varchar(10) NOT NULL,
  `COURSE3` varchar(10) NOT NULL,
  `COURSE4` varchar(10) NOT NULL,
  `COURSE5` varchar(10) NOT NULL,
  `COURSE6` varchar(10) NOT NULL,
  `COURSE7` varchar(10) NOT NULL,
  `COURSE8` varchar(10) NOT NULL,
  `COURSE9` varchar(10) NOT NULL,
  `COURSE10` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`NAME`, `REG_NUM`, `DEPT`, `EMAIL`, `COURSE1`, `COURSE2`, `COURSE3`, `COURSE4`, `COURSE5`, `COURSE6`, `COURSE7`, `COURSE8`, `COURSE9`, `COURSE10`) VALUES
('OYESILE BOLUWATIFE', '2204866', 'MDS', 'boluwatife@gmail.com', 'MTH301', 'CSC407', 'CPE401', 'CHM402', 'CSC401', 'MTH407', 'MDS209', '', '', ''),
('ISRAEL PRECIOUS TOLUWANIMI', '67832', 'CSC', 'israelprecious96', 'CHM401', 'CSC402', 'CSC407', 'MDS405', 'MTH301', 'MTH407', 'CHM402', '', '', ''),
('SMITH MARY', 'CHM/2017/110', 'CHM', 'marysmith@gmail.com', 'MTH301', 'CSC407', 'CHM402', '', '', '', '', '', '', ''),
('BANJO ELIJAH', 'CSC/2017/170', 'CSC', 'elijahbanjo@gmail.com', 'MTH301', 'CSC407', 'CPE401', '', '', '', '', '', '', ''),
('BANJO ELIJAH', 'CSC/209', 'CSC', 'efr', 'CHM401', 'CHM405', 'CSC401', 'CSC402', 'CSC407', '', '', '', '', ''),
('BANJO ELIJAH', 'CSC309', 'CSC', 'elija@gmail.com', 'MTH301', 'MDS301', 'MDS209', 'MTH407', 'MTH401', '', '', '', '', ''),
('Roy Ola', 'MDS/123/090', 'MDC', 'royola@gmail.com', 'CHM401', 'CHM402', 'CHM405', 'CSC402', '', '', '', '', '', ''),
('BANJO HALMAT', 'MDS/2019/10', 'MDS', 'hali@gmail.com', 'MTH301', 'CHM401', 'MDS209', '', '', '', '', '', '', ''),
('ADEWALE FEMI', 'MDS/2019/190', 'MDC', 'femia@gmail.com', 'MDS209', 'MDS301', 'MDS405', 'MTH401', 'MTH301', 'CHM401', '', '', '', ''),
('FRANK JOHN', 'MTH/2017/070', 'MTH', 'fjohn@gmail.com', 'MTH301', 'CSC407', 'MTH401', '', '', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `67832`
--
ALTER TABLE `67832`
  ADD PRIMARY KEY (`COURSE CODE`);

--
-- Indexes for table `2204866`
--
ALTER TABLE `2204866`
  ADD PRIMARY KEY (`COURSE CODE`);

--
-- Indexes for table `chm401`
--
ALTER TABLE `chm401`
  ADD PRIMARY KEY (`REG_NUM`);

--
-- Indexes for table `chm402`
--
ALTER TABLE `chm402`
  ADD PRIMARY KEY (`REG_NUM`);

--
-- Indexes for table `chm405`
--
ALTER TABLE `chm405`
  ADD PRIMARY KEY (`REG_NUM`);

--
-- Indexes for table `courselist`
--
ALTER TABLE `courselist`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `cpe401`
--
ALTER TABLE `cpe401`
  ADD PRIMARY KEY (`REG_NUM`);

--
-- Indexes for table `csc/209`
--
ALTER TABLE `csc/209`
  ADD PRIMARY KEY (`COURSE CODE`);

--
-- Indexes for table `csc309`
--
ALTER TABLE `csc309`
  ADD PRIMARY KEY (`COURSE CODE`);

--
-- Indexes for table `csc401`
--
ALTER TABLE `csc401`
  ADD PRIMARY KEY (`REG_NUM`);

--
-- Indexes for table `csc402`
--
ALTER TABLE `csc402`
  ADD PRIMARY KEY (`REG_NUM`);

--
-- Indexes for table `csc405`
--
ALTER TABLE `csc405`
  ADD PRIMARY KEY (`REG_NUM`);

--
-- Indexes for table `csc407`
--
ALTER TABLE `csc407`
  ADD PRIMARY KEY (`REG_NUM`);

--
-- Indexes for table `mds209`
--
ALTER TABLE `mds209`
  ADD PRIMARY KEY (`REG_NUM`);

--
-- Indexes for table `mds301`
--
ALTER TABLE `mds301`
  ADD PRIMARY KEY (`REG_NUM`);

--
-- Indexes for table `mds405`
--
ALTER TABLE `mds405`
  ADD PRIMARY KEY (`REG_NUM`);

--
-- Indexes for table `mth301`
--
ALTER TABLE `mth301`
  ADD PRIMARY KEY (`REG_NUM`);

--
-- Indexes for table `mth401`
--
ALTER TABLE `mth401`
  ADD PRIMARY KEY (`REG_NUM`);

--
-- Indexes for table `mth407`
--
ALTER TABLE `mth407`
  ADD PRIMARY KEY (`REG_NUM`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`REG_NUM`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
