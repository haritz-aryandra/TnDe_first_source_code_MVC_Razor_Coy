-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2017 at 06:38 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mpr`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_m_authorization`
--

CREATE TABLE IF NOT EXISTS `tb_m_authorization` (
  `UserId` varchar(30) NOT NULL,
  `RoleId` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_m_authorization`
--

INSERT INTO `tb_m_authorization` (`UserId`, `RoleId`) VALUES
('admin@mpr.com', 'SA'),
('user1@mpr.com', 'US');

-- --------------------------------------------------------

--
-- Table structure for table `tb_m_division`
--

CREATE TABLE IF NOT EXISTS `tb_m_division` (
  `DivCode` varchar(20) NOT NULL,
  `DivName` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_m_division`
--

INSERT INTO `tb_m_division` (`DivCode`, `DivName`) VALUES
('123', 'test 123');

-- --------------------------------------------------------

--
-- Table structure for table `tb_m_priviledge`
--

CREATE TABLE IF NOT EXISTS `tb_m_priviledge` (
  `RoleId` varchar(10) NOT NULL,
  `MenuName` varchar(30) NOT NULL,
  `Status` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_m_priviledge`
--

INSERT INTO `tb_m_priviledge` (`RoleId`, `MenuName`, `Status`) VALUES
('SA', 'Dashboard - Summary', '1'),
('SA', 'Letter - Incomeing Mail', '1'),
('SA', 'Letter - Outgoing Mail', '1'),
('SA', 'Master - Division', '1'),
('SA', 'Master - Type Of Letter', '1'),
('SA', 'Send Document', '1'),
('SA', 'User Management', '1'),
('US', 'Dashboard - Summary', '1'),
('US', 'Letter - Incomeing Mail', '1'),
('US', 'Letter - Outgoing Mail', '1'),
('US', 'Master - Division', '1'),
('US', 'Master - Type Of Letter', '1'),
('US', 'Send Document', '1'),
('US', 'User Management', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tb_m_role`
--

CREATE TABLE IF NOT EXISTS `tb_m_role` (
  `RoleId` varchar(10) NOT NULL,
  `RoleName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_m_role`
--

INSERT INTO `tb_m_role` (`RoleId`, `RoleName`) VALUES
('SA', 'Super Admin'),
('US', 'User');

-- --------------------------------------------------------

--
-- Table structure for table `tb_m_typeofletter`
--

CREATE TABLE IF NOT EXISTS `tb_m_typeofletter` (
  `Type` varchar(20) NOT NULL,
  `Name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_m_typeofletter`
--

INSERT INTO `tb_m_typeofletter` (`Type`, `Name`) VALUES
('L01', 'Letter 101');

-- --------------------------------------------------------

--
-- Table structure for table `tb_m_user`
--

CREATE TABLE IF NOT EXISTS `tb_m_user` (
  `Name` varchar(50) DEFAULT NULL,
  `Gender` char(1) DEFAULT NULL,
  `DOB` varchar(10) DEFAULT NULL,
  `Phone` varchar(30) DEFAULT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(30) DEFAULT NULL,
  `DivCode` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_m_user`
--

INSERT INTO `tb_m_user` (`Name`, `Gender`, `DOB`, `Phone`, `Email`, `Password`, `DivCode`) VALUES
('Admin', 'L', '2017-4-11', '000000', 'admin@mpr.com', 'admin', 'All'),
('User 1', 'M', '04/11/2017', '111111', 'user1@mpr.com', 'mpr123', '123');

-- --------------------------------------------------------

--
-- Table structure for table `tb_t_letter`
--

CREATE TABLE IF NOT EXISTS `tb_t_letter` (
`IdSeq` int(11) NOT NULL,
  `Type` varchar(20) DEFAULT NULL,
  `LetterNo` varchar(30) DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `From` varchar(20) DEFAULT NULL,
  `To` varchar(20) DEFAULT NULL,
  `About` varchar(50) DEFAULT NULL,
  `Information` varchar(500) DEFAULT NULL,
  `Flag` char(1) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tb_t_letter`
--

INSERT INTO `tb_t_letter` (`IdSeq`, `Type`, `LetterNo`, `Date`, `From`, `To`, `About`, `Information`, `Flag`) VALUES
(1, 'L01', '212', '0000-00-00 00:00:00', 'admin@mpr.com', 'user1@mpr.com', 'test', 'test', '1'),
(2, 'L01', '111', '0000-00-00 00:00:00', 'admin@mpr.com', 'user1@mpr.com', 'sukses', 'test sukses test sukses test sukses test sukses test sukses test sukses test sukses test sukses test sukses test sukses test sukses test sukses', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_m_authorization`
--
ALTER TABLE `tb_m_authorization`
 ADD PRIMARY KEY (`UserId`);

--
-- Indexes for table `tb_m_division`
--
ALTER TABLE `tb_m_division`
 ADD PRIMARY KEY (`DivCode`);

--
-- Indexes for table `tb_m_priviledge`
--
ALTER TABLE `tb_m_priviledge`
 ADD PRIMARY KEY (`RoleId`,`MenuName`);

--
-- Indexes for table `tb_m_role`
--
ALTER TABLE `tb_m_role`
 ADD PRIMARY KEY (`RoleId`);

--
-- Indexes for table `tb_m_typeofletter`
--
ALTER TABLE `tb_m_typeofletter`
 ADD PRIMARY KEY (`Type`);

--
-- Indexes for table `tb_m_user`
--
ALTER TABLE `tb_m_user`
 ADD PRIMARY KEY (`Email`);

--
-- Indexes for table `tb_t_letter`
--
ALTER TABLE `tb_t_letter`
 ADD PRIMARY KEY (`IdSeq`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_t_letter`
--
ALTER TABLE `tb_t_letter`
MODIFY `IdSeq` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
