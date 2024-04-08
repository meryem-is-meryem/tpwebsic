-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 31, 2024 at 08:32 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cosmetique product`
--

-- --------------------------------------------------------

--
-- Table structure for table `vent`
--

DROP TABLE IF EXISTS `vent`;
CREATE TABLE IF NOT EXISTS `vent` (
  `oid` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) DEFAULT NULL,
  `purchase_quantity` int DEFAULT NULL,
  `total_price` int DEFAULT NULL,
  `uname` varchar(45) DEFAULT NULL,
  `fid_client` int NOT NULL,
  `fid_products` int NOT NULL,
  PRIMARY KEY (`oid`),
  KEY `fid_client` (`fid_client`),
  KEY `fid_products` (`fid_products`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `vent`
--
ALTER TABLE `vent`
  ADD CONSTRAINT `vent_ibfk_1` FOREIGN KEY (`fid_client`) REFERENCES `client` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `vent_ibfk_2` FOREIGN KEY (`fid_products`) REFERENCES `products` (`pid`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
