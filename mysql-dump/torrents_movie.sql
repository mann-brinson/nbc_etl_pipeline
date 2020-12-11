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
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie` (
  `tmdb_id` int NOT NULL,
  `imdb_id` varchar(45) DEFAULT NULL,
  `title` varchar(150) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  PRIMARY KEY (`tmdb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (155,'tt0468569','The Dark Knight','2008-07-16'),(238,'tt0068646','The Godfather','1972-03-14'),(240,'tt0071562','The Godfather: Part II','1974-12-20'),(242,'tt0099674','The Godfather: Part III','1990-12-25'),(251,'tt0099653','Ghost','1990-07-12'),(268,'tt0096895','Batman','1989-06-23'),(272,'tt0372784','Batman Begins','2005-06-10'),(364,'tt0103776','Batman Returns','1992-06-19'),(414,'tt0112462','Batman Forever','1995-06-16'),(562,'tt0095016','Die Hard','1988-07-15'),(941,'tt0093409','Lethal Weapon','1987-03-06'),(942,'tt0097733','Lethal Weapon 2','1989-07-07'),(943,'tt0104714','Lethal Weapon 3','1992-05-15'),(944,'tt0122151','Lethal Weapon 4','1998-07-10'),(1571,'tt0337978','Live Free or Die Hard','2007-06-20'),(1572,'tt0112864','Die Hard: With a Vengeance','1995-05-19'),(1573,'tt0099423','Die Hard 2','1990-07-02'),(14062,'tt0259822','.45','2006-11-30'),(47964,'tt1606378','A Good Day to Die Hard','2013-02-06'),(49026,'tt1345836','The Dark Knight Rises','2012-07-16'),(435615,'tt5918982','Possessor Uncut','2020-10-02'),(475557,'tt7286456','Joker','2019-10-02'),(502033,'tt5363618','Sound of Metal','2020-11-20'),(539885,'tt8784956','Ava','2020-07-02'),(553604,'tt1838556','Honest Thief','2020-09-03'),(568467,'tt7983894','Ammonite','2020-11-13'),(577922,'tt6723592','Tenet','2020-08-22'),(590706,'tt9624766','Jiu Jitsu','2020-11-20'),(604822,'tt9695722','急先锋','2020-09-30'),(614560,'tt10618286','Mank','2020-11-13'),(623856,'tt10808832','Let Them All Talk','2020-12-10'),(624788,'tt9601220','Black Bear','2020-12-04'),(628333,'tt6842770','Wild Mountain Thyme','2020-12-11'),(646593,'tt9689696','Wander','2020-12-04'),(652004,'tt11140488','The Wolf of Snow Hollow','2020-12-10'),(662546,'tt11681250','Godmothered','2020-12-04'),(716703,'tt9264728','What Lies Below','2020-12-17'),(733317,'tt6456326','Monsters of Man','2020-11-19'),(766238,'tt12837230','Alabama Snake','2020-12-09'),(766319,'tt13017992','Mariah Carey\'s Magical Christmas Special','2020-12-04');
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
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
