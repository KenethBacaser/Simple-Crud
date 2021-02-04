-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 29, 2021 at 05:56 AM
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
-- Database: `famousqoutes`
--

-- --------------------------------------------------------

--
-- Table structure for table `fam_quotes`
--

DROP TABLE IF EXISTS `fam_quotes`;
CREATE TABLE IF NOT EXISTS `fam_quotes` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `author` varchar(255) NOT NULL DEFAULT '',
  `quote` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fam_quotes`
--

INSERT INTO `fam_quotes` (`id`, `author`, `quote`) VALUES
(11, 'Lee Iacocs', 'The trick is to make sure you don\'t die waiting for prosperity to come.'),
(13, 'H.L. Mencken', 'The penalty for laughing in a courtroom is six months in jail if it were not for this penalty, the jury would never hear the evidence.'),
(98, 'H.R. Haldeman', 'You can\'t put the toothpaste back in the tube.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
