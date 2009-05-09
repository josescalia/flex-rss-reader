-- MySQL dump 10.13  Distrib 5.1.30, for Win32 (ia32)
--
-- Host: localhost    Database: flex_project
-- ------------------------------------------------------
-- Server version	5.1.30-community

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
-- Table structure for table `rss_category`
--

DROP TABLE IF EXISTS `rss_category`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `rss_category` (
  `CATEGORY_ID` int(10) NOT NULL AUTO_INCREMENT,
  `CATEGORY_NAME` varchar(100) NOT NULL,
  PRIMARY KEY (`CATEGORY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `rss_category`
--

LOCK TABLES `rss_category` WRITE;
/*!40000 ALTER TABLE `rss_category` DISABLE KEYS */;
INSERT INTO `rss_category` VALUES (1,'news'),(2,'blog'),(3,'tips'),(4,'fun');
/*!40000 ALTER TABLE `rss_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rss_feeder`
--

DROP TABLE IF EXISTS `rss_feeder`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `rss_feeder` (
  `RSS_ID` int(100) NOT NULL AUTO_INCREMENT,
  `RSS_NAME` varchar(100) NOT NULL,
  `RSS_LINK` varchar(255) DEFAULT NULL,
  `CATEGORY_ID` int(10) NOT NULL,
  PRIMARY KEY (`RSS_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `rss_feeder`
--

LOCK TABLES `rss_feeder` WRITE;
/*!40000 ALTER TABLE `rss_feeder` DISABLE KEYS */;
INSERT INTO `rss_feeder` VALUES (1,'Detik','http://rss.detik.com/index.php/detikcom',1),(2,'Detik Inet (local sample)','http://localhost/flex_xml_lab/rss/rss_detikinet.xml',1),(3,'Google News (local sample)','http://localhost/flex_xml_lab/rss/rss_google.xml',1),(10,'Detik Inet','http://www.detikinet.com/feed',1),(11,'Antara Terkini','http://www.antara.co.id/rss/news.xml',1),(12,'Antara Sains Dan Teknologi','http://www.antara.co.id/rss/tek.xml',1),(13,'Detik Hot','http://rss.detik.com/index.php/hot',1),(14,'Yahoo World News','http://rss.news.yahoo.com/rss/world',1),(15,'Antara Ekonomi Bisnis','http://www.antara.co.id/rss/ekb.xml',1),(16,'Antara Seni Dan Hiburan','http://www.antara.co.id/rss/sbh.xml',1),(17,'Google News','http://news.google.com/?output=rss',1);
/*!40000 ALTER TABLE `rss_feeder` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2009-05-09 19:24:32
