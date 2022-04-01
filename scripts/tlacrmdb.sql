-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: tlacrmdb
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(250) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `town` varchar(250) DEFAULT NULL,
  `city` varchar(250) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `search` (`name`,`phone`,`email`)
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Edgar Valli','8121476458','edgarvalli80@gmail.com','Nueva Encarnacion 125','Apodaca','Nuevo Leon','2021-11-14 01:29:40','2021-11-14 01:29:40'),(3,'User1','8188476458','user1@dominio.com','Calle 123','Colonia1','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(4,'User2','8188476458','user2@dominio.com','Calle 123','Colonia2','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(5,'User3','8188476458','user3@dominio.com','Calle 123','Colonia3','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(6,'User4','8188476458','user4@dominio.com','Calle 123','Colonia4','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(7,'User5','8188476458','user5@dominio.com','Calle 123','Colonia5','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(8,'User6','8188476458','user6@dominio.com','Calle 123','Colonia6','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(9,'User7','8188476458','user7@dominio.com','Calle 123','Colonia7','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(10,'User8','8188476458','user8@dominio.com','Calle 123','Colonia8','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(11,'User9','8188476458','user9@dominio.com','Calle 123','Colonia9','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(12,'User10','8188476458','user10@dominio.com','Calle 123','Colonia10','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(13,'User11','8188476458','user11@dominio.com','Calle 123','Colonia11','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(14,'User12','8188476458','user12@dominio.com','Calle 123','Colonia12','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(15,'User13','8188476458','user13@dominio.com','Calle 123','Colonia13','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(16,'User14','8188476458','user14@dominio.com','Calle 123','Colonia14','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(17,'User15','8188476458','user15@dominio.com','Calle 123','Colonia15','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(18,'User16','8188476458','user16@dominio.com','Calle 123','Colonia16','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(19,'User17','8188476458','user17@dominio.com','Calle 123','Colonia17','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(20,'User18','8188476458','user18@dominio.com','Calle 123','Colonia18','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(21,'User19','8188476458','user19@dominio.com','Calle 123','Colonia19','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(22,'User20','8188476458','user20@dominio.com','Calle 123','Colonia20','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(23,'User21','8188476458','user21@dominio.com','Calle 123','Colonia21','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(24,'User22','8188476458','user22@dominio.com','Calle 123','Colonia22','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(25,'User23','8188476458','user23@dominio.com','Calle 123','Colonia23','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(26,'User24','8188476458','user24@dominio.com','Calle 123','Colonia24','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(27,'User25','8188476458','user25@dominio.com','Calle 123','Colonia25','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(28,'User26','8188476458','user26@dominio.com','Calle 123','Colonia26','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(29,'User27','8188476458','user27@dominio.com','Calle 123','Colonia27','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(30,'User28','8188476458','user28@dominio.com','Calle 123','Colonia28','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(31,'User29','8188476458','user29@dominio.com','Calle 123','Colonia29','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(32,'User30','8188476458','user30@dominio.com','Calle 123','Colonia30','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(33,'User31','8188476458','user31@dominio.com','Calle 123','Colonia31','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(34,'User32','8188476458','user32@dominio.com','Calle 123','Colonia32','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(35,'User33','8188476458','user33@dominio.com','Calle 123','Colonia33','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(36,'User34','8188476458','user34@dominio.com','Calle 123','Colonia34','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(37,'User35','8188476458','user35@dominio.com','Calle 123','Colonia35','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(38,'User36','8188476458','user36@dominio.com','Calle 123','Colonia36','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(39,'User37','8188476458','user37@dominio.com','Calle 123','Colonia37','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(40,'User38','8188476458','user38@dominio.com','Calle 123','Colonia38','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(41,'User39','8188476458','user39@dominio.com','Calle 123','Colonia39','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(42,'User40','8188476458','user40@dominio.com','Calle 123','Colonia40','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(43,'User41','8188476458','user41@dominio.com','Calle 123','Colonia41','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(44,'User42','8188476458','user42@dominio.com','Calle 123','Colonia42','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(45,'User43','8188476458','user43@dominio.com','Calle 123','Colonia43','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(46,'User44','8188476458','user44@dominio.com','Calle 123','Colonia44','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(47,'User45','8188476458','user45@dominio.com','Calle 123','Colonia45','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(48,'User46','8188476458','user46@dominio.com','Calle 123','Colonia46','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(49,'User47','8188476458','user47@dominio.com','Calle 123','Colonia47','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(50,'User48','8188476458','user48@dominio.com','Calle 123','Colonia48','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(51,'User49','8188476458','user49@dominio.com','Calle 123','Colonia49','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(52,'User50','8188476458','user50@dominio.com','Calle 123','Colonia50','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(53,'User51','8188476458','user51@dominio.com','Calle 123','Colonia51','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(54,'User52','8188476458','user52@dominio.com','Calle 123','Colonia52','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(55,'User53','8188476458','user53@dominio.com','Calle 123','Colonia53','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(56,'User54','8188476458','user54@dominio.com','Calle 123','Colonia54','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(57,'User55','8188476458','user55@dominio.com','Calle 123','Colonia55','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(58,'User56','8188476458','user56@dominio.com','Calle 123','Colonia56','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(59,'User57','8188476458','user57@dominio.com','Calle 123','Colonia57','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(60,'User58','8188476458','user58@dominio.com','Calle 123','Colonia58','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(61,'User59','8188476458','user59@dominio.com','Calle 123','Colonia59','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(62,'User60','8188476458','user60@dominio.com','Calle 123','Colonia60','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(63,'User61','8188476458','user61@dominio.com','Calle 123','Colonia61','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(64,'User62','8188476458','user62@dominio.com','Calle 123','Colonia62','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(65,'User63','8188476458','user63@dominio.com','Calle 123','Colonia63','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(66,'User64','8188476458','user64@dominio.com','Calle 123','Colonia64','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(67,'User65','8188476458','user65@dominio.com','Calle 123','Colonia65','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(68,'User66','8188476458','user66@dominio.com','Calle 123','Colonia66','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(69,'User67','8188476458','user67@dominio.com','Calle 123','Colonia67','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(70,'User68','8188476458','user68@dominio.com','Calle 123','Colonia68','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(71,'User69','8188476458','user69@dominio.com','Calle 123','Colonia69','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(72,'User70','8188476458','user70@dominio.com','Calle 123','Colonia70','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(73,'User71','8188476458','user71@dominio.com','Calle 123','Colonia71','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(74,'User72','8188476458','user72@dominio.com','Calle 123','Colonia72','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(75,'User73','8188476458','user73@dominio.com','Calle 123','Colonia73','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(76,'User74','8188476458','user74@dominio.com','Calle 123','Colonia74','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(77,'User75','8188476458','user75@dominio.com','Calle 123','Colonia75','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(78,'User76','8188476458','user76@dominio.com','Calle 123','Colonia76','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(79,'User77','8188476458','user77@dominio.com','Calle 123','Colonia77','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(80,'User78','8188476458','user78@dominio.com','Calle 123','Colonia78','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(81,'User79','8188476458','user79@dominio.com','Calle 123','Colonia79','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(82,'User80','8188476458','user80@dominio.com','Calle 123','Colonia80','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(83,'User81','8188476458','user81@dominio.com','Calle 123','Colonia81','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(84,'User82','8188476458','user82@dominio.com','Calle 123','Colonia82','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(85,'User83','8188476458','user83@dominio.com','Calle 123','Colonia83','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(86,'User84','8188476458','user84@dominio.com','Calle 123','Colonia84','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(87,'User85','8188476458','user85@dominio.com','Calle 123','Colonia85','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(88,'User86','8188476458','user86@dominio.com','Calle 123','Colonia86','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(89,'User87','8188476458','user87@dominio.com','Calle 123','Colonia87','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(90,'User88','8188476458','user88@dominio.com','Calle 123','Colonia88','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(91,'User89','8188476458','user89@dominio.com','Calle 123','Colonia89','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(92,'User90','8188476458','user90@dominio.com','Calle 123','Colonia90','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(93,'User91','8188476458','user91@dominio.com','Calle 123','Colonia91','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(94,'User92','8188476458','user92@dominio.com','Calle 123','Colonia92','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(95,'User93','8188476458','user93@dominio.com','Calle 123','Colonia93','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(96,'User94','8188476458','user94@dominio.com','Calle 123','Colonia94','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(97,'User95','8188476458','user95@dominio.com','Calle 123','Colonia95','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(98,'User96','8188476458','user96@dominio.com','Calle 123','Colonia96','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(99,'User97','8188476458','user97@dominio.com','Calle 123','Colonia97','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(100,'User98','8188476458','user98@dominio.com','Calle 123','Colonia98','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(101,'User99','8188476458','user99@dominio.com','Calle 123','Colonia99','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(102,'User100','8188476458','user100@dominio.com','Calle 123','Colonia100','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(103,'User101','8188476458','user101@dominio.com','Calle 123','Colonia101','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(104,'User102','8188476458','user102@dominio.com','Calle 123','Colonia102','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(105,'User103','8188476458','user103@dominio.com','Calle 123','Colonia103','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(106,'User104','8188476458','user104@dominio.com','Calle 123','Colonia104','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(107,'User105','8188476458','user105@dominio.com','Calle 123','Colonia105','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(108,'User106','8188476458','user106@dominio.com','Calle 123','Colonia106','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(109,'User107','8188476458','user107@dominio.com','Calle 123','Colonia107','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(110,'User108','8188476458','user108@dominio.com','Calle 123','Colonia108','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(111,'User109','8188476458','user109@dominio.com','Calle 123','Colonia109','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(112,'User110','8188476458','user110@dominio.com','Calle 123','Colonia110','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(113,'User111','8188476458','user111@dominio.com','Calle 123','Colonia111','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(114,'User112','8188476458','user112@dominio.com','Calle 123','Colonia112','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(115,'User113','8188476458','user113@dominio.com','Calle 123','Colonia113','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(116,'User114','8188476458','user114@dominio.com','Calle 123','Colonia114','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(117,'User115','8188476458','user115@dominio.com','Calle 123','Colonia115','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(118,'User116','8188476458','user116@dominio.com','Calle 123','Colonia116','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(119,'User117','8188476458','user117@dominio.com','Calle 123','Colonia117','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(120,'User118','8188476458','user118@dominio.com','Calle 123','Colonia118','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(121,'User119','8188476458','user119@dominio.com','Calle 123','Colonia119','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(122,'User120','8188476458','user120@dominio.com','Calle 123','Colonia120','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(123,'User121','8188476458','user121@dominio.com','Calle 123','Colonia121','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(124,'User122','8188476458','user122@dominio.com','Calle 123','Colonia122','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(125,'User123','8188476458','user123@dominio.com','Calle 123','Colonia123','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(126,'User124','8188476458','user124@dominio.com','Calle 123','Colonia124','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(127,'User125','8188476458','user125@dominio.com','Calle 123','Colonia125','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(128,'User126','8188476458','user126@dominio.com','Calle 123','Colonia126','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(129,'User127','8188476458','user127@dominio.com','Calle 123','Colonia127','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(130,'User128','8188476458','user128@dominio.com','Calle 123','Colonia128','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(131,'User129','8188476458','user129@dominio.com','Calle 123','Colonia129','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(132,'User130','8188476458','user130@dominio.com','Calle 123','Colonia130','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(133,'User131','8188476458','user131@dominio.com','Calle 123','Colonia131','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(134,'User132','8188476458','user132@dominio.com','Calle 123','Colonia132','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(135,'User133','8188476458','user133@dominio.com','Calle 123','Colonia133','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(136,'User134','8188476458','user134@dominio.com','Calle 123','Colonia134','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(137,'User135','8188476458','user135@dominio.com','Calle 123','Colonia135','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(138,'User136','8188476458','user136@dominio.com','Calle 123','Colonia136','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(139,'User137','8188476458','user137@dominio.com','Calle 123','Colonia137','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(140,'User138','8188476458','user138@dominio.com','Calle 123','Colonia138','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(141,'User139','8188476458','user139@dominio.com','Calle 123','Colonia139','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(142,'User140','8188476458','user140@dominio.com','Calle 123','Colonia140','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(143,'User141','8188476458','user141@dominio.com','Calle 123','Colonia141','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(144,'User142','8188476458','user142@dominio.com','Calle 123','Colonia142','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(145,'User143','8188476458','user143@dominio.com','Calle 123','Colonia143','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(146,'User144','8188476458','user144@dominio.com','Calle 123','Colonia144','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(147,'User145','8188476458','user145@dominio.com','Calle 123','Colonia145','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(148,'User146','8188476458','user146@dominio.com','Calle 123','Colonia146','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(149,'User147','8188476458','user147@dominio.com','Calle 123','Colonia147','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(150,'User148','8188476458','user148@dominio.com','Calle 123','Colonia148','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(151,'User149','8188476458','user149@dominio.com','Calle 123','Colonia149','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(152,'User150','8188476458','user150@dominio.com','Calle 123','Colonia150','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(153,'User151','8188476458','user151@dominio.com','Calle 123','Colonia151','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(154,'User152','8188476458','user152@dominio.com','Calle 123','Colonia152','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(155,'User153','8188476458','user153@dominio.com','Calle 123','Colonia153','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(156,'User154','8188476458','user154@dominio.com','Calle 123','Colonia154','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(157,'User155','8188476458','user155@dominio.com','Calle 123','Colonia155','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(158,'User156','8188476458','user156@dominio.com','Calle 123','Colonia156','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(159,'User157','8188476458','user157@dominio.com','Calle 123','Colonia157','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(160,'User158','8188476458','user158@dominio.com','Calle 123','Colonia158','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(161,'User159','8188476458','user159@dominio.com','Calle 123','Colonia159','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(162,'User160','8188476458','user160@dominio.com','Calle 123','Colonia160','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(163,'User161','8188476458','user161@dominio.com','Calle 123','Colonia161','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(164,'User162','8188476458','user162@dominio.com','Calle 123','Colonia162','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(165,'User163','8188476458','user163@dominio.com','Calle 123','Colonia163','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(166,'User164','8188476458','user164@dominio.com','Calle 123','Colonia164','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(167,'User165','8188476458','user165@dominio.com','Calle 123','Colonia165','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(168,'User166','8188476458','user166@dominio.com','Calle 123','Colonia166','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(169,'User167','8188476458','user167@dominio.com','Calle 123','Colonia167','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(170,'User168','8188476458','user168@dominio.com','Calle 123','Colonia168','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(171,'User169','8188476458','user169@dominio.com','Calle 123','Colonia169','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(172,'User170','8188476458','user170@dominio.com','Calle 123','Colonia170','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(173,'User171','8188476458','user171@dominio.com','Calle 123','Colonia171','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(174,'User172','8188476458','user172@dominio.com','Calle 123','Colonia172','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(175,'User173','8188476458','user173@dominio.com','Calle 123','Colonia173','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(176,'User174','8188476458','user174@dominio.com','Calle 123','Colonia174','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(177,'User175','8188476458','user175@dominio.com','Calle 123','Colonia175','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(178,'User176','8188476458','user176@dominio.com','Calle 123','Colonia176','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(179,'User177','8188476458','user177@dominio.com','Calle 123','Colonia177','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(180,'User178','8188476458','user178@dominio.com','Calle 123','Colonia178','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(181,'User179','8188476458','user179@dominio.com','Calle 123','Colonia179','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(182,'User180','8188476458','user180@dominio.com','Calle 123','Colonia180','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(183,'User181','8188476458','user181@dominio.com','Calle 123','Colonia181','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(184,'User182','8188476458','user182@dominio.com','Calle 123','Colonia182','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(185,'User183','8188476458','user183@dominio.com','Calle 123','Colonia183','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(186,'User184','8188476458','user184@dominio.com','Calle 123','Colonia184','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(187,'User185','8188476458','user185@dominio.com','Calle 123','Colonia185','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(188,'User186','8188476458','user186@dominio.com','Calle 123','Colonia186','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(189,'User187','8188476458','user187@dominio.com','Calle 123','Colonia187','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(190,'User188','8188476458','user188@dominio.com','Calle 123','Colonia188','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(191,'User189','8188476458','user189@dominio.com','Calle 123','Colonia189','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(192,'User190','8188476458','user190@dominio.com','Calle 123','Colonia190','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(193,'User191','8188476458','user191@dominio.com','Calle 123','Colonia191','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(194,'User192','8188476458','user192@dominio.com','Calle 123','Colonia192','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(195,'User193','8188476458','user193@dominio.com','Calle 123','Colonia193','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(196,'User194','8188476458','user194@dominio.com','Calle 123','Colonia194','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(197,'User195','8188476458','user195@dominio.com','Calle 123','Colonia195','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(198,'User196','8188476458','user196@dominio.com','Calle 123','Colonia196','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(199,'User197','8188476458','user197@dominio.com','Calle 123','Colonia197','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(200,'User198','8188476458','user198@dominio.com','Calle 123','Colonia198','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(201,'User199','8188476458','user199@dominio.com','Calle 123','Colonia199','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(202,'User200','8188476458','user200@dominio.com','Calle 123','Colonia200','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(203,'User201','8188476458','user201@dominio.com','Calle 123','Colonia201','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(204,'User202','8188476458','user202@dominio.com','Calle 123','Colonia202','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(205,'User203','8188476458','user203@dominio.com','Calle 123','Colonia203','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(206,'User204','8188476458','user204@dominio.com','Calle 123','Colonia204','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(207,'User205','8188476458','user205@dominio.com','Calle 123','Colonia205','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(208,'User206','8188476458','user206@dominio.com','Calle 123','Colonia206','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(209,'User207','8188476458','user207@dominio.com','Calle 123','Colonia207','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(210,'User208','8188476458','user208@dominio.com','Calle 123','Colonia208','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(211,'User209','8188476458','user209@dominio.com','Calle 123','Colonia209','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(212,'User210','8188476458','user210@dominio.com','Calle 123','Colonia210','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(213,'User211','8188476458','user211@dominio.com','Calle 123','Colonia211','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22'),(214,'User212','8188476458','user212@dominio.com','Calle 123','Colonia212','Apodaca','2022-03-16 23:36:22','2022-03-16 23:36:22');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userid` int DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `material` varchar(500) DEFAULT NULL,
  `total` float DEFAULT NULL,
  `payment` float DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads`
--

DROP TABLE IF EXISTS `leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leads` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userid` int DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `is_visited` tinyint DEFAULT '0',
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads`
--

LOCK TABLES `leads` WRITE;
/*!40000 ALTER TABLE `leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `jobid` int DEFAULT NULL,
  `payment` float DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(250) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `is_admin` tinyint DEFAULT '0',
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `search` (`email`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'edgarvalli80@gmail.com','Edgar Valli','e38fbe119db3ec1ea8979ca746b43f24b001c883',1,'2021-11-13 23:57:59','2021-11-13 23:57:59'),(2,'tapicerialosalamos@gmail.com','Cecilio Valli','f9e6632673d2f8fb366b18c622c7fd3cc1b36b6d',0,'2022-03-12 20:49:20','2022-03-12 20:49:20'),(3,'gabrielaovalle97@gmail.com','Gaby Ovalle','f9e6632673d2f8fb366b18c622c7fd3cc1b36b6d',0,'2022-03-12 21:01:09','2022-03-12 21:01:09'),(4,'gloriamunoz70@gmail.com','Gloria Mu├▒oz','f9e6632673d2f8fb366b18c622c7fd3cc1b36b6d',0,'2022-03-12 21:03:57','2022-03-12 21:03:57');
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

-- Dump completed on 2022-03-16 18:31:48
