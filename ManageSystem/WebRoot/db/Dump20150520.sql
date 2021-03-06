CREATE DATABASE  IF NOT EXISTS `shopsys` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `shopsys`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: shopsys
-- ------------------------------------------------------
-- Server version	5.5.29

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
-- Table structure for table `kind_table`
--

DROP TABLE IF EXISTS `kind_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kind_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kindName` varchar(45) NOT NULL,
  `pageUrl` varchar(80) DEFAULT NULL,
  `categoryId` int(11) NOT NULL,
  `categoryName` varchar(40) DEFAULT NULL,
  `isPublish` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kind_table`
--

LOCK TABLES `kind_table` WRITE;
/*!40000 ALTER TABLE `kind_table` DISABLE KEYS */;
INSERT INTO `kind_table` VALUES (10,'首页1','',1,'首页',1),(11,'首页2','',1,'首页',1),(12,'首页3','',1,'首页',0),(13,'关于我们1','',2,'关于我们',1),(14,'关于我们2','',2,'关于我们',1),(15,'关于我们3','',2,'关于我们',1),(16,'指挥尺','',3,'指挥训练器材',1),(17,'蛇尺曲线板','',3,'指挥训练器材',1),(18,'得力文具','',4,'办公文具',1),(19,'金丝猴文具','',4,'办公文具',1),(20,'晨光文具','',4,'办公文具',1),(21,'球类','',5,'体育用品',1),(22,'护具','',5,'体育用品',1),(23,'灯笼彩纸类','',6,'节庆日用品',1),(24,'日用品','',6,'节庆日用品',1),(25,'全部','',7,'新品推荐',1),(26,'迷彩箱包','',3,'指挥训练器材',1),(27,'靶纸靶板','',3,'指挥训练器材',1),(28,'标图画笔','',3,'指挥训练器材',1),(29,'检查镜','',3,'指挥训练器材',1),(30,'其他','',3,'指挥训练器材',1),(31,'指挥器材','',3,'指挥训练器材',0),(37,'日用五金','',6,'节庆日用品',1),(38,'电脑耗材','',6,'节庆日用品',1),(39,'其他','',6,'节庆日用品',1),(40,'美术书法用品','',4,'办公文具',1),(41,'其他','',4,'办公文具',1),(42,'健身器材','',5,'体育用品',1),(43,'棋牌类','',5,'体育用品',1),(44,'其他','',5,'体育用品',1);
/*!40000 ALTER TABLE `kind_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_table`
--

DROP TABLE IF EXISTS `category_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(45) NOT NULL,
  `pageUrl` varchar(80) DEFAULT NULL,
  `isPublish` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_table`
--

LOCK TABLES `category_table` WRITE;
/*!40000 ALTER TABLE `category_table` DISABLE KEYS */;
INSERT INTO `category_table` VALUES (1,'首页','#page/mainIndex',0),(2,'关于我们','#page/introduct',0),(3,'指挥训练器材','#page/productsShow',1),(4,'办公文具','#page/productsShow',1),(5,'体育用品','#page/productsShow',1),(6,'节庆日用品','#page/productsShow',1),(7,'新品推荐','#page/productsShow',1);
/*!40000 ALTER TABLE `category_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-05-20 22:36:24
