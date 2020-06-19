-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: tolltest
-- ------------------------------------------------------
-- Server version	5.7.27-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `adminlogin`
--

DROP TABLE IF EXISTS `adminlogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adminlogin` (
  `aname` varchar(45) NOT NULL,
  `apass` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`aname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminlogin`
--

LOCK TABLES `adminlogin` WRITE;
/*!40000 ALTER TABLE `adminlogin` DISABLE KEYS */;
INSERT INTO `adminlogin` VALUES ('SANJANA','SANJANA99'),('VISMITHA','VISMITHA99');
/*!40000 ALTER TABLE `adminlogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checkout`
--

DROP TABLE IF EXISTS `checkout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `checkout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehiclecat` varchar(45) NOT NULL,
  `entrytoll` varchar(45) NOT NULL,
  `exittoll` varchar(45) NOT NULL,
  `vehicleno` varchar(45) NOT NULL,
  `tripchoice` varchar(45) NOT NULL,
  `cost` int(11) NOT NULL DEFAULT '0',
  `rdatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checkout`
--

LOCK TABLES `checkout` WRITE;
/*!40000 ALTER TABLE `checkout` DISABLE KEYS */;
INSERT INTO `checkout` VALUES (1,'TWOWHEELER','1','2','KA 01 EK 1111','one',140,'2019-11-28 16:16:43'),(2,'CAR','2','4','KA 01 EK 2222','two',120,'2019-11-28 16:17:34'),(3,'CAR','3','4','KA 41 EK 3333','one',45,'2019-11-28 16:18:32'),(4,'LMV','1','3','KA 41 EK 4444','two',34,'2019-11-28 16:19:17'),(5,'MULTIAXLE','1','4','KA 41 EK 5555','one',78,'2019-11-28 16:21:10');
/*!40000 ALTER TABLE `checkout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entc`
--

DROP TABLE IF EXISTS `entc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entc` (
  `id` int(11) NOT NULL,
  `count` int(11) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entc`
--

LOCK TABLES `entc` WRITE;
/*!40000 ALTER TABLE `entc` DISABLE KEYS */;
INSERT INTO `entc` VALUES (0,5,NULL),(1,5,NULL),(2,0,NULL),(3,2,1);
/*!40000 ALTER TABLE `entc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reciept`
--

DROP TABLE IF EXISTS `reciept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reciept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehiclecat` varchar(45) NOT NULL,
  `entrytoll` varchar(45) NOT NULL,
  `exittoll` varchar(45) NOT NULL,
  `vehicleno` varchar(45) NOT NULL,
  `tripchoice` varchar(45) NOT NULL,
  `cost` int(11) NOT NULL DEFAULT '0',
  `rdatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reciept`
--

LOCK TABLES `reciept` WRITE;
/*!40000 ALTER TABLE `reciept` DISABLE KEYS */;
INSERT INTO `reciept` VALUES (1,'TWOWHEELER','1','2','KA 01 EK 1111','one',140,'2019-11-28 16:16:42'),(2,'CAR','2','4','KA 01 EK 2222','two',120,'2019-11-28 16:17:34'),(3,'CAR','3','4','KA 41 EK 3333','one',45,'2019-11-28 16:18:32'),(4,'LMV','1','3','KA 41 EK 4444','two',34,'2019-11-28 16:19:14'),(14,'MULTIAXLE','1','4','KA 41 EK 5555','one',78,'2019-11-28 16:21:10');
/*!40000 ALTER TABLE `reciept` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tolltest`.`entrycount` AFTER INSERT ON `reciept` FOR EACH ROW
BEGIN
DECLARE count1 int;
SET count1=(Select count(*) from tolltest.reciept);
UPDATE entc set count=count1 where id=1;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(45) NOT NULL,
  `smob` varchar(10) DEFAULT NULL,
  `stem` varchar(28) NOT NULL,
  `sdob` date NOT NULL,
  `spass` varchar(45) NOT NULL,
  `splz` int(2) DEFAULT NULL,
  `stb` int(2) DEFAULT NULL,
  `shift` varchar(2) NOT NULL,
  PRIMARY KEY (`sid`),
  UNIQUE KEY `stem_UNIQUE` (`stem`),
  UNIQUE KEY `smob_UNIQUE` (`smob`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'ADAM','7172738883','adam99@gmail.com','1999-01-01','ADAM99',1,1,'2'),(2,'DAVID','9899897345','david99@gmail.com','1999-02-02','DAVID99',1,2,'1'),(3,'NIALL','678278237','niall99@gmail.com','1999-03-03','NIALL99',2,3,'2'),(4,'LIAM','783734676','liam99@gmail.com','1999-04-04','LIAM99',1,4,'2'),(5,'ZAYN','382487384','zayn99@gmail.com','1999-05-05','ZAYN99',1,2,'1');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tolltest`.`notifyme` AFTER UPDATE ON `staff` FOR EACH ROW
BEGIN
update entc set count=new.shift ,sid=new.sid where id=3;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `stafflogin`
--

DROP TABLE IF EXISTS `stafflogin`;
/*!50001 DROP VIEW IF EXISTS `stafflogin`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `stafflogin` AS SELECT 
 1 AS `sname`,
 1 AS `spass`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `staffshift`
--

DROP TABLE IF EXISTS `staffshift`;
/*!50001 DROP VIEW IF EXISTS `staffshift`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `staffshift` AS SELECT 
 1 AS `sid`,
 1 AS `sname`,
 1 AS `splz`,
 1 AS `shift`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `tripcosts`
--

DROP TABLE IF EXISTS `tripcosts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tripcosts` (
  `fromt` int(11) NOT NULL,
  `tot` int(11) NOT NULL,
  `vehiclecat` varchar(45) NOT NULL,
  `oneway` int(11) DEFAULT NULL,
  `twoway` int(11) DEFAULT NULL,
  PRIMARY KEY (`fromt`,`tot`,`vehiclecat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tripcosts`
--

LOCK TABLES `tripcosts` WRITE;
/*!40000 ALTER TABLE `tripcosts` DISABLE KEYS */;
INSERT INTO `tripcosts` VALUES (1,2,'CAR',30,53),(1,2,'LMV',40,88),(1,2,'MULTIAXLE',100,180),(1,2,'TWOWHEELER',20,35),(1,3,'CAR',40,65),(1,3,'LMV',50,85),(1,3,'MULTIAXLE',110,190),(1,3,'TWOWHEELER',30,45),(1,4,'CAR',50,90),(1,4,'LMV',60,100),(1,4,'MULTIAXLE',120,210),(1,4,'TWOWHEELER',40,65),(2,3,'CAR',30,55),(2,3,'LMV',40,75),(2,3,'MULTIAXLE',100,180),(2,3,'TWOWHEELER',20,35),(2,4,'CAR',40,65),(2,4,'LMV',50,85),(2,4,'MULTIAXLE',110,190),(2,4,'TWOWHEELER',30,45),(3,4,'CAR',35,65),(3,4,'LMV',45,75),(3,4,'MULTIAXLE',105,195),(3,4,'TWOWHEELER',25,45);
/*!40000 ALTER TABLE `tripcosts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'tolltest'
--

--
-- Dumping routines for database 'tolltest'
--
/*!50003 DROP PROCEDURE IF EXISTS `exitcount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `exitcount`()
BEGIN
DECLARE c,d,e int(5) DEFAULT 0 ;
SET c=(Select count(*) from tolltest.reciept);
SET d=(Select count(*) from tolltest.checkout);
SET e=c-d;
UPDATE entc set count=e where id=2;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `vehiclesonroad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `vehiclesonroad`()
BEGIN
DECLARE a,b INT(5) DEFAULT 0;
SET a=(select count from entc where id=1);
SET b=(select count from entc where id=2);
set a=a-b;
update entc set count=a where id=0;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `stafflogin`
--

/*!50001 DROP VIEW IF EXISTS `stafflogin`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `stafflogin` AS select `staff`.`sname` AS `sname`,`staff`.`spass` AS `spass` from `staff` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `staffshift`
--

/*!50001 DROP VIEW IF EXISTS `staffshift`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `staffshift` AS select `staff`.`sid` AS `sid`,`staff`.`sname` AS `sname`,`staff`.`splz` AS `splz`,`staff`.`shift` AS `shift` from `staff` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-08 11:23:03
