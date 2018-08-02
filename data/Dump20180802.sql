-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: pes_dev
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
-- Dumping data for table `alembic_version`
--

LOCK TABLES `alembic_version` WRITE;
/*!40000 ALTER TABLE `alembic_version` DISABLE KEYS */;
INSERT INTO `alembic_version` VALUES ('e54ffe4b1c94');
/*!40000 ALTER TABLE `alembic_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `competitions`
--

LOCK TABLES `competitions` WRITE;
/*!40000 ALTER TABLE `competitions` DISABLE KEYS */;
INSERT INTO `competitions` VALUES (0,'championnat anglais 1','Premier League',0,0,0,22,0),(1,'championnat anglais 2','League Championship',0,0,1,22,0),(3,'championnat français 1','Ligue 1 Conforama',0,0,0,23,0),(4,'championnat français 2','Domino\'s Ligue 2',0,0,1,23,0),(5,'championnat italien 1','Serie A',0,0,0,35,0),(6,'championnat italien 2','Serie B',0,0,1,35,0),(7,'championnat pays bas','Eredivisie',0,0,0,45,0),(8,'championnat espagnol 1','Liga Santander',0,0,0,67,0),(9,'championnat espagnol 2','LIGA ADELANTE',0,0,1,67,0),(10,'championnat portugais','Liga Nos',0,0,0,55,0),(12,'championnat brésilien','Série A',0,0,0,8,5),(13,'championnat argentin','Superliga Quilmes Clásica',0,0,0,2,5),(14,'championnat chilien','Primera División',0,0,0,12,5),(15,'Ligue des champions d\'Asie ','AFC Champions League',0,1,-1,-1,5),(17,'coupe du monde','coupe du monde',2,1,-1,-1,-1),(25,'championnat russe','Russian Premier Liga',0,0,0,59,0),(26,'championnat danois','superliga',0,0,0,19,0),(27,'championnat suisse','Raiffeisen Super League',0,0,0,69,0),(28,'championnat écossais','Ladbrokes Premiership',0,0,0,61,0),(29,'championnat belge','Jupiler Pro League',0,0,0,5,0);
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
-- Dumping data for table `competitions_seasons`
--

LOCK TABLES `competitions_seasons` WRITE;
/*!40000 ALTER TABLE `competitions_seasons` DISABLE KEYS */;
INSERT INTO `competitions_seasons` VALUES (0,0,189),(0,0,180),(0,0,192),(0,0,183),(0,0,182),(0,0,181),(0,0,200),(0,0,190),(0,0,195),(0,0,186),(0,0,202),(0,0,220),(0,0,185),(0,0,212),(0,0,199),(0,0,219),(0,0,197),(0,0,218),(0,0,210),(0,0,213),(0,1,198),(0,1,201),(0,1,191),(0,1,187),(0,1,196),(0,1,203),(0,1,222),(0,1,205),(0,1,221),(0,1,223),(0,1,217),(0,1,204),(0,1,184),(0,1,206),(0,1,209),(0,1,214),(0,1,207),(0,1,216),(0,1,193),(0,1,208),(0,1,194),(0,1,215),(0,1,225),(0,1,211),(1,0,220),(1,0,199),(1,0,200),(1,0,201),(1,0,182),(1,0,202),(1,0,190),(1,0,181),(1,0,183),(1,0,191),(1,0,219),(1,0,195),(1,0,189),(1,0,180),(1,0,186),(1,0,197),(1,0,192),(1,0,212),(1,0,185),(1,0,198),(1,1,187),(1,1,193),(1,1,581),(1,1,194),(1,1,221),(1,1,217),(1,1,203),(1,1,216),(1,1,204),(1,1,184),(1,1,196),(1,1,205),(1,1,206),(1,1,207),(1,1,222),(1,1,214),(1,1,208),(1,1,582),(1,1,223),(1,1,209),(1,1,210),(1,1,218),(1,1,213),(1,1,583),(0,3,262),(0,3,227),(0,3,252),(0,3,254),(0,3,236),(0,3,253),(0,3,261),(0,3,239),(0,3,230),(0,3,237),(0,3,238),(0,3,240),(0,3,228),(0,3,232),(0,3,229),(0,3,266),(0,3,244),(0,3,245),(0,3,241),(0,3,243),(0,4,234),(0,4,260),(0,4,231),(0,4,263),(0,4,255),(0,4,246),(0,4,247),(0,4,584),(0,4,248),(0,4,233),(0,4,249),(0,4,250),(0,4,259),(0,4,251),(0,4,264),(0,4,265),(0,4,256),(0,4,242),(0,4,243),(0,4,258),(0,4,267),(0,4,257),(1,3,262),(1,3,227),(1,3,252),(1,3,254),(1,3,236),(1,3,239),(1,3,230),(1,3,237),(1,3,238),(1,3,259),(1,3,240),(1,3,228),(1,3,232),(1,3,229),(1,3,266),(1,3,256),(1,3,244),(1,3,245),(1,3,241),(1,3,243),(1,4,234),(1,4,260),(1,4,585),(1,4,231),(1,4,255),(1,4,246),(1,4,247),(1,4,253),(1,4,261),(1,4,584),(1,4,248),(1,4,233),(1,4,249),(1,4,250),(1,4,251),(1,4,264),(1,4,265),(1,4,586),(1,4,242),(1,4,257),(1,25,515),(1,25,372),(1,25,516),(1,25,517),(1,25,518),(1,25,519),(1,25,520),(1,25,521),(1,25,522),(1,25,523),(1,25,524),(1,25,525),(1,25,526),(1,25,527),(1,25,371),(1,25,373),(1,26,536),(1,26,537),(1,26,538),(1,26,539),(1,26,540),(1,26,179),(1,26,541),(1,26,542),(1,26,543),(1,26,544),(1,26,545),(1,26,546),(1,26,547),(1,26,548),(1,27,421),(1,27,528),(1,27,529),(1,27,530),(1,27,531),(1,27,532),(1,27,533),(1,27,534),(1,27,535),(1,27,422),(1,28,549),(1,28,550),(1,28,551),(1,28,552),(1,28,553),(1,28,554),(1,28,555),(1,28,556),(1,28,557),(1,28,558),(1,28,559),(1,28,560),(1,29,561),(1,29,562),(1,29,563),(1,29,564),(1,29,565),(1,29,566),(1,29,567),(1,29,568),(1,29,569),(1,29,570),(1,29,571),(1,29,174),(1,29,572),(1,29,573),(1,29,574),(1,29,575),(1,10,351),(1,10,347),(1,10,365),(1,10,361),(1,10,363),(1,10,359),(1,10,348),(1,10,364),(1,10,353),(1,10,362),(1,10,577),(1,10,358),(1,10,355),(1,10,578),(1,10,352),(1,10,349),(1,10,350),(1,10,356),(1,13,579),(1,13,50),(1,13,74),(1,13,65),(1,13,71),(1,13,49),(1,13,61),(1,13,75),(1,13,52),(1,13,53),(1,13,62),(1,13,60),(1,13,54),(1,13,66),(1,13,55),(1,13,76),(1,13,51),(1,13,48),(1,13,56),(1,13,57),(1,13,63),(1,13,580),(1,13,81),(1,13,64),(1,13,72),(1,13,58),(1,5,296),(1,5,292),(1,5,302),(1,5,294),(1,5,297),(1,5,290),(1,5,322),(1,5,299),(1,5,303),(1,5,286),(1,5,287),(1,5,285),(1,5,288),(1,5,304),(1,5,289),(1,5,291),(1,5,312),(1,5,325),(1,5,307),(1,5,295),(1,6,300),(1,6,321),(1,6,293),(1,6,316),(1,6,313),(1,6,587),(1,6,318),(1,6,310),(1,6,326),(1,6,588),(1,6,589),(1,6,590),(1,6,298),(1,6,323),(1,6,305),(1,6,324),(1,6,311),(1,6,319),(1,6,308),(1,7,331),(1,7,327),(1,7,330),(1,7,591),(1,7,341),(1,7,592),(1,7,332),(1,7,337),(1,7,328),(1,7,593),(1,7,342),(1,7,334),(1,7,340),(1,7,329),(1,7,333),(1,7,338),(1,8,408),(1,8,386),(1,8,382),(1,8,378),(1,8,383),(1,8,384),(1,8,409),(1,8,387),(1,8,404),(1,8,403),(1,8,396),(1,8,413),(1,8,399),(1,8,401),(1,8,379),(1,8,385),(1,8,390),(1,8,391),(1,8,380),(1,8,392),(1,9,416),(1,9,405),(1,9,394),(1,9,417),(1,9,395),(1,9,402),(1,9,381),(1,9,414),(1,9,398),(1,9,406),(1,9,400),(1,9,388),(1,9,389),(1,9,412),(1,9,415),(1,9,397),(1,9,410),(1,9,393),(1,12,594),(1,12,90),(1,12,99),(1,12,91),(1,12,595),(1,12,109),(1,12,92),(1,12,89),(1,12,105),(1,12,93),(1,12,94),(1,12,95),(1,12,96),(1,12,88),(1,12,596),(1,12,97),(1,12,98),(1,12,101),(1,12,87),(1,12,102),(1,14,113),(1,14,122),(1,14,124),(1,14,115),(1,14,119),(1,14,112),(1,14,111),(1,14,126),(1,14,123),(1,14,121),(1,14,128),(1,14,114),(1,14,127),(1,14,116),(1,14,597),(1,14,125),(1,17,24),(1,17,22),(1,17,5),(1,17,17),(1,17,19),(1,17,67),(1,17,23),(1,17,30),(1,17,54),(1,17,55),(1,17,59),(1,17,63),(1,17,68),(1,17,69),(1,17,21),(1,17,44),(1,17,47),(1,17,62),(1,17,71),(1,17,2),(1,17,8),(1,17,14),(1,17,75),(1,17,53),(1,17,60),(1,17,3),(1,17,57),(1,17,31),(1,17,37),(1,17,15),(1,17,43),(1,17,51);
/*!40000 ALTER TABLE `competitions_seasons` ENABLE KEYS */;
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
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (0,'ALBANIA','ALB',0),(1,'ALGERIA','ALG',0),(2,'ARGENTINA','ARG',5),(3,'AUSTRALIA','AUS',6),(4,'AUSTRIA','AUT',0),(5,'BELGIUM','BEL',0),(6,'BOLIVIA','BOL',5),(7,'BOSNIA AND HERZEGOVINA','BIH',0),(8,'BRAZIL','BRA',5),(9,'BULGARIA','BUL',0),(10,'BURKINA FASO','BFA',1),(11,'CAMEROON','CMR',1),(12,'CHILE','CHL',5),(13,'CHINA','CHN',6),(14,'COLOMBIA','COL',5),(15,'COSTA RICA','CRI',4),(16,'CÔTE D\'IVOIRE','CIV',1),(17,'CROATIA','CRO',0),(18,'CZECH REPUBLIC','CZE',0),(19,'DENMARK','DEN',0),(20,'ECUADOR','ECU',5),(21,'EGYPT','EGY',1),(22,'ENGLAND','ENG',0),(23,'FRANCE','FRA',0),(24,'GERMANY','GER',0),(25,'GHANA','GHA',1),(26,'GREECE','GRE',0),(27,'GUINEA','GIN',1),(28,'HONDURAS','HND',4),(29,'HUNGARY','HUN',0),(30,'ICELAND','ISL',0),(31,'IRAN','IRN',6),(32,'IRAQ','IRQ',6),(33,'IRELAND','IRL',0),(34,'ISRAEL','ISR',0),(35,'ITALY','ITA',0),(36,'JAMAICA','JAM',4),(37,'JAPAN','JPN',6),(38,'JORDAN','JOR',6),(39,'KOREA DPR','PRK',6),(40,'KUWAIT','KWT',6),(41,'LEBANON','LBN',6),(42,'MALI','MLI',1),(43,'MEXICO','MEX',3),(44,'MOROCCO','MAR',1),(45,'NETHERLANDS','NED',0),(46,'NEW ZEALAND','NZL',6),(47,'NIGERIA','NGA',1),(48,'NORTHERN IRELAND','NIR',0),(49,'NORWAY','NOR',0),(50,'OMAN','OMN',6),(51,'PANAMA','PAN',4),(52,'PARAGUAY','PAR',5),(53,'PERU','PER',5),(54,'POLAND','POL',0),(55,'PORTUGAL','POR',0),(56,'QATAR','QAT',6),(57,'REPUBLIC OF KOREA','KOR',6),(58,'ROMANIA','ROU',0),(59,'RUSSIA','RUS',0),(60,'SAUDI ARABIA','SAU',6),(61,'SCOTLAND','SCO',0),(62,'SENEGAL','SEN',1),(63,'SERBIA','SER',0),(64,'SLOVAKIA','SVK',0),(65,'SLOVENIA','SVN',0),(66,'SOUTH AFRICA','ZAF',1),(67,'SPAIN','ESP',0),(68,'SWEDEN','SWE',0),(69,'SWITZERLAND','SUI',0),(70,'THAILAND','THA',6),(71,'TUNISIA','TUN',1),(72,'TURKEY','TUR',0),(73,'UKRAINE','UKR',0),(74,'UNITED ARAB EMIRATES','ARE',6),(75,'URUGUAY','URU',5),(76,'USA','USA',3),(77,'UZBEKISTAN','UZB',6),(78,'VENEZUELA','VEN',5),(79,'WALES','WAL',0),(80,'ZAMBIA','ZAM',1),(81,'HONG KONG','HKG',6),(82,'INDIA','IND',6),(83,'INDONESIA','IDN',6),(84,'VIETNAM','VNM',6),(85,'SINGAPORE','SGP',6),(86,'CLASSIC','CLA',7);
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `game_teams`
--

LOCK TABLES `game_teams` WRITE;
/*!40000 ALTER TABLE `game_teams` DISABLE KEYS */;
INSERT INTO `game_teams` VALUES (0,'HUANGYING QINGSHUN',NULL,'HGQ',0,13,6),(1,'JIANGSU SUNING FC',NULL,'JIS',0,13,6),(2,'GUANGZHOU EVERGRANDE',NULL,'GUE',0,13,6),(3,'SHANGHAI SIPG FC',NULL,'SHA',0,13,6),(4,'EASTERN SC',NULL,'EAS',0,81,6),(5,'BHARSHAPUR',NULL,'BSP',0,82,6),(6,'CERSIPLA JAKARTA',NULL,'CPJ',0,83,6),(7,'SAYRAMSKAL',NULL,'SYS',0,31,6),(8,'ZANGRHAN',NULL,'ZRH',0,31,6),(9,'ESTEGHLAL FC',NULL,'ESE',0,31,6),(10,'ZOB AHAN FC',NULL,'ZOA',0,31,6),(11,'PERSEPOLIS FC',NULL,'PEE',0,31,6),(12,'ESTEGHLAL KHUZESTAN',NULL,'ESK',0,31,6),(13,'WE UNITED',NULL,'WEU',0,37,6),(14,'ALTIPLANO BUNAN',NULL,'BNN',0,37,6),(15,'KASHIMA ANTLERS',NULL,'KAA',0,37,6),(16,'URAWA RED DIAMONDS',NULL,'URD',0,37,6),(17,'GAMBA OSAKA',NULL,'GAO',0,37,6),(18,'KAWASAKI FRONTALE',NULL,'KAF',0,37,6),(19,'MOUQABARAM',NULL,'MQB',0,38,6),(20,'SUJUNG BADA',NULL,'SJB',0,57,6),(21,'CHEONSANG TEAYANG',NULL,'CTY',0,57,6),(22,'SUWON BLUEWINGS',NULL,'SUB',0,57,6),(23,'FC SEOUL',NULL,'SEO',0,57,6),(24,'ULSAN HYUNDAI HORANG-I',NULL,'UHH',0,57,6),(25,'JEJU UNITED FC',NULL,'JEU',0,57,6),(26,'QATOREJAN',NULL,'QTJ',0,56,6),(27,'AL RAYYAN SC',NULL,'RAY',0,56,6),(28,'LEKHWIYA SC',NULL,'LEK',0,56,6),(29,'YARAYDECCAH',NULL,'YDC',0,60,6),(30,'MORATYADI',NULL,'MYD',0,60,6),(32,'AL AHLI SC (JEDDAH)',NULL,'AHJ',0,60,6),(33,'AL HILAL FC (RIYADH)',NULL,'HIR',0,60,6),(34,'AL FATEH SC',NULL,'FAT',0,60,6),(35,'AL TAAWON FC',NULL,'TAA',0,60,6),(36,'FONTANA CITY',NULL,'FTC',0,85,6),(37,'KRUNGTHEP UNITED',NULL,'KTU',0,70,6),(38,'MUANG THONG UNITED',NULL,'MTU',0,70,6),(39,'ALMORFIDA',NULL,'MFD',0,74,6),(40,'KHARIMSHARJAH',NULL,'KHR',0,74,6),(41,'AL AIN SCC',NULL,'AIN',0,74,6),(42,'AL JAZIRA SCC',NULL,'JAZ',0,74,6),(43,'AL AHLI FC DUBAI',NULL,'AHD',0,74,6),(44,'AL WAHDA FC (ABU DHABI)',NULL,'WAD',0,74,6),(45,'HAIPHONG ATHLETIC',NULL,'HPA',0,84,6),(46,'PLEASURE HORN',NULL,'PSH',0,66,1),(47,'CHEQUEBERO',NULL,'CQB',0,43,3),(48,'CA RIVER PLATE',NULL,'RIV',0,2,5),(49,'CA BOCA JUNIORS',NULL,'BOC',0,2,5),(50,'ARGENTINOS JUNIORS',NULL,'AAJ',0,2,5),(51,'RACING CLUB',NULL,'RAC',0,2,5),(52,'ESTUDIANTES DE LA PLATA',NULL,'EST',0,2,5),(53,'GIMNASIA LA PLATA',NULL,'GIM',0,2,5),(54,'CA INDEPENDIENTE',NULL,'IND',0,2,5),(55,'NEWELL\'S OLD BOYS',NULL,'NOB',0,2,5),(56,'CA ROSARIO CENTRAL',NULL,'CEN',0,2,5),(57,'SAN LORENZO',NULL,'SLO',0,2,5),(58,'VÉLEZ SARSFIELD',NULL,'VEL',0,2,5),(59,'ARSENAL DE SARANDÍ',NULL,'ARS',0,2,5),(60,'CA HURACÁN',NULL,'HUR',0,2,5),(61,'COLÓN DE SANTA FE',NULL,'COL',0,2,5),(62,'GODOY CRUZ',NULL,'GOD',0,2,5),(63,'SAN MARTÍN SAN JUAN',NULL,'SMA',0,2,5),(64,'CA TIGRE',NULL,'TIG',0,2,5),(65,'CA BANFIELD',NULL,'BAN',0,2,5),(66,'CA LANÚS',NULL,'LAN',0,2,5),(67,'S.D. QUAZTOLLA',NULL,'QZL',0,2,5),(69,'PUNTIHUERVA',NULL,'PHV',0,2,5),(70,'CUNTURIPA',NULL,'CTP',0,2,5),(71,'CA BELGRANO DE CÓRDOBA',NULL,'BEL',0,2,5),(72,'CA UNIÓN DE SANTA FE',NULL,'UNI',0,2,5),(73,'OLIMPO',NULL,'OLI',0,2,5),(74,'ATLÉTICO TUCUMÁN',NULL,'ATU',0,2,5),(75,'CSD DEFENSA Y JUSTICIA',NULL,'DYJ',0,2,5),(76,'PATRONATO',NULL,'PAT',0,2,5),(77,'GIMARQUELLA',NULL,'GQL',0,2,5),(78,'CA TEMPERLEY',NULL,'TEM',0,2,5),(79,'CA CHACARITA JUNIORS',NULL,'CHJ',0,2,5),(80,'GUILLERMO BROWN',NULL,'GLB',0,2,5),(81,'CA TALLERES DE CÓRDOBA',NULL,'TAL',0,2,5),(82,'ARUZUTANQUE',NULL,'ARZ',0,6,5),(83,'QUERTEMOYO',NULL,'QRT',0,6,5),(84,'TRAPERZO',NULL,'TRP',0,6,5),(85,'BENBACAMPO',NULL,'BNB',0,6,5),(86,'JOBAZAVAR',NULL,'JZV',0,6,5),(87,'CR VASCO DA GAMA',NULL,'VAG',0,8,5),(88,'PALMEIRAS',NULL,'PAL',0,8,5),(89,'CRUZEIRO EC',NULL,'CRU',0,8,5),(90,'ATLÉTICO MINEIRO',NULL,'CAM',0,8,5),(91,'BOTAFOGO',NULL,'BOT',0,8,5),(92,'SC CORINTHIANS PAULISTA',NULL,'COR',0,8,5),(93,'C.R. FLAMENGO',NULL,'FLA',0,8,5),(94,'FLUMINENSE FC',NULL,'FLU',0,8,5),(95,'GRÊMIO',NULL,'GRE',0,8,5),(96,'SC INTERNACIONAL',NULL,'INT',0,8,5),(97,'SANTOS F.C.',NULL,'SAN',0,8,5),(98,'SÃO PAULO FC',NULL,'SAO',0,8,5),(99,'ATLÉTICO PARANAENSE',NULL,'CAP',0,8,5),(100,'CORITIBA FC',NULL,'CFC',0,8,5),(101,'SPORT RECIFE',NULL,'SPO',0,8,5),(102,'E.C. VITÓRIA',NULL,'VIT',0,8,5),(103,'AC GOIANIENSE',NULL,'AGI',0,8,5),(104,'AVAI FC',NULL,'AVI',0,8,5),(105,'EC BAHIA',NULL,'BAH',0,8,5),(106,'PONTE PRETA',NULL,'PON',0,8,5),(107,'CATERAVAI',NULL,'CRV',0,8,5),(108,'TARGUERAL',NULL,'TRL',0,8,5),(109,'CHAPECOENSE',NULL,'CHA',0,8,5),(110,'RED BULL BRASIL',NULL,'RBB',0,8,5),(111,'COLO COLO',NULL,'CC',0,12,5),(112,'UNIVERSIDAD CATÓLICA',NULL,'UC',0,12,5),(113,'AUDAX ITALIANO',NULL,'AI',0,12,5),(114,'EVERTON',NULL,'EVT',0,12,5),(115,'UNIVERSIDAD DE CHILE',NULL,'UCH',0,12,5),(116,'UNIÓN ESPAÑOLA',NULL,'UE',0,12,5),(117,'GIBERCHAMPU',NULL,'GCP',0,12,5),(118,'ZARQUAGENA',NULL,'ZQG',0,12,5),(119,'O\'HIGGINS',NULL,'OHI',0,12,5),(120,'SANTIAGO WANDERERS',NULL,'SW',0,12,5),(121,'DEPORTES IQUIQUE',NULL,'IQU',0,12,5),(122,'HUACHIPATO',NULL,'HUA',0,12,5),(123,'ANTOFAGASTA',NULL,'ANT',0,12,5),(124,'PALESTINO',NULL,'PAL',0,12,5),(125,'UNIV. CONCEPCIÓN',NULL,'UDC',0,12,5),(126,'CURICÓ UNIDO',NULL,'CCU',0,12,5),(127,'SAN LUIS',NULL,'SLS',0,12,5),(128,'DEPORTES TEMUCO',NULL,'TEM',0,12,5),(129,'MILLONARIOS',NULL,'MIL',0,14,5),(130,'ATLÉTICO NACIONAL',NULL,'NAL',0,14,5),(131,'HARMANUCI',NULL,'HNC',0,14,5),(132,'BUCHANEVA',NULL,'BCV',0,14,5),(133,'FLOSKRULE',NULL,'FLS',0,14,5),(134,'GUIDRAENIALE',NULL,'GDR',0,14,5),(135,'FOVRAGIZUM',NULL,'FGZ',0,14,5),(136,'HEZTORRIUM',NULL,'HZR',0,20,5),(137,'TYHUANZO',NULL,'THZ',0,20,5),(138,'ESPIONORTE',NULL,'EPI',0,20,5),(139,'POQUEHILLO',NULL,'PQL',0,20,5),(140,'CONTAQUIPURA',NULL,'CQP',0,20,5),(141,'GUARCHOMATO',NULL,'GRM',0,52,5),(142,'NUERRUJIYO',NULL,'NRJ',0,52,5),(143,'DUZAGHALIA',NULL,'DZG',0,52,5),(144,'WAHUCHAMATE',NULL,'WHC',0,52,5),(145,'ETAMUARANIES',NULL,'ETM',0,52,5),(146,'SPORTING CRISTAL',NULL,'CRS',0,53,5),(147,'CLUB ALIANZA LIMA',NULL,'ALI',0,53,5),(148,'BIRAQUACHU',NULL,'BRQ',0,53,5),(149,'QHARITUNBO',NULL,'QHA',0,53,5),(150,'QUIMRIGNA',NULL,'QRG',0,53,5),(151,'HUATYNCAN',NULL,'HYC',0,53,5),(152,'AYATOHUA',NULL,'AYH',0,53,5),(153,'HIENTOZARIO',NULL,'HTZ',0,75,5),(154,'BAMGARRUA',NULL,'BMR',0,75,5),(155,'DIAZAGRECCIO',NULL,'DZC',0,75,5),(156,'XAVRENAGUEL',NULL,'XVG',0,75,5),(157,'ZAGREPAQU',NULL,'ZGP',0,75,5),(158,'CARIZUPELLO',NULL,'CZP',0,78,5),(159,'UNLOCKED CLASSICS',NULL,'UCL',0,78,5),(160,'COSMOPOLIZIA',NULL,'CSM',0,78,5),(161,'HUERPOJAUZA',NULL,'HPJ',0,78,5),(162,'KALAQUISONG CITY',NULL,'KQC',0,3,6),(163,'BRISBANE ROAR FC',NULL,'BRR',0,3,6),(164,'W. SYDNEY WANDERERS',NULL,'WSW',0,3,6),(165,'ADELAIDE UNITED FC',NULL,'ADU',0,3,6),(166,'GALATASARAY SK',NULL,'GAL',0,72,0),(168,'KAA GENT',NULL,'GNT',0,72,0),(169,'BORUSSIA MÖNCHENGLADBACH',NULL,'BMO',0,72,0),(170,'VFB STUTTGART',NULL,'VFB',0,72,0),(171,'TRUNECAN',NULL,'TRN',0,72,0),(172,'ALBANIA',NULL,'ALB',2,0,0),(173,'PABROWIESTEIN',NULL,'PWS',0,4,0),(174,'RSC ANDERLECHT',NULL,'RSC',0,5,0),(175,'FENERBAHÇE SK',NULL,'FEN',0,72,0),(176,'FC SHAKHTAR DONETSK',NULL,'SHK',0,73,0),(177,'GNK DINAMO ZAGREB',NULL,'DZG',0,17,0),(178,'SK SLAVIA PRAHA',NULL,'SLP',0,18,0),(179,'FC KØBENHAVN',NULL,'KNH',0,19,0),(180,'MANCHESTER UNITED',NULL,'MUN',0,22,0),(181,'ARSENAL FC',NULL,'ARS',0,22,0),(182,'CHELSEA FC',NULL,'CHE',0,22,0),(183,'LIVERPOOL FC',NULL,'LIV',0,22,0),(184,'LEEDS UNITED',NULL,'LEE',0,22,0),(185,'WEST HAM UNITED',NULL,'WHU',0,22,0),(186,'NEWCASTLE UNITED',NULL,'NEW',0,22,0),(187,'ASTON VILLA',NULL,'ASV',0,22,0),(189,'MANCHESTER CITY',NULL,'MCI',0,22,0),(190,'EVERTON',NULL,'EVE',0,22,0),(191,'FULHAM FC',NULL,'FUL',0,22,0),(192,'TOTTENHAM HOTSPUR',NULL,'TOT',0,22,0),(193,'BIRMINGHAM CITY',NULL,'BIR',0,22,0),(194,'BOLTON WANDERERS',NULL,'BOL',0,22,0),(195,'LEICESTER CITY',NULL,'LEI',0,22,0),(196,'MIDDLESBROUGH',NULL,'MID',0,22,0),(197,'SOUTHAMPTON',NULL,'SOU',0,22,0),(198,'WOLVERHAMPTON WANDERERS',NULL,'WOL',0,22,0),(199,'BRIGHTON & HOVE ALBION',NULL,'BHA',0,22,0),(200,'BURNLEY',NULL,'BUR',0,22,0),(201,'CARDIFF CITY',NULL,'CAR',0,22,0),(202,'CRYSTAL PALACE',NULL,'CRY',0,22,0),(203,'DERBY COUNTRY',NULL,'DER',0,22,0),(204,'IPSWICH TOWN',NULL,'IPS',0,22,0),(205,'MILLWALL FC',NULL,'MIL',0,22,0),(206,'NORWICH CITY',NULL,'NOR',0,22,0),(207,'NOTTINGHAM FOREST',NULL,'NFO',0,22,0),(208,'READING',NULL,'REA',0,22,0),(209,'SHEFFIELD WEDNESDAY',NULL,'SHW',0,22,0),(210,'STOKE CITY',NULL,'STK',0,22,0),(211,'SUNDERLAND',NULL,'SUN',0,22,0),(212,'WATFORD',NULL,'WAT',0,22,0),(213,'WEST BROMWICH ALBION',NULL,'WBA',0,22,0),(214,'QUEENS PARK RANGERS',NULL,'QPR',0,22,0),(215,'BARNSLEY',NULL,'BLN',0,22,0),(216,'HULL CITY',NULL,'HUL',0,22,0),(217,'BRISTOL CITY',NULL,'BCI',0,22,0),(218,'SWANSEA CITY',NULL,'SWA',0,22,0),(219,'HUDDERSFIELD TOWN',NULL,'HUD',0,22,0),(220,'AFC BOURNEMOUTH',NULL,'BOU',0,22,0),(221,'BRENTFORD',NULL,'BRE',0,22,0),(222,'PRESTON NORTH END',NULL,'PNE',0,22,0),(223,'SHEFFIELD UNITED',NULL,'SHU',0,22,0),(224,'THE OLD BOYS',NULL,'TOB',0,22,0),(225,'BURTON ALBION',NULL,'BUR',0,22,0),(226,'WORLD SELECTION',NULL,'WOS',0,22,0),(227,'AS MONACO',NULL,'MON',0,23,0),(228,'OLYMPIQUE DE MARSEILLE',NULL,'OM',0,23,0),(229,'PARIS SAINT-GERMAIN',NULL,'PSG',0,23,0),(230,'GIRONDINS DE BORDEAUX',NULL,'GDB',0,23,0),(231,'AJ AUXERRE',NULL,'AJA',0,23,0),(232,'OLYMPIQUE LYONNAIS',NULL,'OL',0,23,0),(233,'RC LENS',NULL,'RCL',0,23,0),(234,'AC AJACCIO',NULL,'ACA',0,23,0),(235,'SC BASTIA',NULL,'SCB',0,23,0),(236,'EN AVANT DE GUINGAMP',NULL,'EAG',0,23,0),(237,'LOSC LILLE',NULL,'LIL',0,23,0),(238,'MONTPELLIER HÉRAULT SC',NULL,'MON',0,23,0),(239,'FC NANTES',NULL,'FCN',0,23,0),(240,'OGC NICE',NULL,'OGC',0,23,0),(241,'STADE RENNAIS FC',NULL,'REN',0,23,0),(242,'FC SOCHAUX MONTBÉLIARD',NULL,'SOC',0,23,0),(243,'TOULOUSE FC',NULL,'TFC',0,23,0),(244,'ANGERS SCO',NULL,'SCO',0,23,0),(245,'STADE MALHERBE CAEN',NULL,'SMC',0,23,0),(246,'CHÂTEAUROUX',NULL,'CUX',0,23,0),(247,'CLERMONT FOOT',NULL,'CLE',0,23,0),(248,'HAVRE AC',NULL,'HAC',0,23,0),(249,'FC LORIENT',NULL,'FCL',0,23,0),(250,'AS NANCY LORRAINE',NULL,'ASN',0,23,0),(251,'CHAMOIS NIORTAIS FC',NULL,'NIO',0,23,0),(252,'AS SAINT-ÉTIENNE',NULL,'STE',0,23,0),(253,'ESTAC TROYES',NULL,'TRO',0,23,0),(254,'DIJON FCO',NULL,'DIJ',0,23,0),(255,'STADE BRESTOIS 29',NULL,'SB',0,23,0),(256,'STADE DE REIMS',NULL,'SDR',0,23,0),(257,'VALENCIENNES FC',NULL,'VA',0,23,0),(258,'TOURS FC',NULL,'TOU',0,23,0),(259,'NÎMES OLYMPIQUE',NULL,'NIM',0,23,0),(260,'GAZELEC FC AJACCIO',NULL,'GAZ',0,23,0),(261,'FC METZ',NULL,'FCM',0,23,0),(262,'AMIENS SC',NULL,'ASC',0,23,0),(263,'BOURG EN BRESSE 01',NULL,'BBP',0,23,0),(264,'US ORLEANS',NULL,'USO',0,23,0),(265,'PARIS FC',NULL,'PFC',0,23,0),(266,'RC STRASBOURG ALSACE',NULL,'RCS',0,23,0),(267,'QUEVILLY ROUEN',NULL,'QUR',0,23,0),(268,'BORUSSIA DORTMUND',NULL,'BVB',0,24,0),(269,'PES UNITED',NULL,'PES',0,24,0),(270,'BAYERN MUNICH',NULL,'BAY',0,24,0),(271,'EINTRACHT FRANKFURT',NULL,'EIN',0,24,0),(272,'XAKOULAGOS',NULL,'XKG',0,24,0),(273,'1. FC KÖLN',NULL,'FCK',0,24,0),(274,'TEDLOGHEC',NULL,'TGH',0,24,0),(275,'1.FSV MAINZ 05',NULL,'FCM',0,24,0),(276,'VFL WOLFSBURG',NULL,'VFL',0,24,0),(277,'OLYMPIAKOS PIRAEUS',NULL,'OLP',0,24,0),(278,'PANATHINAIKOS FC',NULL,'PAN',0,24,0),(279,'AEK ATHENS FC',NULL,'AEK',0,24,0),(280,'PAOK THESSALONIKI FC',NULL,'TSP',0,24,0),(281,'HERTHA BSC',NULL,'HER',0,24,0),(282,'FC AUGSBURG',NULL,'AUG',0,24,0),(283,'SV WERDER BREMEN',NULL,'GHR',0,24,0),(284,'KIRKSBURGH CITY',NULL,'KKB',0,33,6),(285,'INTER',NULL,'INT',0,35,0),(286,'JUVENTUS',NULL,'JUV',0,35,0),(287,'AC MILAN',NULL,'MIL',0,35,0),(288,'S.S. LAZIO',NULL,'LAZ',0,35,0),(289,'PARMA CALCIO 1913',NULL,'PAR',0,35,0),(290,'ACF FIORENTINA',NULL,'FIO',0,35,0),(291,'AS ROMA',NULL,'ROM',0,35,0),(292,'BOLOGNA FC 1909',NULL,'BOL',0,35,0),(293,'BRESCIA CALCIO',NULL,'BRE',0,35,0),(294,'A.C. CHIEVOVERONA',NULL,'CHI',0,35,0),(295,'UDINESE CALCIO',NULL,'UDI',0,35,0),(296,'ATALANTA B.C.',NULL,'ATA',0,35,0),(297,'FC EMPOLI',NULL,'EMP',0,35,0),(298,'US PALERMO',NULL,'PAL',0,35,0),(299,'U.C. SAMPDORIA',NULL,'SAM',0,35,0),(300,'ASCOLI PICCHIO FC 1898',NULL,'ASC',0,35,0),(301,'FC BARI 1908',NULL,'BAR',0,35,0),(302,'CAGLIARI CALCIO',NULL,'CAG',0,35,0),(303,'GENOA CFC',NULL,'GEN',0,35,0),(304,'SSC NAPOLI',NULL,'NAP',0,35,0),(305,'DELFINO PESCARA 1936',NULL,'PES',0,35,0),(306,'TERNANA CALCIO',NULL,'TER',0,35,0),(307,'TORINO FOOTBALL CLUB',NULL,'TOR',0,35,0),(308,'HELLAS VERONA FC',NULL,'HEV',0,35,0),(309,'A.C. CESENA',NULL,'CES',0,35,0),(310,'FC CROTONE',NULL,'CRO',0,35,0),(311,'SPEZIA CALCIO',NULL,'SPE',0,35,0),(312,'US SASSUOLO CALCIO',NULL,'SAS',0,35,0),(313,'AS CITTADELLA',NULL,'CIT',0,35,0),(314,'NOVARA CALCIO 1908',NULL,'NOV',0,35,0),(315,'FC PRO VERCELLI 1892',NULL,'PRV',0,35,0),(316,'FC CARPI 1909',NULL,'CAR',0,35,0),(317,'US AVELLINO 1912',NULL,'AVE',0,35,0),(318,'US CREMONESE',NULL,'USC',0,35,0),(319,'VENEZIA FC',NULL,'VEN',0,35,0),(320,'VIRTUS ENTELLA',NULL,'ENT',0,35,0),(321,'BENEVENTO CALCIO',NULL,'BEV',0,35,0),(322,'FROSINONE CALCIO',NULL,'FRO',0,35,0),(323,'AC PERUGIA CALCIO',NULL,'PER',0,35,0),(324,'US SALERNITANA 1919',NULL,'SAL',0,35,0),(325,'SPAL',NULL,'SPA',0,35,0),(326,'FOGGIA CALCIO',NULL,'FOG',0,35,0),(327,'AFC AJAX',NULL,'AJA',0,45,0),(328,'FEYENOORD ROTTERDAM',NULL,'FEY',0,45,0),(329,'PSV EINDHOVEN',NULL,'PSV',0,45,0),(330,'AZ ALKMAAR',NULL,'AZ',0,45,0),(331,'ADO DEN HAAG',NULL,'ADO',0,45,0),(332,'FC GRONINGEN',NULL,'GRO',0,45,0),(333,'SC HEERENVEEN',NULL,'HEE',0,45,0),(334,'NAC BREDA',NULL,'NAC',0,45,0),(335,'RODA JC KERKRADE',NULL,'RJC',0,45,0),(336,'FC TWENTE',NULL,'TWE',0,45,0),(337,'FC UTRECHT',NULL,'UTR',0,45,0),(338,'VITESSE',NULL,'VIT',0,45,0),(339,'WILLEM II',NULL,'WIL',0,45,0),(340,'PEC ZWOLLE',NULL,'ZWO',0,45,0),(341,'SBV EXCELSIOR',NULL,'EXC',0,45,0),(342,'HERACLES ALMELO',NULL,'HER',0,45,0),(343,'SPARTA ROTTERDAM',NULL,'SPA',0,45,0),(344,'VVV VENLO',NULL,'VVV',0,45,0),(345,'MAARSFORT',NULL,'MRF',0,49,0),(346,'FC MEUCHAWYZ',NULL,'MWY',0,54,0),(347,'SL BENFICA',NULL,'SLB',0,55,0),(348,'FC PORTO',NULL,'POR',0,55,0),(349,'SPORTING CP',NULL,'SPO',0,55,0),(350,'VITORIA GUIMARAES SC',NULL,'GUI',0,55,0),(351,'CF BELENENSES LISSABON',NULL,'BEL',0,55,0),(352,'SPORTING BRAGA',NULL,'PRA',0,55,0),(353,'CS MARITIMO',NULL,'MAR',0,55,0),(354,'FC PACOS DE FERREIRA',NULL,'PFE',0,55,0),(355,'RIO AVE FC',NULL,'RIO',0,55,0),(356,'VITORIA SETUBAL FC',NULL,'SET',0,55,0),(357,'HAMBURGER SV',NULL,'HAM',0,55,0),(358,'PORTIMONENSE FC',NULL,'PSC',0,55,0),(359,'DESPORTIVO AVES',NULL,'AVE',0,55,0),(360,'GD ESTORIL PRAIA',NULL,'EST',0,55,0),(361,'CD FEIRENSE',NULL,'FIR',0,55,0),(362,'MOREIRENSE FC',NULL,'MOR',0,55,0),(363,'CD TONDELA',NULL,'TON',0,55,0),(364,'GD CHAVES',NULL,'CHA',0,55,0),(365,'BOAVISTA PORTO FC',NULL,'BOA',0,55,0),(367,'SC FREIBURG',NULL,'FRE',0,58,0),(368,'BAYER 04 LEVERKUSEN',NULL,'LEV',0,58,0),(369,'HANNOVER 96',NULL,'HAN',0,58,0),(370,'TSG 1899 HOFFENHEIM',NULL,'TSG',0,58,0),(371,'FK SPARTAK MOSKVA',NULL,'SMO',0,59,0),(372,'PFK CSKA MOSKVA',NULL,'CSK',0,59,0),(373,'FK ZENIT ST. PETERSBURG',NULL,'ZSP',0,59,0),(374,'WARYAMOSUK',NULL,'WRY',0,59,0),(375,'RASEN BALLSPORT LEIPZIG',NULL,'RLZ',0,59,0),(376,'FC SCHALKE 04',NULL,'SCH',0,24,0),(377,'QUARPELATHER CITY',NULL,'QPL',0,61,0),(378,'FC BARCELONA',NULL,'FCB',0,67,0),(379,'REAL MADRID',NULL,'RMA',0,67,0),(380,'VALENCIA CLUB DE FÚTBOL',NULL,'VAL',0,67,0),(381,'RC DEPORTIVO',NULL,'DEP',0,67,0),(382,'ATLÉTICO DE MADRID',NULL,'ATM',0,67,0),(383,'REAL BETIS',NULL,'BET',0,67,0),(384,'CELTA DE VIGO',NULL,'CEL',0,67,0),(385,'REAL SOCIEDAD',NULL,'RSO',0,67,0),(386,'ATHLETIC CLUB',NULL,'ATH',0,67,0),(387,'RCD ESPANYOL',NULL,'ESP',0,67,0),(388,'FC MALAGA',NULL,'MAL',0,67,0),(389,'CA OSASUNA',NULL,'OSA',0,67,0),(390,'FC SEVILLA',NULL,'SEV',0,67,0),(391,'REAL VALLADOLID',NULL,'RVA',0,67,0),(392,'FC VILLARREAL',NULL,'VIL',0,67,0),(393,'REAL ZARAGOZA',NULL,'ZAR',0,67,0),(394,'UD ALMERIA',NULL,'ALM',0,67,0),(395,'FC CORDOBA',NULL,'COR',0,67,0),(396,'FC GETAFE',NULL,'GET',0,67,0),(397,'SPORTING GIJON',NULL,'SPO',0,67,0),(398,'UD LAS PALMAS',NULL,'LPA',0,67,0),(399,'UD LEVANTE',NULL,'LEV',0,67,0),(400,'CD NUMANCIA',NULL,'NUM',0,67,0),(401,'RAYO VALLECANO',NULL,'RAY',0,67,0),(402,'FC GRANADA',NULL,'BRA',0,67,0),(403,'FC GIRONA',NULL,'GIR',0,67,0),(404,'SD HUESCA',NULL,'HUE',0,67,0),(405,'AD ALCORCON',NULL,'ALC',0,67,0),(406,'CD LUGO',NULL,'LUG',0,67,0),(407,'FC BARCELONA B',NULL,'FCB',0,67,0),(408,'DEPORTIVO ALAVES',NULL,'ALA',0,67,0),(409,'SD EIBAR',NULL,'EIB',0,67,0),(410,'CD TENERIFFE',NULL,'TEN',0,67,0),(411,'CULTURAL LEONESA',NULL,'CDL',0,67,0),(412,'REAL OVIEDO',NULL,'ROV',0,67,0),(413,'CD LEGANES',NULL,'LEG',0,67,0),(414,'GIMNASTIC DE TARRAGONA',NULL,'GIM',0,67,0),(415,'REUS DEPORTIU',NULL,'REU',0,67,0),(416,'ALBACETE BALOMPIE',NULL,'ALB',0,67,0),(417,'FC CADIZ',NULL,'CAD',0,67,0),(418,'LORCA FC',NULL,'LOR',0,67,0),(419,'FC SEVILLA B',NULL,'SAT',0,67,0),(420,'MALMÖ FF',NULL,'MFF',0,68,0),(421,'FC BASEL 1893',NULL,'BSL',0,69,0),(422,'BSC YOUNG BOYS',NULL,'YGB',0,69,0),(423,'FC DYNAMO KYIV',NULL,'DYK',0,73,0),(424,'CLUB BRUGGE',NULL,'BRU',0,5,0),(425,'QAXOQAVOIY',NULL,'QXQ',0,77,6),(426,'FK BUNYODKOR',NULL,'BUN',0,77,6),(427,'FK LOKOMOTIV TASHKENT',NULL,'LOT',0,77,6),(428,'ALGERIA',NULL,'ALG',2,1,1),(429,'ARGENTINA',NULL,'ARG',2,2,5),(430,'AUSTRALIA',NULL,'AUS',2,3,6),(431,'AUSTRIA',NULL,'AUT',2,4,0),(432,'BELGIUM',NULL,'BEL',2,5,0),(433,'BOLIVIA',NULL,'BOL',2,6,5),(434,'BOSNIA AND HERZEGOVINA',NULL,'BIH',2,7,0),(435,'BRAZIL',NULL,'BRA',2,8,5),(436,'BULGARIA',NULL,'BUL',2,9,0),(437,'BURKINA FASO',NULL,'BFA',2,10,1),(438,'CAMEROON',NULL,'CMR',2,11,1),(439,'CHILE',NULL,'CHL',2,12,5),(440,'CHINA',NULL,'CHN',2,13,6),(441,'COLOMBIA',NULL,'COL',2,14,5),(442,'COSTA RICA',NULL,'CRI',2,15,4),(443,'CÔTE D\'IVOIRE',NULL,'CIV',2,16,1),(444,'CROATIA',NULL,'CRO',2,17,0),(445,'CZECH REPUBLIC',NULL,'CZE',2,18,0),(446,'DENMARK',NULL,'DEN',2,19,0),(447,'ECUADOR',NULL,'ECU',2,20,5),(448,'EGYPT',NULL,'EGY',2,21,1),(449,'ENGLAND',NULL,'ENG',2,22,0),(450,'FRANCE',NULL,'FRA',2,23,0),(451,'GERMANY',NULL,'GER',2,24,0),(452,'GHANA',NULL,'GHA',2,25,0),(453,'GREECE',NULL,'GRE',2,26,0),(454,'GUINEA',NULL,'GIN',2,27,0),(455,'HONDURAS',NULL,'HND',2,28,0),(456,'HUNGARY',NULL,'HUN',2,29,0),(457,'ICELAND',NULL,'ISL',2,30,0),(458,'IRAN',NULL,'IRN',2,31,6),(459,'IRAQ',NULL,'IRQ',2,32,0),(460,'IRELAND',NULL,'IRL',2,33,0),(461,'ISRAEL',NULL,'ISR',2,34,0),(462,'ITALY',NULL,'ITA',2,35,0),(463,'JAMAICA',NULL,'JAM',2,36,4),(464,'JAPAN',NULL,'JPN',2,37,6),(465,'JORDAN',NULL,'JOR',2,38,6),(466,'KOREA DPR',NULL,'PRK',2,39,6),(467,'KUWAIT',NULL,'KWT',2,40,6),(468,'LEBANON',NULL,'LBN',2,41,6),(469,'MALI',NULL,'MLI',2,42,1),(470,'MEXICO',NULL,'MEX',2,43,3),(471,'MOROCCO',NULL,'MAR',2,44,1),(472,'NETHERLANDS',NULL,'NED',2,45,0),(473,'NEW ZEALAND',NULL,'NZL',2,46,6),(474,'NIGERIA',NULL,'NGA',2,47,1),(475,'NORTHERN IRELAND',NULL,'NIR',2,48,0),(476,'NORWAY',NULL,'NOR',2,49,0),(477,'OMAN',NULL,'OMN',2,50,6),(478,'PANAMA',NULL,'PAN',2,51,4),(479,'PARAGUAY',NULL,'PAR',2,52,5),(480,'PERU',NULL,'PER',2,53,5),(481,'POLAND',NULL,'POL',2,54,0),(482,'PORTUGAL',NULL,'POR',2,55,0),(483,'QATAR',NULL,'QAT',2,56,6),(484,'REPUBLIC OF KOREA',NULL,'KOR',2,57,6),(485,'ROMANIA',NULL,'ROU',2,58,0),(486,'RUSSIA',NULL,'RUS',2,59,0),(487,'SAUDI ARABIA',NULL,'SAU',2,60,6),(488,'SCOTLAND',NULL,'SCO',2,61,0),(489,'SENEGAL',NULL,'SEN',2,62,1),(490,'SERBIA',NULL,'SER',2,63,0),(491,'SLOVAKIA',NULL,'SVK',2,64,0),(492,'SLOVENIA',NULL,'SVN',2,65,0),(493,'SOUTH AFRICA',NULL,'ZAF',2,66,1),(494,'SPAIN',NULL,'ESP',2,67,0),(495,'SWEDEN',NULL,'SWE',2,68,0),(496,'SWITZERLAND',NULL,'SUI',2,69,0),(497,'THAILAND',NULL,'THA',2,70,6),(498,'TUNISIA',NULL,'TUN',2,71,1),(499,'TURKEY',NULL,'TUR',2,72,0),(500,'UKRAINE',NULL,'UKR',2,73,0),(501,'UNITED ARAB EMIRATES',NULL,'ARE',2,74,6),(502,'URUGUAY',NULL,'URU',2,75,5),(503,'USA',NULL,'USA',2,76,3),(504,'UZBEKISTAN',NULL,'UZB',2,77,6),(505,'VENEZUELA',NULL,'VEN',2,78,5),(506,'WALES',NULL,'WAL',2,79,0),(507,'ZAMBIA',NULL,'ZAM',2,80,1),(508,'HONG KONG',NULL,'HKG',2,81,6),(509,'INDIA',NULL,'IND',2,82,6),(510,'INDONESIA',NULL,'IDN',2,83,6),(511,'VIETNAM',NULL,'VNM',2,84,6),(512,'SINGAPORE',NULL,'SGP',2,85,6),(513,'WORLD CLASSICS',NULL,'WCL',1,-1,7),(514,'EUROPEAN CLASSICS',NULL,'ECL',1,-1,7),(515,'Arsenal Tula',NULL,'',0,59,0),(516,'Dynamo Moscou',NULL,'',0,59,0),(517,'FC Akhmat Grozny',NULL,'',0,59,0),(518,'FC Anzhi Makhachkala',NULL,'',0,59,0),(519,'FC Enisey Krasnoyarsk',NULL,'',0,59,0),(520,'FC Gazovik Orenburg',NULL,'',0,59,0),(521,'FC Krasnodar',NULL,'',0,59,0),(522,'FC Krylya Sovetov Samara',NULL,'',0,59,0),(523,'FC Lokomotiv Moscou',NULL,'',0,59,0),(524,'FC Oufa',NULL,'',0,59,0),(525,'FC Rostov',NULL,'',0,59,0),(526,'FC Rubin Kazan',NULL,'',0,59,0),(527,'FC Ural Yekaterinburg',NULL,'',0,59,0),(528,'FC Lugano',NULL,'',0,69,0),(529,'FC Saint-Gall',NULL,'',0,69,0),(530,'FC Sion',NULL,'',0,69,0),(531,'FC Thoune',NULL,'',0,69,0),(532,'FC Zürich',NULL,'',0,69,0),(533,'Grasshopper Zürich',NULL,'',0,69,0),(534,'Lucerne',NULL,'',0,69,0),(535,'Neuchâtel Xamax',NULL,'',0,69,0),(536,'Aalborg BK',NULL,'',0,19,0),(537,'Aarhus GF',NULL,'',0,19,0),(538,'AC Horsens',NULL,'',0,19,0),(539,'Brondby IF',NULL,'',0,19,0),(540,'Esbjerg FB',NULL,'',0,19,0),(541,'FC Midtjylland',NULL,'',0,19,0),(542,'FC Nordsjælland',NULL,'',0,19,0),(543,'Hobro IK',NULL,'',0,19,0),(544,'Odense Boldklub',NULL,'',0,19,0),(545,'Randers Freja FC',NULL,'',0,19,0),(546,'SonderjyskE',NULL,'',0,19,0),(547,'Vejle Boldklub',NULL,'',0,19,0),(548,'Vendsyssel FF',NULL,'',0,19,0),(549,'Aberdeen',NULL,'',0,61,0),(550,'Celtic Glasgow',NULL,'',0,61,0),(551,'Dundee FC',NULL,'',0,61,0),(552,'Glasgow Rangers',NULL,'',0,61,0),(553,'Hamilton Academical',NULL,'',0,61,0),(554,'Heart of Midlothian',NULL,'',0,61,0),(555,'Hibernian Edimbourg',NULL,'',0,61,0),(556,'Kilmarnock',NULL,'',0,61,0),(557,'Livingston',NULL,'',0,61,0),(558,'Motherwell',NULL,'',0,61,0),(559,'Saint Johnstone FC',NULL,'',0,61,0),(560,'Saint Mirren FC',NULL,'',0,61,0),(561,'Cercle Bruges',NULL,'',0,5,0),(562,'Club Bruges',NULL,'',0,5,0),(563,'K.V. Courtrai',NULL,'',0,5,0),(564,'KAA La Gantoise',NULL,'',0,5,0),(565,'KAS Eupen',NULL,'',0,5,0),(566,'KRC Genk',NULL,'',0,5,0),(567,'KV Ostende',NULL,'',0,5,0),(568,'Lokeren',NULL,'',0,5,0),(569,'Red Star Waasland-Beveren',NULL,'',0,5,0),(570,'Royal Anvers FC',NULL,'',0,5,0),(571,'Royal Excel Mouscron',NULL,'',0,5,0),(572,'Saint-Trond',NULL,'',0,5,0),(573,'Sporting Charleroi',NULL,'',0,5,0),(574,'Standard Liège',NULL,'',0,5,0),(575,'Zulte-Waregem',NULL,'',0,5,0),(577,'Nacional Madeira',NULL,'',0,55,0),(578,'Santa Clara',NULL,'',0,55,0),(579,'Aldosivi',NULL,'',0,2,5),(580,'San Martín Tucumán',NULL,'',0,2,5),(581,'Blackburn Rovers',NULL,'',0,22,0),(582,'Rotherham United',NULL,'',0,22,0),(583,'Wigan Athletic',NULL,'',0,22,0),(584,'Grenoble',NULL,'',0,23,0),(585,'AS Béziers Foot',NULL,'',0,23,0),(586,'Red Star FC',NULL,'',0,23,0),(587,'Cosenza',NULL,'',0,35,0),(588,'Lecce',NULL,'',0,35,0),(589,'Livorno',NULL,'',0,35,0),(590,'Padova',NULL,'',0,35,0),(591,'De Graafschap',NULL,'',0,45,0),(592,'FC Emmen',NULL,'',0,45,0),(593,'Fortuna Sittard',NULL,'',0,45,0);
/*!40000 ALTER TABLE `game_teams` ENABLE KEYS */;
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
INSERT INTO `seasons` VALUES (0,'2017/2018'),(1,'2018/2019');
/*!40000 ALTER TABLE `seasons` ENABLE KEYS */;
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
INSERT INTO `users` VALUES (1,'jm@jimkaprod.com','gegen','pbkdf2:sha256:50000$o6HQK6dP$47b755791b9542e8f68e73dbe71525d482d1b8c66b7cb5c60c669e8625be01a6',3,1,'','','','2018-06-20 09:12:40','2018-06-20 09:12:48','');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `zones`
--

LOCK TABLES `zones` WRITE;
/*!40000 ALTER TABLE `zones` DISABLE KEYS */;
INSERT INTO `zones` VALUES (0,'europe','eur'),(1,'afrique','afr'),(2,'amerique','ame'),(3,'amerique nord','amn'),(4,'amerique centrale','amc'),(5,'amerique sud','ams'),(6,'asie océanie','aso'),(7,'Équipes classiques','eqc');
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

-- Dump completed on 2018-08-02 17:16:05