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
-- Table structure for table `keyword`
--

DROP TABLE IF EXISTS `keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `keyword` (
  `id` int NOT NULL,
  `keyword` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keyword`
--

LOCK TABLES `keyword` WRITE;
/*!40000 ALTER TABLE `keyword` DISABLE KEYS */;
INSERT INTO `keyword` VALUES (1,'airport'),(2,'brutal violence'),(3,'paranoia'),(4,'courthouse'),(5,'europe'),(6,'fbi agent'),(7,'action hero'),(8,'haunted by the past'),(9,'screenwriter'),(10,'diplomatic immunity'),(11,'spiritism'),(12,'money transfer'),(13,'martial arts'),(14,'terrorist'),(15,'car chase'),(16,'beretta'),(17,'metacinema'),(18,'orson welles'),(19,'rookie cop'),(20,'tragic hero'),(21,'yo'),(22,'lapd'),(23,'robin'),(24,'vault'),(25,'dorset'),(26,'dulles international airport'),(27,'apartment'),(28,'bird cage'),(29,'lesbian couple'),(30,'drummer'),(31,'sabotage'),(32,'dump truck'),(33,'fairy godmother'),(34,'villainess'),(35,'heaven'),(36,'sign languages'),(37,'fighting'),(38,'tv host'),(39,'assassination'),(40,'hostage'),(41,'1940s'),(42,'hallucination'),(43,'based on comic'),(44,'rise to power'),(45,'air traffic control'),(46,'riddle'),(47,'corrupt politician'),(48,'aftercreditsstinger'),(49,'chemical'),(50,'patriarch'),(51,'period drama'),(52,'full moon'),(53,'revenge'),(54,'criminal'),(55,'rogue'),(56,'bomb'),(57,'graphic violence'),(58,'vigilante'),(59,'imax'),(60,'loss of loved one'),(61,'lawyer'),(62,'chaos'),(63,'lesbian relationship'),(64,'tallinn'),(65,'swat team'),(66,'ex soldier'),(67,'villain'),(68,'spy thriller'),(69,'helicopter'),(70,'ninja'),(71,'one night'),(72,'based on play or musical'),(73,'christmas'),(74,'sequel'),(75,'fortune teller'),(76,'1980s'),(77,'street gang'),(78,'officer involved shooting'),(79,'self-destruction'),(80,'gang'),(81,'mafia'),(82,'vatican'),(83,'lesbian romance'),(84,'secret identity'),(85,'flashback'),(86,'subway'),(87,'norway'),(88,'dystopia'),(89,'destruction'),(90,'russia'),(91,'brutality'),(92,'sadism'),(93,'millionaire'),(94,'ship'),(95,'aqueduct'),(96,'federal reserve bank'),(97,'gore'),(98,'triangle'),(99,'deaf'),(100,'super power'),(101,'revolver'),(102,'kiev russia'),(103,'addiction'),(104,'monster'),(105,'dc comics'),(106,'partner'),(107,'death of wife'),(108,'clown'),(109,'criminal past'),(110,'scarecrow'),(111,'organized crime'),(112,'movie business'),(113,'walkie talkie'),(114,'falling down stairs'),(115,'homicide detective'),(116,'cyber terrorism'),(117,'writer\'s block'),(118,'new mexico'),(119,'one man army'),(120,'confession'),(121,'pottery'),(122,'death'),(123,'fire engine'),(124,'society'),(125,'mystery'),(126,'origin story'),(127,'private detective'),(128,'hell'),(129,'rose'),(130,'crime family'),(131,'based on novel or book'),(132,'blood'),(133,'heist'),(134,'ambush'),(135,'flood'),(136,'italy'),(137,'murder'),(138,'new york city'),(139,'detective'),(140,'ex-cop'),(141,'afterlife'),(142,'based on magazine, newspaper or article'),(143,'christianity'),(144,'money laundering'),(145,'mother son relationship'),(146,'cuba'),(147,'deformed'),(148,'rivalry'),(149,'corruption'),(150,'passion'),(151,'ptsd'),(152,'simon says'),(153,'evil doctor'),(154,'cover-up'),(155,'psychologist'),(156,'lake house'),(157,'police detective'),(158,'mumbai (bombay), india'),(159,'crime fighter'),(160,'tommy gun'),(161,'car accident'),(162,'terrorism'),(163,'burglar'),(164,'double life'),(165,'commando'),(166,'recklessness'),(167,'daughter'),(168,'biography'),(169,'criminal mastermind'),(170,'small town'),(171,'christmas tree'),(172,'deception'),(173,'19th century'),(174,'bank robber'),(175,'shootout'),(176,'crime scene'),(177,'escape'),(178,'tech noir'),(179,'fight'),(180,'italian american'),(181,'holiday'),(182,'taxi'),(183,'cabin in the woods'),(184,'disfigurement'),(185,'super villain'),(186,'knocked out'),(187,'melancholy'),(188,'assassination attempt'),(189,'city'),(190,'filmmaking'),(191,'pope'),(192,'utah'),(193,'lgbt'),(194,'moscow, russia'),(195,'grief'),(196,'los angeles, california'),(197,'pregnancy'),(198,'arms dealer'),(199,'hand grenade'),(200,'hollywood'),(201,'espionage'),(202,'transport of prisoners'),(203,'trust'),(204,'district attorney'),(205,'police'),(206,'author'),(207,'buddy cop'),(208,'gotham city'),(209,'journalist'),(210,'snow'),(211,'fighting crime'),(212,'adapted into play or musical'),(213,'time bomb'),(214,'evil circus'),(215,'dual identity'),(216,'investigation'),(217,'batmobile'),(218,'machine'),(219,'horror'),(220,'superhero'),(221,'mob boss'),(222,'broken neck'),(223,'house guest'),(224,'obsession'),(225,'kidnapping'),(226,'alcoholic'),(227,'tied up'),(228,'dark hero'),(229,'heavy metal'),(230,'church'),(231,'time'),(232,'violence'),(233,'man punches woman'),(234,'criminal underworld'),(235,'explosion'),(236,'werewolf'),(237,'s.w.a.t.'),(238,'fossil'),(239,'gun'),(240,'cat burglar'),(241,'house fire'),(242,'corporation'),(243,'robbery'),(244,'female friendship'),(245,'fistfight'),(246,'terrorist attack'),(247,'washington d.c.'),(248,'gold'),(249,'jiu-jitsu'),(250,'unfulfilled love'),(251,'mobile'),(252,'clown makeup'),(253,'bloody body of child'),(254,'conspiracy'),(255,'fbi'),(256,'anarchy'),(257,'1950s'),(258,'paleontologist'),(259,'catwoman'),(260,'joker'),(261,'dream'),(262,'praise'),(263,'hacker'),(264,'master villain'),(265,'subway train'),(266,'writer'),(267,'dark comedy'),(268,'cia'),(269,'father figure'),(270,'cop'),(271,'snowmobile'),(272,'undercover'),(273,'true crime'),(274,'love at first sight'),(275,'divorce'),(276,'1930s'),(277,'mental illness'),(278,'suburb'),(279,'batman'),(280,'control'),(281,'agent');
/*!40000 ALTER TABLE `keyword` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-10 18:16:05
