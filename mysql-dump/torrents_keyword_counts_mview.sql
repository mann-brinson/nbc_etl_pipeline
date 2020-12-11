-- MySQL dump 10.13  Distrib 8.0.19, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: torrents
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `keyword_counts_mview`
--

DROP TABLE IF EXISTS `keyword_counts_mview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `keyword_counts_mview` (
  `keyword_id` int NOT NULL,
  `keyword` varchar(150) DEFAULT NULL,
  `count_torrents` int DEFAULT NULL,
  PRIMARY KEY (`keyword_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keyword_counts_mview`
--

LOCK TABLES `keyword_counts_mview` WRITE;
/*!40000 ALTER TABLE `keyword_counts_mview` DISABLE KEYS */;
INSERT INTO `keyword_counts_mview` VALUES (1,'airport',4),(2,'brutal violence',4),(3,'paranoia',4),(4,'courthouse',4),(5,'europe',5),(6,'fbi agent',8),(7,'action hero',12),(8,'haunted by the past',4),(9,'screenwriter',4),(10,'diplomatic immunity',4),(11,'spiritism',4),(12,'money transfer',4),(13,'martial arts',4),(14,'terrorist',8),(15,'car chase',12),(16,'beretta',4),(17,'metacinema',4),(18,'orson welles',4),(19,'rookie cop',4),(20,'tragic hero',12),(21,'yo',4),(22,'lapd',12),(23,'robin',4),(24,'vault',4),(25,'dorset',4),(26,'dulles international airport',4),(27,'apartment',4),(28,'bird cage',4),(29,'lesbian couple',4),(30,'drummer',4),(31,'sabotage',4),(32,'dump truck',4),(33,'fairy godmother',4),(34,'villainess',4),(35,'heaven',4),(36,'sign languages',4),(37,'fighting',4),(38,'tv host',4),(39,'assassination',4),(40,'hostage',12),(41,'1940s',5),(42,'hallucination',4),(43,'based on comic',16),(44,'rise to power',5),(45,'air traffic control',4),(46,'riddle',8),(47,'corrupt politician',4),(48,'aftercreditsstinger',4),(49,'chemical',4),(50,'patriarch',5),(51,'period drama',4),(52,'full moon',4),(53,'revenge',8),(54,'criminal',4),(55,'rogue',4),(56,'bomb',12),(57,'graphic violence',4),(58,'vigilante',16),(59,'imax',8),(60,'loss of loved one',13),(61,'lawyer',13),(62,'chaos',4),(63,'lesbian relationship',4),(64,'tallinn',4),(65,'swat team',8),(66,'ex soldier',4),(67,'villain',4),(68,'spy thriller',4),(69,'helicopter',12),(70,'ninja',4),(71,'one night',4),(72,'based on play or musical',4),(73,'christmas',12),(74,'sequel',12),(75,'fortune teller',4),(76,'1980s',8),(77,'street gang',4),(78,'officer involved shooting',4),(79,'self-destruction',4),(80,'gang',4),(81,'mafia',9),(82,'vatican',4),(83,'lesbian romance',4),(84,'secret identity',12),(85,'flashback',8),(86,'subway',4),(87,'norway',4),(88,'dystopia',4),(89,'destruction',4),(90,'russia',4),(91,'brutality',4),(92,'sadism',4),(93,'millionaire',4),(94,'ship',4),(95,'aqueduct',4),(96,'federal reserve bank',4),(97,'gore',4),(98,'triangle',4),(99,'deaf',4),(100,'super power',20),(101,'revolver',4),(102,'kiev russia',4),(103,'addiction',4),(104,'monster',4),(105,'dc comics',28),(106,'partner',4),(107,'death of wife',4),(108,'clown',4),(109,'criminal past',4),(110,'scarecrow',4),(111,'organized crime',9),(112,'movie business',4),(113,'walkie talkie',4),(114,'falling down stairs',4),(115,'homicide detective',4),(116,'cyber terrorism',4),(117,'writer\'s block',4),(118,'new mexico',4),(119,'one man army',4),(120,'confession',4),(121,'pottery',4),(122,'death',4),(123,'fire engine',4),(124,'society',4),(125,'mystery',4),(126,'origin story',4),(127,'private detective',4),(128,'hell',4),(129,'rose',4),(130,'crime family',5),(131,'based on novel or book',13),(132,'blood',4),(133,'heist',4),(134,'ambush',4),(135,'flood',4),(136,'italy',13),(137,'murder',24),(138,'new york city',12),(139,'detective',4),(140,'ex-cop',4),(141,'afterlife',4),(142,'based on magazine, newspaper or article',4),(143,'christianity',4),(144,'money laundering',4),(145,'mother son relationship',4),(146,'cuba',4),(147,'deformed',4),(148,'rivalry',4),(149,'corruption',8),(150,'passion',4),(151,'ptsd',4),(152,'simon says',4),(153,'evil doctor',4),(154,'cover-up',4),(155,'psychologist',4),(156,'lake house',4),(157,'police detective',8),(158,'mumbai (bombay), india',4),(159,'crime fighter',20),(160,'tommy gun',4),(161,'car accident',4),(162,'terrorism',8),(163,'burglar',4),(164,'double life',8),(165,'commando',4),(166,'recklessness',4),(167,'daughter',4),(168,'biography',8),(169,'criminal mastermind',8),(170,'small town',8),(171,'christmas tree',4),(172,'deception',4),(173,'19th century',4),(174,'bank robber',4),(175,'shootout',12),(176,'crime scene',8),(177,'escape',4),(178,'tech noir',4),(179,'fight',4),(180,'italian american',13),(181,'holiday',4),(182,'taxi',4),(183,'cabin in the woods',4),(184,'disfigurement',4),(185,'super villain',8),(186,'knocked out',4),(187,'melancholy',4),(188,'assassination attempt',4),(189,'city',4),(190,'filmmaking',4),(191,'pope',4),(192,'utah',4),(193,'lgbt',4),(194,'moscow, russia',4),(195,'grief',4),(196,'los angeles, california',8),(197,'pregnancy',4),(198,'arms dealer',4),(199,'hand grenade',4),(200,'hollywood',4),(201,'espionage',4),(202,'transport of prisoners',4),(203,'trust',4),(204,'district attorney',8),(205,'police',4),(206,'author',4),(207,'buddy cop',12),(208,'gotham city',4),(209,'journalist',4),(210,'snow',4),(211,'fighting crime',4),(212,'adapted into play or musical',4),(213,'time bomb',4),(214,'evil circus',4),(215,'dual identity',4),(216,'investigation',4),(217,'batmobile',4),(218,'machine',4),(219,'horror',4),(220,'superhero',24),(221,'mob boss',5),(222,'broken neck',4),(223,'house guest',4),(224,'obsession',4),(225,'kidnapping',8),(226,'alcoholic',4),(227,'tied up',4),(228,'dark hero',4),(229,'heavy metal',4),(230,'church',4),(231,'time',4),(232,'violence',28),(233,'man punches woman',4),(234,'criminal underworld',4),(235,'explosion',8),(236,'werewolf',4),(237,'s.w.a.t.',4),(238,'fossil',4),(239,'gun',4),(240,'cat burglar',4),(241,'house fire',4),(242,'corporation',4),(243,'robbery',4),(244,'female friendship',4),(245,'fistfight',8),(246,'terrorist attack',4),(247,'washington d.c.',4),(248,'gold',4),(249,'jiu-jitsu',4),(250,'unfulfilled love',4),(251,'mobile',4),(252,'clown makeup',4),(253,'bloody body of child',4),(254,'conspiracy',4),(255,'fbi',12),(256,'anarchy',4),(257,'1950s',5),(258,'paleontologist',4),(259,'catwoman',4),(260,'joker',8),(261,'dream',4),(262,'praise',4),(263,'hacker',4),(264,'master villain',4),(265,'subway train',4),(266,'writer',4),(267,'dark comedy',8),(268,'cia',4),(269,'father figure',4),(270,'cop',4),(271,'snowmobile',4),(272,'undercover',4),(273,'true crime',4),(274,'love at first sight',5),(275,'divorce',4),(276,'1930s',4),(277,'mental illness',4),(278,'suburb',4),(279,'batman',4),(280,'control',4),(281,'agent',4);
/*!40000 ALTER TABLE `keyword_counts_mview` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-10 19:33:52
