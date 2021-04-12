CREATE DATABASE  IF NOT EXISTS `correios` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `correios`;
-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: correios
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-
--
-- Table structure for table `compras`
--

DROP TABLE IF EXISTS `compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compras` (
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compras`
--

LOCK TABLES `compras` WRITE;
/*!40000 ALTER TABLE `compras` DISABLE KEYS */;
INSERT INTO `compras` VALUES (9,'Mamys','Memória 8Gb DDR4 Adata','2021-02-06','LB194177404HK','## JÁ CHEGOU!!! ##','2021-03-02','10:45:00','Cond. Japy',1,NULL,NULL),(11,'Mamys','Reletech ssd m2 512Gb','2021-02-08','LB214871100SG','## JÁ CHEGOU!!! ##','2021-03-16','10:56:00','Cond. Japy',1,NULL,NULL),(32,'Papys','SSD 480Gb 2.5 SATA3','2021-02-06','LB196119948HK','## JÁ CHEGOU!!! ##','2021-03-10','11:39:00','Cond. Japy',1,'',NULL),(34,'Mamys','Mouse e Pendrive 32Gb','2021-03-07','LB527211673SE','## JÁ CHEGOU!!! ##','2021-03-27','10:32:00','Cond. Japy',0,'',NULL);
/*!40000 ALTER TABLE `compras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagamentos`
--

DROP TABLE IF EXISTS `pagamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagamentos` (
  `idpg` int NOT NULL AUTO_INCREMENT,
  `idcp` int DEFAULT NULL,
  `datapg` date NOT NULL,
  `valor` float NOT NULL,
  `parcelas` int DEFAULT NULL,
  `valorparc` float DEFAULT NULL,
  `statuspg` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idpg`),
  KEY `idcp` (`idcp`),
  CONSTRAINT `pagamentos_ibfk_1` FOREIGN KEY (`idcp`) REFERENCES `compras` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagamentos`
--

LOCK TABLES `pagamentos` WRITE;
/*!40000 ALTER TABLE `pagamentos` DISABLE KEYS */;
INSERT INTO `pagamentos` VALUES (8,9,'0000-00-00',0,NULL,NULL,NULL),(9,11,'0000-00-00',0,NULL,NULL,NULL),(11,34,'0000-00-00',0,NULL,NULL,NULL),(12,32,'0000-00-00',0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `pagamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rastreios`
--

DROP TABLE IF EXISTS `rastreios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rastreios` (
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
  KEY `idprod` (`idprod`),
  CONSTRAINT `rastreios_ibfk_1` FOREIGN KEY (`idprod`) REFERENCES `compras` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rastreios`
--

LOCK TABLES `rastreios` WRITE;
/*!40000 ALTER TABLE `rastreios` DISABLE KEYS */;
INSERT INTO `rastreios` VALUES (1,9,'Mamys','Memória 8Gb DDR4 Adata','LB194177404HK','2021-03-02','10:45','JUNDIAI / SP','Objeto entregue ao destinatário rogerio ferreira',1),(2,9,'Mamys','Memória 8Gb DDR4 Adata','LB194177404HK','2021-03-02','08:37','JUNDIAI / SP','Objeto saiu -->> entrega ao destinatário',1),(3,9,'Mamys','Memória 8Gb DDR4 Adata','LB194177404HK','2021-03-01','13:49','INDAIATUBA / SP','Objeto em trânsito - INDAIATUBA-SP -->> JUNDIAI-SP',1),(4,9,'Mamys','Memória 8Gb DDR4 Adata','LB194177404HK','2021-02-22','09:28','CURITIBA / PR','Objeto em trânsito - CURITIBA-PR -->> INDAIATUBA-SP',1),(5,9,'Mamys','Memória 8Gb DDR4 Adata','LB194177404HK','2021-02-22','09:26','CURITIBA / PR','Fiscalização aduaneira finalizada',1),(6,9,'Mamys','Memória 8Gb DDR4 Adata','LB194177404HK','2021-02-22','07:49','CURITIBA / PR','Objeto recebido pelos Correios do Brasil ',1),(7,9,'Mamys','Memória 8Gb DDR4 Adata','LB194177404HK','2021-02-16','17:35','HONG KONG /','Objeto em trânsito - HONG KONG -->> BR ',1),(8,9,'Mamys','Memória 8Gb DDR4 Adata','LB194177404HK','2021-02-16','15:29','HONG KONG /','Objeto postado ',1),(9,11,'Mamys','Reletech ssd m2 512Gb','LB214871100SG','2021-03-16','10:56','JUNDIAI / SP','Objeto entregue ao destinatário',1),(10,11,'Mamys','Reletech ssd m2 512Gb','LB214871100SG','2021-03-16','08:50','JUNDIAI / SP','Objeto saiu -->> entrega ao destinatário',1),(11,11,'Mamys','Reletech ssd m2 512Gb','LB214871100SG','2021-03-15','13:53','INDAIATUBA / SP','Objeto em trânsito - INDAIATUBA-SP -->> JUNDIAI-SP',1),(12,11,'Mamys','Reletech ssd m2 512Gb','LB214871100SG','2021-02-11','22:53','CINGAPURA /','Objeto em trânsito - CINGAPURA -->> BR ',1),(13,32,'Papys','SSD 480Gb 2.5 SATA3','LB196119948HK','2021-03-10','11:39','JUNDIAI / SP','Objeto entregue ao destinatário',1),(14,32,'Papys','SSD 480Gb 2.5 SATA3','LB196119948HK','2021-03-10','08:56','JUNDIAI / SP','Objeto saiu -->> entrega ao destinatário',1),(15,32,'Papys','SSD 480Gb 2.5 SATA3','LB196119948HK','2021-03-08','08:01','INDAIATUBA / SP','Objeto em trânsito - INDAIATUBA-SP -->> JUNDIAI-SP',1),(16,32,'Papys','SSD 480Gb 2.5 SATA3','LB196119948HK','2021-03-04','09:59','CURITIBA / PR','Objeto em trânsito - CURITIBA-PR -->> INDAIATUBA-SP',1),(17,32,'Papys','SSD 480Gb 2.5 SATA3','LB196119948HK','2021-03-04','09:57','CURITIBA / PR','Fiscalização aduaneira finalizada',1),(18,32,'Papys','SSD 480Gb 2.5 SATA3','LB196119948HK','2021-03-02','12:22','CURITIBA / PR','Objeto recebido pelos Correios do Brasil ',1),(19,32,'Papys','SSD 480Gb 2.5 SATA3','LB196119948HK','2021-02-24','15:10','HONG KONG /','Objeto em trânsito - HONG KONG -->> BR ',1),(20,32,'Papys','SSD 480Gb 2.5 SATA3','LB196119948HK','2021-02-23','16:52','HONG KONG /','Objeto postado ',1),(21,34,'Mamys','Mouse e Pendrive 32Gb','LB527211673SE','2021-03-27','10:32','JUNDIAI / SP','Objeto entregue ao destinatário',0),(22,34,'Mamys','Mouse e Pendrive 32Gb','LB527211673SE','2021-03-27','10:01','JUNDIAI / SP','Objeto saiu -->> entrega ao destinatário',0),(23,34,'Mamys','Mouse e Pendrive 32Gb','LB527211673SE','2021-03-24','11:57','INDAIATUBA / SP','Objeto em trânsito - INDAIATUBA-SP -->> JUNDIAI-SP',0),(24,34,'Mamys','Mouse e Pendrive 32Gb','LB527211673SE','2021-03-22','13:59','CURITIBA / PR','Objeto em trânsito - CURITIBA-PR -->> INDAIATUBA-SP',0),(25,34,'Mamys','Mouse e Pendrive 32Gb','LB527211673SE','2021-03-22','13:57','CURITIBA / PR','Fiscalização aduaneira finalizada',0),(26,34,'Mamys','Mouse e Pendrive 32Gb','LB527211673SE','2021-03-18','12:52','CURITIBA / PR','Objeto recebido pelos Correios do Brasil ',0),(27,34,'Mamys','Mouse e Pendrive 32Gb','LB527211673SE','2021-03-13','11:41','SUECIA /','Objeto recebido na unidade de exportação no país de origem ',0),(28,34,'Mamys','Mouse e Pendrive 32Gb','LB527211673SE','2021-03-13','11:36','SUECIA /','Objeto postado ',0);
/*!40000 ALTER TABLE `rastreios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-12 12:17:53
