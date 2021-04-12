-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 12, 2021 at 03:13 PM
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
-- Table structure for table `rastreios`
--

DROP TABLE IF EXISTS `rastreios`;
CREATE TABLE IF NOT EXISTS `rastreios` (
  `idrst` int NOT NULL AUTO_INCREMENT,
  `idprod` int NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `produto` varchar(50) DEFAULT NULL,
  `codigo` varchar(15) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `hora` char(5) DEFAULT NULL,
  `local` varchar(20) DEFAULT NULL,
  `mens` varchar(150) DEFAULT NULL,
  `finalizado` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`idrst`),
  KEY `idprod` (`idprod`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rastreios`
--

INSERT INTO `rastreios` (`idrst`, `idprod`, `nome`, `produto`, `codigo`, `data`, `hora`, `local`, `mens`, `finalizado`) VALUES
(1, 9, 'Mamys', 'Memória 8Gb DDR4 Adata', 'LB194177404HK', '2021-03-02', '10:45', 'JUNDIAI / SP', 'Objeto entregue ao destinatário rogerio ferreira', 1),
(2, 9, 'Mamys', 'Memória 8Gb DDR4 Adata', 'LB194177404HK', '2021-03-02', '08:37', 'JUNDIAI / SP', 'Objeto saiu -->> entrega ao destinatário', 1),
(3, 9, 'Mamys', 'Memória 8Gb DDR4 Adata', 'LB194177404HK', '2021-03-01', '13:49', 'INDAIATUBA / SP', 'Objeto em trânsito - INDAIATUBA-SP -->> JUNDIAI-SP', 1),
(4, 9, 'Mamys', 'Memória 8Gb DDR4 Adata', 'LB194177404HK', '2021-02-22', '09:28', 'CURITIBA / PR', 'Objeto em trânsito - CURITIBA-PR -->> INDAIATUBA-SP', 1),
(5, 9, 'Mamys', 'Memória 8Gb DDR4 Adata', 'LB194177404HK', '2021-02-22', '09:26', 'CURITIBA / PR', 'Fiscalização aduaneira finalizada', 1),
(6, 9, 'Mamys', 'Memória 8Gb DDR4 Adata', 'LB194177404HK', '2021-02-22', '07:49', 'CURITIBA / PR', 'Objeto recebido pelos Correios do Brasil ', 1),
(7, 9, 'Mamys', 'Memória 8Gb DDR4 Adata', 'LB194177404HK', '2021-02-16', '17:35', 'HONG KONG /', 'Objeto em trânsito - HONG KONG -->> BR ', 1),
(8, 9, 'Mamys', 'Memória 8Gb DDR4 Adata', 'LB194177404HK', '2021-02-16', '15:29', 'HONG KONG /', 'Objeto postado ', 1),
(9, 11, 'Mamys', 'Reletech ssd m2 512Gb', 'LB214871100SG', '2021-03-16', '10:56', 'JUNDIAI / SP', 'Objeto entregue ao destinatário', 1),
(10, 11, 'Mamys', 'Reletech ssd m2 512Gb', 'LB214871100SG', '2021-03-16', '08:50', 'JUNDIAI / SP', 'Objeto saiu -->> entrega ao destinatário', 1),
(11, 11, 'Mamys', 'Reletech ssd m2 512Gb', 'LB214871100SG', '2021-03-15', '13:53', 'INDAIATUBA / SP', 'Objeto em trânsito - INDAIATUBA-SP -->> JUNDIAI-SP', 1),
(12, 11, 'Mamys', 'Reletech ssd m2 512Gb', 'LB214871100SG', '2021-02-11', '22:53', 'CINGAPURA /', 'Objeto em trânsito - CINGAPURA -->> BR ', 1),
(13, 32, 'Papys', 'SSD 480Gb 2.5 SATA3', 'LB196119948HK', '2021-03-10', '11:39', 'JUNDIAI / SP', 'Objeto entregue ao destinatário', 1),
(14, 32, 'Papys', 'SSD 480Gb 2.5 SATA3', 'LB196119948HK', '2021-03-10', '08:56', 'JUNDIAI / SP', 'Objeto saiu -->> entrega ao destinatário', 1),
(15, 32, 'Papys', 'SSD 480Gb 2.5 SATA3', 'LB196119948HK', '2021-03-08', '08:01', 'INDAIATUBA / SP', 'Objeto em trânsito - INDAIATUBA-SP -->> JUNDIAI-SP', 1),
(16, 32, 'Papys', 'SSD 480Gb 2.5 SATA3', 'LB196119948HK', '2021-03-04', '09:59', 'CURITIBA / PR', 'Objeto em trânsito - CURITIBA-PR -->> INDAIATUBA-SP', 1),
(17, 32, 'Papys', 'SSD 480Gb 2.5 SATA3', 'LB196119948HK', '2021-03-04', '09:57', 'CURITIBA / PR', 'Fiscalização aduaneira finalizada', 1),
(18, 32, 'Papys', 'SSD 480Gb 2.5 SATA3', 'LB196119948HK', '2021-03-02', '12:22', 'CURITIBA / PR', 'Objeto recebido pelos Correios do Brasil ', 1),
(19, 32, 'Papys', 'SSD 480Gb 2.5 SATA3', 'LB196119948HK', '2021-02-24', '15:10', 'HONG KONG /', 'Objeto em trânsito - HONG KONG -->> BR ', 1),
(20, 32, 'Papys', 'SSD 480Gb 2.5 SATA3', 'LB196119948HK', '2021-02-23', '16:52', 'HONG KONG /', 'Objeto postado ', 1),
(21, 34, 'Mamys', 'Mouse e Pendrive 32Gb', 'LB527211673SE', '2021-03-27', '10:32', 'JUNDIAI / SP', 'Objeto entregue ao destinatário', 0),
(22, 34, 'Mamys', 'Mouse e Pendrive 32Gb', 'LB527211673SE', '2021-03-27', '10:01', 'JUNDIAI / SP', 'Objeto saiu -->> entrega ao destinatário', 0),
(23, 34, 'Mamys', 'Mouse e Pendrive 32Gb', 'LB527211673SE', '2021-03-24', '11:57', 'INDAIATUBA / SP', 'Objeto em trânsito - INDAIATUBA-SP -->> JUNDIAI-SP', 0),
(24, 34, 'Mamys', 'Mouse e Pendrive 32Gb', 'LB527211673SE', '2021-03-22', '13:59', 'CURITIBA / PR', 'Objeto em trânsito - CURITIBA-PR -->> INDAIATUBA-SP', 0),
(25, 34, 'Mamys', 'Mouse e Pendrive 32Gb', 'LB527211673SE', '2021-03-22', '13:57', 'CURITIBA / PR', 'Fiscalização aduaneira finalizada', 0),
(26, 34, 'Mamys', 'Mouse e Pendrive 32Gb', 'LB527211673SE', '2021-03-18', '12:52', 'CURITIBA / PR', 'Objeto recebido pelos Correios do Brasil ', 0),
(27, 34, 'Mamys', 'Mouse e Pendrive 32Gb', 'LB527211673SE', '2021-03-13', '11:41', 'SUECIA /', 'Objeto recebido na unidade de exportação no país de origem ', 0),
(28, 34, 'Mamys', 'Mouse e Pendrive 32Gb', 'LB527211673SE', '2021-03-13', '11:36', 'SUECIA /', 'Objeto postado ', 0);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rastreios`
--
ALTER TABLE `rastreios`
  ADD CONSTRAINT `rastreios_ibfk_1` FOREIGN KEY (`idprod`) REFERENCES `compras` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
