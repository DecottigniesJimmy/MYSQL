-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: Exo-metis-biere
-- ------------------------------------------------------
-- Server version	5.7.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `biere`
--

DROP TABLE IF EXISTS `biere`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `biere` (
  `ID_Biere` int(11) NOT NULL,
  `Nom` varchar(50) DEFAULT NULL,
  `Couleur` varchar(50) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `ID_Fabricant` int(11) NOT NULL,
  `ID_Ticker` int(11) NOT NULL,
  `ID_Origine` int(11) NOT NULL,
  PRIMARY KEY (`ID_Biere`),
  KEY `ID_Fabricant` (`ID_Fabricant`),
  KEY `ID_Ticker` (`ID_Ticker`),
  KEY `ID_Origine` (`ID_Origine`),
  CONSTRAINT `biere_ibfk_1` FOREIGN KEY (`ID_Fabricant`) REFERENCES `fabricant` (`ID_Fabricant`),
  CONSTRAINT `biere_ibfk_2` FOREIGN KEY (`ID_Ticker`) REFERENCES `tickets` (`ID_Ticker`),
  CONSTRAINT `biere_ibfk_3` FOREIGN KEY (`ID_Origine`) REFERENCES `localité` (`ID_Origine`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biere`
--

LOCK TABLES `biere` WRITE;
/*!40000 ALTER TABLE `biere` DISABLE KEYS */;
/*!40000 ALTER TABLE `biere` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fabricant`
--

DROP TABLE IF EXISTS `fabricant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fabricant` (
  `ID_Fabricant` int(11) NOT NULL,
  `Fabricant` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_Fabricant`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fabricant`
--

LOCK TABLES `fabricant` WRITE;
/*!40000 ALTER TABLE `fabricant` DISABLE KEYS */;
/*!40000 ALTER TABLE `fabricant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `localité`
--

DROP TABLE IF EXISTS `localité`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `localité` (
  `ID_Origine` int(11) NOT NULL,
  `Pays` varchar(50) DEFAULT NULL,
  `Continent` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_Origine`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `localité`
--

LOCK TABLES `localité` WRITE;
/*!40000 ALTER TABLE `localité` DISABLE KEYS */;
/*!40000 ALTER TABLE `localité` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prix_vente`
--

DROP TABLE IF EXISTS `prix_vente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prix_vente` (
  `ID_PrixTTC` int(11) NOT NULL,
  `Prix_achat` decimal(15,2) DEFAULT NULL,
  `Prix_vente` decimal(15,2) DEFAULT NULL,
  `Marge` decimal(15,2) DEFAULT NULL,
  `TVA` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`ID_PrixTTC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prix_vente`
--

LOCK TABLES `prix_vente` WRITE;
/*!40000 ALTER TABLE `prix_vente` DISABLE KEYS */;
/*!40000 ALTER TABLE `prix_vente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quantité`
--

DROP TABLE IF EXISTS `quantité`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quantité` (
  `ID_Ticker` int(11) NOT NULL,
  `ID_PrixTTC` int(11) NOT NULL,
  `Quantité` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_Ticker`,`ID_PrixTTC`),
  KEY `ID_PrixTTC` (`ID_PrixTTC`),
  CONSTRAINT `quantité_ibfk_1` FOREIGN KEY (`ID_Ticker`) REFERENCES `tickets` (`ID_Ticker`),
  CONSTRAINT `quantité_ibfk_2` FOREIGN KEY (`ID_PrixTTC`) REFERENCES `prix_vente` (`ID_PrixTTC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quantité`
--

LOCK TABLES `quantité` WRITE;
/*!40000 ALTER TABLE `quantité` DISABLE KEYS */;
/*!40000 ALTER TABLE `quantité` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets` (
  `ID_Ticker` int(11) NOT NULL,
  `DateTicket` datetime DEFAULT NULL,
  `Article` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_Ticker`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'Exo-metis-biere'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-21  9:22:09
