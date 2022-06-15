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
-- Table structure for table `artikel`
--

DROP TABLE IF EXISTS `artikel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artikel` (
  `aNr` int NOT NULL AUTO_INCREMENT COMMENT 'Eindeutige, fortlaufende Identifikationsnummer',
  `ArtUnterGruppe_augID` int NOT NULL COMMENT 'zu welcher Artikeluntergruppe gehoert der Artikel?',
  `vkPreis` decimal(10,2) NOT NULL COMMENT 'Verkaufspreis des Artikels in SFR auf 5 Rappen genau',
  `ekPreis` decimal(10,2) NOT NULL COMMENT 'Einkaufspreis des Artikels auf 5 Rappen genau.',
  `Marke` varchar(45) NOT NULL COMMENT 'Marke, unter welcher der Artikel verkauft werden darf.',
  `HerstGarantie` int NOT NULL COMMENT 'Angabe ueber Herstellergarantie in Monaten. Falls keine Garantie wird 0 eingetragen.',
  `Gewicht` double NOT NULL COMMENT 'Artikelgewicht in kg als Fliesskommazahl',
  `image` blob COMMENT 'Anzeigebild des Artikels, wie es im Shop angezeigt werden soll',
  `techSpez` varchar(45) DEFAULT NULL COMMENT 'Eindeutiger Dateinamen der PDF-Datei mit den Herstellerangaben, falls vorhanden.',
  `HerstLink` varchar(45) DEFAULT NULL COMMENT 'URL des Herstellerwebauftrittes, falls vorhanden',
  `vkGesperrt` tinyint(1) NOT NULL COMMENT 'Falls der Artikel gesperrt auf true, ansonsten false ',
  PRIMARY KEY (`aNr`),
  UNIQUE KEY `techSpez` (`techSpez`),
  KEY `fk_Artikel_ArtUnterGruppe1_idx` (`ArtUnterGruppe_augID`),
  CONSTRAINT `fk_Artikel_ArtUnterGruppe1` FOREIGN KEY (`ArtUnterGruppe_augID`) REFERENCES `artuntergruppe` (`augID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artikel`
--

LOCK TABLES `artikel` WRITE;
/*!40000 ALTER TABLE `artikel` DISABLE KEYS */;
/*!40000 ALTER TABLE `artikel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-15  9:31:02
