-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: gestiunea_unei_agentii_de_pariuri
-- ------------------------------------------------------
-- Server version	8.0.32

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

--
-- Table structure for table `pariu`
--

DROP TABLE IF EXISTS `pariu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pariu` (
  `CODPA` int NOT NULL,
  `Tip` varchar(45) NOT NULL,
  `Sport` varchar(45) NOT NULL,
  `Data_Incheieri` date NOT NULL,
  `Data_Realizari` date NOT NULL,
  `CODAP` int NOT NULL,
  PRIMARY KEY (`CODPA`),
  UNIQUE KEY `CODPA_UNIQUE` (`CODPA`),
  KEY `CODAP_idx` (`CODAP`),
  CONSTRAINT `CODAP` FOREIGN KEY (`CODAP`) REFERENCES `aparat` (`CODAP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pariu`
--

LOCK TABLES `pariu` WRITE;
/*!40000 ALTER TABLE `pariu` DISABLE KEYS */;
INSERT INTO `pariu` VALUES (1,'Rezultat final','Fotbal','2001-01-01','2001-01-20',1),(2,'Rezultat final','Handball','2010-06-01','2010-06-20',1),(3,'Total','Handball','2010-06-01','2010-06-20',2),(4,'Special','Handball','2008-11-11','2008-11-15',3),(5,'Special','Fotbal','2006-03-15','2006-03-20',5);
/*!40000 ALTER TABLE `pariu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-28 18:24:27
