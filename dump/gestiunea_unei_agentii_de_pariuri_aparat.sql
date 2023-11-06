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
-- Table structure for table `aparat`
--

DROP TABLE IF EXISTS `aparat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aparat` (
  `CODAP` int NOT NULL,
  `Nume` varchar(45) NOT NULL,
  `Producator` varchar(45) NOT NULL,
  `Vechime` int NOT NULL,
  `Cost` int NOT NULL,
  `CODP` int NOT NULL,
  PRIMARY KEY (`CODAP`),
  UNIQUE KEY `CODAP_UNIQUE` (`CODAP`),
  KEY `CODP_idx` (`CODP`),
  CONSTRAINT `CODP1` FOREIGN KEY (`CODP`) REFERENCES `casa_de_pariuri` (`CODP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aparat`
--

LOCK TABLES `aparat` WRITE;
/*!40000 ALTER TABLE `aparat` DISABLE KEYS */;
INSERT INTO `aparat` VALUES (1,'TM1','Easy Pay',5,500,1),(2,'TM2','Kiosk',4,750,1),(3,'TM3','Easy Pay',4,800,2),(4,'TM4','Info Touch',2,1000,4),(5,'TM2','Info Touch',3,780,3);
/*!40000 ALTER TABLE `aparat` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-28 18:24:28
