-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 31, 2024 at 08:39 PM
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
-- Table structure for table `achat_fournisseur`
--

DROP TABLE IF EXISTS `achat_fournisseur`;
CREATE TABLE IF NOT EXISTS `achat_fournisseur` (
  `id_achat` int NOT NULL AUTO_INCREMENT,
  `fid_fournisseur` int NOT NULL,
  `fid_utilisateur` int NOT NULL,
  `fid_product` int NOT NULL,
  `quantite` int NOT NULL,
  `date_achat` datetime NOT NULL,
  PRIMARY KEY (`id_achat`),
  KEY `fid_fournisseur` (`fid_fournisseur`),
  KEY `fid_utilisateur` (`fid_utilisateur`),
  KEY `fid_product` (`fid_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `achat_fournisseur`
--
ALTER TABLE `achat_fournisseur`
  ADD CONSTRAINT `achat_fournisseur_ibfk_1` FOREIGN KEY (`fid_fournisseur`) REFERENCES `fournisseur` (`id_fournisseur`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `achat_fournisseur_ibfk_2` FOREIGN KEY (`fid_product`) REFERENCES `products` (`pid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `achat_fournisseur_ibfk_3` FOREIGN KEY (`fid_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
