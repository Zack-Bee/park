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
  `parking` int(11) DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL,
  `pay` varchar(50) DEFAULT NULL,
  `carNumber` varchar(50) DEFAULT NULL,
  `lola` varchar(50) DEFAULT NULL,
  `openId` varchar(50) NOT NULL,
  `status` int(11) DEFAULT '1',
  `location` varchar(50) DEFAULT NULL,
  `kind` int(11) DEFAULT NULL,
  `unitPrice` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` VALUES (1,1,'2018.5.19.13.45-2018.5.20.15.30','20','辽abdkab','41,123','1',1,'x',1,5),(6,1,'null','null','4','123,123','3',0,'千山区唐家房镇南沟里',4,5),(7,1,'null','null','4','41,123','3',0,'千山区唐家房镇南沟里',4,5),(8,1,'null','null','4','41.71482,123.4497','3',0,'沈阳市浑南区纪检委(世纪路南)',4,5),(9,1,'null','null','4','41.71482,123.4497','3',0,'沈阳市浑南区纪检委(世纪路南)',4,5),(10,1,'null','null','4','41.71482,123.4497','3',0,'沈阳市浑南区纪检委(世纪路南)',4,5),(11,1,'null','null','4','41.71482,123.4497','3',0,'沈阳市浑南区纪检委(世纪路南)',4,5),(12,1,'null','null','4','41.71482,123.4497','3',0,'沈阳市浑南区纪检委(世纪路南)',4,5),(13,1,'null','null','4','41.71482,123.4497','3',0,'沈阳市浑南区纪检委(世纪路南)',4,5),(14,1,'2018.1.1.8.00','null','4','41.71482,123.4497','3',2,'沈阳市浑南区纪检委(世纪路南)',4,5),(15,1,'2018.1.1.8.00','null','4','41.71482,123.4497','3',2,'沈阳市浑南区纪检委(世纪路南)',4,5),(16,1,'2018.1.1.8.00','null','4','41.71482,123.4497','3',2,'沈阳市浑南区纪检委(世纪路南)',4,5),(17,1,'null','null','4','41.71482,123.4497','3',0,'沈阳市浑南区纪检委(世纪路南)',4,5),(18,1,'2018.1.1.8.00','null','4','41.71482,123.4497','3',2,'沈阳市浑南区纪检委(世纪路南)',4,5),(19,1,'2018.1.1.8.00','null','4','41.71482,123.4497','3',2,'沈阳市浑南区纪检委(世纪路南)',4,5),(20,1,'2018.1.1.8.00','null','4','41.71482,123.4497','3',2,'沈阳市浑南区纪检委(世纪路南)',4,5),(21,1,'2018.1.1.8.00-2018.1.7.22.00','1896','4','41.71482,123.4497','3',4,'沈阳市浑南区纪检委(世纪路南)',4,5),(22,1,'null','null','4','123.225364,41.961929','3',0,'于洪区光辉街道后甸子',4,5),(23,1,'null','null','4','123.225364,41.961929','3',0,'于洪区光辉街道后甸子',4,5),(24,1,'null','null','4','123.225364,41.961929','3',0,'于洪区光辉街道后甸子',4,5),(25,1,'2018.1.1.8.00-2018.1.7.22.00','1896','4','123.225364,41.961929','3',4,'于洪区光辉街道后甸子',4,5),(26,1,'null','null','4','123.225364,41.961929','3',0,'于洪区光辉街道后甸子',4,5),(27,1,'2018.1.1.8.00-2018.1.7.22.00','1896','4','123.225364,41.961929','3',4,'于洪区光辉街道后甸子',4,5),(28,1,'null','0','4','123.225364,41.961929','3',0,'于洪区光辉街道后甸子',4,5),(29,1,'2018.6.6.18.36','0','4','123.225364,41.961929','3',0,'于洪区光辉街道后甸子',4,5),(30,1,'2018.6.6.18.36','0','4','123.225364,41.961929','3',0,'于洪区光辉街道后甸子',4,5),(31,1,'2018.6.6.19.8','0','4','123.225364,41.961929','3',0,'于洪区光辉街道后甸子',4,5),(32,1,'2018.6.6.19.9','0','4','123.225364,41.961929','3',0,'于洪区光辉街道后甸子',4,5),(33,1,'2018.6.6.19.9','0','4','123.225364,41.961929','3',0,'于洪区光辉街道后甸子',4,5),(36,1,'2018.6.6.23.28','null','4','123.225364,41.961929','3',2,'于洪区光辉街道后甸子',4,15);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner`
--

LOCK TABLES `owner` WRITE;
/*!40000 ALTER TABLE `owner` DISABLE KEYS */;
INSERT INTO `owner` VALUES (1,'1',NULL,NULL),(2,'2',NULL,NULL),(3,'3',NULL,NULL),(4,'test',NULL,NULL),(5,'6',NULL,NULL),(6,'7',NULL,NULL),(7,'odpVJ5H4eD72NnoCaoIZ6PN5nSUY',NULL,NULL);
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
  `kind` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lola` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `lease` varchar(255) DEFAULT NULL,
  `isOpen` int(11) DEFAULT '1',
  `income` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parking`
--

LOCK TABLES `parking` WRITE;
/*!40000 ALTER TABLE `parking` DISABLE KEYS */;
/*!40000 ALTER TABLE `parking` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `shenyang1`
--

DROP TABLE IF EXISTS `shenyang1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shenyang1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(50) NOT NULL,
  `kind` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lola` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `lease` varchar(255) DEFAULT NULL,
  `isOpen` int(11) DEFAULT '1',
  `income` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shenyang1`
--

LOCK TABLES `shenyang1` WRITE;
/*!40000 ALTER TABLE `shenyang1` DISABLE KEYS */;
/*!40000 ALTER TABLE `shenyang1` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `shenyang2`
--

DROP TABLE IF EXISTS `shenyang2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shenyang2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(50) NOT NULL,
  `kind` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lola` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `lease` varchar(255) DEFAULT NULL,
  `isOpen` int(11) DEFAULT '1',
  `income` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shenyang2`
--

LOCK TABLES `shenyang2` WRITE;
/*!40000 ALTER TABLE `shenyang2` DISABLE KEYS */;
/*!40000 ALTER TABLE `shenyang2` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `shenyang3`
--

DROP TABLE IF EXISTS `shenyang3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shenyang3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(50) NOT NULL,
  `kind` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lola` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `lease` varchar(255) DEFAULT NULL,
  `isOpen` int(11) DEFAULT '1',
  `income` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shenyang3`
--

LOCK TABLES `shenyang3` WRITE;
/*!40000 ALTER TABLE `shenyang3` DISABLE KEYS */;
/*!40000 ALTER TABLE `shenyang3` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `shenyang4`
--

DROP TABLE IF EXISTS `shenyang4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shenyang4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(50) NOT NULL,
  `kind` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lola` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `lease` varchar(255) DEFAULT NULL,
  `isOpen` int(11) DEFAULT '1',
  `income` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shenyang4`
--

LOCK TABLES `shenyang4` WRITE;
/*!40000 ALTER TABLE `shenyang4` DISABLE KEYS */;
/*!40000 ALTER TABLE `shenyang4` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `shenyang5`
--

DROP TABLE IF EXISTS `shenyang5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shenyang5` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(50) NOT NULL,
  `kind` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lola` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `lease` varchar(255) DEFAULT NULL,
  `isOpen` int(11) DEFAULT '1',
  `income` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shenyang5`
--

LOCK TABLES `shenyang5` WRITE;
/*!40000 ALTER TABLE `shenyang5` DISABLE KEYS */;
/*!40000 ALTER TABLE `shenyang5` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `shenyang6`
--

DROP TABLE IF EXISTS `shenyang6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shenyang6` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(50) NOT NULL,
  `kind` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lola` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `lease` varchar(255) DEFAULT NULL,
  `isOpen` int(11) DEFAULT '1',
  `income` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shenyang6`
--

LOCK TABLES `shenyang6` WRITE;
/*!40000 ALTER TABLE `shenyang6` DISABLE KEYS */;
/*!40000 ALTER TABLE `shenyang6` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `beijing5`
--

DROP TABLE IF EXISTS `beijing5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beijing5` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(50) NOT NULL,
  `kind` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lola` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `lease` varchar(255) DEFAULT NULL,
  `isOpen` int(11) DEFAULT '1',
  `income` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beijing5`
--

LOCK TABLES `beijing5` WRITE;
/*!40000 ALTER TABLE `beijing5` DISABLE KEYS */;
/*!40000 ALTER TABLE `beijing5` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `beijing1`
--

DROP TABLE IF EXISTS `beijing1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beijing1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(50) NOT NULL,
  `kind` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lola` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `lease` varchar(255) DEFAULT NULL,
  `isOpen` int(11) DEFAULT '1',
  `income` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beijing1`
--

LOCK TABLES `beijing1` WRITE;
/*!40000 ALTER TABLE `beijing1` DISABLE KEYS */;
/*!40000 ALTER TABLE `beijing1` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `beijing2`
--

DROP TABLE IF EXISTS `beijing2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beijing2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(50) NOT NULL,
  `kind` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lola` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `lease` varchar(255) DEFAULT NULL,
  `isOpen` int(11) DEFAULT '1',
  `income` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beijing2`
--

LOCK TABLES `beijing2` WRITE;
/*!40000 ALTER TABLE `beijing2` DISABLE KEYS */;
/*!40000 ALTER TABLE `beijing2` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `beijing3`
--

DROP TABLE IF EXISTS `beijing3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beijing3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(50) NOT NULL,
  `kind` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lola` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `lease` varchar(255) DEFAULT NULL,
  `isOpen` int(11) DEFAULT '1',
  `income` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beijing3`
--

LOCK TABLES `beijing3` WRITE;
/*!40000 ALTER TABLE `beijing3` DISABLE KEYS */;
/*!40000 ALTER TABLE `beijing3` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `beijing4`
--

DROP TABLE IF EXISTS `beijing4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beijing4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(50) NOT NULL,
  `kind` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lola` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `lease` varchar(255) DEFAULT NULL,
  `isOpen` int(11) DEFAULT '1',
  `income` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beijing4`
--

LOCK TABLES `beijing4` WRITE;
/*!40000 ALTER TABLE `beijing4` DISABLE KEYS */;
/*!40000 ALTER TABLE `beijing4` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `beijing6`
--

DROP TABLE IF EXISTS `beijing6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beijing6` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(50) NOT NULL,
  `kind` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lola` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `lease` varchar(255) DEFAULT NULL,
  `isOpen` int(11) DEFAULT '1',
  `income` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beijing6`
--

LOCK TABLES `beijing6` WRITE;
/*!40000 ALTER TABLE `beijing6` DISABLE KEYS */;
/*!40000 ALTER TABLE `beijing6` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `beijing7`
--

DROP TABLE IF EXISTS `beijing7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beijing7` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(50) NOT NULL,
  `kind` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lola` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `lease` varchar(255) DEFAULT NULL,
  `isOpen` int(11) DEFAULT '1',
  `income` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beijing7`
--

LOCK TABLES `beijing7` WRITE;
/*!40000 ALTER TABLE `beijing7` DISABLE KEYS */;
/*!40000 ALTER TABLE `beijing7` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `beijing8`
--

DROP TABLE IF EXISTS `beijing8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beijing8` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(50) NOT NULL,
  `kind` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lola` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `lease` varchar(255) DEFAULT NULL,
  `isOpen` int(11) DEFAULT '1',
  `income` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beijing8`
--

LOCK TABLES `beijing8` WRITE;
/*!40000 ALTER TABLE `beijing8` DISABLE KEYS */;
/*!40000 ALTER TABLE `beijing8` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `beijing9`
--

DROP TABLE IF EXISTS `beijing9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beijing9` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(50) NOT NULL,
  `kind` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lola` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `lease` varchar(255) DEFAULT NULL,
  `isOpen` int(11) DEFAULT '1',
  `income` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beijing9`
--

LOCK TABLES `beijing9` WRITE;
/*!40000 ALTER TABLE `beijing9` DISABLE KEYS */;
/*!40000 ALTER TABLE `beijing9` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `haerbin`
--

DROP TABLE IF EXISTS `haerbin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `haerbin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(50) NOT NULL,
  `kind` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lola` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `lease` varchar(255) DEFAULT NULL,
  `isOpen` int(11) DEFAULT '1',
  `income` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `haerbin`
--

LOCK TABLES `haerbin` WRITE;
/*!40000 ALTER TABLE `haerbin` DISABLE KEYS */;
/*!40000 ALTER TABLE `haerbin` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `changchun`
--

DROP TABLE IF EXISTS `changchun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changchun` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(50) NOT NULL,
  `kind` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lola` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `lease` varchar(255) DEFAULT NULL,
  `isOpen` int(11) DEFAULT '1',
  `income` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changchun`
--

LOCK TABLES `changchun` WRITE;
/*!40000 ALTER TABLE `changchun` DISABLE KEYS */;
/*!40000 ALTER TABLE `changchun` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `dalian`
--

DROP TABLE IF EXISTS `dalian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dalian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(50) NOT NULL,
  `kind` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lola` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `lease` varchar(255) DEFAULT NULL,
  `isOpen` int(11) DEFAULT '1',
  `income` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dalian`
--

LOCK TABLES `dalian` WRITE;
/*!40000 ALTER TABLE `dalian` DISABLE KEYS */;
/*!40000 ALTER TABLE `dalian` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `shanghai1`
--

DROP TABLE IF EXISTS `shanghai1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shanghai1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(50) NOT NULL,
  `kind` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lola` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `lease` varchar(255) DEFAULT NULL,
  `isOpen` int(11) DEFAULT '1',
  `income` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shanghai1`
--

LOCK TABLES `shanghai1` WRITE;
/*!40000 ALTER TABLE `shanghai1` DISABLE KEYS */;
/*!40000 ALTER TABLE `shanghai1` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `shanghai2`
--

DROP TABLE IF EXISTS `shanghai2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shanghai2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(50) NOT NULL,
  `kind` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lola` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `lease` varchar(255) DEFAULT NULL,
  `isOpen` int(11) DEFAULT '1',
  `income` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shanghai2`
--

LOCK TABLES `shanghai2` WRITE;
/*!40000 ALTER TABLE `shanghai2` DISABLE KEYS */;
/*!40000 ALTER TABLE `shanghai2` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `shanghai3`
--

DROP TABLE IF EXISTS `shanghai3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shanghai3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(50) NOT NULL,
  `kind` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lola` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `lease` varchar(255) DEFAULT NULL,
  `isOpen` int(11) DEFAULT '1',
  `income` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shanghai3`
--

LOCK TABLES `shanghai3` WRITE;
/*!40000 ALTER TABLE `shanghai3` DISABLE KEYS */;
/*!40000 ALTER TABLE `shanghai3` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `shanghai4`
--

DROP TABLE IF EXISTS `shanghai4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shanghai4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(50) NOT NULL,
  `kind` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lola` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `lease` varchar(255) DEFAULT NULL,
  `isOpen` int(11) DEFAULT '1',
  `income` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shanghai4`
--

LOCK TABLES `shanghai4` WRITE;
/*!40000 ALTER TABLE `shanghai4` DISABLE KEYS */;
/*!40000 ALTER TABLE `shanghai4` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `shanghai5`
--

DROP TABLE IF EXISTS `shanghai5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shanghai5` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(50) NOT NULL,
  `kind` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lola` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `lease` varchar(255) DEFAULT NULL,
  `isOpen` int(11) DEFAULT '1',
  `income` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shanghai5`
--

LOCK TABLES `shanghai5` WRITE;
/*!40000 ALTER TABLE `shanghai5` DISABLE KEYS */;
/*!40000 ALTER TABLE `shanghai5` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `shanghai6`
--

DROP TABLE IF EXISTS `shanghai6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shanghai6` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(50) NOT NULL,
  `kind` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lola` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `lease` varchar(255) DEFAULT NULL,
  `isOpen` int(11) DEFAULT '1',
  `income` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shanghai6`
--

LOCK TABLES `shanghai6` WRITE;
/*!40000 ALTER TABLE `shanghai6` DISABLE KEYS */;
/*!40000 ALTER TABLE `shanghai6` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `guangshen1`
--

DROP TABLE IF EXISTS `guangshen1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guangshen1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(50) NOT NULL,
  `kind` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lola` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `lease` varchar(255) DEFAULT NULL,
  `isOpen` int(11) DEFAULT '1',
  `income` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guangshen1`
--

LOCK TABLES `guangshen1` WRITE;
/*!40000 ALTER TABLE `guangshen1` DISABLE KEYS */;
/*!40000 ALTER TABLE `guangshen1` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `guangshen2`
--

DROP TABLE IF EXISTS `guangshen2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guangshen2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(50) NOT NULL,
  `kind` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lola` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `lease` varchar(255) DEFAULT NULL,
  `isOpen` int(11) DEFAULT '1',
  `income` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guangshen2`
--

LOCK TABLES `guangshen2` WRITE;
/*!40000 ALTER TABLE `guangshen2` DISABLE KEYS */;
/*!40000 ALTER TABLE `guangshen2` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `guangshen3`
--

DROP TABLE IF EXISTS `guangshen3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guangshen3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(50) NOT NULL,
  `kind` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lola` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `lease` varchar(255) DEFAULT NULL,
  `isOpen` int(11) DEFAULT '1',
  `income` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guangshen3`
--

LOCK TABLES `guangshen3` WRITE;
/*!40000 ALTER TABLE `guangshen3` DISABLE KEYS */;
/*!40000 ALTER TABLE `guangshen3` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `guangshen4`
--

DROP TABLE IF EXISTS `guangshen4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guangshen4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(50) NOT NULL,
  `kind` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lola` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `lease` varchar(255) DEFAULT NULL,
  `isOpen` int(11) DEFAULT '1',
  `income` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guangshen4`
--

LOCK TABLES `guangshen4` WRITE;
/*!40000 ALTER TABLE `guangshen4` DISABLE KEYS */;
/*!40000 ALTER TABLE `guangshen4` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `guangshen5`
--

DROP TABLE IF EXISTS `guangshen5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guangshen5` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(50) NOT NULL,
  `kind` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lola` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `lease` varchar(255) DEFAULT NULL,
  `isOpen` int(11) DEFAULT '1',
  `income` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guangshen5`
--

LOCK TABLES `guangshen5` WRITE;
/*!40000 ALTER TABLE `guangshen5` DISABLE KEYS */;
/*!40000 ALTER TABLE `guangshen5` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `guangshen6`
--

DROP TABLE IF EXISTS `guangshen6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guangshen6` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(50) NOT NULL,
  `kind` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lola` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `lease` varchar(255) DEFAULT NULL,
  `isOpen` int(11) DEFAULT '1',
  `income` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guangshen6`
--

LOCK TABLES `guangshen6` WRITE;
/*!40000 ALTER TABLE `guangshen6` DISABLE KEYS */;
/*!40000 ALTER TABLE `guangshen6` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `guangshen7`
--

DROP TABLE IF EXISTS `guangshen7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guangshen7` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(50) NOT NULL,
  `kind` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lola` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `lease` varchar(255) DEFAULT NULL,
  `isOpen` int(11) DEFAULT '1',
  `income` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guangshen7`
--

LOCK TABLES `guangshen7` WRITE;
/*!40000 ALTER TABLE `guangshen7` DISABLE KEYS */;
/*!40000 ALTER TABLE `guangshen7` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `guangshen8`
--

DROP TABLE IF EXISTS `guangshen8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guangshen8` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(50) NOT NULL,
  `kind` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lola` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `lease` varchar(255) DEFAULT NULL,
  `isOpen` int(11) DEFAULT '1',
  `income` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guangshen8`
--

LOCK TABLES `guangshen8` WRITE;
/*!40000 ALTER TABLE `guangshen8` DISABLE KEYS */;
/*!40000 ALTER TABLE `guangshen8` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `guangshen9`
--

DROP TABLE IF EXISTS `guangshen9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guangshen9` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(50) NOT NULL,
  `kind` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lola` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `lease` varchar(255) DEFAULT NULL,
  `isOpen` int(11) DEFAULT '1',
  `income` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guangshen9`
--

LOCK TABLES `guangshen9` WRITE;
/*!40000 ALTER TABLE `guangshen9` DISABLE KEYS */;
/*!40000 ALTER TABLE `guangshen9` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `guangshen10`
--

DROP TABLE IF EXISTS `guangshen10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guangshen10` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(50) NOT NULL,
  `kind` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lola` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `lease` varchar(255) DEFAULT NULL,
  `isOpen` int(11) DEFAULT '1',
  `income` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guangshen10`
--

LOCK TABLES `guangshen10` WRITE;
/*!40000 ALTER TABLE `guangshen10` DISABLE KEYS */;
/*!40000 ALTER TABLE `guangshen10` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `guangshen11`
--

DROP TABLE IF EXISTS `guangshen11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guangshen11` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(50) NOT NULL,
  `kind` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lola` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `lease` varchar(255) DEFAULT NULL,
  `isOpen` int(11) DEFAULT '1',
  `income` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guangshen11`
--

LOCK TABLES `guangshen11` WRITE;
/*!40000 ALTER TABLE `guangshen11` DISABLE KEYS */;
/*!40000 ALTER TABLE `guangshen11` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `guangshen12`
--

DROP TABLE IF EXISTS `guangshen12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guangshen12` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(50) NOT NULL,
  `kind` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lola` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `lease` varchar(255) DEFAULT NULL,
  `isOpen` int(11) DEFAULT '1',
  `income` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guangshen12`
--

LOCK TABLES `guangshen12` WRITE;
/*!40000 ALTER TABLE `guangshen12` DISABLE KEYS */;
/*!40000 ALTER TABLE `guangshen12` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `guangshen13`
--

DROP TABLE IF EXISTS `guangshen13`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guangshen13` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(50) NOT NULL,
  `kind` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lola` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `lease` varchar(255) DEFAULT NULL,
  `isOpen` int(11) DEFAULT '1',
  `income` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guangshen13`
--

LOCK TABLES `guangshen13` WRITE;
/*!40000 ALTER TABLE `guangshen13` DISABLE KEYS */;
/*!40000 ALTER TABLE `guangshen13` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `guangshen14`
--

DROP TABLE IF EXISTS `guangshen14`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guangshen14` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(50) NOT NULL,
  `kind` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lola` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `lease` varchar(255) DEFAULT NULL,
  `isOpen` int(11) DEFAULT '1',
  `income` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guangshen14`
--

LOCK TABLES `guangshen14` WRITE;
/*!40000 ALTER TABLE `guangshen14` DISABLE KEYS */;
/*!40000 ALTER TABLE `guangshen14` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `guangshen15`
--

DROP TABLE IF EXISTS `guangshen15`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guangshen15` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(50) NOT NULL,
  `kind` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lola` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `lease` varchar(255) DEFAULT NULL,
  `isOpen` int(11) DEFAULT '1',
  `income` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guangshen15`
--

LOCK TABLES `guangshen15` WRITE;
/*!40000 ALTER TABLE `guangshen15` DISABLE KEYS */;
/*!40000 ALTER TABLE `guangshen15` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `guangshen16`
--

DROP TABLE IF EXISTS `guangshen16`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guangshen16` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(50) NOT NULL,
  `kind` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lola` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `lease` varchar(255) DEFAULT NULL,
  `isOpen` int(11) DEFAULT '1',
  `income` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guangshen16`
--

LOCK TABLES `guangshen16` WRITE;
/*!40000 ALTER TABLE `guangshen16` DISABLE KEYS */;
/*!40000 ALTER TABLE `guangshen16` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `guangshen17`
--

DROP TABLE IF EXISTS `guangshen17`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guangshen17` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(50) NOT NULL,
  `kind` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lola` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `lease` varchar(255) DEFAULT NULL,
  `isOpen` int(11) DEFAULT '1',
  `income` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guangshen17`
--

LOCK TABLES `guangshen17` WRITE;
/*!40000 ALTER TABLE `guangshen17` DISABLE KEYS */;
/*!40000 ALTER TABLE `guangshen17` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `guangshen18`
--

DROP TABLE IF EXISTS `guangshen18`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guangshen18` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(50) NOT NULL,
  `kind` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lola` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `lease` varchar(255) DEFAULT NULL,
  `isOpen` int(11) DEFAULT '1',
  `income` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guangshen18`
--

LOCK TABLES `guangshen18` WRITE;
/*!40000 ALTER TABLE `guangshen18` DISABLE KEYS */;
/*!40000 ALTER TABLE `guangshen18` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=218 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parkingtime`
--

LOCK TABLES `parkingtime` WRITE;
/*!40000 ALTER TABLE `parkingtime` DISABLE KEYS */;
INSERT INTO `parkingtime` VALUES (1,1,'1.0.00-7.23.59','12',0,0),(2,1,'1.0.00-7.23.59','12',0,0),(3,6,'1.0.00-7.23.59','12',0,0),(4,3,'1.0.00-7.23.59','12',0,0),(5,4,'1.0.00-7.23.59','12',0,0),(6,7,'2018.5.14.12-2018.5.16.12','12',0,1),(7,8,'2018.5.14.12-2018.5.16.12','12',0,1),(8,1,'2018.5.14.12.00-2018.5.16.12.00','12',0,1),(10,6,'1.0.00-7.23.59','12',0,0),(12,6,'1.0.00-7.23.59','12',0,0),(13,7,'2018.5.14.12.00-2018.5.16.12.00','12',0,1),(14,8,'2018.5.14.12.00-2018.5.16.12.00','12',0,1),(15,7,'2018.5.14.12.00-2018.5.16.12.00','12',0,1),(17,14,'2018.1.1.0.00-2018.6.1.1.00','12',15,1),(18,14,'2019.1.1.0.00-2019.1.2.0.00','12',15,1),(20,9,'2018.1.1.8.00-2018.1.7.22.00',NULL,NULL,1),(31,13,'2018.1.1.8.00-2018.1.7.22.00','null',NULL,1),(32,20,'1.0.00-7.23.59','5',0,0),(33,21,'1.0.00-7.23.59','5',0,0),(34,22,'1.0.00-7.23.59','5',0,0),(35,23,'1.0.00-7.23.59','5',0,0),(36,24,'1.0.00-7.23.59','5',0,0),(37,25,'1.0.00-7.23.59','5',0,0),(38,26,'1.0.00-7.23.59','5',0,0),(39,27,'1.0.00-7.23.59','5',0,0),(40,28,'1.0.00-7.23.59','5',0,0),(41,29,'1.0.00-7.23.59','5',0,0),(42,30,'1.0.00-7.23.59','5',0,0),(43,31,'1.0.00-7.23.59','5',0,0),(44,32,'1.0.00-7.23.59','5',0,0),(45,33,'1.0.00-7.23.59','5',0,0),(46,34,'1.0.00-7.23.59','5',0,0),(47,35,'1.0.00-7.23.59','5',0,0),(48,36,'1.0.00-7.23.59','5',0,0),(49,37,'1.0.00-7.23.59','5',0,0),(50,38,'1.0.00-7.23.59','5',0,0),(51,39,'1.0.00-7.23.59','5',0,0),(52,40,'1.0.00-7.23.59','5',0,0),(53,41,'1.0.00-7.23.59','5',0,0),(54,1,'1.0.00-7.23.59','5',0,0),(55,2,'1.0.00-7.23.59','5',0,0),(56,3,'1.0.00-7.23.59','5',0,0),(57,4,'1.0.00-7.23.59','5',0,0),(58,5,'1.0.00-7.23.59','5',0,0),(59,6,'1.0.00-7.23.59','5',0,0),(60,7,'1.0.00-7.23.59','5',0,0),(61,8,'1.0.00-7.23.59','5',0,0),(62,9,'1.0.00-7.23.59','5',0,0),(63,10,'1.0.00-7.23.59','5',0,0),(64,11,'1.0.00-7.23.59','5',0,0),(65,12,'1.0.00-7.23.59','5',0,0),(66,13,'1.0.00-7.23.59','5',0,0),(67,14,'1.0.00-7.23.59','5',0,0),(68,15,'1.0.00-7.23.59','5',0,0),(69,16,'1.0.00-7.23.59','5',0,0),(70,17,'1.0.00-7.23.59','5',0,0),(71,18,'1.0.00-7.23.59','5',0,0),(72,19,'1.0.00-7.23.59','5',0,0),(73,20,'1.0.00-7.23.59','5',0,0),(74,21,'1.0.00-7.23.59','5',0,0),(75,22,'1.0.00-7.23.59','5',0,0),(76,23,'1.0.00-7.23.59','5',0,0),(77,24,'1.0.00-7.23.59','5',0,0),(78,25,'1.0.00-7.23.59','5',0,0),(79,26,'1.0.00-7.23.59','5',0,0),(80,27,'1.0.00-7.23.59','5',0,0),(81,28,'1.0.00-7.23.59','5',0,0),(82,29,'1.0.00-7.23.59','5',0,0),(83,30,'1.0.00-7.23.59','5',0,0),(84,31,'1.0.00-7.23.59','5',0,0),(85,32,'1.0.00-7.23.59','5',0,0),(86,33,'1.0.00-7.23.59','5',0,0),(87,34,'1.0.00-7.23.59','5',0,0),(88,35,'1.0.00-7.23.59','5',0,0),(89,36,'1.0.00-7.23.59','5',0,0),(90,37,'1.0.00-7.23.59','5',0,0),(91,38,'1.0.00-7.23.59','5',0,0),(92,39,'1.0.00-7.23.59','5',0,0),(93,40,'1.0.00-7.23.59','5',0,0),(94,41,'1.0.00-7.23.59','5',0,0),(95,1,'1.0.00-7.23.59','5',0,0),(96,2,'1.0.00-7.23.59','5',0,0),(97,3,'1.0.00-7.23.59','5',0,0),(98,4,'1.0.00-7.23.59','5',0,0),(99,5,'1.0.00-7.23.59','5',0,0),(100,6,'1.0.00-7.23.59','5',0,0),(101,7,'1.0.00-7.23.59','5',0,0),(102,8,'1.0.00-7.23.59','5',0,0),(103,9,'1.0.00-7.23.59','5',0,0),(104,10,'1.0.00-7.23.59','5',0,0),(105,11,'1.0.00-7.23.59','5',0,0),(106,12,'1.0.00-7.23.59','5',0,0),(107,13,'1.0.00-7.23.59','5',0,0),(108,14,'1.0.00-7.23.59','5',0,0),(109,15,'1.0.00-7.23.59','5',0,0),(110,16,'1.0.00-7.23.59','5',0,0),(111,17,'1.0.00-7.23.59','5',0,0),(112,18,'1.0.00-7.23.59','5',0,0),(113,19,'1.0.00-7.23.59','5',0,0),(114,20,'1.0.00-7.23.59','5',0,0),(115,21,'1.0.00-7.23.59','5',0,0),(116,22,'1.0.00-7.23.59','5',0,0),(117,23,'1.0.00-7.23.59','5',0,0),(118,24,'1.0.00-7.23.59','5',0,0),(119,25,'1.0.00-7.23.59','5',0,0),(120,26,'1.0.00-7.23.59','5',0,0),(121,27,'1.0.00-7.23.59','5',0,0),(122,28,'1.0.00-7.23.59','5',0,0),(123,29,'1.0.00-7.23.59','5',0,0),(124,30,'1.0.00-7.23.59','5',0,0),(125,31,'1.0.00-7.23.59','5',0,0),(126,32,'1.0.00-7.23.59','5',0,0),(127,33,'1.0.00-7.23.59','5',0,0),(128,34,'1.0.00-7.23.59','5',0,0),(129,35,'1.0.00-7.23.59','5',0,0),(130,36,'1.0.00-7.23.59','5',0,0),(131,37,'1.0.00-7.23.59','5',0,0),(132,38,'1.0.00-7.23.59','5',0,0),(133,39,'1.0.00-7.23.59','5',0,0),(134,40,'1.0.00-7.23.59','5',0,0),(135,41,'1.0.00-7.23.59','5',0,0),(136,1,'1.0.00-7.23.59','5',0,0),(137,2,'1.0.00-7.23.59','5',0,0),(138,3,'1.0.00-7.23.59','5',0,0),(139,4,'1.0.00-7.23.59','5',0,0),(140,5,'1.0.00-7.23.59','5',0,0),(141,6,'1.0.00-7.23.59','5',0,0),(142,7,'1.0.00-7.23.59','5',0,0),(143,8,'1.0.00-7.23.59','5',0,0),(144,9,'1.0.00-7.23.59','5',0,0),(145,10,'1.0.00-7.23.59','5',0,0),(146,11,'1.0.00-7.23.59','5',0,0),(147,12,'1.0.00-7.23.59','5',0,0),(148,13,'1.0.00-7.23.59','5',0,0),(149,14,'1.0.00-7.23.59','5',0,0),(150,15,'1.0.00-7.23.59','5',0,0),(151,16,'1.0.00-7.23.59','5',0,0),(152,17,'1.0.00-7.23.59','5',0,0),(153,18,'1.0.00-7.23.59','5',0,0),(154,19,'1.0.00-7.23.59','5',0,0),(155,20,'1.0.00-7.23.59','5',0,0),(156,21,'1.0.00-7.23.59','5',0,0),(157,22,'1.0.00-7.23.59','5',0,0),(158,23,'1.0.00-7.23.59','5',0,0),(159,24,'1.0.00-7.23.59','5',0,0),(160,25,'1.0.00-7.23.59','5',0,0),(161,26,'1.0.00-7.23.59','5',0,0),(162,27,'1.0.00-7.23.59','5',0,0),(163,28,'1.0.00-7.23.59','5',0,0),(164,29,'1.0.00-7.23.59','5',0,0),(165,30,'1.0.00-7.23.59','5',0,0),(166,31,'1.0.00-7.23.59','5',0,0),(167,32,'1.0.00-7.23.59','5',0,0),(168,33,'1.0.00-7.23.59','5',0,0),(169,34,'1.0.00-7.23.59','5',0,0),(170,35,'1.0.00-7.23.59','5',0,0),(171,36,'1.0.00-7.23.59','5',0,0),(172,37,'1.0.00-7.23.59','5',0,0),(173,38,'1.0.00-7.23.59','5',0,0),(174,39,'1.0.00-7.23.59','5',0,0),(175,40,'1.0.00-7.23.59','5',0,0),(176,41,'1.0.00-7.23.59','5',0,0),(177,1,'1.0.00-7.23.59','5',0,0),(178,2,'1.0.00-7.23.59','5',0,0),(179,3,'1.0.00-7.23.59','5',0,0),(180,4,'1.0.00-7.23.59','5',0,0),(181,5,'1.0.00-7.23.59','5',0,0),(182,6,'1.0.00-7.23.59','5',0,0),(183,7,'1.0.00-7.23.59','5',0,0),(184,8,'1.0.00-7.23.59','5',0,0),(185,9,'1.0.00-7.23.59','5',0,0),(186,10,'1.0.00-7.23.59','5',0,0),(187,11,'1.0.00-7.23.59','5',0,0),(188,12,'1.0.00-7.23.59','5',0,0),(189,13,'1.0.00-7.23.59','5',0,0),(190,14,'1.0.00-7.23.59','5',0,0),(191,15,'1.0.00-7.23.59','5',0,0),(192,16,'1.0.00-7.23.59','5',0,0),(193,17,'1.0.00-7.23.59','5',0,0),(194,18,'1.0.00-7.23.59','5',0,0),(195,19,'1.0.00-7.23.59','5',0,0),(196,20,'1.0.00-7.23.59','5',0,0),(197,21,'1.0.00-7.23.59','5',0,0),(198,22,'1.0.00-7.23.59','5',0,0),(199,23,'1.0.00-7.23.59','5',0,0),(200,24,'1.0.00-7.23.59','5',0,0),(201,25,'1.0.00-7.23.59','5',0,0),(202,26,'1.0.00-7.23.59','5',0,0),(203,27,'1.0.00-7.23.59','5',0,0),(204,28,'1.0.00-7.23.59','5',0,0),(205,29,'1.0.00-7.23.59','5',0,0),(206,30,'1.0.00-7.23.59','5',0,0),(207,31,'1.0.00-7.23.59','5',0,0),(208,32,'1.0.00-7.23.59','5',0,0),(209,33,'1.0.00-7.23.59','5',0,0),(210,34,'1.0.00-7.23.59','5',0,0),(211,35,'1.0.00-7.23.59','5',0,0),(212,36,'1.0.00-7.23.59','5',0,0),(213,37,'1.0.00-7.23.59','5',0,0),(214,38,'1.0.00-7.23.59','5',0,0),(215,39,'1.0.00-7.23.59','5',0,0),(216,40,'1.0.00-7.23.59','5',0,0),(217,41,'1.0.00-7.23.59','5',0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'100','甲A-13456'),(2,'2','辽1-23456.甲A-12345.甲A-13456'),(3,'1','甲A-12345.甲A-12367.甲A-12378');
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

-- Dump completed on 2018-06-07  1:22:37
