-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 12, 2021 at 03:15 PM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `correios`
--

-- --------------------------------------------------------

--
-- Table structure for table `pagamentos`
--

DROP TABLE IF EXISTS `pagamentos`;
CREATE TABLE IF NOT EXISTS `pagamentos` (
  `idpg` int NOT NULL AUTO_INCREMENT,
  `idcp` int DEFAULT NULL,
  `datapg` date NOT NULL,
  `valor` float NOT NULL,
  `parcelas` int DEFAULT NULL,
  `valorparc` float DEFAULT NULL,
  `statuspg` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idpg`),
  KEY `idcp` (`idcp`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pagamentos`
--

INSERT INTO `pagamentos` (`idpg`, `idcp`, `datapg`, `valor`, `parcelas`, `valorparc`, `statuspg`) VALUES
(8, 9, '0000-00-00', 0, NULL, NULL, NULL),
(9, 11, '0000-00-00', 0, NULL, NULL, NULL),
(11, 34, '0000-00-00', 0, NULL, NULL, NULL),
(12, 32, '0000-00-00', 0, NULL, NULL, NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pagamentos`
--
ALTER TABLE `pagamentos`
  ADD CONSTRAINT `pagamentos_ibfk_1` FOREIGN KEY (`idcp`) REFERENCES `compras` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
