-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 08-08-2018 a las 08:54:53
-- Versión del servidor: 5.7.21
-- Versión de PHP: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `base_de_datos_cai`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
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
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id`, `username_A`, `password_A`, `email_A`, `phoneNumber_A`) VALUES
(1, 'superUser', 'caiPass', '1730314@upv.edu.mx', 834166728),
(2, 'superUser2', 'caiPass', '1730020@upv.edu.mx', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `groups`
--

DROP TABLE IF EXISTS `groups`;
CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `name_G` varchar(50) NOT NULL,
  `level_G` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `students`
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teachers`
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `teachers`
--

INSERT INTO `teachers` (`id`, `idTeacher_T`, `password_T`, `name_T`, `surnameF_T`, `surnameM_T`, `email_T`, `phoneNumber_T`) VALUES
(1, '1730314', '1234', 'PlemT', 'E', 'M', '1730314@upv.edu.mx', 834166728);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
