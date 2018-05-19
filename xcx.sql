-- MySQL dump 10.13  Distrib 5.6.39, for Win64 (x86_64)
--
-- Host: localhost    Database: xcx
-- ------------------------------------------------------
-- Server version	5.7.21

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
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parking` int(11),
  `time` varchar(50),
  `pay` varchar(50),
  `carNumber` varchar(50),
  `parkingName` varchar(50),
  `openId` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` VALUES (1,1,'2018.5.19.13.45-2018.5.20.15.30','20','辽abdkab','不知道是哪的停车场','1');
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owner`
--

DROP TABLE IF EXISTS `owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `idCard` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner`
--

LOCK TABLES `owner` WRITE;
/*!40000 ALTER TABLE `owner` DISABLE KEYS */;
INSERT INTO `owner` VALUES (null,"1",null,null),(null,"2",null,null),(null,"3",null,null),(null,"odpVJ5Lutx-arHao6e2yZXr_tUOs",null,null);
/*!40000 ALTER TABLE `owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parking`
--

DROP TABLE IF EXISTS `parking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(50) NOT NULL,
  `kind` int(11),
  `name` varchar(100),
  `location` varchar(255),
  `lola` varchar(100),
  `number` int(11),
  `lease` varchar(255),
  `income` varchar(50),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parking`
--

LOCK TABLES `parking` WRITE;
/*!40000 ALTER TABLE `parking` DISABLE KEYS */;
INSERT INTO `parking` VALUES (null,"2",4,'出去','某地方','12,12',1,'wcarshg4we5',null),(null,"2",4,'某停车场2','某地方','12,12',1,'wcarshg4we5',null),(null,"5",4,'某停车场2','某地方','12,12',1,'wcarshg4we5',null),(null,"3",3,'某停车场2','某地方','12,12',500,'wcarshg4we5',null),(null,"4",3,'某停车场2','某地方','12,12',50,'wcarshg4we5',null),(null,"1",3,'某停车场2','某地方','12,12',5,'wcarshg4we5',null),(null,"1",3,'某停车场2','某地方','12,12',500,'wcarshg4we5',null),(null,"1",4,'某停车场2','某地方','12,12',1,'wcarshg4we5',null),(null,"1",4,'某停车场2','某地方','12,12',1,'wcarshg4we5',null);
/*!40000 ALTER TABLE `parking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parkingtime`
--

DROP TABLE IF EXISTS `parkingtime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parkingtime` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parking` int(11) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `rentNumber` int(11) DEFAULT NULL,
  `kind` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parkingtime`
--

LOCK TABLES `parkingtime` WRITE;
/*!40000 ALTER TABLE `parkingtime` DISABLE KEYS */;
INSERT INTO `parkingtime` VALUES (null,1,'1.0.00-7.23.59','12',0,0),(null,1,'1.0.00-7.23.59','12',0,0),(null,6,'1.0.00-7.23.59','12',0,0),(null,3,'1.0.00-7.23.59','12',0,0),(null,4,'1.0.00-7.23.59','12',0,0),(null,7,'2018.5.14.12-2018.5.16.12','12',0,1),(null,8,'2018.5.14.12-2018.5.16.12','12',0,1),(null,1,'2018.5.14.12.00-2018.5.16.12.00','12',0,1),(null,1,'2018.5.14.12.00-2018.5.16.12.00','12',0,1),(null,6,'1.0.00-7.23.59','12',0,0),(null,9,'1.0.00-7.23.59','12',0,0),(null,6,'1.0.00-7.23.59','12',0,0),(null,7,'2018.5.14.12.00-2018.5.16.12.00','12',0,1),(null,8,'2018.5.14.12.00-2018.5.16.12.00','12',0,1),(null,7,'2018.5.14.12.00-2018.5.16.12.00','12',0,1);
/*!40000 ALTER TABLE `parkingtime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(50) NOT NULL,
  `carNumber` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (null,'1','甲A-13456'),(null,'2','辽1-23456.甲A-12345.甲A-13456');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-19 19:54:37
