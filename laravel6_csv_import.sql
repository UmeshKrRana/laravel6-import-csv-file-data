-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: laravel6_csv_import
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads`
--

DROP TABLE IF EXISTS `leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leads` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternate_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `requirement` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads`
--

LOCK TABLES `leads` WRITE;
/*!40000 ALTER TABLE `leads` DISABLE KEYS */;
INSERT INTO `leads` VALUES (1,'Sravani','Malla','Sravani Malla','nofad46645@mailezee.com','9999999999','','','','Residential Interior Design','2020-03-08 16:24:18','2020-03-08 16:28:26'),(2,'Leenika','Khattar','Leenika Khattar','leenika.khattar24@gmail.com','9999999999','','','','Residential Interior Design','2020-03-08 16:27:55','2020-03-08 16:28:31'),(3,'Sumit','Katyal','Sumit Katyal','skkatyal86@gmail.com','9999999999','','','','Residential Interior Design','2020-03-08 16:27:56','2020-03-08 16:28:31'),(4,'Sanjna','Ghosh','Sanjna Ghosh','sanjna.ghosh07@gmail.com','9999999999','','','','Residential Interior Design','2020-03-08 16:27:56','2020-03-08 16:28:31'),(5,'Gunika','Tyagi','Gunika Tyagi Gunnu','tyagishelly@yahoo.co.in','9999999999','','','','Residential Interior Design','2020-03-08 16:27:56','2020-03-08 16:28:32'),(6,'Vinay','Kumar','Vinay Kumar Maripelly','maripellyvinaykumar@gmail.com','9999999999','','','','Residential Interior Design','2020-03-08 16:27:56','2020-03-08 16:28:32'),(7,'Suchishmita','Ghosh','Suchishmita Ghosh','suchishmita@gmail.com','9999999999','','','','Residential Interior Design','2020-03-08 16:27:56','2020-03-08 16:28:32'),(8,'Mohit','Gupta','Mohit Gupta','mohit.nd@gmail.com','9999999999','','','','Residential Interior Design','2020-03-08 16:27:56','2020-03-08 16:28:32'),(9,'Priya','Vijayan','Priya Vijayan','priyavijayan87@gmail.com','9999999999','','','','Residential Interior Design','2020-03-08 16:27:56','2020-03-08 16:28:32'),(10,'Achintya','Chandra','Achintya Chandra','achintya_chandra@rediffmail.com','9999999999','','','','Residential Interior Design','2020-03-08 16:27:56','2020-03-08 16:28:32'),(11,'Kpurushotham','Reddy','Kpurushotham Reddy','kpurushotham984@gmail.com','9999999999','','','','Residential Interior Design','2020-03-08 16:27:57','2020-03-08 16:28:33'),(12,'Abhinav','Kumar','Abhinav Kumar','abhi.cse62@gmail.com','9999999999','','','','Residential Interior Design','2020-03-08 16:27:57','2020-03-08 16:28:33'),(13,'Ranpreet','singh','Ranpreet singh Bhatia','shankey3003@gmail.com','9999999999','','','','Residential Interior Design','2020-03-08 16:27:57','2020-03-08 16:28:33'),(14,'Vikas','Kumar','Vikas Kumar Dewangan','vikas_dewangan@hotmail.com','9999999999','','','','Residential Interior Design','2020-03-08 16:27:57','2020-03-08 16:28:33'),(15,'Nripen','Vishnoi','Nripen Vishnoi','nripen137@rediffmail.com','9999999999','','','','Residential Interior Design','2020-03-08 16:27:57','2020-03-08 16:28:33'),(16,'Shivangi','Tiwari','Shivangi Tiwari','shivangitiwari05@yahoo.com','9999999999','','','','Residential Interior Design','2020-03-08 16:27:57','2020-03-08 16:28:33'),(17,'Ritu','bagga','Ritu bagga','ritubags@gmail.com','9999999999','','','','Residential Interior Design','2020-03-08 16:27:57','2020-03-08 16:28:34'),(18,'Princy','Sharma','Princy Sharma','princysharma3990@gmail.com','9999999999','','','','Residential Interior Design','2020-03-08 16:27:57','2020-03-08 16:28:34'),(19,'Priya','Keshav','Priya Keshav','pria.nmi@gmail.com','9999999999','','','','Residential Interior Design','2020-03-08 16:27:57','2020-03-08 16:28:34'),(20,'Sunil','Prasad','Sunil Prasad','sunilprasad85@gmail.com','9999999999','','','','Residential Interior Design','2020-03-08 16:27:57','2020-03-08 16:28:34'),(21,'Naynish','Adhav','Naynish Adhav','dr.naynish@gmail.com','9999999999','','','','Residential Interior Design','2020-03-08 16:27:58','2020-03-08 16:28:34'),(22,'Neha','Adhav','Neha','nssingh.neha2010@gmail.com','9999999999','','','','Residential Interior Design','2020-03-08 16:27:58','2020-03-08 16:28:29'),(23,'farish','puthiyarakkal','farish puthiyarakkal','farifaisu@gmail.com','9999999999','','','','Residential Interior Design','2020-03-08 16:27:58','2020-03-08 16:28:29'),(24,'arman','puthiyarakkal','arman','armanmtr@gmail.com','9999999999','','','','Residential Interior Design','2020-03-08 16:27:58','2020-03-08 16:28:29'),(25,'Ankit','Mishra','Ankit Mishra','ankit.ankitmishra.mishra89@gmail.com','9999999999','','','','Residential Interior Design','2020-03-08 16:27:58','2020-03-08 16:28:29'),(26,'Subbu','Thenu','Subbu Thenu','subbuthenu1990@gmail.com','9999999999','','','','Residential Interior Design','2020-03-08 16:27:58','2020-03-08 16:28:30'),(27,'Vaibhav','Goel','Vaibhav Goel','vaibhavgoel117@gmail.com','9999999999','','','','Residential Interior Design','2020-03-08 16:27:58','2020-03-08 16:28:30'),(28,'Akash','Sharma','Akash Sharma','sharmaa.k1991@gmail.com','9999999999','','','','Residential Interior Design','2020-03-08 16:27:58','2020-03-08 16:28:30'),(29,'Akhlaq','Khan','Akhlaq Khan','akhlaqkhan5376@gmail.com','9999999999','','','','Residential Interior Design','2020-03-08 16:27:58','2020-03-08 16:28:30'),(30,'Shaik','Nawaz','Shaik Nawaz','shaiknawaz303@gmail.com','9999999999','','','','Residential Interior Design','2020-03-08 16:27:59','2020-03-08 16:28:30'),(31,'uday','Nawaz','uday','udaybattu15@gmail.com','9999999999','','','','Residential Interior Design','2020-03-08 16:27:59','2020-03-08 16:28:30'),(32,'kapil','Chawala','kapil Chawala','k.chawala86@gmail.com','9999999999','','','','Residential Interior Design','2020-03-08 16:27:59','2020-03-08 16:28:30'),(33,'Rahul','Chawala','Rahul','Rahuld16050@gmail.com','9999999999','','','','Residential Interior Design','2020-03-08 16:27:59','2020-03-08 16:28:30'),(34,'Joshna','Shetty','Joshna Shetty','infojochef@gmail.com','9999999999','','','','Residential Interior Design','2020-03-08 16:27:59','2020-03-08 16:28:30'),(35,'Anitha','venkatesh','Anitha venkatesh','anu.nphy@gmail.com','9999999999','','','','Residential Interior Design','2020-03-08 16:27:59','2020-03-08 16:28:31'),(36,'Santanu','Barman','Santanu Barman','Santanu_barman@yahoo.in','9999999999','','','','Residential Interior Design','2020-03-08 16:27:59','2020-03-08 16:28:31'),(37,'Swati','Jewrajka','Swati Jewrajka','swati.jewrajka@gmail.com','9999999999','','','','Residential Interior Design','2020-03-08 16:27:59','2020-03-08 16:28:31'),(38,'Sravani','Malla','Sravani Malla','sweetsravani.malla@gmail.com','9999999999','','','','Residential Interior Design','2020-03-08 16:27:59','2020-03-08 16:28:31'),(39,'Rohan','Arvind','Rohan Arvind','rohan3arvind@gmail.com','9999999999','','','','Residential Interior Design','2020-03-08 16:28:02','2020-03-08 16:28:34'),(40,'Aruna','Zakkam','Aruna Zakkam','aruna.zakkam@gmail.com','9999999999','','','','Residential Interior Design','2020-03-08 16:28:02','2020-03-08 16:28:34'),(41,'Spandana','Bodapati','Spandana Bodapati','spandana1985@gmail.com','9999999999','','','','Residential Interior Design','2020-03-08 16:28:03','2020-03-08 16:28:35'),(42,'Manas','Ranjan','Manas Ranjan Sahu','manas.sahu180192@gmail.com','9999999999','','','','Residential Interior Design','2020-03-08 16:28:03','2020-03-08 16:28:35'),(43,'Sujoy','Neogi','Sujoy Neogi','sujoyneogi86@gmail.com','9999999999','','','','Residential Interior Design','2020-03-08 16:28:03','2020-03-08 16:28:35'),(44,'Nidhi','Mittal','Nidhi Mittal','nidhimitt@gmail.com','9999999999','','','','Residential Interior Design','2020-03-08 16:28:03','2020-03-08 16:28:35'),(45,'Meena','Addagatla','Meena Addagatla','meena.vsv@gmail.com','9999999999','','','','Residential Interior Design','2020-03-08 16:28:03','2020-03-08 16:28:35');
/*!40000 ALTER TABLE `leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (13,'2014_10_12_000000_create_users_table',1),(14,'2014_10_12_100000_create_password_resets_table',1),(15,'2019_08_19_000000_create_failed_jobs_table',1),(16,'2020_03_01_202349_create_leads_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2020-03-09 12:38:46
