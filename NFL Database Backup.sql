-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: nfldatabase
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `coach`
--

DROP TABLE IF EXISTS `coach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coach` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `wins` varchar(30) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coach`
--

LOCK TABLES `coach` WRITE;
/*!40000 ALTER TABLE `coach` DISABLE KEYS */;
INSERT INTO `coach` VALUES (1,'Kliff','Kingsbury','11'),(2,'Dan','Quinn','43'),(3,'John','Harbaugh','124'),(4,'Sean','McDermott','33'),(5,'Perry','Fewell','3'),(6,'Matt','Nagy','25'),(7,'Zac','Taylor','4'),(8,'Freddie','Kitchens','6'),(9,'Jason','Garrett','85'),(10,'Vic','Fangio','11'),(11,'Matt','Patricia','13'),(12,'Matt','LaFleur','21'),(13,'Bill','OBrien','52'),(14,'Frank','Reich','24'),(15,'Doug','Marrone','38'),(16,'Andy','Reid','217'),(17,'Jon','Gruden','112'),(18,'Anthony','Lynn','29'),(19,'Sean','McVay','40'),(20,'Brian','Flores','12'),(21,'Mike','Zimmer','62'),(22,'Bill','Belichick','278'),(23,'Sean','Payton','140'),(24,'Pat','Shurmur','19'),(25,'Adam','Gase','30'),(26,'Doug','Pederson','41'),(27,'Mike','Tomlin','143'),(28,'Kyle','Shanahan','28'),(29,'Pete','Carroll','141'),(30,'Bruce','Arians','63'),(31,'Mike','Vrabel','26'),(32,'Bill','Callahan','18');
/*!40000 ALTER TABLE `coach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player` (
  `id` int NOT NULL AUTO_INCREMENT,
  `team_id` int NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `jersey_number` int NOT NULL,
  `position` varchar(35) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `player_chk_1` CHECK ((`jersey_number` <= 99))
) ENGINE=InnoDB AUTO_INCREMENT=291 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` VALUES (1,1,'Maxx','Williams',87,'TE'),(2,1,'Charles','Clay',85,'TE'),(3,1,'Damiere','Byrd',10,'WR'),(4,1,'Christian','Kirk',13,'WR'),(5,1,'Kyler','Murray',1,'QB'),(6,1,'Larry','Fitzgerald',11,'WR'),(7,1,'David','Johnson',31,'RB'),(8,2,'Matt','Ryan',2,'QB'),(9,2,'Deion','Jones',45,'MLB'),(10,2,'Julio','Jones',11,'WR'),(11,2,'Devonta','Freeman',31,'RB'),(12,2,'Austin','Hooper  ',81,'TE'),(13,2,'Calvin','Ridley',18,'WR'),(14,3,'Patrick','Ricard  ',41,'FB'),(15,3,'Hayden','Hurst',81,'TE'),(17,3,'Nick','Boyle',10,'TE'),(19,3,'Willie','Snead',83,'WR'),(20,3,'Lamar','Jackson  ',8,'QB'),(21,3,'Marquise','Brown',15,'WR'),(22,3,'Mark','Ingram  ',21,'RB'),(23,4,'Tremaine','Edmunds  ',49,'MLB'),(24,4,'Lee','Smith',85,'WR'),(25,4,'Isaiah','McKenzie',19,'WR'),(26,4,'Micah','Hyde',23,'FS'),(27,4,'Dion','Dawkins',20,'LT'),(28,4,'Dawson','Knox',88,'TE'),(29,4,'Frank','Gore',21,'RB'),(30,4,'Devin','Singletary',26,'RB'),(31,4,'John','Brown',15,'WR'),(32,4,'Cole','Beasley',11,'WR'),(33,4,'Josh','Allen',17,'QB'),(34,5,'Luke','Kuechly',59,'IL'),(35,5,'Bruce','Irvin',51,'ROLB'),(36,5,'Brian','Burns',53,'ROLB'),(37,5,'Greg','Olsen',88,'TE'),(38,5,'Kyle','Allen',8,'QB'),(39,5,'D.J.','Moore',12,'WR'),(40,5,'Curtis','Samuel',10,'WR'),(41,5,'Christian','McCaffrey',22,'RB'),(42,6,'Nick','Kwiatkoski',44,'IL'),(43,6,'Javon','Wims',83,'WR'),(44,6,'Ha','Ha',21,'FS'),(45,6,'Mitchell','Trubisky',10,'QB'),(46,6,'Anthony','Miller',17,'WR'),(47,6,'Tarik','Cohen',29,'RB'),(48,6,'Taylor','Gabriel',18,'WR'),(49,6,'Allen','Robinson',12,'WR'),(50,6,'David','Montgomery',32,'RB'),(51,7,'Auden','Tate',19,'WR'),(52,7,'C.J.','Uzomah',87,'TE'),(53,7,'John','Ross',11,'WR'),(54,7,'Tyler','Eifert',32,'TE'),(55,7,'Andy','Dalton',14,'QB'),(56,7,'Tyler','Boyd',81,'WR'),(57,7,'Joe','Mixon',19,'RB'),(58,8,'Denzel','Ward',51,'LCB'),(59,8,'Stephen','Carlson',59,'TE'),(60,8,'Baker','Mayfield',6,'QB'),(61,8,'Demetrius','Harris',12,'TE'),(62,8,'Ricky','Seals-Jones',4,'TE'),(63,8,'Odell','Beckham',13,'WR'),(64,8,'Jarvis','Landry',80,'WR'),(65,8,'Nick','Chubb  ',24,'RB'),(66,9,'Jourdan','Lewis',11,'DB'),(67,9,'Dak','Prescott',4,'QB'),(68,9,'Blake','Jarwin',48,'TE'),(69,9,'Randall','Cobb',23,'WR'),(70,9,'Jason','Witten',58,'TE'),(71,9,'Michael','Gallup',23,'WR'),(72,9,'Amari','Cooper',89,'WR'),(73,9,'Ezekiel','Elliott',23,'RB'),(74,10,'Andy','Janovich',34,'FB'),(75,10,'Kareem','Jackson',53,'SS'),(76,10,'Jeff','Heuerman',64,'TE'),(77,10,'Troy','Fumagalli',47,'TE'),(78,10,'Andrew','Beck',36,'TE'),(79,10,'Noah','Fant',79,'TE'),(80,10,'Courtland','Sutton',27,'WR'),(81,10,'Phillip','Lindsay',46,'RB'),(82,11,'Logan','Thomas',63,'TE'),(83,11,'Bo','Scarbrough',44,'RB'),(84,11,'J.D.','McKissic',38,'RB'),(85,11,'Devon','Kennard',26,'LLB'),(86,11,'Jeff','Driskel',9,'QB'),(87,11,'David','Blough',10,'QB'),(88,11,'Danny','Amendola',80,'WR'),(89,11,'T.J.','Hockenson',45,'TE'),(90,11,'Kerryon','Johnson',35,'RB'),(91,11,'Marvin','Jones',19,'WR'),(92,11,'Kenny','Golladay',81,'WR'),(93,12,'Marcedes','Lewis',63,'TE'),(94,12,'Aaron','Rodgers',12,'QB'),(95,12,'Marquez','Valdes-Scantling',83,'WR'),(96,12,'Geronimo','Allison',47,'WR'),(97,12,'Jimmy','Graham',39,'TE'),(98,12,'Davante','Adams',25,'WR'),(99,12,'Aaron','Jones',73,'RB'),(100,13,'Bradley','Roby',27,'CB'),(101,13,'Tashaun','Gipson',61,'SS'),(102,13,'Jordan','Akins',28,'TE'),(103,13,'Will','Fuller',48,'WR'),(104,13,'Kenny','Stills',53,'WR'),(105,13,'Carlos','Hyde',20,'RB'),(106,13,'Darren','Fells',34,'TE'),(107,13,'DeAndre','Hopkins',50,'WR'),(108,13,'Deshaun','Watson',4,'QB'),(109,14,'Justin','Houston',50,'LDE'),(110,14,'Darius','Leonard',19,'LLB'),(111,14,'Chester','Rogers',55,'WR'),(112,14,'Marcus','Johnson',76,'WR'),(113,14,'Eric','Ebron',82,'TE'),(114,14,'Jack','Doyle',37,'TE'),(115,14,'Jacoby','Brissett',7,'QB'),(116,14,'T.Y.','Hilton',31,'WR'),(117,14,'Zach','Pascal',42,'WR'),(118,14,'Marlon','Mack',75,'RB'),(119,14,'Adam','Vinatieri',6,'K'),(120,15,'Yannick','Ngakoue',29,'LDE'),(121,15,'Calais','Campbell',32,'DE'),(122,15,'James','OShaughnessy',24,'TE'),(123,15,'Leonard','Fournette',82,'RB'),(124,15,'Dede','Westbrook',44,'WR'),(125,15,'Chris','Conley',38,'WR'),(126,15,'DJ','Chark',61,'WR'),(127,16,'Juan','Thornhill',22,'FS'),(128,16,'Reggie','Ragland',59,'IL'),(129,16,'Bashaud','Breeland',21,'LCB'),(130,16,'Patrick','Mahomes',15,'QB'),(131,16,'Sammy','Watkins',14,'WR'),(132,16,'Demarcus','Robinson',11,'WR'),(133,16,'LeSean','McCoy',25,'RB'),(134,16,'Travis','Kelce',87,'TE'),(135,16,'Damien','Williams',26,'RB'),(136,16,'Tyreek','Hill',10,'WR'),(137,16,'Mecole','Hardman',17,'WR'),(138,17,'Erik','Harris',25,'FS'),(139,17,'Derek','Carr',4,'QB'),(140,17,'Darren','Waller',83,'TE'),(141,17,'Foster','Moreau',87,'TE'),(142,17,'Tyrell','Williams',41,'WR'),(143,17,'Josh','Jacobs',25,'RB'),(144,18,'Derek','Watt',32,'FB'),(145,18,'Desmond','King',17,'DB'),(146,18,'Mike','Williams',82,'WR'),(147,18,'Hunter','Henry',51,'TE'),(148,18,'Keenan','Allen',89,'WR'),(149,18,'Melvin','Gordon',67,'RB'),(150,18,'Austin','Ekeler',82,'RB'),(151,19,'Aaron','Donald',24,'RDE'),(152,19,'Taylor','Rapp',14,'SS'),(153,19,'Dante','Fowler',59,'OLB'),(154,19,'Jared','Goff',16,'QB'),(155,19,'Brandin','Cooks',28,'WR'),(156,19,'Robert','Woods',37,'WR'),(157,19,'Tyler','Higbee',46,'TE'),(158,19,'Cooper','Kupp',53,'WR'),(159,19,'Todd','Gurley',74,'RB'),(160,19,'Greg','Zuerlein',2,'K'),(161,20,'Christian','Wilkins',94,'RDE'),(162,20,'Eric','Rowe',35,'SS'),(163,20,'Allen','Hurns',29,'WR'),(164,20,'Preston','Williams',35,'WR'),(165,20,'Kalen','Ballage',18,'RB'),(166,20,'Ryan','Fitzpatrick',14,'QB'),(167,20,'Mike','Gesicki',92,'TE'),(168,20,'DeVante','Parker',33,'WR'),(169,21,'Laquon','Treadwell',47,'WR'),(170,21,'Anthony','Harris',49,'FS'),(171,21,'C.J.','Ham',19,'FB'),(172,21,'Kirk','Cousins',8,'QB'),(173,21,'Stefon','Diggs',42,'WR'),(174,21,'Kyle','Rudolph',55,'TE'),(175,21,'Adam','Thielen',61,'WR'),(176,21,'Dalvin','Cook',20,'RB'),(177,22,'Kyle','Van',75,'LB'),(178,22,'Elandon','Roberts',60,'IL'),(179,22,'Matt','LaCosse',20,'TE'),(180,22,'Donta','Hightower',57,'MLB'),(181,22,'Jamie','Collins',86,'LLB'),(182,22,'NKeal','Harry',78,'WR'),(183,22,'Stephon','Gilmore',74,'CB'),(184,22,'Tom','Brady',12,'QB'),(185,22,'Phillip','Dorsett',43,'WR'),(186,22,'Stephen','Gostkowski',3,'K'),(187,22,'Julian','Edelman',21,'WR'),(188,22,'Sony','Michel',44,'RB'),(189,23,'Marcus','Williams',28,'FS'),(190,23,'A.J.','Klein',52,'LB'),(191,23,'Drew','Brees',9,'QB'),(192,23,'Vonn','Bell',68,'SS'),(193,23,'Ted','Ginn',75,'WR'),(194,23,'Josh','Hill',89,'TE'),(195,23,'TreQuan','Smith',20,'WR'),(196,23,'Latavius','Murray',52,'RB'),(197,23,'Alvin','Kamara',84,'RB'),(198,23,'Taysom','Hill',33,'WR'),(199,23,'Michael','Thomas',19,'WR'),(200,23,'Jared','Cook',39,'TE'),(201,24,'Jabrill','Peppers',41,'SS'),(202,24,'Markus','Golden',65,'DE'),(203,24,'Rhett','Ellison',38,'TE'),(204,24,'Cody','Latimer',15,'WR'),(205,24,'Daniel','Jones',8,'QB'),(206,24,'Kaden','Smith',52,'TE'),(207,24,'Evan','Engram',49,'TE'),(208,24,'Sterling','Shepard',38,'WR'),(209,24,'Golden','Tate',87,'WR'),(210,24,'Darius','Slayton',74,'WR'),(211,24,'Saquon','Barkley',23,'RB'),(212,25,'James','Burgess',55,'MLB'),(213,25,'Demaryius','Thomas',11,'WR'),(214,25,'Arthur','Maulet',23,'CB'),(215,25,'Daniel','Brown',41,'WR'),(216,25,'Brian','Poole',33,'DB'),(217,25,'Sam','Darnold',14,'QB'),(218,25,'Jamal','Adams',64,'SS'),(219,25,'LeVeon','Bell',49,'RB'),(220,25,'Ryan','Griffin',29,'TE'),(221,25,'Robby','Anderson',36,'WR'),(222,25,'Jamison','Crowder',14,'WR'),(223,26,'Darren','Sproles',21,'RB'),(224,26,'Carson','Wentz',11,'QB'),(225,26,'Nathan','Gerry',84,'LB'),(226,26,'Nigel','Bradham',27,'MLB'),(227,26,'JJ','Arcega-Whiteside',67,'WR'),(228,26,'Nelson','Agholor',88,'WR'),(229,26,'Alshon','Jeffery',46,'WR'),(230,26,'Dallas','Goedert',11,'TE'),(231,26,'Miles','Sanders',26,'RB'),(232,26,'Zach','Ertz',22,'TE'),(233,26,'Jordan','Howard',28,'RB'),(234,27,'Devin','Bush',55,'LB'),(235,27,'James','Washington',31,'WR'),(236,27,'JuJu','Smith-Schuster',32,'WR'),(237,27,'Vance','McDonald',74,'TE'),(238,27,'Diontae','Johnson',51,'WR'),(239,27,'James','Conner',12,'RB'),(240,28,'Ahkello','Witherspoon',87,'CB'),(241,28,'Fred','Warner',72,'MLB'),(242,28,'Richard','Sherman',24,'LCB'),(243,28,'Kyle','Juszczyk',34,'FB'),(244,28,'Marquise','Goodwin',21,'WR'),(245,28,'Jimmy','Garoppolo',10,'QB'),(246,28,'DeForest','Buckner',19,'DT'),(247,28,'Ross','Dwelley',40,'TE'),(248,28,'Matt','Breida',85,'RB'),(249,28,'George','Kittle',33,'TE'),(250,28,'Deebo','Samuel',14,'WR'),(251,28,'Tevin','Coleman',42,'RB'),(252,29,'Jadeveon','Clowney',74,'DE'),(253,29,'Jaron','Brown',41,'WR'),(254,29,'Russell','Wilson',3,'QB'),(255,29,'Will','Dissly',80,'TE'),(256,29,'D.K.','Metcalf',9,'WR'),(257,29,'Tyler','Lockett',43,'WR'),(258,29,'Chris','Carson',32,'RB'),(259,30,'Vita','Vea',8,'NT'),(260,30,'Sean','Murphy-Bunting',12,'CB'),(261,30,'O.J.','Howard',71,'TE'),(262,30,'Jameis','Winston',2,'QB'),(263,30,'Devin','White',11,'LB'),(264,30,'Ndamukong','Suh',21,'LDE'),(265,30,'Cameron','Brate',54,'TE'),(266,30,'Breshad','Perriman',19,'WR'),(267,30,'Ronald','Jones',22,'RB'),(268,30,'Peyton','Barber',34,'RB'),(269,30,'Mike','Evans',13,'WR'),(270,30,'Chris','Godwin',14,'WR'),(271,31,'MyCole','Pruitt',34,'TE'),(272,31,'Dion','Lewis',33,'RB'),(273,31,'Rashaan','Evans',54,'LB'),(274,31,'Malcolm','Butler',22,'CB'),(275,31,'Jayon','Brown',55,'LB'),(276,31,'Delanie','Walker',82,'TE'),(277,31,'Corey','Davis',84,'WR'),(278,31,'Jonnu','Smith',81,'TE'),(279,31,'Tajae','Sharpe',81,'WR'),(280,31,'Ryan','Tannehill',17,'QB'),(281,31,'Ryan','Succop',3,'K'),(282,31,'A.J.','Brown',11,'WR'),(283,31,'Derrick','Henry',22,'RB'),(284,32,'Jeremy','Sprinkle',7,'TE'),(285,32,'Case','Keenum',5,'QB'),(286,32,'Vernon','Davis',85,'TE'),(287,32,'Trey','Quinn',28,'WR'),(288,32,'Paul','Richardson',10,'WR'),(289,32,'Adrian','Peterson',28,'RB'),(290,32,'Terry','McLaurin',17,'WR');
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stadium`
--

DROP TABLE IF EXISTS `stadium`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stadium` (
  `id` int NOT NULL AUTO_INCREMENT,
  `stadium_name` varchar(30) NOT NULL,
  `location` varchar(30) NOT NULL,
  `capacity` int NOT NULL DEFAULT '0',
  `record_attendence` int NOT NULL,
  `first_open` date NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `stadium_chk_1` CHECK (((`capacity` >= 50000) and (`capacity` <= 100000)))
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stadium`
--

LOCK TABLES `stadium` WRITE;
/*!40000 ALTER TABLE `stadium` DISABLE KEYS */;
INSERT INTO `stadium` VALUES (1,'State Farm Stadium','Glendale, Arizona',63400,78603,'2006-08-01'),(2,'Mercedes-Benz Stadium','Atlanta, Georgia',71000,78347,'2017-08-26'),(3,'M&T Bank Stadium','Baltimore, Maryland',71008,71547,'1998-09-06'),(4,'Bills Stadium','Orchard Park, New York',71608,80290,'1973-08-17'),(5,'Bank of America Stadium','Charlotte, North Carolina',74867,75523,'1996-09-14'),(6,'Soldier Field','Chicago, Illinois',61500,150000,'1924-10-09'),(7,'Paul Brown Stadium','Cincinatti, Ohio',65515,66319,'2000-08-19'),(8,'FirstEnergy Stadium','Cleveland, Ohio',67895,73718,'1999-09-12'),(9,'AT&T Stadium','Arlington, Texas',80000,105121,'2009-05-27'),(10,'Empower Field at Mile High','Denver, Colorado',76125,77160,'2001-08-11'),(11,'Ford Field','Detroit, Michigan',65000,80103,'2002-08-24'),(12,'Lambeau Field','Green Bay, Wisconsin',81441,79704,'1957-09-29'),(13,'NRG Stadium','Houston, Texas',72220,80108,'2002-08-24'),(14,'Lucas Oil Stadium','Indianapolis, Indiana',67000,70000,'2008-08-20'),(15,'TIAA Bank Field','Jacksonville, Florida',69132,85413,'1995-08-18'),(16,'Arrowhead Stadium','Kansas City',76416,78097,'1972-08-12'),(17,'Allegiant Stadium','Paradise, Nevada',65000,1,'2020-07-31'),(18,'SoFi Stadium','Inglewood, California',70240,1,'2020-08-08'),(19,'SoFi Stadium','Inglewood, California',70240,1,'2020-08-08'),(20,'Hard Rock Stadium','Miami Gardens, Florida',65326,80120,'1987-08-16'),(21,'U.S. Bank Stadium','Minneapolis, Minnesota',66655,72711,'2016-07-22'),(22,'Gillette Stadium','Foxborough, Massachusetts',66829,68756,'2002-05-11'),(23,'Mercedes-Benz Superdome','New Orleans, Louisiana',73208,78133,'1975-08-03'),(24,'New York Giants','East Rutherford, New Jersey',82500,82265,'2010-04-10'),(25,'Metlife Stadium','East Rutherford, New Jersey',82500,82265,'2010-04-10'),(26,'Lincoln Financial Field','Philadelphia, Pennsylvania',69596,69620,'2003-08-03'),(27,'Heinz Field','Pittsburgh, Pennsylvania',68400,75000,'2001-08-18'),(28,'Levis Stadium','Santa Clara, California',68500,76976,'2014-07-17'),(29,'Lumen Field','Seattle, Washington',69000,69274,'2002-07-28'),(30,'Raymond James Stadium','Tampa, Florida',65890,74512,'1998-09-20'),(31,'Nissan Stadium','Nashville, Tennessee',69143,69000,'1999-08-27'),(32,'FedExField','Landover, Maryland',82000,90910,'1997-09-14');
/*!40000 ALTER TABLE `stadium` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stats`
--

DROP TABLE IF EXISTS `stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stats` (
  `id` int NOT NULL AUTO_INCREMENT,
  `player_stats_id` int NOT NULL,
  `superbowl_wins` int NOT NULL DEFAULT '0',
  `sacks` int NOT NULL DEFAULT '0',
  `mvps` int NOT NULL DEFAULT '0',
  `catches` int NOT NULL DEFAULT '0',
  `throws` int NOT NULL DEFAULT '0',
  `yards` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `player_stats_id` (`player_stats_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stats`
--

LOCK TABLES `stats` WRITE;
/*!40000 ALTER TABLE `stats` DISABLE KEYS */;
INSERT INTO `stats` VALUES (1,5,0,48,0,0,3722,544),(2,7,0,0,0,0,0,345),(3,8,2,48,1,0,4455,147),(4,11,0,0,0,0,0,656),(5,20,0,23,1,0,3127,1206),(6,22,0,0,0,0,0,1018),(7,29,0,0,0,0,0,599),(8,33,0,38,0,0,3089,510),(9,38,0,46,0,0,3322,106),(10,41,0,0,0,0,0,1387),(11,45,0,38,0,0,3138,193),(12,47,0,0,0,0,0,213),(13,55,0,37,0,0,3494,73),(14,57,0,0,0,0,0,1137),(15,60,0,40,0,0,3827,141),(16,65,0,0,0,0,0,1494),(17,67,0,23,0,0,4902,277),(18,73,1,0,0,0,0,1357),(19,80,0,0,0,0,38,17),(20,81,0,0,0,0,0,1011),(21,86,0,11,0,0,685,151),(22,90,0,0,0,0,0,403),(23,94,1,36,2,0,4002,183),(24,99,0,0,0,0,0,1084),(25,105,0,0,0,0,0,1070),(26,108,0,44,0,0,3852,413),(27,115,0,27,0,0,2942,228),(28,118,0,0,0,0,0,1091),(29,123,0,0,0,0,0,1152),(30,126,0,0,0,0,0,20),(31,130,1,17,1,0,4031,218),(32,135,1,0,0,0,0,141),(33,139,1,29,0,0,4054,82),(34,143,0,0,0,0,0,1150),(35,148,0,0,0,923,0,510),(36,149,0,0,0,0,0,612),(37,154,0,22,0,0,4638,40),(38,159,0,0,0,0,0,857),(39,165,0,0,0,0,0,135),(40,166,0,40,0,0,3529,243),(41,172,0,28,0,0,3603,63),(42,176,0,0,0,0,0,1135),(43,184,6,27,3,0,4057,34),(44,188,1,0,0,0,0,912),(45,191,1,12,0,0,2979,0),(46,196,0,0,0,0,0,637),(47,205,0,38,0,0,3027,279),(48,211,0,0,0,0,0,1003),(49,217,0,33,0,0,3024,62),(50,219,0,0,0,0,0,789),(51,223,1,0,0,0,0,66),(52,224,1,37,0,0,4039,243),(53,238,0,0,0,0,0,209),(54,239,0,0,0,0,0,464),(55,245,2,36,0,0,3978,62),(56,248,0,0,0,0,0,623),(57,254,2,48,0,0,4110,342),(58,258,0,0,0,0,0,1230),(59,262,0,47,0,0,5109,250),(60,268,0,0,0,0,0,470),(61,280,0,31,0,0,2742,185),(62,283,0,0,0,0,0,1540),(63,285,0,15,0,0,1707,12),(64,289,0,0,1,0,0,898);
/*!40000 ALTER TABLE `stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team` (
  `id` int NOT NULL AUTO_INCREMENT,
  `team_name` varchar(30) NOT NULL,
  `colors` varchar(30) NOT NULL,
  `superbowl_wins` int NOT NULL DEFAULT '0',
  `nfc_afc_wins` int NOT NULL DEFAULT '0',
  `divisional_wins` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (1,'Arizona Cardinals','Red Black and Yellow',0,1,3),(2,'Atlanta Falcons','Red Black and Silver',0,2,4),(3,'Baltimore Ravens','Purple Black Gold and Red',2,2,6),(4,'Buffalo Bills','Red and Blue',0,4,10),(5,'Carolina Panthers','Blue Black and Silver',0,2,5),(6,'Chicago Bears','Navy and Orange',1,4,21),(7,'Cincinnati Bengals','Orange and Black',0,2,10),(8,'Cleveland Browns','Dark Brown and Orange',0,0,6),(9,'Dallas Cowboys','Blue and Silver',5,1,23),(10,'Denver Broncos','Broncos Orange and Navy',3,8,15),(11,'Detroit Lions','Honolulu Blue and Silver',0,4,4),(12,'Green Bay Packers','Dark Green and Gold',4,9,19),(13,'Houston Texans','Steel Blue and Battle Red',0,0,6),(14,'Indianapolis Colts','Speed Blue and Gray',0,1,6),(15,'Jacksonville Jaguars','Black Gold and Teal',0,0,2),(16,'Kansas City Chiefs','Red and Gold',2,1,12),(17,'Las Vegas Raiders','Jon Gruden',3,5,15),(18,'Los Angeles Chargers','Navy Blue Gold and Blue',0,1,15),(19,'Los Angeles Rams','Blue Gold and Yellow',1,3,15),(20,'Miami Dolphins','Aqua Orange and Blue',2,5,14),(21,'Minnesota Vikings','Purple and Gold',0,4,20),(22,'New England Patriots','Blue Red and Silver',6,11,22),(23,'New Orleans Saints','Old Gold and Black',1,1,6),(24,'New York Giants','Dark Blue Red and Gray',4,1,8),(25,'New York Jets','Gotham Green and Black',1,0,4),(26,'Philadelphia Eagles','Midnight Green and Silver',1,1,11),(27,'Pittsburgh Steelers','Gold Black Blue Red and Silver',6,8,23),(28,'San Francisco 49ers','49ers Red and Gold',5,4,20),(29,'Seattle Seahawks','Navy Green and Gray',0,1,8),(30,'Tampa Bay Buccaneers','Red and Bay Orange',1,1,3),(31,'Tennessee Titans','Blue Navy Red and Silver',0,1,3),(32,'Washington Redskins','Burgundy and Gold',3,1,9);
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'nfldatabase'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-11 11:12:55
