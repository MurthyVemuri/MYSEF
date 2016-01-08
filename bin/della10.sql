-- MySQL dump 10.13  Distrib 5.6.19, for Win64 (x86_64)
--
-- Host: localhost    Database: della10
-- ------------------------------------------------------
-- Server version	5.6.22-enterprise-commercial-advanced-log

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
-- Table structure for table `actionitems`
--

DROP TABLE IF EXISTS `actionitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actionitems` (
  `Serial_Number` int(11) NOT NULL AUTO_INCREMENT,
  `ActionItem_Name` varchar(100) DEFAULT NULL,
  `Description` varchar(1000) DEFAULT NULL,
  `Resolution` varchar(1000) DEFAULT NULL,
  `Creation_Date` date DEFAULT NULL,
  `Due_Date` date DEFAULT NULL,
  `Status` varchar(10) DEFAULT NULL,
  `Assigned_to_Member` varchar(100) DEFAULT NULL,
  `Assigned_to_Team` varchar(100) DEFAULT NULL,
  `In_Use` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`Serial_Number`),
  KEY `Assigned_to_Member` (`Assigned_to_Member`),
  KEY `Assigned_to_Team` (`Assigned_to_Team`),
  CONSTRAINT `actionitems_ibfk_1` FOREIGN KEY (`Assigned_to_Member`) REFERENCES `members` (`Member_Name`),
  CONSTRAINT `actionitems_ibfk_2` FOREIGN KEY (`Assigned_to_Team`) REFERENCES `teams` (`Team_Name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actionitems`
--

LOCK TABLES `actionitems` WRITE;
/*!40000 ALTER TABLE `actionitems` DISABLE KEYS */;
INSERT INTO `actionitems` VALUES (1,'krishna','krishna','krishna','2015-01-29','2015-02-28','Open','krishna','A',0);
/*!40000 ALTER TABLE `actionitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members` (
  `Member_Name` varchar(100) NOT NULL,
  PRIMARY KEY (`Member_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES ('harshini'),('kranthi'),('krishna');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memberteam`
--

DROP TABLE IF EXISTS `memberteam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `memberteam` (
  `Member_Name` varchar(100) DEFAULT NULL,
  `Team_Name` varchar(100) DEFAULT NULL,
  KEY `Member_Name` (`Member_Name`),
  KEY `Team_Name` (`Team_Name`),
  CONSTRAINT `memberteam_ibfk_1` FOREIGN KEY (`Member_Name`) REFERENCES `members` (`Member_Name`),
  CONSTRAINT `memberteam_ibfk_2` FOREIGN KEY (`Team_Name`) REFERENCES `teams` (`Team_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memberteam`
--

LOCK TABLES `memberteam` WRITE;
/*!40000 ALTER TABLE `memberteam` DISABLE KEYS */;
INSERT INTO `memberteam` VALUES ('krishna','A'),('kranthi','B'),('harshini','C');
/*!40000 ALTER TABLE `memberteam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teams` (
  `Team_Name` varchar(100) NOT NULL,
  PRIMARY KEY (`Team_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES ('A'),('B'),('C');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `name` varchar(100) DEFAULT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `credentials` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('Krishna Sai','krishna','krishna','employee'),('Krishna Sai','user','user','employee');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-01-30 10:44:26
