-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 12, 2021 at 03:12 PM
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
-- Table structure for table `compras`
--

DROP TABLE IF EXISTS `compras`;
CREATE TABLE IF NOT EXISTS `compras` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `produto` varchar(50) NOT NULL,
  `datacp` date DEFAULT NULL,
  `codigocp` varchar(18) DEFAULT NULL,
  `statuscp` varchar(50) DEFAULT NULL,
  `datast` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `local` varchar(40) DEFAULT NULL,
  `finalizado` tinyint(1) DEFAULT '0',
  `comentario` varchar(100) DEFAULT NULL,
  `site` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `compras`
--

INSERT INTO `compras` (`id`, `nome`, `produto`, `datacp`, `codigocp`, `statuscp`, `datast`, `hora`, `local`, `finalizado`, `comentario`, `site`) VALUES
(9, 'Mamys', 'Memória 8Gb DDR4 Adata', '2021-02-06', 'LB194177404HK', '## JÁ CHEGOU!!! ##', '2021-03-02', '10:45:00', 'Cond. Japy', 1, NULL, NULL),
(11, 'Mamys', 'Reletech ssd m2 512Gb', '2021-02-08', 'LB214871100SG', '## JÁ CHEGOU!!! ##', '2021-03-16', '10:56:00', 'Cond. Japy', 1, NULL, NULL),
(32, 'Papys', 'SSD 480Gb 2.5 SATA3', '2021-02-06', 'LB196119948HK', '## JÁ CHEGOU!!! ##', '2021-03-10', '11:39:00', 'Cond. Japy', 1, '', NULL),
(34, 'Mamys', 'Mouse e Pendrive 32Gb', '2021-03-07', 'LB527211673SE', '## JÁ CHEGOU!!! ##', '2021-03-27', '10:32:00', 'Cond. Japy', 0, '', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
