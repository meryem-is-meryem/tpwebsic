-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 31, 2024 at 10:51 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id_category` int NOT NULL AUTO_INCREMENT,
  `nom_category` varchar(50) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id_category`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id_category`, `nom_category`, `description`) VALUES
(1, 'Men\'s Skincare', 'Skincare products specifically formulated for men.'),
(2, 'Beard Care', 'Products designed to maintain and groom facial hair.'),
(3, 'Body Wash & Shower Gel', 'Cleansing products for the body and shower.'),
(4, 'Eye Care', 'Products for maintaining healthy and youthful-looking eyes.'),
(5, 'Fragrance & Cologne', 'Perfumes and colognes for men.'),
(6, 'Shaving Essentials', 'Products for a smooth and comfortable shaving experience.'),
(7, 'Facial Cleansers', 'Cleansing products for the face.'),
(8, 'Hair Styling & Gel', 'Styling products for hair.'),
(9, 'Deodorants & Antiperspirants', 'Products to control body odor and perspiration.'),
(10, 'Lip Care & Balms', 'Products to moisturize and protect lips.'),
(11, 'Body Sprays & Mists', 'Fragranced body sprays and mists.'),
(12, 'Exfoliators & Scrubs', 'Products for exfoliating and removing dead skin cells.'),
(13, 'Hair Care & Shampoo', 'Shampoos and hair care products.'),
(14, 'Aftershave & Post-Shave', 'Products for soothing and moisturizing the skin after shaving.'),
(15, 'Hair Conditioners', 'Conditioners for hair.'),
(16, 'Hair Brushes & Combs', 'Brushes and combs for hair styling.'),
(17, 'Hand Creams & Lotions', 'Moisturizers for hands.'),
(18, 'Bath & Body Soaps', 'Soaps for bathing and body cleansing.'),
(19, 'Face Masks & Treatments', 'Masks and treatments for facial skin.'),
(20, 'Oral Care & Toothpaste', 'Toothpaste and oral care products.'),
(21, 'Women\'s Skincare', 'Skincare products specifically formulated for women.'),
(22, 'Hair Serums & Treatments', 'Serums and treatments for hair.'),
(23, 'Body Wash & Shower Gels', 'Cleansing products for the body and shower.'),
(24, 'Eye Care & Serums', 'Products for maintaining healthy and youthful-looking eyes.'),
(25, 'Fragrance & Perfumes', 'Perfumes and fragrances for women.'),
(26, 'Shampoo & Hair Care', 'Shampoos and hair care products.'),
(27, 'Facial Cleansers & Scrubs', 'Cleansing products for the face.'),
(28, 'Hair Styling & Mousse', 'Styling products for hair.'),
(29, 'Deodorants & Body Sprays', 'Products to control body odor and perspiration.'),
(30, 'Lip Care & Balms', 'Products to moisturize and protect lips.'),
(31, 'Body Lotions & Moisturizers', 'Moisturizers for the body.'),
(32, 'Exfoliators & Facial Scrubs', 'Products for exfoliating and removing dead skin cells.'),
(33, 'Hair Conditioners & Treatments', 'Conditioners and treatments for hair.'),
(34, 'Aftershaves & Post-Shave Lotions', 'Products for soothing and moisturizing the skin after shaving.'),
(35, 'Hair Conditioners & Masks', 'Conditioners and masks for hair.'),
(36, 'Hair Brushes & Accessories', 'Brushes and accessories for hair styling.'),
(37, 'Hand Creams & Lotions', 'Moisturizers for hands.'),
(38, 'Bath & Shower Gels', 'Soaps for bathing and body cleansing.'),
(39, 'Face Masks & Sheet Masks', 'Masks and treatments for facial skin.'),
(40, 'Oral Care & Toothpaste', 'Toothpaste and oral care products.');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uname` varchar(45) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `uname`, `password`, `name`, `email`) VALUES
(4, 'ahmed_ben_ali', 'V2f$&9Lm', 'Ahmed Ben Ali', 'ahmed.ben.ali@example.com'),
(5, 'fatima_zohra', 'P@ssw0rd!', 'Fatima Zohra', 'fatima.zohra@example.com'),
(6, 'mohamed_belkacem', 'r4nD0mPa$$', 'Mohamed Belkacem', 'mohamed.belkacem@example.com'),
(7, 'khadidja_messaouda', 'Qwerty123$', 'Khadidja Messaouda', 'khadidja.messaouda@example.com'),
(8, 'ali_amine', 'Pa$$w0rd123', 'Ali Amine', 'ali.amine@example.com'),
(9, 'zineb_aicha', 'SecureP@ss', 'Zineb Aicha', 'zineb.aicha@example.com'),
(10, 'abdelkader_nourredine', 'Password123', 'Abdelkader Nourredine', 'abdelkader.nourredine@example.com'),
(11, 'sara_farah', 'P@ssw0rd123', 'Sara Farah', 'sara.farah@example.com'),
(12, 'mohamed_amine', '12345678', 'Mohamed Amine', 'mohamed.amine@example.com'),
(13, 'mariem_nadia', 'MyP@ssw0rd', 'Mariem Nadia', 'mariem.nadia@example.com'),
(14, 'omar_tarek', 'SecretP@ss!', 'Omar Tarek', 'omar.tarek@example.com'),
(15, 'nour_djamel', 'P@ssw0rd2023', 'Nour Djamel', 'nour.djamel@example.com'),
(16, 'yassine_sofiane', 'P@ssw0rd321', 'Yassine Sofiane', 'yassine.sofiane@example.com'),
(17, 'rim_selma', 'Pa$$w0rd!', 'Rim Selma', 'rim.selma@example.com'),
(18, 'mohamed_amin', 'RandomP@ss', 'Mohamed Amin', 'mohamed.amin@example.com'),
(19, 'halima_rym', 'Password123', 'Halima Rym', 'halima.rym@example.com'),
(20, 'youssef_samir', 'P@ssw0rd456', 'Youssef Samir', 'youssef.samir@example.com'),
(21, 'layla_amina', 'Pa$$w0rd567', 'Layla Amina', 'layla.amina@example.com'),
(22, 'mohamed_farouk', 'Pa$$w0rd2023', 'Mohamed Farouk', 'mohamed.farouk@example.com'),
(23, 'zahra_asma', 'P@ssw0rd789', 'Zahra Asma', 'zahra.asma@example.com'),
(24, 'abdelrazak_tarek', 'P@ssw0rd987', 'Abdelrazak Tarek', 'abdelrazak.tarek@example.com'),
(25, 'samira_malik', 'Qwerty123$', 'Samira Malik', 'samira.malik@example.com'),
(26, 'ibrahim_bachir', 'P@ssw0rd!', 'Ibrahim Bachir', 'ibrahim.bachir@example.com'),
(27, 'fatima_zohra2', 'Pa$$w0rd123', 'Fatima Zohra', 'fatima.zohra@example.com'),
(28, 'abdellah_toufik', 'SecureP@ss', 'Abdellah Toufik', 'abdellah.toufik@example.com'),
(29, 'fatima_khadidja', 'P@ssw0rd123', 'Fatima Khadidja', 'fatima.khadidja@example.com'),
(30, 'mustapha_mehdi', '12345678', 'Mustapha Mehdi', 'mustapha.mehdi@example.com'),
(31, 'malika_nassima', 'RandomP@ss', 'Malika Nassima', 'malika.nassima@example.com'),
(32, 'abdelwahid_anis', 'P@ssw0rd!', 'Abdelwahid Anis', 'abdelwahid.anis@example.com'),
(33, 'zina_sihem', 'Pa$$w0rd321', 'Zina Sihem', 'zina.sihem@example.com');

-- --------------------------------------------------------

--
-- Table structure for table `fournisseur`
--

DROP TABLE IF EXISTS `fournisseur`;
CREATE TABLE IF NOT EXISTS `fournisseur` (
  `id_fournisseur` int NOT NULL AUTO_INCREMENT,
  `nom_fournisseur` varchar(50) NOT NULL,
  `email_fournisseur` varchar(50) NOT NULL,
  `contact_information` varchar(50) NOT NULL,
  `address_fournisseur` varchar(50) NOT NULL,
  `sidenote_fournisseur` text NOT NULL,
  PRIMARY KEY (`id_fournisseur`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `fournisseur`
--

INSERT INTO `fournisseur` (`id_fournisseur`, `nom_fournisseur`, `email_fournisseur`, `contact_information`, `address_fournisseur`, `sidenote_fournisseur`) VALUES
(1, 'Fournisseur Algérien SARL', 'fournisseur.algerien@example.com', '+213 123456789', '123 Rue des Fournisseurs, Alger', 'Fournisseur de produits divers en Algérie.'),
(2, 'Importations Maghrébines', 'contact@importmaghreb.com', '+213 987654321', '789 Avenue des Importateurs, Oran', 'Spécialisé dans l\'importation de produits divers pour le marché maghrébin.'),
(3, 'Entreprise de Distribution Méditerranéenne', 'contact@mediterranee-distribution.dz', '+213 555555555', '456 Boulevard de la Méditerranée, Annaba', 'Distributeur de produits alimentaires et de consommation courante.'),
(4, 'Fournitures Industrielles Sahariennes', 'info@fis-dz.com', '+213 666666666', '101 Rue du Sahara, Ouargla', 'Fournisseur de matériaux et équipements industriels pour les régions sahariennes.'),
(5, 'Compagnie d\'Import-Export Sahara', 'contact@cie-importexport.dz', '+213 777777777', '789 Boulevard Sahara, Tamanrasset', 'Entreprise spécialisée dans l\'import-export de produits variés, basée dans le Sahara.');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) DEFAULT NULL,
  `product_quantity` int DEFAULT NULL,
  `product_price` int DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `image_path` varchar(400) DEFAULT NULL,
  `fid_categorie` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `fid_categorie` (`fid_categorie`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `product_name`, `product_quantity`, `product_price`, `image`, `image_path`, `fid_categorie`) VALUES
(39, 'Men\'s Moisturizing Face Cream', 50, 15, 'face_cream.jpg', '/images/face_cream.jpg', 1),
(40, 'Beard Oil', 30, 20, 'beard_oil.jpg', '/images/beard_oil.jpg', 2),
(41, 'Refreshing Body Wash for Men', 40, 10, 'body_wash.jpg', '/images/body_wash.jpg', 3),
(42, 'Anti-Aging Eye Cream for Men', 25, 25, 'eye_cream.jpg', '/images/eye_cream.jpg', 4),
(43, 'Men\'s Cologne', 20, 30, 'cologne.jpg', '/images/cologne.jpg', 5),
(44, 'Shaving Cream for Sensitive Skin', 35, 12, 'shaving_cream.jpg', '/images/shaving_cream.jpg', 6),
(45, 'Facial Cleanser for Men', 45, 18, 'facial_cleanser.jpg', '/images/facial_cleanser.jpg', 7),
(46, 'Hair Styling Gel', 60, 8, 'hair_gel.jpg', '/images/hair_gel.jpg', 8),
(47, 'Men\'s Deodorant', 55, 7, 'deodorant.jpg', '/images/deodorant.jpg', 9),
(48, 'Moisturizing Lip Balm for Men', 40, 5, 'lip_balm.jpg', '/images/lip_balm.jpg', 10),
(49, 'Body Spray for Men', 30, 12, 'body_spray.jpg', '/images/body_spray.jpg', 11),
(50, 'Exfoliating Face Scrub', 25, 15, 'face_scrub.jpg', '/images/face_scrub.jpg', 12),
(51, 'Hydrating Shampoo for Men', 40, 10, 'shampoo.jpg', '/images/shampoo.jpg', 13),
(52, 'Aftershave Lotion', 35, 18, 'aftershave.jpg', '/images/aftershave.jpg', 14),
(53, 'Hair Conditioner', 50, 12, 'conditioner.jpg', '/images/conditioner.jpg', 15),
(54, 'Men\'s Hairbrush', 20, 8, 'hairbrush.jpg', '/images/hairbrush.jpg', 16),
(55, 'Moisturizing Hand Cream', 30, 10, 'hand_cream.jpg', '/images/hand_cream.jpg', 17),
(56, 'Shower Gel', 45, 12, 'shower_gel.jpg', '/images/shower_gel.jpg', 18),
(57, 'Face Mask for Men', 25, 20, 'face_mask.jpg', '/images/face_mask.jpg', 19),
(58, 'Teeth Whitening Toothpaste', 40, 7, 'toothpaste.jpg', '/images/toothpaste.jpg', 20),
(59, 'Women\'s Moisturizing Face Cream', 50, 15, 'face_cream.jpg', '/images/face_cream.jpg', 1),
(60, 'Hair Serum for Women', 30, 20, 'hair_serum.jpg', '/images/hair_serum.jpg', 2),
(61, 'Refreshing Body Wash for Women', 40, 10, 'body_wash.jpg', '/images/body_wash.jpg', 3),
(62, 'Anti-Aging Eye Cream for Women', 25, 25, 'eye_cream.jpg', '/images/eye_cream.jpg', 4),
(63, 'Women\'s Perfume', 20, 30, 'perfume.jpg', '/images/perfume.jpg', 5),
(64, 'Moisturizing Shampoo for Women', 35, 12, 'shampoo.jpg', '/images/shampoo.jpg', 6),
(65, 'Facial Cleanser for Women', 45, 18, 'facial_cleanser.jpg', '/images/facial_cleanser.jpg', 7),
(66, 'Hair Styling Mousse', 60, 8, 'hair_mousse.jpg', '/images/hair_mousse.jpg', 8),
(67, 'Women\'s Deodorant', 55, 7, 'deodorant.jpg', '/images/deodorant.jpg', 9),
(68, 'Moisturizing Lip Balm for Women', 40, 5, 'lip_balm.jpg', '/images/lip_balm.jpg', 10),
(69, 'Body Lotion for Women', 30, 12, 'body_lotion.jpg', '/images/body_lotion.jpg', 11),
(70, 'Exfoliating Face Scrub', 25, 15, 'face_scrub.jpg', '/images/face_scrub.jpg', 12),
(71, 'Hydrating Conditioner for Women', 40, 10, 'conditioner.jpg', '/images/conditioner.jpg', 13),
(72, 'Aftershave Lotion', 35, 18, 'aftershave.jpg', '/images/aftershave.jpg', 14),
(73, 'Hair Conditioner', 50, 12, 'conditioner.jpg', '/images/conditioner.jpg', 15),
(74, 'Women\'s Hairbrush', 20, 8, 'hairbrush.jpg', '/images/hairbrush.jpg', 16),
(75, 'Moisturizing Hand Cream', 30, 10, 'hand_cream.jpg', '/images/hand_cream.jpg', 17),
(76, 'Shower Gel', 45, 12, 'shower_gel.jpg', '/images/shower_gel.jpg', 18),
(77, 'Face Mask for Women', 25, 20, 'face_mask.jpg', '/images/face_mask.jpg', 19),
(78, 'Teeth Whitening Toothpaste', 40, 7, 'toothpaste.jpg', '/images/toothpaste.jpg', 20);

-- --------------------------------------------------------

--
-- Table structure for table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id_utilisateur` int NOT NULL AUTO_INCREMENT,
  `nom_utilisateur` varchar(50) NOT NULL,
  `mot_de_passe` varchar(50) NOT NULL,
  `email_utilisateur` varchar(50) NOT NULL,
  `role_utilisateur` varchar(50) NOT NULL,
  PRIMARY KEY (`id_utilisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `utilisateur`
--

INSERT INTO `utilisateur` (`id_utilisateur`, `nom_utilisateur`, `mot_de_passe`, `email_utilisateur`, `role_utilisateur`) VALUES
(1, 'Sofiane Boudjemaa', 'P@ssw0rd123', 'sofiane@example.com', 'admin'),
(2, 'Malika Chérifa', 'SecretP@ss!', 'malika@example.com', 'admin'),
(3, 'Noura Zohra', 'Pa$$w0rd2023', 'noura@example.com', 'manager'),
(4, 'Yacine Amine', 'P@ssw0rd456', 'yacine@example.com', 'manager');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vent`
--

INSERT INTO `vent` (`oid`, `product_name`, `purchase_quantity`, `total_price`, `uname`, `fid_client`, `fid_products`) VALUES
(1, 'Hair Styling Gel', 2, 92, 'ali_amine', 8, 46),
(2, 'Women\'s Deodorant', 5, 74, 'zahra_asma', 23, 67),
(3, 'Facial Cleanser for Women', 3, 28, 'mohamed_belkacem', 6, 65),
(4, 'Body Spray for Men', 4, 34, 'mustapha_mehdi', 30, 49),
(5, 'Women\'s Deodorant', 3, 95, 'mustapha_mehdi', 30, 67);

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

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`fid_categorie`) REFERENCES `category` (`id_category`) ON DELETE RESTRICT ON UPDATE RESTRICT;

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
