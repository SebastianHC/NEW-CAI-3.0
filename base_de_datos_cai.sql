-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 13, 2018 at 10:57 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `base_de_datos_cai`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username_A` varchar(10) NOT NULL,
  `password_A` varchar(50) NOT NULL,
  `email_A` varchar(50) NOT NULL,
  `phoneNumber_A` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username_A`, `password_A`, `email_A`, `phoneNumber_A`) VALUES
(1, 'superUser', 'caiPass', '1730314@upv.edu.mx', 834166728),
(2, 'superUser2', 'caiPass', '1730020@upv.edu.mx', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `name_G` varchar(50) NOT NULL,
  `level_G` int(2) NOT NULL,
  `teacherId_G` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name_G`, `level_G`, `teacherId_G`) VALUES
(9, 'ITI-3-2', 1, 1730314),
(8, 'ITI-3-1', 8, 1730314);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idStudent_S` int(7) NOT NULL,
  `name_S` varchar(50) NOT NULL,
  `surnameF_S` varchar(50) NOT NULL,
  `surnameM_S` varchar(50) NOT NULL,
  `career_S` varchar(5) NOT NULL,
  `level_S` int(2) NOT NULL,
  `group_S` varchar(10) NOT NULL,
  `email_S` varchar(50) NOT NULL,
  `phoneNumber_S` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `idStudent_S`, `name_S`, `surnameF_S`, `surnameM_S`, `career_S`, `level_S`, `group_S`, `email_S`, `phoneNumber_S`) VALUES
(3, 1730314, 'Juanito', 'Alegria', 'Sonrisas', 'ITI', 9, 'ITI-3-2', '173000@upv.edu.mx', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
CREATE TABLE IF NOT EXISTS `teachers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idTeacher_T` varchar(7) NOT NULL,
  `password_T` varchar(10) NOT NULL,
  `name_T` varchar(50) NOT NULL,
  `surnameF_T` varchar(50) NOT NULL,
  `surnameM_T` varchar(50) NOT NULL,
  `email_T` varchar(50) NOT NULL,
  `phoneNumber_T` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `idTeacher_T`, `password_T`, `name_T`, `surnameF_T`, `surnameM_T`, `email_T`, `phoneNumber_T`) VALUES
(5, '1730314', '1234', 'Maestro', 'Diez', 'Nueve', 'maestro@upv.edu.mx', 834177890);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
