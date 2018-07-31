-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: pes
-- ------------------------------------------------------
-- Server version	5.7.21-1ubuntu1

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
-- Dumping data for table `competitions`
--

LOCK TABLES `competitions` WRITE;
/*!40000 ALTER TABLE `competitions` DISABLE KEYS */;
INSERT INTO `competitions` VALUES (0,'championnat anglais 1','Premier League',0,0,0,22,0),(1,'championnat anglais 2','League Championship',0,0,1,22,0),(3,'championnat français 1','Ligue 1 Conforama',0,0,0,23,0),(4,'championnat français 2','Domino\'s Ligue 2',0,0,1,23,0),(5,'championnat italien 1','Serie A',0,0,0,35,0),(6,'championnat italien 2','Serie B',0,0,1,35,0),(7,'championnat pays bas','Eredivisie',0,0,0,45,0),(8,'championnat espagnol 1','Liga Santander',0,0,0,67,0),(9,'championnat espagnol 2','LIGA ADELANTE',0,0,1,67,0),(10,'championnat portugais','Liga Nos',0,0,0,55,0),(12,'championnat brésilien','Série A',0,0,0,8,5),(13,'championnat argentin','Superliga Quilmes Clásica',0,0,0,2,5),(14,'championnat chilien','Primera División',0,0,0,12,5),(15,'Ligue des champions d\'Asie ','AFC Champions League',0,1,-1,-1,5),(17,'coupe du monde','coupe du monde',2,1,-1,-1,-1),(25,'championnat russe','Russian Premier Liga',0,0,0,59,0),(26,'championnat danois','superliga',0,0,0,19,0),(27,'championnat suisse','Raiffeisen Super League',0,0,0,69,0),(28,'championnat écossais','Ladbrokes Premiership',0,0,0,61,0),(29,'championnat belge','Jupiler Pro League',0,0,0,5,0);
/*!40000 ALTER TABLE `competitions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-27 15:25:42
