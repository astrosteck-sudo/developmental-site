-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `ai_usage`
--

DROP TABLE IF EXISTS `ai_usage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ai_usage` (
  `ai_usage_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `requests_used` int DEFAULT '0',
  `requests_limit` int DEFAULT '3',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ai_usage_id`),
  KEY `fk_ai_usage_user` (`user_id`),
  CONSTRAINT `fk_ai_usage_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ai_usage`
--

LOCK TABLES `ai_usage` WRITE;
/*!40000 ALTER TABLE `ai_usage` DISABLE KEYS */;
INSERT INTO `ai_usage` VALUES (1,5,NULL,3,'2026-05-03 03:01:03','2026-05-05 04:16:05'),(2,6,NULL,3,'2026-05-04 02:25:53','2026-05-05 04:16:05'),(3,7,NULL,3,'2026-05-04 02:39:39','2026-05-05 04:16:05'),(4,8,NULL,3,'2026-05-04 02:44:52','2026-05-05 04:16:05'),(5,9,NULL,3,'2026-05-04 02:46:55','2026-05-05 04:16:05');
/*!40000 ALTER TABLE `ai_usage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `amenities`
--

DROP TABLE IF EXISTS `amenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amenities` (
  `amenities_id` int NOT NULL AUTO_INCREMENT,
  `hostel_id` varchar(50) DEFAULT NULL,
  `amenity` varchar(100) NOT NULL,
  PRIMARY KEY (`amenities_id`),
  UNIQUE KEY `hostel_id` (`hostel_id`,`amenity`),
  CONSTRAINT `amenities_ibfk_1` FOREIGN KEY (`hostel_id`) REFERENCES `hostels` (`hostel_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenities`
--

LOCK TABLES `amenities` WRITE;
/*!40000 ALTER TABLE `amenities` DISABLE KEYS */;
INSERT INTO `amenities` VALUES (6,'141c9727-155b-472c-b75e-27715725f27c','Cctv Cameras'),(5,'141c9727-155b-472c-b75e-27715725f27c','Dstv cable'),(1,'141c9727-155b-472c-b75e-27715725f27c','Free water'),(2,'141c9727-155b-472c-b75e-27715725f27c','Generator '),(4,'141c9727-155b-472c-b75e-27715725f27c','Security'),(20,'141c9727-155b-472c-b75e-27715725f27c','Starlink Wifi'),(7,'170ab6f9-9a50-4598-8858-188f59577bf3','Free water'),(10,'170ab6f9-9a50-4598-8858-188f59577bf3','Security'),(9,'170ab6f9-9a50-4598-8858-188f59577bf3','Study rooms'),(8,'170ab6f9-9a50-4598-8858-188f59577bf3','Wifi'),(14,'47b10dd3-6ef6-44a3-a00b-5051c14d8c73','Drying Line'),(12,'47b10dd3-6ef6-44a3-a00b-5051c14d8c73','Free Water'),(15,'47b10dd3-6ef6-44a3-a00b-5051c14d8c73','Nice Compound'),(13,'47b10dd3-6ef6-44a3-a00b-5051c14d8c73','Walled Hostel'),(18,'4ff107e9-6493-4d32-ad4f-a50dc864d0a5','Drying Line'),(17,'4ff107e9-6493-4d32-ad4f-a50dc864d0a5','Free Water'),(19,'4ff107e9-6493-4d32-ad4f-a50dc864d0a5','Security'),(25,'5bf2d87a-dd16-42d9-b7a7-4aecdde9cedd','Drying Line'),(22,'5bf2d87a-dd16-42d9-b7a7-4aecdde9cedd','Free light'),(21,'5bf2d87a-dd16-42d9-b7a7-4aecdde9cedd','Free water'),(23,'5bf2d87a-dd16-42d9-b7a7-4aecdde9cedd','Security'),(24,'5bf2d87a-dd16-42d9-b7a7-4aecdde9cedd','Study room'),(27,'7af2a906-6c09-4941-8227-6325aa6ab8c6','Free light'),(28,'7af2a906-6c09-4941-8227-6325aa6ab8c6','Free water'),(26,'7af2a906-6c09-4941-8227-6325aa6ab8c6','Plant'),(29,'7af2a906-6c09-4941-8227-6325aa6ab8c6','Security'),(30,'7af2a906-6c09-4941-8227-6325aa6ab8c6','Security Post'),(35,'d3582f55-470e-49d9-bd94-39dab2ba0cab','Drying Line'),(33,'d3582f55-470e-49d9-bd94-39dab2ba0cab','Free gas'),(34,'d3582f55-470e-49d9-bd94-39dab2ba0cab','Free water'),(31,'d3582f55-470e-49d9-bd94-39dab2ba0cab','Laundry'),(32,'d3582f55-470e-49d9-bd94-39dab2ba0cab','Tv Room'),(38,'db900f38-3480-481d-b20b-66962ea03b7a','Free Light'),(37,'db900f38-3480-481d-b20b-66962ea03b7a','Free Water'),(40,'db900f38-3480-481d-b20b-66962ea03b7a','Security'),(48,'ea7ae95e-7dd1-4bb7-acff-4ada2022ed2a','5kg Free Laundry Per Week'),(41,'ea7ae95e-7dd1-4bb7-acff-4ada2022ed2a','Free Wifi'),(44,'ea7ae95e-7dd1-4bb7-acff-4ada2022ed2a','Game Space'),(43,'ea7ae95e-7dd1-4bb7-acff-4ada2022ed2a','Gym and fitness'),(45,'ea7ae95e-7dd1-4bb7-acff-4ada2022ed2a','Laundry'),(46,'ea7ae95e-7dd1-4bb7-acff-4ada2022ed2a','Minimart'),(47,'ea7ae95e-7dd1-4bb7-acff-4ada2022ed2a','Resturant'),(42,'ea7ae95e-7dd1-4bb7-acff-4ada2022ed2a','Security');
/*!40000 ALTER TABLE `amenities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `contact_id` int NOT NULL AUTO_INCREMENT,
  `hostel_id` varchar(50) DEFAULT NULL,
  `manager_name` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `whatsapp` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `office_hours` varchar(50) DEFAULT '5:00am to 12:00am',
  `website` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`contact_id`),
  UNIQUE KEY `hostel_id` (`hostel_id`),
  CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`hostel_id`) REFERENCES `hostels` (`hostel_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1,'141c9727-155b-472c-b75e-27715725f27c','Htc Manager','0551593050',' 0551593050',' info@htctower.com','5:00am to 12:00am','htctower.com'),(2,'170ab6f9-9a50-4598-8858-188f59577bf3','Mr. MICHAREL','0574960739','0574960739','michaelowireedu1@gmail.com','5:00am to 12:00am',NULL),(3,'47b10dd3-6ef6-44a3-a00b-5051c14d8c73','Ms. Ramona','0248204119',' 0277854901','ramonaamooah@gmail.com','5:00am to 12:00am',NULL),(4,'4ff107e9-6493-4d32-ad4f-a50dc864d0a5','Mr. Victor','0542001445','0542001445',NULL,'5:00am to 12:00am',NULL),(5,'5bf2d87a-dd16-42d9-b7a7-4aecdde9cedd','Mr. Aaron','0546366721','0546366721',NULL,'5:00am to 12:00am',NULL),(6,'7af2a906-6c09-4941-8227-6325aa6ab8c6','Mr. Smith','0540663488','0540663488',NULL,'5:00am to 12:00am',NULL),(7,'d3582f55-470e-49d9-bd94-39dab2ba0cab',' Mr. Livingston','0249375063','0249375063',NULL,'5:00am to 12:00am',NULL),(8,'db900f38-3480-481d-b20b-66962ea03b7a','Mr. Michael','0537630632','0537630632',NULL,'5:00am to 12:00am',NULL),(9,'ea7ae95e-7dd1-4bb7-acff-4ada2022ed2a','Obrempong Mangager','0256112666','0256112666','abremponghostel53@gmail.com','5:00am to 12:00am','abremponghostel.com');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `customer_email`
--

DROP TABLE IF EXISTS `customer_email`;
/*!50001 DROP VIEW IF EXISTS `customer_email`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customer_email` AS SELECT 
 1 AS `email`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `referral_id` int DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `lat_name_first_name_idx` (`last_name`,`first_name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Fred','Fish',NULL,'FFish@gmail.com'),(2,'Larry','Lobster',1,'FLobster@gmail.com'),(3,'Bubble','Bass',2,'BBass@gmail.com'),(8,'Poppy','Puff',2,'PPuff@gmail.com'),(9,'Pearl','Krabs',NULL,'PKrabs@gmail.com'),(10,'Fox','Catcher',4,'fox23@gmail.com'),(11,'May','Wheather',5,'may78@gmail.com');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_ai_usage`
--

DROP TABLE IF EXISTS `device_ai_usage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device_ai_usage` (
  `device_id` varchar(255) NOT NULL,
  `requests_used` int DEFAULT '0',
  `requests_limit` int DEFAULT '3',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`device_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_ai_usage`
--

LOCK TABLES `device_ai_usage` WRITE;
/*!40000 ALTER TABLE `device_ai_usage` DISABLE KEYS */;
INSERT INTO `device_ai_usage` VALUES ('645537e2-ec00-47e5-85c6-b21caf96e72a',NULL,3,'2026-05-03 03:03:13','2026-05-05 04:18:16'),('8386bfa7-a283-4045-b2a7-0d95d40aebc2',1,3,'2026-05-07 18:50:50','2026-05-07 18:51:09'),('a109b2cc-0261-48de-9469-b49186bc0ebc',NULL,3,'2026-05-03 03:19:13','2026-05-05 04:18:16'),('f604804b-1c48-4e35-a39a-9cfc2185aa24',NULL,3,'2026-05-05 03:58:56','2026-05-05 04:18:16');
/*!40000 ALTER TABLE `device_ai_usage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `email`
--

DROP TABLE IF EXISTS `email`;
/*!50001 DROP VIEW IF EXISTS `email`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `email` AS SELECT 
 1 AS `email`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `employee_id` int DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `hourly_pay` decimal(5,2) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `job` varchar(25) DEFAULT NULL,
  `hire_data` date DEFAULT NULL,
  `supervisor_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Eugene','Krabs',51.00,106080.00,'manager','2023-01-02',NULL),(2,'Squidward','Sea',111.00,230880.00,'cashier','2021-09-25',5),(3,'Deon','Foli',901.00,1874080.00,'cook','1290-11-25',5),(4,'Patrick','Asteck',91.88,191110.40,'cook','1999-09-22',5),(5,'Sandy','Cheeks',91.88,191110.40,'asst. manager','2011-03-13',1);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorites` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `hostel_id` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`hostel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `furnishing`
--

DROP TABLE IF EXISTS `furnishing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `furnishing` (
  `furnishing_id` int NOT NULL AUTO_INCREMENT,
  `hostel_id` varchar(50) DEFAULT NULL,
  `furnishing` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`furnishing_id`),
  UNIQUE KEY `hostel_id` (`hostel_id`,`furnishing`),
  CONSTRAINT `furnishing_ibfk_1` FOREIGN KEY (`hostel_id`) REFERENCES `hostels` (`hostel_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `furnishing`
--

LOCK TABLES `furnishing` WRITE;
/*!40000 ALTER TABLE `furnishing` DISABLE KEYS */;
INSERT INTO `furnishing` VALUES (2,'141c9727-155b-472c-b75e-27715725f27c','Air Condition'),(3,'141c9727-155b-472c-b75e-27715725f27c','Fan'),(7,'141c9727-155b-472c-b75e-27715725f27c','Kitchenette with free gas'),(5,'141c9727-155b-472c-b75e-27715725f27c','Mattress'),(1,'141c9727-155b-472c-b75e-27715725f27c','Single Bed'),(4,'141c9727-155b-472c-b75e-27715725f27c','Study chairs'),(6,'141c9727-155b-472c-b75e-27715725f27c','Wardrobes'),(9,'170ab6f9-9a50-4598-8858-188f59577bf3','Bed'),(11,'170ab6f9-9a50-4598-8858-188f59577bf3','Fan'),(8,'170ab6f9-9a50-4598-8858-188f59577bf3','Mattress'),(10,'170ab6f9-9a50-4598-8858-188f59577bf3','Wardrobes'),(12,'47b10dd3-6ef6-44a3-a00b-5051c14d8c73','Bed'),(15,'47b10dd3-6ef6-44a3-a00b-5051c14d8c73','Fan'),(14,'47b10dd3-6ef6-44a3-a00b-5051c14d8c73','Mattress'),(13,'47b10dd3-6ef6-44a3-a00b-5051c14d8c73','Wardrobe'),(16,'4ff107e9-6493-4d32-ad4f-a50dc864d0a5','Bed'),(18,'4ff107e9-6493-4d32-ad4f-a50dc864d0a5','Fan'),(20,'4ff107e9-6493-4d32-ad4f-a50dc864d0a5','Kitchen'),(17,'4ff107e9-6493-4d32-ad4f-a50dc864d0a5','Mattress'),(19,'4ff107e9-6493-4d32-ad4f-a50dc864d0a5','Nice benches and canopy outside'),(26,'5bf2d87a-dd16-42d9-b7a7-4aecdde9cedd','Bed'),(29,'5bf2d87a-dd16-42d9-b7a7-4aecdde9cedd','Fan'),(27,'5bf2d87a-dd16-42d9-b7a7-4aecdde9cedd','Mattress'),(30,'5bf2d87a-dd16-42d9-b7a7-4aecdde9cedd','Wardrobe'),(31,'7af2a906-6c09-4941-8227-6325aa6ab8c6','Bed'),(33,'7af2a906-6c09-4941-8227-6325aa6ab8c6','Fan'),(32,'7af2a906-6c09-4941-8227-6325aa6ab8c6','Mattress'),(34,'7af2a906-6c09-4941-8227-6325aa6ab8c6','Study chairs'),(35,'d3582f55-470e-49d9-bd94-39dab2ba0cab','Bed'),(37,'d3582f55-470e-49d9-bd94-39dab2ba0cab','Fan'),(36,'d3582f55-470e-49d9-bd94-39dab2ba0cab','Mattress'),(39,'d3582f55-470e-49d9-bd94-39dab2ba0cab','Study chairs'),(38,'d3582f55-470e-49d9-bd94-39dab2ba0cab','Study rooms'),(40,'d3582f55-470e-49d9-bd94-39dab2ba0cab','Study tables'),(41,'db900f38-3480-481d-b20b-66962ea03b7a','Bed'),(44,'db900f38-3480-481d-b20b-66962ea03b7a','Fan'),(45,'db900f38-3480-481d-b20b-66962ea03b7a','Kitchen'),(43,'db900f38-3480-481d-b20b-66962ea03b7a','Mattress'),(50,'ea7ae95e-7dd1-4bb7-acff-4ada2022ed2a','Air Conditioner'),(46,'ea7ae95e-7dd1-4bb7-acff-4ada2022ed2a','Fan'),(49,'ea7ae95e-7dd1-4bb7-acff-4ada2022ed2a','Free Water'),(47,'ea7ae95e-7dd1-4bb7-acff-4ada2022ed2a','Inbuilt Wardrobe'),(48,'ea7ae95e-7dd1-4bb7-acff-4ada2022ed2a','Kitchen');
/*!40000 ALTER TABLE `furnishing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hostels`
--

DROP TABLE IF EXISTS `hostels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hostels` (
  `hostel_id` varchar(50) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `university` varchar(100) DEFAULT NULL,
  `year_established` int DEFAULT NULL,
  `main_image` text,
  `total_reviews` int DEFAULT '0',
  `average_rating` decimal(2,1) DEFAULT '0.0',
  PRIMARY KEY (`hostel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hostels`
--

LOCK TABLES `hostels` WRITE;
/*!40000 ALTER TABLE `hostels` DISABLE KEYS */;
INSERT INTO `hostels` VALUES ('141c9727-155b-472c-b75e-27715725f27c','Htc Towers','Mixed','Example University',2026,'/images/hostel-images/htc_towers.webp',2,4.0),('170ab6f9-9a50-4598-8858-188f59577bf3','Mab3 Hostels','Mixed','Example University',2019,'/images/hostel-images/mab3.png',5,4.0),('47b10dd3-6ef6-44a3-a00b-5051c14d8c73','Blessed Hostel','Mixed','Example University',NULL,'/images/hostel-images/blessed_hostel.png',1,4.0),('4ff107e9-6493-4d32-ad4f-a50dc864d0a5','Campus Annex','Mixed','Example University',NULL,'/images/hostel-images/campus_annex.png',2,4.0),('5bf2d87a-dd16-42d9-b7a7-4aecdde9cedd','Princeps Hostel','Mixed','Example University',2010,'/images/hostel-images/princeps.png',NULL,NULL),('7af2a906-6c09-4941-8227-6325aa6ab8c6','Bendebi Hostel','Mixed','Example University',NULL,'/images/hostel-images/bendebi.png',NULL,NULL),('d3582f55-470e-49d9-bd94-39dab2ba0cab','Makassela','Mixed','Example University',NULL,'/images/hostel-images/makassela.jpeg',NULL,NULL),('db900f38-3480-481d-b20b-66962ea03b7a','New Century Hostel','Mixed','Example University',NULL,'/images/hostel-images/new_century_hostel.jpeg',7,3.0),('ea7ae95e-7dd1-4bb7-acff-4ada2022ed2a','Obrempong Hostel','Mixed','Example University',NULL,'/images/hostel-images/obrempong.webp',NULL,NULL),('ea89beba-18c9-434c-8175-e3fb34581e63','Unity Lodge','Boys','Example University',2012,'/images/hostel-images/hostel_image_2.jpg',2,4.0);
/*!40000 ALTER TABLE `hostels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations` (
  `location_id` int NOT NULL AUTO_INCREMENT,
  `hostel_id` varchar(50) DEFAULT NULL,
  `distance_to_campus_in_minutes` int DEFAULT NULL,
  `directions` text,
  `latitude` decimal(10,6) DEFAULT NULL,
  `longitude` decimal(10,6) DEFAULT NULL,
  PRIMARY KEY (`location_id`),
  KEY `hostel_id` (`hostel_id`),
  CONSTRAINT `locations_ibfk_1` FOREIGN KEY (`hostel_id`) REFERENCES `hostels` (`hostel_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'47b10dd3-6ef6-44a3-a00b-5051c14d8c73',6,'Exit the school through the main gate, turn left and walk straight until you reach a building called AYELE, then turn left immediately, continue straight, and at the first junction on your right, turn right — the hostel will be on your right‑hand side.',5.660260,-0.162966),(2,'ea89beba-18c9-434c-8175-e3fb34581e63',8,'Near the East Campus library, turn right at the junction',6.673200,-1.565400),(3,'ea7ae95e-7dd1-4bb7-acff-4ada2022ed2a',8,'Exit the school from the main gate and turn left, turn right on the Ayele building stretch \n    Move straight and turn right on the fourth junction you see, at the end of the junction turn right and \n    look to your left, the green building with nice cultural desi',5.656466,-0.164754),(4,'4ff107e9-6493-4d32-ad4f-a50dc864d0a5',3,'Exit the school through the back gate, turn right and walk along the tarred road; on your left you’ll see a large orange building, and that’s the hostel.',5.662382,-0.164289),(5,'d3582f55-470e-49d9-bd94-39dab2ba0cab',9,'Exit the school from the main gate and turn left, turn right on the Ayele building stretch  \nMove straight and turn right on the fourth junction you see, at the end of the junction turn right and look \nto your left, there is an orange building that’s the hostel. ',5.659854,-0.164810),(6,'170ab6f9-9a50-4598-8858-188f59577bf3',6,'From the school’s main gate, turn left and walk a short distance. On your left, you’ll see a large orange building.',5.659826,-0.162482),(8,'7af2a906-6c09-4941-8227-6325aa6ab8c6',4,'After exiting the school through the main gate, turn left; you’ll see a building called Ayele, and the hostel is directly opposite it.',5.659326,-0.163330),(9,'db900f38-3480-481d-b20b-66962ea03b7a',11,'Exit the school through the front gate, walk straight until you reach the building with “AYELE” on top, then take the junction on the left just before this building, continue straight, and you’ll find a grey building on your right — that’s the hostel.',5.661230,-0.164098),(10,'141c9727-155b-472c-b75e-27715725f27c',3,'Exit the school through the back gate, follow the road toward Madina, and turn at the third junction on your right. The hostel will be on your right-hand side.',5.665233,-0.164116),(11,'5bf2d87a-dd16-42d9-b7a7-4aecdde9cedd',11,'Exit the school through the main gate, turn left and walk straight until you see a building with “AYELE” on top on the right side of the road; turn left immediately at this building, continue straight, and the hostel will be on your left.',5.661029,-0.164318);
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `media_id` int NOT NULL AUTO_INCREMENT,
  `hostel_id` varchar(50) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`media_id`),
  KEY `hostel_id` (`hostel_id`),
  CONSTRAINT `media_ibfk_1` FOREIGN KEY (`hostel_id`) REFERENCES `hostels` (`hostel_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,'47b10dd3-6ef6-44a3-a00b-5051c14d8c73','/images/hostel_rooms/hostel_room_1.jpeg','compound'),(2,'47b10dd3-6ef6-44a3-a00b-5051c14d8c73','/images/hostel_rooms/hostel_room_2.webp','room'),(3,'47b10dd3-6ef6-44a3-a00b-5051c14d8c73','/images/hostel_rooms/hostel_room_3.jpg','kitchen'),(4,'47b10dd3-6ef6-44a3-a00b-5051c14d8c73','/images/hostel_rooms/hostel_room_4.webp','bathroom'),(5,'ea89beba-18c9-434c-8175-e3fb34581e63','/images/hostel_rooms/hostel_room_5.jpg','compund'),(6,'ea89beba-18c9-434c-8175-e3fb34581e63','/images/hostel_rooms/hostel_room_5.jpg','room'),(7,'ea89beba-18c9-434c-8175-e3fb34581e63','/images/hostel_kitchen_Images/hostel_kitchen_2.jpg','kitchen'),(8,'ea89beba-18c9-434c-8175-e3fb34581e63','/images/hostel_bathrooms_images/hostel_bathroom_2.jpg','bathroom'),(9,'ea7ae95e-7dd1-4bb7-acff-4ada2022ed2a','/images/hostel_rooms/hostel_room_6.jpg','compund'),(10,'ea7ae95e-7dd1-4bb7-acff-4ada2022ed2a','/images/hostel_rooms/hostel_room_6.jpg','room'),(11,'ea7ae95e-7dd1-4bb7-acff-4ada2022ed2a','/images/hostel_kitchen_Images/hostel_kitchen_3.jpg','kitchen'),(12,'ea7ae95e-7dd1-4bb7-acff-4ada2022ed2a','/images/hostel_bathrooms_images/hostel_bathroom_3.jpg','bathroom'),(13,'4ff107e9-6493-4d32-ad4f-a50dc864d0a5','/images/hostel_rooms/hostel_room_7.jpg','compund'),(14,'4ff107e9-6493-4d32-ad4f-a50dc864d0a5','/images/hostel_rooms/hostel_room_7.jpg','room'),(15,'4ff107e9-6493-4d32-ad4f-a50dc864d0a5','/images/hostel_kitchen_Images/hostel_kitchen_4.jpg','kitchen'),(16,'4ff107e9-6493-4d32-ad4f-a50dc864d0a5','/images/hostel_bathrooms_images/hostel_bathroom_4.jpg','bathroom'),(17,'d3582f55-470e-49d9-bd94-39dab2ba0cab','/images/hostel_rooms/hostel_room_8.jpg','compund'),(18,'d3582f55-470e-49d9-bd94-39dab2ba0cab','/images/hostel_rooms/hostel_room_8.jpg','room'),(19,'d3582f55-470e-49d9-bd94-39dab2ba0cab','/images/hostel_kitchen_Images/hostel_kitchen_5.jpg','kitchen'),(20,'d3582f55-470e-49d9-bd94-39dab2ba0cab','/images/hostel_bathrooms_images/hostel_bathroom_5.jpg','bathroom'),(21,'170ab6f9-9a50-4598-8858-188f59577bf3','/images/hostel_rooms/hostel_room_9.jpg','compund'),(22,'170ab6f9-9a50-4598-8858-188f59577bf3','/images/hostel_rooms/hostel_room_9.jpg','room'),(23,'170ab6f9-9a50-4598-8858-188f59577bf3','/images/hostel_kitchen_Images/hostel_kitchen_6.jpg','kitchen'),(24,'170ab6f9-9a50-4598-8858-188f59577bf3','/images/hostel_bathrooms_images/hostel_bathroom_6.jpg','bathroom'),(25,'7af2a906-6c09-4941-8227-6325aa6ab8c6','/images/hostel_rooms/hostel_room_10.jpg','compund'),(26,'7af2a906-6c09-4941-8227-6325aa6ab8c6','/images/hostel_rooms/hostel_room_10.jpg','room'),(27,'7af2a906-6c09-4941-8227-6325aa6ab8c6','/images/hostel_kitchen_Images/hostel_kitchen_7.jpg','kitchen'),(28,'7af2a906-6c09-4941-8227-6325aa6ab8c6','/images/hostel_bathrooms_images/hostel_bathroom_7.jpg','bathroom'),(33,'db900f38-3480-481d-b20b-66962ea03b7a','/images/hostel_rooms/hostel_room_11.jpg','compund'),(34,'db900f38-3480-481d-b20b-66962ea03b7a','/images/hostel_rooms/hostel_room_11.jpg','room'),(35,'db900f38-3480-481d-b20b-66962ea03b7a','/images/hostel_kitchen_Images/hostel_kitchen_8.jpg','kitchen'),(36,'db900f38-3480-481d-b20b-66962ea03b7a','/images/hostel_bathrooms_images/hostel_bathroom_8.jpg','bathroom'),(37,'141c9727-155b-472c-b75e-27715725f27c','/images/hostel_rooms/hostel_room_12.jpg','compund'),(38,'141c9727-155b-472c-b75e-27715725f27c','/images/hostel_rooms/hostel_room_12.jpg','room'),(39,'141c9727-155b-472c-b75e-27715725f27c','/images/hostel_kitchen_Images/hostel_kitchen_9.jpg','kitchen'),(40,'141c9727-155b-472c-b75e-27715725f27c','/images/hostel_bathrooms_images/hostel_bathroom_9.jpg','bathroom'),(41,'5bf2d87a-dd16-42d9-b7a7-4aecdde9cedd','/images/hostel_rooms/hostel_room_13.jpg','compund'),(42,'5bf2d87a-dd16-42d9-b7a7-4aecdde9cedd','/images/hostel_rooms/hostel_room_13.jpg','room'),(43,'5bf2d87a-dd16-42d9-b7a7-4aecdde9cedd','/images/hostel_kitchen_Images/hostel_kitchen_10.jpg','kitchen'),(44,'5bf2d87a-dd16-42d9-b7a7-4aecdde9cedd','/images/hostel_bathrooms_images/hostel_bathroom_10.jpg','bathroom');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pricing`
--

DROP TABLE IF EXISTS `pricing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pricing` (
  `pricing_id` int NOT NULL AUTO_INCREMENT,
  `hostel_id` varchar(50) NOT NULL,
  `price_min` int DEFAULT NULL,
  `price_max` int DEFAULT NULL,
  `billing_period` varchar(50) DEFAULT NULL,
  `installment_allowed` tinyint(1) DEFAULT NULL,
  `utilities_fee` int DEFAULT NULL,
  `maintenance_fee` int DEFAULT NULL,
  `caution_deposit` int DEFAULT NULL,
  `refund_policy` text,
  PRIMARY KEY (`pricing_id`),
  UNIQUE KEY `hostel_id` (`hostel_id`),
  CONSTRAINT `pricing_ibfk_1` FOREIGN KEY (`hostel_id`) REFERENCES `hostels` (`hostel_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pricing`
--

LOCK TABLES `pricing` WRITE;
/*!40000 ALTER TABLE `pricing` DISABLE KEYS */;
INSERT INTO `pricing` VALUES (1,'47b10dd3-6ef6-44a3-a00b-5051c14d8c73',2000,2000,'Per Semester',1,0,0,100,'No Refund'),(2,'ea89beba-18c9-434c-8175-e3fb34581e63',1000,1600,'Semester',1,1500,800,2500,'Partial refund within first month'),(3,'ea7ae95e-7dd1-4bb7-acff-4ada2022ed2a',5500,15000,'Per Semester',0,0,0,0,'No refunds'),(4,'4ff107e9-6493-4d32-ad4f-a50dc864d0a5',3000,5000,'Per Semester',0,0,0,0,'No refunds'),(5,'d3582f55-470e-49d9-bd94-39dab2ba0cab',4000,5000,'Per Semester',0,0,0,0,'No refunds'),(6,'170ab6f9-9a50-4598-8858-188f59577bf3',2500,4000,'Per Semester',0,0,0,0,'Refund for incoming freshers'),(7,'7af2a906-6c09-4941-8227-6325aa6ab8c6',4400,5400,'Per Semester',0,0,0,0,'No refunds'),(8,'db900f38-3480-481d-b20b-66962ea03b7a',2700,2700,'Per Semester',0,0,0,0,'No refunds'),(9,'141c9727-155b-472c-b75e-27715725f27c',3700,12000,'Per Semester',0,0,0,500,'No Refunds'),(10,'5bf2d87a-dd16-42d9-b7a7-4aecdde9cedd',2700,3000,'Per Semester',1,0,100,0,'No Refunds');
/*!40000 ALTER TABLE `pricing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int DEFAULT NULL,
  `product_name` varchar(25) DEFAULT NULL,
  `price` decimal(4,2) NOT NULL DEFAULT '0.00',
  UNIQUE KEY `product_name` (`product_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (100,'hamburger',3.99),(101,'fries',1.89),(102,'soda',1.00),(103,'Ice Cream',1.49),(105,'Straw',0.00),(106,'napkin',0.00),(107,'fork',0.00),(108,'spoon',0.00);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `review_id` int NOT NULL AUTO_INCREMENT,
  `hostel_id` varchar(50) DEFAULT NULL,
  `rating` int NOT NULL,
  `review_text` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`review_id`),
  KEY `hostel_id` (`hostel_id`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`hostel_id`) REFERENCES `hostels` (`hostel_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `reviews_chk_1` CHECK ((`rating` between 1 and 5))
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,'4ff107e9-6493-4d32-ad4f-a50dc864d0a5',4,'Cool hostel bro.','2026-05-03 04:08:43',5),(2,'db900f38-3480-481d-b20b-66962ea03b7a',1,'Very bad hostel','2026-05-03 04:11:10',5),(3,'db900f38-3480-481d-b20b-66962ea03b7a',4,'Very great hostel.','2026-05-04 00:35:36',5),(4,'db900f38-3480-481d-b20b-66962ea03b7a',3,'Cant even begon to explain how nice the hostel is.','2026-05-04 00:35:56',5),(5,'db900f38-3480-481d-b20b-66962ea03b7a',1,'Very bad hostel, to far from the school','2026-05-04 00:36:11',5),(6,'db900f38-3480-481d-b20b-66962ea03b7a',5,'Just perfect','2026-05-04 00:36:19',5),(7,'db900f38-3480-481d-b20b-66962ea03b7a',3,'Very nice hostel','2026-05-04 00:37:07',5),(8,'db900f38-3480-481d-b20b-66962ea03b7a',4,'Perfect hostel','2026-05-05 04:19:11',6),(9,'4ff107e9-6493-4d32-ad4f-a50dc864d0a5',4,'Cool hostel yo','2026-05-07 02:51:36',5),(10,'ea89beba-18c9-434c-8175-e3fb34581e63',4,'Cool hostel yo','2026-05-07 02:54:49',5),(11,'ea89beba-18c9-434c-8175-e3fb34581e63',4,'Cool hostel bro','2026-05-07 02:55:29',5);
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `room_id` int NOT NULL AUTO_INCREMENT,
  `hostel_id` varchar(50) NOT NULL,
  `room_type` varchar(50) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `available_rooms` int DEFAULT NULL,
  PRIMARY KEY (`room_id`),
  KEY `hostel_id` (`hostel_id`),
  CONSTRAINT `rooms_ibfk_1` FOREIGN KEY (`hostel_id`) REFERENCES `hostels` (`hostel_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (1,'141c9727-155b-472c-b75e-27715725f27c','1 in 1',12000,NULL),(2,'141c9727-155b-472c-b75e-27715725f27c','2 in 1',5900,NULL),(3,'141c9727-155b-472c-b75e-27715725f27c','3 in 1',4900,NULL),(4,'141c9727-155b-472c-b75e-27715725f27c','4 in 1',3700,NULL),(5,'170ab6f9-9a50-4598-8858-188f59577bf3','2 in 1',4000,NULL),(6,'170ab6f9-9a50-4598-8858-188f59577bf3','4 in 1',3000,NULL),(7,'47b10dd3-6ef6-44a3-a00b-5051c14d8c73','3 in 1',2000,NULL),(8,'4ff107e9-6493-4d32-ad4f-a50dc864d0a5','8 in 1',3000,NULL),(9,'4ff107e9-6493-4d32-ad4f-a50dc864d0a5','6 in 1',3000,NULL),(10,'4ff107e9-6493-4d32-ad4f-a50dc864d0a5','4 in 1',3500,NULL),(11,'4ff107e9-6493-4d32-ad4f-a50dc864d0a5','4 in 1',4000,NULL),(12,'4ff107e9-6493-4d32-ad4f-a50dc864d0a5','2 in 1',3000,NULL),(13,'5bf2d87a-dd16-42d9-b7a7-4aecdde9cedd','2 in 1',3000,NULL),(14,'5bf2d87a-dd16-42d9-b7a7-4aecdde9cedd','4 in 1',2700,NULL),(15,'7af2a906-6c09-4941-8227-6325aa6ab8c6','2 in 1',5400,NULL),(16,'7af2a906-6c09-4941-8227-6325aa6ab8c6','4 in 1',4400,NULL),(17,'d3582f55-470e-49d9-bd94-39dab2ba0cab','2 in 1',5000,NULL),(18,'d3582f55-470e-49d9-bd94-39dab2ba0cab','3 in 1',4000,NULL),(19,'d3582f55-470e-49d9-bd94-39dab2ba0cab','4 in 1',4000,NULL),(20,'ea7ae95e-7dd1-4bb7-acff-4ada2022ed2a','2 in 1',8000,NULL),(21,'ea7ae95e-7dd1-4bb7-acff-4ada2022ed2a','3 in 1',6500,NULL),(22,'ea7ae95e-7dd1-4bb7-acff-4ada2022ed2a','4 in 1',5500,NULL),(23,'ea7ae95e-7dd1-4bb7-acff-4ada2022ed2a','1 in 1',15000,NULL);
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rules`
--

DROP TABLE IF EXISTS `rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rules` (
  `rules_id` int NOT NULL AUTO_INCREMENT,
  `hostel_id` varchar(50) DEFAULT NULL,
  `rule` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rules_id`),
  UNIQUE KEY `hostel_id` (`hostel_id`,`rule`),
  CONSTRAINT `rules_ibfk_1` FOREIGN KEY (`hostel_id`) REFERENCES `hostels` (`hostel_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rules`
--

LOCK TABLES `rules` WRITE;
/*!40000 ALTER TABLE `rules` DISABLE KEYS */;
INSERT INTO `rules` VALUES (5,'141c9727-155b-472c-b75e-27715725f27c','Leave key a checkpoint'),(6,'141c9727-155b-472c-b75e-27715725f27c','Maintain your room'),(7,'141c9727-155b-472c-b75e-27715725f27c','No loud music, unless approved'),(9,'141c9727-155b-472c-b75e-27715725f27c','No perching'),(11,'141c9727-155b-472c-b75e-27715725f27c','No permanent fixes, removables only'),(8,'141c9727-155b-472c-b75e-27715725f27c','No pets'),(4,'141c9727-155b-472c-b75e-27715725f27c','No smoking, drinking, weapons'),(12,'141c9727-155b-472c-b75e-27715725f27c','No sub letting'),(1,'141c9727-155b-472c-b75e-27715725f27c','No Tailgating'),(2,'141c9727-155b-472c-b75e-27715725f27c','Sign all friends'),(3,'141c9727-155b-472c-b75e-27715725f27c','Visiting 6am to 10pm'),(16,'170ab6f9-9a50-4598-8858-188f59577bf3','Gate opens strictly at 4: 30am and closes at 2 am'),(17,'170ab6f9-9a50-4598-8858-188f59577bf3','No Fighting'),(13,'170ab6f9-9a50-4598-8858-188f59577bf3','No Refunds'),(14,'170ab6f9-9a50-4598-8858-188f59577bf3','No Smoking'),(15,'170ab6f9-9a50-4598-8858-188f59577bf3','Report any issue to the management before you take any action'),(20,'47b10dd3-6ef6-44a3-a00b-5051c14d8c73','Discipline Towards other roommates and hostel management'),(23,'47b10dd3-6ef6-44a3-a00b-5051c14d8c73','No fighting'),(21,'47b10dd3-6ef6-44a3-a00b-5051c14d8c73','No harassment'),(24,'47b10dd3-6ef6-44a3-a00b-5051c14d8c73','No loud noises'),(22,'47b10dd3-6ef6-44a3-a00b-5051c14d8c73','No noise'),(19,'47b10dd3-6ef6-44a3-a00b-5051c14d8c73','No Perching'),(28,'4ff107e9-6493-4d32-ad4f-a50dc864d0a5','Door closes at 12am'),(27,'4ff107e9-6493-4d32-ad4f-a50dc864d0a5','No fighting'),(25,'4ff107e9-6493-4d32-ad4f-a50dc864d0a5','No perching'),(26,'4ff107e9-6493-4d32-ad4f-a50dc864d0a5','No smoking'),(29,'4ff107e9-6493-4d32-ad4f-a50dc864d0a5','Only hot stoves'),(37,'5bf2d87a-dd16-42d9-b7a7-4aecdde9cedd','No Amorous activities in the hostel rooms'),(36,'5bf2d87a-dd16-42d9-b7a7-4aecdde9cedd','No damage to hostel Property'),(32,'5bf2d87a-dd16-42d9-b7a7-4aecdde9cedd','No Electric Stove'),(34,'5bf2d87a-dd16-42d9-b7a7-4aecdde9cedd','No Fighting'),(35,'5bf2d87a-dd16-42d9-b7a7-4aecdde9cedd','No loud Noises or Music'),(31,'5bf2d87a-dd16-42d9-b7a7-4aecdde9cedd','No Perching'),(39,'5bf2d87a-dd16-42d9-b7a7-4aecdde9cedd','No pets'),(33,'5bf2d87a-dd16-42d9-b7a7-4aecdde9cedd','No Smoking'),(38,'5bf2d87a-dd16-42d9-b7a7-4aecdde9cedd','No washing of clothes in the hostel bathroom, this should be done outside '),(43,'7af2a906-6c09-4941-8227-6325aa6ab8c6','Gate closes at 12pm'),(42,'7af2a906-6c09-4941-8227-6325aa6ab8c6','No Fighting'),(40,'7af2a906-6c09-4941-8227-6325aa6ab8c6','No Perching'),(44,'7af2a906-6c09-4941-8227-6325aa6ab8c6','No pets'),(41,'7af2a906-6c09-4941-8227-6325aa6ab8c6','No Smoking'),(48,'d3582f55-470e-49d9-bd94-39dab2ba0cab','Door closes at 12am'),(49,'d3582f55-470e-49d9-bd94-39dab2ba0cab','Keep rooms clean'),(47,'d3582f55-470e-49d9-bd94-39dab2ba0cab','No Fighting'),(45,'d3582f55-470e-49d9-bd94-39dab2ba0cab','No perching'),(46,'d3582f55-470e-49d9-bd94-39dab2ba0cab','No Smoking'),(52,'d3582f55-470e-49d9-bd94-39dab2ba0cab','Respect hostel staff and tenants'),(50,'d3582f55-470e-49d9-bd94-39dab2ba0cab','Use hostel facilities wisely'),(56,'db900f38-3480-481d-b20b-66962ea03b7a','Door closes at 12am'),(57,'db900f38-3480-481d-b20b-66962ea03b7a','Gas only, No hot stove\'s'),(55,'db900f38-3480-481d-b20b-66962ea03b7a','No Fighting'),(53,'db900f38-3480-481d-b20b-66962ea03b7a','No Perching'),(54,'db900f38-3480-481d-b20b-66962ea03b7a','No Smoking'),(64,'ea7ae95e-7dd1-4bb7-acff-4ada2022ed2a','Keep your room clean always'),(58,'ea7ae95e-7dd1-4bb7-acff-4ada2022ed2a','No loud music, unless approved'),(59,'ea7ae95e-7dd1-4bb7-acff-4ada2022ed2a','No perching'),(62,'ea7ae95e-7dd1-4bb7-acff-4ada2022ed2a','No smoking, drinking, weapons'),(60,'ea7ae95e-7dd1-4bb7-acff-4ada2022ed2a','No sub letting'),(61,'ea7ae95e-7dd1-4bb7-acff-4ada2022ed2a','No Tailgating'),(63,'ea7ae95e-7dd1-4bb7-acff-4ada2022ed2a','Respect all tenants and employees');
/*!40000 ALTER TABLE `rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `transaction_id` int NOT NULL AUTO_INCREMENT,
  `amount` decimal(5,2) DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  KEY `fk_customer_id` (`customer_id`),
  CONSTRAINT `fk_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1008 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1000,4.99,3,'2023-01-01'),(1001,2.89,2,'2023-01-01'),(1002,3.38,3,'2023-01-02'),(1003,4.99,1,'2023-01-02'),(1004,1.00,NULL,'2023-01-03'),(1006,6.00,8,'2023-01-03'),(1007,6.00,NULL,'2023-01-03');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (5,'Paul Foli','paul123@gmailcom','$2b$10$YayPXyYtCkHjhesrD5NGF..3oRfHeWnDEFg7vP0fz6gQ.n8pIz02m','2026-05-03 03:01:03'),(6,'Felix Attah','felix123@gmail.comeef','$2b$10$vKaZtrKmF8tEZ37to3ebau640XdTEPPS/aX.DNzrez227PFa9nfk6','2026-05-04 02:25:53'),(7,'John','john123@gmaol.com','$2b$10$H2vrfiW6GZLZ1xw1uNePqOYPp6hmkGuY0Vk840OhDm4hixUD8jQ0e','2026-05-04 02:39:39'),(8,'Attah ','john123@mgdf.com','$2b$10$7Zu6O5ZMIXGFqkNAlNUip.B4EvCi56Tgkl3HmZ6KhxtfiPQd3MA9u','2026-05-04 02:44:52'),(9,'12345','king@gmaolmmc.com','$2b$10$VfjN4Jc64lEraQC6tC6zm.6V8x208uwS62lRD3dlEy703WRTw1aRK','2026-05-04 02:46:55');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `customer_email`
--

/*!50001 DROP VIEW IF EXISTS `customer_email`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customer_email` AS select `customers`.`email` AS `email` from `customers` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `email`
--

/*!50001 DROP VIEW IF EXISTS `email`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `email` AS select `customers`.`email` AS `email` from `customers` */;
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

-- Dump completed on 2026-05-11 19:00:14
