-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: ok
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `workers`
--

DROP TABLE IF EXISTS `workers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `fam` varchar(45) DEFAULT NULL,
  `otch` varchar(45) DEFAULT NULL,
  `gender_id` int DEFAULT NULL,
  `prof_id` int DEFAULT NULL,
  `position_id` int DEFAULT NULL,
  `face_id` int DEFAULT NULL,
  `education_id` int DEFAULT NULL,
  `date_hired` date DEFAULT NULL,
  `date_fired` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_st_gender_idx` (`gender_id`),
  KEY `fk_st_prof_idx` (`prof_id`),
  KEY `fk_st_education_idx` (`education_id`),
  KEY `fk_w_position_idx` (`position_id`),
  CONSTRAINT `fk_w_education` FOREIGN KEY (`education_id`) REFERENCES `education` (`id`),
  CONSTRAINT `fk_w_gender` FOREIGN KEY (`gender_id`) REFERENCES `gender` (`id`),
  CONSTRAINT `fk_w_position` FOREIGN KEY (`position_id`) REFERENCES `position` (`id`),
  CONSTRAINT `fk_w_prof` FOREIGN KEY (`prof_id`) REFERENCES `prof` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workers`
--

LOCK TABLES `workers` WRITE;
/*!40000 ALTER TABLE `workers` DISABLE KEYS */;
INSERT INTO `workers` VALUES (1,'Максим','Куприянов','Дмитриевич',1,2,1,1,3,'2025-01-06','2025-01-06'),(2,'Александр','Петров ','Дмитриевич',2,1,1,2,1,'2025-01-06','2025-01-06'),(3,'Мария','Иванова','Сергеевна',2,3,3,5,8,'2024-12-12','2025-06-19'),(4,'Игорь','Воронков','Сергеевич',1,3,1,4,2,'2025-02-19','2025-02-19'),(5,'Дмитрий ','Волков ','Николаевич ',2,4,5,1,5,'2025-04-20',NULL),(16,'Екатерина ','Морозова ','Игоревна ',2,9,2,4,10,'2025-06-25','2025-06-26'),(17,'Павел ','Соколов ','Александрович ',1,5,8,4,4,'2025-06-16','2025-08-16'),(18,'Ольга ','Васильева ','Владимировна ',2,6,7,2,8,'2025-08-12','2025-08-12'),(19,'Андрей ','Михайлов ','Сергеевич ',1,8,6,4,7,'2025-04-02','2025-10-30'),(20,'Татьяна ','Андреева ','Михайловна ',2,1,10,4,5,'2025-06-16','2025-07-16');
/*!40000 ALTER TABLE `workers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-23 23:49:57
