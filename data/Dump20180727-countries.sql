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
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (0,'ALBANIA','ALB',0),(1,'ALGERIA','ALG',0),(2,'ARGENTINA','ARG',5),(3,'AUSTRALIA','AUS',6),(4,'AUSTRIA','AUT',0),(5,'BELGIUM','BEL',0),(6,'BOLIVIA','BOL',5),(7,'BOSNIA AND HERZEGOVINA','BIH',0),(8,'BRAZIL','BRA',5),(9,'BULGARIA','BUL',0),(10,'BURKINA FASO','BFA',1),(11,'CAMEROON','CMR',1),(12,'CHILE','CHL',5),(13,'CHINA','CHN',6),(14,'COLOMBIA','COL',5),(15,'COSTA RICA','CRI',4),(16,'CÔTE D\'IVOIRE','CIV',1),(17,'CROATIA','CRO',0),(18,'CZECH REPUBLIC','CZE',0),(19,'DENMARK','DEN',0),(20,'ECUADOR','ECU',5),(21,'EGYPT','EGY',1),(22,'ENGLAND','ENG',0),(23,'FRANCE','FRA',0),(24,'GERMANY','GER',0),(25,'GHANA','GHA',1),(26,'GREECE','GRE',0),(27,'GUINEA','GIN',1),(28,'HONDURAS','HND',4),(29,'HUNGARY','HUN',0),(30,'ICELAND','ISL',0),(31,'IRAN','IRN',6),(32,'IRAQ','IRQ',6),(33,'IRELAND','IRL',0),(34,'ISRAEL','ISR',0),(35,'ITALY','ITA',0),(36,'JAMAICA','JAM',4),(37,'JAPAN','JPN',6),(38,'JORDAN','JOR',6),(39,'KOREA DPR','PRK',6),(40,'KUWAIT','KWT',6),(41,'LEBANON','LBN',6),(42,'MALI','MLI',1),(43,'MEXICO','MEX',3),(44,'MOROCCO','MAR',1),(45,'NETHERLANDS','NED',0),(46,'NEW ZEALAND','NZL',6),(47,'NIGERIA','NGA',1),(48,'NORTHERN IRELAND','NIR',0),(49,'NORWAY','NOR',0),(50,'OMAN','OMN',6),(51,'PANAMA','PAN',4),(52,'PARAGUAY','PAR',5),(53,'PERU','PER',5),(54,'POLAND','POL',0),(55,'PORTUGAL','POR',0),(56,'QATAR','QAT',6),(57,'REPUBLIC OF KOREA','KOR',6),(58,'ROMANIA','ROU',0),(59,'RUSSIA','RUS',0),(60,'SAUDI ARABIA','SAU',6),(61,'SCOTLAND','SCO',0),(62,'SENEGAL','SEN',1),(63,'SERBIA','SER',0),(64,'SLOVAKIA','SVK',0),(65,'SLOVENIA','SVN',0),(66,'SOUTH AFRICA','ZAF',1),(67,'SPAIN','ESP',0),(68,'SWEDEN','SWE',0),(69,'SWITZERLAND','SUI',0),(70,'THAILAND','THA',6),(71,'TUNISIA','TUN',1),(72,'TURKEY','TUR',0),(73,'UKRAINE','UKR',0),(74,'UNITED ARAB EMIRATES','ARE',6),(75,'URUGUAY','URU',5),(76,'USA','USA',3),(77,'UZBEKISTAN','UZB',6),(78,'VENEZUELA','VEN',5),(79,'WALES','WAL',0),(80,'ZAMBIA','ZAM',1),(81,'HONG KONG','HKG',6),(82,'INDIA','IND',6),(83,'INDONESIA','IDN',6),(84,'VIETNAM','VNM',6),(85,'SINGAPORE','SGP',6),(86,'CLASSIC','CLA',7);
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-27 11:13:51