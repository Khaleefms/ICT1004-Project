-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2014 at 11:15 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hobbypoint`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE IF NOT EXISTS `article` (
`ArticleID` int(100) NOT NULL,
  `ArticleTitle` varchar(45) DEFAULT NULL,
  `ArticleContent` varchar(500) DEFAULT NULL,
  `Interest` varchar(45) DEFAULT NULL,
  `UserID` int(100) DEFAULT NULL,
  `ImgName` varchar(45) DEFAULT NULL,
  `ImgLocation` varchar(100) DEFAULT NULL,
  `DatePosted` datetime DEFAULT NULL,
  `ViewCount` int(11) DEFAULT NULL,
  `Flag` varchar(3) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`ArticleID`, `ArticleTitle`, `ArticleContent`, `Interest`, `UserID`, `ImgName`, `ImgLocation`, `DatePosted`, `ViewCount`, `Flag`) VALUES
(5, 'Sinanju 1/100 Master Grade Review', 'Sinanju Model Kit', 'Others', 4, 'Sinanju', 'img/m116_02.jpg', '2014-09-01 10:06:00', 0, 'No'),
(6, 'Edge of Tomorrow', 'Best Sci-Fi Movie for 2014 ', 'Movies', 4, 'Poster', 'img/edgeoftomorrow.jpg', '2014-05-01 10:06:00', 0, 'No'),
(7, 'asdasdaasdasdasasdas', 'asdasdasdasda', 'Books', 4, 'Sinanju', 'img/m116_02', '2014-11-17 11:47:56', 0, 'No'),
(8, 'sadas', 'sadasdas', 'Books', 3, 'Sinanju', 'img/m116_02', '2014-11-20 14:30:55', 0, 'No'),
(9, 'asdas', 'asdasd', 'Games', 2, 'Sinanju', 'img/m116_02', '2014-11-20 14:31:27', 0, 'No');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE IF NOT EXISTS `image` (
`IDImage` int(11) NOT NULL,
  `ArticleID` int(11) DEFAULT NULL,
  `src` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`UserID` int(11) NOT NULL,
  `UserName` varchar(45) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `Admin` varchar(45) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `UserName`, `Email`, `Password`, `Admin`) VALUES
(1, 'John', 'john@hotmail.com', '123456', 'No'),
(2, 'admin', 'admin@hotmail.com', 'admin', 'Yes'),
(3, 'Tom', 'Tom@gmail.com', '456789', 'No'),
(4, 'Peter', 'Peter@yahool.com.sg', '987654', 'No');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
 ADD PRIMARY KEY (`ArticleID`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
 ADD PRIMARY KEY (`IDImage`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`UserID`), ADD UNIQUE KEY `UserID_UNIQUE` (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
MODIFY `ArticleID` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
MODIFY `IDImage` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
