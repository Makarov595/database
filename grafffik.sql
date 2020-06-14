-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: grafffik
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `drill_teams`
--

DROP TABLE IF EXISTS `drill_teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drill_teams` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) DEFAULT NULL COMMENT '╨╜╨░╨╖╨▓╨░╨╜╨╕╨╡ ╨┐╨╛╨┤╤А╤П╨┤╤З╨╕╨║╨░',
  `brigade_number` int DEFAULT NULL COMMENT '╨╜╨╛╨╝╨╡╤А ╨▒╤А╨╕╨│╨░╨┤╤Л',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drill_teams`
--

LOCK TABLES `drill_teams` WRITE;
/*!40000 ALTER TABLE `drill_teams` DISABLE KEYS */;
INSERT INTO `drill_teams` VALUES (1,'Team_Name_1',3),(2,'Team_Name_1',5),(3,'Team_Name_3',7);
/*!40000 ALTER TABLE `drill_teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layers`
--

DROP TABLE IF EXISTS `layers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `layers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL COMMENT '╨╜╨░╨╖╨▓╨░╨╜╨╕╨╡ ╨┐╨╗╨░╤Б╤В╨░',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layers`
--

LOCK TABLES `layers` WRITE;
/*!40000 ALTER TABLE `layers` DISABLE KEYS */;
INSERT INTO `layers` VALUES (1,'TR'),(2,'BT'),(3,'AB'),(4,'D'),(5,'F'),(6,'Y');
/*!40000 ALTER TABLE `layers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oil_gas_fields`
--

DROP TABLE IF EXISTS `oil_gas_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oil_gas_fields` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `field_name` varchar(255) NOT NULL COMMENT '╨Э╨░╨╖╨▓╨░╨╜╨╕╨╡ ╨╝╨╡╤Б╤В╨╛╤А╨╛╨╢╨┤╨╡╨╜╨╕╤П',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oil_gas_fields`
--

LOCK TABLES `oil_gas_fields` WRITE;
/*!40000 ALTER TABLE `oil_gas_fields` DISABLE KEYS */;
INSERT INTO `oil_gas_fields` VALUES (1,'FieldName_1'),(2,'FieldName_2'),(3,'FieldName_3'),(4,'FieldName_4'),(5,'FieldName_5');
/*!40000 ALTER TABLE `oil_gas_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `well_platforms`
--

DROP TABLE IF EXISTS `well_platforms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `well_platforms` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `platform_name` varchar(30) DEFAULT NULL COMMENT '╨Э╨░╨╖╨▓╨░╨╜╨╕╨╡ ╨║╤Г╤Б╤В╨░',
  `project_quantity_wells` int NOT NULL COMMENT '╨┐╤А╨╛╨╡╨║╤В╨╜╨╛╨╡ ╨║╨╛╨╗╨╕╤З╨╡╤Б╤В╨▓╨╛ ╤Б╨║╨▓╨░╨╢╨╕╨╜',
  `start_build_p_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '╨╜╨░╤З╨░╨╗╨╛ ╤Б╤В╤А╨╛╨╕╤В╨╡╨╗╤М╤Б╤В╨▓╨░ ╨Ъ╨Я',
  `finish_build_p_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '╤Д╨╕╨╜╨░╨╗╤М╨╜╨╛╨╡ ╨╛╨║╨╛╨╜╤З╨░╨╜╨╕╨╡ ╤Б╤В╤А╨╛╨╕╤В╨╡╨╗╤М╤Б╤В╨▓╨░ ╨Ъ╨Я',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `well_platforms`
--

LOCK TABLES `well_platforms` WRITE;
/*!40000 ALTER TABLE `well_platforms` DISABLE KEYS */;
INSERT INTO `well_platforms` VALUES (10,'10',12,'2018-10-03 00:00:00','2019-01-01 00:00:00'),(11,'11',12,'2019-09-28 05:16:48','2019-12-27 05:16:48'),(12,'12',24,'2018-10-03 00:00:00','2019-01-01 00:00:00'),(13,'13',12,'2021-01-12 11:02:24','2021-04-12 11:02:24'),(14,'14',12,'2018-10-03 00:00:00','2019-01-01 00:00:00'),(15,'15',12,'2020-08-04 14:24:00','2020-11-02 14:24:00'),(16,'16',24,'2021-03-26 11:02:24','2021-06-24 11:02:24'),(17,'17',12,'2022-08-26 15:21:36','2022-11-24 15:21:36'),(18,'18',18,'2024-02-03 14:24:00','2024-05-03 14:24:00'),(19,'19',18,'2025-05-03 09:07:12','2025-08-01 09:07:12'),(20,'20',6,'2026-04-18 06:14:24','2026-07-17 06:14:24');
/*!40000 ALTER TABLE `well_platforms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `well_project`
--

DROP TABLE IF EXISTS `well_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `well_project` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `design` varchar(255) DEFAULT NULL COMMENT '╨║╨╛╨╜╤Б╤В╤А╤Г╨║╤Ж╨╕╤П ╤Б╨║╨▓╨░╨╢╨╕╨╜╤Л',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `well_project`
--

LOCK TABLES `well_project` WRITE;
/*!40000 ALTER TABLE `well_project` DISABLE KEYS */;
INSERT INTO `well_project` VALUES (1,'530/324/245/178/114'),(2,'530/324/245/178/114/114'),(3,'630(324)/324/245/178/114'),(4,'324/245/178/114');
/*!40000 ALTER TABLE `well_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `well_statuses`
--

DROP TABLE IF EXISTS `well_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `well_statuses` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(30) DEFAULT NULL COMMENT '╤Б╤В╨░╤В╤Г╤Б ╤А╨░╨▒╨╛╤В ╨┐╨╛ ╤Б╨║╨▓╨░╨╢╨╕╨╜╨╡',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `well_statuses`
--

LOCK TABLES `well_statuses` WRITE;
/*!40000 ALTER TABLE `well_statuses` DISABLE KEYS */;
INSERT INTO `well_statuses` VALUES (1,'drilling'),(2,'developing'),(3,'regime'),(4,'operation'),(5,'in_plan');
/*!40000 ALTER TABLE `well_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wells`
--

DROP TABLE IF EXISTS `wells`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wells` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `platform_id` int unsigned NOT NULL COMMENT 'id ╨║╤Г╤Б╤В╨░',
  `field_id` int unsigned NOT NULL COMMENT 'id ╨Ь╨╡╤Б╤В╨╛╤А╨╛╨╢╨┤╨╡╨╜╨╕╨╡',
  `drill_team_id` int unsigned NOT NULL COMMENT 'id ╨▒╤Г╤А╨╛╨▓╨╛╨╣ ╨┐╨╛╨┤╤А╤П╨┤╤З╨╕╨║/╨▒╤А╨╕╨│╨░╨┤╨░',
  `layer_id` int unsigned NOT NULL COMMENT 'id ╨┐╨╗╨░╤Б╤В╨░',
  `design_id` int unsigned NOT NULL COMMENT 'id ╨║╨╛╨╜╤Б╤В╤А╤Г╨║╤Ж╨╕╨╕ ╤Б╨║╨▓╨░╨╢╨╕╨╜╤Л',
  `status_id` int unsigned NOT NULL COMMENT 'id ╤Б╤В╨░╤В╤Г╤Б╨░ ╤А╨░╨▒╨╛╤В ╨┐╨╛ ╤Б╨║╨▓╨░╨╢╨╕╨╜╨╡',
  `well_number` int DEFAULT NULL COMMENT '╨Э╨╛╨╝╨╡╤А ╤Б╨║╨▓╨░╨╢╨╕╨╜╤Л',
  `well_purpose` varchar(30) DEFAULT NULL COMMENT '╨Э╨░╨╖╨╜╨░╤З╨╡╨╜╨╕╨╡ ╤Б╨║╨▓╨░╨╢╨╕╨╜╤Л',
  `well_function` varchar(10) DEFAULT NULL COMMENT '╤В╨╕╨┐ ╤Д╨╗╤О╨╕╨┤╨░',
  `start_build_w_date` datetime DEFAULT NULL COMMENT '╨╜╨░╤З╨░╨╗╨╛ ╤Б╤В╤А╨╛╨╕╤В╨╡╨╗╤М╤Б╤В╨▓╨░ ╤Б╨║╨▓',
  `finish_build_w_date` datetime DEFAULT NULL COMMENT '╨╛╨║╨╛╨╜╤З╨░╨╜╨╕╨╡ ╤Б╤В╤А╨╛╨╕╤В╨╡╨╗╤М╤Б╤В╨▓╨░ ╤Б╨║╨▓',
  PRIMARY KEY (`id`),
  KEY `wells_platform_id_fk` (`platform_id`),
  KEY `wells_field_id_fk` (`field_id`),
  KEY `wells_drill_team_id_fk` (`drill_team_id`),
  KEY `wells_layer_id_fk` (`layer_id`),
  KEY `wells_design_id_fk` (`design_id`),
  KEY `wells_status_id_fk` (`status_id`),
  CONSTRAINT `wells_design_id_fk` FOREIGN KEY (`design_id`) REFERENCES `well_project` (`id`) ON DELETE CASCADE,
  CONSTRAINT `wells_drill_team_id_fk` FOREIGN KEY (`drill_team_id`) REFERENCES `drill_teams` (`id`) ON DELETE CASCADE,
  CONSTRAINT `wells_field_id_fk` FOREIGN KEY (`field_id`) REFERENCES `oil_gas_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `wells_layer_id_fk` FOREIGN KEY (`layer_id`) REFERENCES `layers` (`id`) ON DELETE CASCADE,
  CONSTRAINT `wells_platform_id_fk` FOREIGN KEY (`platform_id`) REFERENCES `well_platforms` (`id`) ON DELETE CASCADE,
  CONSTRAINT `wells_status_id_fk` FOREIGN KEY (`status_id`) REFERENCES `well_statuses` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wells`
--

LOCK TABLES `wells` WRITE;
/*!40000 ALTER TABLE `wells` DISABLE KEYS */;
INSERT INTO `wells` VALUES (1,10,1,1,4,3,4,1405,'prodaction','g','2019-01-01 00:00:00','2019-01-30 16:48:00'),(2,10,1,1,4,1,4,6111,'injection','w','2019-01-17 00:00:00','2019-03-02 09:36:00'),(3,10,1,1,3,2,4,7033,'injection','o','2019-02-03 00:00:00','2019-04-14 00:00:00'),(4,10,1,1,4,3,4,3979,'prodaction','w','2019-02-25 00:00:00','2019-05-15 16:48:00'),(5,10,1,1,4,2,4,6445,'prodaction','o, g','2019-03-13 00:00:00','2019-06-15 09:36:00'),(6,10,1,1,5,1,4,4595,'injection','w','2019-03-30 00:00:00','2019-07-23 10:33:36'),(7,10,1,1,5,4,4,7145,'prodaction','g','2019-04-19 00:00:00','2019-08-30 11:31:12'),(8,10,1,1,4,3,4,7179,'injection','o','2019-05-09 00:00:00','2019-10-01 04:19:12'),(9,10,1,1,5,3,4,2681,'injection','g','2019-07-13 00:00:00','2019-12-26 05:16:48'),(10,11,1,1,3,1,4,1943,'injection','g','2019-08-01 00:00:00','2020-02-05 19:40:48'),(11,11,1,1,1,4,4,7125,'injection','o','2019-08-22 00:00:00','2020-04-03 05:16:48'),(12,11,1,1,6,3,4,5048,'prodaction','o','2019-09-22 00:00:00','2020-05-13 00:57:36'),(13,11,1,1,1,2,4,1137,'prodaction','g','2019-10-12 00:00:00','2020-07-09 10:33:36'),(14,11,1,1,1,2,4,6803,'injection','o','2019-11-13 00:00:00','2020-09-05 20:09:36'),(15,11,1,1,3,1,4,1456,'injection','g','2019-12-14 00:00:00','2020-10-17 10:33:36'),(16,11,1,1,6,2,4,3979,'prodaction','o, g','2020-01-05 00:00:00','2020-11-27 06:14:24'),(17,11,1,1,2,3,4,6801,'injection','g','2020-01-27 00:00:00','2021-01-17 18:14:24'),(18,11,1,1,6,2,4,4810,'prodaction','o','2020-02-24 00:00:00','2021-02-28 13:55:12'),(19,11,1,1,5,2,4,2927,'prodaction','o, g','2020-05-03 00:00:00','2021-05-25 14:52:48'),(20,12,1,2,1,2,4,6005,'prodaction','o, g','2019-01-01 00:00:00','2019-02-26 09:36:00'),(21,12,1,2,1,1,4,1468,'injection','o','2019-02-03 00:00:00','2019-04-26 19:12:00'),(22,12,1,2,6,1,4,5332,'injection','o, g','2019-03-08 00:00:00','2019-06-07 14:52:48'),(23,12,1,2,3,3,4,5685,'injection','w','2019-03-29 00:00:00','2019-07-20 05:16:48'),(24,12,1,2,4,4,4,6616,'prodaction','w','2019-04-20 00:00:00','2020-01-31 16:48:00'),(25,12,1,2,4,3,4,5271,'prodaction','w','2019-05-08 00:00:00','2020-03-04 09:36:00'),(26,12,1,2,3,1,4,1155,'prodaction','o, g','2019-05-24 00:00:00','2020-04-15 00:00:00'),(27,12,1,2,1,1,4,5401,'prodaction','o','2019-06-14 00:00:00','2020-06-11 09:36:00'),(28,12,1,2,5,1,4,4066,'injection','w','2019-07-15 00:00:00','2020-07-18 10:33:36'),(29,12,1,2,4,4,4,4075,'injection','w','2019-08-03 00:00:00','2020-08-18 03:21:36'),(30,12,1,2,4,3,4,3301,'prodaction','g','2019-08-21 00:00:00','2020-09-19 20:09:36'),(31,12,1,2,1,3,4,6220,'injection','o, g','2019-09-06 00:00:00','2020-11-16 05:45:36'),(32,12,1,2,6,3,4,2608,'prodaction','o','2019-10-07 00:00:00','2020-12-26 01:26:24'),(33,12,1,2,1,1,4,3683,'injection','o, g','2019-12-15 00:00:00','2021-04-11 11:02:24'),(34,13,1,2,1,3,4,5681,'prodaction','w','2020-01-15 00:00:00','2021-06-07 20:38:24'),(35,13,1,2,3,3,4,6399,'prodaction','w','2020-02-15 00:00:00','2021-07-19 11:02:24'),(36,13,1,2,5,3,4,4968,'prodaction','g','2020-03-09 00:00:00','2021-08-27 12:00:00'),(37,13,1,2,1,1,4,5983,'prodaction','w','2020-03-28 00:00:00','2021-10-23 21:36:00'),(38,13,1,2,5,1,4,1180,'prodaction','o, g','2020-04-30 00:00:00','2021-12-01 22:33:36'),(39,13,1,2,2,3,2,4070,'prodaction','o','2020-05-20 00:00:00','2022-01-21 10:33:36'),(40,13,1,2,6,4,1,4679,'prodaction','w','2020-08-03 00:00:00','2022-04-20 06:14:24'),(41,14,2,3,6,3,4,1489,'injection','o, g','2019-01-01 00:00:00','2019-02-08 19:40:48'),(42,14,2,3,5,2,4,5254,'prodaction','o, g','2019-01-23 00:00:00','2019-03-19 20:38:24'),(43,14,2,3,2,3,4,3811,'prodaction','g','2019-02-12 00:00:00','2019-05-09 08:38:24'),(44,14,2,3,1,1,4,7281,'injection','o, g','2019-03-11 00:00:00','2019-07-06 18:14:24'),(45,14,2,3,4,3,4,1728,'injection','o','2019-04-13 00:00:00','2020-01-31 16:48:00'),(46,14,2,3,4,2,4,2678,'prodaction','o, g','2019-05-01 00:00:00','2020-03-04 09:36:00'),(47,14,2,3,3,2,4,1484,'prodaction','o, g','2019-05-19 00:00:00','2020-04-17 00:00:00'),(48,14,2,3,3,4,4,4052,'prodaction','o','2019-06-10 00:00:00','2020-05-29 14:24:00'),(49,14,2,3,4,4,4,5420,'injection','w','2019-07-01 00:00:00','2020-06-29 07:12:00'),(50,14,2,3,4,3,4,7985,'prodaction','g','2019-07-19 00:00:00','2020-08-01 00:00:00'),(51,14,2,3,3,2,4,1353,'prodaction','w','2019-09-22 00:00:00','2020-10-30 14:24:00'),(52,15,2,3,3,1,4,3076,'injection','g','2019-10-15 00:00:00','2020-12-13 04:48:00'),(53,15,2,3,6,3,4,2822,'prodaction','g','2019-11-07 00:00:00','2021-01-24 00:28:48'),(54,15,2,3,5,4,4,4583,'prodaction','o','2019-11-29 00:00:00','2021-03-04 01:26:24'),(55,15,2,3,4,1,4,4792,'prodaction','o, g','2019-12-18 00:00:00','2021-04-03 18:14:24'),(56,15,2,3,4,3,4,1292,'prodaction','o','2020-02-21 00:00:00','2021-06-22 11:02:24'),(57,16,2,3,2,2,4,3295,'prodaction','o','2020-03-09 00:00:00','2021-08-11 23:02:24'),(58,16,2,3,1,3,4,5582,'injection','o','2020-04-06 00:00:00','2021-10-10 08:38:24'),(59,16,2,3,3,4,3,6013,'injection','o','2020-05-08 00:00:00','2021-11-21 23:02:24'),(60,16,2,3,5,2,1,2112,'prodaction','o, g','2020-05-30 00:00:00','2021-12-30 00:00:00'),(61,16,2,3,4,3,5,3977,'injection','o, g','2020-06-20 00:00:00','2022-01-31 16:48:00'),(62,16,2,3,2,1,5,2208,'prodaction','o, g','2020-07-07 00:00:00','2022-03-23 04:48:00'),(63,16,2,3,3,2,5,7449,'injection','g','2020-08-03 00:00:00','2022-05-04 19:12:00'),(64,16,2,3,1,2,5,3463,'injection','g','2020-08-24 00:00:00','2022-07-01 04:48:00'),(65,16,2,3,5,2,5,4340,'injection','o','2020-09-26 00:00:00','2022-08-09 05:45:36'),(66,16,2,3,1,3,5,6927,'prodaction','w','2020-12-03 00:00:00','2022-11-23 15:21:36'),(67,17,2,3,1,2,5,5592,'prodaction','o','2021-01-03 00:00:00','2023-01-20 00:57:36'),(68,17,2,3,4,3,5,7975,'injection','o, g','2021-02-04 00:00:00','2023-02-20 17:45:36'),(69,17,2,3,1,4,5,6490,'prodaction','o, g','2021-02-20 00:00:00','2023-04-19 03:21:36'),(70,17,2,3,6,1,5,4721,'prodaction','o','2021-03-24 00:00:00','2023-05-29 23:02:24'),(71,17,2,3,3,3,5,7330,'prodaction','w','2021-04-15 00:00:00','2023-07-12 13:26:24'),(72,17,2,3,4,1,5,7314,'injection','w','2021-05-06 00:00:00','2023-08-12 06:14:24'),(73,17,2,3,1,3,5,4445,'injection','g','2021-05-23 00:00:00','2023-10-09 15:50:24'),(74,17,2,3,5,1,5,4858,'prodaction','o','2021-06-25 00:00:00','2023-11-17 16:48:00'),(75,17,2,3,5,4,5,6202,'prodaction','w','2021-07-15 00:00:00','2023-12-25 17:45:36'),(76,17,2,3,5,2,5,3916,'injection','g','2021-08-05 00:00:00','2024-02-02 18:43:12'),(77,17,2,3,6,4,5,3125,'prodaction','g','2021-10-12 00:00:00','2024-05-01 14:24:00'),(78,18,2,3,1,3,5,2945,'injection','w','2021-11-02 00:00:00','2024-06-29 00:00:00'),(79,18,2,3,4,2,5,7015,'prodaction','w','2021-12-03 00:00:00','2024-07-29 16:48:00'),(80,18,2,3,6,4,5,3931,'prodaction','g','2021-12-20 00:00:00','2024-09-08 12:28:48'),(81,18,2,3,4,1,5,7306,'prodaction','g','2022-01-09 00:00:00','2024-10-09 05:16:48'),(82,18,2,3,2,2,5,3597,'prodaction','w','2022-01-27 00:00:00','2024-11-29 17:16:48'),(83,18,2,3,5,1,5,5188,'prodaction','o','2022-02-24 00:00:00','2025-01-07 18:14:24'),(84,18,2,3,6,3,5,7429,'injection','o, g','2022-03-15 00:00:00','2025-02-16 13:55:12'),(85,18,2,3,1,1,5,7694,'injection','w','2022-04-04 00:00:00','2025-04-14 23:31:12'),(86,18,2,3,1,1,5,2482,'prodaction','w','2022-06-23 00:00:00','2025-07-30 09:07:12'),(87,19,2,3,5,3,5,1780,'injection','g','2022-07-25 00:00:00','2025-09-06 10:04:48'),(88,19,2,3,3,1,5,5195,'prodaction','o','2022-08-13 00:00:00','2025-10-18 00:28:48'),(89,19,2,3,2,4,5,5882,'prodaction','w','2022-09-05 00:00:00','2025-12-08 12:28:48'),(90,19,2,3,1,4,5,5722,'prodaction','o','2022-10-01 00:00:00','2026-02-03 22:04:48'),(91,19,2,3,4,1,5,1749,'injection','o, g','2022-11-02 00:00:00','2026-03-07 14:52:48'),(92,19,2,3,5,4,5,4360,'prodaction','w','2022-11-19 00:00:00','2026-04-14 15:50:24'),(93,19,2,3,3,3,5,3449,'prodaction','o, g','2023-01-26 00:00:00','2026-07-14 06:14:24'),(94,20,2,3,2,2,5,7600,'injection','o, g','2023-02-18 00:00:00','2026-09-03 18:14:24'),(95,20,2,3,5,1,5,5880,'injection','o, g','2023-03-16 00:00:00','2026-10-10 19:12:00'),(96,20,2,3,6,4,5,5729,'prodaction','o, g','2023-04-06 00:00:00','2026-11-21 14:52:48'),(97,20,2,3,2,4,5,5494,'prodaction','w','2023-04-27 00:00:00','2027-01-11 02:52:48'),(98,20,2,3,6,2,5,3428,'prodaction','o, g','2023-05-24 00:00:00','2027-02-20 22:33:36'),(99,20,2,3,3,3,5,1556,'prodaction','g','2023-06-14 00:00:00','2027-04-04 12:57:36');
/*!40000 ALTER TABLE `wells` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_time`
--

DROP TABLE IF EXISTS `work_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `work_time` (
  `well_id` int unsigned NOT NULL AUTO_INCREMENT,
  `drill_time` float NOT NULL COMMENT '╨Т╤А╨╡╨╝╤П ╨▒╤Г╤А╨╡╨╜╨╕╤П',
  `develop_time` float NOT NULL COMMENT '╨Т╤А╨╡╨╝╤П ╨╛╤Б╨▓╨╛╨╡╨╜╨╕╤П',
  `trial_time` float NOT NULL COMMENT '╨Т╤А╨╡╨╝╤П ╨┤╨╛ ╨▓╨▓╨╛╨┤╨░ ╨▓ ╤Н╨║╤Б╨┐╨╗╤Г╨░╤В╨░╤Ж╨╕╤О',
  `TPD_time` float NOT NULL COMMENT '╨Т╤А╨╡╨╝╤П ╨▓╤Л╤И╨║╨╛╨╝╨╛╨╜╤В╨░╨╢╨╜╤Л╤Е ╤А╨░╨▒╨╛╤В',
  PRIMARY KEY (`well_id`),
  CONSTRAINT `work_time_well_id_fk` FOREIGN KEY (`well_id`) REFERENCES `wells` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_time`
--

LOCK TABLES `work_time` WRITE;
/*!40000 ALTER TABLE `work_time` DISABLE KEYS */;
INSERT INTO `work_time` VALUES (1,15,12,3,50),(2,15,16,3,1),(3,20,12,5,2),(4,15,12,3,2),(5,15,14,3,1),(6,18,14,4,2),(7,18,12,4,2),(8,15,14,3,2),(9,18,16,4,50),(10,20,23,5,1),(11,30,15,3,1),(12,19,23,5,1),(13,30,23,3,1),(14,30,16,3,2),(15,20,15,5,1),(16,19,20,5,2),(17,25,15,4,3),(18,19,14,5,3),(19,18,23,4,50),(20,30,23,3,3),(21,30,15,3,3),(22,19,16,5,3),(23,20,12,5,2),(24,15,12,3,2),(25,15,16,3,3),(26,20,23,5,1),(27,30,14,3,1),(28,18,12,4,1),(29,15,12,3,1),(30,15,23,3,3),(31,30,15,3,1),(32,19,23,5,1),(33,30,23,3,50),(34,30,16,3,1),(35,20,14,5,1),(36,18,23,4,3),(37,30,14,3,1),(38,18,20,4,3),(39,25,15,4,2),(40,19,15,5,50),(41,19,14,5,2),(42,18,20,4,3),(43,25,23,4,2),(44,30,12,3,2),(45,15,12,3,3),(46,15,16,3,3),(47,20,16,5,3),(48,20,12,5,2),(49,15,12,3,1),(50,15,16,3,3),(51,20,16,5,50),(52,20,15,5,3),(53,19,14,5,3),(54,18,12,4,3),(55,15,12,3,1),(56,15,20,3,50),(57,25,23,4,2),(58,30,16,3,3),(59,20,14,5,2),(60,18,12,4,2),(61,15,20,3,3),(62,25,16,4,2),(63,20,23,5,2),(64,30,14,3,1),(65,18,23,4,3),(66,30,23,3,50),(67,30,12,3,1),(68,15,23,3,2),(69,30,15,3,1),(70,19,16,5,2),(71,20,12,5,3),(72,15,23,3,1),(73,30,14,3,2),(74,18,14,4,3),(75,18,14,4,2),(76,18,15,4,3),(77,19,23,5,50),(78,30,12,3,2),(79,15,15,3,1),(80,19,12,5,2),(81,15,20,3,1),(82,25,14,4,3),(83,18,15,4,3),(84,19,23,5,1),(85,30,23,3,1),(86,30,14,3,50),(87,18,16,4,2),(88,20,20,5,1),(89,25,23,4,3),(90,30,12,3,1),(91,15,14,3,2),(92,18,16,4,2),(93,20,20,5,50),(94,25,14,4,3),(95,18,15,4,1),(96,19,20,5,3),(97,25,15,4,2),(98,19,16,5,2),(99,20,14,5,2);
/*!40000 ALTER TABLE `work_time` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-15  0:08:59
