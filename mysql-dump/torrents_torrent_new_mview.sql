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
-- Table structure for table `torrent_new_mview`
--

DROP TABLE IF EXISTS `torrent_new_mview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `torrent_new_mview` (
  `torrent_id` int NOT NULL,
  `rarbg_url` varchar(150) DEFAULT NULL,
  `imdb_id` varchar(45) DEFAULT NULL,
  `title` varchar(150) DEFAULT NULL,
  `age_days` int DEFAULT NULL,
  PRIMARY KEY (`torrent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `torrent_new_mview`
--

LOCK TABLES `torrent_new_mview` WRITE;
/*!40000 ALTER TABLE `torrent_new_mview` DISABLE KEYS */;
INSERT INTO `torrent_new_mview` VALUES (1,'https://rarbg.to/torrent/z4sig7q','tt1838556','Honest Thief',98),(2,'https://rarbg.to/torrent/64zc72n','tt1838556','Honest Thief',98),(3,'https://rarbg.to/torrent/p352aty','tt6723592','Tenet',110),(4,'https://rarbg.to/torrent/b4a7mqw','tt6456326','Monsters of Man',21),(5,'https://rarbg.to/torrent/e97yamp','tt9689696','Wander',6),(6,'https://rarbg.to/torrent/24chsyz','tt6723592','Tenet',110),(7,'https://rarbg.to/torrent/f5m29it','tt9689696','Wander',6),(8,'https://rarbg.to/torrent/qpnbstl','tt6456326','Monsters of Man',21),(9,'https://rarbg.to/torrent/tkglf27','tt9264728','What Lies Below',-7),(10,'https://rarbg.to/torrent/y6fdhgs','tt10808832','Let Them All Talk',0),(11,'https://rarbg.to/torrent/zue4ox9','tt11681250','Godmothered',6),(12,'https://rarbg.to/torrent/afvm91k','tt10618286','Mank',27),(13,'https://rarbg.to/torrent/ashqkj1','tt6723592','Tenet',110),(14,'https://rarbg.to/torrent/5pil97e','tt9601220','Black Bear',6),(15,'https://rarbg.to/torrent/3c92l8z','tt1838556','Honest Thief',98),(16,'https://rarbg.to/torrent/nhv58qx','tt9689696','Wander',6),(17,'https://rarbg.to/torrent/468zam3','tt6723592','Tenet',110),(18,'https://rarbg.to/torrent/6zdyjbe','tt6723592','Tenet',110),(19,'https://rarbg.to/torrent/d3c5el2','tt10808832','Let Them All Talk',0),(20,'https://rarbg.to/torrent/g54wj2e','tt6456326','Monsters of Man',21),(21,'https://rarbg.to/torrent/qale4vm','tt1838556','Honest Thief',98),(22,'https://rarbg.to/torrent/294ndwo','tt1838556','Honest Thief',98),(23,'https://rarbg.to/torrent/81965fl','tt9264728','What Lies Below',-7),(24,'https://rarbg.to/torrent/i2oy14k','tt7286456','Joker',435),(25,'https://rarbg.to/torrent/c2zplrj','tt9264728','What Lies Below',-7),(26,'https://rarbg.to/torrent/4atl1ny','tt1838556','Honest Thief',98),(27,'https://rarbg.to/torrent/rb59g2h','tt6456326','Monsters of Man',21),(28,'https://rarbg.to/torrent/p93vyfe','tt10618286','Mank',27),(29,'https://rarbg.to/torrent/sez6pad','tt11681250','Godmothered',6),(30,'https://rarbg.to/torrent/vqi1u8o','tt6723592','Tenet',110),(31,'https://rarbg.to/torrent/8ixrg72','tt10808832','Let Them All Talk',0),(32,'https://rarbg.to/torrent/xmleo15','tt11681250','Godmothered',6),(33,'https://rarbg.to/torrent/b3ghisw','tt9601220','Black Bear',6),(34,'https://rarbg.to/torrent/9ryzejm','tt10618286','Mank',27),(35,'https://rarbg.to/torrent/78ctzr5','tt10808832','Let Them All Talk',0),(36,'https://rarbg.to/torrent/ybex3f1','tt7983894','Ammonite',27),(37,'https://rarbg.to/torrent/93g1zjt','tt6723592','Tenet',110),(38,'https://rarbg.to/torrent/wvqoacz','tt0095016','Die Hard',11836),(39,'https://rarbg.to/torrent/dfnbkvr','tt6723592','Tenet',110),(40,'https://rarbg.to/torrent/ov4dqwb','tt9695722','急先锋',71),(41,'https://rarbg.to/torrent/9b5lwyo','tt6456326','Monsters of Man',21),(42,'https://rarbg.to/torrent/hwtcfib','tt0372784','Batman Begins',5662),(43,'https://rarbg.to/torrent/abwfnrh','tt1838556','Honest Thief',98),(44,'https://rarbg.to/torrent/s4dnzm7','tt9624766','Jiu Jitsu',20),(45,'https://rarbg.to/torrent/4crtxuz','tt5363618','Sound of Metal',20),(46,'https://rarbg.to/torrent/ykpx9t3','tt10808832','Let Them All Talk',0),(47,'https://rarbg.to/torrent/vkapjio','tt0112864','Die Hard: With a Vengeance',9337),(48,'https://rarbg.to/torrent/dn59iul','tt0337978','Live Free or Die Hard',4922),(49,'https://rarbg.to/torrent/mtyhvg3','tt1345836','The Dark Knight Rises',3069),(50,'https://rarbg.to/torrent/rgbhuem','tt0468569','The Dark Knight',4530),(51,'https://rarbg.to/torrent/9vk3xsa','tt6842770','Wild Mountain Thyme',-1),(52,'https://rarbg.to/torrent/jtxg3l9','tt1606378','A Good Day to Die Hard',2864),(54,'https://rarbg.to/torrent/jdtknmb','tt0099423','Die Hard 2',11119),(55,'https://rarbg.to/torrent/g3se4uq','tt9601220','Black Bear',6),(56,'https://rarbg.to/torrent/xejck1w','tt0071562','The Godfather: Part II',16792),(57,'https://rarbg.to/torrent/j5b92wu','tt0093409','Lethal Weapon',12333),(58,'https://rarbg.to/torrent/l7xrejc','tt9689696','Wander',6),(59,'https://rarbg.to/torrent/tslgjui','tt11140488','The Wolf of Snow Hollow',0),(60,'https://rarbg.to/torrent/2qzu9j8','tt9624766','Jiu Jitsu',20),(61,'https://rarbg.to/torrent/8bnyc4s','tt0068646','The Godfather',17803),(62,'https://rarbg.to/torrent/omu7kya','tt11140488','The Wolf of Snow Hollow',0),(65,'https://rarbg.to/torrent/4yi2n6e','tt0097733','Lethal Weapon 2',11479),(66,'https://rarbg.to/torrent/r6412fj','tt1838556','Honest Thief',98),(67,'https://rarbg.to/torrent/js3cw9x','tt7286456','Joker',435),(68,'https://rarbg.to/torrent/c2tvfrn','tt9601220','Black Bear',6),(69,'https://rarbg.to/torrent/wrc56at','tt6723592','Tenet',110),(70,'https://rarbg.to/torrent/5kypu9b','tt0099674','The Godfather: Part III',10943),(71,'https://rarbg.to/torrent/i2wm4jo','tt0099674','The Godfather: Part III',10943),(72,'https://rarbg.to/torrent/3fdjzvg','tt7286456','Joker',435),(73,'https://rarbg.to/torrent/vijs5nz','tt9695722','急先锋',71),(74,'https://rarbg.to/torrent/5plj6vg','tt1838556','Honest Thief',98),(75,'https://rarbg.to/torrent/nz4y8sd','tt0096895','Batman',11493),(76,'https://rarbg.to/torrent/l9xku74','tt5918982','Possessor Uncut',69),(77,'https://rarbg.to/torrent/lgfwyz1','tt0103776','Batman Returns',10401),(78,'https://rarbg.to/torrent/h6afsez','tt0099423','Die Hard 2',11119),(79,'https://rarbg.to/torrent/z9sq3fa','tt6842770','Wild Mountain Thyme',-1),(80,'https://rarbg.to/torrent/x4ef3ci','tt0093409','Lethal Weapon',12333),(83,'https://rarbg.to/torrent/gyhpbqt','tt0112462','Batman Forever',9309),(84,'https://rarbg.to/torrent/m3tbso4','tt1606378','A Good Day to Die Hard',2864),(85,'https://rarbg.to/torrent/dfgeb3n','tt0122151','Lethal Weapon 4',8189),(86,'https://rarbg.to/torrent/5kpiyoa','tt11681250','Godmothered',6),(87,'https://rarbg.to/torrent/o7zax31','tt9264728','What Lies Below',-7),(88,'https://rarbg.to/torrent/zqert43','tt0104714','Lethal Weapon 3',10436),(89,'https://rarbg.to/torrent/frw5i24','tt0099674','The Godfather: Part III',10943),(92,'https://rarbg.to/torrent/xn1lke6','tt8784956','Ava',161),(93,'https://rarbg.to/torrent/1lnwuko','tt5363618','Sound of Metal',20),(94,'https://rarbg.to/torrent/qygpjbl','tt12837230','Alabama Snake',1),(95,'https://rarbg.to/torrent/pa3r425','tt0099653','Ghost',11109),(96,'https://rarbg.to/torrent/yp4tu1g','tt0099674','The Godfather: Part III',10943),(97,'https://rarbg.to/torrent/nmg7a64','tt0259822','.45',5124),(98,'https://rarbg.to/torrent/rzjexlt','tt0112864','Die Hard: With a Vengeance',9337),(99,'https://rarbg.to/torrent/dt13py9','tt13017992','Mariah Carey\'s Magical Christmas Special',6),(100,'https://rarbg.to/torrent/uri9lm5','tt0097733','Lethal Weapon 2',11479);
/*!40000 ALTER TABLE `torrent_new_mview` ENABLE KEYS */;
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
