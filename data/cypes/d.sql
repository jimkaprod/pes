-- MySQL dump 10.13  Distrib 8.0.12, for macos10.13 (x86_64)
--
-- Host: localhost    Database: pes_1
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `alembic_version`
--

LOCK TABLES `alembic_version` WRITE;
/*!40000 ALTER TABLE `alembic_version` DISABLE KEYS */;
INSERT INTO `alembic_version` VALUES ('107695db7500');
/*!40000 ALTER TABLE `alembic_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `competitions`
--

LOCK TABLES `competitions` WRITE;
/*!40000 ALTER TABLE `competitions` DISABLE KEYS */;
INSERT INTO `competitions` VALUES (2,1,1,1),(3,3,3,2),(4,1,1,1);
/*!40000 ALTER TABLE `competitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `competitions_categories`
--

LOCK TABLES `competitions_categories` WRITE;
/*!40000 ALTER TABLE `competitions_categories` DISABLE KEYS */;
INSERT INTO `competitions_categories` VALUES (1,'intercontinental'),(2,'continental'),(3,'national');
/*!40000 ALTER TABLE `competitions_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `competitions_names`
--

LOCK TABLES `competitions_names` WRITE;
/*!40000 ALTER TABLE `competitions_names` DISABLE KEYS */;
INSERT INTO `competitions_names` VALUES (1,'Jupiler Pro League'),(2,'Superliga'),(3,'Premier League'),(4,'Football League Championship'),(5,'Ligue 1 Conforama'),(6,'Domino\\\'s Ligue 2'),(7,'serie A'),(8,'Eredivisie'),(9,'Liga Nos'),(10,'Russian Premier Liga'),(11,'Ladbrokes Premiership'),(12,'Liga'),(13,'Raiffeisen Super League'),(14,'Spor Toto Süper Lig'),(15,'Other European Leagues'),(16,'Superliga Quilmes Clásica'),(17,'CAMPEONATO BRASILEIRO'),(18,'Campeonato Nacional Scotiabank'),(19,'Other Latin American Teams'),(20,'AFC Champions League'),(21,'Bundesliga'),(22,'asian cup'),(23,'Barrage_D1_D2_Anglais'),(24,'Coupe Afrique Nations'),(25,'Community Shield'),(26,'Copa Aguila'),(27,'Copa America'),(28,'Copa Argentina'),(29,'Copa Chile'),(30,'Copa Del Rey'),(31,'Copa Do Brasil'),(32,'Copa Espagna'),(33,'Copa Libertadores'),(34,'coupe Allemagne'),(35,'Coupe Belgique'),(36,'Coupe Danemark'),(37,'Coupe De France'),(38,'Coupe des confederations'),(39,'coupe_PaysBas'),(40,'Coupe Portugal'),(41,'coupe Suisse'),(42,'coupe Turk'),(43,'coupe ecosse'),(44,'FA Cup'),(45,'FIFA World Cup'),(46,'coupe de russie'),(47,'super coupe russe'),(48,'SuperCopa Argentina'),(49,'supercopa Espagna'),(50,'Supercoupe_Anglais'),(51,'Supercoupe_Belgique'),(52,'SupercoupeFrance'),(53,'Supercoupe_PaysBas'),(54,'Supercoupe_Portugal'),(55,'supercupAllemagne'),(56,'supercup_italie'),(57,'SupercupTurk'),(58,'SuperLiga Aguila'),(59,'coupe d\\\'italie'),(60,'europa league'),(61,'league des champions'),(62,'Euro'),(63,'Super coupe d\\\'europe');
/*!40000 ALTER TABLE `competitions_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `competitions_types`
--

LOCK TABLES `competitions_types` WRITE;
/*!40000 ALTER TABLE `competitions_types` DISABLE KEYS */;
INSERT INTO `competitions_types` VALUES (1,'cup'),(2,'championship');
/*!40000 ALTER TABLE `competitions_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'ALBANIA','ALB'),(2,'ALGERIA','ALG'),(3,'ARGENTINA','ARG'),(4,'AUSTRALIA','AUS'),(5,'AUSTRIA','AUT'),(6,'BELGIUM','BEL'),(7,'BOLIVIA','BOL'),(8,'BOSNIA AND HERZEGOVINA','BIH'),(9,'BRAZIL','BRA'),(10,'BULGARIA','BUL'),(11,'BURKINA FASO','BFA'),(12,'CAMEROON','CMR'),(13,'CHILE','CHL'),(14,'CHINA','CHN'),(15,'COLOMBIA','COL'),(16,'COSTA RICA','CRI'),(17,'CROATIA','CIV'),(18,'CZECH REPUBLIC','CRO'),(19,'CÔTE D\'IVOIRE','CZE'),(20,'DENMARK','DEN'),(21,'ECUADOR','ECU'),(22,'EGYPT','EGY'),(23,'ENGLAND','ENG'),(24,'FRANCE','FRA'),(25,'GERMANY','GER'),(26,'GHANA','GHA'),(27,'GREECE','GRE'),(28,'GUINEA','GIN'),(29,'HONDURAS','HND'),(30,'HUNGARY','HUN'),(31,'ICELAND','ISL'),(32,'IRAN','IRN'),(33,'IRAQ','IRQ'),(34,'IRELAND','IRL'),(35,'ISRAEL','ISR'),(36,'ITALY','ITA'),(37,'JAMAICA','JAM'),(38,'JAPAN','JPN'),(39,'JORDAN','JOR'),(40,'KOREA DPR','PRK'),(41,'KUWAIT','KWT'),(42,'LEBANON','LBN'),(43,'MALI','MLI'),(44,'MEXICO','MEX'),(45,'MOROCCO','MAR'),(46,'NETHERLANDS','NED'),(47,'NEW ZEALAND','NZL'),(48,'NIGERIA','NGA'),(49,'NORTHERN IRELAND','NIR'),(50,'NORWAY','NOR'),(51,'OMAN','OMN'),(52,'PANAMA','PAN'),(53,'PARAGUAY','PAR'),(54,'PERU','PER'),(55,'POLAND','POL'),(56,'PORTUGAL','POR'),(57,'QATAR','QAT'),(58,'REPUBLIC OF KOREA','KOR'),(59,'ROMANIA','ROU'),(60,'RUSSIA','RUS'),(61,'SAUDI ARABIA','SAU'),(62,'SCOTLAND','SCO'),(63,'SENEGAL','SEN'),(64,'SERBIA','SER'),(65,'SLOVAKIA','SVK'),(66,'SLOVENIA','SVN'),(67,'SOUTH AFRICA','ZAF'),(68,'SPAIN','ESP'),(69,'SWEDEN','SWE'),(70,'SWITZERLAND','SUI'),(71,'THAILAND','THA'),(72,'TUNISIA','TUN'),(73,'TURKEY','TUR'),(74,'UKRAINE','UKR'),(75,'UNITED ARAB EMIRATES','ARE'),(76,'URUGUAY','URU'),(77,'USA','USA'),(78,'UZBEKISTAN','UZB'),(79,'VENEZUELA','VEN'),(80,'WALES','WAL'),(81,'ZAMBIA','ZAM'),(82,'HONG KONG','HKG');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `geolocalisation`
--

LOCK TABLES `geolocalisation` WRITE;
/*!40000 ALTER TABLE `geolocalisation` DISABLE KEYS */;
/*!40000 ALTER TABLE `geolocalisation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'User',1,7),(2,'Moderator',0,15),(3,'Administrator',0,31);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `seasons`
--

LOCK TABLES `seasons` WRITE;
/*!40000 ALTER TABLE `seasons` DISABLE KEYS */;
INSERT INTO `seasons` VALUES (1,'2018/2019');
/*!40000 ALTER TABLE `seasons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,4,3,5),(4,12,3,7);
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `teams_levels`
--

LOCK TABLES `teams_levels` WRITE;
/*!40000 ALTER TABLE `teams_levels` DISABLE KEYS */;
INSERT INTO `teams_levels` VALUES (1,0),(2,0.5),(3,1),(4,1.5),(5,2),(6,2.5),(7,3),(8,3.5),(9,4),(10,4.5),(11,5);
/*!40000 ALTER TABLE `teams_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `teams_names`
--

LOCK TABLES `teams_names` WRITE;
/*!40000 ALTER TABLE `teams_names` DISABLE KEYS */;
INSERT INTO `teams_names` VALUES (1,'ANDERLECHT','Anderlecht'),(2,'ANTWERP','Antwerp'),(3,'CERCLE BRUGGE','Cercle Bruges'),(4,'CLUB BRUGGE','Club Bruges'),(5,'GENK','Genk'),(6,'GENT','La Gantoise'),(7,'KAS EUPEN','AS Eupen'),(8,'KORTRIJK','Courtrai'),(9,'KV OOSTENDE','Ostende'),(10,'LOKEREN','Lokeren'),(11,'ROYAL EXCEL MOUSCRON','Mouscron-PAruwelz'),(12,'SINT-TRUIDEN','Saint-Trond'),(13,'SPORTING CHARLEROI','Sporting Charleroi'),(14,'STANDARD LIÈGE','Standard de Liege'),(15,'WAASLAND-BEVEREN','Waasland-Beveren'),(16,'ZULTE-WAREGEM','Zulte-Waregem'),(17,'AAB','Aalborg'),(18,'AGF','Aarhus'),(19,'BRØNDBY','Brondby'),(20,'ESBJERG','Esbjerg'),(21,'HOBRO','Hobro'),(22,'HORSENS','Horsens'),(23,'KØBENHAVN','FC Copenhagen'),(24,'MIDTJYLLAND','Midtjylland'),(25,'NORDSJÆLLAND','Nordsjaelland'),(26,'OB','Odense'),(27,'RANDERS','Randers'),(28,'SØNDERJYSKE','Sonderjyske'),(29,'VEJLE','Vejle'),(30,'VENDSYSSEL','Vendsyssel FF'),(31,'ARSENAL','Arsenal'),(32,'East Dorsetshire','AFC Bournemouth'),(33,'East London','West Ham United'),(34,'East Midlands','Leicester City'),(35,'East Sussex','Brighton and Hove Albion'),(36,'Hampshire Red','Southhampton'),(37,'Hertfordshire','Watford'),(38,'Lancashire Claret','Burnley'),(39,'LIVERPOOL','LIVERPOOL'),(40,'London FC','Chelsea'),(41,'Man Blue','Manchester City'),(42,'Man Red','Manchester United'),(43,'Merseyside Blue','Everton'),(44,'North East London','Tottenham Hotspur'),(45,'South Norwood','Crystal Palace'),(46,'South Wales','Cardiff City'),(47,'Tyneside','Newcastle United'),(48,'West London White','Fullham'),(49,'West Yorkshire Town','Huddlesfield Town'),(50,'WM Gold','Wolverhampton Wanderers'),(51,'Berkshire Blues','Reading'),(52,'Derbyshire','Derby County'),(53,'East Anglia Town','Ipswich Town'),(54,'GL Blue White','Millwall'),(55,'Hounslow','Brentford FC'),(56,'Lancashire Blue','Blackburn Rovers'),(57,'LN Azure Blue White','Wigan Athletic'),(58,'LN White','Preston North End'),(59,'Norfolk City','Norwich City'),(60,'North West London','Queens Park Rangers'),(61,'Notts Reds','Nottingham Forest'),(62,'NW White Black','Bolton Wanderers'),(63,'South Yorkshire Blues','Sheffield Wednesday'),(64,'ST Red','Stoke City'),(65,'SW Red','Bristol City'),(66,'Teesside','Middlesbrough'),(67,'West Glamorgan City','Swansea City'),(68,'West Midlands City','Birmingham City'),(69,'West Midlands Stripes','West Bromwich Albion'),(70,'West Midlands Village','Aston Villa'),(71,'YH Red Black','Sheffield United'),(72,'Yorkshire Orange','Hull City'),(73,'Yorkshire Reds','Rotherham United'),(74,'Yorkshire Whites','Leeds United'),(75,'AMIENS SC','AMIENS SC'),(76,'ANGERS SCO','ANGERS SCO'),(77,'BORDEAUX','BORDEAUX'),(78,'CAEN','CAEN'),(79,'DIJON','DIJON'),(80,'GUINGAMP','GUINGAMP'),(81,'LILLE','LILLE'),(82,'MONACO','MONACO'),(83,'MONTPELLIER','MONTPELLIER'),(84,'NANTES','NANTES'),(85,'NICE','NICE'),(86,'NÎMES','NÎMES'),(87,'OLYMPIQUE LYONNAIS','OLYMPIQUE LYONNAIS'),(88,'OLYMPIQUE MARSEILLE','OLYMPIQUE MARSEILLE'),(89,'PSG','PSG'),(90,'RENNES','RENNES'),(91,'SAINT-ÉTIENNE','SAINT-ÉTIENNE'),(92,'STADE DE REIMS','STADE DE REIMS'),(93,'STRASBOURG','STRASBOURG'),(94,'TOULOUSE','TOULOUSE'),(95,'AJACCIO','AJACCIO'),(96,'AUXERRE','AUXERRE'),(97,'BÉZIERS','BÉZIERS'),(98,'BREST','BREST'),(99,'CHÂTEAUROUX','CHÂTEAUROUX'),(100,'CLERMONT','CLERMONT'),(101,'GAZÉLEC AJACCIO','GAZÉLEC AJACCIO'),(102,'GRENOBLE FOOT 38','GRENOBLE FOOT 38'),(103,'LE HAVRE','LE HAVRE'),(104,'LORIENT','LORIENT'),(105,'METZ','METZ'),(106,'NANCY','NANCY'),(107,'NIORT','NIORT'),(108,'ORLÉANS','ORLÉANS'),(109,'PARIS','PARIS'),(110,'RC LENS','RC LENS'),(111,'RED STAR','RED STAR'),(112,'SOCHAUX','SOCHAUX'),(113,'TROYES','TROYES'),(114,'VALENCIENNES','VALENCIENNES'),(115,'ATALANTA','ATALANTA'),(116,'BOLOGNA','BOLOGNA'),(117,'CAGLIARI','CAGLIARI'),(118,'CHIEVO','CHIEVO'),(119,'EMPOLI','EMPOLI'),(120,'FIORENTINA','FIORENTINA'),(121,'GENOA','GENOA'),(122,'INTERNAZIONALE','INTERNAZIONALE'),(123,'LAZIO','LAZIO'),(124,'MILAN','MILAN'),(125,'NAPOLI','NAPOLI'),(126,'PARMA','PARMA'),(127,'PM BLACK WHITE','Juventus'),(128,'ROMA','ROMA'),(129,'SAMPDORIA','SAMPDORIA'),(130,'SASSUOLO','SASSUOLO'),(131,'SPAL','SPAL'),(132,'FROSINONE','FROSINONE'),(133,'TORINO','TORINO'),(134,'UDINESE','UDINESE'),(135,'ADO DEN HAAG','Den Haag'),(136,'AJAX','Ajax'),(137,'AZ','Alkmaar'),(138,'DE GRAAFSCHAP','Graafschap'),(139,'EMMEN','FC Emmen'),(140,'EXCELSIOR','Excelsior'),(141,'FEYENOORD','Feyenoord'),(142,'FORTUNA SITTARD','Sittard'),(143,'GRONINGEN','Groningen'),(144,'HEERENVEEN','Heerenveen'),(145,'HERACLES','Heracles'),(146,'NAC BREDA','Breda'),(147,'PEC ZWOLLE','Zwolle'),(148,'PSV','PSV'),(149,'UTRECHT','Utrecht'),(150,'VITESSE','Vitesse'),(151,'VVV','Venlo'),(152,'WILLEM II','Willem II'),(153,'BELENENSES','Belenenses'),(154,'BENFICA','Benfica'),(155,'BOAVISTA','Boavista'),(156,'CHAVES','CHAVES'),(157,'DESPORTIVO AVES','DESPORTIVO AVES'),(158,'FEIRENSE','FEIRENSE'),(159,'MARÍTIMO','MARÍTIMO'),(160,'MOREIRENSE','MOREIRENSE'),(161,'NACIONAL','Nacional Madère'),(162,'PORTIMONENSE','PORTIMONENSE'),(163,'PORTO','FC Porto'),(164,'RIO AVE','RIO AVE'),(165,'SANTA CLARA','SANTA CLARA'),(166,'SPORTING BRAGA','SPORTING BRAGA'),(167,'SPORTING CP','sporting du portugal'),(168,'TONDELA','Tondela'),(169,'VITÓRIA GUIMARÃES','VITÓRIA GUIMARÃES'),(170,'VITÓRIA SETÚBAL','VITÓRIA SETÚBAL'),(171,'AKHMAT GROZNY','AKHMAT GROZNY'),(172,'ANZHI','ANZHI'),(173,'ARSENAL TULA','ARSENAL TULA'),(174,'CSKA MOSKVA','CSKA MOSCOU'),(175,'DINAMO MOSKVA','DYNAMO MOSCOU'),(176,'KRASNODAR','KRASNODAR'),(177,'KRYLYA SOVETOV','KRYLYA SOVETOV SAMARA'),(178,'LOKOMOTIV MOSKVA','LOCOMOTIV MOSCOU'),(179,'ORENBURG','Orenburg'),(180,'ROSTOV','FK Rostov'),(181,'RUBIN KAZAN','RUBIN KAZAN'),(182,'SPARTAK MOSKVA','SPARTAK MOSCOU'),(183,'UFA','UFA'),(184,'URAL','URAL'),(185,'YENISEY','YENISEY'),(186,'ZENIT','Zenit Petersburg'),(187,'ABERDEEN','ABERDEEN'),(188,'CELTIC','CELTIC'),(189,'DUNDEE','DUNDEE'),(190,'HAMILTON ACADEMICAL','HAMILTON ACADEMICAL'),(191,'HEARTS','HEARTS'),(192,'HIBERNIAN','HIBERNIAN'),(193,'KILMARNOCK','KILMARNOCK'),(194,'LIVINGSTON','LIVINGSTON'),(195,'MOTHERWELL','MOTHERWELL'),(196,'RANGERS','RANGERS'),(197,'ST. JOHNSTONE','ST. JOHNSTONE'),(198,'ST. MIRREN','ST. MIRREN'),(199,'AN Green White','Real Betis'),(200,'AN White Red','Sevilla'),(201,'AR Burgundy Blue','SD Huesca'),(202,'BARCELONA','BARCELONE'),(203,'CL Purple','Real Valladolid'),(204,'CT Blue White','RCD Espanyol'),(205,'CT Carmine White','Girona'),(206,'ED Blue Burgundy','Levante'),(207,'ED White Orange','Valencia'),(208,'ED Yellow','Villareal'),(209,'GA Cyan','Celta De Vigo'),(210,'KB Red White','Atletico De Madrid'),(211,'MD Blue White','Leganes'),(212,'MD Cobalt Blue','Getafe'),(213,'MD Scarlet White','Rayo Vallecano'),(214,'MD White','Real Madrid'),(215,'PV Blue Red','Eibar'),(216,'PV Blue White','Real Sociedad'),(217,'PV Sky Blue White','Deportivo Alaves'),(218,'PV White Red','Athletic Bilbao'),(219,'BASEL','Bale'),(220,'GRASSHOPPER','GRASSHOPPER'),(221,'LUGANO','LUGANO'),(222,'LUZERN','LUZERN'),(223,'NEUCHÂTEL XAMAX','NEUCHÂTEL XAMAX'),(224,'SION','SION'),(225,'ST. GALLEN','ST. GALLEN'),(226,'THUN','THUN'),(227,'YOUNG BOYS','YOUNG BOYS'),(228,'ZÜRICH','ZÜRICH'),(230,'ALANYASPOR','Alanyaspor'),(231,'ANKARAGÜCÜ','Ankaragucu'),(232,'ANTALYASPOR','Antalyaspor'),(233,'BB ERZURUMSPOR','Erzurum BB'),(235,'BURSASPOR','Bursaspor'),(236,'FENERBAHÇE','Fenerbahce'),(237,'GALATASARAY','Galatasaray'),(238,'GÖZTEPE','Goztepe'),(242,'KONYASPOR','Konyaspor'),(245,'TRABZONSPOR','Trabzonspor'),(247,'AEK ATHENS','AEK ATHENES'),(248,'BAYER LEVERKUSEN','BAYER LEVERKUSEN'),(249,'DINAMO ZAGREB','DINAMO ZAGREB'),(250,'DYNAMO KYIV','DYNAMO KYEV'),(251,'FCSB','Steaua Bucarest'),(252,'MALMÖ FF','MALMÖ FF'),(253,'OLYMPIAKOS PIRAEUS','OLYMPIAKOS PIREE'),(254,'PANATHINAIKOS','PANATHINAIKOS'),(255,'PAOK','PAOK Salonique'),(256,'SCHALKE 04','SCHALKE 04'),(257,'SHAKHTAR DONETSK','SHAKHTAR DONETSK'),(258,'SLAVIA PRAHA','SLAVIA PRAGUE'),(259,'ALDOSIVI','ALDOSIVI'),(260,'ARGENTINOS JUNIORS','ARGENTINOS JUNIORS'),(261,'ATLÉTICO TUCUMÁN','ATLÉTICO TUCUMÁN'),(262,'BANFIELD','BANFIELD'),(263,'BELGRANO','BELGRANO'),(264,'BOCA JUNIORS','BOCA JUNIORS'),(265,'COLÓN','COLÓN'),(266,'DEFENSA Y JUSTICIA','DEFENSA Y JUSTICIA'),(267,'ESTUDIANTES','ESTUDIANTES'),(268,'GIMNASIA LA PLATA','GIMNASIA LA PLATA'),(269,'GODOY CRUZ','GODOY CRUZ'),(270,'HURACÁN','HURACÁN'),(271,'INDEPENDIENTE','INDEPENDIENTE'),(272,'LANÚS','LANÚS'),(273,'NEWELL\'S OLD BOYS','NEWELL\'S OLD BOYS'),(274,'PATRONATO','PATRONATO'),(275,'RACING CLUB','RACING CLUB'),(276,'RIVER PLATE','RIVER PLATE'),(277,'ROSARIO CENTRAL','ROSARIO CENTRAL'),(278,'SAN LORENZO','SAN LORENZO'),(279,'SAN MARTÍN SAN JUAN','SAN MARTÍN SAN JUAN'),(280,'SAN MARTÍN TUCUMÁN','SAN MARTÍN TUCUMÁN'),(281,'TALLERES CÓRDOBA','TALLERES CÓRDOBA'),(282,'TIGRE','TIGRE'),(283,'UNIÓN SANTA FE','UNIÓN SANTA FE'),(284,'VÉLEZ SARSFIELD','VÉLEZ SARSFIELD'),(285,'AMÉRICA MINEIRO','AMÉRICA MINEIRO'),(286,'ATLÉTICO MINEIRO','ATLÉTICO MINEIRO'),(287,'ATLÉTICO PR','ATLÉTICO PR'),(288,'BAHIA','BAHIA'),(289,'BOTAFOGO','BOTAFOGO'),(290,'CEARÁ','CEARÁ'),(291,'CHAPECOENSE','CHAPECOENSE'),(292,'CORINTHIANS','CORINTHIANS'),(293,'CRUZEIRO','CRUZEIRO'),(294,'FLAMENGO','FLAMENGO'),(295,'FLUMINENSE','FLUMINENSE'),(296,'GRÊMIO','GRÊMIO'),(297,'INTERNACIONAL','INTERNACIONAL'),(298,'PALMEIRAS','PALMEIRAS'),(299,'PARANÁ','PARANÁ'),(300,'SANTOS','SANTOS'),(301,'SÃO PAULO','SÃO PAULO'),(302,'SPORT RECIFE','SPORT RECIFE'),(303,'VASCO DA GAMA','VASCO DA GAMA'),(304,'VITÓRIA','VITÓRIA'),(305,'ANTOFAGASTA','ANTOFAGASTA'),(306,'AUDAX ITALIANO','AUDAX ITALIANO'),(307,'COLO-COLO','COLO-COLO'),(308,'CURICÓ UNIDO','CURICÓ UNIDO'),(309,'DEPORTES IQUIQUE','DEPORTES IQUIQUE'),(310,'DEPORTES TEMUCO','DEPORTES TEMUCO'),(311,'EVERTON','EVERTON'),(312,'HUACHIPATO','HUACHIPATO'),(313,'O\'HIGGINS','O\'HIGGINS'),(314,'PALESTINO','PALESTINO'),(315,'SAN LUIS','SAN LUIS'),(316,'UNIÓN ESPAÑOLA','UNIÓN ESPAÑOLA'),(317,'UNIÓN LA CALERA','UNIÓN LA CALERA'),(318,'UNIV. CONCEPCIÓN','UNIV. CONCEPCIÓN'),(319,'UNIVERSIDAD CATÓLICA','UNIVERSIDAD CATÓLICA'),(320,'UNIVERSIDAD CHILE','UNIVERSIDAD CHILE'),(321,'ALIANZA LIMA','ALIANZA LIMA'),(322,'RB BRASIL','RB BRASIL'),(323,'SPORTING CRISTAL','SPORTING CRISTAL'),(324,'MELBOURNE VICTORY','MELBOURNE VICTORY'),(325,'SYDNEY FC','SYDNEY FC'),(326,'GUANGZHOU EVERGRANDE','GUANGZHOU EVERGRANDE'),(327,'SHANGHAI SHENHUA','SHANGHAI SHENHUA'),(328,'SHANGHAI SIPG','SHANGHAI SIPG'),(329,'TIANJIN QUANJIAN ','TIANJIN QUANJIAN '),(330,'KITCHEE','KITCHEE'),(331,'ESTEGHLAL','ESTEGHLAL'),(332,'PERSEPOLIS','PERSEPOLIS'),(333,'TRACTORSAZI TABRIZ','TRACTORSAZI TABRIZ'),(334,'ZOB AHAN','ZOB AHAN'),(335,'CEREZO OSAKA','CEREZO OSAKA'),(336,'KASHIMA ANTLERS','KASHIMA ANTLERS'),(337,'KASHIWA REYSOL','KASHIWA REYSOL'),(338,'KAWASAKI FRONTALE','KAWASAKI FRONTALE'),(339,'AL DUHAIL','AL DUHAIL'),(340,'AL GHARAFA','AL GHARAFA'),(341,'AL RAYYAN','AL RAYYAN'),(342,'AL SADD','AL SADD'),(343,'JEJU UNITED','JEJU UNITED'),(344,'JEONBUK HYUNDAI MOTORS','JEONBUK HYUNDAI MOTORS'),(345,'SUWON SAMSUNG BLUEWINGS','SUWON SAMSUNG BLUEWINGS'),(346,'ULSAN HYUNDAI FC','ULSAN HYUNDAI FC'),(347,'AL AHLI','AL AHLI'),(348,'AL HILAL','AL HILAL'),(349,'BURIRAM UNITED','BURIRAM UNITED'),(350,'AL AIN','AL AIN'),(351,'AL JAZIRA','AL JAZIRA'),(352,'AL WAHDA','AL WAHDA'),(353,'AL WASL','AL WASL'),(354,'LOKOMOTIV','LOKOMOTIV'),(355,'NASAF','NASAF');
/*!40000 ALTER TABLE `teams_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `teams_types`
--

LOCK TABLES `teams_types` WRITE;
/*!40000 ALTER TABLE `teams_types` DISABLE KEYS */;
INSERT INTO `teams_types` VALUES (1,'all star'),(2,'country'),(3,'club');
/*!40000 ALTER TABLE `teams_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tournaments`
--

LOCK TABLES `tournaments` WRITE;
/*!40000 ALTER TABLE `tournaments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tournaments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'jm@jimkaprod.com','gegen','pbkdf2:sha256:50000$o6HQK6dP$47b755791b9542e8f68e73dbe71525d482d1b8c66b7cb5c60c669e8625be01a6',3,1,'','','','2018-06-20 09:12:40','2018-08-04 20:07:24','');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `videos_games`
--

LOCK TABLES `videos_games` WRITE;
/*!40000 ALTER TABLE `videos_games` DISABLE KEYS */;
INSERT INTO `videos_games` VALUES (1,'pes 2019');
/*!40000 ALTER TABLE `videos_games` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2018-09-12 21:00:31
