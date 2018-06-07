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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guangshen18`
--

LOCK TABLES `guangshen18` WRITE;
/*!40000 ALTER TABLE `guangshen18` DISABLE KEYS */;
/*!40000 ALTER TABLE `guangshen18` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `allparking`
--

DROP TABLE IF EXISTS `allparking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `allparking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tableName` varchar(100),
  `openId` varchar(100),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allparking`
--

LOCK TABLES `allparking` WRITE;
/*!40000 ALTER TABLE `allparking` DISABLE KEYS */;
/*!40000 ALTER TABLE `allparking` ENABLE KEYS */;
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
