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
-- Table structure for table `absender`
--

DROP TABLE IF EXISTS `absender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `absender` (
  `absID` int NOT NULL AUTO_INCREMENT COMMENT 'Teil des PKs, pro Niederlassung eindeutige, fortlaufende Identifikationsnummer',
  `Niederlassung_niID` int NOT NULL COMMENT 'Teil des PKs, zugleich FK, von welcher Niederlassung aus wird gesendet?',
  `logo` blob COMMENT 'Optionales, grafisches Logo. Kann je nach Niedrlassung oder Geschaeftszweck varieren',
  `homepage` varchar(45) DEFAULT NULL COMMENT 'optionale Webadresse des Absenders. Kann je nach Niederlassung oder Geschaeftszweig varieren',
  `Email` varchar(45) DEFAULT NULL COMMENT 'optionale EMailAdresse des Absenders. Kann je nach Niederlassung oder Geschaeftszweig varieren',
  PRIMARY KEY (`absID`,`Niederlassung_niID`),
  KEY `fk_Absender_Niederlassung1_idx` (`Niederlassung_niID`),
  CONSTRAINT `fk_Absender_Niederlassung1` FOREIGN KEY (`Niederlassung_niID`) REFERENCES `niederlassung` (`niID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `absender`
--

LOCK TABLES `absender` WRITE;
/*!40000 ALTER TABLE `absender` DISABLE KEYS */;
/*!40000 ALTER TABLE `absender` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-15  9:31:01
