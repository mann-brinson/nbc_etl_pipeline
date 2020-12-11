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
-- Table structure for table `torrent_full_mview`
--

DROP TABLE IF EXISTS `torrent_full_mview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `torrent_full_mview` (
  `torr_id` int NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `rarbg_added` datetime DEFAULT NULL,
  `size` float DEFAULT NULL,
  `size_units` varchar(5) DEFAULT NULL,
  `n_seed` int DEFAULT NULL,
  `n_leech` int DEFAULT NULL,
  `rarbg_url` varchar(150) DEFAULT NULL,
  `infohash` varchar(45) DEFAULT NULL,
  `imdb_id` varchar(45) NOT NULL,
  `title` varchar(150) DEFAULT NULL,
  `n_keywords` int DEFAULT NULL,
  PRIMARY KEY (`torr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `torrent_full_mview`
--

LOCK TABLES `torrent_full_mview` WRITE;
/*!40000 ALTER TABLE `torrent_full_mview` DISABLE KEYS */;
INSERT INTO `torrent_full_mview` VALUES (1,'Honest.Thief.2020.1080p.BluRay.x264.DTS-MT','2020-12-05 12:22:34',9.16,'GB',3238,1077,'https://rarbg.to/torrent/z4sig7q','04603e468b1334ad1878b8746bc69f4bb4991607','tt1838556','Honest Thief',20),(2,'Honest.Thief.2020.1080p.BluRay.H264.AAC-RARBG','2020-12-05 14:33:05',1.88,'GB',2697,683,'https://rarbg.to/torrent/64zc72n','fb5170544812769b2b2c35bb9d038c1e03c10928','tt1838556','Honest Thief',20),(3,'Tenet.2020.IMAX.1080p.BluRay.H264.AAC-RARBG','2020-12-04 06:12:08',2.86,'GB',2449,669,'https://rarbg.to/torrent/p352aty','8110fb357235905d66bfbd877af0a2db4b4e03d0','tt6723592','Tenet',52),(4,'Monsters.of.Man.2020.1080p.WEB-DL.DD5.1.H264-FGT','2020-12-08 08:23:15',4.52,'GB',2393,519,'https://rarbg.to/torrent/b4a7mqw','4389a9c3a4ca85eee41f8facded02c0cb7d659fb','tt6456326',NULL,NULL),(5,'Wander.2020.1080p.AMZN.WEBRip.DDP5.1.x264-NTG','2020-12-04 10:14:22',4.7,'GB',1627,253,'https://rarbg.to/torrent/e97yamp','e6a871edf5c0c430c742117f6f9093deff0b7e33','tt9689696','Wander',48),(6,'Tenet.2020.IMAX.1080p.BluRay.x264.DTS-FGT','2020-12-04 05:13:20',13.62,'GB',1597,426,'https://rarbg.to/torrent/24chsyz','2c20de5e802aaa1a943b5cc0aa27f2dc1802e418','tt6723592','Tenet',52),(7,'Wander.2020.1080p.WEBRip.x264-RARBG','2020-12-04 12:20:05',1.77,'GB',1303,442,'https://rarbg.to/torrent/f5m29it','ce5b8aa78168c7714caf89dcb3d45fa78bafc404','tt9689696','Wander',48),(8,'Monsters.of.Man.2020.WEB-DL.x264-FGT','2020-12-08 09:06:10',1.25,'GB',1124,244,'https://rarbg.to/torrent/qpnbstl','9fee3e97ea3db2157af5d9b080bbc6f25497aeb4','tt6456326',NULL,NULL),(9,'What.Lies.Below.2020.1080p.AMZN.WEBRip.DDP5.1.x264-NTG','2020-12-04 10:12:40',5.69,'GB',1031,211,'https://rarbg.to/torrent/tkglf27','66ebb3df4d8a6fbd081ce749d025148d336ea975','tt9264728','What Lies Below',4),(10,'Let.Them.All.Talk.2020.1080p.WEB.H264-NAISU','2020-12-10 09:41:06',6.79,'GB',949,761,'https://rarbg.to/torrent/y6fdhgs','697f8fac7c7afee9a62f581373559206f70b212e','tt10808832','Let Them All Talk',12),(11,'Godmothered.2020.1080p.DSNP.WEBRip.DDP5.1.Atmos.x264-NOGRP','2020-12-04 10:43:15',6.14,'GB',963,160,'https://rarbg.to/torrent/zue4ox9','910bf3077501827aeae0576a665cef7f277e7032','tt11681250','Godmothered',8),(12,'Mank.2020.1080p.WEB.H264-STRONTiUM','2020-12-04 09:13:30',6.45,'GB',872,188,'https://rarbg.to/torrent/afvm91k','f4ad140db9fa1045d7087e4f6a2cf4ef50f82aff','tt10618286','Mank',28),(13,'Tenet.2020.IMAX.1080p.BluRay.x264.DTS-HD.MA.5.1-FGT','2020-12-04 05:13:41',16.34,'GB',806,161,'https://rarbg.to/torrent/ashqkj1','b7da7c8a44903ed76c64c26dc3b28cdf09e395c0','tt6723592','Tenet',52),(14,'Black.Bear.2020.1080p.AMZN.WEBRip.DDP5.1.x264-NOGRP','2020-12-04 10:09:29',7.05,'GB',786,64,'https://rarbg.to/torrent/5pil97e','730c42c9b03a652e4a131a8c3304e90327fbbd1f','tt9601220','Black Bear',36),(15,'Honest.Thief.2020.720p.BluRay.H264.AAC-RARBG','2020-12-05 13:26:06',1.19,'GB',725,111,'https://rarbg.to/torrent/3c92l8z','57357da827cf093359e07b2bc90d80a9a74569f8','tt1838556','Honest Thief',20),(16,'Wander.2020.WEBRip.x264-ION10','2020-12-04 11:27:06',905.23,'MB',712,177,'https://rarbg.to/torrent/nhv58qx','74593d5c63a4fc3fffd9150000463065222229d5','tt9689696','Wander',48),(17,'Tenet.2020.IMAX.720p.BluRay.H264.AAC-RARBG','2020-12-04 04:38:05',1.82,'GB',665,138,'https://rarbg.to/torrent/468zam3','a08b60f325a546728e553a383f7a11afc6ecdec6','tt6723592','Tenet',52),(18,'Tenet.2020.IMAX.2160p.BluRay.REMUX.HEVC.DTS-HD.MA.5.1-FGT','2020-12-05 13:20:01',76.41,'GB',602,595,'https://rarbg.to/torrent/6zdyjbe','1ef85c25a91a507bd86c447ff948d00ea2445b49','tt6723592','Tenet',52),(19,'Let.Them.All.Talk.2020.1080p.WEBRip.x264-RARBG','2020-12-10 13:27:07',2.15,'GB',579,408,'https://rarbg.to/torrent/d3c5el2','27a408c676bc13538630cb75ad3cbdc6c6d4093c','tt10808832','Let Them All Talk',12),(20,'Monsters.of.Man.2020.1080p.WEBRip.x264-RARBG','2020-12-08 10:42:09',2.51,'GB',578,107,'https://rarbg.to/torrent/g54wj2e','c9ebce21254a730919442a1acdb04398e9635bf8','tt6456326',NULL,NULL),(21,'Honest.Thief.2020.BRRip.XviD.MP3-XVID','2020-12-05 12:42:11',0.98,'GB',523,84,'https://rarbg.to/torrent/qale4vm','4ff35cf0e37dce1746cc28cf69cfd4eeba073848','tt1838556','Honest Thief',20),(22,'Honest.Thief.2020.720p.BluRay.x264.DTS-MT','2020-12-05 14:08:18',3.67,'GB',488,120,'https://rarbg.to/torrent/294ndwo','adc95c4e7d360619dd12cc41fa584105e824c7b3','tt1838556','Honest Thief',20),(23,'What.Lies.Below.2020.WEBRip.x264-ION10','2020-12-04 11:38:06',855.23,'MB',427,69,'https://rarbg.to/torrent/81965fl','58a1c26c464b22d456ea5e80ce479e8d0ef2f0e4','tt9264728','What Lies Below',4),(24,'Joker.2019.1080p.BluRay.H264.AAC-RARBG','2020-12-10 16:56:31',2.32,'GB',408,221,'https://rarbg.to/torrent/i2oy14k','17542bd7910657fd8a724de63f77a9064b893532','tt7286456','Joker',80),(25,'What.Lies.Below.2020.1080p.WEBRip.x264-RARBG','2020-12-04 12:37:06',1.67,'GB',421,75,'https://rarbg.to/torrent/c2zplrj','40d3c4616c930bf954bcabc4a8702e99f428cf03','tt9264728','What Lies Below',4),(26,'Honest.Thief.2020.1080p.BluRay.x264.DTS-HD.MA.5.1-MT','2020-12-05 12:22:24',10.34,'GB',409,81,'https://rarbg.to/torrent/4atl1ny','305884b31d1c22fc479bd6269b91f465a83850b3','tt1838556','Honest Thief',20),(27,'Monsters.of.Man.2020.1080p.AMZN.WEBRip.DDP5.1.x264-NTG','2020-12-08 11:03:52',7.02,'GB',399,73,'https://rarbg.to/torrent/rb59g2h','14d3eed405ec973d51320469f4b9e45243a428c4','tt6456326',NULL,NULL),(28,'Mank.2020.1080p.WEBRip.x264-RARBG','2020-12-04 11:12:08',2.53,'GB',393,101,'https://rarbg.to/torrent/p93vyfe','fd971cf7058e6900cac208a32e8a6dfaa3430be7','tt10618286','Mank',28),(29,'Godmothered.2020.WEBRip.x264-ION10','2020-12-04 11:16:07',1.04,'GB',393,59,'https://rarbg.to/torrent/sez6pad','9d16a2252bfec452ee8371fb6bfa6466dafe23c5','tt11681250','Godmothered',8),(30,'Tenet.2020.IMAX.1080p.BluRay.REMUX.AVC.DTS-HD.MA.5.1-FGT','2020-12-04 03:06:10',40.74,'GB',386,98,'https://rarbg.to/torrent/vqi1u8o','b74e8278fa3208a2692222343654ab193b738cb2','tt6723592','Tenet',52),(31,'Let.Them.All.Talk.2020.WEBRip.x264-ION10','2020-12-10 12:14:09',1.07,'GB',355,243,'https://rarbg.to/torrent/8ixrg72','42ca70681fc4ac5e31adbaf491f00f5da425e47a','tt10808832','Let Them All Talk',12),(32,'Godmothered.2020.1080p.WEBRip.x264-RARBG','2020-12-04 12:48:12',2.09,'GB',370,77,'https://rarbg.to/torrent/xmleo15','45e28a0939bd922bd396f5b6a2a11338ed9cd894','tt11681250','Godmothered',8),(33,'Black.Bear.2020.1080p.WEBRip.x264-RARBG','2020-12-04 12:44:08',2.02,'GB',307,33,'https://rarbg.to/torrent/b3ghisw','d7e543afeba28b1e627252d092af14bda99c2448','tt9601220','Black Bear',36),(34,'Mank.2020.WEBRip.x264-ION10','2020-12-04 10:04:08',1.27,'GB',278,92,'https://rarbg.to/torrent/9ryzejm','aa9fb0e3168d524310727a2fd8aab282400c5ad5','tt10618286','Mank',28),(35,'Let.Them.All.Talk.2020.WEBRip.XviD.MP3-XVID','2020-12-10 11:42:06',906.89,'MB',269,146,'https://rarbg.to/torrent/78ctzr5','043023a4a044a0e8efc0b7a0d75815f916463c96','tt10808832','Let Them All Talk',12),(36,'Ammonite.2020.1080p.WEBRip.x264-RARBG','2020-12-03 18:03:55',2.25,'GB',252,81,'https://rarbg.to/torrent/ybex3f1','8d234133b1947fb0127e871917a39d3c3bc1b451','tt7983894','Ammonite',40),(37,'Tenet.2020.IMAX.2160p.BluRay.HEVC.DTS-HD.MA.5.1-ESiR','2020-12-05 13:19:45',82.54,'GB',219,257,'https://rarbg.to/torrent/93g1zjt','cd7792f97a7a7431d18cf184df8aeae0faae837d','tt6723592','Tenet',52),(38,'Die.Hard.1988.1080p.BluRay.H264.AAC-RARBG','2020-12-10 00:01:13',2.52,'GB',237,59,'https://rarbg.to/torrent/wvqoacz','a9c0f8ceb1680717dff769d743efa997cd790906','tt0095016','Die Hard',64),(39,'Tenet.2020.IMAX.720p.BluRay.x264.DTS-FGT','2020-12-04 04:26:04',7.35,'GB',227,44,'https://rarbg.to/torrent/dfnbkvr','5c4247c80a06992d96b16a97458dbc9bd9233599','tt6723592','Tenet',52),(40,'Vanguard.2020.CHINESE.1080p.WEB-DL.H264.DD5.1-FGT','2020-12-09 15:19:20',3.72,'GB',226,54,'https://rarbg.to/torrent/ov4dqwb','562248244b7079ce219a8db1487bbfb57468bfbf','tt9695722',NULL,NULL),(41,'Monsters.of.Man.2020.WEB-DL.XviD.MP3-FGT','2020-12-08 08:50:44',1.84,'GB',210,44,'https://rarbg.to/torrent/9b5lwyo','a47dffc98b4b455bc154ace0e09c542ecbb62dc2','tt6456326',NULL,NULL),(42,'Batman.Begins.2005.REMASTERED.1080p.BluRay.H264.AAC-RARBG','2020-12-10 16:40:32',2.67,'GB',191,229,'https://rarbg.to/torrent/hwtcfib','28d5ccb6f281bfdcae40fd68e1c3021b2cf67f7b','tt0372784','Batman Begins',72),(43,'Honest.Thief.2020.BRRip.XviD.AC3-XVID','2020-12-05 12:45:11',1.16,'GB',211,27,'https://rarbg.to/torrent/abwfnrh','63538441d6e6b7692a74db5a4a5c78c427ee200a','tt1838556','Honest Thief',20),(44,'Jiu.Jitsu.2020.1080p.BluRay.x264-WoAT','2020-12-09 18:21:32',9.63,'GB',190,45,'https://rarbg.to/torrent/s4dnzm7','64064f86671f7227f55ea6a737c346e698909997','tt9624766','Jiu Jitsu',4),(45,'Sound.of.Metal.2019.1080p.WEBRip.x264-RARBG','2020-12-04 04:33:05',2.3,'GB',183,39,'https://rarbg.to/torrent/4crtxuz','1eb833a997794c698a4fe321eb8363985728377e','tt5363618','Sound of Metal',20),(46,'Let.Them.All.Talk.2020.720p.WEB.H264-NAISU','2020-12-10 09:19:14',2.98,'GB',176,94,'https://rarbg.to/torrent/ykpx9t3','f824eb2f2dff07ab5d2e8ff258760005238efc61','tt10808832','Let Them All Talk',12),(47,'Die.Hard.With.A.Vengeance.1995.1080p.BluRay.H264.AAC-RARBG','2020-12-10 00:01:55',2.52,'GB',174,55,'https://rarbg.to/torrent/vkapjio','47dadce8670c6a7a07a24659f612ce0746b423a1','tt0112864','Die Hard: With a Vengeance',100),(48,'Live.Free.Or.Die.Hard.2007.1080p.BluRay.H264.AAC-RARBG','2020-12-10 00:02:18',2.45,'GB',174,52,'https://rarbg.to/torrent/dn59iul','bfda38b144cb9c505f52f40ea02bf4dd6cbfe6dc','tt0337978','Live Free or Die Hard',52),(49,'The.Dark.Knight.Rises.2012.1080p.BluRay.H264.AAC-RARBG','2020-12-10 16:57:52',3.14,'GB',147,297,'https://rarbg.to/torrent/mtyhvg3','cad3b396f726a6ad718fc2553e51b46365c3824f','tt1345836','The Dark Knight Rises',100),(50,'The.Dark.Knight.2008.1080p.BluRay.H264.AAC-RARBG','2020-12-10 16:57:29',2.9,'GB',139,272,'https://rarbg.to/torrent/rgbhuem','2018c344bb1a0e9c3dde6f53ad1bae2de6303319','tt0468569','The Dark Knight',72),(51,'Wild.Mountain.Thyme.2020.1080p.AMZN.WEBRip.DDP5.1.x264-NOGRP','2020-12-10 11:33:32',5.07,'GB',152,93,'https://rarbg.to/torrent/9vk3xsa','7781b2473906e6fc88d930de7397b527079ea2ea','tt6842770','Wild Mountain Thyme',4),(52,'A.Good.Day.to.Die.Hard.2013.EXTENDED.1080p.BluRay.H264.AAC-RARBG','2020-12-10 00:02:41',1.93,'GB',153,44,'https://rarbg.to/torrent/jtxg3l9','d754dc3135c6ce3a9721de007decb54fb1690f7c','tt1606378','A Good Day to Die Hard',32),(53,'Looney.Tunes.Volume.1.1936-1966.BDRip.x264-ION10','2020-12-09 19:40:46',3.41,'GB',147,75,'https://rarbg.to/torrent/y3fpv6l','f58f542f9ee46c0f81439062dcc7a98c78d9d608','',NULL,NULL),(54,'Die.Hard.2.1990.1080p.BluRay.H264.AAC-RARBG','2020-12-10 00:01:34',2.42,'GB',149,45,'https://rarbg.to/torrent/jdtknmb','cb7228c9c71d53e43b2cf80951607b1e233b71fb','tt0099423','Die Hard 2',92),(55,'Black.Bear.2020.WEBRip.x264-ION10','2020-12-04 11:27:07',1.01,'GB',151,19,'https://rarbg.to/torrent/g3se4uq','827cf2251f51573beb0d60a0be5736bef6760f13','tt9601220','Black Bear',36),(56,'The.Godfather.Part.II.1974.1080p.BluRay.REMUX.AVC.DTS-HD.MA.TrueHD.5.1-FGT','2020-12-09 19:00:24',46.05,'GB',132,200,'https://rarbg.to/torrent/xejck1w','ab79c0d4a270fd0bce720bd0dcc49f20c7398cff','tt0071562','The Godfather: Part II',52),(57,'Lethal.Weapon.1987.REMASTERED.1080p.BluRay.x264-iLLUSiON','2020-12-09 22:46:44',7.65,'GB',146,56,'https://rarbg.to/torrent/j5b92wu','dad738615d9e46b238b1af24c1913d03ee179428','tt0093409','Lethal Weapon',36),(58,'Wander.2020.WEBRip.XviD.MP3-XVID','2020-12-04 11:07:06',1.17,'GB',149,20,'https://rarbg.to/torrent/l7xrejc','c1a9508fd18d5959b948a990d0ef57d2f278e250','tt9689696','Wander',48),(59,'The.Wolf.of.Snow.Hollow.2020.1080p.BluRay.H264.AAC-RARBG','2020-12-09 16:27:23',1.61,'GB',144,21,'https://rarbg.to/torrent/tslgjui','53343a7604b885fbb850dd001e59245ca813e045','tt11140488','The Wolf of Snow Hollow',44),(60,'Jiu.Jitsu.2020.1080p.BluRay.H264.AAC-RARBG','2020-12-09 19:54:23',1.95,'GB',140,32,'https://rarbg.to/torrent/2qzu9j8','d7046d2690c16af2e8ac19264bdcd295059f49b4','tt9624766','Jiu Jitsu',4),(61,'The.Godfather.1972.1080p.BluRay.REMUX.AVC.DTS-HD.MA.TrueHD.5.1-FGT','2020-12-09 18:59:24',45.68,'GB',121,209,'https://rarbg.to/torrent/8bnyc4s','bd84adab434ed96c2cb45a3a43b8daabc19edc76','tt0068646','The Godfather',75),(62,'The.Wolf.of.Snow.Hollow.2020.1080p.BluRay.x264-WoAT','2020-12-09 15:06:59',8.53,'GB',136,43,'https://rarbg.to/torrent/omu7kya','2a347cee79578cb77806b764b5cc03eb7f022d72','tt11140488','The Wolf of Snow Hollow',44),(63,'Looney.Tunes.Volume.2.1936-1959.BDRip.x264-ION10','2020-12-09 19:41:08',3.49,'GB',132,65,'https://rarbg.to/torrent/z81o7ia','c3bbba537030686410f162abd3ac73cb15a620cf','',NULL,NULL),(64,'Looney.Tunes.Volume.3.1936-1959.BDRip.x264-ION10','2020-12-09 19:41:26',3.42,'GB',130,56,'https://rarbg.to/torrent/y6kmczq','ae563745dcad468fb9dc42dbf97fe461ca7f333f','',NULL,NULL),(65,'Lethal.Weapon.2.1989.REMASTERED.1080p.BluRay.x264-iLLUSiON','2020-12-09 22:47:25',7.65,'GB',127,45,'https://rarbg.to/torrent/4yi2n6e','160de93dbdd978e360ef0af436fee95318d73e33','tt0097733','Lethal Weapon 2',24),(66,'Honest.Thief.2020.720p.BRRip.XviD.AC3-XVID','2020-12-05 12:46:19',2.41,'GB',126,20,'https://rarbg.to/torrent/r6412fj','7e6937c399975ac7dab0c11da854aa4deeb110c1','tt1838556','Honest Thief',20),(67,'Joker.2019.1080p.BluRay.x264-AAA','2020-12-10 16:56:21',7.64,'GB',119,75,'https://rarbg.to/torrent/js3cw9x','3859d782a73f0666096b7ff2a547d868bde24127','tt7286456','Joker',80),(68,'Black.Bear.2020.WEBRip.XviD.MP3-XVID','2020-12-04 10:59:07',965.99,'MB',121,10,'https://rarbg.to/torrent/c2tvfrn','5d6e78b012442ef377efef082daa374bd16c378f','tt9601220','Black Bear',36),(69,'Tenet.2020.IMAX.1080p.BluRay.AVC.DTS-HD.MA.5.1-ESiR','2020-12-04 03:03:45',45.12,'GB',115,32,'https://rarbg.to/torrent/wrc56at','7351913045b4165d30b87df0d2e9c6363632c727','tt6723592','Tenet',52),(70,'The.Godfather.Part.III.1990.Re-Edit.1080p.BluRay.H264.AAC-RARBG','2020-12-09 20:49:25',3.01,'GB',111,29,'https://rarbg.to/torrent/5kypu9b','95c01caf4f59d875a5e6856f40a92c599625d490','tt0099674','The Godfather: Part III',44),(71,'The.Godfather.Part.III.1990.Re-Edit.1080p.BluRay.REMUX.AVC.DTS-HD.MA.TrueHD.5.1-FGT','2020-12-09 19:01:30',43,'GB',92,199,'https://rarbg.to/torrent/i2wm4jo','bf90438c63a37b559f6ddd7d64a4b76bd9498383','tt0099674','The Godfather: Part III',44),(72,'Joker.2019.720p.BluRay.H264.AAC-RARBG','2020-12-10 16:56:27',1.47,'GB',108,33,'https://rarbg.to/torrent/3fdjzvg','c746cfc55159c609defecd0b8fa91a63f7a1aee7','tt7286456','Joker',80),(73,'Vanguard.2020.CHINESE.1080p.WEBRip.x264-VXT','2020-12-09 17:12:27',2.04,'GB',105,34,'https://rarbg.to/torrent/vijs5nz','afc2f9bae1870a1d64208f57e6bcb43aa26e490b','tt9695722',NULL,NULL),(74,'Honest.Thief.2020.1080p.BluRay.REMUX.AVC.DTS-HD.MA.5.1-FGT','2020-12-10 14:03:53',21.77,'GB',74,300,'https://rarbg.to/torrent/5plj6vg','dba74a4828b1c925359265250d7c5ee19135e0ba','tt1838556','Honest Thief',20),(75,'Batman.1989.REMASTERED.1080p.BluRay.H264.AAC-RARBG','2020-12-10 16:39:33',2.41,'GB',88,157,'https://rarbg.to/torrent/nz4y8sd','0ddd77056e09b5bc14825696ac88643036ecdc21','tt0096895','Batman',28),(76,'Possessor.2020.UNCUT.1080p.BluRay.H264.AAC-RARBG','2020-12-06 14:21:05',1.99,'GB',102,13,'https://rarbg.to/torrent/l9xku74','1d9e790d0df3089d03b2a17670dd3eb92b100603','tt5918982','Possessor Uncut',44),(77,'Batman.Returns.1992.REMASTERED.1080p.BluRay.H264.AAC-RARBG','2020-12-10 16:41:55',2.46,'GB',91,113,'https://rarbg.to/torrent/lgfwyz1','d6c9ca7b3739402a4821023788f3f976efd008ed','tt0103776','Batman Returns',68),(78,'Die.Hard.2.1990.1080p.BluRay.x264-WPi','2020-12-10 00:01:30',7.95,'GB',95,64,'https://rarbg.to/torrent/h6afsez','3fee2025342a440c37c83b436afdccfc920dd95b','tt0099423','Die Hard 2',92),(79,'Wild.Mountain.Thyme.2020.1080p.WEBRip.x264-RARBG','2020-12-10 14:17:05',1.96,'GB',92,71,'https://rarbg.to/torrent/z9sq3fa','6a95003769dd459ec072b6e7f1e15d491f7df611','tt6842770','Wild Mountain Thyme',4),(80,'Lethal.Weapon.1987.REMASTERED.1080p.BluRay.H264.AAC-RARBG','2020-12-09 22:46:51',2.09,'GB',95,38,'https://rarbg.to/torrent/x4ef3ci','100da9b8d008881d93b5fcc6e4179c2c01c4f982','tt0093409','Lethal Weapon',36),(81,'Looney.Tunes.Volume.1.1936-1966.1080p.BluRay.x264-DERANGED','2020-12-09 14:38:04',16.6,'GB',85,116,'https://rarbg.to/torrent/4b3vqhs','638e69acc3065243d6939300b6e27783bde1dbb6','',NULL,NULL),(82,'Looney.Tunes.Volume.3.1936-1959.1080p.BluRay.x264-DEiMOS','2020-12-09 14:38:37',17.56,'GB',85,112,'https://rarbg.to/torrent/7wn4oqp','ae08c7b6ca9fc47a9c40be87bbee159473fd3ba0','',NULL,NULL),(83,'Batman.Forever.1995.REMASTERED.1080p.BluRay.H264.AAC-RARBG','2020-12-10 16:41:08',2.32,'GB',83,124,'https://rarbg.to/torrent/gyhpbqt','268cf5664568716d5f48d28ed72711f34de422ee','tt0112462','Batman Forever',80),(84,'A.Good.Day.to.Die.Hard.2013.EXTENDED.1080p.BluRay.x264-SPARKS','2020-12-10 00:02:36',7.64,'GB',89,62,'https://rarbg.to/torrent/m3tbso4','9236282ff4b1e39ed7e53d78bb2fb21d3e3429d5','tt1606378','A Good Day to Die Hard',32),(85,'Lethal.Weapon.4.1998.1080p.BluRay.x264-Japhson','2020-12-09 22:48:02',8.74,'GB',89,54,'https://rarbg.to/torrent/dfgeb3n','18f7c5ff5e1def01c9266c8a7acb2aa0e43d528f','tt0122151','Lethal Weapon 4',12),(86,'Godmothered.2020.WEBRip.XviD.MP3-XVID','2020-12-04 10:49:02',1.39,'GB',92,19,'https://rarbg.to/torrent/5kpiyoa','0fbfc4acebad9c7663c5ddbe473fc7f95de16bd4','tt11681250','Godmothered',8),(87,'What.Lies.Below.2020.WEBRip.XviD.MP3-XVID','2020-12-04 11:14:07',1,'GB',90,14,'https://rarbg.to/torrent/o7zax31','6447d3998f87cbe090bf237961806f87c729eb91','tt9264728','What Lies Below',4),(88,'Lethal.Weapon.3.1992.1080p.BluRay.H264.AAC-RARBG','2020-12-09 22:47:54',2.25,'GB',87,37,'https://rarbg.to/torrent/zqert43','5c8c8ad59ab6bca02bccdf8911a8622be5258936','tt0104714','Lethal Weapon 3',12),(89,'The.Godfather.Part.III.1990.Re-Edit.1080p.BluRay.x264.DTS-NOGRP','2020-12-09 16:14:55',13.36,'GB',85,40,'https://rarbg.to/torrent/frw5i24','1da83473ecdeae700334a237b73d4adf726d946d','tt0099674','The Godfather: Part III',44),(90,'Looney.Tunes.Volume.2.1936-1959.1080p.BluRay.x264-DEiMOS','2020-12-09 14:38:19',27.45,'GB',69,197,'https://rarbg.to/torrent/wba3jn2','9e0d5d305a4147cf7194622d88a092277f53c870','',NULL,NULL),(91,'Looney.Tunes.Mouse.Chronicles.1939-1951.BDRip.x264-ION10','2020-12-09 19:40:24',1.37,'GB',86,22,'https://rarbg.to/torrent/wyqhx9f','1024cf6c6fdbe93f03056d13d54206713ad703a6','',NULL,NULL),(92,'Ava.2020.PROPER.1080p.BluRay.x264-WoAT','2020-12-06 04:06:17',6.03,'GB',85,24,'https://rarbg.to/torrent/xn1lke6','4d670b4defeeb6cc7ed594caf98c079a74707453','tt8784956',NULL,NULL),(93,'Sound.of.Metal.2019.1080p.AMZN.WEBRip.DDP5.1.x264-CM','2020-12-04 01:40:57',11.15,'GB',85,12,'https://rarbg.to/torrent/1lnwuko','3ba1d4283d246a847d628038ea39374dd5ffd9b3','tt5363618','Sound of Metal',20),(94,'Alabama.Snake.2020.1080p.WEBRip.x264-RARBG','2020-12-10 06:36:20',1.61,'GB',83,27,'https://rarbg.to/torrent/qygpjbl','eb50de04b6e029181b988d5450c6d47ffd35be27','tt12837230','Alabama Snake',4),(95,'Ghost.1990.REMASTERED.1080p.BluRay.REMUX.AVC.DTS-HD.MA.TrueHD.5.1-FGT','2020-12-09 18:57:35',34.21,'GB',72,132,'https://rarbg.to/torrent/pa3r425','e3f203313e883fb160e88c19352dcd0a5582bc36','tt0099653','Ghost',48),(96,'The.Godfather.Part.III.1990.Re-Edit.1080p.WEB-DL.DD5.1.H264-FGT','2020-12-08 08:24:46',6.26,'GB',84,9,'https://rarbg.to/torrent/yp4tu1g','81603324ba3c00eb7de4b4e6343c82692e0bca55','tt0099674','The Godfather: Part III',44),(97,'45.2006.1080p.AMZN.WEBRip.DDP5.1.x264-NTG','2020-12-10 14:12:34',6.85,'GB',73,113,'https://rarbg.to/torrent/nmg7a64','6f3c4502ce3298ad05d042dd69c171e790a6070a','tt0259822','.45',28),(98,'Die.Hard.With.A.Vengeance.1995.1080p.BluRay.x264-WPi','2020-12-10 00:01:50',7.95,'GB',76,67,'https://rarbg.to/torrent/rzjexlt','c7a07784af801f059ec0949e6e525a640f7b8caa','tt0112864','Die Hard: With a Vengeance',100),(99,'Mariah.Careys.Magical.Christmas.Special.2020.1080p.ATVP.WEB-DL.DDP5.1.Atmos.x264-NOGRP','2020-12-09 00:11:14',3.17,'GB',78,25,'https://rarbg.to/torrent/dt13py9','abfd58e28c52f8f207675d51e8cc8f3d2cd1d8ae','tt13017992',NULL,NULL),(100,'Lethal.Weapon.2.1989.REMASTERED.1080p.BluRay.H264.AAC-RARBG','2020-12-09 22:47:32',2.18,'GB',76,37,'https://rarbg.to/torrent/uri9lm5','bb8387c562cf4e9ae60d9459e8928d2b0cdb8bca','tt0097733','Lethal Weapon 2',24);
/*!40000 ALTER TABLE `torrent_full_mview` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-10 19:33:51