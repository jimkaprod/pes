-- MySQL dump 10.13  Distrib 8.0.12, for macos10.13 (x86_64)
--
-- Host: localhost    Database: pes_dev
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
-- Dumping data for table `competitions`
--

LOCK TABLES `competitions` WRITE;
/*!40000 ALTER TABLE `competitions` DISABLE KEYS */;
INSERT INTO `competitions` VALUES (2,2,8,23,0,3,3,229,0,11,1);
/*!40000 ALTER TABLE `competitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `competitions_categories`
--

LOCK TABLES `competitions_categories` WRITE;
/*!40000 ALTER TABLE `competitions_categories` DISABLE KEYS */;
INSERT INTO `competitions_categories` VALUES (1,'international'),(2,'continental'),(3,'national');
/*!40000 ALTER TABLE `competitions_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `competitions_names`
--

LOCK TABLES `competitions_names` WRITE;
/*!40000 ALTER TABLE `competitions_names` DISABLE KEYS */;
INSERT INTO `competitions_names` VALUES (1,'League Championship'),(3,'Ligue 1 Conforama'),(4,'Domino\'s Ligue 2'),(5,'Serie A'),(6,'Serie B'),(7,'Eredivisie'),(8,'Liga Santander'),(9,'LIGA ADELANTE'),(10,'Liga Nos'),(12,'Série A'),(13,'Superliga Quilmes Clásica'),(14,'Primera División'),(15,'AFC Champions League'),(17,'coupe du monde'),(25,'Russian Premier Liga'),(26,'superliga'),(27,'Raiffeisen Super League'),(28,'Ladbrokes Premiership'),(29,'Jupiler Pro League'),(34,'Premier League');
/*!40000 ALTER TABLE `competitions_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `competitions_types`
--

LOCK TABLES `competitions_types` WRITE;
/*!40000 ALTER TABLE `competitions_types` DISABLE KEYS */;
INSERT INTO `competitions_types` VALUES (0,'championship'),(1,'cup');
/*!40000 ALTER TABLE `competitions_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `countries_names`
--

LOCK TABLES `countries_names` WRITE;
/*!40000 ALTER TABLE `countries_names` DISABLE KEYS */;
INSERT INTO `countries_names` VALUES (1,'ALGERIA','ALG'),(2,'ARGENTINA','ARG'),(3,'AUSTRALIA','AUS'),(4,'AUSTRIA','AUT'),(5,'BELGIUM','BEL'),(6,'BOLIVIA','BOL'),(7,'BOSNIA AND HERZEGOVINA','BIH'),(8,'BRAZIL','BRA'),(9,'BULGARIA','BUL'),(10,'BURKINA FASO','BFA'),(11,'CAMEROON','CMR'),(12,'CHILE','CHL'),(13,'CHINA','CHN'),(14,'COLOMBIA','COL'),(15,'COSTA RICA','CRI'),(16,'CÔTE D\'IVOIRE','CIV'),(17,'CROATIA','CRO'),(18,'CZECH REPUBLIC','CZE'),(19,'DENMARK','DEN'),(20,'ECUADOR','ECU'),(21,'EGYPT','EGY'),(22,'ENGLAND','ENG'),(23,'FRANCE','FRA'),(24,'GERMANY','GER'),(25,'GHANA','GHA'),(26,'GREECE','GRE'),(27,'GUINEA','GIN'),(28,'HONDURAS','HND'),(29,'HUNGARY','HUN'),(30,'ICELAND','ISL'),(31,'IRAN','IRN'),(32,'IRAQ','IRQ'),(33,'IRELAND','IRL'),(34,'ISRAEL','ISR'),(35,'ITALY','ITA'),(36,'JAMAICA','JAM'),(37,'JAPAN','JPN'),(38,'JORDAN','JOR'),(39,'KOREA DPR','PRK'),(40,'KUWAIT','KWT'),(41,'LEBANON','LBN'),(42,'MALI','MLI'),(43,'MEXICO','MEX'),(44,'MOROCCO','MAR'),(45,'NETHERLANDS','NED'),(46,'NEW ZEALAND','NZL'),(47,'NIGERIA','NGA'),(48,'NORTHERN IRELAND','NIR'),(49,'NORWAY','NOR'),(50,'OMAN','OMN'),(51,'PANAMA','PAN'),(52,'PARAGUAY','PAR'),(53,'PERU','PER'),(54,'POLAND','POL'),(55,'PORTUGAL','POR'),(56,'QATAR','QAT'),(57,'REPUBLIC OF KOREA','KOR'),(58,'ROMANIA','ROU'),(59,'RUSSIA','RUS'),(60,'SAUDI ARABIA','SAU'),(61,'SCOTLAND','SCO'),(62,'SENEGAL','SEN'),(63,'SERBIA','SER'),(64,'SLOVAKIA','SVK'),(65,'SLOVENIA','SVN'),(66,'SOUTH AFRICA','ZAF'),(67,'SPAIN','ESP'),(68,'SWEDEN','SWE'),(69,'SWITZERLAND','SUI'),(70,'THAILAND','THA'),(71,'TUNISIA','TUN'),(72,'TURKEY','TUR'),(73,'UKRAINE','UKR'),(74,'UNITED ARAB EMIRATES','ARE'),(75,'URUGUAY','URU'),(76,'USA','USA'),(77,'UZBEKISTAN','UZB'),(78,'VENEZUELA','VEN'),(79,'WALES','WAL'),(80,'ZAMBIA','ZAM'),(81,'HONG KONG','HKG'),(82,'INDIA','IND'),(83,'INDONESIA','IDN'),(84,'VIETNAM','VNM'),(85,'SINGAPORE','SGP'),(86,'CLASSIC','CLA'),(87,'ALBANIA','ALB');
/*!40000 ALTER TABLE `countries_names` ENABLE KEYS */;
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
-- Dumping data for table `seasons_names`
--

LOCK TABLES `seasons_names` WRITE;
/*!40000 ALTER TABLE `seasons_names` DISABLE KEYS */;
INSERT INTO `seasons_names` VALUES (1,'2017/2018'),(2,'2018/2019');
/*!40000 ALTER TABLE `seasons_names` ENABLE KEYS */;
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
INSERT INTO `teams_names` VALUES (1,'JIANGSU SUNING FC','',''),(2,'GUANGZHOU EVERGRANDE','',''),(3,'SHANGHAI SIPG FC','',''),(4,'EASTERN SC','',''),(5,'BHARSHAPUR','',''),(6,'CERSIPLA JAKARTA','',''),(7,'SAYRAMSKAL','',''),(8,'ZANGRHAN','',''),(9,'ESTEGHLAL FC','',''),(10,'ZOB AHAN FC','',''),(11,'PERSEPOLIS FC','',''),(12,'ESTEGHLAL KHUZESTAN','',''),(13,'WE UNITED','',''),(14,'ALTIPLANO BUNAN','',''),(15,'KASHIMA ANTLERS','',''),(16,'URAWA RED DIAMONDS','',''),(17,'GAMBA OSAKA','',''),(18,'KAWASAKI FRONTALE','',''),(19,'MOUQABARAM','',''),(20,'SUJUNG BADA','',''),(21,'CHEONSANG TEAYANG','',''),(22,'SUWON BLUEWINGS','',''),(23,'FC SEOUL','',''),(24,'ULSAN HYUNDAI HORANG-I','',''),(25,'JEJU UNITED FC','',''),(26,'QATOREJAN','',''),(27,'AL RAYYAN SC','',''),(28,'LEKHWIYA SC','',''),(29,'YARAYDECCAH','',''),(30,'MORATYADI','',''),(32,'AL AHLI SC (JEDDAH)','',''),(33,'AL HILAL FC (RIYADH)','',''),(34,'AL FATEH SC','',''),(35,'AL TAAWON FC','',''),(36,'FONTANA CITY','',''),(37,'KRUNGTHEP UNITED','',''),(38,'MUANG THONG UNITED','',''),(39,'ALMORFIDA','',''),(40,'KHARIMSHARJAH','',''),(41,'AL AIN SCC','',''),(42,'AL JAZIRA SCC','',''),(43,'AL AHLI FC DUBAI','',''),(44,'AL WAHDA FC (ABU DHABI)','',''),(45,'HAIPHONG ATHLETIC','',''),(46,'PLEASURE HORN','',''),(47,'CHEQUEBERO','',''),(48,'CA RIVER PLATE','',''),(49,'CA BOCA JUNIORS','',''),(50,'ARGENTINOS JUNIORS','',''),(51,'RACING CLUB','',''),(52,'ESTUDIANTES DE LA PLATA','',''),(53,'GIMNASIA LA PLATA','',''),(54,'CA INDEPENDIENTE','',''),(55,'NEWELL\'S OLD BOYS','',''),(56,'CA ROSARIO CENTRAL','',''),(57,'SAN LORENZO','',''),(58,'VÉLEZ SARSFIELD','',''),(59,'ARSENAL DE SARANDÍ','',''),(60,'CA HURACÁN','',''),(61,'COLÓN DE SANTA FE','',''),(62,'GODOY CRUZ','',''),(63,'SAN MARTÍN SAN JUAN','',''),(64,'CA TIGRE','',''),(65,'CA BANFIELD','',''),(66,'CA LANÚS','',''),(67,'S.D. QUAZTOLLA','',''),(69,'PUNTIHUERVA','',''),(70,'CUNTURIPA','',''),(71,'CA BELGRANO DE CÓRDOBA','',''),(72,'CA UNIÓN DE SANTA FE','',''),(73,'OLIMPO','',''),(74,'ATLÉTICO TUCUMÁN','',''),(75,'CSD DEFENSA Y JUSTICIA','',''),(76,'PATRONATO','',''),(77,'GIMARQUELLA','',''),(78,'CA TEMPERLEY','',''),(79,'CA CHACARITA JUNIORS','',''),(80,'GUILLERMO BROWN','',''),(81,'CA TALLERES DE CÓRDOBA','',''),(82,'ARUZUTANQUE','',''),(83,'QUERTEMOYO','',''),(84,'TRAPERZO','',''),(85,'BENBACAMPO','',''),(86,'JOBAZAVAR','',''),(87,'CR VASCO DA GAMA','',''),(88,'PALMEIRAS','',''),(89,'CRUZEIRO EC','',''),(90,'ATLÉTICO MINEIRO','',''),(91,'BOTAFOGO','',''),(92,'SC CORINTHIANS PAULISTA','',''),(93,'C.R. FLAMENGO','',''),(94,'FLUMINENSE FC','',''),(95,'GRÊMIO','',''),(96,'SC INTERNACIONAL','',''),(97,'SANTOS F.C.','',''),(98,'SÃO PAULO FC','',''),(99,'ATLÉTICO PARANAENSE','',''),(100,'CORITIBA FC','',''),(101,'SPORT RECIFE','',''),(102,'E.C. VITÓRIA','',''),(103,'AC GOIANIENSE','',''),(104,'AVAI FC','',''),(105,'EC BAHIA','',''),(106,'PONTE PRETA','',''),(107,'CATERAVAI','',''),(108,'TARGUERAL','',''),(109,'CHAPECOENSE','',''),(110,'RED BULL BRASIL','',''),(111,'COLO COLO','',''),(112,'UNIVERSIDAD CATÓLICA','',''),(113,'AUDAX ITALIANO','',''),(114,'EVERTON','',''),(115,'UNIVERSIDAD DE CHILE','',''),(116,'UNIÓN ESPAÑOLA','',''),(117,'GIBERCHAMPU','',''),(118,'ZARQUAGENA','',''),(119,'O\'HIGGINS','',''),(120,'SANTIAGO WANDERERS','',''),(121,'DEPORTES IQUIQUE','',''),(122,'HUACHIPATO','',''),(123,'ANTOFAGASTA','',''),(124,'PALESTINO','',''),(125,'UNIV. CONCEPCIÓN','',''),(126,'CURICÓ UNIDO','',''),(127,'SAN LUIS','',''),(128,'DEPORTES TEMUCO','',''),(129,'MILLONARIOS','',''),(130,'ATLÉTICO NACIONAL','',''),(131,'HARMANUCI','',''),(132,'BUCHANEVA','',''),(133,'FLOSKRULE','',''),(134,'GUIDRAENIALE','',''),(135,'FOVRAGIZUM','',''),(136,'HEZTORRIUM','',''),(137,'TYHUANZO','',''),(138,'ESPIONORTE','',''),(139,'POQUEHILLO','',''),(140,'CONTAQUIPURA','',''),(141,'GUARCHOMATO','',''),(142,'NUERRUJIYO','',''),(143,'DUZAGHALIA','',''),(144,'WAHUCHAMATE','',''),(145,'ETAMUARANIES','',''),(146,'SPORTING CRISTAL','',''),(147,'CLUB ALIANZA LIMA','',''),(148,'BIRAQUACHU','',''),(149,'QHARITUNBO','',''),(150,'QUIMRIGNA','',''),(151,'HUATYNCAN','',''),(152,'AYATOHUA','',''),(153,'HIENTOZARIO','',''),(154,'BAMGARRUA','',''),(155,'DIAZAGRECCIO','',''),(156,'XAVRENAGUEL','',''),(157,'ZAGREPAQU','',''),(158,'CARIZUPELLO','',''),(159,'UNLOCKED CLASSICS','',''),(160,'COSMOPOLIZIA','',''),(161,'HUERPOJAUZA','',''),(162,'KALAQUISONG CITY','',''),(163,'BRISBANE ROAR FC','',''),(164,'W. SYDNEY WANDERERS','',''),(165,'ADELAIDE UNITED FC','',''),(166,'GALATASARAY SK','',''),(168,'KAA GENT','',''),(169,'BORUSSIA MÖNCHENGLADBACH','',''),(170,'VFB STUTTGART','',''),(171,'TRUNECAN','',''),(172,'ALBANIA','',''),(173,'PABROWIESTEIN','',''),(174,'RSC ANDERLECHT','',''),(175,'FENERBAHÇE SK','',''),(176,'FC SHAKHTAR DONETSK','',''),(177,'GNK DINAMO ZAGREB','',''),(178,'SK SLAVIA PRAHA','',''),(179,'FC KØBENHAVN','',''),(180,'MANCHESTER UNITED','',''),(181,'ARSENAL FC','',''),(182,'CHELSEA FC','',''),(183,'LIVERPOOL FC','',''),(184,'LEEDS UNITED','',''),(185,'WEST HAM UNITED','',''),(186,'NEWCASTLE UNITED','',''),(187,'ASTON VILLA','',''),(189,'MANCHESTER CITY','',''),(190,'EVERTON','',''),(191,'FULHAM FC','',''),(192,'TOTTENHAM HOTSPUR','',''),(193,'BIRMINGHAM CITY','',''),(194,'BOLTON WANDERERS','',''),(195,'LEICESTER CITY','',''),(196,'MIDDLESBROUGH','',''),(197,'SOUTHAMPTON','',''),(198,'WOLVERHAMPTON WANDERERS','',''),(199,'BRIGHTON & HOVE ALBION','',''),(200,'BURNLEY','',''),(201,'CARDIFF CITY','',''),(202,'CRYSTAL PALACE','',''),(203,'DERBY COUNTRY','',''),(204,'IPSWICH TOWN','',''),(205,'MILLWALL FC','',''),(206,'NORWICH CITY','',''),(207,'NOTTINGHAM FOREST','',''),(208,'READING','',''),(209,'SHEFFIELD WEDNESDAY','',''),(210,'STOKE CITY','',''),(211,'SUNDERLAND','',''),(212,'WATFORD','',''),(213,'WEST BROMWICH ALBION','',''),(214,'QUEENS PARK RANGERS','',''),(215,'BARNSLEY','',''),(216,'HULL CITY','',''),(217,'BRISTOL CITY','',''),(218,'SWANSEA CITY','',''),(219,'HUDDERSFIELD TOWN','',''),(220,'AFC BOURNEMOUTH','',''),(221,'BRENTFORD','',''),(222,'PRESTON NORTH END','',''),(223,'SHEFFIELD UNITED','',''),(224,'THE OLD BOYS','',''),(225,'BURTON ALBION','',''),(226,'WORLD SELECTION','',''),(227,'AS MONACO','',''),(228,'OLYMPIQUE DE MARSEILLE','',''),(229,'PARIS SAINT-GERMAIN','',''),(230,'GIRONDINS DE BORDEAUX','',''),(231,'AJ AUXERRE','',''),(232,'OLYMPIQUE LYONNAIS','',''),(233,'RC LENS','',''),(234,'AC AJACCIO','',''),(235,'SC BASTIA','',''),(236,'EN AVANT DE GUINGAMP','',''),(237,'LOSC LILLE','',''),(238,'MONTPELLIER HÉRAULT SC','',''),(239,'FC NANTES','',''),(240,'OGC NICE','',''),(241,'STADE RENNAIS FC','',''),(242,'FC SOCHAUX MONTBÉLIARD','',''),(243,'TOULOUSE FC','',''),(244,'ANGERS SCO','',''),(245,'STADE MALHERBE CAEN','',''),(246,'CHÂTEAUROUX','',''),(247,'CLERMONT FOOT','',''),(248,'HAVRE AC','',''),(249,'FC LORIENT','',''),(250,'AS NANCY LORRAINE','',''),(251,'CHAMOIS NIORTAIS FC','',''),(252,'AS SAINT-ÉTIENNE','',''),(253,'ESTAC TROYES','',''),(254,'DIJON FCO','',''),(255,'STADE BRESTOIS 29','',''),(256,'STADE DE REIMS','',''),(257,'VALENCIENNES FC','',''),(258,'TOURS FC','',''),(259,'NÎMES OLYMPIQUE','',''),(260,'GAZELEC FC AJACCIO','',''),(261,'FC METZ','',''),(262,'AMIENS SC','',''),(263,'BOURG EN BRESSE 01','',''),(264,'US ORLEANS','',''),(265,'PARIS FC','',''),(266,'RC STRASBOURG ALSACE','',''),(267,'QUEVILLY ROUEN','',''),(268,'BORUSSIA DORTMUND','',''),(269,'PES UNITED','',''),(270,'BAYERN MUNICH','',''),(271,'EINTRACHT FRANKFURT','',''),(272,'XAKOULAGOS','',''),(273,'1. FC KÖLN','',''),(274,'TEDLOGHEC','',''),(275,'1.FSV MAINZ 05','',''),(276,'VFL WOLFSBURG','',''),(277,'OLYMPIAKOS PIRAEUS','',''),(278,'PANATHINAIKOS FC','',''),(279,'AEK ATHENS FC','',''),(280,'PAOK THESSALONIKI FC','',''),(281,'HERTHA BSC','',''),(282,'FC AUGSBURG','',''),(283,'SV WERDER BREMEN','',''),(284,'KIRKSBURGH CITY','',''),(285,'INTER','',''),(286,'JUVENTUS','',''),(287,'AC MILAN','',''),(288,'S.S. LAZIO','',''),(289,'PARMA CALCIO 1913','',''),(290,'ACF FIORENTINA','',''),(291,'AS ROMA','',''),(292,'BOLOGNA FC 1909','',''),(293,'BRESCIA CALCIO','',''),(294,'A.C. CHIEVOVERONA','',''),(295,'UDINESE CALCIO','',''),(296,'ATALANTA B.C.','',''),(297,'FC EMPOLI','',''),(298,'US PALERMO','',''),(299,'U.C. SAMPDORIA','',''),(300,'ASCOLI PICCHIO FC 1898','',''),(301,'FC BARI 1908','',''),(302,'CAGLIARI CALCIO','',''),(303,'GENOA CFC','',''),(304,'SSC NAPOLI','',''),(305,'DELFINO PESCARA 1936','',''),(306,'TERNANA CALCIO','',''),(307,'TORINO FOOTBALL CLUB','',''),(308,'HELLAS VERONA FC','',''),(309,'A.C. CESENA','',''),(310,'FC CROTONE','',''),(311,'SPEZIA CALCIO','',''),(312,'US SASSUOLO CALCIO','',''),(313,'AS CITTADELLA','',''),(314,'NOVARA CALCIO 1908','',''),(315,'FC PRO VERCELLI 1892','',''),(316,'FC CARPI 1909','',''),(317,'US AVELLINO 1912','',''),(318,'US CREMONESE','',''),(319,'VENEZIA FC','',''),(320,'VIRTUS ENTELLA','',''),(321,'BENEVENTO CALCIO','',''),(322,'FROSINONE CALCIO','',''),(323,'AC PERUGIA CALCIO','',''),(324,'US SALERNITANA 1919','',''),(325,'SPAL','',''),(326,'FOGGIA CALCIO','',''),(327,'AFC AJAX','',''),(328,'FEYENOORD ROTTERDAM','',''),(329,'PSV EINDHOVEN','',''),(330,'AZ ALKMAAR','',''),(331,'ADO DEN HAAG','',''),(332,'FC GRONINGEN','',''),(333,'SC HEERENVEEN','',''),(334,'NAC BREDA','',''),(335,'RODA JC KERKRADE','',''),(336,'FC TWENTE','',''),(337,'FC UTRECHT','',''),(338,'VITESSE','',''),(339,'WILLEM II','',''),(340,'PEC ZWOLLE','',''),(341,'SBV EXCELSIOR','',''),(342,'HERACLES ALMELO','',''),(343,'SPARTA ROTTERDAM','',''),(344,'VVV VENLO','',''),(345,'MAARSFORT','',''),(346,'FC MEUCHAWYZ','',''),(347,'SL BENFICA','',''),(348,'FC PORTO','',''),(349,'SPORTING CP','',''),(350,'VITORIA GUIMARAES SC','',''),(351,'CF BELENENSES LISSABON','',''),(352,'SPORTING BRAGA','',''),(353,'CS MARITIMO','',''),(354,'FC PACOS DE FERREIRA','',''),(355,'RIO AVE FC','',''),(356,'VITORIA SETUBAL FC','',''),(357,'HAMBURGER SV','',''),(358,'PORTIMONENSE FC','',''),(359,'DESPORTIVO AVES','',''),(360,'GD ESTORIL PRAIA','',''),(361,'CD FEIRENSE','',''),(362,'MOREIRENSE FC','',''),(363,'CD TONDELA','',''),(364,'GD CHAVES','',''),(365,'BOAVISTA PORTO FC','',''),(367,'SC FREIBURG','',''),(368,'BAYER 04 LEVERKUSEN','',''),(369,'HANNOVER 96','',''),(370,'TSG 1899 HOFFENHEIM','',''),(371,'FK SPARTAK MOSKVA','',''),(372,'PFK CSKA MOSKVA','',''),(373,'FK ZENIT ST. PETERSBURG','',''),(374,'WARYAMOSUK','',''),(375,'RASEN BALLSPORT LEIPZIG','',''),(376,'FC SCHALKE 04','',''),(377,'QUARPELATHER CITY','',''),(378,'FC BARCELONA','',''),(379,'REAL MADRID','',''),(380,'VALENCIA CLUB DE FÚTBOL','',''),(381,'RC DEPORTIVO','',''),(382,'ATLÉTICO DE MADRID','',''),(383,'REAL BETIS','',''),(384,'CELTA DE VIGO','',''),(385,'REAL SOCIEDAD','',''),(386,'ATHLETIC CLUB','',''),(387,'RCD ESPANYOL','',''),(388,'FC MALAGA','',''),(389,'CA OSASUNA','',''),(390,'FC SEVILLA','',''),(391,'REAL VALLADOLID','',''),(392,'FC VILLARREAL','',''),(393,'REAL ZARAGOZA','',''),(394,'UD ALMERIA','',''),(395,'FC CORDOBA','',''),(396,'FC GETAFE','',''),(397,'SPORTING GIJON','',''),(398,'UD LAS PALMAS','',''),(399,'UD LEVANTE','',''),(400,'CD NUMANCIA','',''),(401,'RAYO VALLECANO','',''),(402,'FC GRANADA','',''),(403,'FC GIRONA','',''),(404,'SD HUESCA','',''),(405,'AD ALCORCON','',''),(406,'CD LUGO','',''),(407,'FC BARCELONA B','',''),(408,'DEPORTIVO ALAVES','',''),(409,'SD EIBAR','',''),(410,'CD TENERIFFE','',''),(411,'CULTURAL LEONESA','',''),(412,'REAL OVIEDO','',''),(413,'CD LEGANES','',''),(414,'GIMNASTIC DE TARRAGONA','',''),(415,'REUS DEPORTIU','',''),(416,'ALBACETE BALOMPIE','',''),(417,'FC CADIZ','',''),(418,'LORCA FC','',''),(419,'FC SEVILLA B','',''),(420,'MALMÖ FF','',''),(421,'FC BASEL 1893','',''),(422,'BSC YOUNG BOYS','',''),(423,'FC DYNAMO KYIV','',''),(424,'CLUB BRUGGE','',''),(425,'QAXOQAVOIY','',''),(426,'FK BUNYODKOR','',''),(427,'FK LOKOMOTIV TASHKENT','',''),(428,'ALGERIA','',''),(429,'ARGENTINA','',''),(430,'AUSTRALIA','',''),(431,'AUSTRIA','',''),(432,'BELGIUM','',''),(433,'BOLIVIA','',''),(434,'BOSNIA AND HERZEGOVINA','',''),(435,'BRAZIL','',''),(436,'BULGARIA','',''),(437,'BURKINA FASO','',''),(438,'CAMEROON','',''),(439,'CHILE','',''),(440,'CHINA','',''),(441,'COLOMBIA','',''),(442,'COSTA RICA','',''),(443,'CÔTE D\'IVOIRE','',''),(444,'CROATIA','',''),(445,'CZECH REPUBLIC','',''),(446,'DENMARK','',''),(447,'ECUADOR','',''),(448,'EGYPT','',''),(449,'ENGLAND','',''),(450,'FRANCE','',''),(451,'GERMANY','',''),(452,'GHANA','',''),(453,'GREECE','',''),(454,'GUINEA','',''),(455,'HONDURAS','',''),(456,'HUNGARY','',''),(457,'ICELAND','',''),(458,'IRAN','',''),(459,'IRAQ','',''),(460,'IRELAND','',''),(461,'ISRAEL','',''),(462,'ITALY','',''),(463,'JAMAICA','',''),(464,'JAPAN','',''),(465,'JORDAN','',''),(466,'KOREA DPR','',''),(467,'KUWAIT','',''),(468,'LEBANON','',''),(469,'MALI','',''),(470,'MEXICO','',''),(471,'MOROCCO','',''),(472,'NETHERLANDS','',''),(473,'NEW ZEALAND','',''),(474,'NIGERIA','',''),(475,'NORTHERN IRELAND','',''),(476,'NORWAY','',''),(477,'OMAN','',''),(478,'PANAMA','',''),(479,'PARAGUAY','',''),(480,'PERU','',''),(481,'POLAND','',''),(482,'PORTUGAL','',''),(483,'QATAR','',''),(484,'REPUBLIC OF KOREA','',''),(485,'ROMANIA','',''),(486,'RUSSIA','',''),(487,'SAUDI ARABIA','',''),(488,'SCOTLAND','',''),(489,'SENEGAL','',''),(490,'SERBIA','',''),(491,'SLOVAKIA','',''),(492,'SLOVENIA','',''),(493,'SOUTH AFRICA','',''),(494,'SPAIN','',''),(495,'SWEDEN','',''),(496,'SWITZERLAND','',''),(497,'THAILAND','',''),(498,'TUNISIA','',''),(499,'TURKEY','',''),(500,'UKRAINE','',''),(501,'UNITED ARAB EMIRATES','',''),(502,'URUGUAY','',''),(503,'USA','',''),(504,'UZBEKISTAN','',''),(505,'VENEZUELA','',''),(506,'WALES','',''),(507,'ZAMBIA','',''),(508,'HONG KONG','',''),(509,'INDIA','',''),(510,'INDONESIA','',''),(511,'VIETNAM','',''),(512,'SINGAPORE','',''),(513,'WORLD CLASSICS','',''),(514,'EUROPEAN CLASSICS','',''),(515,'Arsenal Tula','',''),(516,'Dynamo Moscou','',''),(517,'FC Akhmat Grozny','',''),(518,'FC Anzhi Makhachkala','',''),(519,'FC Enisey Krasnoyarsk','',''),(520,'FC Gazovik Orenburg','',''),(521,'FC Krasnodar','',''),(522,'FC Krylya Sovetov Samara','',''),(523,'FC Lokomotiv Moscou','',''),(524,'FC Oufa','',''),(525,'FC Rostov','',''),(526,'FC Rubin Kazan','',''),(527,'FC Ural Yekaterinburg','',''),(528,'FC Lugano','',''),(529,'FC Saint-Gall','',''),(530,'FC Sion','',''),(531,'FC Thoune','',''),(532,'FC Zürich','',''),(533,'Grasshopper Zürich','',''),(534,'Lucerne','',''),(535,'Neuchâtel Xamax','',''),(536,'Aalborg BK','',''),(537,'Aarhus GF','',''),(538,'AC Horsens','',''),(539,'Brondby IF','',''),(540,'Esbjerg FB','',''),(541,'FC Midtjylland','',''),(542,'FC Nordsjælland','',''),(543,'Hobro IK','',''),(544,'Odense Boldklub','',''),(545,'Randers Freja FC','',''),(546,'SonderjyskE','',''),(547,'Vejle Boldklub','',''),(548,'Vendsyssel FF','',''),(549,'Aberdeen','',''),(550,'Celtic Glasgow','',''),(551,'Dundee FC','',''),(552,'Glasgow Rangers','',''),(553,'Hamilton Academical','',''),(554,'Heart of Midlothian','',''),(555,'Hibernian Edimbourg','',''),(556,'Kilmarnock','',''),(557,'Livingston','',''),(558,'Motherwell','',''),(559,'Saint Johnstone FC','',''),(560,'Saint Mirren FC','',''),(561,'Cercle Bruges','',''),(562,'Club Bruges','',''),(563,'K.V. Courtrai','',''),(564,'KAA La Gantoise','',''),(565,'KAS Eupen','',''),(566,'KRC Genk','',''),(567,'KV Ostende','',''),(568,'Lokeren','',''),(569,'Red Star Waasland-Beveren','',''),(570,'Royal Anvers FC','',''),(571,'Royal Excel Mouscron','',''),(572,'Saint-Trond','',''),(573,'Sporting Charleroi','',''),(574,'Standard Liège','',''),(575,'Zulte-Waregem','',''),(577,'Nacional Madeira','',''),(578,'Santa Clara','',''),(579,'Aldosivi','',''),(580,'San Martín Tucumán','',''),(581,'Blackburn Rovers','',''),(582,'Rotherham United','',''),(583,'Wigan Athletic','',''),(584,'Grenoble','',''),(585,'AS Béziers Foot','',''),(586,'Red Star FC','',''),(587,'Cosenza','',''),(588,'Lecce','',''),(589,'Livorno','',''),(590,'Padova','',''),(591,'De Graafschap','',''),(592,'FC Emmen','',''),(593,'Fortuna Sittard','',''),(594,'HUANGYING QINGSHUN','','');
/*!40000 ALTER TABLE `teams_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `teams_types`
--

LOCK TABLES `teams_types` WRITE;
/*!40000 ALTER TABLE `teams_types` DISABLE KEYS */;
INSERT INTO `teams_types` VALUES (1,'all star'),(0,'club'),(2,'country');
/*!40000 ALTER TABLE `teams_types` ENABLE KEYS */;
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
-- Dumping data for table `videos_games_names`
--

LOCK TABLES `videos_games_names` WRITE;
/*!40000 ALTER TABLE `videos_games_names` DISABLE KEYS */;
INSERT INTO `videos_games_names` VALUES (1,'pes 2018'),(2,'pes 2019'),(3,'fifa 2018'),(4,'fifa 2019');
/*!40000 ALTER TABLE `videos_games_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `zones_names`
--

LOCK TABLES `zones_names` WRITE;
/*!40000 ALTER TABLE `zones_names` DISABLE KEYS */;
INSERT INTO `zones_names` VALUES (1,'afrique','afr'),(2,'amerique','ame'),(3,'amerique nord','amn'),(4,'amerique centrale','amc'),(5,'amerique sud','ams'),(6,'asie océanie','aso'),(7,'Équipes classiques','eqc'),(8,'europe','eur');
/*!40000 ALTER TABLE `zones_names` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-05 18:57:58
