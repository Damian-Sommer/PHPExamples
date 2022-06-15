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
-- Table structure for table `art_ist_in_sprache`
--

DROP TABLE IF EXISTS `art_ist_in_sprache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `art_ist_in_sprache` (
  `Artikel_aNr` int NOT NULL COMMENT 'Teil des PKs, zudem FK. Somit pro Sprache_spID eindeutige Artikelnummer',
  `Sprache_spID` int NOT NULL COMMENT 'Teil des PKs, zudem FK. Somit pro Artikel_aNr eindeutige Identifikationsnummer',
  `artBez` varchar(45) NOT NULL COMMENT 'Textbezeichnung des Artikels',
  `frAt1` varchar(100) DEFAULT NULL COMMENT 'Textfeld, welches durch den Betreiber mit frei definierbaren Strinwerten befuellt werden kann',
  `frAt2` varchar(100) DEFAULT NULL COMMENT 'Textfeld, welches durch den Betreiber mit frei definierbaren Strinwerten befuellt werden kann',
  `frAt3` varchar(100) DEFAULT NULL COMMENT 'Textfeld, welches durch den Betreiber mit frei definierbaren Strinwerten befuellt werden kann',
  `frAt4` varchar(100) DEFAULT NULL COMMENT 'Textfeld, welches durch den Betreiber mit frei definierbaren Strinwerten befuellt werden kann',
  `frAt5` varchar(100) DEFAULT NULL COMMENT 'Textfeld, welches durch den Betreiber mit frei definierbaren Strinwerten befuellt werden kann',
  `frAt6` varchar(100) DEFAULT NULL COMMENT 'Textfeld, welches durch den Betreiber mit frei definierbaren Strinwerten befuellt werden kann',
  `frAt7` varchar(100) DEFAULT NULL COMMENT 'Textfeld, welches durch den Betreiber mit frei definierbaren Strinwerten befuellt werden kann',
  `frAt8` varchar(100) DEFAULT NULL COMMENT 'Textfeld, welches durch den Betreiber mit frei definierbaren Strinwerten befuellt werden kann',
  `frAt9` varchar(100) DEFAULT NULL COMMENT 'Textfeld, welches durch den Betreiber mit frei definierbaren Strinwerten befuellt werden kann',
  `frAt10` varchar(100) DEFAULT NULL COMMENT 'Textfeld, welches durch den Betreiber mit frei definierbaren Strinwerten befuellt werden kann',
  `frAt11` varchar(100) DEFAULT NULL COMMENT 'Textfeld, welches durch den Betreiber mit frei definierbaren Strinwerten befuellt werden kann',
  `frAt12` varchar(100) DEFAULT NULL COMMENT 'Textfeld, welches durch den Betreiber mit frei definierbaren Strinwerten befuellt werden kann',
  PRIMARY KEY (`Artikel_aNr`,`Sprache_spID`),
  KEY `fk_Artikel_has_Sprache_Artikel1_idx` (`Artikel_aNr`),
  KEY `fk_Artikel_has_Sprache_Sprache1_idx` (`Sprache_spID`),
  CONSTRAINT `fk_Artikel_has_Sprache_Artikel1` FOREIGN KEY (`Artikel_aNr`) REFERENCES `artikel` (`aNr`),
  CONSTRAINT `fk_Artikel_has_Sprache_Sprache1` FOREIGN KEY (`Sprache_spID`) REFERENCES `sprache` (`spID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `art_ist_in_sprache`
--

LOCK TABLES `art_ist_in_sprache` WRITE;
/*!40000 ALTER TABLE `art_ist_in_sprache` DISABLE KEYS */;
/*!40000 ALTER TABLE `art_ist_in_sprache` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-15  9:30:56
