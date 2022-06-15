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
-- Table structure for table `kunde`
--

DROP TABLE IF EXISTS `kunde`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kunde` (
  `kID` int NOT NULL AUTO_INCREMENT COMMENT 'Eindeutige, fortlaufende Identifikationsnummer',
  `Anrede_anID` int NOT NULL COMMENT 'Wie wird der Kunde betitelt?',
  `Sprache_spID` int NOT NULL COMMENT 'Welches ist die bevorzugte Sprache?',
  `Ort_oID` int NOT NULL COMMENT 'Wo wohnt der Kunde?',
  `Firma_fiID` int NOT NULL COMMENT 'Fuer wen arbeitet der Kunde?',
  `Vorname` varchar(45) NOT NULL COMMENT 'Vorname (Rufname) des Kunden',
  `Name` varchar(45) NOT NULL COMMENT 'Familienname des Kunden gemaess Anschrift',
  `Geburtsdatum` date DEFAULT NULL COMMENT 'Optionales Geburtsdatum mit Tag, Monat und Jahr',
  `EMail` varchar(45) NOT NULL COMMENT 'Emailadresse des Kunden fuer Belegszustellung und allfaellige Newsletter',
  `Tel_Priv` varchar(45) NOT NULL COMMENT 'Private Telefonnummer mit Landes und Regionsvorwahl',
  `Tel_Gesch` varchar(45) DEFAULT NULL COMMENT 'Optional geschaeftliche Telefonnummer mit Landes und Regionsvorwahl',
  `Tel_Mob` varchar(45) DEFAULT NULL COMMENT 'Optional Natelnummer mit Landes und Providervorwahl',
  `Adresse_Strasse` varchar(45) NOT NULL COMMENT 'Strasse gemaess Korespondenzadresse',
  `Adresse_HNr` varchar(45) DEFAULT NULL COMMENT 'Optional (falls vorhanden) Hausnummer der Korespondenzadresse',
  PRIMARY KEY (`kID`),
  KEY `fk_Kunde_Anrede1_idx` (`Anrede_anID`),
  KEY `fk_Kunde_Sprache1_idx` (`Sprache_spID`),
  KEY `fk_Kunde_Ort1_idx` (`Ort_oID`),
  KEY `fk_Kunde_Firma1_idx` (`Firma_fiID`),
  CONSTRAINT `fk_Kunde_Anrede1` FOREIGN KEY (`Anrede_anID`) REFERENCES `anrede` (`anID`),
  CONSTRAINT `fk_Kunde_Firma1` FOREIGN KEY (`Firma_fiID`) REFERENCES `firma` (`fiID`),
  CONSTRAINT `fk_Kunde_Ort1` FOREIGN KEY (`Ort_oID`) REFERENCES `ort` (`oID`),
  CONSTRAINT `fk_Kunde_Sprache1` FOREIGN KEY (`Sprache_spID`) REFERENCES `sprache` (`spID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kunde`
--

LOCK TABLES `kunde` WRITE;
/*!40000 ALTER TABLE `kunde` DISABLE KEYS */;
/*!40000 ALTER TABLE `kunde` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-15  9:30:53
