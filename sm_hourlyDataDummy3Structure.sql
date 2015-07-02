-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 22, 2015 at 06:42 PM
-- Server version: 5.5.40-36.1
-- PHP Version: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `SomeDatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `sm_hourlyDataDummy3Structure`
--

CREATE TABLE IF NOT EXISTS `sm_hourlyDataDummy3Structure` (
  `ID` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `siteID` int(11) DEFAULT NULL,
  `GHI` float(16,6) DEFAULT NULL,
  `clearness` float(16,6) DEFAULT NULL,
  `electricity` float DEFAULT '0',
  `start_time` datetime NOT NULL,
  `GBD_consumption` float DEFAULT NULL,
  `GBD_cost` float(16,6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sm_hourlyDataDummy3Structure`
--
ALTER TABLE `sm_hourlyDataDummy3Structure`
  ADD PRIMARY KEY (`ID`), ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sm_hourlyDataDummy3Structure`
--
ALTER TABLE `sm_hourlyDataDummy3Structure`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
