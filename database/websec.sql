-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 06, 2021 at 07:08 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `websec`
--

-- --------------------------------------------------------

--
-- Table structure for table `system_user`
--

DROP TABLE IF EXISTS `system_user`;
CREATE TABLE IF NOT EXISTS `system_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `system_user`
--

INSERT INTO `system_user` (`id`, `firstname`, `lastname`, `email`, `username`, `password`) VALUES
(9, 'batsinda', 'boy', 'boy@boy', 'boy', '5b92e98c05af14415a8bc7da2b314fc5f32267db'),
(10, 'npc', 'ict', 'npcict@gmail.com', 'ict3', 'a8d0f9fd79540d8305d87a9c81a3fd82ec945f90'),
(6, 'yes', 'yes', 'yes@gmail.com', 'yes', 'fb360f9c09ac8c5edb2f18be5de4e80ea4c430d0'),
(7, 'rubibi', 'paul', 'paul@gmail.com', 'paul1', 'ce823356c75a5a6dedfe752cc6a1fa7b5df018ec'),
(8, 'ndayi', 'nyoni', 'nyoni@ndayi', 'nyoni', '9021c2aef06d8f1d246c713f7d348cd16a086fe5');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
