-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: net_banking
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.17.04.1

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` char(25) DEFAULT NULL,
  `pwd` char(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','password123');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beneficiary1`
--

DROP TABLE IF EXISTS `beneficiary1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beneficiary1` (
  `benef_id` int(11) NOT NULL AUTO_INCREMENT,
  `benef_cust_id` int(11) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `account_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`benef_id`),
  UNIQUE KEY `benef_cust_id` (`benef_cust_id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone_no` (`phone_no`),
  UNIQUE KEY `account_no` (`account_no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beneficiary1`
--

LOCK TABLES `beneficiary1` WRITE;
/*!40000 ALTER TABLE `beneficiary1` DISABLE KEYS */;
INSERT INTO `beneficiary1` VALUES (1,4,'jon.snow@gmail.com','+1 8918332797',1233556739);
/*!40000 ALTER TABLE `beneficiary1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beneficiary2`
--

DROP TABLE IF EXISTS `beneficiary2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beneficiary2` (
  `benef_id` int(11) NOT NULL AUTO_INCREMENT,
  `benef_cust_id` int(11) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `account_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`benef_id`),
  UNIQUE KEY `benef_cust_id` (`benef_cust_id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone_no` (`phone_no`),
  UNIQUE KEY `account_no` (`account_no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beneficiary2`
--

LOCK TABLES `beneficiary2` WRITE;
/*!40000 ALTER TABLE `beneficiary2` DISABLE KEYS */;
INSERT INTO `beneficiary2` VALUES (1,1,'zakee.nafees@gmail.com','+91 8918722499',1122334455);
/*!40000 ALTER TABLE `beneficiary2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beneficiary3`
--

DROP TABLE IF EXISTS `beneficiary3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beneficiary3` (
  `benef_id` int(11) NOT NULL AUTO_INCREMENT,
  `benef_cust_id` int(11) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `account_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`benef_id`),
  UNIQUE KEY `benef_cust_id` (`benef_cust_id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone_no` (`phone_no`),
  UNIQUE KEY `account_no` (`account_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beneficiary3`
--

LOCK TABLES `beneficiary3` WRITE;
/*!40000 ALTER TABLE `beneficiary3` DISABLE KEYS */;
/*!40000 ALTER TABLE `beneficiary3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beneficiary4`
--

DROP TABLE IF EXISTS `beneficiary4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beneficiary4` (
  `benef_id` int(11) NOT NULL AUTO_INCREMENT,
  `benef_cust_id` int(11) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `account_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`benef_id`),
  UNIQUE KEY `benef_cust_id` (`benef_cust_id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone_no` (`phone_no`),
  UNIQUE KEY `account_no` (`account_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beneficiary4`
--

LOCK TABLES `beneficiary4` WRITE;
/*!40000 ALTER TABLE `beneficiary4` DISABLE KEYS */;
/*!40000 ALTER TABLE `beneficiary4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `cust_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `aadhar_no` int(11) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `branch` varchar(30) DEFAULT NULL,
  `account_no` int(11) DEFAULT NULL,
  `pin` int(4) DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `pwd` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`cust_id`),
  UNIQUE KEY `aadhar_no` (`aadhar_no`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone_no` (`phone_no`),
  UNIQUE KEY `account_no` (`account_no`),
  UNIQUE KEY `uname` (`uname`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Nafees','Zakee','male','1994-11-28',123456789,'zakee.nafees@gmail.com','+91 8918722499','22/10, Secondary Road, Durgapur - 713204','delhi',1122334455,1234,'zakee94','nafees123'),(2,'Md Salman','Ali','male','1994-10-11',987654321,'ali.salman@gmail.com','+966 895432167','Al Ahsa Street Malaz, King Abdulaziz Rd, Alamal Dist. RIYADH 12643-2121.','riyadh',1133557788,1234,'salman','salman123'),(3,'Tushar','Kr. Pandey','male','1995-02-03',125656765,'tusharpkt@gmail.com','+334 123456987','Champ de Mars, \r\n5 Avenue Anatole France, \r\n75007 Paris, France','paris',1122338457,1357,'tushar','tushar123'),(4,'Jon','Snow','male','1985-02-03',129156787,'jon.snow@gmail.com','+1 8918332797','The Night Watch,\r\nKing in the North,\r\nThe North Remembers,\r\nWesteros.','newyork',1233556739,1234,'jon','snow123');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(40) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'Hello World !','2017-09-06 15:45:25'),(2,'The First News !','2017-09-06 15:45:55'),(3,'Increasing Interest Rates !','2017-09-06 15:46:21'),(4,'GST on banking','2017-11-19 16:39:35');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_body`
--

DROP TABLE IF EXISTS `news_body`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news_body` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `body` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_body`
--

LOCK TABLES `news_body` WRITE;
/*!40000 ALTER TABLE `news_body` DISABLE KEYS */;
INSERT INTO `news_body` VALUES (1,'\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"'),(2,'What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Why do we use it? It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). Where does it come from? Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. Where can I get some? There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.'),(3,'This is to inform that as of today interest rates will increase by 4.6% on loans and decrease by 5.8% on deposits. Effective immediately. '),(4,'This is to inform that GST shall be applied on all usages of :\r\n1. Credit Cards\r\n2. Debit Cards\r\n3. Internet Banking\r\nat a nominal (nationally applied) rate of 18%.\r\n');
/*!40000 ALTER TABLE `news_body` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passbook1`
--

DROP TABLE IF EXISTS `passbook1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passbook1` (
  `trans_id` int(11) NOT NULL AUTO_INCREMENT,
  `trans_date` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `debit` int(11) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  PRIMARY KEY (`trans_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passbook1`
--

LOCK TABLES `passbook1` WRITE;
/*!40000 ALTER TABLE `passbook1` DISABLE KEYS */;
INSERT INTO `passbook1` VALUES (1,'2017-09-06 22:18:36','Opening Balance',0,10000,10000),(2,'2017-10-02 18:49:26','Received from: Salman Ali, AC/No: 1133557799',0,20000,30000),(3,'2017-10-02 21:02:32','Sent to: Jon Snow, AC/No: 1133557736',10000,0,20000),(4,'2017-10-05 20:11:33','Received from: Salman Ali, AC/No: 1133557799',0,69000,89000),(5,'2017-11-19 17:00:35','Cash Deposit',0,2000000,2089000),(6,'2017-11-19 17:01:09','Sent to: Jon Snow, AC/No: 1233556739',15000,0,2074000),(7,'2017-11-19 17:02:29','Cash to Self',25000,0,2049000),(8,'2017-11-19 17:03:45','Sent to: Md Salman Ali, AC/No: 1133557799',50000,0,1999000),(9,'2017-11-19 17:26:45','Received from: Md Salman Ali, AC/No: 1133557788',0,6123,2005123);
/*!40000 ALTER TABLE `passbook1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passbook2`
--

DROP TABLE IF EXISTS `passbook2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passbook2` (
  `trans_id` int(11) NOT NULL AUTO_INCREMENT,
  `trans_date` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `debit` int(11) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  PRIMARY KEY (`trans_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passbook2`
--

LOCK TABLES `passbook2` WRITE;
/*!40000 ALTER TABLE `passbook2` DISABLE KEYS */;
INSERT INTO `passbook2` VALUES (1,'2017-09-06 22:21:54','Opening Balance',0,20000,20000),(2,'2017-09-10 15:35:39','Cash to Self',2000,0,18000),(3,'2017-09-26 17:51:47','Cash to Self',2500,0,15500),(4,'2017-09-26 17:52:31','Cash Deposit',0,3500,19000),(5,'2017-09-26 20:42:20','Cash Deposit',0,2500,21500),(6,'2017-09-26 20:44:17','Cash to Self',1002,0,20498),(7,'2017-09-29 19:38:04','Cash Deposit',0,20000,40498),(8,'2017-09-29 19:38:49','Cash to Self',2000,0,38498),(9,'2017-09-30 21:38:56','Cash Deposit',0,10000,48498),(10,'2017-10-02 18:49:26','Sent to: Nafees Zakee, AC/No: 1122334455',20000,0,28498),(11,'2017-10-03 00:18:44','Cash Deposit',0,500000,528498),(12,'2017-10-05 20:11:33','Sent to: Nafees Zakee, AC/No: 1122334455',69000,0,459498),(13,'2017-10-30 16:30:45','Cash Deposit',0,10000,469498),(14,'2017-11-19 17:03:45','Received from: Nafees Zakee, AC/No: 1122334455',0,50000,519498),(15,'2017-11-19 17:26:45','Sent to: Nafees Zakee, AC/No: 1122334455',6123,0,513375);
/*!40000 ALTER TABLE `passbook2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passbook3`
--

DROP TABLE IF EXISTS `passbook3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passbook3` (
  `trans_id` int(11) NOT NULL AUTO_INCREMENT,
  `trans_date` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `debit` int(11) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  PRIMARY KEY (`trans_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passbook3`
--

LOCK TABLES `passbook3` WRITE;
/*!40000 ALTER TABLE `passbook3` DISABLE KEYS */;
INSERT INTO `passbook3` VALUES (1,'2017-09-26 18:23:03','Opening Balance',0,50000,50000),(2,'2017-09-26 18:42:41','Cash Deposit',0,123456,173456),(3,'2017-09-26 18:42:52','Cash to Self',5698,0,167758),(4,'2017-09-26 18:43:05','Cash to Self',9658,0,158100),(5,'2017-09-26 18:43:23','Cash to Self',1569,0,156531),(6,'2017-09-26 18:43:32','Cash to Self',12369,0,144162),(7,'2017-09-26 18:43:53','Cash to Self',100000,0,44162),(8,'2017-09-26 18:44:14','Cash Deposit',0,200000,244162),(9,'2017-09-29 19:27:10','Cash to Self',10000,0,234162);
/*!40000 ALTER TABLE `passbook3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passbook4`
--

DROP TABLE IF EXISTS `passbook4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passbook4` (
  `trans_id` int(11) NOT NULL AUTO_INCREMENT,
  `trans_date` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `debit` int(11) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  PRIMARY KEY (`trans_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passbook4`
--

LOCK TABLES `passbook4` WRITE;
/*!40000 ALTER TABLE `passbook4` DISABLE KEYS */;
INSERT INTO `passbook4` VALUES (1,'2017-09-26 18:32:59','Opening Balance',0,20000,20000),(2,'2017-09-26 18:34:54','Cash to Self',10000,0,10000),(3,'2017-09-26 18:35:08','Cash to Self',3659,0,6341),(4,'2017-09-26 18:35:20','Cash Deposit',0,69874,76215),(5,'2017-09-26 18:35:35','Cash Deposit',0,89000,165215),(6,'2017-09-26 18:35:55','Cash to Self',10000,0,155215),(7,'2017-09-26 19:29:49','Cash to Self',1236,0,153979),(8,'2017-10-02 21:02:32','Received from: Nafees Zakee, AC/No: 1122334455',0,10000,163979),(9,'2017-11-19 17:01:09','Received from: Nafees Zakee, AC/No: 1122334455',0,15000,178979);
/*!40000 ALTER TABLE `passbook4` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-14 17:02:50
