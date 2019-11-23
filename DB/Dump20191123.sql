CREATE DATABASE  IF NOT EXISTS `performancemanagement` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `performancemanagement`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: performancemanagement
-- ------------------------------------------------------
-- Server version	5.1.60-community

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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `user` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (15,'fdhggfh','2019-10-10','asif@gmail.com','asif','Male','Area Manager','2019-10-08','123','123',NULL),(16,'asff','2019-10-09','faruk@gmail.com','faruk',NULL,'Manager','2019-10-09','faruk','faruk',NULL),(17,'sgfdg','2019-10-09','enamul@shgfh','enamul','Male','Manager','2019-10-17','123','123',NULL),(18,'fhgh','2019-11-14','jitu@gmail.com','Jitu','Male','Manager','2019-11-06','123','123','jitu'),(20,'gfh','2019-10-30','habib@gmail.com','Habib','Male','Seals Representative','2019-11-08','123','123','habib'),(24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,'eff',NULL,'Email@gmail.com','Name',NULL,'123',NULL,'manager',NULL,'user');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emprating`
--

DROP TABLE IF EXISTS `emprating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `empName` varchar(255) DEFAULT NULL,
  `jobTitle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ratingId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emprating`
--

LOCK TABLES `emprating` WRITE;
/*!40000 ALTER TABLE `emprating` DISABLE KEYS */;
INSERT INTO `emprating` VALUES (12,'sdsdsd','3','sds','5','sdsd','4','sd',2,'1','sdc','19','4','sd','2','sds',NULL,NULL,NULL),(19,'ert','2','ert','3','et','3','ert',18,'1','ert','13','2','ert','2','ert','',NULL,NULL),(22,'ertrtr','2','ertr','3','ertrt','3','ertrt',1,'1','tert','14','3','ertert','2','ertrt','2019-11-12','Habib','Seals Representative'),(23,'wrer',NULL,'','3','','3','',20,'2','','11',NULL,'','3','','','Habib','Seals Representative');
/*!40000 ALTER TABLE `emprating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (27);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taskissue`
--

DROP TABLE IF EXISTS `taskissue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
INSERT INTO `taskissue` VALUES ('23r3','Manager',12,'2019-10-03','Urgent','Begin',';k','2019-10-16','ds',21,NULL),('332','Manager',12,'2019-10-15','Optional','Done','nbzdfgh','2019-10-15','zxfgh',54,'2019-10-22'),('dew','Manager',21,'2019-11-14','Normal','Begin','hfhfh','2019-11-08','ds',46,NULL),('name','Select One',21,'2019-11-14','Select One','Begin','','2019-11-08','ds',46,NULL);
/*!40000 ALTER TABLE `taskissue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userinfo`
--

DROP TABLE IF EXISTS `userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userinfo`
--

LOCK TABLES `userinfo` WRITE;
/*!40000 ALTER TABLE `userinfo` DISABLE KEYS */;
INSERT INTO `userinfo` VALUES (1,NULL,'asif@gmail.com','\0','asif','asif','$2a$10$ctEi5/YMBuv4YBGcUKs0xu3arg14qW5K2UCLaDgc7z2Q6q6xX0mAm','Admin',NULL,'asif',NULL),(5,NULL,'alim@gmail.com','','alim',NULL,'$2a$10$2yOUmNpTgumyrwGjxZiaA.9jxy1LGtJUA2DuYfBhYEfgrSeXrTWui','Manager',NULL,'alim',NULL),(7,NULL,'faruk@gmail.com','\0','faruk',NULL,'$2a$10$3zaiYqdF6UNe3Wj0Q1PEJ.5o3gSwGJJmBnb7qWg7MZ7djvguRbLdC','Manager',NULL,'dfaruk',NULL),(8,NULL,'enamul@shgfh','\0','enamul',NULL,'$2a$10$LFsnq.Q3AtCVPAQ2e9Jl9O5z.4KcHp9tW/358aOfBSz52vB9L8ueO','Manager',NULL,'fhg',NULL),(9,NULL,'jitu@gmail.com','\0','Jitu',NULL,'$2a$10$uH8gflvLfu7kjLGsql2sbe/9R518KdQ7uc5BbuQ.hqtG9BPhCz4gC','Manager',NULL,'jitu',NULL),(10,NULL,'habib@gmail.com','\0','Habib',NULL,'$2a$10$qBYh1EBQH57VvvC0LdWUq.zXTVXqe.RshpDPDRsgFVHhy68TQzcT6','Employee',NULL,'habib',NULL),(11,NULL,'munna@gthyt','\0','munna',NULL,'$2a$10$ZApELoM1r/kTqL6Z3aRJKul4yk16fcee2bAPOWywBROaPNAN8oihy','Employee',NULL,'munna',NULL);
/*!40000 ALTER TABLE `userinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workreport`
--

DROP TABLE IF EXISTS `workreport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workreport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `empId` int(11) NOT NULL,
  `empName` varchar(255) DEFAULT NULL,
  `jobTitle` varchar(255) DEFAULT NULL,
  `reopDate` varchar(255) DEFAULT NULL,
  `repoDuration` varchar(255) DEFAULT NULL,
  `repoStatus` varchar(255) DEFAULT NULL,
  `workReport` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workreport`
--

LOCK TABLES `workreport` WRITE;
/*!40000 ALTER TABLE `workreport` DISABLE KEYS */;
INSERT INTO `workreport` VALUES (1,20,'Habib','Seals Representative','2019-11-15','Monthly','applay','wrer'),(2,20,'Habib','Seals Representative','2019-11-07','Quarterly','applay',NULL);
/*!40000 ALTER TABLE `workreport` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-23 11:40:27
