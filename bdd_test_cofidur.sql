-- MySQL dump 10.13  Distrib 5.7.14, for Win64 (x86_64)
--
-- Host: localhost    Database: cofidur
-- ------------------------------------------------------
-- Server version	5.7.14

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `formation_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ordre` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_64C19C15200282E` (`formation_id`),
  CONSTRAINT `FK_64C19C15200282E` FOREIGN KEY (`formation_id`) REFERENCES `formation` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,2,'Etape 1',1);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formation`
--

DROP TABLE IF EXISTS `formation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `criticality` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `goal` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `teachingAids` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `placesMaterialRessources` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formation`
--

LOCK TABLES `formation` WRITE;
/*!40000 ALTER TABLE `formation` DISABLE KEYS */;
INSERT INTO `formation` VALUES (1,1,'Vissage','Visser','Aero','Perceuse','RAS'),(2,2,'Ma formation','Visser','EMS','Perceuse','Chariot');
/*!40000 ALTER TABLE `formation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fos_user`
--

DROP TABLE IF EXISTS `fos_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fos_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`),
  UNIQUE KEY `UNIQ_957A6479C05FB297` (`confirmation_token`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fos_user`
--

LOCK TABLES `fos_user` WRITE;
/*!40000 ALTER TABLE `fos_user` DISABLE KEYS */;
INSERT INTO `fos_user` VALUES (1,'flodavid','flodavid','fl.david.53@gmail.com','fl.david.53@gmail.com',1,'hrgn8jj64xcs8swwskgg48kw48gw88g','$2y$13$hrgn8jj64xcs8swwskgg4uaJvsb.0W3JGqK1tW5IVLliT8fry7WZm','2016-10-26 15:13:20',0,0,NULL,NULL,NULL,'a:1:{i:0;s:10:\"ROLE_ADMIN\";}',0,NULL,'Florian','David',NULL),(6,'user','user','user@user.fr','user@user.fr',0,'lmvz33jn9bkscw4c0cs4k44ws888s48','$2y$13$lmvz33jn9bkscw4c0cs4kuxBE18.gv4U0xKzUwMmWv4/U9L7/yxSu',NULL,0,0,NULL,NULL,NULL,'a:0:{}',0,NULL,'User','User',NULL),(8,'root','root','root@root.fr','root@root.fr',0,'3mn60uyacqgwg40g4sksoggs48s4kcs','$2y$13$3mn60uyacqgwg40g4sksoerqHYbDnxGMyKRMtGXjQaJN2OLR85vHO',NULL,0,0,NULL,NULL,NULL,'a:0:{}',0,NULL,'Root','Root',NULL),(9,'vdeleeuw','vdeleeuw','valerian.deleuuw@etud.univ-angers.fr','valerian.deleuuw@etud.univ-angers.fr',0,'lssxsdpnny80gk8w0so0owc484wcw00','$2y$13$lssxsdpnny80gk8w0so0ouRYyAUsrdOK58J2iqIzDPhNBhMwhKXqi',NULL,0,0,NULL,NULL,NULL,'a:0:{}',0,NULL,'Val├⌐rian','Deleeuw',NULL),(10,'ascris','ascris','antoine.garnier@etud.univ-angers.fr','antoine.garnier@etud.univ-angers.fr',0,'of7gew710qo08scgc8gsocgc0ockgw8','$2y$13$of7gew710qo08scgc8gsoOukkMz.XYFw5z6.VnNLOc7ecQZHGnWLi',NULL,0,0,NULL,NULL,NULL,'a:0:{}',0,NULL,'Antoine','Garnier',NULL);
/*!40000 ALTER TABLE `fos_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operator`
--

DROP TABLE IF EXISTS `operator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_D7A6A78192FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_D7A6A781A0D96FBF` (`email_canonical`),
  UNIQUE KEY `UNIQ_D7A6A781C05FB297` (`confirmation_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operator`
--

LOCK TABLES `operator` WRITE;
/*!40000 ALTER TABLE `operator` DISABLE KEYS */;
/*!40000 ALTER TABLE `operator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operator_category`
--

DROP TABLE IF EXISTS `operator_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operator_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `operator_formation_id` int(11) DEFAULT NULL,
  `dateSignature` date DEFAULT NULL,
  `signature` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nbHours` time DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `trainer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D26A6CFBDDCC0FB9` (`operator_formation_id`),
  KEY `IDX_D26A6CFB12469DE2` (`category_id`),
  KEY `IDX_D26A6CFBFB08EDF6` (`trainer_id`),
  CONSTRAINT `FK_D26A6CFB12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `FK_D26A6CFBDDCC0FB9` FOREIGN KEY (`operator_formation_id`) REFERENCES `operator_formation` (`id`),
  CONSTRAINT `FK_D26A6CFBFB08EDF6` FOREIGN KEY (`trainer_id`) REFERENCES `fos_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operator_category`
--

LOCK TABLES `operator_category` WRITE;
/*!40000 ALTER TABLE `operator_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `operator_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operator_formation`
--

DROP TABLE IF EXISTS `operator_formation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operator_formation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dateBegin` date NOT NULL,
  `dateEnd` date NOT NULL,
  `validation` int(11) NOT NULL,
  `commentary` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `operator_id` int(11) DEFAULT NULL,
  `formation_id` int(11) DEFAULT NULL,
  `former_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8698DE78584598A3` (`operator_id`),
  KEY `IDX_8698DE785200282E` (`formation_id`),
  KEY `IDX_8698DE786C20F19` (`former_id`),
  CONSTRAINT `FK_8698DE785200282E` FOREIGN KEY (`formation_id`) REFERENCES `formation` (`id`),
  CONSTRAINT `FK_8698DE78584598A3` FOREIGN KEY (`operator_id`) REFERENCES `fos_user` (`id`),
  CONSTRAINT `FK_8698DE786C20F19` FOREIGN KEY (`former_id`) REFERENCES `fos_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operator_formation`
--

LOCK TABLES `operator_formation` WRITE;
/*!40000 ALTER TABLE `operator_formation` DISABLE KEYS */;
/*!40000 ALTER TABLE `operator_formation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operator_task`
--

DROP TABLE IF EXISTS `operator_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operator_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `operator_category_id` int(11) DEFAULT NULL,
  `task_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_40ED61AA8DB60186` (`task_id`),
  KEY `IDX_40ED61AABBFFF53E` (`operator_category_id`),
  CONSTRAINT `FK_40ED61AA8DB60186` FOREIGN KEY (`task_id`) REFERENCES `task` (`id`),
  CONSTRAINT `FK_40ED61AABBFFF53E` FOREIGN KEY (`operator_category_id`) REFERENCES `operator_category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operator_task`
--

LOCK TABLES `operator_task` WRITE;
/*!40000 ALTER TABLE `operator_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `operator_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ordre` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_527EDB2512469DE2` (`category_id`),
  CONSTRAINT `FK_527EDB2512469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` VALUES (1,1,'Pr├⌐paration',1);
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-26 18:14:37
