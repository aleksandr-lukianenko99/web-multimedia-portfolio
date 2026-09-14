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
-- Table structure for table `actions`
--

DROP TABLE IF EXISTS `actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actions`
--

LOCK TABLES `actions` WRITE;
/*!40000 ALTER TABLE `actions` DISABLE KEYS */;
INSERT INTO `actions` VALUES (1,'в работе'),(2,'на проверке'),(3,'Подписан'),(4,'Подписан контраагентом'),(5,'На доработке'),(6,'Отклонен'),(7,'Истяк срок действия');
/*!40000 ALTER TABLE `actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `education` (
  `id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education`
--

LOCK TABLES `education` WRITE;
/*!40000 ALTER TABLE `education` DISABLE KEYS */;
INSERT INTO `education` VALUES (1,'Договор купли-продажи'),(2,'Договор подряда'),(3,'Аренда'),(4,'Услуги по ремонту и обслуживанию'),(5,'Дизайнерские услуги'),(6,'IT-услуги'),(7,'Обучение и развитие'),(8,'Юридические услуги'),(9,'Консультационные услуги'),(10,'транспортировка');
/*!40000 ALTER TABLE `education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `face`
--

DROP TABLE IF EXISTS `face`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `face` (
  `id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `face`
--

LOCK TABLES `face` WRITE;
/*!40000 ALTER TABLE `face` DISABLE KEYS */;
INSERT INTO `face` VALUES (1,'Юрид. лицо (Генерал. директор)'),(2,'Юрид. лицо (Сотрудник по довернности)'),(4,'Физ. лицо '),(5,'Индвид. предприниматель');
/*!40000 ALTER TABLE `face` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gender`
--

DROP TABLE IF EXISTS `gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gender` (
  `id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gender`
--

LOCK TABLES `gender` WRITE;
/*!40000 ALTER TABLE `gender` DISABLE KEYS */;
INSERT INTO `gender` VALUES (1,'Мужской'),(2,'Женский');
/*!40000 ALTER TABLE `gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `list`
--

DROP TABLE IF EXISTS `list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `list` (
  `id` int NOT NULL AUTO_INCREMENT,
  `number` decimal(10,0) DEFAULT NULL,
  `workers_id` int DEFAULT NULL,
  `phone_email` varchar(100) DEFAULT NULL,
  `actions_id` int DEFAULT NULL,
  `sum` decimal(10,0) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_st_actions_idx` (`actions_id`),
  CONSTRAINT `fk_l_actions` FOREIGN KEY (`actions_id`) REFERENCES `actions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list`
--

LOCK TABLES `list` WRITE;
/*!40000 ALTER TABLE `list` DISABLE KEYS */;
INSERT INTO `list` VALUES (1,12345,1,'+7(979)9639811 jdvso@mail.com',3,50000,'2024-12-30'),(2,13123,2,'+7(972)1957205  koudoffeitiwa-6664@yopmail.com',2,13500,'2025-01-16'),(3,12345,3,'+7 (903) 890-45-67 xyz_7890@mail.ru',1,10000,'2024-11-08'),(4,85634,4,'+7 (968) 123-78-45 abcde_4321@bk.ru',6,30000,'2025-03-07'),(8,41234,5,'+7 (915) 234-78-90 qwert_1234@gmail.com',4,10000,'2025-09-25'),(9,15135,3,'+7 (926) 567-34-12 random_user56@yandex.ru',7,30000,'2025-06-13');
/*!40000 ALTER TABLE `list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position` (
  `id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES (1,'ООО \"ТехноСервис\"'),(2,'ЗАО \"ЭкоПоставка\"'),(3,'ИП \"МаркетГрупп\"'),(4,'ООО \"СтройИнвест\"'),(5,'ЗАО \"Финансовые Решения\"'),(6,'ООО \"Креативное Агентство\"'),(7,'ИП \"Юридическая Помощь\"'),(8,'ООО \"Логистика Плюс\"'),(9,'ЗАО \"Образовательные Технологии\"'),(10,'ООО \"Дизайн и Ремонт\"');
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prof`
--

DROP TABLE IF EXISTS `prof`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prof` (
  `id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prof`
--

LOCK TABLES `prof` WRITE;
/*!40000 ALTER TABLE `prof` DISABLE KEYS */;
INSERT INTO `prof` VALUES (1,'Дизайнер'),(2,'Садовник'),(3,'Снабженец'),(4,'Тифлопедагог'),(5,'Строитель'),(6,'Историк'),(7,'Флорист'),(8,'Спортивный тренер'),(9,'Инкассатор');
/*!40000 ALTER TABLE `prof` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2025-06-23 23:48:52
