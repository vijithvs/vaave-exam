-- MySQL dump 10.13  Distrib 5.7.35, for Linux (x86_64)
--
-- Host: localhost    Database: exam_vaave
-- ------------------------------------------------------
-- Server version	5.7.35-0ubuntu0.18.04.1

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
-- Table structure for table `examinations`
--

DROP TABLE IF EXISTS `examinations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examinations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(45) DEFAULT NULL,
  `response` text NOT NULL,
  `total_score` varchar(45) DEFAULT NULL,
  `topic_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examinations`
--

LOCK TABLES `examinations` WRITE;
/*!40000 ALTER TABLE `examinations` DISABLE KEYS */;
INSERT INTO `examinations` VALUES (2,'2021-10-08 07:26:22','vijith854@gmail.com','[{\"QuestionId\":1,\"Choice\":\"B\",\"TotalScore\":0},{\"QuestionId\":2,\"Choice\":\"B\",\"TotalScore\":1}]','1',2),(3,'2021-10-08 07:26:59','vijith854@gmail.com','[{\"QuestionId\":1,\"Choice\":\"B\",\"TotalScore\":0},{\"QuestionId\":2,\"Choice\":\"D\",\"TotalScore\":0}]','0',2),(4,'2021-10-08 07:35:20',NULL,'[{\"QuestionId\":1,\"Choice\":\"B\",\"TotalScore\":0},{\"QuestionId\":2,\"Choice\":\"B\",\"TotalScore\":1}]','1',1),(5,'2021-10-08 07:35:38',NULL,'[{\"QuestionId\":1,\"Choice\":\"A\",\"TotalScore\":1},{\"QuestionId\":2,\"Choice\":\"B\",\"TotalScore\":2}]','2',1),(6,'2021-10-08 07:36:58',NULL,'[{\"QuestionId\":1,\"Choice\":\"B\",\"TotalScore\":0},{\"QuestionId\":2,\"Choice\":\"\",\"TotalScore\":0}]','0',1),(7,'2021-10-08 07:39:40',NULL,'[{\"QuestionId\":1,\"Choice\":\"A\",\"TotalScore\":1},{\"QuestionId\":2,\"Choice\":\"A\",\"TotalScore\":1}]','1',1),(8,'2021-10-08 09:20:33',NULL,'[{\"QuestionId\":1,\"Choice\":\"A\",\"TotalScore\":1},{\"QuestionId\":2,\"Choice\":\"B\",\"TotalScore\":2}]','2',1),(9,'2021-10-08 09:21:17',NULL,'[{\"QuestionId\":1,\"Choice\":\"A\",\"TotalScore\":1},{\"QuestionId\":2,\"Choice\":\"B\",\"TotalScore\":2}]','2',1),(10,'2021-10-08 09:21:29',NULL,'[{\"QuestionId\":1,\"Choice\":\"A\",\"TotalScore\":1},{\"QuestionId\":2,\"Choice\":\"D\",\"TotalScore\":1}]','1',1),(11,'2021-10-08 09:29:02',NULL,'[{\"QuestionId\":1,\"TotalScore\":0},{\"QuestionId\":2,\"Choice\":\"\",\"TotalScore\":0}]','0',1),(12,'2021-10-08 09:34:44',NULL,'[{\"QuestionId\":1,\"Choice\":\"C\",\"TotalScore\":0},{\"QuestionId\":2,\"Choice\":\"C\",\"TotalScore\":0}]','0',1),(13,'2021-10-08 10:13:02',NULL,'[{\"QuestionId\":3,\"Choice\":\"A\",\"TotalScore\":0}]','0',1),(14,'2021-10-08 10:16:51',NULL,'[{\"QuestionId\":4,\"Choice\":\"A\",\"TotalScore\":0},{\"QuestionId\":5,\"Choice\":\"B\",\"TotalScore\":0},{\"QuestionId\":6,\"Choice\":\"\",\"TotalScore\":0},{\"QuestionId\":7,\"Choice\":\"C\",\"TotalScore\":1}]','1',1),(15,'2021-10-08 10:17:06',NULL,'[{\"QuestionId\":3,\"Choice\":\"A\",\"TotalScore\":0},{\"QuestionId\":4,\"Choice\":\"B\",\"TotalScore\":0},{\"QuestionId\":5,\"Choice\":\"C\",\"TotalScore\":1},{\"QuestionId\":6,\"Choice\":\"B\",\"TotalScore\":1},{\"QuestionId\":7,\"Choice\":\"\",\"TotalScore\":1}]','1',1),(16,'2021-10-08 10:17:17',NULL,'[{\"QuestionId\":3,\"Choice\":\"A\",\"TotalScore\":0},{\"QuestionId\":4,\"Choice\":\"C\",\"TotalScore\":0},{\"QuestionId\":5,\"Choice\":\"\",\"TotalScore\":0},{\"QuestionId\":6,\"Choice\":\"\",\"TotalScore\":0},{\"QuestionId\":7,\"Choice\":\"\",\"TotalScore\":0}]','0',1),(17,'2021-10-08 10:17:56',NULL,'[{\"QuestionId\":3,\"Choice\":\"A\",\"TotalScore\":0},{\"QuestionId\":4,\"Choice\":\"A\",\"TotalScore\":0},{\"QuestionId\":5,\"Choice\":\"\",\"TotalScore\":0},{\"QuestionId\":6,\"Choice\":\"\",\"TotalScore\":0},{\"QuestionId\":7,\"Choice\":\"\",\"TotalScore\":0}]','0',1),(18,'2021-10-08 10:19:25',NULL,'[{\"QuestionId\":3,\"Choice\":\"A\",\"TotalScore\":0},{\"QuestionId\":4,\"Choice\":\"A\",\"TotalScore\":0},{\"QuestionId\":5,\"Choice\":\"\",\"TotalScore\":0},{\"QuestionId\":6,\"Choice\":\"\",\"TotalScore\":0},{\"QuestionId\":7,\"Choice\":\"\",\"TotalScore\":0},{\"QuestionId\":8,\"Choice\":\"\",\"TotalScore\":0}]','0',1),(19,'2021-10-08 10:20:07',NULL,'[{\"QuestionId\":3,\"Choice\":\"A\",\"TotalScore\":0},{\"QuestionId\":4,\"Choice\":\"C\",\"TotalScore\":0},{\"QuestionId\":5,\"Choice\":\"\",\"TotalScore\":0},{\"QuestionId\":6,\"Choice\":\"\",\"TotalScore\":0},{\"QuestionId\":7,\"Choice\":\"\",\"TotalScore\":0},{\"QuestionId\":8,\"Choice\":\"\",\"TotalScore\":0},{\"QuestionId\":9,\"Choice\":\"\",\"TotalScore\":0}]','0',1),(20,'2021-10-08 10:32:15',NULL,'[{\"QuestionId\":7,\"Choice\":\"B\",\"TotalScore\":0},{\"QuestionId\":8,\"Choice\":\"D\",\"TotalScore\":0},{\"QuestionId\":9,\"Choice\":\"\",\"TotalScore\":0},{\"QuestionId\":11,\"Choice\":\"\",\"TotalScore\":0},{\"QuestionId\":13,\"Choice\":\"\",\"TotalScore\":0},{\"QuestionId\":14,\"Choice\":\"\",\"TotalScore\":0}]','0',1),(21,'2021-10-08 10:33:43',NULL,'[{\"QuestionId\":3,\"Choice\":\"A\",\"TotalScore\":0},{\"QuestionId\":4,\"Choice\":\"C\",\"TotalScore\":0},{\"QuestionId\":5,\"Choice\":\"\",\"TotalScore\":0},{\"QuestionId\":6,\"Choice\":\"\",\"TotalScore\":0},{\"QuestionId\":7,\"Choice\":\"\",\"TotalScore\":0},{\"QuestionId\":8,\"Choice\":\"\",\"TotalScore\":0},{\"QuestionId\":9,\"Choice\":\"\",\"TotalScore\":0},{\"QuestionId\":11,\"Choice\":\"\",\"TotalScore\":0},{\"QuestionId\":13,\"Choice\":\"\",\"TotalScore\":0},{\"QuestionId\":14,\"Choice\":\"\",\"TotalScore\":0}]','0',1),(22,'2021-10-08 10:34:58',NULL,'[{\"QuestionId\":3,\"Choice\":\"B\",\"TotalScore\":1},{\"QuestionId\":4,\"Choice\":\"D\",\"TotalScore\":2},{\"QuestionId\":5,\"Choice\":\"B\",\"TotalScore\":2},{\"QuestionId\":6,\"Choice\":\"C\",\"TotalScore\":3},{\"QuestionId\":7,\"Choice\":\"C\",\"TotalScore\":4},{\"QuestionId\":8,\"Choice\":\"C\",\"TotalScore\":5},{\"QuestionId\":9,\"Choice\":\"D\",\"TotalScore\":5},{\"QuestionId\":11,\"Choice\":\"C\",\"TotalScore\":5},{\"QuestionId\":13,\"Choice\":\"C\",\"TotalScore\":6},{\"QuestionId\":14,\"Choice\":\"C\",\"TotalScore\":6}]','6',1),(23,'2021-10-08 10:38:22',NULL,'[{\"QuestionId\":3,\"Choice\":\"B\",\"TotalScore\":1},{\"QuestionId\":4,\"Choice\":\"C\",\"TotalScore\":1},{\"QuestionId\":5,\"Choice\":\"D\",\"TotalScore\":1},{\"QuestionId\":6,\"Choice\":\"D\",\"TotalScore\":1},{\"QuestionId\":7,\"Choice\":\"D\",\"TotalScore\":1},{\"QuestionId\":8,\"Choice\":\"C\",\"TotalScore\":2},{\"QuestionId\":9,\"Choice\":\"C\",\"TotalScore\":2},{\"QuestionId\":11,\"Choice\":\"D\",\"TotalScore\":2},{\"QuestionId\":13,\"Choice\":\"C\",\"TotalScore\":3},{\"QuestionId\":14,\"Choice\":\"D\",\"TotalScore\":4}]','4',1),(24,'2021-10-08 11:48:50',NULL,'[{\"QuestionId\":3,\"Choice\":\"A\",\"TotalScore\":0},{\"QuestionId\":4,\"Choice\":\"B\",\"TotalScore\":0},{\"QuestionId\":5,\"Choice\":\"C\",\"TotalScore\":1},{\"QuestionId\":6,\"Choice\":\"D\",\"TotalScore\":1},{\"QuestionId\":8,\"Choice\":\"C\",\"TotalScore\":2},{\"QuestionId\":9,\"Choice\":\"B\",\"TotalScore\":2},{\"QuestionId\":11,\"Choice\":\"C\",\"TotalScore\":2},{\"QuestionId\":13,\"Choice\":\"D\",\"TotalScore\":2},{\"QuestionId\":14,\"Choice\":\"C\",\"TotalScore\":2},{\"QuestionId\":15,\"Choice\":\"C\",\"TotalScore\":2}]','2',1),(25,'2021-10-08 12:08:09',NULL,'[{\"QuestionId\":3,\"Choice\":\"A\",\"TotalScore\":0},{\"QuestionId\":4,\"Choice\":\"D\",\"TotalScore\":1},{\"QuestionId\":5,\"Choice\":\"D\",\"TotalScore\":1},{\"QuestionId\":6,\"Choice\":\"D\",\"TotalScore\":1},{\"QuestionId\":8,\"Choice\":\"D\",\"TotalScore\":1},{\"QuestionId\":9,\"Choice\":\"D\",\"TotalScore\":1},{\"QuestionId\":11,\"Choice\":\"D\",\"TotalScore\":1},{\"QuestionId\":13,\"Choice\":\"D\",\"TotalScore\":1},{\"QuestionId\":14,\"Choice\":\"C\",\"TotalScore\":1},{\"QuestionId\":15,\"Choice\":\"C\",\"TotalScore\":1}]','1',1),(26,'2021-10-08 12:25:41',NULL,'[{\"QuestionId\":22,\"Choice\":\"B\",\"TotalScore\":2},{\"QuestionId\":24,\"Choice\":\"D\",\"TotalScore\":2}]','0',2),(27,'2021-10-08 12:40:04',NULL,'[{\"QuestionId\":28,\"Choice\":\"\",\"TotalScore\":0},{\"QuestionId\":29,\"Choice\":\"\",\"TotalScore\":0},{\"QuestionId\":30,\"Choice\":\"\",\"TotalScore\":0},{\"QuestionId\":31,\"Choice\":\"\",\"TotalScore\":0},{\"QuestionId\":33,\"Choice\":\"\",\"TotalScore\":0},{\"QuestionId\":34,\"Choice\":\"\",\"TotalScore\":0},{\"QuestionId\":35,\"Choice\":\"\",\"TotalScore\":0},{\"QuestionId\":36,\"Choice\":\"\",\"TotalScore\":0},{\"QuestionId\":37,\"Choice\":\"\",\"TotalScore\":0},{\"QuestionId\":38,\"Choice\":\"\",\"TotalScore\":0}]','0',3),(28,'2021-10-08 12:40:21',NULL,'[{\"QuestionId\":28,\"Choice\":\"\",\"TotalScore\":0},{\"QuestionId\":29,\"Choice\":\"\",\"TotalScore\":0},{\"QuestionId\":30,\"Choice\":\"\",\"TotalScore\":0},{\"QuestionId\":31,\"Choice\":\"\",\"TotalScore\":0},{\"QuestionId\":33,\"Choice\":\"\",\"TotalScore\":0},{\"QuestionId\":34,\"Choice\":\"\",\"TotalScore\":0},{\"QuestionId\":35,\"Choice\":\"\",\"TotalScore\":0},{\"QuestionId\":36,\"Choice\":\"\",\"TotalScore\":0},{\"QuestionId\":37,\"Choice\":\"\",\"TotalScore\":0},{\"QuestionId\":38,\"Choice\":\"\",\"TotalScore\":0}]','0',3),(29,'2021-10-08 12:44:05',NULL,'[{\"QuestionId\":53,\"Choice\":\"A\",\"TotalScore\":0},{\"QuestionId\":54,\"Choice\":\"D\",\"TotalScore\":1},{\"QuestionId\":55,\"Choice\":\"D\",\"TotalScore\":1},{\"QuestionId\":56,\"Choice\":\"D\",\"TotalScore\":1},{\"QuestionId\":58,\"Choice\":\"B\",\"TotalScore\":1},{\"QuestionId\":59,\"Choice\":\"B\",\"TotalScore\":1},{\"QuestionId\":60,\"Choice\":\"C\",\"TotalScore\":1},{\"QuestionId\":61,\"Choice\":\"\",\"TotalScore\":1},{\"QuestionId\":62,\"Choice\":\"D\",\"TotalScore\":2},{\"QuestionId\":63,\"Choice\":\"D\",\"TotalScore\":3}]','3',4),(30,'2021-10-08 12:44:32',NULL,'[{\"QuestionId\":3,\"Choice\":\"A\",\"TotalScore\":0},{\"QuestionId\":4,\"Choice\":\"D\",\"TotalScore\":1},{\"QuestionId\":5,\"Choice\":\"D\",\"TotalScore\":1},{\"QuestionId\":6,\"Choice\":\"C\",\"TotalScore\":2},{\"QuestionId\":8,\"Choice\":\"D\",\"TotalScore\":2},{\"QuestionId\":9,\"Choice\":\"B\",\"TotalScore\":2},{\"QuestionId\":11,\"Choice\":\"B\",\"TotalScore\":3},{\"QuestionId\":13,\"Choice\":\"D\",\"TotalScore\":3},{\"QuestionId\":14,\"Choice\":\"B\",\"TotalScore\":3},{\"QuestionId\":15,\"Choice\":\"C\",\"TotalScore\":3}]','3',1),(31,'2021-10-08 12:44:52',NULL,'[{\"QuestionId\":16,\"Choice\":\"A\",\"TotalScore\":0},{\"QuestionId\":17,\"Choice\":\"B\",\"TotalScore\":0},{\"QuestionId\":18,\"Choice\":\"B\",\"TotalScore\":1},{\"QuestionId\":19,\"Choice\":\"C\",\"TotalScore\":1},{\"QuestionId\":20,\"Choice\":\"B\",\"TotalScore\":1},{\"QuestionId\":21,\"Choice\":\"B\",\"TotalScore\":1},{\"QuestionId\":22,\"Choice\":\"B\",\"TotalScore\":1},{\"QuestionId\":24,\"Choice\":\"B\",\"TotalScore\":1},{\"QuestionId\":25,\"Choice\":\"B\",\"TotalScore\":1},{\"QuestionId\":26,\"Choice\":\"C\",\"TotalScore\":1}]','1',2),(32,'2021-10-08 12:47:38',NULL,'[{\"QuestionId\":3,\"Choice\":\"B\",\"TotalScore\":1},{\"QuestionId\":4,\"Choice\":\"D\",\"TotalScore\":2},{\"QuestionId\":5,\"Choice\":\"C\",\"TotalScore\":3},{\"QuestionId\":6,\"Choice\":\"C\",\"TotalScore\":4},{\"QuestionId\":8,\"Choice\":\"C\",\"TotalScore\":5},{\"QuestionId\":9,\"Choice\":\"A\",\"TotalScore\":6},{\"QuestionId\":11,\"Choice\":\"B\",\"TotalScore\":7},{\"QuestionId\":13,\"Choice\":\"C\",\"TotalScore\":8},{\"QuestionId\":14,\"Choice\":\"D\",\"TotalScore\":9},{\"QuestionId\":15,\"Choice\":\"D\",\"TotalScore\":10}]','10',1),(33,'2021-10-08 12:49:07',NULL,'[{\"QuestionId\":3,\"Choice\":\"B\",\"TotalScore\":1},{\"QuestionId\":4,\"Choice\":\"D\",\"TotalScore\":2},{\"QuestionId\":5,\"Choice\":\"C\",\"TotalScore\":3},{\"QuestionId\":6,\"Choice\":\"C\",\"TotalScore\":4},{\"QuestionId\":8,\"Choice\":\"C\",\"TotalScore\":5},{\"QuestionId\":9,\"Choice\":\"A\",\"TotalScore\":6},{\"QuestionId\":11,\"Choice\":\"B\",\"TotalScore\":7},{\"QuestionId\":13,\"Choice\":\"C\",\"TotalScore\":8},{\"QuestionId\":14,\"Choice\":\"D\",\"TotalScore\":9},{\"QuestionId\":15,\"Choice\":\"D\",\"TotalScore\":10}]','10',1),(34,'2021-10-08 12:50:20',NULL,'[{\"QuestionId\":3,\"Choice\":\"A\",\"TotalScore\":0},{\"QuestionId\":4,\"Choice\":\"D\",\"TotalScore\":1},{\"QuestionId\":5,\"Choice\":\"D\",\"TotalScore\":1},{\"QuestionId\":6,\"Choice\":\"D\",\"TotalScore\":1},{\"QuestionId\":8,\"Choice\":\"D\",\"TotalScore\":1},{\"QuestionId\":9,\"Choice\":\"D\",\"TotalScore\":1},{\"QuestionId\":11,\"Choice\":\"D\",\"TotalScore\":1},{\"QuestionId\":13,\"Choice\":\"D\",\"TotalScore\":1},{\"QuestionId\":14,\"Choice\":\"D\",\"TotalScore\":2},{\"QuestionId\":15,\"Choice\":\"D\",\"TotalScore\":3}]','3',1),(35,'2021-10-08 12:51:21',NULL,'[{\"QuestionId\":3,\"Choice\":\"B\",\"TotalScore\":1},{\"QuestionId\":4,\"Choice\":\"D\",\"TotalScore\":2},{\"QuestionId\":5,\"Choice\":\"C\",\"TotalScore\":3},{\"QuestionId\":6,\"Choice\":\"C\",\"TotalScore\":4},{\"QuestionId\":8,\"Choice\":\"C\",\"TotalScore\":5},{\"QuestionId\":9,\"Choice\":\"A\",\"TotalScore\":6},{\"QuestionId\":11,\"Choice\":\"B\",\"TotalScore\":7},{\"QuestionId\":13,\"Choice\":\"C\",\"TotalScore\":8},{\"QuestionId\":14,\"Choice\":\"D\",\"TotalScore\":9},{\"QuestionId\":15,\"Choice\":\"\",\"TotalScore\":9}]','9',1),(36,'2021-10-08 12:52:04',NULL,'[{\"QuestionId\":53,\"Choice\":\"B\",\"TotalScore\":1},{\"QuestionId\":54,\"Choice\":\"D\",\"TotalScore\":2},{\"QuestionId\":55,\"Choice\":\"C\",\"TotalScore\":3},{\"QuestionId\":56,\"Choice\":\"C\",\"TotalScore\":4},{\"QuestionId\":58,\"Choice\":\"C\",\"TotalScore\":5},{\"QuestionId\":59,\"Choice\":\"A\",\"TotalScore\":6},{\"QuestionId\":60,\"Choice\":\"B\",\"TotalScore\":7},{\"QuestionId\":61,\"Choice\":\"C\",\"TotalScore\":8},{\"QuestionId\":62,\"Choice\":\"D\",\"TotalScore\":9},{\"QuestionId\":63,\"Choice\":\"D\",\"TotalScore\":10}]','10',4),(37,'2021-10-08 13:18:04',NULL,'[{\"QuestionId\":3,\"Choice\":\"D\",\"TotalScore\":0},{\"QuestionId\":4,\"Choice\":\"D\",\"TotalScore\":1},{\"QuestionId\":5,\"Choice\":\"D\",\"TotalScore\":1},{\"QuestionId\":6,\"Choice\":\"D\",\"TotalScore\":1},{\"QuestionId\":8,\"Choice\":\"D\",\"TotalScore\":1},{\"QuestionId\":9,\"Choice\":\"D\",\"TotalScore\":1},{\"QuestionId\":11,\"Choice\":\"D\",\"TotalScore\":1},{\"QuestionId\":13,\"Choice\":\"D\",\"TotalScore\":1},{\"QuestionId\":14,\"Choice\":\"D\",\"TotalScore\":2},{\"QuestionId\":15,\"Choice\":\"D\",\"TotalScore\":3}]','3',1),(38,'2021-10-08 15:10:29',NULL,'[{\"QuestionId\":3,\"Choice\":\"B\",\"TotalScore\":1},{\"QuestionId\":4,\"Choice\":\"D\",\"TotalScore\":2},{\"QuestionId\":5,\"Choice\":\"C\",\"TotalScore\":3},{\"QuestionId\":6,\"Choice\":\"C\",\"TotalScore\":4},{\"QuestionId\":8,\"Choice\":\"C\",\"TotalScore\":5},{\"QuestionId\":9,\"Choice\":\"A\",\"TotalScore\":6},{\"QuestionId\":11,\"Choice\":\"B\",\"TotalScore\":7},{\"QuestionId\":13,\"Choice\":\"C\",\"TotalScore\":8},{\"QuestionId\":14,\"Choice\":\"D\",\"TotalScore\":9},{\"QuestionId\":15,\"Choice\":\"D\",\"TotalScore\":10}]','10',1);
/*!40000 ALTER TABLE `examinations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `id` int(15) NOT NULL,
  `question` varchar(191) NOT NULL,
  `choice_data` text NOT NULL,
  `score` int(15) NOT NULL,
  `correct_choice` varchar(15) DEFAULT NULL,
  `topic_id` int(15) NOT NULL,
  `level` enum('BEGINNER','INTERMEDIATE','PROFESSIONAL') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (3,'Which among the following tides (as they are called) from the surf and winds?','[{\"Choice\":\"A\",\"Option\":\"storm tides\"},{\"Choice\":\"B\",\"Option\":\"Rip tides\"},{\"Choice\":\"C\",\"Option\":\"Neap tides\"},{\"Choice\":\"D\",\"Option\":\"Tsunami\"}]',1,'B',1,'BEGINNER'),(4,'WISPA is related to which of the following sports?','[{\"Choice\":\"A\",\"Option\":\"Football\"},{\"Choice\":\"B\",\"Option\":\"Chess\"},{\"Choice\":\"C\",\"Option\":\"Cricket\"},{\"Choice\":\"D\",\"Option\":\"Squash\"}]',1,'D',1,'BEGINNER'),(5,'Which among the following courts, Chennai Open is played ?','[{\"Choice\":\"A\",\"Option\":\"Athletics\"},{\"Choice\":\"B\",\"Option\":\"Boxing\"},{\"Choice\":\"C\",\"Option\":\"Swimming\"},{\"Choice\":\"D\",\"Option\":\"Racing\"}]',1,'C',1,'BEGINNER'),(6,'Where were the UCI Track Cycling World Championships first held?','[{\"Choice\":\"A\",\"Option\":\"Clay court\"},{\"Choice\":\"B\",\"Option\":\"Grass Court\"},{\"Choice\":\"C\",\"Option\":\"Hard Court\"},{\"Choice\":\"D\",\"Option\":\"Carpet Court\"}]',1,'C',1,'BEGINNER'),(7,'What is the minimum age required for professional circuit tournaments?','[{\"Choice\":\"A\",\"Option\":\"Chicago\"},{\"Choice\":\"B\",\"Option\":\"New York\"},{\"Choice\":\"C\",\"Option\":\"California\"},{\"Choice\":\"D\",\"Option\":\"Florida\"}]',1,'C',1,'BEGINNER'),(8,'When were the ISSF special shotgun championships first held ?','[{\"Choice\":\"A\",\"Option\":\"1907\"},{\"Choice\":\"B\",\"Option\":\"1926\"},{\"Choice\":\"C\",\"Option\":\"1934\"},{\"Choice\":\"D\",\"Option\":\"1956\"}]',1,'C',1,'INTERMEDIATE'),(9,'Where were the 2018 UCI Para-Cycling World Championships held?','[{\"Choice\":\"A\",\"Option\":\"Brazil\"},{\"Choice\":\"B\",\"Option\":\"United States\"},{\"Choice\":\"C\",\"Option\":\"Mexico\"},{\"Choice\":\"D\",\"Option\":\"Italy\"}]',1,'A',1,'INTERMEDIATE'),(11,'Which company is the official ball supplier to the Premier League?','[{\"Choice\":\"A\",\"Option\":\"Adidas\"},{\"Choice\":\"B\",\"Option\":\"Nike\"},{\"Choice\":\"C\",\"Option\":\"Reebok\"},{\"Choice\":\"D\",\"Option\":\"Puma\"}]',1,'B',1,'INTERMEDIATE'),(13,'Who has composed the FIFA anthem?','[{\"Choice\":\"A\",\"Option\":\"Rob May\"},{\"Choice\":\"B\",\"Option\":\"Simon Hill\"},{\"Choice\":\"C\",\"Option\":\"Franz Lambert\"},{\"Choice\":\"D\",\"Option\":\"All of the above\"}]',1,'C',1,'PROFESSIONAL'),(14,'Who was the first Woman World Chess Champion?','[{\"Choice\":\"A\",\"Option\":\"Olga Rudenko\"},{\"Choice\":\"B\",\"Option\":\"Xie Jun\"},{\"Choice\":\"C\",\"Option\":\"Hou Yifan\"},{\"Choice\":\"D\",\"Option\":\"Vera Menchik\"}]',1,'D',1,'PROFESSIONAL'),(15,'When was FINA founded?','[{\"Choice\":\"A\",\"Option\":\"1928\"},{\"Choice\":\"B\",\"Option\":\"1908\"},{\"Choice\":\"C\",\"Option\":\"1935\"},{\"Choice\":\"D\",\"Option\":\"1958\"}]',1,'D',1,'PROFESSIONAL'),(16,'Which technology major has been named to lead EUs project Hexa-X?','[{\"Choice\":\"A\",\"Option\":\"Microsoft\"},{\"Choice\":\"B\",\"Option\":\"Google\"},{\"Choice\":\"C\",\"Option\":\"Facebook\"},{\"Choice\":\"D\",\"Option\":\"Nokia\"}]',1,'D',2,'BEGINNER'),(17,'Which Indian organisation has successfully demonstrated Quantum communication?','[{\"Choice\":\"A\",\"Option\":\"HAL\"},{\"Choice\":\"B\",\"Option\":\"ISRO\"},{\"Choice\":\"C\",\"Option\":\"DRDO\"},{\"Choice\":\"D\",\"Option\":\"NHPC\"}]',1,'C',2,'BEGINNER'),(18,'What is the name of the Meteor that originates from 3200 \nPhaethon Asteroid, and is visible in Earth as a meteor shower?','[{\"Choice\":\"A\",\"Option\":\"Jio Networks\"},{\"Choice\":\"B\",\"Option\":\"BSNL\"},{\"Choice\":\"C\",\"Option\":\"Airtel\"},{\"Choice\":\"D\",\"Option\":\"Vi\"}]',1,'B',2,'BEGINNER'),(19,'What is the name of ISROs Space Situational Awareness (SSA) centre?','[{\"Choice\":\"A\",\"Option\":\"Space Watch\"},{\"Choice\":\"B\",\"Option\":\"Netra\"},{\"Choice\":\"C\",\"Option\":\"Vision\"},{\"Choice\":\"D\",\"Option\":\"Gaganyaan\"}]',1,'B',2,'BEGINNER'),(20,'Scientists have spotted rare hot UV-bright stars in a cluster, using the telescope onboard which satellite?','[{\"Choice\":\"A\",\"Option\":\"AstroSat\"},{\"Choice\":\"B\",\"Option\":\"CartoSat-2\"},{\"Choice\":\"C\",\"Option\":\"Risat-7E\"},{\"Choice\":\"D\",\"Option\":\"Insat- 4E\"}]',1,'A',2,'INTERMEDIATE'),(21,'Which country has detected huge optical flare in BL Lacertae, an oldest astronomical object?','[{\"Choice\":\"A\",\"Option\":\"India\"},{\"Choice\":\"B\",\"Option\":\"China\"},{\"Choice\":\"C\",\"Option\":\"Russia\"},{\"Choice\":\"D\",\"Option\":\"United States\"}]',1,'A',2,'INTERMEDIATE'),(22,'In the Spectrum Auction beginning this March, the airwaves of which type of spectrum are to be sold?','[{\"Choice\":\"A\",\"Option\":\"2G\"},{\"Choice\":\"B\",\"Option\":\"3G\"},{\"Choice\":\"C\",\"Option\":\"4G\"},{\"Choice\":\"D\",\"Option\":\"5G\"}]',1,'C',2,'INTERMEDIATE'),(23,'As per a recent research, protein-bases devices have been designed to detect which disease?','[{\"Choice\":\"A\",\"Option\":\"Covid-19\"},{\"Choice\":\"B\",\"Option\":\"Tuberculosis\"},{\"Choice\":\"C\",\"Option\":\"Pneumonia\"},{\"Choice\":\"D\",\"Option\":\"Polio\"}]',1,'A',2,'INTERMEDIATE'),(24,'Sindhu Netra satellite has recently been successfully launched using which PSLV?','[{\"Choice\":\"A\",\"Option\":\"PSLV-C51\"},{\"Choice\":\"B\",\"Option\":\"PSLV-C52\"},{\"Choice\":\"C\",\"Option\":\"PSLV-C53\"},{\"Choice\":\"D\",\"Option\":\"PSLV-C54\"}]',1,'A',2,'PROFESSIONAL'),(25,'Threadit is a standalone website created by which tech major?','[{\"Choice\":\"A\",\"Option\":\"Intel\"},{\"Choice\":\"B\",\"Option\":\"Microsoft\"},{\"Choice\":\"C\",\"Option\":\"Apple\"},{\"Choice\":\"D\",\"Option\":\"Google\"}]',1,'C',2,'PROFESSIONAL'),(26,'What is RH 560 that is seen in the news recently?','[{\"Choice\":\"A\",\"Option\":\"Asteroid\"},{\"Choice\":\"B\",\"Earth Metal\":\"Indian Naval Ship\"},{\"Choice\":\"C\",\"Option\":\"Apple\"},{\"Choice\":\"D\",\"Option\":\"ISRO Sounding Rocket\"}]',1,'D',2,'PROFESSIONAL'),(27,'A massive data leak has been witnessed by which social networking giant, recently?','[{\"Choice\":\"A\",\"Option\":\"Twitter\"},{\"Choice\":\"B\",\"Option\":\"WhatsApp\"},{\"Choice\":\"C\",\"Option\":\"Orkut\"},{\"Choice\":\"D\",\"Option\":\"Facebook\"}]',1,'A',2,'PROFESSIONAL'),(28,'Sample Question Art 1 ?','[{\"Choice\":\"A\",\"Option\":\"storm tides\"},{\"Choice\":\"B\",\"Option\":\"Rip tides\"},{\"Choice\":\"C\",\"Option\":\"Neap tides\"},{\"Choice\":\"D\",\"Option\":\"Tsunami\"}]',1,'B',3,'BEGINNER'),(29,'Sample Question Art 2 ?','[{\"Choice\":\"A\",\"Option\":\"Football\"},{\"Choice\":\"B\",\"Option\":\"Chess\"},{\"Choice\":\"C\",\"Option\":\"Cricket\"},{\"Choice\":\"D\",\"Option\":\"Squash\"}]',1,'D',3,'BEGINNER'),(30,'Sample Question Art 3 ?','[{\"Choice\":\"A\",\"Option\":\"Athletics\"},{\"Choice\":\"B\",\"Option\":\"Boxing\"},{\"Choice\":\"C\",\"Option\":\"Swimming\"},{\"Choice\":\"D\",\"Option\":\"Racing\"}]',1,'C',3,'BEGINNER'),(31,'Sample Question Art 4 ?','[{\"Choice\":\"A\",\"Option\":\"Clay court\"},{\"Choice\":\"B\",\"Option\":\"Grass Court\"},{\"Choice\":\"C\",\"Option\":\"Hard Court\"},{\"Choice\":\"D\",\"Option\":\"Carpet Court\"}]',1,'C',3,'BEGINNER'),(32,'Sample Question Art 5 ?','[{\"Choice\":\"A\",\"Option\":\"Chicago\"},{\"Choice\":\"B\",\"Option\":\"New York\"},{\"Choice\":\"C\",\"Option\":\"California\"},{\"Choice\":\"D\",\"Option\":\"Florida\"}]',1,'C',3,'BEGINNER'),(33,'Sample Question Art 6 ?','[{\"Choice\":\"A\",\"Option\":\"1907\"},{\"Choice\":\"B\",\"Option\":\"1926\"},{\"Choice\":\"C\",\"Option\":\"1934\"},{\"Choice\":\"D\",\"Option\":\"1956\"}]',1,'C',3,'INTERMEDIATE'),(34,'Sample Question Art 7 ?','[{\"Choice\":\"A\",\"Option\":\"Brazil\"},{\"Choice\":\"B\",\"Option\":\"United States\"},{\"Choice\":\"C\",\"Option\":\"Mexico\"},{\"Choice\":\"D\",\"Option\":\"Italy\"}]',1,'A',3,'INTERMEDIATE'),(35,'Sample Question Art 8 ?','[{\"Choice\":\"A\",\"Option\":\"Adidas\"},{\"Choice\":\"B\",\"Option\":\"Nike\"},{\"Choice\":\"C\",\"Option\":\"Reebok\"},{\"Choice\":\"D\",\"Option\":\"Puma\"}]',1,'B',3,'INTERMEDIATE'),(36,'Sample Question Art 9 ?','[{\"Choice\":\"A\",\"Option\":\"Rob May\"},{\"Choice\":\"B\",\"Option\":\"Simon Hill\"},{\"Choice\":\"C\",\"Option\":\"Franz Lambert\"},{\"Choice\":\"D\",\"Option\":\"All of the above\"}]',1,'C',3,'PROFESSIONAL'),(37,'Sample Question Art 10 ?','[{\"Choice\":\"A\",\"Option\":\"Olga Rudenko\"},{\"Choice\":\"B\",\"Option\":\"Xie Jun\"},{\"Choice\":\"C\",\"Option\":\"Hou Yifan\"},{\"Choice\":\"D\",\"Option\":\"Vera Menchik\"}]',1,'D',3,'PROFESSIONAL'),(38,'Sample Question Art 11 ?','[{\"Choice\":\"A\",\"Option\":\"1928\"},{\"Choice\":\"B\",\"Option\":\"1908\"},{\"Choice\":\"C\",\"Option\":\"1935\"},{\"Choice\":\"D\",\"Option\":\"1958\"}]',1,'D',3,'PROFESSIONAL'),(39,'Sample Question Art 12 ?','[{\"Choice\":\"A\",\"Option\":\"Microsoft\"},{\"Choice\":\"B\",\"Option\":\"Google\"},{\"Choice\":\"C\",\"Option\":\"Facebook\"},{\"Choice\":\"D\",\"Option\":\"Nokia\"}]',1,'D',3,'BEGINNER'),(40,'Sample Question Art 13 ?','[{\"Choice\":\"A\",\"Option\":\"HAL\"},{\"Choice\":\"B\",\"Option\":\"ISRO\"},{\"Choice\":\"C\",\"Option\":\"DRDO\"},{\"Choice\":\"D\",\"Option\":\"NHPC\"}]',1,'C',3,'BEGINNER'),(41,'Sample Question Art 14 ?','[{\"Choice\":\"A\",\"Option\":\"Jio Networks\"},{\"Choice\":\"B\",\"Option\":\"BSNL\"},{\"Choice\":\"C\",\"Option\":\"Airtel\"},{\"Choice\":\"D\",\"Option\":\"Vi\"}]',1,'B',3,'BEGINNER'),(42,'Sample Question Art 15 ?','[{\"Choice\":\"A\",\"Option\":\"Space Watch\"},{\"Choice\":\"B\",\"Option\":\"Netra\"},{\"Choice\":\"C\",\"Option\":\"Vision\"},{\"Choice\":\"D\",\"Option\":\"Gaganyaan\"}]',1,'B',3,'BEGINNER'),(43,'Sample Question Art 16 ?','[{\"Choice\":\"A\",\"Option\":\"AstroSat\"},{\"Choice\":\"B\",\"Option\":\"CartoSat-2\"},{\"Choice\":\"C\",\"Option\":\"Risat-7E\"},{\"Choice\":\"D\",\"Option\":\"Insat- 4E\"}]',1,'A',3,'INTERMEDIATE'),(44,'Sample Question Art 17 ?','[{\"Choice\":\"A\",\"Option\":\"India\"},{\"Choice\":\"B\",\"Option\":\"China\"},{\"Choice\":\"C\",\"Option\":\"Russia\"},{\"Choice\":\"D\",\"Option\":\"United States\"}]',1,'A',3,'INTERMEDIATE'),(45,'Sample Question Art 18 ?','[{\"Choice\":\"A\",\"Option\":\"2G\"},{\"Choice\":\"B\",\"Option\":\"3G\"},{\"Choice\":\"C\",\"Option\":\"4G\"},{\"Choice\":\"D\",\"Option\":\"5G\"}]',1,'C',3,'INTERMEDIATE'),(46,'Sample Question Art 19 ?','[{\"Choice\":\"A\",\"Option\":\"Covid-19\"},{\"Choice\":\"B\",\"Option\":\"Tuberculosis\"},{\"Choice\":\"C\",\"Option\":\"Pneumonia\"},{\"Choice\":\"D\",\"Option\":\"Polio\"}]',1,'A',3,'INTERMEDIATE'),(47,'Sample Question Art 20 ?','[{\"Choice\":\"A\",\"Option\":\"PSLV-C51\"},{\"Choice\":\"B\",\"Option\":\"PSLV-C52\"},{\"Choice\":\"C\",\"Option\":\"PSLV-C53\"},{\"Choice\":\"D\",\"Option\":\"PSLV-C54\"}]',1,'A',3,'PROFESSIONAL'),(48,'Sample Question Art 21 ?','[{\"Choice\":\"A\",\"Option\":\"storm tides\"},{\"Choice\":\"B\",\"Option\":\"Rip tides\"},{\"Choice\":\"C\",\"Option\":\"Neap tides\"},{\"Choice\":\"D\",\"Option\":\"Tsunami\"}]',1,'A',3,'PROFESSIONAL'),(49,'Sample Question Art 22 ?','[{\"Choice\":\"A\",\"Option\":\"Football\"},{\"Choice\":\"B\",\"Option\":\"Chess\"},{\"Choice\":\"C\",\"Option\":\"Cricket\"},{\"Choice\":\"D\",\"Option\":\"Squash\"}]',1,'A',3,'PROFESSIONAL'),(50,'Sample Question Art 23 ?','[{\"Choice\":\"A\",\"Option\":\"Athletics\"},{\"Choice\":\"B\",\"Option\":\"Boxing\"},{\"Choice\":\"C\",\"Option\":\"Swimming\"},{\"Choice\":\"D\",\"Option\":\"Racing\"}]',1,'C',3,'PROFESSIONAL'),(51,'Sample Question Art 24 ?','[{\"Choice\":\"A\",\"Option\":\"Clay court\"},{\"Choice\":\"B\",\"Option\":\"Grass Court\"},{\"Choice\":\"C\",\"Option\":\"Hard Court\"},{\"Choice\":\"D\",\"Option\":\"Carpet Court\"}]',1,'A',3,'PROFESSIONAL'),(52,'Sample Question Art 25 ?','[{\"Choice\":\"A\",\"Option\":\"Chicago\"},{\"Choice\":\"B\",\"Option\":\"New York\"},{\"Choice\":\"C\",\"Option\":\"California\"},{\"Choice\":\"D\",\"Option\":\"Florida\"}]',1,'A',3,'PROFESSIONAL'),(53,'Sample Question Politics 1 ?','[{\"Choice\":\"A\",\"Option\":\"storm tides\"},{\"Choice\":\"B\",\"Option\":\"Rip tides\"},{\"Choice\":\"C\",\"Option\":\"Neap tides\"},{\"Choice\":\"D\",\"Option\":\"Tsunami\"}]',1,'B',4,'BEGINNER'),(54,'Sample Question Politics 2 ?','[{\"Choice\":\"A\",\"Option\":\"Football\"},{\"Choice\":\"B\",\"Option\":\"Chess\"},{\"Choice\":\"C\",\"Option\":\"Cricket\"},{\"Choice\":\"D\",\"Option\":\"Squash\"}]',1,'D',4,'BEGINNER'),(55,'Sample Question Politics 3 ?','[{\"Choice\":\"A\",\"Option\":\"Athletics\"},{\"Choice\":\"B\",\"Option\":\"Boxing\"},{\"Choice\":\"C\",\"Option\":\"Swimming\"},{\"Choice\":\"D\",\"Option\":\"Racing\"}]',1,'C',4,'BEGINNER'),(56,'Sample Question Politics 4 ?','[{\"Choice\":\"A\",\"Option\":\"Clay court\"},{\"Choice\":\"B\",\"Option\":\"Grass Court\"},{\"Choice\":\"C\",\"Option\":\"Hard Court\"},{\"Choice\":\"D\",\"Option\":\"Carpet Court\"}]',1,'C',4,'BEGINNER'),(57,'Sample Question Politics 5 ?','[{\"Choice\":\"A\",\"Option\":\"Chicago\"},{\"Choice\":\"B\",\"Option\":\"New York\"},{\"Choice\":\"C\",\"Option\":\"California\"},{\"Choice\":\"D\",\"Option\":\"Florida\"}]',1,'C',4,'BEGINNER'),(58,'Sample Question Politics 6 ?','[{\"Choice\":\"A\",\"Option\":\"1907\"},{\"Choice\":\"B\",\"Option\":\"1926\"},{\"Choice\":\"C\",\"Option\":\"1934\"},{\"Choice\":\"D\",\"Option\":\"1956\"}]',1,'C',4,'INTERMEDIATE'),(59,'Sample Question Politics 7 ?','[{\"Choice\":\"A\",\"Option\":\"Brazil\"},{\"Choice\":\"B\",\"Option\":\"United States\"},{\"Choice\":\"C\",\"Option\":\"Mexico\"},{\"Choice\":\"D\",\"Option\":\"Italy\"}]',1,'A',4,'INTERMEDIATE'),(60,'Sample Question Politics 8 ?','[{\"Choice\":\"A\",\"Option\":\"Adidas\"},{\"Choice\":\"B\",\"Option\":\"Nike\"},{\"Choice\":\"C\",\"Option\":\"Reebok\"},{\"Choice\":\"D\",\"Option\":\"Puma\"}]',1,'B',4,'INTERMEDIATE'),(61,'Sample Question Politics 9 ?','[{\"Choice\":\"A\",\"Option\":\"Rob May\"},{\"Choice\":\"B\",\"Option\":\"Simon Hill\"},{\"Choice\":\"C\",\"Option\":\"Franz Lambert\"},{\"Choice\":\"D\",\"Option\":\"All of the above\"}]',1,'C',4,'PROFESSIONAL'),(62,'Sample Question Politics 10 ?','[{\"Choice\":\"A\",\"Option\":\"Olga Rudenko\"},{\"Choice\":\"B\",\"Option\":\"Xie Jun\"},{\"Choice\":\"C\",\"Option\":\"Hou Yifan\"},{\"Choice\":\"D\",\"Option\":\"Vera Menchik\"}]',1,'D',4,'PROFESSIONAL'),(63,'Sample Question Politics 11 ?','[{\"Choice\":\"A\",\"Option\":\"1928\"},{\"Choice\":\"B\",\"Option\":\"1908\"},{\"Choice\":\"C\",\"Option\":\"1935\"},{\"Choice\":\"D\",\"Option\":\"1958\"}]',1,'D',4,'PROFESSIONAL'),(64,'Sample Question Politics 12 ?','[{\"Choice\":\"A\",\"Option\":\"Microsoft\"},{\"Choice\":\"B\",\"Option\":\"Google\"},{\"Choice\":\"C\",\"Option\":\"Facebook\"},{\"Choice\":\"D\",\"Option\":\"Nokia\"}]',1,'D',4,'BEGINNER'),(65,'Sample Question Politics 13 ?','[{\"Choice\":\"A\",\"Option\":\"HAL\"},{\"Choice\":\"B\",\"Option\":\"ISRO\"},{\"Choice\":\"C\",\"Option\":\"DRDO\"},{\"Choice\":\"D\",\"Option\":\"NHPC\"}]',1,'C',4,'BEGINNER'),(66,'Sample Question Politics 14 ?','[{\"Choice\":\"A\",\"Option\":\"Jio Networks\"},{\"Choice\":\"B\",\"Option\":\"BSNL\"},{\"Choice\":\"C\",\"Option\":\"Airtel\"},{\"Choice\":\"D\",\"Option\":\"Vi\"}]',1,'B',4,'BEGINNER'),(67,'Sample Question Politics 15 ?','[{\"Choice\":\"A\",\"Option\":\"Space Watch\"},{\"Choice\":\"B\",\"Option\":\"Netra\"},{\"Choice\":\"C\",\"Option\":\"Vision\"},{\"Choice\":\"D\",\"Option\":\"Gaganyaan\"}]',1,'B',4,'BEGINNER'),(68,'Sample Question Politics 16 ?','[{\"Choice\":\"A\",\"Option\":\"AstroSat\"},{\"Choice\":\"B\",\"Option\":\"CartoSat-2\"},{\"Choice\":\"C\",\"Option\":\"Risat-7E\"},{\"Choice\":\"D\",\"Option\":\"Insat- 4E\"}]',1,'A',4,'INTERMEDIATE'),(69,'Sample Question Politics 17 ?','[{\"Choice\":\"A\",\"Option\":\"India\"},{\"Choice\":\"B\",\"Option\":\"China\"},{\"Choice\":\"C\",\"Option\":\"Russia\"},{\"Choice\":\"D\",\"Option\":\"United States\"}]',1,'A',4,'INTERMEDIATE'),(70,'Sample Question Politics 18 ?','[{\"Choice\":\"A\",\"Option\":\"2G\"},{\"Choice\":\"B\",\"Option\":\"3G\"},{\"Choice\":\"C\",\"Option\":\"4G\"},{\"Choice\":\"D\",\"Option\":\"5G\"}]',1,'C',4,'INTERMEDIATE'),(71,'Sample Question Politics 19 ?','[{\"Choice\":\"A\",\"Option\":\"Covid-19\"},{\"Choice\":\"B\",\"Option\":\"Tuberculosis\"},{\"Choice\":\"C\",\"Option\":\"Pneumonia\"},{\"Choice\":\"D\",\"Option\":\"Polio\"}]',1,'A',4,'INTERMEDIATE'),(72,'Sample Question Politics 20 ?','[{\"Choice\":\"A\",\"Option\":\"PSLV-C51\"},{\"Choice\":\"B\",\"Option\":\"PSLV-C52\"},{\"Choice\":\"C\",\"Option\":\"PSLV-C53\"},{\"Choice\":\"D\",\"Option\":\"PSLV-C54\"}]',1,'A',4,'PROFESSIONAL'),(73,'Sample Question Politics 21 ?','[{\"Choice\":\"A\",\"Option\":\"storm tides\"},{\"Choice\":\"B\",\"Option\":\"Rip tides\"},{\"Choice\":\"C\",\"Option\":\"Neap tides\"},{\"Choice\":\"D\",\"Option\":\"Tsunami\"}]',1,'A',4,'PROFESSIONAL'),(74,'Sample Question Politics 22 ?','[{\"Choice\":\"A\",\"Option\":\"Football\"},{\"Choice\":\"B\",\"Option\":\"Chess\"},{\"Choice\":\"C\",\"Option\":\"Cricket\"},{\"Choice\":\"D\",\"Option\":\"Squash\"}]',1,'A',4,'PROFESSIONAL'),(75,'Sample Question Politics 23 ?','[{\"Choice\":\"A\",\"Option\":\"Athletics\"},{\"Choice\":\"B\",\"Option\":\"Boxing\"},{\"Choice\":\"C\",\"Option\":\"Swimming\"},{\"Choice\":\"D\",\"Option\":\"Racing\"}]',1,'C',4,'PROFESSIONAL'),(76,'Sample Question Politics 24 ?','[{\"Choice\":\"A\",\"Option\":\"Clay court\"},{\"Choice\":\"B\",\"Option\":\"Grass Court\"},{\"Choice\":\"C\",\"Option\":\"Hard Court\"},{\"Choice\":\"D\",\"Option\":\"Carpet Court\"}]',1,'A',4,'PROFESSIONAL'),(77,'Sample Question Politics 25 ?','[{\"Choice\":\"A\",\"Option\":\"Chicago\"},{\"Choice\":\"B\",\"Option\":\"New York\"},{\"Choice\":\"C\",\"Option\":\"California\"},{\"Choice\":\"D\",\"Option\":\"Florida\"}]',1,'A',4,'PROFESSIONAL');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topics`
--

DROP TABLE IF EXISTS `topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topics` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `topic` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topics`
--

LOCK TABLES `topics` WRITE;
/*!40000 ALTER TABLE `topics` DISABLE KEYS */;
INSERT INTO `topics` VALUES (1,'Sports'),(2,'Science & Technology'),(3,'Arts'),(4,'Politics');
/*!40000 ALTER TABLE `topics` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-08 20:41:23