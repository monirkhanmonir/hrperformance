CREATE DATABASE  IF NOT EXISTS `performancemanagement` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `performancemanagement`;
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: performancemanagement
-- ------------------------------------------------------
-- Server version	5.7.26-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `birthDate` varchar(255) DEFAULT NULL,
  `empEmail` varchar(255) DEFAULT NULL,
  `empName` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `jobTitle` varchar(255) DEFAULT NULL,
  `joinDate` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `repassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'sdcddv','2019-10-02','monir@gmail.com','Monir','Male','Area Manager','2019-10-15','123','123'),(2,'Dhaka, Bangladesh','2019-10-15','asif@gmail.com','Asif','Male','Area Manager','2019-10-16','123','123'),(3,'wdw','2019-10-02','monir@gmail.com','Monir',NULL,'Select job title','2019-10-15','123','123'),(7,'dvdddddddddddd','2019-10-09','monir@gmail.com','monir','Employee','Seals Representative','2019-10-15','123','123'),(8,'dcdcd','2019-10-21','alim@gmail.com','alim','Admin','Manager','2019-10-01','123','123'),(9,'dccdcd','2019-10-08','habib@gmail.com','habib','Male','Area Manager','2019-10-16','123','123');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emprating`
--

DROP TABLE IF EXISTS `emprating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `emprating` (
  `ratingId` int(11) NOT NULL,
  `additionalCmnt` varchar(255) DEFAULT NULL,
  `attendance` varchar(255) DEFAULT NULL,
  `attendanceCmnt` varchar(255) DEFAULT NULL,
  `communicationSkills` varchar(255) DEFAULT NULL,
  `communicationSkillsCmnt` varchar(255) DEFAULT NULL,
  `dependability` varchar(255) DEFAULT NULL,
  `dependabilityCmnt` varchar(255) DEFAULT NULL,
  `empId` int(11) NOT NULL,
  `jobKnowledge` varchar(255) DEFAULT NULL,
  `jobKnowledgeCmnt` varchar(255) DEFAULT NULL,
  `overallRating` varchar(255) DEFAULT NULL,
  `productivity` varchar(255) DEFAULT NULL,
  `productivityCmnt` varchar(255) DEFAULT NULL,
  `workquality` varchar(255) DEFAULT NULL,
  `workqualityCmnt` varchar(255) DEFAULT NULL,
  `ratingDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ratingId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emprating`
--

LOCK TABLES `emprating` WRITE;
/*!40000 ALTER TABLE `emprating` DISABLE KEYS */;
INSERT INTO `emprating` VALUES (12,'sdsdsd','3','sds','5','sdsd','4','sd',2,'1','sdc','19','4','sd','2','sds',NULL);
/*!40000 ALTER TABLE `emprating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (13);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taskissue`
--

DROP TABLE IF EXISTS `taskissue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `taskissue` (
  `taskId` varchar(255) NOT NULL,
  `assignName` varchar(255) DEFAULT NULL,
  `empId` int(11) NOT NULL,
  `issueDate` varchar(255) DEFAULT NULL,
  `issuePriority` varchar(255) DEFAULT NULL,
  `issueStatus` varchar(255) DEFAULT NULL,
  `ramark` varchar(255) DEFAULT NULL,
  `restrictionDate` varchar(255) DEFAULT NULL,
  `taskName` varchar(255) DEFAULT NULL,
  `taskUnit` int(11) NOT NULL,
  `finishDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`taskId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taskissue`
--

LOCK TABLES `taskissue` WRITE;
/*!40000 ALTER TABLE `taskissue` DISABLE KEYS */;
INSERT INTO `taskissue` VALUES ('222','Select One',0,'','Select One','Select Status','','','',10,NULL),('332','Manager',12,'2019-10-15','Optional','Done','nbzdfgh','2019-10-15','zxfgh',54,'2019-10-22'),('ss22','Hr',12,'2019-10-15','Normal','Done','wdw','2019-10-18','sdf',2,'2019-10-17');
/*!40000 ALTER TABLE `taskissue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userinfo`
--

DROP TABLE IF EXISTS `userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `userinfo` (
  `userId` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdDate` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `username` varchar(12) NOT NULL,
  `empName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userinfo`
--

LOCK TABLES `userinfo` WRITE;
/*!40000 ALTER TABLE `userinfo` DISABLE KEYS */;
INSERT INTO `userinfo` VALUES (1,NULL,'asif@gmail.com',_binary '\0','asif','asif','$2a$10$ctEi5/YMBuv4YBGcUKs0xu3arg14qW5K2UCLaDgc7z2Q6q6xX0mAm','Admin',NULL,'asif',NULL),(2,NULL,'monir@gmail.com',_binary '\0','monir',NULL,'123','Employee',NULL,'monir',NULL),(3,NULL,'alim@gmail.com',_binary '\0','alim',NULL,'123','Admin',NULL,'alim',NULL),(4,NULL,'habib@gmail.com',_binary '\0','habib',NULL,'123','Employee',NULL,'habibahmed',NULL);
/*!40000 ALTER TABLE `userinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'performancemanagement'
--

--
-- Dumping routines for database 'performancemanagement'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-25 13:53:38
