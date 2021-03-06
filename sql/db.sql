-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: bookstore
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bs_book`
--

DROP TABLE IF EXISTS `bs_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bs_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `price` double(11,2) DEFAULT NULL,
  `sales` int(11) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `img_path` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bs_book`
--

LOCK TABLES `bs_book` WRITE;
/*!40000 ALTER TABLE `bs_book` DISABLE KEYS */;
INSERT INTO `bs_book` VALUES (1,'鎸▉鐨勬．鏋?,'鏉戜笂鏄ユ爲',25.00,12,18,'static/img/鎸▉鐨勬．鏋?jpg'),(3,'java鍏ラ棬','濂?,10.00,203,17,'static/img/default.jpg'),(9,'java鍏ラ棬3','鎴?,10.00,201,19,'static/img/default.jpg'),(10,'python浠庡叆闂ㄥ埌鏀惧純','绋嬪簭鍛?,20.00,44,9976,'static/img/default.jpg'),(11,'妯℃嫙鐢靛瓙鎶€鏈?,'涓嶇煡閬?,15.00,1,1000,'static/img/default.jpg'),(12,'绠楁硶瀵艰','鍗庣珷鍥句功',98.00,100,10000,'static/img/default.jpg'),(13,'c璇█浠庡叆闂ㄥ埌鏀惧純','绋嬪簭鍛?,18.00,90,100,'static/img/default.jpg'),(14,'C#浠庡叆闂ㄥ埌鏀惧純','绋嬪簭鍛?,22.00,1000,100001,'static/img/default.jpg'),(15,'JS浠庡叆闂ㄥ埌鏀惧純','绋嬪簭鍛?,29.00,80,1002,'static/img/default.jpg'),(16,'dwad','wqd',13.00,13,321,'static/img/default.jpg'),(17,'璇舵垜鍘讳簩','ds',23.00,321,111,'static/img/default.jpg'),(18,'fsa','gh',33.00,232,11333,'static/img/default.jpg'),(19,'dsa','kjh',44.00,232,113,'static/img/default.jpg'),(20,'dd','hhj',55.00,3,32,'static/img/default.jpg'),(21,'澶ц惃杈炬棤','ghf',21.00,32,13213,'static/img/default.jpg'),(23,'瑗挎父璁?,'gf',32.00,33,31231,'static/img/default.jpg'),(24,'ggh','gfg',22.00,34,1323,'static/img/default.jpg'),(25,'bmn','jj',56.00,53,133,'static/img/default.jpg'),(26,'hgh','gh',78.00,23,123,'static/img/default.jpg'),(27,'gfh','jgjy',91.00,22,1321,'static/img/default.jpg'),(28,'wdawd','dad',0.00,0,0,'static/img/default.jpg');
/*!40000 ALTER TABLE `bs_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bs_order`
--

DROP TABLE IF EXISTS `bs_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bs_order` (
  `order_id` char(50) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `total_money` double(11,2) DEFAULT NULL,
  `STATUS` int(2) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `bs_order` (`user_id`),
  CONSTRAINT `bs_order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `bs_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bs_order`
--

LOCK TABLES `bs_order` WRITE;
/*!40000 ALTER TABLE `bs_order` DISABLE KEYS */;
INSERT INTO `bs_order` VALUES ('15849457424579','2020-03-23 14:42:22',80.00,2,9),('15849468669159','2020-03-23 15:01:07',60.00,0,9);
/*!40000 ALTER TABLE `bs_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bs_order_item`
--

DROP TABLE IF EXISTS `bs_order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bs_order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `price` double(11,2) DEFAULT NULL,
  `total_price` double(11,2) DEFAULT NULL,
  `order_id` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bs_order_item` (`order_id`),
  CONSTRAINT `bs_order_item_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `bs_order` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bs_order_item`
--

LOCK TABLES `bs_order_item` WRITE;
/*!40000 ALTER TABLE `bs_order_item` DISABLE KEYS */;
INSERT INTO `bs_order_item` VALUES (2,'python浠庡叆闂ㄥ埌鏀惧純',4,20.00,80.00,'15849457424579'),(3,'python浠庡叆闂ㄥ埌鏀惧純',3,20.00,60.00,'15849468669159');
/*!40000 ALTER TABLE `bs_order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bs_user`
--

DROP TABLE IF EXISTS `bs_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bs_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bs_user`
--

LOCK TABLES `bs_user` WRITE;
/*!40000 ALTER TABLE `bs_user` DISABLE KEYS */;
INSERT INTO `bs_user` VALUES (1,'tomcat','password','arwea@qq.com'),(3,'tomcat2','password',NULL),(5,'dongdong','123456','dadasdad@qq.com'),(7,'woaini','wjd123456','dwadda@qq.com'),(8,'dongdongdong','123456qq','wdawd@qq.com'),(9,'admin','123qwe','qqqqqqqq@qq.com'),(12,'admin2','dongdong123','1233@qq.com');
/*!40000 ALTER TABLE `bs_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-23 15:31:47
