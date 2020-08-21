CREATE DATABASE  IF NOT EXISTS `ems` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ems`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ems
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
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Advertisement',1),(2,'Engineering',1),(3,'Accounts',1);
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `id` int NOT NULL AUTO_INCREMENT,
  `personal_details_id` int NOT NULL,
  `designation` varchar(75) NOT NULL,
  `date_of_joining` date NOT NULL,
  `reporting_to` int DEFAULT NULL,
  `department_id` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `date_of_leaving` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (2,7,'Software Engineer','2019-07-18',NULL,1,1,NULL),(5,20,'ty','1991-03-11',NULL,2,1,NULL),(6,21,'hhhhh','2020-08-09',NULL,2,1,NULL),(7,22,'8','2020-11-11',NULL,1,1,NULL);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_details`
--

DROP TABLE IF EXISTS `personal_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(75) NOT NULL,
  `last_name` varchar(75) NOT NULL,
  `dob` date NOT NULL,
  `permanent address_line1` text,
  `permanent_address_line2` text,
  `permanent_address_city` text,
  `permanent_address_state` text,
  `permanent_address_country` text,
  `contact_number` bigint NOT NULL,
  `alternate_contact_number` bigint DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_details`
--

LOCK TABLES `personal_details` WRITE;
/*!40000 ALTER TABLE `personal_details` DISABLE KEYS */;
INSERT INTO `personal_details` VALUES (6,'Poonam','Thakur','1991-03-11',NULL,NULL,NULL,NULL,NULL,7447744458,NULL,'p@t6.com'),(7,'Poonam1','Thakur','1991-03-11',NULL,NULL,NULL,NULL,NULL,7447744458,NULL,'p@t6.com'),(8,'Poonam','T','1991-03-11',NULL,NULL,NULL,NULL,NULL,56,NULL,'t@u.com'),(9,'Poonam','T','1991-03-11',NULL,NULL,NULL,NULL,NULL,56,NULL,'t@u.com'),(10,'Poonam','T','1991-03-11',NULL,NULL,NULL,NULL,NULL,56,NULL,'t@u.com'),(11,'Poonam','T','1991-03-11',NULL,NULL,NULL,NULL,NULL,75566,NULL,'hh@h.com'),(12,'pp','ii','1991-03-11',NULL,NULL,NULL,NULL,NULL,74,NULL,'p@h.com'),(13,'Poo','h','1991-03-11',NULL,NULL,NULL,NULL,NULL,766,NULL,'p@g.com'),(14,'p','k','1991-03-11',NULL,NULL,NULL,NULL,NULL,788,NULL,'p@h.com'),(15,'p','p','1991-03-11',NULL,NULL,NULL,NULL,NULL,78,NULL,'p@h.com'),(16,'p','p','1991-03-11',NULL,NULL,NULL,NULL,NULL,78,NULL,'p@h.com'),(17,'p','p','1991-03-11',NULL,NULL,NULL,NULL,NULL,78,NULL,'p@h.com'),(18,'pt','pt','1991-03-11',NULL,NULL,NULL,NULL,NULL,78,NULL,'p@h.com'),(19,'gs','hgh','1991-03-11',NULL,NULL,NULL,NULL,NULL,67767,NULL,'ghg'),(20,'mita','c','1991-03-11',NULL,NULL,NULL,NULL,NULL,7678,NULL,'jhh'),(21,'manas','bhv','1991-03-11',NULL,NULL,NULL,NULL,NULL,767676,NULL,'poonam@ff.com'),(22,'mono','h','1991-03-11',NULL,NULL,NULL,NULL,NULL,8,NULL,'h');
/*!40000 ALTER TABLE `personal_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-21 23:38:14
