-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: pes_1
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
-- Table structure for table `alembic_version`
--

DROP TABLE IF EXISTS `alembic_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alembic_version` (
  `version_num` varchar(32) NOT NULL,
  PRIMARY KEY (`version_num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alembic_version`
--

LOCK TABLES `alembic_version` WRITE;
/*!40000 ALTER TABLE `alembic_version` DISABLE KEYS */;
INSERT INTO `alembic_version` VALUES ('98cf493770b5');
/*!40000 ALTER TABLE `alembic_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `competitions`
--

DROP TABLE IF EXISTS `competitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `competitions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `competitions_names_id` int(11) NOT NULL,
  `competitions_categories_id` int(11) NOT NULL,
  `competitions_types_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `competitions_categories_id` (`competitions_categories_id`),
  KEY `competitions_names_id` (`competitions_names_id`),
  KEY `competitions_types_id` (`competitions_types_id`),
  CONSTRAINT `competitions_ibfk_1` FOREIGN KEY (`competitions_categories_id`) REFERENCES `competitions_categories` (`id`),
  CONSTRAINT `competitions_ibfk_2` FOREIGN KEY (`competitions_names_id`) REFERENCES `competitions_names` (`id`),
  CONSTRAINT `competitions_ibfk_3` FOREIGN KEY (`competitions_types_id`) REFERENCES `competitions_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competitions`
--

LOCK TABLES `competitions` WRITE;
/*!40000 ALTER TABLE `competitions` DISABLE KEYS */;
INSERT INTO `competitions` VALUES (1,1,3,2),(2,2,3,2),(3,3,3,2),(4,4,3,2),(5,5,3,2),(6,6,3,2),(7,7,3,2),(8,8,3,2),(9,9,3,2),(10,10,3,2),(11,11,3,2),(12,12,3,2),(13,13,3,2),(14,14,3,2),(15,15,3,2),(16,16,3,2),(17,17,3,2),(18,18,3,2),(19,19,3,2),(20,20,1,1),(21,21,3,2),(22,22,2,1),(23,23,3,1),(24,24,2,1),(25,25,3,1),(26,26,3,1),(27,27,2,1),(28,28,3,1),(29,29,3,1),(30,30,3,1),(31,31,3,1),(32,32,3,1),(33,33,2,1),(34,34,3,1),(35,35,3,1),(36,36,3,1),(37,37,3,1),(38,38,1,1),(39,39,3,1),(40,40,3,1),(41,41,3,1),(42,42,3,1),(43,43,3,1),(44,44,3,1),(45,45,1,1),(46,46,3,1),(47,47,3,1),(48,48,3,1),(49,49,3,1),(50,50,3,1),(51,51,3,1),(52,52,3,1),(53,53,3,1),(54,54,3,1),(55,55,3,1),(56,56,3,1),(57,57,3,1),(58,58,3,1),(59,59,3,1),(60,60,2,1),(61,61,2,1),(62,62,2,1),(63,63,2,1);
/*!40000 ALTER TABLE `competitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `competitions_categories`
--

DROP TABLE IF EXISTS `competitions_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `competitions_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competitions_categories`
--

LOCK TABLES `competitions_categories` WRITE;
/*!40000 ALTER TABLE `competitions_categories` DISABLE KEYS */;
INSERT INTO `competitions_categories` VALUES (1,'intercontinental'),(2,'continental'),(3,'national');
/*!40000 ALTER TABLE `competitions_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `competitions_names`
--

DROP TABLE IF EXISTS `competitions_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `competitions_names` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competitions_names`
--

LOCK TABLES `competitions_names` WRITE;
/*!40000 ALTER TABLE `competitions_names` DISABLE KEYS */;
INSERT INTO `competitions_names` VALUES (1,'Jupiler Pro League'),(2,'Superliga'),(3,'Premier League'),(4,'Football League Championship'),(5,'Ligue 1 Conforama'),(6,'Domino\\\'s Ligue 2'),(7,'serie A'),(8,'Eredivisie'),(9,'Liga Nos'),(10,'Russian Premier Liga'),(11,'Ladbrokes Premiership'),(12,'Liga'),(13,'Raiffeisen Super League'),(14,'Spor Toto Süper Lig'),(15,'Other European Leagues'),(16,'Superliga Quilmes Clásica'),(17,'CAMPEONATO BRASILEIRO'),(18,'Campeonato Nacional Scotiabank'),(19,'Other Latin American Teams'),(20,'AFC Champions League'),(21,'Bundesliga'),(22,'asian cup'),(23,'Barrage_D1_D2_Anglais'),(24,'Coupe Afrique Nations'),(25,'Community Shield'),(26,'Copa Aguila'),(27,'Copa America'),(28,'Copa Argentina'),(29,'Copa Chile'),(30,'Copa Del Rey'),(31,'Copa Do Brasil'),(32,'Copa Espagna'),(33,'Copa Libertadores'),(34,'coupe Allemagne'),(35,'Coupe Belgique'),(36,'Coupe Danemark'),(37,'Coupe De France'),(38,'Coupe des confederations'),(39,'coupe_PaysBas'),(40,'Coupe Portugal'),(41,'coupe Suisse'),(42,'coupe Turk'),(43,'coupe ecosse'),(44,'FA Cup'),(45,'FIFA World Cup'),(46,'coupe de russie'),(47,'super coupe russe'),(48,'SuperCopa Argentina'),(49,'supercopa Espagna'),(50,'Supercoupe_Anglais'),(51,'Supercoupe_Belgique'),(52,'SupercoupeFrance'),(53,'Supercoupe_PaysBas'),(54,'Supercoupe_Portugal'),(55,'supercupAllemagne'),(56,'supercup_italie'),(57,'SupercupTurk'),(58,'SuperLiga Aguila'),(59,'coupe d\\\'italie'),(60,'europa league'),(61,'league des champions'),(62,'Euro'),(63,'Super coupe d\\\'europe');
/*!40000 ALTER TABLE `competitions_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `competitions_types`
--

DROP TABLE IF EXISTS `competitions_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `competitions_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competitions_types`
--

LOCK TABLES `competitions_types` WRITE;
/*!40000 ALTER TABLE `competitions_types` DISABLE KEYS */;
INSERT INTO `competitions_types` VALUES (1,'cup'),(2,'championship');
/*!40000 ALTER TABLE `competitions_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `abbreviation` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `abbreviation` (`abbreviation`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'ALBANIA','ALB'),(2,'ALGERIA','ALG'),(3,'ARGENTINA','ARG'),(4,'AUSTRALIA','AUS'),(5,'AUSTRIA','AUT'),(6,'BELGIUM','BEL'),(7,'BOLIVIA','BOL'),(8,'BOSNIA AND HERZEGOVINA','BIH'),(9,'BRAZIL','BRA'),(10,'BULGARIA','BUL'),(11,'BURKINA FASO','BFA'),(12,'CAMEROON','CMR'),(13,'CHILE','CHL'),(14,'CHINA','CHN'),(15,'COLOMBIA','COL'),(16,'COSTA RICA','CRI'),(17,'CROATIA','CIV'),(18,'CZECH REPUBLIC','CRO'),(19,'CÔTE D\'IVOIRE','CZE'),(20,'DENMARK','DEN'),(21,'ECUADOR','ECU'),(22,'EGYPT','EGY'),(23,'ENGLAND','ENG'),(24,'FRANCE','FRA'),(25,'GERMANY','GER'),(26,'GHANA','GHA'),(27,'GREECE','GRE'),(28,'GUINEA','GIN'),(29,'HONDURAS','HND'),(30,'HUNGARY','HUN'),(31,'ICELAND','ISL'),(32,'IRAN','IRN'),(33,'IRAQ','IRQ'),(34,'IRELAND','IRL'),(35,'ISRAEL','ISR'),(36,'ITALY','ITA'),(37,'JAMAICA','JAM'),(38,'JAPAN','JPN'),(39,'JORDAN','JOR'),(40,'KOREA DPR','PRK'),(41,'KUWAIT','KWT'),(42,'LEBANON','LBN'),(43,'MALI','MLI'),(44,'MEXICO','MEX'),(45,'MOROCCO','MAR'),(46,'NETHERLANDS','NED'),(47,'NEW ZEALAND','NZL'),(48,'NIGERIA','NGA'),(49,'NORTHERN IRELAND','NIR'),(50,'NORWAY','NOR'),(51,'OMAN','OMN'),(52,'PANAMA','PAN'),(53,'PARAGUAY','PAR'),(54,'PERU','PER'),(55,'POLAND','POL'),(56,'PORTUGAL','POR'),(57,'QATAR','QAT'),(58,'REPUBLIC OF KOREA','KOR'),(59,'ROMANIA','ROU'),(60,'RUSSIA','RUS'),(61,'SAUDI ARABIA','SAU'),(62,'SCOTLAND','SCO'),(63,'SENEGAL','SEN'),(64,'SERBIA','SER'),(65,'SLOVAKIA','SVK'),(66,'SLOVENIA','SVN'),(67,'SOUTH AFRICA','ZAF'),(68,'SPAIN','ESP'),(69,'SWEDEN','SWE'),(70,'SWITZERLAND','SUI'),(71,'THAILAND','THA'),(72,'TUNISIA','TUN'),(73,'TURKEY','TUR'),(74,'UKRAINE','UKR'),(75,'UNITED ARAB EMIRATES','ARE'),(76,'URUGUAY','URU'),(77,'USA','USA'),(78,'UZBEKISTAN','UZB'),(79,'VENEZUELA','VEN'),(80,'WALES','WAL'),(81,'ZAMBIA','ZAM'),(82,'HONG KONG','HKG');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geolocalisation`
--

DROP TABLE IF EXISTS `geolocalisation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `geolocalisation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zones_id` int(11) NOT NULL,
  `countries_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `countries_id` (`countries_id`),
  KEY `zones_id` (`zones_id`),
  CONSTRAINT `geolocalisation_ibfk_1` FOREIGN KEY (`countries_id`) REFERENCES `countries` (`id`),
  CONSTRAINT `geolocalisation_ibfk_2` FOREIGN KEY (`zones_id`) REFERENCES `zones` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geolocalisation`
--

LOCK TABLES `geolocalisation` WRITE;
/*!40000 ALTER TABLE `geolocalisation` DISABLE KEYS */;
/*!40000 ALTER TABLE `geolocalisation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `default` tinyint(1) DEFAULT NULL,
  `permissions` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `ix_roles_default` (`default`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'User',1,7),(2,'Moderator',0,15),(3,'Administrator',0,31);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seasons`
--

DROP TABLE IF EXISTS `seasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seasons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seasons`
--

LOCK TABLES `seasons` WRITE;
/*!40000 ALTER TABLE `seasons` DISABLE KEYS */;
INSERT INTO `seasons` VALUES (1,'2018/2019');
/*!40000 ALTER TABLE `seasons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teams_names_id` int(11) NOT NULL,
  `teams_types_id` int(11) NOT NULL,
  `teams_levels_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `teams_levels_id` (`teams_levels_id`),
  KEY `teams_names_id` (`teams_names_id`),
  KEY `teams_types_id` (`teams_types_id`),
  CONSTRAINT `teams_ibfk_1` FOREIGN KEY (`teams_levels_id`) REFERENCES `teams_levels` (`id`),
  CONSTRAINT `teams_ibfk_2` FOREIGN KEY (`teams_names_id`) REFERENCES `teams_names` (`id`),
  CONSTRAINT `teams_ibfk_3` FOREIGN KEY (`teams_types_id`) REFERENCES `teams_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=437 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,1,3,1),(2,2,3,1),(3,3,3,1),(4,4,3,1),(5,5,3,1),(6,6,3,1),(7,7,3,1),(8,8,3,1),(9,9,3,1),(10,10,3,1),(11,11,3,1),(12,12,3,1),(13,13,3,1),(14,14,3,1),(15,15,3,1),(16,16,3,1),(17,17,3,1),(18,18,3,1),(19,19,3,1),(20,20,3,1),(21,21,3,1),(22,22,3,1),(23,23,3,1),(24,24,3,1),(25,25,3,1),(26,26,3,1),(27,27,3,1),(28,28,3,1),(29,29,3,1),(30,30,3,1),(31,31,3,1),(32,32,3,1),(33,33,3,1),(34,34,3,1),(35,35,3,1),(36,36,3,1),(37,37,3,1),(38,38,3,1),(39,39,3,1),(40,40,3,1),(41,41,3,1),(42,42,3,1),(43,43,3,1),(44,44,3,1),(45,45,3,1),(46,46,3,1),(47,47,3,1),(48,48,3,1),(49,49,3,1),(50,50,3,1),(51,51,3,1),(52,52,3,1),(53,53,3,1),(54,54,3,1),(55,55,3,1),(56,56,3,1),(57,57,3,1),(58,58,3,1),(59,59,3,1),(60,60,3,1),(61,61,3,1),(62,62,3,1),(63,63,3,1),(64,64,3,1),(65,65,3,1),(66,66,3,1),(67,67,3,1),(68,68,3,1),(69,69,3,1),(70,70,3,1),(71,71,3,1),(72,72,3,1),(73,73,3,1),(74,74,3,1),(75,75,3,1),(76,76,3,1),(77,77,3,1),(78,78,3,1),(79,79,3,1),(80,80,3,1),(81,81,3,1),(82,82,3,1),(83,83,3,1),(84,84,3,1),(85,85,3,1),(86,86,3,1),(87,87,3,1),(88,88,3,1),(89,89,3,1),(90,90,3,1),(91,91,3,1),(92,92,3,1),(93,93,3,1),(94,94,3,1),(95,95,3,1),(96,96,3,1),(97,97,3,1),(98,98,3,1),(99,99,3,1),(100,100,3,1),(101,101,3,1),(102,102,3,1),(103,103,3,1),(104,104,3,1),(105,105,3,1),(106,106,3,1),(107,107,3,1),(108,108,3,1),(109,109,3,1),(110,110,3,1),(111,111,3,1),(112,112,3,1),(113,113,3,1),(114,114,3,1),(115,115,3,1),(116,116,3,1),(117,117,3,1),(118,118,3,1),(119,119,3,1),(120,120,3,1),(121,121,3,1),(122,122,3,1),(123,123,3,1),(124,124,3,1),(125,125,3,1),(126,126,3,1),(127,127,3,1),(128,128,3,1),(129,129,3,1),(130,130,3,1),(131,131,3,1),(132,132,3,1),(133,133,3,1),(134,134,3,1),(135,135,3,1),(136,136,3,1),(137,137,3,1),(138,138,3,1),(139,139,3,1),(140,140,3,1),(141,141,3,1),(142,142,3,1),(143,143,3,1),(144,144,3,1),(145,145,3,1),(146,146,3,1),(147,147,3,1),(148,148,3,1),(149,149,3,1),(150,150,3,1),(151,151,3,1),(152,152,3,1),(153,153,3,1),(154,154,3,1),(155,155,3,1),(156,156,3,1),(157,157,3,1),(158,158,3,1),(159,159,3,1),(160,160,3,1),(161,161,3,1),(162,162,3,1),(163,163,3,1),(164,164,3,1),(165,165,3,1),(166,166,3,1),(167,167,3,1),(168,168,3,1),(169,169,3,1),(170,170,3,1),(171,171,3,1),(172,172,3,1),(173,173,3,1),(174,174,3,1),(175,175,3,1),(176,176,3,1),(177,177,3,1),(178,178,3,1),(179,179,3,1),(180,180,3,1),(181,181,3,1),(182,182,3,1),(183,183,3,1),(184,184,3,1),(185,185,3,1),(186,186,3,1),(187,187,3,1),(188,188,3,1),(189,189,3,1),(190,190,3,1),(191,191,3,1),(192,192,3,1),(193,193,3,1),(194,194,3,1),(195,195,3,1),(196,196,3,1),(197,197,3,1),(198,198,3,1),(199,199,3,1),(200,200,3,1),(201,201,3,1),(202,202,3,1),(203,203,3,1),(204,204,3,1),(205,205,3,1),(206,206,3,1),(207,207,3,1),(208,208,3,1),(209,209,3,1),(210,210,3,1),(211,211,3,1),(212,212,3,1),(213,213,3,1),(214,214,3,1),(215,215,3,1),(216,216,3,1),(217,217,3,1),(218,218,3,1),(219,219,3,1),(220,220,3,1),(221,221,3,1),(222,222,3,1),(223,223,3,1),(224,224,3,1),(225,225,3,1),(226,226,3,1),(227,227,3,1),(228,228,3,1),(229,229,3,1),(230,230,3,1),(231,231,3,1),(232,232,3,1),(233,233,3,1),(234,234,3,1),(235,235,3,1),(236,236,3,1),(237,237,3,1),(238,238,3,1),(239,239,3,1),(240,240,3,1),(241,241,3,1),(242,242,3,1),(243,243,3,1),(244,244,3,1),(245,245,3,1),(246,246,3,1),(247,247,3,1),(248,248,3,1),(249,249,3,1),(250,250,3,1),(251,251,3,1),(252,252,3,1),(253,253,3,1),(254,254,3,1),(255,255,3,1),(256,256,3,1),(257,257,3,1),(258,258,3,1),(259,259,3,1),(260,260,3,1),(261,261,3,1),(262,262,3,1),(263,263,3,1),(264,264,3,1),(265,265,3,1),(266,266,3,1),(267,267,3,1),(268,268,3,1),(269,269,3,1),(270,270,3,1),(271,271,3,1),(272,272,3,1),(273,273,3,1),(274,274,3,1),(275,275,3,1),(276,276,3,1),(277,277,3,1),(278,278,3,1),(279,279,3,1),(280,280,3,1),(281,281,3,1),(282,282,3,1),(283,283,3,1),(284,284,3,1),(285,285,3,1),(286,286,3,1),(287,287,3,1),(288,288,3,1),(289,289,3,1),(290,290,3,1),(291,291,3,1),(292,292,3,1),(293,293,3,1),(294,294,3,1),(295,295,3,1),(296,296,3,1),(297,297,3,1),(298,298,3,1),(299,299,3,1),(300,300,3,1),(301,301,3,1),(302,302,3,1),(303,303,3,1),(304,304,3,1),(305,305,3,1),(306,306,3,1),(307,307,3,1),(308,308,3,1),(309,309,3,1),(310,310,3,1),(311,311,3,1),(312,312,3,1),(313,313,3,1),(314,314,3,1),(315,315,3,1),(316,316,3,1),(317,317,3,1),(318,318,3,1),(319,319,3,1),(320,320,3,1),(321,321,3,1),(322,322,3,1),(323,323,3,1),(324,324,3,1),(325,325,3,1),(326,326,3,1),(327,327,3,1),(328,328,3,1),(329,329,3,1),(330,330,3,1),(331,331,3,1),(332,332,3,1),(333,333,3,1),(334,334,3,1),(335,335,3,1),(336,336,3,1),(337,337,3,1),(338,338,3,1),(339,339,3,1),(340,340,3,1),(341,341,3,1),(342,342,3,1),(343,343,3,1),(344,344,3,1),(345,345,3,1),(346,346,3,1),(347,347,3,1),(348,348,3,1),(349,349,3,1),(350,350,3,1),(351,351,3,1),(352,352,3,1),(353,353,3,1),(354,354,3,1),(355,355,3,1),(356,356,2,1),(357,357,2,1),(358,358,2,1),(359,359,2,1),(360,360,2,1),(361,361,2,1),(362,362,2,1),(363,363,2,1),(364,364,2,1),(365,365,2,1),(366,366,2,1),(367,367,2,1),(368,368,2,1),(369,369,2,1),(370,370,2,1),(371,371,2,1),(372,372,2,1),(373,373,2,1),(374,374,2,1),(375,375,2,1),(376,376,2,1),(377,377,2,1),(378,378,2,1),(379,379,2,1),(380,380,2,1),(381,381,2,1),(382,382,2,1),(383,383,2,1),(384,384,2,1),(385,385,2,1),(386,386,2,1),(387,387,2,1),(388,388,2,1),(389,389,2,1),(390,390,2,1),(391,391,2,1),(392,392,2,1),(393,393,2,1),(394,394,2,1),(395,395,2,1),(396,396,2,1),(397,397,2,1),(398,398,2,1),(399,399,2,1),(400,400,2,1),(401,401,2,1),(402,402,2,1),(403,403,2,1),(404,404,2,1),(405,405,2,1),(406,406,2,1),(407,407,2,1),(408,408,2,1),(409,409,2,1),(410,410,2,1),(411,411,2,1),(412,412,2,1),(413,413,2,1),(414,414,2,1),(415,415,2,1),(416,416,2,1),(417,417,2,1),(418,418,2,1),(419,419,2,1),(420,420,2,1),(421,421,2,1),(422,422,2,1),(423,423,2,1),(424,424,2,1),(425,425,2,1),(426,426,2,1),(427,427,2,1),(428,428,2,1),(429,429,2,1),(430,430,2,1),(431,431,2,1),(432,432,2,1),(433,433,2,1),(434,434,2,1),(435,435,2,1),(436,436,2,1);
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams_levels`
--

DROP TABLE IF EXISTS `teams_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teams_levels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `level` (`level`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams_levels`
--

LOCK TABLES `teams_levels` WRITE;
/*!40000 ALTER TABLE `teams_levels` DISABLE KEYS */;
INSERT INTO `teams_levels` VALUES (1,0),(2,0.5),(3,1),(4,1.5),(5,2),(6,2.5),(7,3),(8,3.5),(9,4),(10,4.5),(11,5);
/*!40000 ALTER TABLE `teams_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams_names`
--

DROP TABLE IF EXISTS `teams_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teams_names` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pes_name` varchar(64) DEFAULT NULL,
  `real_name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=437 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams_names`
--

LOCK TABLES `teams_names` WRITE;
/*!40000 ALTER TABLE `teams_names` DISABLE KEYS */;
INSERT INTO `teams_names` VALUES (1,'ANDERLECHT','Anderlecht'),(2,'ANTWERP','Antwerp'),(3,'CERCLE BRUGGE','Cercle Bruges'),(4,'CLUB BRUGGE','Club Bruges'),(5,'GENK','Genk'),(6,'GENT','La Gantoise'),(7,'KAS EUPEN','AS Eupen'),(8,'KORTRIJK','Courtrai'),(9,'KV OOSTENDE','Ostende'),(10,'LOKEREN','Lokeren'),(11,'ROYAL EXCEL MOUSCRON','Mouscron-PAruwelz'),(12,'SINT-TRUIDEN','Saint-Trond'),(13,'SPORTING CHARLEROI','Sporting Charleroi'),(14,'STANDARD LIÈGE','Standard de Liege'),(15,'WAASLAND-BEVEREN','Waasland-Beveren'),(16,'ZULTE-WAREGEM','Zulte-Waregem'),(17,'AAB','Aalborg'),(18,'AGF','Aarhus'),(19,'BRØNDBY','Brondby'),(20,'ESBJERG','Esbjerg'),(21,'HOBRO','Hobro'),(22,'HORSENS','Horsens'),(23,'KØBENHAVN','FC Copenhagen'),(24,'MIDTJYLLAND','Midtjylland'),(25,'NORDSJÆLLAND','Nordsjaelland'),(26,'OB','Odense'),(27,'RANDERS','Randers'),(28,'SØNDERJYSKE','Sonderjyske'),(29,'VEJLE','Vejle'),(30,'VENDSYSSEL','Vendsyssel FF'),(31,'ARSENAL','Arsenal'),(32,'East Dorsetshire','AFC Bournemouth'),(33,'East London','West Ham United'),(34,'East Midlands','Leicester City'),(35,'East Sussex','Brighton and Hove Albion'),(36,'Hampshire Red','Southhampton'),(37,'Hertfordshire','Watford'),(38,'Lancashire Claret','Burnley'),(39,'LIVERPOOL','LIVERPOOL'),(40,'London FC','Chelsea'),(41,'Man Blue','Manchester City'),(42,'Man Red','Manchester United'),(43,'Merseyside Blue','Everton'),(44,'North East London','Tottenham Hotspur'),(45,'South Norwood','Crystal Palace'),(46,'South Wales','Cardiff City'),(47,'Tyneside','Newcastle United'),(48,'West London White','Fullham'),(49,'West Yorkshire Town','Huddlesfield Town'),(50,'WM Gold','Wolverhampton Wanderers'),(51,'Berkshire Blues','Reading'),(52,'Derbyshire','Derby County'),(53,'East Anglia Town','Ipswich Town'),(54,'GL Blue White','Millwall'),(55,'Hounslow','Brentford FC'),(56,'Lancashire Blue','Blackburn Rovers'),(57,'LN Azure Blue White','Wigan Athletic'),(58,'LN White','Preston North End'),(59,'Norfolk City','Norwich City'),(60,'North West London','Queens Park Rangers'),(61,'Notts Reds','Nottingham Forest'),(62,'NW White Black','Bolton Wanderers'),(63,'South Yorkshire Blues','Sheffield Wednesday'),(64,'ST Red','Stoke City'),(65,'SW Red','Bristol City'),(66,'Teesside','Middlesbrough'),(67,'West Glamorgan City','Swansea City'),(68,'West Midlands City','Birmingham City'),(69,'West Midlands Stripes','West Bromwich Albion'),(70,'West Midlands Village','Aston Villa'),(71,'YH Red Black','Sheffield United'),(72,'Yorkshire Orange','Hull City'),(73,'Yorkshire Reds','Rotherham United'),(74,'Yorkshire Whites','Leeds United'),(75,'AMIENS SC','AMIENS SC'),(76,'ANGERS SCO','ANGERS SCO'),(77,'BORDEAUX','BORDEAUX'),(78,'CAEN','CAEN'),(79,'DIJON','DIJON'),(80,'GUINGAMP','GUINGAMP'),(81,'LILLE','LILLE'),(82,'MONACO','MONACO'),(83,'MONTPELLIER','MONTPELLIER'),(84,'NANTES','NANTES'),(85,'NICE','NICE'),(86,'NÎMES','NÎMES'),(87,'OLYMPIQUE LYONNAIS','OLYMPIQUE LYONNAIS'),(88,'OLYMPIQUE MARSEILLE','OLYMPIQUE MARSEILLE'),(89,'PSG','PSG'),(90,'RENNES','RENNES'),(91,'SAINT-ÉTIENNE','SAINT-ÉTIENNE'),(92,'STADE DE REIMS','STADE DE REIMS'),(93,'STRASBOURG','STRASBOURG'),(94,'TOULOUSE','TOULOUSE'),(95,'AJACCIO','AJACCIO'),(96,'AUXERRE','AUXERRE'),(97,'BÉZIERS','BÉZIERS'),(98,'BREST','BREST'),(99,'CHÂTEAUROUX','CHÂTEAUROUX'),(100,'CLERMONT','CLERMONT'),(101,'GAZÉLEC AJACCIO','GAZÉLEC AJACCIO'),(102,'GRENOBLE FOOT 38','GRENOBLE FOOT 38'),(103,'LE HAVRE','LE HAVRE'),(104,'LORIENT','LORIENT'),(105,'METZ','METZ'),(106,'NANCY','NANCY'),(107,'NIORT','NIORT'),(108,'ORLÉANS','ORLÉANS'),(109,'PARIS','PARIS'),(110,'RC LENS','RC LENS'),(111,'RED STAR','RED STAR'),(112,'SOCHAUX','SOCHAUX'),(113,'TROYES','TROYES'),(114,'VALENCIENNES','VALENCIENNES'),(115,'ATALANTA','ATALANTA'),(116,'BOLOGNA','BOLOGNA'),(117,'CAGLIARI','CAGLIARI'),(118,'CHIEVO','CHIEVO'),(119,'EMPOLI','EMPOLI'),(120,'FIORENTINA','FIORENTINA'),(121,'GENOA','GENOA'),(122,'INTERNAZIONALE','INTERNAZIONALE'),(123,'LAZIO','LAZIO'),(124,'MILAN','MILAN'),(125,'NAPOLI','NAPOLI'),(126,'PARMA','PARMA'),(127,'PM BLACK WHITE','Juventus'),(128,'ROMA','ROMA'),(129,'SAMPDORIA','SAMPDORIA'),(130,'SASSUOLO','SASSUOLO'),(131,'SPAL','SPAL'),(132,'FROSINONE','FROSINONE'),(133,'TORINO','TORINO'),(134,'UDINESE','UDINESE'),(135,'ADO DEN HAAG','Den Haag'),(136,'AJAX','Ajax'),(137,'AZ','Alkmaar'),(138,'DE GRAAFSCHAP','Graafschap'),(139,'EMMEN','FC Emmen'),(140,'EXCELSIOR','Excelsior'),(141,'FEYENOORD','Feyenoord'),(142,'FORTUNA SITTARD','Sittard'),(143,'GRONINGEN','Groningen'),(144,'HEERENVEEN','Heerenveen'),(145,'HERACLES','Heracles'),(146,'NAC BREDA','Breda'),(147,'PEC ZWOLLE','Zwolle'),(148,'PSV','PSV'),(149,'UTRECHT','Utrecht'),(150,'VITESSE','Vitesse'),(151,'VVV','Venlo'),(152,'WILLEM II','Willem II'),(153,'BELENENSES','Belenenses'),(154,'BENFICA','Benfica'),(155,'BOAVISTA','Boavista'),(156,'CHAVES','CHAVES'),(157,'DESPORTIVO AVES','DESPORTIVO AVES'),(158,'FEIRENSE','FEIRENSE'),(159,'MARÍTIMO','MARÍTIMO'),(160,'MOREIRENSE','MOREIRENSE'),(161,'NACIONAL','Nacional Madère'),(162,'PORTIMONENSE','PORTIMONENSE'),(163,'PORTO','FC Porto'),(164,'RIO AVE','RIO AVE'),(165,'SANTA CLARA','SANTA CLARA'),(166,'SPORTING BRAGA','SPORTING BRAGA'),(167,'SPORTING CP','sporting du portugal'),(168,'TONDELA','Tondela'),(169,'VITÓRIA GUIMARÃES','VITÓRIA GUIMARÃES'),(170,'VITÓRIA SETÚBAL','VITÓRIA SETÚBAL'),(171,'AKHMAT GROZNY','AKHMAT GROZNY'),(172,'ANZHI','ANZHI'),(173,'ARSENAL TULA','ARSENAL TULA'),(174,'CSKA MOSKVA','CSKA MOSCOU'),(175,'DINAMO MOSKVA','DYNAMO MOSCOU'),(176,'KRASNODAR','KRASNODAR'),(177,'KRYLYA SOVETOV','KRYLYA SOVETOV SAMARA'),(178,'LOKOMOTIV MOSKVA','LOCOMOTIV MOSCOU'),(179,'ORENBURG','Orenburg'),(180,'ROSTOV','FK Rostov'),(181,'RUBIN KAZAN','RUBIN KAZAN'),(182,'SPARTAK MOSKVA','SPARTAK MOSCOU'),(183,'UFA','UFA'),(184,'URAL','URAL'),(185,'YENISEY','YENISEY'),(186,'ZENIT','Zenit Petersburg'),(187,'ABERDEEN','ABERDEEN'),(188,'CELTIC','CELTIC'),(189,'DUNDEE','DUNDEE'),(190,'HAMILTON ACADEMICAL','HAMILTON ACADEMICAL'),(191,'HEARTS','HEARTS'),(192,'HIBERNIAN','HIBERNIAN'),(193,'KILMARNOCK','KILMARNOCK'),(194,'LIVINGSTON','LIVINGSTON'),(195,'MOTHERWELL','MOTHERWELL'),(196,'RANGERS','RANGERS'),(197,'ST. JOHNSTONE','ST. JOHNSTONE'),(198,'ST. MIRREN','ST. MIRREN'),(199,'AN Green White','Real Betis'),(200,'AN White Red','Sevilla'),(201,'AR Burgundy Blue','SD Huesca'),(202,'BARCELONA','BARCELONE'),(203,'CL Purple','Real Valladolid'),(204,'CT Blue White','RCD Espanyol'),(205,'CT Carmine White','Girona'),(206,'ED Blue Burgundy','Levante'),(207,'ED White Orange','Valencia'),(208,'ED Yellow','Villareal'),(209,'GA Cyan','Celta De Vigo'),(210,'KB Red White','Atletico De Madrid'),(211,'MD Blue White','Leganes'),(212,'MD Cobalt Blue','Getafe'),(213,'MD Scarlet White','Rayo Vallecano'),(214,'MD White','Real Madrid'),(215,'PV Blue Red','Eibar'),(216,'PV Blue White','Real Sociedad'),(217,'PV Sky Blue White','Deportivo Alaves'),(218,'PV White Red','Athletic Bilbao'),(219,'BASEL','Bale'),(220,'GRASSHOPPER','GRASSHOPPER'),(221,'LUGANO','LUGANO'),(222,'LUZERN','LUZERN'),(223,'NEUCHÂTEL XAMAX','NEUCHÂTEL XAMAX'),(224,'SION','SION'),(225,'ST. GALLEN','ST. GALLEN'),(226,'THUN','THUN'),(227,'YOUNG BOYS','YOUNG BOYS'),(228,'ZÜRICH','ZÜRICH'),(229,'AKHISARSPOR','Akhisar Belediye'),(230,'ALANYASPOR','Alanyaspor'),(231,'ANKARAGÜCÜ','Ankaragucu'),(232,'ANTALYASPOR','Antalyaspor'),(233,'BB ERZURUMSPOR','Erzurum BB'),(234,'BESIKTAS','Besiktas'),(235,'BURSASPOR','Bursaspor'),(236,'FENERBAHÇE','Fenerbahce'),(237,'GALATASARAY','Galatasaray'),(238,'GÖZTEPE','Goztepe'),(239,'ISTANBUL BASAKSEHIR','Basaksehir'),(240,'KASIMPASA','Kasimpasa'),(241,'KAYSERISPOR','Kayserispor'),(242,'KONYASPOR','Konyaspor'),(243,'RIZESPOR','Rizespor'),(244,'SIVASSPOR','Sivasspor'),(245,'TRABZONSPOR','Trabzonspor'),(246,'YENI MALATYASPOR','Yeni Malatyaspor'),(247,'AEK ATHENS','AEK ATHENES'),(248,'BAYER LEVERKUSEN','BAYER LEVERKUSEN'),(249,'DINAMO ZAGREB','DINAMO ZAGREB'),(250,'DYNAMO KYIV','DYNAMO KYEV'),(251,'FCSB','Steaua Bucarest'),(252,'MALMÖ FF','MALMÖ FF'),(253,'OLYMPIAKOS PIRAEUS','OLYMPIAKOS PIREE'),(254,'PANATHINAIKOS','PANATHINAIKOS'),(255,'PAOK','PAOK Salonique'),(256,'SCHALKE 04','SCHALKE 04'),(257,'SHAKHTAR DONETSK','SHAKHTAR DONETSK'),(258,'SLAVIA PRAHA','SLAVIA PRAGUE'),(259,'ALDOSIVI','ALDOSIVI'),(260,'ARGENTINOS JUNIORS','ARGENTINOS JUNIORS'),(261,'ATLÉTICO TUCUMÁN','ATLÉTICO TUCUMÁN'),(262,'BANFIELD','BANFIELD'),(263,'BELGRANO','BELGRANO'),(264,'BOCA JUNIORS','BOCA JUNIORS'),(265,'COLÓN','COLÓN'),(266,'DEFENSA Y JUSTICIA','DEFENSA Y JUSTICIA'),(267,'ESTUDIANTES','ESTUDIANTES'),(268,'GIMNASIA LA PLATA','GIMNASIA LA PLATA'),(269,'GODOY CRUZ','GODOY CRUZ'),(270,'HURACÁN','HURACÁN'),(271,'INDEPENDIENTE','INDEPENDIENTE'),(272,'LANÚS','LANÚS'),(273,'NEWELL\'S OLD BOYS','NEWELL\'S OLD BOYS'),(274,'PATRONATO','PATRONATO'),(275,'RACING CLUB','RACING CLUB'),(276,'RIVER PLATE','RIVER PLATE'),(277,'ROSARIO CENTRAL','ROSARIO CENTRAL'),(278,'SAN LORENZO','SAN LORENZO'),(279,'SAN MARTÍN SAN JUAN','SAN MARTÍN SAN JUAN'),(280,'SAN MARTÍN TUCUMÁN','SAN MARTÍN TUCUMÁN'),(281,'TALLERES CÓRDOBA','TALLERES CÓRDOBA'),(282,'TIGRE','TIGRE'),(283,'UNIÓN SANTA FE','UNIÓN SANTA FE'),(284,'VÉLEZ SARSFIELD','VÉLEZ SARSFIELD'),(285,'AMÉRICA MINEIRO','AMÉRICA MINEIRO'),(286,'ATLÉTICO MINEIRO','ATLÉTICO MINEIRO'),(287,'ATLÉTICO PR','ATLÉTICO PR'),(288,'BAHIA','BAHIA'),(289,'BOTAFOGO','BOTAFOGO'),(290,'CEARÁ','CEARÁ'),(291,'CHAPECOENSE','CHAPECOENSE'),(292,'CORINTHIANS','CORINTHIANS'),(293,'CRUZEIRO','CRUZEIRO'),(294,'FLAMENGO','FLAMENGO'),(295,'FLUMINENSE','FLUMINENSE'),(296,'GRÊMIO','GRÊMIO'),(297,'INTERNACIONAL','INTERNACIONAL'),(298,'PALMEIRAS','PALMEIRAS'),(299,'PARANÁ','PARANÁ'),(300,'SANTOS','SANTOS'),(301,'SÃO PAULO','SÃO PAULO'),(302,'SPORT RECIFE','SPORT RECIFE'),(303,'VASCO DA GAMA','VASCO DA GAMA'),(304,'VITÓRIA','VITÓRIA'),(305,'ANTOFAGASTA','ANTOFAGASTA'),(306,'AUDAX ITALIANO','AUDAX ITALIANO'),(307,'COLO-COLO','COLO-COLO'),(308,'CURICÓ UNIDO','CURICÓ UNIDO'),(309,'DEPORTES IQUIQUE','DEPORTES IQUIQUE'),(310,'DEPORTES TEMUCO','DEPORTES TEMUCO'),(311,'EVERTON','EVERTON'),(312,'HUACHIPATO','HUACHIPATO'),(313,'O\'HIGGINS','O\'HIGGINS'),(314,'PALESTINO','PALESTINO'),(315,'SAN LUIS','SAN LUIS'),(316,'UNIÓN ESPAÑOLA','UNIÓN ESPAÑOLA'),(317,'UNIÓN LA CALERA','UNIÓN LA CALERA'),(318,'UNIV. CONCEPCIÓN','UNIV. CONCEPCIÓN'),(319,'UNIVERSIDAD CATÓLICA','UNIVERSIDAD CATÓLICA'),(320,'UNIVERSIDAD CHILE','UNIVERSIDAD CHILE'),(321,'ALIANZA LIMA','ALIANZA LIMA'),(322,'RB BRASIL','RB BRASIL'),(323,'SPORTING CRISTAL','SPORTING CRISTAL'),(324,'MELBOURNE VICTORY','MELBOURNE VICTORY'),(325,'SYDNEY FC','SYDNEY FC'),(326,'GUANGZHOU EVERGRANDE','GUANGZHOU EVERGRANDE'),(327,'SHANGHAI SHENHUA','SHANGHAI SHENHUA'),(328,'SHANGHAI SIPG','SHANGHAI SIPG'),(329,'TIANJIN QUANJIAN ','TIANJIN QUANJIAN '),(330,'KITCHEE','KITCHEE'),(331,'ESTEGHLAL','ESTEGHLAL'),(332,'PERSEPOLIS','PERSEPOLIS'),(333,'TRACTORSAZI TABRIZ','TRACTORSAZI TABRIZ'),(334,'ZOB AHAN','ZOB AHAN'),(335,'CEREZO OSAKA','CEREZO OSAKA'),(336,'KASHIMA ANTLERS','KASHIMA ANTLERS'),(337,'KASHIWA REYSOL','KASHIWA REYSOL'),(338,'KAWASAKI FRONTALE','KAWASAKI FRONTALE'),(339,'AL DUHAIL','AL DUHAIL'),(340,'AL GHARAFA','AL GHARAFA'),(341,'AL RAYYAN','AL RAYYAN'),(342,'AL SADD','AL SADD'),(343,'JEJU UNITED','JEJU UNITED'),(344,'JEONBUK HYUNDAI MOTORS','JEONBUK HYUNDAI MOTORS'),(345,'SUWON SAMSUNG BLUEWINGS','SUWON SAMSUNG BLUEWINGS'),(346,'ULSAN HYUNDAI FC','ULSAN HYUNDAI FC'),(347,'AL AHLI','AL AHLI'),(348,'AL HILAL','AL HILAL'),(349,'BURIRAM UNITED','BURIRAM UNITED'),(350,'AL AIN','AL AIN'),(351,'AL JAZIRA','AL JAZIRA'),(352,'AL WAHDA','AL WAHDA'),(353,'AL WASL','AL WASL'),(354,'LOKOMOTIV','LOKOMOTIV'),(355,'NASAF','NASAF'),(356,'ALBANIA','ALBANIA'),(357,'ALGERIA','ALGERIA'),(358,'ARGENTINA','ARGENTINA'),(359,'AUSTRALIA','AUSTRALIA'),(360,'AUSTRIA','AUSTRIA'),(361,'BELGIUM','BELGIUM'),(362,'BOLIVIA','BOLIVIA'),(363,'BOSNIA AND HERZEGOVINA','BOSNIA AND HERZEGOVINA'),(364,'BRAZIL','BRAZIL'),(365,'BULGARIA','BULGARIA'),(366,'BURKINA FASO','BURKINA FASO'),(367,'CAMEROON','CAMEROON'),(368,'CHILE','CHILE'),(369,'CHINA','CHINA'),(370,'COLOMBIA','COLOMBIA'),(371,'COSTA RICA','COSTA RICA'),(372,'CROATIA','CROATIA'),(373,'CZECH REPUBLIC','CZECH REPUBLIC'),(374,'CÔTE D\\\'IVOIRE','CÔTE D\\\'IVOIRE'),(375,'DENMARK','DENMARK'),(376,'ECUADOR','ECUADOR'),(377,'EGYPT','EGYPT'),(378,'ENGLAND','ENGLAND'),(379,'FRANCE','FRANCE'),(380,'GERMANY','GERMANY'),(381,'GHANA','GHANA'),(382,'GREECE','GREECE'),(383,'GUINEA','GUINEA'),(384,'HONDURAS','HONDURAS'),(385,'HUNGARY','HUNGARY'),(386,'ICELAND','ICELAND'),(387,'IRAN','IRAN'),(388,'IRAQ','IRAQ'),(389,'IRELAND','IRELAND'),(390,'ISRAEL','ISRAEL'),(391,'ITALY','ITALY'),(392,'JAMAICA','JAMAICA'),(393,'JAPAN','JAPAN'),(394,'JORDAN','JORDAN'),(395,'KOREA DPR','KOREA DPR'),(396,'KUWAIT','KUWAIT'),(397,'LEBANON','LEBANON'),(398,'MALI','MALI'),(399,'MEXICO','MEXICO'),(400,'MOROCCO','MOROCCO'),(401,'NETHERLANDS','NETHERLANDS'),(402,'NEW ZEALAND','NEW ZEALAND'),(403,'NIGERIA','NIGERIA'),(404,'NORTHERN IRELAND','NORTHERN IRELAND'),(405,'NORWAY','NORWAY'),(406,'OMAN','OMAN'),(407,'PANAMA','PANAMA'),(408,'PARAGUAY','PARAGUAY'),(409,'PERU','PERU'),(410,'POLAND','POLAND'),(411,'PORTUGAL','PORTUGAL'),(412,'QATAR','QATAR'),(413,'REPUBLIC OF KOREA','REPUBLIC OF KOREA'),(414,'ROMANIA','ROMANIA'),(415,'RUSSIA','RUSSIA'),(416,'SAUDI ARABIA','SAUDI ARABIA'),(417,'SCOTLAND','SCOTLAND'),(418,'SENEGAL','SENEGAL'),(419,'SERBIA','SERBIA'),(420,'SLOVAKIA','SLOVAKIA'),(421,'SLOVENIA','SLOVENIA'),(422,'SOUTH AFRICA','SOUTH AFRICA'),(423,'SPAIN','SPAIN'),(424,'SWEDEN','SWEDEN'),(425,'SWITZERLAND','SWITZERLAND'),(426,'THAILAND','THAILAND'),(427,'TUNISIA','TUNISIA'),(428,'TURKEY','TURKEY'),(429,'UKRAINE','UKRAINE'),(430,'UNITED ARAB EMIRATES','UNITED ARAB EMIRATES'),(431,'URUGUAY','URUGUAY'),(432,'USA','USA'),(433,'UZBEKISTAN','UZBEKISTAN'),(434,'VENEZUELA','VENEZUELA'),(435,'WALES','WALES'),(436,'ZAMBIA','ZAMBIA');
/*!40000 ALTER TABLE `teams_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams_types`
--

DROP TABLE IF EXISTS `teams_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teams_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams_types`
--

LOCK TABLES `teams_types` WRITE;
/*!40000 ALTER TABLE `teams_types` DISABLE KEYS */;
INSERT INTO `teams_types` VALUES (1,'all star'),(2,'country'),(3,'club');
/*!40000 ALTER TABLE `teams_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tournaments`
--

DROP TABLE IF EXISTS `tournaments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tournaments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `competitions_id` int(11) NOT NULL,
  `teams_id` int(11) NOT NULL,
  `countries_id` int(11) NOT NULL,
  `videos_games_id` int(11) NOT NULL,
  `zones_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `competitions_id` (`competitions_id`),
  KEY `teams_id` (`teams_id`),
  KEY `countries_id` (`countries_id`),
  KEY `videos_games_id` (`videos_games_id`),
  KEY `zones_id` (`zones_id`),
  CONSTRAINT `tournaments_ibfk_11` FOREIGN KEY (`competitions_id`) REFERENCES `competitions` (`id`),
  CONSTRAINT `tournaments_ibfk_12` FOREIGN KEY (`teams_id`) REFERENCES `teams` (`id`),
  CONSTRAINT `tournaments_ibfk_13` FOREIGN KEY (`countries_id`) REFERENCES `countries` (`id`),
  CONSTRAINT `tournaments_ibfk_14` FOREIGN KEY (`videos_games_id`) REFERENCES `videos_games` (`id`),
  CONSTRAINT `tournaments_ibfk_15` FOREIGN KEY (`zones_id`) REFERENCES `zones` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tournaments`
--

LOCK TABLES `tournaments` WRITE;
/*!40000 ALTER TABLE `tournaments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tournaments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(64) DEFAULT NULL,
  `username` varchar(64) DEFAULT NULL,
  `password_hash` varchar(128) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `location` varchar(64) DEFAULT NULL,
  `about_me` text,
  `member_since` datetime DEFAULT NULL,
  `last_seen` datetime DEFAULT NULL,
  `avatar_hash` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_users_email` (`email`),
  UNIQUE KEY `ix_users_username` (`username`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'jm@jimkaprod.com','gegen','pbkdf2:sha256:50000$o6HQK6dP$47b755791b9542e8f68e73dbe71525d482d1b8c66b7cb5c60c669e8625be01a6',3,1,'','','','2018-06-20 09:12:40','2018-08-04 20:07:24','');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videos_games`
--

DROP TABLE IF EXISTS `videos_games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `videos_games` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos_games`
--

LOCK TABLES `videos_games` WRITE;
/*!40000 ALTER TABLE `videos_games` DISABLE KEYS */;
INSERT INTO `videos_games` VALUES (1,'pes 2019');
/*!40000 ALTER TABLE `videos_games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zones`
--

DROP TABLE IF EXISTS `zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `abbreviation` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `abbreviation` (`abbreviation`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zones`
--

LOCK TABLES `zones` WRITE;
/*!40000 ALTER TABLE `zones` DISABLE KEYS */;
INSERT INTO `zones` VALUES (1,'afrique','afr'),(2,'Amérique du nord & amerique centrale','ame'),(3,'amerique du sud','amn'),(4,'asie océanie','aso'),(5,'europe','eur');
/*!40000 ALTER TABLE `zones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-11 12:15:44
