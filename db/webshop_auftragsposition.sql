-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: webshop
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `auftragsposition`
--

DROP TABLE IF EXISTS `auftragsposition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auftragsposition` (
  `aPostID` int NOT NULL AUTO_INCREMENT COMMENT 'Eindeutige, fortlaufende Identifikationsnummer',
  `Auftrag_auftrID` int NOT NULL COMMENT 'Welcher Auftrag beinhaltet diesen Posten',
  `artNr` int NOT NULL COMMENT 'Artikelnummer, die in den Posten kopiert wird',
  `vkPreis` decimal(10,2) NOT NULL COMMENT 'Verkaufspreis in Franken auf 5 Rappen genau, welcher in den Posten kopiert wird',
  `spezKond` double NOT NULL COMMENT 'Fliesskommawert fuer spez. Konditionen. Bsp 2.5 bedeutet 2.5% Zuschlag, -1.8 bedeutet 1.8% Rabatt.',
  `stkZahl` int NOT NULL COMMENT 'Anzahl der Bestelleinheiten',
  `herstGarantie` int NOT NULL COMMENT 'Anzahl der Monate allfaelliger Herstellergarantie. Der Wert wird aus den Artikeldaten kopiert.s',
  PRIMARY KEY (`aPostID`),
  KEY `fk_Auftragsposition_Auftrag1_idx` (`Auftrag_auftrID`),
  CONSTRAINT `fk_Auftragsposition_Auftrag1` FOREIGN KEY (`Auftrag_auftrID`) REFERENCES `auftrag` (`auftrID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auftragsposition`
--

LOCK TABLES `auftragsposition` WRITE;
/*!40000 ALTER TABLE `auftragsposition` DISABLE KEYS */;
/*!40000 ALTER TABLE `auftragsposition` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-15  9:30:58
