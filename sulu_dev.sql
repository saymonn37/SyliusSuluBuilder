-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: sulu_dev
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

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
-- Table structure for table `ac_activities`
--

DROP TABLE IF EXISTS `ac_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ac_activities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` json NOT NULL,
  `timestamp` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `batch` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` json DEFAULT NULL,
  `resourceKey` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `resourceId` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `resourceLocale` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resourceWebspaceKey` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resourceTitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resourceTitleLocale` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resourceSecurityContext` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resourceSecurityObjectType` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resourceSecurityObjectId` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_3EE015D064B64DCC` (`userId`),
  KEY `timestamp_idx` (`timestamp`),
  KEY `resourceKey_idx` (`resourceKey`),
  KEY `resourceId_idx` (`resourceId`),
  KEY `resourceSecurityContext_idx` (`resourceSecurityContext`),
  KEY `resourceSecurityObjectType_idx` (`resourceSecurityObjectType`),
  KEY `resourceSecurityObjectId_idx` (`resourceSecurityObjectId`),
  CONSTRAINT `FK_3EE015D064B64DCC` FOREIGN KEY (`userId`) REFERENCES `se_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ac_activities`
--

LOCK TABLES `ac_activities` WRITE;
/*!40000 ALTER TABLE `ac_activities` DISABLE KEYS */;
INSERT INTO `ac_activities` VALUES (1,'created','[]','2024-03-05 11:52:26','65e6f96a3f7472.22182449',NULL,'pages','809287bd-dd6e-4eec-8d25-6cc08489078e','en','example','Homepage','en','sulu.webspaces.example','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','809287bd-dd6e-4eec-8d25-6cc08489078e',NULL),(2,'published','[]','2024-03-05 11:52:26','65e6f96a3f7472.22182449',NULL,'pages','809287bd-dd6e-4eec-8d25-6cc08489078e','en','example','Homepage','en','sulu.webspaces.example','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','809287bd-dd6e-4eec-8d25-6cc08489078e',NULL),(3,'created','[]','2024-03-05 11:52:26','65e6f96af01013.53076814',NULL,'collections','1','en',NULL,'System','en','sulu.media.collections','Sulu\\Bundle\\MediaBundle\\Entity\\Collection','1',NULL),(4,'created','[]','2024-03-05 11:52:26','65e6f96b0020f6.14692154',NULL,'collections','2','en',NULL,'Sulu media','en','sulu.media.collections','Sulu\\Bundle\\MediaBundle\\Entity\\Collection','2',NULL),(5,'translation_added','[]','2024-03-05 11:52:27','65e6f96b05d199.61893947',NULL,'collections','2','de',NULL,'Sulu Medien','de','sulu.media.collections','Sulu\\Bundle\\MediaBundle\\Entity\\Collection','2',NULL),(6,'created','[]','2024-03-05 11:52:27','65e6f96b0acca4.99193153',NULL,'collections','3','en',NULL,'Preview images','en','sulu.media.collections','Sulu\\Bundle\\MediaBundle\\Entity\\Collection','3',NULL),(7,'translation_added','[]','2024-03-05 11:52:27','65e6f96b1196e7.52847920',NULL,'collections','3','de',NULL,'Vorschaubilder','de','sulu.media.collections','Sulu\\Bundle\\MediaBundle\\Entity\\Collection','3',NULL),(8,'created','[]','2024-03-05 11:52:27','65e6f96b152d98.81676033',NULL,'collections','4','en',NULL,'Sulu contacts','en','sulu.media.collections','Sulu\\Bundle\\MediaBundle\\Entity\\Collection','4',NULL),(9,'translation_added','[]','2024-03-05 11:52:27','65e6f96b1b4496.46030114',NULL,'collections','4','de',NULL,'Sulu Kontakte','de','sulu.media.collections','Sulu\\Bundle\\MediaBundle\\Entity\\Collection','4',NULL),(10,'created','[]','2024-03-05 11:52:27','65e6f96b1f2cd2.23343079',NULL,'collections','5','en',NULL,'People','en','sulu.media.collections','Sulu\\Bundle\\MediaBundle\\Entity\\Collection','5',NULL),(11,'translation_added','[]','2024-03-05 11:52:27','65e6f96b2730b6.63843048',NULL,'collections','5','de',NULL,'Personen','de','sulu.media.collections','Sulu\\Bundle\\MediaBundle\\Entity\\Collection','5',NULL),(12,'created','[]','2024-03-05 11:52:27','65e6f96b2ccf89.56609488',NULL,'collections','6','en',NULL,'Organizations','en','sulu.media.collections','Sulu\\Bundle\\MediaBundle\\Entity\\Collection','6',NULL),(13,'translation_added','[]','2024-03-05 11:52:27','65e6f96b3396b4.11218260',NULL,'collections','6','de',NULL,'Organisationen','de','sulu.media.collections','Sulu\\Bundle\\MediaBundle\\Entity\\Collection','6',NULL),(14,'created','[]','2024-03-05 12:03:58','65e6fc1ed44856.02327703',NULL,'pages','9af5eead-fba2-4b95-a247-eb0cc8bd674c','en','sylius','Homepage','en','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','9af5eead-fba2-4b95-a247-eb0cc8bd674c',NULL),(15,'published','[]','2024-03-05 12:03:58','65e6fc1ed44856.02327703',NULL,'pages','9af5eead-fba2-4b95-a247-eb0cc8bd674c','en','sylius','Homepage','en','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','9af5eead-fba2-4b95-a247-eb0cc8bd674c',NULL),(16,'translation_added','[]','2024-03-05 12:03:58','65e6fc1ed44856.02327703',NULL,'pages','9af5eead-fba2-4b95-a247-eb0cc8bd674c','en_us','sylius','Homepage','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','9af5eead-fba2-4b95-a247-eb0cc8bd674c',NULL),(17,'published','[]','2024-03-05 12:03:58','65e6fc1ed44856.02327703',NULL,'pages','9af5eead-fba2-4b95-a247-eb0cc8bd674c','en_us','sylius','Homepage','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','9af5eead-fba2-4b95-a247-eb0cc8bd674c',NULL),(18,'translation_added','[]','2024-03-05 12:03:58','65e6fc1ed44856.02327703',NULL,'pages','9af5eead-fba2-4b95-a247-eb0cc8bd674c','en_gb','sylius','Homepage','en_gb','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','9af5eead-fba2-4b95-a247-eb0cc8bd674c',NULL),(19,'published','[]','2024-03-05 12:03:58','65e6fc1ed44856.02327703',NULL,'pages','9af5eead-fba2-4b95-a247-eb0cc8bd674c','en_gb','sylius','Homepage','en_gb','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','9af5eead-fba2-4b95-a247-eb0cc8bd674c',NULL),(20,'translation_added','[]','2024-03-05 12:03:58','65e6fc1ed44856.02327703',NULL,'pages','9af5eead-fba2-4b95-a247-eb0cc8bd674c','pl','sylius','Homepage','pl','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','9af5eead-fba2-4b95-a247-eb0cc8bd674c',NULL),(21,'published','[]','2024-03-05 12:03:58','65e6fc1ed44856.02327703',NULL,'pages','9af5eead-fba2-4b95-a247-eb0cc8bd674c','pl','sylius','Homepage','pl','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','9af5eead-fba2-4b95-a247-eb0cc8bd674c',NULL),(22,'translation_added','[]','2024-03-05 12:03:58','65e6fc1ed44856.02327703',NULL,'pages','9af5eead-fba2-4b95-a247-eb0cc8bd674c','pl_pl','sylius','Homepage','pl_pl','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','9af5eead-fba2-4b95-a247-eb0cc8bd674c',NULL),(23,'published','[]','2024-03-05 12:03:58','65e6fc1ed44856.02327703',NULL,'pages','9af5eead-fba2-4b95-a247-eb0cc8bd674c','pl_pl','sylius','Homepage','pl_pl','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','9af5eead-fba2-4b95-a247-eb0cc8bd674c',NULL),(24,'modified','[]','2024-03-05 12:04:52','65e6fc54b6d161.27740768',NULL,'roles','1',NULL,NULL,'User',NULL,'sulu.security.roles',NULL,'1',1),(25,'modified','[]','2024-03-05 12:05:39','65e6fc83d2d2d9.29608823',NULL,'users','1',NULL,NULL,'admin',NULL,'sulu.security.users',NULL,'1',1),(26,'created','[]','2024-03-05 12:08:08','65e6fd18e7e583.90476534',NULL,'pages','09dab2b5-7870-4c06-ae3b-b9dfac617fa9','en','sylius','Test','en','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','09dab2b5-7870-4c06-ae3b-b9dfac617fa9',1),(27,'published','[]','2024-03-05 12:08:08','65e6fd18e7e583.90476534',NULL,'pages','09dab2b5-7870-4c06-ae3b-b9dfac617fa9','en','sylius','Test','en','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','09dab2b5-7870-4c06-ae3b-b9dfac617fa9',1),(28,'created','[]','2024-03-05 12:39:15','65e70463729624.27036753',NULL,'pages','a395304f-486b-44d7-9b39-d59903185cd2','en','sylius','Blog Page 2','en','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','a395304f-486b-44d7-9b39-d59903185cd2',1),(29,'published','[]','2024-03-05 12:39:15','65e70463729624.27036753',NULL,'pages','a395304f-486b-44d7-9b39-d59903185cd2','en','sylius','Blog Page 2','en','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','a395304f-486b-44d7-9b39-d59903185cd2',1),(30,'created','[]','2024-03-05 12:40:21','65e704a5d03898.34332626',NULL,'pages','98e5b8e4-0e5a-45cc-9943-77ed68814e85','en','sylius','Blog Sub-Page 1','en','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','98e5b8e4-0e5a-45cc-9943-77ed68814e85',1),(31,'published','[]','2024-03-05 12:40:21','65e704a5d03898.34332626',NULL,'pages','98e5b8e4-0e5a-45cc-9943-77ed68814e85','en','sylius','Blog Sub-Page 1','en','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','98e5b8e4-0e5a-45cc-9943-77ed68814e85',1),(32,'created','[]','2024-03-05 12:41:59','65e705071c6a13.12906668',NULL,'pages','a684fe64-41e0-4e0e-b411-bea7f0857a86','en','sylius','featured pages','en','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','a684fe64-41e0-4e0e-b411-bea7f0857a86',1),(33,'published','[]','2024-03-05 12:41:59','65e705071c6a13.12906668',NULL,'pages','a684fe64-41e0-4e0e-b411-bea7f0857a86','en','sylius','featured pages','en','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','a684fe64-41e0-4e0e-b411-bea7f0857a86',1),(34,'modified','[]','2024-03-05 12:49:22','65e706c2a79422.35961113',NULL,'pages','a684fe64-41e0-4e0e-b411-bea7f0857a86','en','sylius','featured pages','en','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','a684fe64-41e0-4e0e-b411-bea7f0857a86',1),(35,'published','[]','2024-03-05 12:49:22','65e706c2a79422.35961113',NULL,'pages','a684fe64-41e0-4e0e-b411-bea7f0857a86','en','sylius','featured pages','en','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','a684fe64-41e0-4e0e-b411-bea7f0857a86',1),(36,'created','[]','2024-03-05 12:54:24','65e707f09edde0.93941578',NULL,'pages','e4614861-6e83-4542-b441-b7752a24c4f0','en','sylius','Test 1 Page','en','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','e4614861-6e83-4542-b441-b7752a24c4f0',1),(37,'published','[]','2024-03-05 12:54:24','65e707f09edde0.93941578',NULL,'pages','e4614861-6e83-4542-b441-b7752a24c4f0','en','sylius','Test 1 Page','en','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','e4614861-6e83-4542-b441-b7752a24c4f0',1),(38,'translation_copied','{\"sourceLocale\": \"en\"}','2024-03-05 14:39:11','65e7207f95fa30.97376714',NULL,'pages','a395304f-486b-44d7-9b39-d59903185cd2','en_us','sylius','Blog Page 2','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','a395304f-486b-44d7-9b39-d59903185cd2',1),(39,'modified','[]','2024-03-05 14:39:27','65e7208f7c3b86.73156389',NULL,'pages','a395304f-486b-44d7-9b39-d59903185cd2','en_us','sylius','Blog Page 2','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','a395304f-486b-44d7-9b39-d59903185cd2',1),(40,'published','[]','2024-03-05 14:39:27','65e7208f7c3b86.73156389',NULL,'pages','a395304f-486b-44d7-9b39-d59903185cd2','en_us','sylius','Blog Page 2','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','a395304f-486b-44d7-9b39-d59903185cd2',1),(41,'modified','[]','2024-03-05 14:40:21','65e720c5a47573.70248500',NULL,'pages','a395304f-486b-44d7-9b39-d59903185cd2','en_us','sylius','Blog Page 2','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','a395304f-486b-44d7-9b39-d59903185cd2',1),(42,'published','[]','2024-03-05 14:40:21','65e720c5a47573.70248500',NULL,'pages','a395304f-486b-44d7-9b39-d59903185cd2','en_us','sylius','Blog Page 2','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','a395304f-486b-44d7-9b39-d59903185cd2',1),(43,'translation_copied','{\"sourceLocale\": \"en\"}','2024-03-07 02:31:46','65e92712dc8852.24325190',NULL,'pages','98e5b8e4-0e5a-45cc-9943-77ed68814e85','en_us','sylius','Blog Sub-Page 1','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','98e5b8e4-0e5a-45cc-9943-77ed68814e85',1),(44,'modified','[]','2024-03-07 08:20:08','65e978b8cc94b5.93176281',NULL,'pages','a395304f-486b-44d7-9b39-d59903185cd2','en_us','sylius','Blog Page 2','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','a395304f-486b-44d7-9b39-d59903185cd2',1),(45,'published','[]','2024-03-07 08:20:08','65e978b8cc94b5.93176281',NULL,'pages','a395304f-486b-44d7-9b39-d59903185cd2','en_us','sylius','Blog Page 2','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','a395304f-486b-44d7-9b39-d59903185cd2',1),(46,'modified','[]','2024-03-07 08:22:46','65e9795626ca95.94650674',NULL,'pages','a395304f-486b-44d7-9b39-d59903185cd2','en_us','sylius','Blog Page 2','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','a395304f-486b-44d7-9b39-d59903185cd2',1),(47,'published','[]','2024-03-07 08:22:46','65e9795626ca95.94650674',NULL,'pages','a395304f-486b-44d7-9b39-d59903185cd2','en_us','sylius','Blog Page 2','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','a395304f-486b-44d7-9b39-d59903185cd2',1),(48,'modified','[]','2024-03-07 08:38:14','65e97cf6387166.62019413',NULL,'pages','a395304f-486b-44d7-9b39-d59903185cd2','en_us','sylius','Blog Page 1','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','a395304f-486b-44d7-9b39-d59903185cd2',1),(49,'published','[]','2024-03-07 08:38:14','65e97cf6387166.62019413',NULL,'pages','a395304f-486b-44d7-9b39-d59903185cd2','en_us','sylius','Blog Page 1','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','a395304f-486b-44d7-9b39-d59903185cd2',1),(50,'preview_link_generated','[]','2024-03-07 08:46:56','65e97f00e7f480.56656928',NULL,'pages','a395304f-486b-44d7-9b39-d59903185cd2','en_us',NULL,'http://localhost:8001/admin/p/359bc26a3b85/render',NULL,'sulu.webspaces.sylius',NULL,'a395304f-486b-44d7-9b39-d59903185cd2',1),(51,'translation_copied','{\"sourceLocale\": \"en\"}','2024-03-12 00:35:25','65efa34db1d963.53131990',NULL,'pages','e4614861-6e83-4542-b441-b7752a24c4f0','en_us','sylius','Test 1 Page','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','e4614861-6e83-4542-b441-b7752a24c4f0',1),(52,'translation_copied','{\"sourceLocale\": \"en\"}','2024-03-12 00:35:40','65efa35c71d1d1.27401609',NULL,'pages','a684fe64-41e0-4e0e-b411-bea7f0857a86','en_us','sylius','featured pages','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','a684fe64-41e0-4e0e-b411-bea7f0857a86',1),(53,'modified','[]','2024-03-12 00:37:58','65efa3e62d0b21.02838812',NULL,'pages','a395304f-486b-44d7-9b39-d59903185cd2','en','sylius','Blog Page 2','en','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','a395304f-486b-44d7-9b39-d59903185cd2',1),(54,'published','[]','2024-03-12 00:37:58','65efa3e62d0b21.02838812',NULL,'pages','a395304f-486b-44d7-9b39-d59903185cd2','en','sylius','Blog Page 2','en','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','a395304f-486b-44d7-9b39-d59903185cd2',1),(55,'modified','[]','2024-03-12 00:38:24','65efa40044f8b5.62229772',NULL,'pages','a395304f-486b-44d7-9b39-d59903185cd2','en','sylius','Blog Page 2','en','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','a395304f-486b-44d7-9b39-d59903185cd2',1),(56,'published','[]','2024-03-12 00:38:24','65efa40044f8b5.62229772',NULL,'pages','a395304f-486b-44d7-9b39-d59903185cd2','en','sylius','Blog Page 2','en','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','a395304f-486b-44d7-9b39-d59903185cd2',1),(57,'route_removed','{\"route\": \"/cmf/sylius/routes/en/test-1-page\"}','2024-03-12 00:42:53','65efa50d21c440.51786729',NULL,'pages','e4614861-6e83-4542-b441-b7752a24c4f0',NULL,'sylius','Test 1 Page','en','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','e4614861-6e83-4542-b441-b7752a24c4f0',1),(58,'removed','[]','2024-03-12 00:42:53','65efa50d21c440.51786729',NULL,'pages','e4614861-6e83-4542-b441-b7752a24c4f0',NULL,'sylius','Test 1 Page','en','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','e4614861-6e83-4542-b441-b7752a24c4f0',1),(59,'route_removed','{\"route\": \"/cmf/sylius/routes/en/blog-page-2/featured-pages\"}','2024-03-12 00:43:52','65efa548aa0f29.31455946',NULL,'pages','a684fe64-41e0-4e0e-b411-bea7f0857a86',NULL,'sylius','featured pages','en','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','a684fe64-41e0-4e0e-b411-bea7f0857a86',1),(60,'removed','[]','2024-03-12 00:43:52','65efa548aa0f29.31455946',NULL,'pages','a684fe64-41e0-4e0e-b411-bea7f0857a86',NULL,'sylius','featured pages','en','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','a684fe64-41e0-4e0e-b411-bea7f0857a86',1),(61,'route_removed','{\"route\": \"/cmf/sylius/routes/en/blog-page-2/blog-sub-page-1\"}','2024-03-12 00:44:00','65efa55099fef6.52744076',NULL,'pages','98e5b8e4-0e5a-45cc-9943-77ed68814e85',NULL,'sylius','Blog Sub-Page 1','en','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','98e5b8e4-0e5a-45cc-9943-77ed68814e85',1),(62,'removed','[]','2024-03-12 00:44:00','65efa55099fef6.52744076',NULL,'pages','98e5b8e4-0e5a-45cc-9943-77ed68814e85',NULL,'sylius','Blog Sub-Page 1','en','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','98e5b8e4-0e5a-45cc-9943-77ed68814e85',1),(63,'route_removed','{\"route\": \"/cmf/sylius/routes/en/blog-page-2\"}','2024-03-12 00:44:22','65efa566671674.93832413',NULL,'pages','a395304f-486b-44d7-9b39-d59903185cd2',NULL,'sylius','Blog Page 2','en','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','a395304f-486b-44d7-9b39-d59903185cd2',1),(64,'route_removed','{\"route\": \"/cmf/sylius/routes/en_us/blog-page-2\"}','2024-03-12 00:44:22','65efa566671674.93832413',NULL,'pages','a395304f-486b-44d7-9b39-d59903185cd2',NULL,'sylius','Blog Page 2','en','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','a395304f-486b-44d7-9b39-d59903185cd2',1),(65,'removed','[]','2024-03-12 00:44:22','65efa566671674.93832413',NULL,'pages','a395304f-486b-44d7-9b39-d59903185cd2',NULL,'sylius','Blog Page 2','en','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','a395304f-486b-44d7-9b39-d59903185cd2',1),(66,'route_removed','{\"route\": \"/cmf/sylius/routes/en/test\"}','2024-03-12 00:45:14','65efa59ac82970.63226810',NULL,'pages','09dab2b5-7870-4c06-ae3b-b9dfac617fa9',NULL,'sylius','Test','en','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','09dab2b5-7870-4c06-ae3b-b9dfac617fa9',1),(67,'removed','[]','2024-03-12 00:45:14','65efa59ac82970.63226810',NULL,'pages','09dab2b5-7870-4c06-ae3b-b9dfac617fa9',NULL,'sylius','Test','en','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','09dab2b5-7870-4c06-ae3b-b9dfac617fa9',1),(68,'created','[]','2024-03-12 00:45:26','65efa5a6ae7067.17056034',NULL,'pages','70f15c7e-68c5-4e75-ae5a-1f5748402947','en','sylius','Blog Page 2','en','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','70f15c7e-68c5-4e75-ae5a-1f5748402947',1),(69,'published','[]','2024-03-12 00:45:26','65efa5a6ae7067.17056034',NULL,'pages','70f15c7e-68c5-4e75-ae5a-1f5748402947','en','sylius','Blog Page 2','en','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','70f15c7e-68c5-4e75-ae5a-1f5748402947',1),(70,'translation_copied','{\"sourceLocale\": \"en\"}','2024-03-12 00:45:38','65efa5b28d4170.55763337',NULL,'pages','70f15c7e-68c5-4e75-ae5a-1f5748402947','en_us','sylius','Blog Page 2','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','70f15c7e-68c5-4e75-ae5a-1f5748402947',1),(71,'modified','[]','2024-03-12 00:45:42','65efa5b6c34d38.30417842',NULL,'pages','70f15c7e-68c5-4e75-ae5a-1f5748402947','en_us','sylius','Blog Page 2','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','70f15c7e-68c5-4e75-ae5a-1f5748402947',1),(72,'published','[]','2024-03-12 00:45:42','65efa5b6c34d38.30417842',NULL,'pages','70f15c7e-68c5-4e75-ae5a-1f5748402947','en_us','sylius','Blog Page 2','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','70f15c7e-68c5-4e75-ae5a-1f5748402947',1),(73,'modified','[]','2024-03-12 00:46:15','65efa5d7d50435.77250111',NULL,'pages','70f15c7e-68c5-4e75-ae5a-1f5748402947','en_us','sylius','Blog Page 2','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','70f15c7e-68c5-4e75-ae5a-1f5748402947',1),(74,'published','[]','2024-03-12 00:46:15','65efa5d7d50435.77250111',NULL,'pages','70f15c7e-68c5-4e75-ae5a-1f5748402947','en_us','sylius','Blog Page 2','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','70f15c7e-68c5-4e75-ae5a-1f5748402947',1),(75,'created','[]','2024-03-12 00:47:17','65efa6154b0f88.35146699',NULL,'pages','5356ad8d-a3fd-4c8e-a1c4-2fc8189fba2a','en_us','sylius','Blog Subpage 1','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','5356ad8d-a3fd-4c8e-a1c4-2fc8189fba2a',1),(76,'published','[]','2024-03-12 00:47:17','65efa6154b0f88.35146699',NULL,'pages','5356ad8d-a3fd-4c8e-a1c4-2fc8189fba2a','en_us','sylius','Blog Subpage 1','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','5356ad8d-a3fd-4c8e-a1c4-2fc8189fba2a',1),(77,'created','[]','2024-03-12 00:47:54','65efa63a9a35f0.69494802',NULL,'pages','ca47175a-de3a-4bc0-8949-d16b77050c56','en_us','sylius','Homepage','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','ca47175a-de3a-4bc0-8949-d16b77050c56',1),(78,'published','[]','2024-03-12 00:47:54','65efa63a9a35f0.69494802',NULL,'pages','ca47175a-de3a-4bc0-8949-d16b77050c56','en_us','sylius','Homepage','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','ca47175a-de3a-4bc0-8949-d16b77050c56',1),(79,'created','[]','2024-03-12 01:03:21','65efa9d9e15a65.07157738',NULL,'pages','33d30633-4f77-4b86-a042-9932e88d47e2','en_us','sylius','Default','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','33d30633-4f77-4b86-a042-9932e88d47e2',1),(80,'published','[]','2024-03-12 01:03:21','65efa9d9e15a65.07157738',NULL,'pages','33d30633-4f77-4b86-a042-9932e88d47e2','en_us','sylius','Default','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','33d30633-4f77-4b86-a042-9932e88d47e2',1),(81,'modified','[]','2024-03-12 01:04:44','65efaa2c72cd26.55713024',NULL,'pages','9af5eead-fba2-4b95-a247-eb0cc8bd674c','en_us','sylius','Homepage','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','9af5eead-fba2-4b95-a247-eb0cc8bd674c',1),(82,'published','[]','2024-03-12 01:04:44','65efaa2c72cd26.55713024',NULL,'pages','9af5eead-fba2-4b95-a247-eb0cc8bd674c','en_us','sylius','Homepage','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','9af5eead-fba2-4b95-a247-eb0cc8bd674c',1),(83,'translation_copied','{\"sourceLocale\": \"en_us\"}','2024-03-12 01:07:52','65efaae8ac92a8.14871169',NULL,'pages','5356ad8d-a3fd-4c8e-a1c4-2fc8189fba2a','en','sylius','Blog Subpage 1','en','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','5356ad8d-a3fd-4c8e-a1c4-2fc8189fba2a',1),(84,'cache_cleared','{\"tags\": []}','2024-03-12 01:15:49',NULL,NULL,'webspaces','sylius',NULL,'sylius','sylius',NULL,'sulu.webspaces.sylius',NULL,'sylius',1),(85,'translation_copied','{\"sourceLocale\": \"en_us\"}','2024-03-12 01:16:03','65efacd374a102.63372224',NULL,'pages','ca47175a-de3a-4bc0-8949-d16b77050c56','en','sylius','Homepage','en','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','ca47175a-de3a-4bc0-8949-d16b77050c56',1),(86,'modified','[]','2024-03-12 01:27:16','65efaf74c333b3.37269909',NULL,'pages','ca47175a-de3a-4bc0-8949-d16b77050c56','en','sylius','Homepage','en','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','ca47175a-de3a-4bc0-8949-d16b77050c56',1),(87,'published','[]','2024-03-12 01:27:16','65efaf74c333b3.37269909',NULL,'pages','ca47175a-de3a-4bc0-8949-d16b77050c56','en','sylius','Homepage','en','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','ca47175a-de3a-4bc0-8949-d16b77050c56',1),(88,'modified','[]','2024-03-12 07:59:02','65f00b462e53b2.70781202',NULL,'pages','70f15c7e-68c5-4e75-ae5a-1f5748402947','en','sylius','Blog Page 2','en','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','70f15c7e-68c5-4e75-ae5a-1f5748402947',1),(89,'published','[]','2024-03-12 07:59:02','65f00b462e53b2.70781202',NULL,'pages','70f15c7e-68c5-4e75-ae5a-1f5748402947','en','sylius','Blog Page 2','en','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','70f15c7e-68c5-4e75-ae5a-1f5748402947',1),(90,'modified','[]','2024-03-12 08:00:23','65f00b9794bec3.11283950',NULL,'pages','70f15c7e-68c5-4e75-ae5a-1f5748402947','en_us','sylius','Blog Page 2','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','70f15c7e-68c5-4e75-ae5a-1f5748402947',1),(91,'published','[]','2024-03-12 08:00:23','65f00b9794bec3.11283950',NULL,'pages','70f15c7e-68c5-4e75-ae5a-1f5748402947','en_us','sylius','Blog Page 2','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','70f15c7e-68c5-4e75-ae5a-1f5748402947',1),(92,'modified','[]','2024-03-12 08:08:38','65f00d8660ca07.24227183',NULL,'pages','70f15c7e-68c5-4e75-ae5a-1f5748402947','en_us','sylius','Blog Page 2','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','70f15c7e-68c5-4e75-ae5a-1f5748402947',1),(93,'published','[]','2024-03-12 08:08:38','65f00d8660ca07.24227183',NULL,'pages','70f15c7e-68c5-4e75-ae5a-1f5748402947','en_us','sylius','Blog Page 2','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','70f15c7e-68c5-4e75-ae5a-1f5748402947',1),(94,'modified','[]','2024-03-12 08:11:26','65f00e2e3ed4e4.16393617',NULL,'pages','33d30633-4f77-4b86-a042-9932e88d47e2','en_us','sylius','Default','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','33d30633-4f77-4b86-a042-9932e88d47e2',1),(95,'published','[]','2024-03-12 08:11:26','65f00e2e3ed4e4.16393617',NULL,'pages','33d30633-4f77-4b86-a042-9932e88d47e2','en_us','sylius','Default','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','33d30633-4f77-4b86-a042-9932e88d47e2',1),(96,'modified','[]','2024-03-12 08:19:38','65f0101a35a8a0.93963732',NULL,'pages','33d30633-4f77-4b86-a042-9932e88d47e2','en_us','sylius','Default','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','33d30633-4f77-4b86-a042-9932e88d47e2',1),(97,'published','[]','2024-03-12 08:19:38','65f0101a35a8a0.93963732',NULL,'pages','33d30633-4f77-4b86-a042-9932e88d47e2','en_us','sylius','Default','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','33d30633-4f77-4b86-a042-9932e88d47e2',1),(98,'modified','[]','2024-03-12 08:21:17','65f0107d262817.79941943',NULL,'pages','33d30633-4f77-4b86-a042-9932e88d47e2','en_us','sylius','Default','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','33d30633-4f77-4b86-a042-9932e88d47e2',1),(99,'published','[]','2024-03-12 08:21:17','65f0107d262817.79941943',NULL,'pages','33d30633-4f77-4b86-a042-9932e88d47e2','en_us','sylius','Default','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','33d30633-4f77-4b86-a042-9932e88d47e2',1),(100,'modified','[]','2024-03-12 08:31:34','65f012e66a3f56.16333887',NULL,'pages','33d30633-4f77-4b86-a042-9932e88d47e2','en_us','sylius','Default','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','33d30633-4f77-4b86-a042-9932e88d47e2',1),(101,'published','[]','2024-03-12 08:31:34','65f012e66a3f56.16333887',NULL,'pages','33d30633-4f77-4b86-a042-9932e88d47e2','en_us','sylius','Default','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','33d30633-4f77-4b86-a042-9932e88d47e2',1),(102,'modified','[]','2024-03-13 02:17:30','65f10cba93c1c4.08084863',NULL,'pages','70f15c7e-68c5-4e75-ae5a-1f5748402947','en_us','sylius','Blog Page 2','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','70f15c7e-68c5-4e75-ae5a-1f5748402947',1),(103,'published','[]','2024-03-13 02:17:30','65f10cba93c1c4.08084863',NULL,'pages','70f15c7e-68c5-4e75-ae5a-1f5748402947','en_us','sylius','Blog Page 2','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','70f15c7e-68c5-4e75-ae5a-1f5748402947',1),(104,'modified','[]','2024-03-13 02:18:18','65f10cea806833.52539132',NULL,'pages','70f15c7e-68c5-4e75-ae5a-1f5748402947','en_us','sylius','Blog Page 2','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','70f15c7e-68c5-4e75-ae5a-1f5748402947',1),(105,'published','[]','2024-03-13 02:18:18','65f10cea806833.52539132',NULL,'pages','70f15c7e-68c5-4e75-ae5a-1f5748402947','en_us','sylius','Blog Page 2','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','70f15c7e-68c5-4e75-ae5a-1f5748402947',1),(106,'modified','[]','2024-03-13 02:18:51','65f10d0b0eedc2.13923409',NULL,'pages','70f15c7e-68c5-4e75-ae5a-1f5748402947','en_us','sylius','Blog Page 2','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','70f15c7e-68c5-4e75-ae5a-1f5748402947',1),(107,'published','[]','2024-03-13 02:18:51','65f10d0b0eedc2.13923409',NULL,'pages','70f15c7e-68c5-4e75-ae5a-1f5748402947','en_us','sylius','Blog Page 2','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','70f15c7e-68c5-4e75-ae5a-1f5748402947',1),(108,'modified','[]','2024-03-13 13:02:08','65f1a3d0c2b2a7.48352097',NULL,'pages','70f15c7e-68c5-4e75-ae5a-1f5748402947','en_us','sylius','Blog Page 2','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','70f15c7e-68c5-4e75-ae5a-1f5748402947',1),(109,'published','[]','2024-03-13 13:02:08','65f1a3d0c2b2a7.48352097',NULL,'pages','70f15c7e-68c5-4e75-ae5a-1f5748402947','en_us','sylius','Blog Page 2','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','70f15c7e-68c5-4e75-ae5a-1f5748402947',1),(110,'preview_link_generated','[]','2024-03-13 13:02:27','65f1a3e3602c80.69669685',NULL,'pages','70f15c7e-68c5-4e75-ae5a-1f5748402947','en_us',NULL,'http://localhost:8001/admin/p/e71eca260677/render',NULL,'sulu.webspaces.sylius',NULL,'70f15c7e-68c5-4e75-ae5a-1f5748402947',1),(111,'modified','[]','2024-03-15 03:19:14','65f3be321f67b9.70405819',NULL,'pages','70f15c7e-68c5-4e75-ae5a-1f5748402947','en_us','sylius','Blog Page 2','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','70f15c7e-68c5-4e75-ae5a-1f5748402947',1),(112,'published','[]','2024-03-15 03:19:14','65f3be321f67b9.70405819',NULL,'pages','70f15c7e-68c5-4e75-ae5a-1f5748402947','en_us','sylius','Blog Page 2','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','70f15c7e-68c5-4e75-ae5a-1f5748402947',1),(113,'modified','[]','2024-03-15 03:19:32','65f3be445c59e2.62488496',NULL,'pages','70f15c7e-68c5-4e75-ae5a-1f5748402947','en_us','sylius','Blog Page 2','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','70f15c7e-68c5-4e75-ae5a-1f5748402947',1),(114,'published','[]','2024-03-15 03:19:32','65f3be445c59e2.62488496',NULL,'pages','70f15c7e-68c5-4e75-ae5a-1f5748402947','en_us','sylius','Blog Page 2','en_us','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','70f15c7e-68c5-4e75-ae5a-1f5748402947',1);
/*!40000 ALTER TABLE `ac_activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ca_categories`
--

DROP TABLE IF EXISTS `ca_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ca_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_locale` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lft` int NOT NULL,
  `rgt` int NOT NULL,
  `depth` int NOT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idCategoriesParent` int DEFAULT NULL,
  `idUsersCreator` int DEFAULT NULL,
  `idUsersChanger` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_3D85D789AF5206F3` (`category_key`),
  KEY `IDX_3D85D78937A3C3B1` (`idCategoriesParent`),
  KEY `IDX_3D85D789DBF11E1D` (`idUsersCreator`),
  KEY `IDX_3D85D78930D07CD5` (`idUsersChanger`),
  CONSTRAINT `FK_3D85D78930D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_3D85D78937A3C3B1` FOREIGN KEY (`idCategoriesParent`) REFERENCES `ca_categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_3D85D789DBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ca_categories`
--

LOCK TABLES `ca_categories` WRITE;
/*!40000 ALTER TABLE `ca_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ca_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ca_category_meta`
--

DROP TABLE IF EXISTS `ca_category_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ca_category_meta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idCategories` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_2575BBB0B8075882` (`idCategories`),
  CONSTRAINT `FK_2575BBB0B8075882` FOREIGN KEY (`idCategories`) REFERENCES `ca_categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ca_category_meta`
--

LOCK TABLES `ca_category_meta` WRITE;
/*!40000 ALTER TABLE `ca_category_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `ca_category_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ca_category_translation_keywords`
--

DROP TABLE IF EXISTS `ca_category_translation_keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ca_category_translation_keywords` (
  `idKeywords` int NOT NULL,
  `idCategoryTranslations` int NOT NULL,
  PRIMARY KEY (`idKeywords`,`idCategoryTranslations`),
  KEY `IDX_D15FBE37F9FC9F05` (`idKeywords`),
  KEY `IDX_D15FBE3717CA14DA` (`idCategoryTranslations`),
  CONSTRAINT `FK_D15FBE3717CA14DA` FOREIGN KEY (`idCategoryTranslations`) REFERENCES `ca_category_translations` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_D15FBE37F9FC9F05` FOREIGN KEY (`idKeywords`) REFERENCES `ca_keywords` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ca_category_translation_keywords`
--

LOCK TABLES `ca_category_translation_keywords` WRITE;
/*!40000 ALTER TABLE `ca_category_translation_keywords` DISABLE KEYS */;
/*!40000 ALTER TABLE `ca_category_translation_keywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ca_category_translation_medias`
--

DROP TABLE IF EXISTS `ca_category_translation_medias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ca_category_translation_medias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `position` int NOT NULL DEFAULT '0',
  `idCategoryTranslations` int NOT NULL,
  `idMedia` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_39FC41BA17CA14DA` (`idCategoryTranslations`),
  KEY `IDX_39FC41BA7DE8E211` (`idMedia`),
  CONSTRAINT `FK_39FC41BA17CA14DA` FOREIGN KEY (`idCategoryTranslations`) REFERENCES `ca_category_translations` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_39FC41BA7DE8E211` FOREIGN KEY (`idMedia`) REFERENCES `me_media` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ca_category_translation_medias`
--

LOCK TABLES `ca_category_translation_medias` WRITE;
/*!40000 ALTER TABLE `ca_category_translation_medias` DISABLE KEYS */;
/*!40000 ALTER TABLE `ca_category_translation_medias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ca_category_translations`
--

DROP TABLE IF EXISTS `ca_category_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ca_category_translations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `translation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idCategories` int NOT NULL,
  `idUsersCreator` int DEFAULT NULL,
  `idUsersChanger` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_5DCED5E3B8075882` (`idCategories`),
  KEY `IDX_5DCED5E3DBF11E1D` (`idUsersCreator`),
  KEY `IDX_5DCED5E330D07CD5` (`idUsersChanger`),
  CONSTRAINT `FK_5DCED5E330D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_5DCED5E3B8075882` FOREIGN KEY (`idCategories`) REFERENCES `ca_categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_5DCED5E3DBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ca_category_translations`
--

LOCK TABLES `ca_category_translations` WRITE;
/*!40000 ALTER TABLE `ca_category_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ca_category_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ca_keywords`
--

DROP TABLE IF EXISTS `ca_keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ca_keywords` (
  `id` int NOT NULL AUTO_INCREMENT,
  `locale` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyword` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idUsersCreator` int DEFAULT NULL,
  `idUsersChanger` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_idx` (`keyword`,`locale`),
  KEY `IDX_FE02CA0BDBF11E1D` (`idUsersCreator`),
  KEY `IDX_FE02CA0B30D07CD5` (`idUsersChanger`),
  KEY `IDX_FE02CA0B5A93713B` (`keyword`),
  CONSTRAINT `FK_FE02CA0B30D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_FE02CA0BDBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ca_keywords`
--

LOCK TABLES `ca_keywords` WRITE;
/*!40000 ALTER TABLE `ca_keywords` DISABLE KEYS */;
/*!40000 ALTER TABLE `ca_keywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_account_addresses`
--

DROP TABLE IF EXISTS `co_account_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `co_account_addresses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `main` tinyint(1) NOT NULL,
  `idAddresses` int NOT NULL,
  `idAccounts` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_4165FE4893205E40996BB4F7` (`idAddresses`,`idAccounts`),
  KEY `IDX_4165FE4893205E40` (`idAddresses`),
  KEY `IDX_4165FE48996BB4F7` (`idAccounts`),
  CONSTRAINT `FK_4165FE4893205E40` FOREIGN KEY (`idAddresses`) REFERENCES `co_addresses` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_4165FE48996BB4F7` FOREIGN KEY (`idAccounts`) REFERENCES `co_accounts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_account_addresses`
--

LOCK TABLES `co_account_addresses` WRITE;
/*!40000 ALTER TABLE `co_account_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_account_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_account_bank_accounts`
--

DROP TABLE IF EXISTS `co_account_bank_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `co_account_bank_accounts` (
  `idAccounts` int NOT NULL,
  `idBankAccounts` int NOT NULL,
  PRIMARY KEY (`idAccounts`,`idBankAccounts`),
  KEY `IDX_C873A532996BB4F7` (`idAccounts`),
  KEY `IDX_C873A53237FCD1D8` (`idBankAccounts`),
  CONSTRAINT `FK_C873A53237FCD1D8` FOREIGN KEY (`idBankAccounts`) REFERENCES `co_bank_account` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_C873A532996BB4F7` FOREIGN KEY (`idAccounts`) REFERENCES `co_accounts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_account_bank_accounts`
--

LOCK TABLES `co_account_bank_accounts` WRITE;
/*!40000 ALTER TABLE `co_account_bank_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_account_bank_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_account_categories`
--

DROP TABLE IF EXISTS `co_account_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `co_account_categories` (
  `idAccounts` int NOT NULL,
  `idCategories` int NOT NULL,
  PRIMARY KEY (`idAccounts`,`idCategories`),
  KEY `IDX_B60E9510996BB4F7` (`idAccounts`),
  KEY `IDX_B60E9510B8075882` (`idCategories`),
  CONSTRAINT `FK_B60E9510996BB4F7` FOREIGN KEY (`idAccounts`) REFERENCES `co_accounts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_B60E9510B8075882` FOREIGN KEY (`idCategories`) REFERENCES `ca_categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_account_categories`
--

LOCK TABLES `co_account_categories` WRITE;
/*!40000 ALTER TABLE `co_account_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_account_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_account_contacts`
--

DROP TABLE IF EXISTS `co_account_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `co_account_contacts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `main` tinyint(1) NOT NULL,
  `idPositions` int DEFAULT NULL,
  `idContacts` int NOT NULL,
  `idAccounts` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_28C6CA0E60E33F28996BB4F7` (`idContacts`,`idAccounts`),
  KEY `IDX_28C6CA0E2A75CE2A` (`idPositions`),
  KEY `IDX_28C6CA0E60E33F28` (`idContacts`),
  KEY `IDX_28C6CA0E996BB4F7` (`idAccounts`),
  CONSTRAINT `FK_28C6CA0E2A75CE2A` FOREIGN KEY (`idPositions`) REFERENCES `co_positions` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_28C6CA0E60E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_28C6CA0E996BB4F7` FOREIGN KEY (`idAccounts`) REFERENCES `co_accounts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_account_contacts`
--

LOCK TABLES `co_account_contacts` WRITE;
/*!40000 ALTER TABLE `co_account_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_account_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_account_emails`
--

DROP TABLE IF EXISTS `co_account_emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `co_account_emails` (
  `idAccounts` int NOT NULL,
  `idEmails` int NOT NULL,
  PRIMARY KEY (`idAccounts`,`idEmails`),
  KEY `IDX_3E246FC3996BB4F7` (`idAccounts`),
  KEY `IDX_3E246FC32F9040C8` (`idEmails`),
  CONSTRAINT `FK_3E246FC32F9040C8` FOREIGN KEY (`idEmails`) REFERENCES `co_emails` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_3E246FC3996BB4F7` FOREIGN KEY (`idAccounts`) REFERENCES `co_accounts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_account_emails`
--

LOCK TABLES `co_account_emails` WRITE;
/*!40000 ALTER TABLE `co_account_emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_account_emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_account_faxes`
--

DROP TABLE IF EXISTS `co_account_faxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `co_account_faxes` (
  `idAccounts` int NOT NULL,
  `idFaxes` int NOT NULL,
  PRIMARY KEY (`idAccounts`,`idFaxes`),
  KEY `IDX_7A4E77DC996BB4F7` (`idAccounts`),
  KEY `IDX_7A4E77DCCF6A2007` (`idFaxes`),
  CONSTRAINT `FK_7A4E77DC996BB4F7` FOREIGN KEY (`idAccounts`) REFERENCES `co_accounts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_7A4E77DCCF6A2007` FOREIGN KEY (`idFaxes`) REFERENCES `co_faxes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_account_faxes`
--

LOCK TABLES `co_account_faxes` WRITE;
/*!40000 ALTER TABLE `co_account_faxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_account_faxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_account_medias`
--

DROP TABLE IF EXISTS `co_account_medias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `co_account_medias` (
  `idAccounts` int NOT NULL,
  `idMedias` int NOT NULL,
  PRIMARY KEY (`idAccounts`,`idMedias`),
  KEY `IDX_60772810996BB4F7` (`idAccounts`),
  KEY `IDX_6077281071C3071B` (`idMedias`),
  CONSTRAINT `FK_6077281071C3071B` FOREIGN KEY (`idMedias`) REFERENCES `me_media` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_60772810996BB4F7` FOREIGN KEY (`idAccounts`) REFERENCES `co_accounts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_account_medias`
--

LOCK TABLES `co_account_medias` WRITE;
/*!40000 ALTER TABLE `co_account_medias` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_account_medias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_account_notes`
--

DROP TABLE IF EXISTS `co_account_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `co_account_notes` (
  `idAccounts` int NOT NULL,
  `idNotes` int NOT NULL,
  PRIMARY KEY (`idAccounts`,`idNotes`),
  KEY `IDX_A3FBB24A996BB4F7` (`idAccounts`),
  KEY `IDX_A3FBB24A16DFE591` (`idNotes`),
  CONSTRAINT `FK_A3FBB24A16DFE591` FOREIGN KEY (`idNotes`) REFERENCES `co_notes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_A3FBB24A996BB4F7` FOREIGN KEY (`idAccounts`) REFERENCES `co_accounts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_account_notes`
--

LOCK TABLES `co_account_notes` WRITE;
/*!40000 ALTER TABLE `co_account_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_account_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_account_phones`
--

DROP TABLE IF EXISTS `co_account_phones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `co_account_phones` (
  `idAccounts` int NOT NULL,
  `idPhones` int NOT NULL,
  PRIMARY KEY (`idAccounts`,`idPhones`),
  KEY `IDX_918DA964996BB4F7` (`idAccounts`),
  KEY `IDX_918DA9648039866F` (`idPhones`),
  CONSTRAINT `FK_918DA9648039866F` FOREIGN KEY (`idPhones`) REFERENCES `co_phones` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_918DA964996BB4F7` FOREIGN KEY (`idAccounts`) REFERENCES `co_accounts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_account_phones`
--

LOCK TABLES `co_account_phones` WRITE;
/*!40000 ALTER TABLE `co_account_phones` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_account_phones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_account_social_media_profiles`
--

DROP TABLE IF EXISTS `co_account_social_media_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `co_account_social_media_profiles` (
  `idAccounts` int NOT NULL,
  `idSocialMediaProfiles` int NOT NULL,
  PRIMARY KEY (`idAccounts`,`idSocialMediaProfiles`),
  KEY `IDX_E06F75F5996BB4F7` (`idAccounts`),
  KEY `IDX_E06F75F5573F8344` (`idSocialMediaProfiles`),
  CONSTRAINT `FK_E06F75F5573F8344` FOREIGN KEY (`idSocialMediaProfiles`) REFERENCES `co_social_media_profiles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_E06F75F5996BB4F7` FOREIGN KEY (`idAccounts`) REFERENCES `co_accounts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_account_social_media_profiles`
--

LOCK TABLES `co_account_social_media_profiles` WRITE;
/*!40000 ALTER TABLE `co_account_social_media_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_account_social_media_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_account_tags`
--

DROP TABLE IF EXISTS `co_account_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `co_account_tags` (
  `idAccounts` int NOT NULL,
  `idTags` int NOT NULL,
  PRIMARY KEY (`idAccounts`,`idTags`),
  KEY `IDX_E8D92005996BB4F7` (`idAccounts`),
  KEY `IDX_E8D920051C41CAB8` (`idTags`),
  CONSTRAINT `FK_E8D920051C41CAB8` FOREIGN KEY (`idTags`) REFERENCES `ta_tags` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_E8D92005996BB4F7` FOREIGN KEY (`idAccounts`) REFERENCES `co_accounts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_account_tags`
--

LOCK TABLES `co_account_tags` WRITE;
/*!40000 ALTER TABLE `co_account_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_account_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_account_urls`
--

DROP TABLE IF EXISTS `co_account_urls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `co_account_urls` (
  `idAccounts` int NOT NULL,
  `idUrls` int NOT NULL,
  PRIMARY KEY (`idAccounts`,`idUrls`),
  KEY `IDX_ADF18382996BB4F7` (`idAccounts`),
  KEY `IDX_ADF183825969693F` (`idUrls`),
  CONSTRAINT `FK_ADF183825969693F` FOREIGN KEY (`idUrls`) REFERENCES `co_urls` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_ADF18382996BB4F7` FOREIGN KEY (`idAccounts`) REFERENCES `co_accounts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_account_urls`
--

LOCK TABLES `co_account_urls` WRITE;
/*!40000 ALTER TABLE `co_account_urls` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_account_urls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_accounts`
--

DROP TABLE IF EXISTS `co_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `co_accounts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `logo` int DEFAULT NULL,
  `lft` int NOT NULL,
  `rgt` int NOT NULL,
  `depth` int NOT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `externalId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `corporation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `uid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registerNumber` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeOfJurisdiction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mainEmail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mainPhone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mainFax` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mainUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idContactsMain` int DEFAULT NULL,
  `idAccountsParent` int DEFAULT NULL,
  `idUsersCreator` int DEFAULT NULL,
  `idUsersChanger` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_805CD14A6D4A8651` (`idContactsMain`),
  KEY `IDX_805CD14AC9171171` (`idAccountsParent`),
  KEY `IDX_805CD14AE48E9A13` (`logo`),
  KEY `IDX_805CD14ADBF11E1D` (`idUsersCreator`),
  KEY `IDX_805CD14A30D07CD5` (`idUsersChanger`),
  KEY `IDX_805CD14A5E237E06` (`name`),
  CONSTRAINT `FK_805CD14A30D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_805CD14A6D4A8651` FOREIGN KEY (`idContactsMain`) REFERENCES `co_contacts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_805CD14AC9171171` FOREIGN KEY (`idAccountsParent`) REFERENCES `co_accounts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_805CD14ADBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_805CD14AE48E9A13` FOREIGN KEY (`logo`) REFERENCES `me_media` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_accounts`
--

LOCK TABLES `co_accounts` WRITE;
/*!40000 ALTER TABLE `co_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_address_types`
--

DROP TABLE IF EXISTS `co_address_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `co_address_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_address_types`
--

LOCK TABLES `co_address_types` WRITE;
/*!40000 ALTER TABLE `co_address_types` DISABLE KEYS */;
INSERT INTO `co_address_types` VALUES (1,'sulu_contact.work'),(2,'sulu_contact.private');
/*!40000 ALTER TABLE `co_address_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_addresses`
--

DROP TABLE IF EXISTS `co_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `co_addresses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primaryAddress` tinyint(1) DEFAULT NULL,
  `deliveryAddress` tinyint(1) DEFAULT NULL,
  `billingAddress` tinyint(1) DEFAULT NULL,
  `street` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addition` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `countryCode` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postboxNumber` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postboxPostcode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postboxCity` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `note` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `idAdressTypes` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_26E9A6142A37021A` (`idAdressTypes`),
  CONSTRAINT `FK_26E9A6142A37021A` FOREIGN KEY (`idAdressTypes`) REFERENCES `co_address_types` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_addresses`
--

LOCK TABLES `co_addresses` WRITE;
/*!40000 ALTER TABLE `co_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_bank_account`
--

DROP TABLE IF EXISTS `co_bank_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `co_bank_account` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bankName` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bic` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iban` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `public` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_bank_account`
--

LOCK TABLES `co_bank_account` WRITE;
/*!40000 ALTER TABLE `co_bank_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_bank_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_contact_addresses`
--

DROP TABLE IF EXISTS `co_contact_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `co_contact_addresses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `main` tinyint(1) NOT NULL,
  `idAddresses` int NOT NULL,
  `idContacts` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_DEE056893205E4060E33F28` (`idAddresses`,`idContacts`),
  KEY `IDX_DEE056893205E40` (`idAddresses`),
  KEY `IDX_DEE056860E33F28` (`idContacts`),
  CONSTRAINT `FK_DEE056860E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_DEE056893205E40` FOREIGN KEY (`idAddresses`) REFERENCES `co_addresses` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_contact_addresses`
--

LOCK TABLES `co_contact_addresses` WRITE;
/*!40000 ALTER TABLE `co_contact_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_contact_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_contact_bank_accounts`
--

DROP TABLE IF EXISTS `co_contact_bank_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `co_contact_bank_accounts` (
  `idContacts` int NOT NULL,
  `idBankAccounts` int NOT NULL,
  PRIMARY KEY (`idContacts`,`idBankAccounts`),
  KEY `IDX_76CDDA0660E33F28` (`idContacts`),
  KEY `IDX_76CDDA0637FCD1D8` (`idBankAccounts`),
  CONSTRAINT `FK_76CDDA0637FCD1D8` FOREIGN KEY (`idBankAccounts`) REFERENCES `co_bank_account` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_76CDDA0660E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_contact_bank_accounts`
--

LOCK TABLES `co_contact_bank_accounts` WRITE;
/*!40000 ALTER TABLE `co_contact_bank_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_contact_bank_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_contact_categories`
--

DROP TABLE IF EXISTS `co_contact_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `co_contact_categories` (
  `idContacts` int NOT NULL,
  `idCategories` int NOT NULL,
  PRIMARY KEY (`idContacts`,`idCategories`),
  KEY `IDX_8D2C3E2360E33F28` (`idContacts`),
  KEY `IDX_8D2C3E23B8075882` (`idCategories`),
  CONSTRAINT `FK_8D2C3E2360E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_8D2C3E23B8075882` FOREIGN KEY (`idCategories`) REFERENCES `ca_categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_contact_categories`
--

LOCK TABLES `co_contact_categories` WRITE;
/*!40000 ALTER TABLE `co_contact_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_contact_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_contact_emails`
--

DROP TABLE IF EXISTS `co_contact_emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `co_contact_emails` (
  `idContacts` int NOT NULL,
  `idEmails` int NOT NULL,
  PRIMARY KEY (`idContacts`,`idEmails`),
  KEY `IDX_8982963160E33F28` (`idContacts`),
  KEY `IDX_898296312F9040C8` (`idEmails`),
  CONSTRAINT `FK_898296312F9040C8` FOREIGN KEY (`idEmails`) REFERENCES `co_emails` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_8982963160E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_contact_emails`
--

LOCK TABLES `co_contact_emails` WRITE;
/*!40000 ALTER TABLE `co_contact_emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_contact_emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_contact_faxes`
--

DROP TABLE IF EXISTS `co_contact_faxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `co_contact_faxes` (
  `idContacts` int NOT NULL,
  `idFaxes` int NOT NULL,
  PRIMARY KEY (`idContacts`,`idFaxes`),
  KEY `IDX_61EBBEA260E33F28` (`idContacts`),
  KEY `IDX_61EBBEA2CF6A2007` (`idFaxes`),
  CONSTRAINT `FK_61EBBEA260E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_61EBBEA2CF6A2007` FOREIGN KEY (`idFaxes`) REFERENCES `co_faxes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_contact_faxes`
--

LOCK TABLES `co_contact_faxes` WRITE;
/*!40000 ALTER TABLE `co_contact_faxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_contact_faxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_contact_locales`
--

DROP TABLE IF EXISTS `co_contact_locales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `co_contact_locales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `locale` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `idContacts` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_31E5672760E33F28` (`idContacts`),
  CONSTRAINT `FK_31E5672760E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_contact_locales`
--

LOCK TABLES `co_contact_locales` WRITE;
/*!40000 ALTER TABLE `co_contact_locales` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_contact_locales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_contact_medias`
--

DROP TABLE IF EXISTS `co_contact_medias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `co_contact_medias` (
  `idContacts` int NOT NULL,
  `idMedias` int NOT NULL,
  PRIMARY KEY (`idContacts`,`idMedias`),
  KEY `IDX_D7D1D1E260E33F28` (`idContacts`),
  KEY `IDX_D7D1D1E271C3071B` (`idMedias`),
  CONSTRAINT `FK_D7D1D1E260E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_D7D1D1E271C3071B` FOREIGN KEY (`idMedias`) REFERENCES `me_media` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_contact_medias`
--

LOCK TABLES `co_contact_medias` WRITE;
/*!40000 ALTER TABLE `co_contact_medias` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_contact_medias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_contact_notes`
--

DROP TABLE IF EXISTS `co_contact_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `co_contact_notes` (
  `idContacts` int NOT NULL,
  `idNotes` int NOT NULL,
  PRIMARY KEY (`idContacts`,`idNotes`),
  KEY `IDX_B85E7B3460E33F28` (`idContacts`),
  KEY `IDX_B85E7B3416DFE591` (`idNotes`),
  CONSTRAINT `FK_B85E7B3416DFE591` FOREIGN KEY (`idNotes`) REFERENCES `co_notes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_B85E7B3460E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_contact_notes`
--

LOCK TABLES `co_contact_notes` WRITE;
/*!40000 ALTER TABLE `co_contact_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_contact_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_contact_phones`
--

DROP TABLE IF EXISTS `co_contact_phones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `co_contact_phones` (
  `idContacts` int NOT NULL,
  `idPhones` int NOT NULL,
  PRIMARY KEY (`idContacts`,`idPhones`),
  KEY `IDX_262B509660E33F28` (`idContacts`),
  KEY `IDX_262B50968039866F` (`idPhones`),
  CONSTRAINT `FK_262B509660E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_262B50968039866F` FOREIGN KEY (`idPhones`) REFERENCES `co_phones` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_contact_phones`
--

LOCK TABLES `co_contact_phones` WRITE;
/*!40000 ALTER TABLE `co_contact_phones` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_contact_phones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_contact_social_media_profiles`
--

DROP TABLE IF EXISTS `co_contact_social_media_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `co_contact_social_media_profiles` (
  `idContacts` int NOT NULL,
  `idSocialMediaProfiles` int NOT NULL,
  PRIMARY KEY (`idContacts`,`idSocialMediaProfiles`),
  KEY `IDX_74FF4CC060E33F28` (`idContacts`),
  KEY `IDX_74FF4CC0573F8344` (`idSocialMediaProfiles`),
  CONSTRAINT `FK_74FF4CC0573F8344` FOREIGN KEY (`idSocialMediaProfiles`) REFERENCES `co_social_media_profiles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_74FF4CC060E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_contact_social_media_profiles`
--

LOCK TABLES `co_contact_social_media_profiles` WRITE;
/*!40000 ALTER TABLE `co_contact_social_media_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_contact_social_media_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_contact_tags`
--

DROP TABLE IF EXISTS `co_contact_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `co_contact_tags` (
  `idContacts` int NOT NULL,
  `idTags` int NOT NULL,
  PRIMARY KEY (`idContacts`,`idTags`),
  KEY `IDX_4CB5255060E33F28` (`idContacts`),
  KEY `IDX_4CB525501C41CAB8` (`idTags`),
  CONSTRAINT `FK_4CB525501C41CAB8` FOREIGN KEY (`idTags`) REFERENCES `ta_tags` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_4CB5255060E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_contact_tags`
--

LOCK TABLES `co_contact_tags` WRITE;
/*!40000 ALTER TABLE `co_contact_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_contact_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_contact_titles`
--

DROP TABLE IF EXISTS `co_contact_titles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `co_contact_titles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_4463FC02B36786B` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_contact_titles`
--

LOCK TABLES `co_contact_titles` WRITE;
/*!40000 ALTER TABLE `co_contact_titles` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_contact_titles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_contact_urls`
--

DROP TABLE IF EXISTS `co_contact_urls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `co_contact_urls` (
  `idContacts` int NOT NULL,
  `idUrls` int NOT NULL,
  PRIMARY KEY (`idContacts`,`idUrls`),
  KEY `IDX_99D86D760E33F28` (`idContacts`),
  KEY `IDX_99D86D75969693F` (`idUrls`),
  CONSTRAINT `FK_99D86D75969693F` FOREIGN KEY (`idUrls`) REFERENCES `co_urls` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_99D86D760E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_contact_urls`
--

LOCK TABLES `co_contact_urls` WRITE;
/*!40000 ALTER TABLE `co_contact_urls` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_contact_urls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_contacts`
--

DROP TABLE IF EXISTS `co_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `co_contacts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `avatar` int DEFAULT NULL,
  `firstName` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `middleName` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastName` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `salutation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `formOfAddress` int DEFAULT NULL,
  `newsletter` tinyint(1) DEFAULT NULL,
  `gender` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `mainEmail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mainPhone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mainFax` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mainUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idTitles` int DEFAULT NULL,
  `idUsersCreator` int DEFAULT NULL,
  `idUsersChanger` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_79D45A95A254E939` (`idTitles`),
  KEY `IDX_79D45A951677722F` (`avatar`),
  KEY `IDX_79D45A95DBF11E1D` (`idUsersCreator`),
  KEY `IDX_79D45A9530D07CD5` (`idUsersChanger`),
  KEY `IDX_79D45A952392A156` (`firstName`),
  KEY `IDX_79D45A9591161A88` (`lastName`),
  CONSTRAINT `FK_79D45A951677722F` FOREIGN KEY (`avatar`) REFERENCES `me_media` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_79D45A9530D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_79D45A95A254E939` FOREIGN KEY (`idTitles`) REFERENCES `co_contact_titles` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_79D45A95DBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_contacts`
--

LOCK TABLES `co_contacts` WRITE;
/*!40000 ALTER TABLE `co_contacts` DISABLE KEYS */;
INSERT INTO `co_contacts` VALUES (1,NULL,'Adam',NULL,'Ministrator',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-03-05 11:52:26','2024-03-05 11:52:26',NULL,NULL,NULL);
/*!40000 ALTER TABLE `co_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_email_types`
--

DROP TABLE IF EXISTS `co_email_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `co_email_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_email_types`
--

LOCK TABLES `co_email_types` WRITE;
/*!40000 ALTER TABLE `co_email_types` DISABLE KEYS */;
INSERT INTO `co_email_types` VALUES (1,'sulu_contact.work'),(2,'sulu_contact.private');
/*!40000 ALTER TABLE `co_email_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_emails`
--

DROP TABLE IF EXISTS `co_emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `co_emails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `idEmailTypes` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_A2F2CB77D816E840` (`idEmailTypes`),
  KEY `IDX_A2F2CB77E7927C74` (`email`),
  CONSTRAINT `FK_A2F2CB77D816E840` FOREIGN KEY (`idEmailTypes`) REFERENCES `co_email_types` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_emails`
--

LOCK TABLES `co_emails` WRITE;
/*!40000 ALTER TABLE `co_emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_fax_types`
--

DROP TABLE IF EXISTS `co_fax_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `co_fax_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_fax_types`
--

LOCK TABLES `co_fax_types` WRITE;
/*!40000 ALTER TABLE `co_fax_types` DISABLE KEYS */;
INSERT INTO `co_fax_types` VALUES (1,'sulu_contact.work'),(2,'sulu_contact.private');
/*!40000 ALTER TABLE `co_fax_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_faxes`
--

DROP TABLE IF EXISTS `co_faxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `co_faxes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fax` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `idFaxTypes` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_A5EC6A18B466C5DA` (`idFaxTypes`),
  CONSTRAINT `FK_A5EC6A18B466C5DA` FOREIGN KEY (`idFaxTypes`) REFERENCES `co_fax_types` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_faxes`
--

LOCK TABLES `co_faxes` WRITE;
/*!40000 ALTER TABLE `co_faxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_faxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_notes`
--

DROP TABLE IF EXISTS `co_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `co_notes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_notes`
--

LOCK TABLES `co_notes` WRITE;
/*!40000 ALTER TABLE `co_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_phone_types`
--

DROP TABLE IF EXISTS `co_phone_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `co_phone_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_phone_types`
--

LOCK TABLES `co_phone_types` WRITE;
/*!40000 ALTER TABLE `co_phone_types` DISABLE KEYS */;
INSERT INTO `co_phone_types` VALUES (1,'sulu_contact.work'),(2,'sulu_contact.private'),(3,'sulu_contact.mobile');
/*!40000 ALTER TABLE `co_phone_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_phones`
--

DROP TABLE IF EXISTS `co_phones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `co_phones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `phone` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `idPhoneTypes` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D5B0DD0A4249AD7` (`idPhoneTypes`),
  CONSTRAINT `FK_D5B0DD0A4249AD7` FOREIGN KEY (`idPhoneTypes`) REFERENCES `co_phone_types` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_phones`
--

LOCK TABLES `co_phones` WRITE;
/*!40000 ALTER TABLE `co_phones` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_phones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_positions`
--

DROP TABLE IF EXISTS `co_positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `co_positions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `position` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_9FBC367E462CE4F5` (`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_positions`
--

LOCK TABLES `co_positions` WRITE;
/*!40000 ALTER TABLE `co_positions` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_social_media_profile_types`
--

DROP TABLE IF EXISTS `co_social_media_profile_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `co_social_media_profile_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_social_media_profile_types`
--

LOCK TABLES `co_social_media_profile_types` WRITE;
/*!40000 ALTER TABLE `co_social_media_profile_types` DISABLE KEYS */;
INSERT INTO `co_social_media_profile_types` VALUES (1,'Facebook'),(2,'Twitter'),(3,'Instagram');
/*!40000 ALTER TABLE `co_social_media_profile_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_social_media_profiles`
--

DROP TABLE IF EXISTS `co_social_media_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `co_social_media_profiles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `idSocialMediaTypes` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_DF585BFBB5BEA95F` (`idSocialMediaTypes`),
  CONSTRAINT `FK_DF585BFBB5BEA95F` FOREIGN KEY (`idSocialMediaTypes`) REFERENCES `co_social_media_profile_types` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_social_media_profiles`
--

LOCK TABLES `co_social_media_profiles` WRITE;
/*!40000 ALTER TABLE `co_social_media_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_social_media_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_url_types`
--

DROP TABLE IF EXISTS `co_url_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `co_url_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_url_types`
--

LOCK TABLES `co_url_types` WRITE;
/*!40000 ALTER TABLE `co_url_types` DISABLE KEYS */;
INSERT INTO `co_url_types` VALUES (1,'sulu_contact.work'),(2,'sulu_contact.private');
/*!40000 ALTER TABLE `co_url_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_urls`
--

DROP TABLE IF EXISTS `co_urls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `co_urls` (
  `id` int NOT NULL AUTO_INCREMENT,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `idUrlTypes` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_6F03842E882335CC` (`idUrlTypes`),
  CONSTRAINT `FK_6F03842E882335CC` FOREIGN KEY (`idUrlTypes`) REFERENCES `co_url_types` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_urls`
--

LOCK TABLES `co_urls` WRITE;
/*!40000 ALTER TABLE `co_urls` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_urls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `me_collection_meta`
--

DROP TABLE IF EXISTS `me_collection_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `me_collection_meta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `locale` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `idCollections` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F8D5E71693782C96` (`idCollections`),
  KEY `IDX_F8D5E7162B36786B` (`title`),
  KEY `IDX_F8D5E7164180C698` (`locale`),
  CONSTRAINT `FK_F8D5E71693782C96` FOREIGN KEY (`idCollections`) REFERENCES `me_collections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `me_collection_meta`
--

LOCK TABLES `me_collection_meta` WRITE;
/*!40000 ALTER TABLE `me_collection_meta` DISABLE KEYS */;
INSERT INTO `me_collection_meta` VALUES (1,'System',NULL,'en',1),(2,'Sulu media',NULL,'en',2),(3,'Sulu Medien',NULL,'de',2),(4,'Preview images',NULL,'en',3),(5,'Vorschaubilder',NULL,'de',3),(6,'Sulu contacts',NULL,'en',4),(7,'Sulu Kontakte',NULL,'de',4),(8,'People',NULL,'en',5),(9,'Personen',NULL,'de',5),(10,'Organizations',NULL,'en',6),(11,'Organisationen',NULL,'de',6);
/*!40000 ALTER TABLE `me_collection_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `me_collection_types`
--

DROP TABLE IF EXISTS `me_collection_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `me_collection_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `collection_type_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_FB78DFB179078378` (`collection_type_key`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `me_collection_types`
--

LOCK TABLES `me_collection_types` WRITE;
/*!40000 ALTER TABLE `me_collection_types` DISABLE KEYS */;
INSERT INTO `me_collection_types` VALUES (1,'Default','collection.default',NULL),(2,'System Collections','collection.system',NULL);
/*!40000 ALTER TABLE `me_collection_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `me_collections`
--

DROP TABLE IF EXISTS `me_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `me_collections` (
  `id` int NOT NULL AUTO_INCREMENT,
  `style` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lft` int NOT NULL,
  `rgt` int NOT NULL,
  `depth` int NOT NULL,
  `collection_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idCollectionsMetaDefault` int DEFAULT NULL,
  `idCollectionTypes` int NOT NULL,
  `idCollectionsParent` int DEFAULT NULL,
  `idUsersCreator` int DEFAULT NULL,
  `idUsersChanger` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_F0D4887221904CD` (`collection_key`),
  UNIQUE KEY `UNIQ_F0D4887CFA3F467` (`idCollectionsMetaDefault`),
  KEY `IDX_F0D4887E67924D6` (`idCollectionTypes`),
  KEY `IDX_F0D4887A4F2DCF8` (`idCollectionsParent`),
  KEY `IDX_F0D4887DBF11E1D` (`idUsersCreator`),
  KEY `IDX_F0D488730D07CD5` (`idUsersChanger`),
  CONSTRAINT `FK_F0D488730D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_F0D4887A4F2DCF8` FOREIGN KEY (`idCollectionsParent`) REFERENCES `me_collections` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_F0D4887CFA3F467` FOREIGN KEY (`idCollectionsMetaDefault`) REFERENCES `me_collection_meta` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_F0D4887DBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_F0D4887E67924D6` FOREIGN KEY (`idCollectionTypes`) REFERENCES `me_collection_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `me_collections`
--

LOCK TABLES `me_collections` WRITE;
/*!40000 ALTER TABLE `me_collections` DISABLE KEYS */;
INSERT INTO `me_collections` VALUES (1,NULL,1,12,0,'system_collections','2024-03-05 11:52:26','2024-03-05 11:52:26',1,2,NULL,NULL,NULL),(2,NULL,2,5,1,'sulu_media','2024-03-05 11:52:26','2024-03-05 12:05:04',2,2,1,NULL,1),(3,NULL,3,4,2,'sulu_media.preview_image','2024-03-05 11:52:27','2024-03-05 12:05:04',4,2,2,NULL,1),(4,NULL,6,11,1,'sulu_contact','2024-03-05 11:52:27','2024-03-05 12:05:04',6,2,1,NULL,1),(5,NULL,7,8,2,'sulu_contact.contact','2024-03-05 11:52:27','2024-03-05 12:05:04',8,2,4,NULL,1),(6,NULL,9,10,2,'sulu_contact.account','2024-03-05 11:52:27','2024-03-05 12:05:04',10,2,4,NULL,1);
/*!40000 ALTER TABLE `me_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `me_file_version_categories`
--

DROP TABLE IF EXISTS `me_file_version_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `me_file_version_categories` (
  `idFileVersions` int NOT NULL,
  `idCategories` int NOT NULL,
  PRIMARY KEY (`idFileVersions`,`idCategories`),
  KEY `IDX_2F1E17D0911ADE33` (`idFileVersions`),
  KEY `IDX_2F1E17D0B8075882` (`idCategories`),
  CONSTRAINT `FK_2F1E17D0911ADE33` FOREIGN KEY (`idFileVersions`) REFERENCES `me_file_versions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_2F1E17D0B8075882` FOREIGN KEY (`idCategories`) REFERENCES `ca_categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `me_file_version_categories`
--

LOCK TABLES `me_file_version_categories` WRITE;
/*!40000 ALTER TABLE `me_file_version_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `me_file_version_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `me_file_version_content_languages`
--

DROP TABLE IF EXISTS `me_file_version_content_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `me_file_version_content_languages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `locale` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `idFileVersions` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F3FD652C911ADE33` (`idFileVersions`),
  CONSTRAINT `FK_F3FD652C911ADE33` FOREIGN KEY (`idFileVersions`) REFERENCES `me_file_versions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `me_file_version_content_languages`
--

LOCK TABLES `me_file_version_content_languages` WRITE;
/*!40000 ALTER TABLE `me_file_version_content_languages` DISABLE KEYS */;
/*!40000 ALTER TABLE `me_file_version_content_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `me_file_version_meta`
--

DROP TABLE IF EXISTS `me_file_version_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `me_file_version_meta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `copyright` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `credits` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `locale` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `idFileVersions` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_AD44B0AD911ADE33` (`idFileVersions`),
  KEY `IDX_AD44B0AD2B36786B` (`title`),
  KEY `IDX_AD44B0AD4180C698` (`locale`),
  CONSTRAINT `FK_AD44B0AD911ADE33` FOREIGN KEY (`idFileVersions`) REFERENCES `me_file_versions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `me_file_version_meta`
--

LOCK TABLES `me_file_version_meta` WRITE;
/*!40000 ALTER TABLE `me_file_version_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `me_file_version_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `me_file_version_publish_languages`
--

DROP TABLE IF EXISTS `me_file_version_publish_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `me_file_version_publish_languages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `locale` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `idFileVersions` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_195DAB3C911ADE33` (`idFileVersions`),
  CONSTRAINT `FK_195DAB3C911ADE33` FOREIGN KEY (`idFileVersions`) REFERENCES `me_file_versions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `me_file_version_publish_languages`
--

LOCK TABLES `me_file_version_publish_languages` WRITE;
/*!40000 ALTER TABLE `me_file_version_publish_languages` DISABLE KEYS */;
/*!40000 ALTER TABLE `me_file_version_publish_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `me_file_version_tags`
--

DROP TABLE IF EXISTS `me_file_version_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `me_file_version_tags` (
  `idFileVersions` int NOT NULL,
  `idTags` int NOT NULL,
  PRIMARY KEY (`idFileVersions`,`idTags`),
  KEY `IDX_150A30BE911ADE33` (`idFileVersions`),
  KEY `IDX_150A30BE1C41CAB8` (`idTags`),
  CONSTRAINT `FK_150A30BE1C41CAB8` FOREIGN KEY (`idTags`) REFERENCES `ta_tags` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_150A30BE911ADE33` FOREIGN KEY (`idFileVersions`) REFERENCES `me_file_versions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `me_file_version_tags`
--

LOCK TABLES `me_file_version_tags` WRITE;
/*!40000 ALTER TABLE `me_file_version_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `me_file_version_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `me_file_versions`
--

DROP TABLE IF EXISTS `me_file_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `me_file_versions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int NOT NULL,
  `subVersion` int NOT NULL DEFAULT '0',
  `size` int NOT NULL,
  `downloadCounter` int NOT NULL DEFAULT '0',
  `storageOptions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `mimeType` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `focusPointX` int DEFAULT NULL,
  `focusPointY` int DEFAULT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idFileVersionsMetaDefault` int DEFAULT NULL,
  `idFiles` int DEFAULT NULL,
  `idUsersCreator` int DEFAULT NULL,
  `idUsersChanger` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7B6E89456B801096` (`idFileVersionsMetaDefault`),
  KEY `IDX_7B6E894511F10344` (`idFiles`),
  KEY `IDX_7B6E8945DBF11E1D` (`idUsersCreator`),
  KEY `IDX_7B6E894530D07CD5` (`idUsersChanger`),
  KEY `IDX_7B6E8945D8F2A087` (`mimeType`),
  KEY `IDX_7B6E8945F7C0246A` (`size`),
  KEY `IDX_7B6E8945BF1CD3C3` (`version`),
  KEY `IDX_7B6E89455E237E06` (`name`),
  CONSTRAINT `FK_7B6E894511F10344` FOREIGN KEY (`idFiles`) REFERENCES `me_files` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_7B6E894530D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_7B6E89456B801096` FOREIGN KEY (`idFileVersionsMetaDefault`) REFERENCES `me_file_version_meta` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_7B6E8945DBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `me_file_versions`
--

LOCK TABLES `me_file_versions` WRITE;
/*!40000 ALTER TABLE `me_file_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `me_file_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `me_files`
--

DROP TABLE IF EXISTS `me_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `me_files` (
  `id` int NOT NULL AUTO_INCREMENT,
  `version` int NOT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idMedia` int NOT NULL,
  `idUsersCreator` int DEFAULT NULL,
  `idUsersChanger` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_CA8D04277DE8E211` (`idMedia`),
  KEY `IDX_CA8D0427DBF11E1D` (`idUsersCreator`),
  KEY `IDX_CA8D042730D07CD5` (`idUsersChanger`),
  KEY `IDX_CA8D0427BF1CD3C3` (`version`),
  CONSTRAINT `FK_CA8D042730D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_CA8D04277DE8E211` FOREIGN KEY (`idMedia`) REFERENCES `me_media` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_CA8D0427DBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `me_files`
--

LOCK TABLES `me_files` WRITE;
/*!40000 ALTER TABLE `me_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `me_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `me_format_options`
--

DROP TABLE IF EXISTS `me_format_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `me_format_options` (
  `format_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `crop_x` int NOT NULL,
  `crop_y` int NOT NULL,
  `crop_width` int NOT NULL,
  `crop_height` int NOT NULL,
  `fileVersion` int NOT NULL,
  PRIMARY KEY (`format_key`,`fileVersion`),
  KEY `IDX_6D25443B31852B63` (`fileVersion`),
  CONSTRAINT `FK_6D25443B31852B63` FOREIGN KEY (`fileVersion`) REFERENCES `me_file_versions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `me_format_options`
--

LOCK TABLES `me_format_options` WRITE;
/*!40000 ALTER TABLE `me_format_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `me_format_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `me_media`
--

DROP TABLE IF EXISTS `me_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `me_media` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idMediaTypes` int NOT NULL,
  `idPreviewImage` int DEFAULT NULL,
  `idCollections` int NOT NULL,
  `idUsersCreator` int DEFAULT NULL,
  `idUsersChanger` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_A694E572D1EB44DE` (`idPreviewImage`),
  KEY `IDX_A694E57284671716` (`idMediaTypes`),
  KEY `IDX_A694E57293782C96` (`idCollections`),
  KEY `IDX_A694E572DBF11E1D` (`idUsersCreator`),
  KEY `IDX_A694E57230D07CD5` (`idUsersChanger`),
  KEY `IDX_A694E572A3F33DFA` (`changed`),
  KEY `IDX_A694E572B23DB7B8` (`created`),
  CONSTRAINT `FK_A694E57230D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_A694E57284671716` FOREIGN KEY (`idMediaTypes`) REFERENCES `me_media_types` (`id`),
  CONSTRAINT `FK_A694E57293782C96` FOREIGN KEY (`idCollections`) REFERENCES `me_collections` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_A694E572D1EB44DE` FOREIGN KEY (`idPreviewImage`) REFERENCES `me_media` (`id`),
  CONSTRAINT `FK_A694E572DBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `me_media`
--

LOCK TABLES `me_media` WRITE;
/*!40000 ALTER TABLE `me_media` DISABLE KEYS */;
/*!40000 ALTER TABLE `me_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `me_media_types`
--

DROP TABLE IF EXISTS `me_media_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `me_media_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `IDX_9A01D6E85E237E06` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `me_media_types`
--

LOCK TABLES `me_media_types` WRITE;
/*!40000 ALTER TABLE `me_media_types` DISABLE KEYS */;
INSERT INTO `me_media_types` VALUES (1,'document',NULL),(2,'image',NULL),(3,'video',NULL),(4,'audio',NULL);
/*!40000 ALTER TABLE `me_media_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpcr_binarydata`
--

DROP TABLE IF EXISTS `phpcr_binarydata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phpcr_binarydata` (
  `id` int NOT NULL AUTO_INCREMENT,
  `node_id` int NOT NULL,
  `property_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `workspace_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `idx` int NOT NULL DEFAULT '0',
  `data` longblob NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_37E65615460D9FD7413BC13C1AC10DC4E7087E10` (`node_id`,`property_name`,`workspace_name`,`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpcr_binarydata`
--

LOCK TABLES `phpcr_binarydata` WRITE;
/*!40000 ALTER TABLE `phpcr_binarydata` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpcr_binarydata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpcr_internal_index_types`
--

DROP TABLE IF EXISTS `phpcr_internal_index_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phpcr_internal_index_types` (
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `node_id` int NOT NULL,
  PRIMARY KEY (`type`,`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpcr_internal_index_types`
--

LOCK TABLES `phpcr_internal_index_types` WRITE;
/*!40000 ALTER TABLE `phpcr_internal_index_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpcr_internal_index_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpcr_namespaces`
--

DROP TABLE IF EXISTS `phpcr_namespaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phpcr_namespaces` (
  `prefix` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpcr_namespaces`
--

LOCK TABLES `phpcr_namespaces` WRITE;
/*!40000 ALTER TABLE `phpcr_namespaces` DISABLE KEYS */;
INSERT INTO `phpcr_namespaces` VALUES ('i18n','http://sulu.io/phpcr/locale'),('phpcrmig','http://www.danteech.com/phpcr-migrations'),('sec','http://sulu.io/phpcr/sec'),('settings','http://sulu.io/phpcr/settings'),('sulu','http://sulu.io/phpcr');
/*!40000 ALTER TABLE `phpcr_namespaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpcr_nodes`
--

DROP TABLE IF EXISTS `phpcr_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phpcr_nodes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `local_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `namespace` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `workspace_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `identifier` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `props` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `numerical_props` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `depth` int NOT NULL,
  `sort_order` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_A4624AD7B548B0F1AC10DC4` (`path`,`workspace_name`),
  UNIQUE KEY `UNIQ_A4624AD7772E836A1AC10DC4` (`identifier`,`workspace_name`),
  KEY `IDX_A4624AD73D8E604F` (`parent`),
  KEY `IDX_A4624AD78CDE5729` (`type`),
  KEY `IDX_A4624AD7623C14D533E16B56` (`local_name`,`namespace`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpcr_nodes`
--

LOCK TABLES `phpcr_nodes` WRITE;
/*!40000 ALTER TABLE `phpcr_nodes` DISABLE KEYS */;
INSERT INTO `phpcr_nodes` VALUES (1,'/','','','','default','edb4c607-95ad-4846-b729-4cde7e4c372a','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property></sv:node>\n',NULL,0,NULL),(2,'/','','','','default_live','c7e59a4d-91ab-48c2-8f48-a02a645a3b88','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property></sv:node>\n',NULL,0,NULL),(3,'/cmf','/','cmf','','default','fa2844f9-38cc-4017-a5d9-3a045aaff542','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">fa2844f9-38cc-4017-a5d9-3a045aaff542</sv:value></sv:property></sv:node>\n',NULL,1,1),(4,'/cmf/example','/cmf','example','','default','b3a13cc1-29a6-4a6f-b59c-adfa64b5063d','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">b3a13cc1-29a6-4a6f-b59c-adfa64b5063d</sv:value></sv:property></sv:node>\n',NULL,2,1),(5,'/cmf/example/contents','/cmf/example','contents','','default','809287bd-dd6e-4eec-8d25-6cc08489078e','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:home</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">809287bd-dd6e-4eec-8d25-6cc08489078e</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">Homepage</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">/</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">homepage</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T10:52:26.147+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T10:52:26.147+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T10:52:26.147+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T10:52:26.217+00:00</sv:value></sv:property></sv:node>\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property></sv:node>\n',3,1),(6,'/cmf/example/routes','/cmf/example','routes','','default','24f8723e-22c7-42e6-b712-83dd822a2f66','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">24f8723e-22c7-42e6-b712-83dd822a2f66</sv:value></sv:property></sv:node>\n',NULL,3,2),(7,'/cmf/example/routes/en','/cmf/example/routes','en','','default','b2ff949e-af21-440f-8faa-ba614638a620','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">b2ff949e-af21-440f-8faa-ba614638a620</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T10:52:26.222+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T10:52:26.222+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">809287bd-dd6e-4eec-8d25-6cc08489078e</sv:value></sv:property></sv:node>\n',NULL,4,1),(8,'/cmf','/','cmf','','default_live','fa2844f9-38cc-4017-a5d9-3a045aaff542','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">fa2844f9-38cc-4017-a5d9-3a045aaff542</sv:value></sv:property></sv:node>\n',NULL,1,2),(9,'/cmf/example','/cmf','example','','default_live','b3a13cc1-29a6-4a6f-b59c-adfa64b5063d','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">b3a13cc1-29a6-4a6f-b59c-adfa64b5063d</sv:value></sv:property></sv:node>\n',NULL,2,2),(10,'/cmf/example/contents','/cmf/example','contents','','default_live','809287bd-dd6e-4eec-8d25-6cc08489078e','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:home</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">809287bd-dd6e-4eec-8d25-6cc08489078e</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">Homepage</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">/</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">homepage</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T10:52:26.217+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T10:52:26.147+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T10:52:26.147+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T10:52:26.147+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property></sv:node>\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property></sv:node>\n',3,3),(11,'/cmf/example/routes','/cmf/example','routes','','default_live','24f8723e-22c7-42e6-b712-83dd822a2f66','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">24f8723e-22c7-42e6-b712-83dd822a2f66</sv:value></sv:property></sv:node>\n',NULL,3,4),(12,'/cmf/example/routes/en','/cmf/example/routes','en','','default_live','b2ff949e-af21-440f-8faa-ba614638a620','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">b2ff949e-af21-440f-8faa-ba614638a620</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T10:52:26.222+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T10:52:26.222+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">809287bd-dd6e-4eec-8d25-6cc08489078e</sv:value></sv:property></sv:node>\n',NULL,4,2),(13,'/cmf/snippets','/cmf','snippets','','default','13a76974-aabb-4fc3-9c68-728f3aa23126','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property></sv:node>\n',NULL,2,3),(14,'/cmf/snippets','/cmf','snippets','','default_live','37ad6f30-b29e-4544-bc42-2619bb0b5100','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property></sv:node>\n',NULL,2,4),(15,'/cmf/example/custom-urls','/cmf/example','custom-urls','','default','e5d47ec5-37de-4c07-ab26-e9e11219bdb8','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">e5d47ec5-37de-4c07-ab26-e9e11219bdb8</sv:value></sv:property></sv:node>\n',NULL,3,5),(16,'/cmf/example/custom-urls/items','/cmf/example/custom-urls','items','','default','d07a7ed7-0f63-4756-8a65-6247f5b860d0','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">d07a7ed7-0f63-4756-8a65-6247f5b860d0</sv:value></sv:property></sv:node>\n',NULL,4,1),(17,'/cmf/example/custom-urls/routes','/cmf/example/custom-urls','routes','','default','9b9e0051-97e8-454f-9fdf-4bb0edbb60c6','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">9b9e0051-97e8-454f-9fdf-4bb0edbb60c6</sv:value></sv:property></sv:node>\n',NULL,4,2),(18,'/jcr:versions','/','versions','http://www.jcp.org/jcr/1.0','default','11f84c2c-7233-4ac1-917a-e27a227c2d05','phpcrmig:versions','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"17\">phpcrmig:versions</sv:value></sv:property></sv:node>\n',NULL,1,3),(19,'/jcr:versions/201504271608','/jcr:versions','201504271608','','default','e82b7fcd-58ec-4f62-93cd-d31afd387551','phpcrmig:version','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T10:52:26.372+00:00</sv:value></sv:property></sv:node>\n',NULL,2,1),(20,'/jcr:versions/201504281842','/jcr:versions','201504281842','','default','4224f93b-8345-4f44-ad01-5d2ab76612ed','phpcrmig:version','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T10:52:26.377+00:00</sv:value></sv:property></sv:node>\n',NULL,2,2),(21,'/jcr:versions/201507231648','/jcr:versions','201507231648','','default','122c1580-eb8f-45b1-8f4c-5e556d468756','phpcrmig:version','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T10:52:26.378+00:00</sv:value></sv:property></sv:node>\n',NULL,2,3),(22,'/jcr:versions/201507281529','/jcr:versions','201507281529','','default','3eb69c3f-43b7-4f19-8d35-9e2506a8436b','phpcrmig:version','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T10:52:26.379+00:00</sv:value></sv:property></sv:node>\n',NULL,2,4),(23,'/jcr:versions/201510210733','/jcr:versions','201510210733','','default','b3b8ecea-c9e1-489e-b264-eaa04246b138','phpcrmig:version','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T10:52:26.380+00:00</sv:value></sv:property></sv:node>\n',NULL,2,5),(24,'/jcr:versions/201511171538','/jcr:versions','201511171538','','default','a9b17168-f2a6-4e35-8936-112b80dfca43','phpcrmig:version','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T10:52:26.381+00:00</sv:value></sv:property></sv:node>\n',NULL,2,6),(25,'/jcr:versions/201511240843','/jcr:versions','201511240843','','default','a2a38eb9-c0d0-4383-ad83-9b3b1f3351e8','phpcrmig:version','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T10:52:26.382+00:00</sv:value></sv:property></sv:node>\n',NULL,2,7),(26,'/jcr:versions/201511240844','/jcr:versions','201511240844','','default','2d9f289d-c66c-4074-95bc-bc8ed8987357','phpcrmig:version','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T10:52:26.382+00:00</sv:value></sv:property></sv:node>\n',NULL,2,8),(27,'/jcr:versions/201512090753','/jcr:versions','201512090753','','default','077976c7-d1d2-4e99-acd5-229cd07df18f','phpcrmig:version','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T10:52:26.383+00:00</sv:value></sv:property></sv:node>\n',NULL,2,9),(28,'/jcr:versions/201607181533','/jcr:versions','201607181533','','default','c56d0f72-1cc6-4f0c-8eca-e14ce0f46cd1','phpcrmig:version','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T10:52:26.384+00:00</sv:value></sv:property></sv:node>\n',NULL,2,10),(29,'/jcr:versions/201702021447','/jcr:versions','201702021447','','default','dfd1c66b-9d7b-433d-90c0-1bfdc6b8e3d3','phpcrmig:version','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T10:52:26.384+00:00</sv:value></sv:property></sv:node>\n',NULL,2,11),(30,'/jcr:versions/201903271333','/jcr:versions','201903271333','','default','de6bb727-23aa-4345-a6d4-1f72cfe328b6','phpcrmig:version','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T10:52:26.385+00:00</sv:value></sv:property></sv:node>\n',NULL,2,12),(31,'/jcr:versions/201904110902','/jcr:versions','201904110902','','default','831abfbd-89e8-4f60-b065-0abc9e273703','phpcrmig:version','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T10:52:26.386+00:00</sv:value></sv:property></sv:node>\n',NULL,2,13),(32,'/jcr:versions/201905071542','/jcr:versions','201905071542','','default','7cf3df04-e8b0-4f6a-8933-f52484ef252d','phpcrmig:version','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T10:52:26.387+00:00</sv:value></sv:property></sv:node>\n',NULL,2,14),(33,'/jcr:versions/202005191116','/jcr:versions','202005191116','','default','1814ba8c-ea0a-4072-a1fc-5b1613983965','phpcrmig:version','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T10:52:26.388+00:00</sv:value></sv:property></sv:node>\n',NULL,2,15),(34,'/jcr:versions/202005250917','/jcr:versions','202005250917','','default','d1cdf0b2-31df-4e8f-bab5-35cd16892490','phpcrmig:version','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T10:52:26.389+00:00</sv:value></sv:property></sv:node>\n',NULL,2,16),(35,'/jcr:versions/202105311447','/jcr:versions','202105311447','','default','3ba7b6de-ea3f-49fc-abfe-6d774365320b','phpcrmig:version','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"16\">phpcrmig:version</sv:value></sv:property><sv:property sv:name=\"jcr:createdBy\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"5\">admin</sv:value></sv:property><sv:property sv:name=\"jcr:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T10:52:26.389+00:00</sv:value></sv:property></sv:node>\n',NULL,2,17),(36,'/cmf/sylius','/cmf','sylius','','default','454f8184-93dd-4ef7-bad8-b053e29f6d5d','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">454f8184-93dd-4ef7-bad8-b053e29f6d5d</sv:value></sv:property></sv:node>\n',NULL,2,5),(37,'/cmf/sylius/contents','/cmf/sylius','contents','','default','9af5eead-fba2-4b95-a247-eb0cc8bd674c','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:home</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">9af5eead-fba2-4b95-a247-eb0cc8bd674c</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">Homepage</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">/</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">homepage</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"54\">{\"1\":[\"view\",\"add\",\"edit\",\"delete\",\"live\",\"security\"]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.715+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.715+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.715+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.770+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">Homepage</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_us-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en_us-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en_us-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">/</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1726\">&lt;p style=\"text-align:justify;\"&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec in sem mauris. Vivamus auctor tempor nunc, id suscipit diam semper id. Etiam in metus ante. Donec maximus at sapien quis condimentum. Sed sollicitudin hendrerit vehicula. Cras id ex a massa accumsan faucibus ac quis urna. Donec sed turpis quis purus euismod viverra. Phasellus mauris velit, cursus ac tortor porta, egestas viverra urna. Nunc eget lobortis lectus. Curabitur et ipsum molestie, egestas risus at, dapibus lorem. Fusce placerat libero sit amet suscipit consequat.&lt;/p&gt;&lt;p style=\"text-align:justify;\"&gt;Curabitur sit amet mollis risus. Donec sed sem quis turpis elementum iaculis sed ac nulla. Sed imperdiet mattis quam, a luctus mauris. Quisque neque diam, posuere ut eros vitae, tempus venenatis ligula. Nunc vitae venenatis ante, eget fringilla sapien. Mauris vulputate a nunc sit amet aliquet. Suspendisse nec efficitur neque, sed dignissim sapien. In hac habitasse platea dictumst. Aliquam erat volutpat. Donec non neque vehicula, fermentum nunc sed, fermentum eros. Proin ac nunc id magna lobortis laoreet vitae sed odio. Mauris vel metus dapibus, mattis nibh vel, posuere urna. Nulla porttitor felis eu neque lobortis, ultrices porta tortor placerat. Quisque ullamcorper erat id arcu eleifend, eu ornare orci aliquet.&lt;/p&gt;&lt;p style=\"text-align:justify;\"&gt;Vivamus venenatis metus ut risus laoreet, et tristique tellus ullamcorper. In pretium neque eu tincidunt cursus. Aenean id auctor leo, sed finibus nulla. Interdum et malesuada fames ac ante ipsum primis in faucibus. In hac habitasse platea dictumst. Vivamus eu ante ut nisl egestas scelerisque at quis purus. Nunc ultricies ante eget sapien auctor pellentesque.&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">homepage</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.774+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T01:04:44.422+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en_us-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.779+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en_gb-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">Homepage</sv:value></sv:property><sv:property sv:name=\"i18n:en_gb-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_gb-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_gb-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_gb-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_gb-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en_gb-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en_gb-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en_gb-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_gb-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en_gb-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en_gb-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en_gb-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en_gb-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">/</sv:value></sv:property><sv:property sv:name=\"i18n:en_gb-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_gb-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">homepage</sv:value></sv:property><sv:property sv:name=\"i18n:en_gb-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en_gb-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.782+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en_gb-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.782+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en_gb-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.782+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en_gb-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en_gb-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_gb-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.786+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:pl-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">Homepage</sv:value></sv:property><sv:property sv:name=\"i18n:pl-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:pl-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:pl-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:pl-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:pl-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:pl-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:pl-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:pl-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:pl-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:pl-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:pl-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:pl-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:pl-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">/</sv:value></sv:property><sv:property sv:name=\"i18n:pl-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:pl-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">homepage</sv:value></sv:property><sv:property sv:name=\"i18n:pl-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:pl-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.792+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:pl-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.792+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:pl-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.792+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:pl-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:pl-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:pl-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.796+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:pl_pl-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">Homepage</sv:value></sv:property><sv:property sv:name=\"i18n:pl_pl-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:pl_pl-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:pl_pl-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:pl_pl-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:pl_pl-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:pl_pl-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:pl_pl-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:pl_pl-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:pl_pl-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:pl_pl-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:pl_pl-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:pl_pl-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:pl_pl-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">/</sv:value></sv:property><sv:property sv:name=\"i18n:pl_pl-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:pl_pl-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">homepage</sv:value></sv:property><sv:property sv:name=\"i18n:pl_pl-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:pl_pl-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.799+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:pl_pl-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.799+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:pl_pl-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.799+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:pl_pl-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:pl_pl-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:pl_pl-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.803+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-author\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sec:role-1\" sv:type=\"String\" sv:multi-valued=\"1\"><sv:value length=\"4\">view</sv:value><sv:value length=\"3\">add</sv:value><sv:value length=\"4\">edit</sv:value><sv:value length=\"6\">delete</sv:value><sv:value length=\"4\">live</sv:value><sv:value length=\"8\">security</sv:value></sv:property></sv:node>\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_gb-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en_gb-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:pl-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:pl-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:pl_pl-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:pl_pl-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-author\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property></sv:node>\n',3,1),(38,'/cmf/sylius/routes','/cmf/sylius','routes','','default','bd74e197-4fdf-4b2e-9204-85fded335beb','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">bd74e197-4fdf-4b2e-9204-85fded335beb</sv:value></sv:property></sv:node>\n',NULL,3,2),(39,'/cmf/sylius/routes/en','/cmf/sylius/routes','en','','default','ea915d4f-c657-4993-93ec-107cd6ce9618','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">ea915d4f-c657-4993-93ec-107cd6ce9618</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.807+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.807+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">9af5eead-fba2-4b95-a247-eb0cc8bd674c</sv:value></sv:property></sv:node>\n',NULL,4,1),(40,'/cmf/sylius/routes/en_us','/cmf/sylius/routes','en_us','','default','bb4e49a3-5ac1-473c-be59-24d8db48ff3a','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">bb4e49a3-5ac1-473c-be59-24d8db48ff3a</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.808+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.808+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">9af5eead-fba2-4b95-a247-eb0cc8bd674c</sv:value></sv:property></sv:node>\n',NULL,4,2),(41,'/cmf/sylius/routes/en_gb','/cmf/sylius/routes','en_gb','','default','f0c65e44-60a5-4033-af1d-ba0e62cc9e90','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">f0c65e44-60a5-4033-af1d-ba0e62cc9e90</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.809+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.809+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">9af5eead-fba2-4b95-a247-eb0cc8bd674c</sv:value></sv:property></sv:node>\n',NULL,4,3),(42,'/cmf/sylius/routes/pl','/cmf/sylius/routes','pl','','default','a5ee253f-78c0-4ae3-98a0-2332526beb87','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">a5ee253f-78c0-4ae3-98a0-2332526beb87</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.810+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.810+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">9af5eead-fba2-4b95-a247-eb0cc8bd674c</sv:value></sv:property></sv:node>\n',NULL,4,4),(43,'/cmf/sylius/routes/pl_pl','/cmf/sylius/routes','pl_pl','','default','ec7e0f15-575a-4a84-a830-9fffd4e3aeb5','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">ec7e0f15-575a-4a84-a830-9fffd4e3aeb5</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.812+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.812+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">9af5eead-fba2-4b95-a247-eb0cc8bd674c</sv:value></sv:property></sv:node>\n',NULL,4,5),(44,'/cmf/sylius','/cmf','sylius','','default_live','454f8184-93dd-4ef7-bad8-b053e29f6d5d','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">454f8184-93dd-4ef7-bad8-b053e29f6d5d</sv:value></sv:property></sv:node>\n',NULL,2,6),(45,'/cmf/sylius/contents','/cmf/sylius','contents','','default_live','9af5eead-fba2-4b95-a247-eb0cc8bd674c','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:home</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">9af5eead-fba2-4b95-a247-eb0cc8bd674c</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">Homepage</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">/</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">homepage</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.770+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.715+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.715+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.715+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"54\">{\"1\":[\"view\",\"add\",\"edit\",\"delete\",\"live\",\"security\"]}</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">Homepage</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_us-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en_us-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en_us-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">/</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1726\">&lt;p style=\"text-align:justify;\"&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec in sem mauris. Vivamus auctor tempor nunc, id suscipit diam semper id. Etiam in metus ante. Donec maximus at sapien quis condimentum. Sed sollicitudin hendrerit vehicula. Cras id ex a massa accumsan faucibus ac quis urna. Donec sed turpis quis purus euismod viverra. Phasellus mauris velit, cursus ac tortor porta, egestas viverra urna. Nunc eget lobortis lectus. Curabitur et ipsum molestie, egestas risus at, dapibus lorem. Fusce placerat libero sit amet suscipit consequat.&lt;/p&gt;&lt;p style=\"text-align:justify;\"&gt;Curabitur sit amet mollis risus. Donec sed sem quis turpis elementum iaculis sed ac nulla. Sed imperdiet mattis quam, a luctus mauris. Quisque neque diam, posuere ut eros vitae, tempus venenatis ligula. Nunc vitae venenatis ante, eget fringilla sapien. Mauris vulputate a nunc sit amet aliquet. Suspendisse nec efficitur neque, sed dignissim sapien. In hac habitasse platea dictumst. Aliquam erat volutpat. Donec non neque vehicula, fermentum nunc sed, fermentum eros. Proin ac nunc id magna lobortis laoreet vitae sed odio. Mauris vel metus dapibus, mattis nibh vel, posuere urna. Nulla porttitor felis eu neque lobortis, ultrices porta tortor placerat. Quisque ullamcorper erat id arcu eleifend, eu ornare orci aliquet.&lt;/p&gt;&lt;p style=\"text-align:justify;\"&gt;Vivamus venenatis metus ut risus laoreet, et tristique tellus ullamcorper. In pretium neque eu tincidunt cursus. Aenean id auctor leo, sed finibus nulla. Interdum et malesuada fames ac ante ipsum primis in faucibus. In hac habitasse platea dictumst. Vivamus eu ante ut nisl egestas scelerisque at quis purus. Nunc ultricies ante eget sapien auctor pellentesque.&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">homepage</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.779+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.774+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T01:04:44.422+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en_us-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_gb-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">Homepage</sv:value></sv:property><sv:property sv:name=\"i18n:en_gb-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_gb-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_gb-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_gb-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_gb-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en_gb-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en_gb-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en_gb-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_gb-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en_gb-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en_gb-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en_gb-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en_gb-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">/</sv:value></sv:property><sv:property sv:name=\"i18n:en_gb-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_gb-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">homepage</sv:value></sv:property><sv:property sv:name=\"i18n:en_gb-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en_gb-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.786+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en_gb-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.782+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en_gb-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.782+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en_gb-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.782+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en_gb-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en_gb-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:pl-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">Homepage</sv:value></sv:property><sv:property sv:name=\"i18n:pl-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:pl-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:pl-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:pl-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:pl-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:pl-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:pl-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:pl-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:pl-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:pl-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:pl-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:pl-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:pl-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">/</sv:value></sv:property><sv:property sv:name=\"i18n:pl-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:pl-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">homepage</sv:value></sv:property><sv:property sv:name=\"i18n:pl-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:pl-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.796+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:pl-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.792+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:pl-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.792+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:pl-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.792+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:pl-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:pl-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:pl_pl-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">Homepage</sv:value></sv:property><sv:property sv:name=\"i18n:pl_pl-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:pl_pl-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:pl_pl-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:pl_pl-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:pl_pl-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:pl_pl-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:pl_pl-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:pl_pl-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:pl_pl-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:pl_pl-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:pl_pl-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:pl_pl-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:pl_pl-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">/</sv:value></sv:property><sv:property sv:name=\"i18n:pl_pl-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:pl_pl-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">homepage</sv:value></sv:property><sv:property sv:name=\"i18n:pl_pl-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:pl_pl-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.803+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:pl_pl-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.799+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:pl_pl-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.799+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:pl_pl-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.799+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:pl_pl-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:pl_pl-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-author\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sec:role-1\" sv:type=\"String\" sv:multi-valued=\"1\"><sv:value length=\"4\">view</sv:value><sv:value length=\"3\">add</sv:value><sv:value length=\"4\">edit</sv:value><sv:value length=\"6\">delete</sv:value><sv:value length=\"4\">live</sv:value><sv:value length=\"8\">security</sv:value></sv:property></sv:node>\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_gb-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en_gb-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:pl-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:pl-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:pl_pl-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:pl_pl-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-author\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property></sv:node>\n',3,3),(46,'/cmf/sylius/routes','/cmf/sylius','routes','','default_live','bd74e197-4fdf-4b2e-9204-85fded335beb','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">bd74e197-4fdf-4b2e-9204-85fded335beb</sv:value></sv:property></sv:node>\n',NULL,3,4),(47,'/cmf/sylius/routes/en','/cmf/sylius/routes','en','','default_live','ea915d4f-c657-4993-93ec-107cd6ce9618','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">ea915d4f-c657-4993-93ec-107cd6ce9618</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.807+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.807+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">9af5eead-fba2-4b95-a247-eb0cc8bd674c</sv:value></sv:property></sv:node>\n',NULL,4,6),(48,'/cmf/sylius/routes/en_us','/cmf/sylius/routes','en_us','','default_live','bb4e49a3-5ac1-473c-be59-24d8db48ff3a','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">bb4e49a3-5ac1-473c-be59-24d8db48ff3a</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.808+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.808+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">9af5eead-fba2-4b95-a247-eb0cc8bd674c</sv:value></sv:property></sv:node>\n',NULL,4,7),(49,'/cmf/sylius/routes/en_gb','/cmf/sylius/routes','en_gb','','default_live','f0c65e44-60a5-4033-af1d-ba0e62cc9e90','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">f0c65e44-60a5-4033-af1d-ba0e62cc9e90</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.809+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.809+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">9af5eead-fba2-4b95-a247-eb0cc8bd674c</sv:value></sv:property></sv:node>\n',NULL,4,8),(50,'/cmf/sylius/routes/pl','/cmf/sylius/routes','pl','','default_live','a5ee253f-78c0-4ae3-98a0-2332526beb87','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">a5ee253f-78c0-4ae3-98a0-2332526beb87</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.810+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.810+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">9af5eead-fba2-4b95-a247-eb0cc8bd674c</sv:value></sv:property></sv:node>\n',NULL,4,9),(51,'/cmf/sylius/routes/pl_pl','/cmf/sylius/routes','pl_pl','','default_live','ec7e0f15-575a-4a84-a830-9fffd4e3aeb5','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">ec7e0f15-575a-4a84-a830-9fffd4e3aeb5</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.812+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-05T11:03:58.812+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">9af5eead-fba2-4b95-a247-eb0cc8bd674c</sv:value></sv:property></sv:node>\n',NULL,4,10),(52,'/cmf/sylius/custom-urls','/cmf/sylius','custom-urls','','default','09592ac1-80c8-4af6-95a6-7eccc4c527a9','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">09592ac1-80c8-4af6-95a6-7eccc4c527a9</sv:value></sv:property></sv:node>\n',NULL,3,5),(53,'/cmf/sylius/custom-urls/items','/cmf/sylius/custom-urls','items','','default','d4b5c8c3-d0af-4cbd-b477-af854b050de5','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">d4b5c8c3-d0af-4cbd-b477-af854b050de5</sv:value></sv:property></sv:node>\n',NULL,4,1),(54,'/cmf/sylius/custom-urls/routes','/cmf/sylius/custom-urls','routes','','default','1d90c4d0-191a-4960-8208-93a4fe239a84','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">1d90c4d0-191a-4960-8208-93a4fe239a84</sv:value></sv:property></sv:node>\n',NULL,4,2),(77,'/cmf/sylius/contents/blog-page-2','/cmf/sylius/contents','blog-page-2','','default','70f15c7e-68c5-4e75-ae5a-1f5748402947','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">70f15c7e-68c5-4e75-ae5a-1f5748402947</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">Blog Page 2</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"12\">/blog-page-2</sv:value></sv:property><sv:property sv:name=\"i18n:en-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1726\">&lt;p style=\"text-align:justify;\"&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec in sem mauris. Vivamus auctor tempor nunc, id suscipit diam semper id. Etiam in metus ante. Donec maximus at sapien quis condimentum. Sed sollicitudin hendrerit vehicula. Cras id ex a massa accumsan faucibus ac quis urna. Donec sed turpis quis purus euismod viverra. Phasellus mauris velit, cursus ac tortor porta, egestas viverra urna. Nunc eget lobortis lectus. Curabitur et ipsum molestie, egestas risus at, dapibus lorem. Fusce placerat libero sit amet suscipit consequat.&lt;/p&gt;&lt;p style=\"text-align:justify;\"&gt;Curabitur sit amet mollis risus. Donec sed sem quis turpis elementum iaculis sed ac nulla. Sed imperdiet mattis quam, a luctus mauris. Quisque neque diam, posuere ut eros vitae, tempus venenatis ligula. Nunc vitae venenatis ante, eget fringilla sapien. Mauris vulputate a nunc sit amet aliquet. Suspendisse nec efficitur neque, sed dignissim sapien. In hac habitasse platea dictumst. Aliquam erat volutpat. Donec non neque vehicula, fermentum nunc sed, fermentum eros. Proin ac nunc id magna lobortis laoreet vitae sed odio. Mauris vel metus dapibus, mattis nibh vel, posuere urna. Nulla porttitor felis eu neque lobortis, ultrices porta tortor placerat. Quisque ullamcorper erat id arcu eleifend, eu ornare orci aliquet.&lt;/p&gt;&lt;p style=\"text-align:justify;\"&gt;Vivamus venenatis metus ut risus laoreet, et tristique tellus ullamcorper. In pretium neque eu tincidunt cursus. Aenean id auctor leo, sed finibus nulla. Interdum et malesuada fames ac ante ipsum primis in faucibus. In hac habitasse platea dictumst. Vivamus eu ante ut nisl egestas scelerisque at quis purus. Nunc ultricies ante eget sapien auctor pellentesque.&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"9\">blog_page</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"54\">{\"1\":[\"view\",\"add\",\"edit\",\"delete\",\"live\",\"security\"]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T00:45:26.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T00:45:26.660+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T07:59:02.138+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T00:45:26.677+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">Blog Page 2</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_us-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en_us-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en_us-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"12\">/blog-page-2</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"9\">blog_page</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T00:45:26.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T00:45:38.555+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-15T03:19:32.331+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en_us-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T00:45:42.759+00:00</sv:value></sv:property><sv:property sv:name=\"sec:role-1\" sv:type=\"String\" sv:multi-valued=\"1\"><sv:value length=\"4\">view</sv:value><sv:value length=\"3\">add</sv:value><sv:value length=\"4\">edit</sv:value><sv:value length=\"6\">delete</sv:value><sv:value length=\"4\">live</sv:value><sv:value length=\"8\">security</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-category_selection\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en_us-links\" sv:type=\"Reference\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en_us-blocks-type#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"4\">text</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-blocks-settings#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-blocks-title#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"3\">ASD</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-blocks-description#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">&lt;p&gt;ASD&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-blocks-image#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"33\">{\"id\":null,\"displayOption\":\"top\"}</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"25\">&lt;p&gt;TEST&lt;/p&gt;&lt;p&gt;TEST123&lt;/p&gt;</sv:value></sv:property></sv:node>\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property></sv:node>\n',4,1),(78,'/cmf/sylius/routes/en/blog-page-2','/cmf/sylius/routes/en','blog-page-2','','default','5d6e70b0-c978-4888-bce0-458b53ece45e','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">5d6e70b0-c978-4888-bce0-458b53ece45e</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T00:45:26.679+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T00:45:26.679+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">70f15c7e-68c5-4e75-ae5a-1f5748402947</sv:value></sv:property></sv:node>\n',NULL,5,1),(79,'/cmf/sylius/contents/blog-page-2','/cmf/sylius/contents','blog-page-2','','default_live','70f15c7e-68c5-4e75-ae5a-1f5748402947','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">70f15c7e-68c5-4e75-ae5a-1f5748402947</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">Blog Page 2</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"12\">/blog-page-2</sv:value></sv:property><sv:property sv:name=\"i18n:en-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1726\">&lt;p style=\"text-align:justify;\"&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec in sem mauris. Vivamus auctor tempor nunc, id suscipit diam semper id. Etiam in metus ante. Donec maximus at sapien quis condimentum. Sed sollicitudin hendrerit vehicula. Cras id ex a massa accumsan faucibus ac quis urna. Donec sed turpis quis purus euismod viverra. Phasellus mauris velit, cursus ac tortor porta, egestas viverra urna. Nunc eget lobortis lectus. Curabitur et ipsum molestie, egestas risus at, dapibus lorem. Fusce placerat libero sit amet suscipit consequat.&lt;/p&gt;&lt;p style=\"text-align:justify;\"&gt;Curabitur sit amet mollis risus. Donec sed sem quis turpis elementum iaculis sed ac nulla. Sed imperdiet mattis quam, a luctus mauris. Quisque neque diam, posuere ut eros vitae, tempus venenatis ligula. Nunc vitae venenatis ante, eget fringilla sapien. Mauris vulputate a nunc sit amet aliquet. Suspendisse nec efficitur neque, sed dignissim sapien. In hac habitasse platea dictumst. Aliquam erat volutpat. Donec non neque vehicula, fermentum nunc sed, fermentum eros. Proin ac nunc id magna lobortis laoreet vitae sed odio. Mauris vel metus dapibus, mattis nibh vel, posuere urna. Nulla porttitor felis eu neque lobortis, ultrices porta tortor placerat. Quisque ullamcorper erat id arcu eleifend, eu ornare orci aliquet.&lt;/p&gt;&lt;p style=\"text-align:justify;\"&gt;Vivamus venenatis metus ut risus laoreet, et tristique tellus ullamcorper. In pretium neque eu tincidunt cursus. Aenean id auctor leo, sed finibus nulla. Interdum et malesuada fames ac ante ipsum primis in faucibus. In hac habitasse platea dictumst. Vivamus eu ante ut nisl egestas scelerisque at quis purus. Nunc ultricies ante eget sapien auctor pellentesque.&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"9\">blog_page</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T00:45:26.677+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T00:45:26.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T00:45:26.660+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T07:59:02.138+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"54\">{\"1\":[\"view\",\"add\",\"edit\",\"delete\",\"live\",\"security\"]}</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"11\">Blog Page 2</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_us-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en_us-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en_us-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"12\">/blog-page-2</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"9\">blog_page</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T00:45:42.759+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T00:45:26.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T00:45:38.555+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-15T03:19:32.331+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en_us-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sec:role-1\" sv:type=\"String\" sv:multi-valued=\"1\"><sv:value length=\"4\">view</sv:value><sv:value length=\"3\">add</sv:value><sv:value length=\"4\">edit</sv:value><sv:value length=\"6\">delete</sv:value><sv:value length=\"4\">live</sv:value><sv:value length=\"8\">security</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-category_selection\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en_us-links\" sv:type=\"Reference\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en_us-blocks-type#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"4\">text</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-blocks-settings#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"2\">[]</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-blocks-title#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"3\">ASD</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-blocks-description#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">&lt;p&gt;ASD&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-blocks-image#0\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"33\">{\"id\":null,\"displayOption\":\"top\"}</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"25\">&lt;p&gt;TEST&lt;/p&gt;&lt;p&gt;TEST123&lt;/p&gt;</sv:value></sv:property></sv:node>\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property></sv:node>\n',4,2),(80,'/cmf/sylius/routes/en/blog-page-2','/cmf/sylius/routes/en','blog-page-2','','default_live','5d6e70b0-c978-4888-bce0-458b53ece45e','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">5d6e70b0-c978-4888-bce0-458b53ece45e</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T00:45:26.679+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T00:45:26.679+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">70f15c7e-68c5-4e75-ae5a-1f5748402947</sv:value></sv:property></sv:node>\n',NULL,5,2),(81,'/cmf/sylius/routes/en_us/blog-page-2','/cmf/sylius/routes/en_us','blog-page-2','','default','b1a458a9-87a4-48f8-a94c-a30aef2add75','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">b1a458a9-87a4-48f8-a94c-a30aef2add75</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T00:45:42.765+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T00:45:42.765+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">70f15c7e-68c5-4e75-ae5a-1f5748402947</sv:value></sv:property></sv:node>\n',NULL,5,1),(82,'/cmf/sylius/routes/en_us/blog-page-2','/cmf/sylius/routes/en_us','blog-page-2','','default_live','b1a458a9-87a4-48f8-a94c-a30aef2add75','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">b1a458a9-87a4-48f8-a94c-a30aef2add75</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T00:45:42.765+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T00:45:42.765+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">70f15c7e-68c5-4e75-ae5a-1f5748402947</sv:value></sv:property></sv:node>\n',NULL,5,2),(83,'/cmf/sylius/contents/blog-page-2/blog-subpage-1','/cmf/sylius/contents/blog-page-2','blog-subpage-1','','default','5356ad8d-a3fd-4c8e-a1c4-2fc8189fba2a','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">5356ad8d-a3fd-4c8e-a1c4-2fc8189fba2a</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"14\">Blog Subpage 1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"27\">/blog-page-2/blog-subpage-1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1726\">&lt;p style=\"text-align:justify;\"&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec in sem mauris. Vivamus auctor tempor nunc, id suscipit diam semper id. Etiam in metus ante. Donec maximus at sapien quis condimentum. Sed sollicitudin hendrerit vehicula. Cras id ex a massa accumsan faucibus ac quis urna. Donec sed turpis quis purus euismod viverra. Phasellus mauris velit, cursus ac tortor porta, egestas viverra urna. Nunc eget lobortis lectus. Curabitur et ipsum molestie, egestas risus at, dapibus lorem. Fusce placerat libero sit amet suscipit consequat.&lt;/p&gt;&lt;p style=\"text-align:justify;\"&gt;Curabitur sit amet mollis risus. Donec sed sem quis turpis elementum iaculis sed ac nulla. Sed imperdiet mattis quam, a luctus mauris. Quisque neque diam, posuere ut eros vitae, tempus venenatis ligula. Nunc vitae venenatis ante, eget fringilla sapien. Mauris vulputate a nunc sit amet aliquet. Suspendisse nec efficitur neque, sed dignissim sapien. In hac habitasse platea dictumst. Aliquam erat volutpat. Donec non neque vehicula, fermentum nunc sed, fermentum eros. Proin ac nunc id magna lobortis laoreet vitae sed odio. Mauris vel metus dapibus, mattis nibh vel, posuere urna. Nulla porttitor felis eu neque lobortis, ultrices porta tortor placerat. Quisque ullamcorper erat id arcu eleifend, eu ornare orci aliquet.&lt;/p&gt;&lt;p style=\"text-align:justify;\"&gt;Vivamus venenatis metus ut risus laoreet, et tristique tellus ullamcorper. In pretium neque eu tincidunt cursus. Aenean id auctor leo, sed finibus nulla. Interdum et malesuada fames ac ante ipsum primis in faucibus. In hac habitasse platea dictumst. Vivamus eu ante ut nisl egestas scelerisque at quis purus. Nunc ultricies ante eget sapien auctor pellentesque.&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">default</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"54\">{\"1\":[\"view\",\"add\",\"edit\",\"delete\",\"live\",\"security\"]}</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T00:47:17.239+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-author\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T00:47:17.245+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T00:47:17.245+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en_us-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T00:47:17.269+00:00</sv:value></sv:property><sv:property sv:name=\"sec:role-1\" sv:type=\"String\" sv:multi-valued=\"1\"><sv:value length=\"4\">view</sv:value><sv:value length=\"3\">add</sv:value><sv:value length=\"4\">edit</sv:value><sv:value length=\"6\">delete</sv:value><sv:value length=\"4\">live</sv:value><sv:value length=\"8\">security</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"14\">Blog Subpage 1</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"27\">/blog-page-2/blog-subpage-1</sv:value></sv:property><sv:property sv:name=\"i18n:en-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1726\">&lt;p style=\"text-align:justify;\"&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec in sem mauris. Vivamus auctor tempor nunc, id suscipit diam semper id. Etiam in metus ante. Donec maximus at sapien quis condimentum. Sed sollicitudin hendrerit vehicula. Cras id ex a massa accumsan faucibus ac quis urna. Donec sed turpis quis purus euismod viverra. Phasellus mauris velit, cursus ac tortor porta, egestas viverra urna. Nunc eget lobortis lectus. Curabitur et ipsum molestie, egestas risus at, dapibus lorem. Fusce placerat libero sit amet suscipit consequat.&lt;/p&gt;&lt;p style=\"text-align:justify;\"&gt;Curabitur sit amet mollis risus. Donec sed sem quis turpis elementum iaculis sed ac nulla. Sed imperdiet mattis quam, a luctus mauris. Quisque neque diam, posuere ut eros vitae, tempus venenatis ligula. Nunc vitae venenatis ante, eget fringilla sapien. Mauris vulputate a nunc sit amet aliquet. Suspendisse nec efficitur neque, sed dignissim sapien. In hac habitasse platea dictumst. Aliquam erat volutpat. Donec non neque vehicula, fermentum nunc sed, fermentum eros. Proin ac nunc id magna lobortis laoreet vitae sed odio. Mauris vel metus dapibus, mattis nibh vel, posuere urna. Nulla porttitor felis eu neque lobortis, ultrices porta tortor placerat. Quisque ullamcorper erat id arcu eleifend, eu ornare orci aliquet.&lt;/p&gt;&lt;p style=\"text-align:justify;\"&gt;Vivamus venenatis metus ut risus laoreet, et tristique tellus ullamcorper. In pretium neque eu tincidunt cursus. Aenean id auctor leo, sed finibus nulla. Interdum et malesuada fames ac ante ipsum primis in faucibus. In hac habitasse platea dictumst. Vivamus eu ante ut nisl egestas scelerisque at quis purus. Nunc ultricies ante eget sapien auctor pellentesque.&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">default</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T00:47:17.239+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T01:07:52.690+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T01:07:52.690+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property></sv:node>\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en_us-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-author\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property></sv:node>\n',5,1),(84,'/cmf/sylius/routes/en_us/blog-page-2/blog-subpage-1','/cmf/sylius/routes/en_us/blog-page-2','blog-subpage-1','','default','5cb3ab27-8135-46ab-ad14-464d70c23f59','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">5cb3ab27-8135-46ab-ad14-464d70c23f59</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T00:47:17.271+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T00:47:17.271+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">5356ad8d-a3fd-4c8e-a1c4-2fc8189fba2a</sv:value></sv:property></sv:node>\n',NULL,6,1),(85,'/cmf/sylius/contents/blog-page-2/blog-subpage-1','/cmf/sylius/contents/blog-page-2','blog-subpage-1','','default_live','5356ad8d-a3fd-4c8e-a1c4-2fc8189fba2a','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">5356ad8d-a3fd-4c8e-a1c4-2fc8189fba2a</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"14\">Blog Subpage 1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_us-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en_us-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en_us-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"27\">/blog-page-2/blog-subpage-1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1726\">&lt;p style=\"text-align:justify;\"&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec in sem mauris. Vivamus auctor tempor nunc, id suscipit diam semper id. Etiam in metus ante. Donec maximus at sapien quis condimentum. Sed sollicitudin hendrerit vehicula. Cras id ex a massa accumsan faucibus ac quis urna. Donec sed turpis quis purus euismod viverra. Phasellus mauris velit, cursus ac tortor porta, egestas viverra urna. Nunc eget lobortis lectus. Curabitur et ipsum molestie, egestas risus at, dapibus lorem. Fusce placerat libero sit amet suscipit consequat.&lt;/p&gt;&lt;p style=\"text-align:justify;\"&gt;Curabitur sit amet mollis risus. Donec sed sem quis turpis elementum iaculis sed ac nulla. Sed imperdiet mattis quam, a luctus mauris. Quisque neque diam, posuere ut eros vitae, tempus venenatis ligula. Nunc vitae venenatis ante, eget fringilla sapien. Mauris vulputate a nunc sit amet aliquet. Suspendisse nec efficitur neque, sed dignissim sapien. In hac habitasse platea dictumst. Aliquam erat volutpat. Donec non neque vehicula, fermentum nunc sed, fermentum eros. Proin ac nunc id magna lobortis laoreet vitae sed odio. Mauris vel metus dapibus, mattis nibh vel, posuere urna. Nulla porttitor felis eu neque lobortis, ultrices porta tortor placerat. Quisque ullamcorper erat id arcu eleifend, eu ornare orci aliquet.&lt;/p&gt;&lt;p style=\"text-align:justify;\"&gt;Vivamus venenatis metus ut risus laoreet, et tristique tellus ullamcorper. In pretium neque eu tincidunt cursus. Aenean id auctor leo, sed finibus nulla. Interdum et malesuada fames ac ante ipsum primis in faucibus. In hac habitasse platea dictumst. Vivamus eu ante ut nisl egestas scelerisque at quis purus. Nunc ultricies ante eget sapien auctor pellentesque.&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">default</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T00:47:17.269+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T00:47:17.239+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-author\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T00:47:17.245+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T00:47:17.245+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en_us-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property><sv:property sv:name=\"sec:role-1\" sv:type=\"String\" sv:multi-valued=\"1\"><sv:value length=\"4\">view</sv:value><sv:value length=\"3\">add</sv:value><sv:value length=\"4\">edit</sv:value><sv:value length=\"6\">delete</sv:value><sv:value length=\"4\">live</sv:value><sv:value length=\"8\">security</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"54\">{\"1\":[\"view\",\"add\",\"edit\",\"delete\",\"live\",\"security\"]}</sv:value></sv:property></sv:node>\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en_us-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-author\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">20</sv:value></sv:property></sv:node>\n',5,2),(86,'/cmf/sylius/routes/en_us/blog-page-2/blog-subpage-1','/cmf/sylius/routes/en_us/blog-page-2','blog-subpage-1','','default_live','5cb3ab27-8135-46ab-ad14-464d70c23f59','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">5cb3ab27-8135-46ab-ad14-464d70c23f59</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T00:47:17.271+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T00:47:17.271+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">5356ad8d-a3fd-4c8e-a1c4-2fc8189fba2a</sv:value></sv:property></sv:node>\n',NULL,6,2),(87,'/cmf/sylius/contents/homepage','/cmf/sylius/contents','homepage','','default','ca47175a-de3a-4bc0-8949-d16b77050c56','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">ca47175a-de3a-4bc0-8949-d16b77050c56</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">Homepage</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"9\">/homepage</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1726\">&lt;p style=\"text-align:justify;\"&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec in sem mauris. Vivamus auctor tempor nunc, id suscipit diam semper id. Etiam in metus ante. Donec maximus at sapien quis condimentum. Sed sollicitudin hendrerit vehicula. Cras id ex a massa accumsan faucibus ac quis urna. Donec sed turpis quis purus euismod viverra. Phasellus mauris velit, cursus ac tortor porta, egestas viverra urna. Nunc eget lobortis lectus. Curabitur et ipsum molestie, egestas risus at, dapibus lorem. Fusce placerat libero sit amet suscipit consequat.&lt;/p&gt;&lt;p style=\"text-align:justify;\"&gt;Curabitur sit amet mollis risus. Donec sed sem quis turpis elementum iaculis sed ac nulla. Sed imperdiet mattis quam, a luctus mauris. Quisque neque diam, posuere ut eros vitae, tempus venenatis ligula. Nunc vitae venenatis ante, eget fringilla sapien. Mauris vulputate a nunc sit amet aliquet. Suspendisse nec efficitur neque, sed dignissim sapien. In hac habitasse platea dictumst. Aliquam erat volutpat. Donec non neque vehicula, fermentum nunc sed, fermentum eros. Proin ac nunc id magna lobortis laoreet vitae sed odio. Mauris vel metus dapibus, mattis nibh vel, posuere urna. Nulla porttitor felis eu neque lobortis, ultrices porta tortor placerat. Quisque ullamcorper erat id arcu eleifend, eu ornare orci aliquet.&lt;/p&gt;&lt;p style=\"text-align:justify;\"&gt;Vivamus venenatis metus ut risus laoreet, et tristique tellus ullamcorper. In pretium neque eu tincidunt cursus. Aenean id auctor leo, sed finibus nulla. Interdum et malesuada fames ac ante ipsum primis in faucibus. In hac habitasse platea dictumst. Vivamus eu ante ut nisl egestas scelerisque at quis purus. Nunc ultricies ante eget sapien auctor pellentesque.&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">default</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"54\">{\"1\":[\"view\",\"add\",\"edit\",\"delete\",\"live\",\"security\"]}</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T00:47:54.570+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-author\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T00:47:54.576+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T00:47:54.576+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en_us-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">30</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T00:47:54.593+00:00</sv:value></sv:property><sv:property sv:name=\"sec:role-1\" sv:type=\"String\" sv:multi-valued=\"1\"><sv:value length=\"4\">view</sv:value><sv:value length=\"3\">add</sv:value><sv:value length=\"4\">edit</sv:value><sv:value length=\"6\">delete</sv:value><sv:value length=\"4\">live</sv:value><sv:value length=\"8\">security</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">Homepage</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"9\">/homepage</sv:value></sv:property><sv:property sv:name=\"i18n:en-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1720\">&lt;p style=\"text-align:justify;\"&gt;Losum dolor sit amet, consectetur adipiscing elit. Donec in sem mauris. Vivamus auctor tempor nunc, id suscipit diam semper id. Etiam in metus ante. Donec maximus at sapien quis condimentum. Sed sollicitudin hendrerit vehicula. Cras id ex a massa accumsan faucibus ac quis urna. Donec sed turpis quis purus euismod viverra. Phasellus mauris velit, cursus ac tortor porta, egestas viverra urna. Nunc eget lobortis lectus. Curabitur et ipsum molestie, egestas risus at, dapibus lorem. Fusce placerat libero sit amet suscipit consequat.&lt;/p&gt;&lt;p style=\"text-align:justify;\"&gt;Curabitur sit amet mollis risus. Donec sed sem quis turpis elementum iaculis sed ac nulla. Sed imperdiet mattis quam, a luctus mauris. Quisque neque diam, posuere ut eros vitae, tempus venenatis ligula. Nunc vitae venenatis ante, eget fringilla sapien. Mauris vulputate a nunc sit amet aliquet. Suspendisse nec efficitur neque, sed dignissim sapien. In hac habitasse platea dictumst. Aliquam erat volutpat. Donec non neque vehicula, fermentum nunc sed, fermentum eros. Proin ac nunc id magna lobortis laoreet vitae sed odio. Mauris vel metus dapibus, mattis nibh vel, posuere urna. Nulla porttitor felis eu neque lobortis, ultrices porta tortor placerat. Quisque ullamcorper erat id arcu eleifend, eu ornare orci aliquet.&lt;/p&gt;&lt;p style=\"text-align:justify;\"&gt;Vivamus venenatis metus ut risus laoreet, et tristique tellus ullamcorper. In pretium neque eu tincidunt cursus. Aenean id auctor leo, sed finibus nulla. Interdum et malesuada fames ac ante ipsum primis in faucibus. In hac habitasse platea dictumst. Vivamus eu ante ut nisl egestas scelerisque at quis purus. Nunc ultricies ante eget sapien auctor pellentesque.&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">default</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T00:47:54.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T01:16:03.460+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T01:27:16.722+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T01:27:16.733+00:00</sv:value></sv:property></sv:node>\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en_us-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-author\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">30</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property></sv:node>\n',4,3),(88,'/cmf/sylius/routes/en_us/homepage','/cmf/sylius/routes/en_us','homepage','','default','8ea30128-ab68-45a3-aefc-589ec4ac20a1','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">8ea30128-ab68-45a3-aefc-589ec4ac20a1</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T00:47:54.595+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T00:47:54.595+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">ca47175a-de3a-4bc0-8949-d16b77050c56</sv:value></sv:property></sv:node>\n',NULL,5,3),(89,'/cmf/sylius/contents/homepage','/cmf/sylius/contents','homepage','','default_live','ca47175a-de3a-4bc0-8949-d16b77050c56','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">ca47175a-de3a-4bc0-8949-d16b77050c56</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">Homepage</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_us-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en_us-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en_us-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"9\">/homepage</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1726\">&lt;p style=\"text-align:justify;\"&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec in sem mauris. Vivamus auctor tempor nunc, id suscipit diam semper id. Etiam in metus ante. Donec maximus at sapien quis condimentum. Sed sollicitudin hendrerit vehicula. Cras id ex a massa accumsan faucibus ac quis urna. Donec sed turpis quis purus euismod viverra. Phasellus mauris velit, cursus ac tortor porta, egestas viverra urna. Nunc eget lobortis lectus. Curabitur et ipsum molestie, egestas risus at, dapibus lorem. Fusce placerat libero sit amet suscipit consequat.&lt;/p&gt;&lt;p style=\"text-align:justify;\"&gt;Curabitur sit amet mollis risus. Donec sed sem quis turpis elementum iaculis sed ac nulla. Sed imperdiet mattis quam, a luctus mauris. Quisque neque diam, posuere ut eros vitae, tempus venenatis ligula. Nunc vitae venenatis ante, eget fringilla sapien. Mauris vulputate a nunc sit amet aliquet. Suspendisse nec efficitur neque, sed dignissim sapien. In hac habitasse platea dictumst. Aliquam erat volutpat. Donec non neque vehicula, fermentum nunc sed, fermentum eros. Proin ac nunc id magna lobortis laoreet vitae sed odio. Mauris vel metus dapibus, mattis nibh vel, posuere urna. Nulla porttitor felis eu neque lobortis, ultrices porta tortor placerat. Quisque ullamcorper erat id arcu eleifend, eu ornare orci aliquet.&lt;/p&gt;&lt;p style=\"text-align:justify;\"&gt;Vivamus venenatis metus ut risus laoreet, et tristique tellus ullamcorper. In pretium neque eu tincidunt cursus. Aenean id auctor leo, sed finibus nulla. Interdum et malesuada fames ac ante ipsum primis in faucibus. In hac habitasse platea dictumst. Vivamus eu ante ut nisl egestas scelerisque at quis purus. Nunc ultricies ante eget sapien auctor pellentesque.&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">default</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T00:47:54.593+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T00:47:54.570+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-author\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T00:47:54.576+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T00:47:54.576+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en_us-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">30</sv:value></sv:property><sv:property sv:name=\"sec:role-1\" sv:type=\"String\" sv:multi-valued=\"1\"><sv:value length=\"4\">view</sv:value><sv:value length=\"3\">add</sv:value><sv:value length=\"4\">edit</sv:value><sv:value length=\"6\">delete</sv:value><sv:value length=\"4\">live</sv:value><sv:value length=\"8\">security</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"54\">{\"1\":[\"view\",\"add\",\"edit\",\"delete\",\"live\",\"security\"]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">Homepage</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"9\">/homepage</sv:value></sv:property><sv:property sv:name=\"i18n:en-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1720\">&lt;p style=\"text-align:justify;\"&gt;Losum dolor sit amet, consectetur adipiscing elit. Donec in sem mauris. Vivamus auctor tempor nunc, id suscipit diam semper id. Etiam in metus ante. Donec maximus at sapien quis condimentum. Sed sollicitudin hendrerit vehicula. Cras id ex a massa accumsan faucibus ac quis urna. Donec sed turpis quis purus euismod viverra. Phasellus mauris velit, cursus ac tortor porta, egestas viverra urna. Nunc eget lobortis lectus. Curabitur et ipsum molestie, egestas risus at, dapibus lorem. Fusce placerat libero sit amet suscipit consequat.&lt;/p&gt;&lt;p style=\"text-align:justify;\"&gt;Curabitur sit amet mollis risus. Donec sed sem quis turpis elementum iaculis sed ac nulla. Sed imperdiet mattis quam, a luctus mauris. Quisque neque diam, posuere ut eros vitae, tempus venenatis ligula. Nunc vitae venenatis ante, eget fringilla sapien. Mauris vulputate a nunc sit amet aliquet. Suspendisse nec efficitur neque, sed dignissim sapien. In hac habitasse platea dictumst. Aliquam erat volutpat. Donec non neque vehicula, fermentum nunc sed, fermentum eros. Proin ac nunc id magna lobortis laoreet vitae sed odio. Mauris vel metus dapibus, mattis nibh vel, posuere urna. Nulla porttitor felis eu neque lobortis, ultrices porta tortor placerat. Quisque ullamcorper erat id arcu eleifend, eu ornare orci aliquet.&lt;/p&gt;&lt;p style=\"text-align:justify;\"&gt;Vivamus venenatis metus ut risus laoreet, et tristique tellus ullamcorper. In pretium neque eu tincidunt cursus. Aenean id auctor leo, sed finibus nulla. Interdum et malesuada fames ac ante ipsum primis in faucibus. In hac habitasse platea dictumst. Vivamus eu ante ut nisl egestas scelerisque at quis purus. Nunc ultricies ante eget sapien auctor pellentesque.&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">default</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T01:27:16.733+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T00:47:54.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T01:16:03.460+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T01:27:16.722+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property></sv:node>\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en_us-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-author\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">30</sv:value></sv:property><sv:property sv:name=\"i18n:en-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property></sv:node>\n',4,4),(90,'/cmf/sylius/routes/en_us/homepage','/cmf/sylius/routes/en_us','homepage','','default_live','8ea30128-ab68-45a3-aefc-589ec4ac20a1','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">8ea30128-ab68-45a3-aefc-589ec4ac20a1</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T00:47:54.595+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T00:47:54.595+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">ca47175a-de3a-4bc0-8949-d16b77050c56</sv:value></sv:property></sv:node>\n',NULL,5,4),(91,'/cmf/sylius/contents/default','/cmf/sylius/contents','default','','default','33d30633-4f77-4b86-a042-9932e88d47e2','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">33d30633-4f77-4b86-a042-9932e88d47e2</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">Default</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">/default</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1726\">&lt;p style=\"text-align:justify;\"&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec in sem mauris. Vivamus auctor tempor nunc, id suscipit diam semper id. Etiam in metus ante. Donec maximus at sapien quis condimentum. Sed sollicitudin hendrerit vehicula. Cras id ex a massa accumsan faucibus ac quis urna. Donec sed turpis quis purus euismod viverra. Phasellus mauris velit, cursus ac tortor porta, egestas viverra urna. Nunc eget lobortis lectus. Curabitur et ipsum molestie, egestas risus at, dapibus lorem. Fusce placerat libero sit amet suscipit consequat.&lt;/p&gt;&lt;p style=\"text-align:justify;\"&gt;Curabitur sit amet mollis risus. Donec sed sem quis turpis elementum iaculis sed ac nulla. Sed imperdiet mattis quam, a luctus mauris. Quisque neque diam, posuere ut eros vitae, tempus venenatis ligula. Nunc vitae venenatis ante, eget fringilla sapien. Mauris vulputate a nunc sit amet aliquet. Suspendisse nec efficitur neque, sed dignissim sapien. In hac habitasse platea dictumst. Aliquam erat volutpat. Donec non neque vehicula, fermentum nunc sed, fermentum eros. Proin ac nunc id magna lobortis laoreet vitae sed odio. Mauris vel metus dapibus, mattis nibh vel, posuere urna. Nulla porttitor felis eu neque lobortis, ultrices porta tortor placerat. Quisque ullamcorper erat id arcu eleifend, eu ornare orci aliquet.&lt;/p&gt;&lt;p style=\"text-align:justify;\"&gt;Vivamus venenatis metus ut risus laoreet, et tristique tellus ullamcorper. In pretium neque eu tincidunt cursus. Aenean id auctor leo, sed finibus nulla. Interdum et malesuada fames ac ante ipsum primis in faucibus. In hac habitasse platea dictumst. Vivamus eu ante ut nisl egestas scelerisque at quis purus. Nunc ultricies ante eget sapien auctor pellentesque.&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"9\">blog_page</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"54\">{\"1\":[\"view\",\"add\",\"edit\",\"delete\",\"live\",\"security\"]}</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T01:03:21.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T01:03:21.837+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T08:31:34.407+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en_us-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">40</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T01:03:21.885+00:00</sv:value></sv:property><sv:property sv:name=\"sec:role-1\" sv:type=\"String\" sv:multi-valued=\"1\"><sv:value length=\"4\">view</sv:value><sv:value length=\"3\">add</sv:value><sv:value length=\"4\">edit</sv:value><sv:value length=\"6\">delete</sv:value><sv:value length=\"4\">live</sv:value><sv:value length=\"8\">security</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_us-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en_us-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en_us-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property></sv:node>\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en_us-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">40</sv:value></sv:property></sv:node>\n',4,5),(92,'/cmf/sylius/routes/en_us/default','/cmf/sylius/routes/en_us','default','','default','073dfc52-7496-4ce9-a219-7e141790275e','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">073dfc52-7496-4ce9-a219-7e141790275e</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T01:03:21.888+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T01:03:21.888+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">33d30633-4f77-4b86-a042-9932e88d47e2</sv:value></sv:property></sv:node>\n',NULL,5,5),(93,'/cmf/sylius/contents/default','/cmf/sylius/contents','default','','default_live','33d30633-4f77-4b86-a042-9932e88d47e2','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:page</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">33d30633-4f77-4b86-a042-9932e88d47e2</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"7\">Default</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-title\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-keywords\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-canonicalUrl\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-noIndex\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-noFollow\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-seo-hideInSitemap\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-excerpt-description\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"0\"></sv:value></sv:property><sv:property sv:name=\"i18n:en_us-excerpt-categories\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en_us-excerpt-tags\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en_us-excerpt-icon\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-excerpt-images\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"10\">{\"ids\":[]}</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-url\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"8\">/default</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-article\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1726\">&lt;p style=\"text-align:justify;\"&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec in sem mauris. Vivamus auctor tempor nunc, id suscipit diam semper id. Etiam in metus ante. Donec maximus at sapien quis condimentum. Sed sollicitudin hendrerit vehicula. Cras id ex a massa accumsan faucibus ac quis urna. Donec sed turpis quis purus euismod viverra. Phasellus mauris velit, cursus ac tortor porta, egestas viverra urna. Nunc eget lobortis lectus. Curabitur et ipsum molestie, egestas risus at, dapibus lorem. Fusce placerat libero sit amet suscipit consequat.&lt;/p&gt;&lt;p style=\"text-align:justify;\"&gt;Curabitur sit amet mollis risus. Donec sed sem quis turpis elementum iaculis sed ac nulla. Sed imperdiet mattis quam, a luctus mauris. Quisque neque diam, posuere ut eros vitae, tempus venenatis ligula. Nunc vitae venenatis ante, eget fringilla sapien. Mauris vulputate a nunc sit amet aliquet. Suspendisse nec efficitur neque, sed dignissim sapien. In hac habitasse platea dictumst. Aliquam erat volutpat. Donec non neque vehicula, fermentum nunc sed, fermentum eros. Proin ac nunc id magna lobortis laoreet vitae sed odio. Mauris vel metus dapibus, mattis nibh vel, posuere urna. Nulla porttitor felis eu neque lobortis, ultrices porta tortor placerat. Quisque ullamcorper erat id arcu eleifend, eu ornare orci aliquet.&lt;/p&gt;&lt;p style=\"text-align:justify;\"&gt;Vivamus venenatis metus ut risus laoreet, et tristique tellus ullamcorper. In pretium neque eu tincidunt cursus. Aenean id auctor leo, sed finibus nulla. Interdum et malesuada fames ac ante ipsum primis in faucibus. In hac habitasse platea dictumst. Vivamus eu ante ut nisl egestas scelerisque at quis purus. Nunc ultricies ante eget sapien auctor pellentesque.&lt;/p&gt;</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-template\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"9\">blog_page</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-published\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T01:03:21.885+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-authored\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T01:03:21.000+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-author\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T01:03:21.837+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T08:31:34.407+00:00</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-navContexts\" sv:type=\"String\" sv:multi-valued=\"1\"/><sv:property sv:name=\"i18n:en_us-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">40</sv:value></sv:property><sv:property sv:name=\"sec:role-1\" sv:type=\"String\" sv:multi-valued=\"1\"><sv:value length=\"4\">view</sv:value><sv:value length=\"3\">add</sv:value><sv:value length=\"4\">edit</sv:value><sv:value length=\"6\">delete</sv:value><sv:value length=\"4\">live</sv:value><sv:value length=\"8\">security</sv:value></sv:property><sv:property sv:name=\"sec:permissions\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"54\">{\"1\":[\"view\",\"add\",\"edit\",\"delete\",\"live\",\"security\"]}</sv:value></sv:property></sv:node>\n','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"i18n:en_us-state\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">2</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-creator\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-changer\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"i18n:en_us-nodeType\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"1\">1</sv:value></sv:property><sv:property sv:name=\"sulu:order\" sv:type=\"Long\" sv:multi-valued=\"0\"><sv:value length=\"2\">40</sv:value></sv:property></sv:node>\n',4,6),(94,'/cmf/sylius/routes/en_us/default','/cmf/sylius/routes/en_us','default','','default_live','073dfc52-7496-4ce9-a219-7e141790275e','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">073dfc52-7496-4ce9-a219-7e141790275e</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T01:03:21.888+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T01:03:21.888+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">33d30633-4f77-4b86-a042-9932e88d47e2</sv:value></sv:property></sv:node>\n',NULL,5,6),(95,'/cmf/sylius/routes/en/homepage','/cmf/sylius/routes/en','homepage','','default','8a43685a-17d8-45cf-b6a5-782a8650915c','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">8a43685a-17d8-45cf-b6a5-782a8650915c</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T01:27:16.749+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T01:27:16.749+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">ca47175a-de3a-4bc0-8949-d16b77050c56</sv:value></sv:property></sv:node>\n',NULL,5,3),(96,'/cmf/sylius/routes/en/homepage','/cmf/sylius/routes/en','homepage','','default_live','8a43685a-17d8-45cf-b6a5-782a8650915c','nt:unstructured','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<sv:node xmlns:mix=\"http://www.jcp.org/jcr/mix/1.0\" xmlns:nt=\"http://www.jcp.org/jcr/nt/1.0\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:jcr=\"http://www.jcp.org/jcr/1.0\" xmlns:sv=\"http://www.jcp.org/jcr/sv/1.0\" xmlns:rep=\"internal\"><sv:property sv:name=\"jcr:primaryType\" sv:type=\"Name\" sv:multi-valued=\"0\"><sv:value length=\"15\">nt:unstructured</sv:value></sv:property><sv:property sv:name=\"jcr:mixinTypes\" sv:type=\"Name\" sv:multi-valued=\"1\"><sv:value length=\"17\">mix:referenceable</sv:value><sv:value length=\"9\">sulu:path</sv:value></sv:property><sv:property sv:name=\"jcr:uuid\" sv:type=\"String\" sv:multi-valued=\"0\"><sv:value length=\"36\">8a43685a-17d8-45cf-b6a5-782a8650915c</sv:value></sv:property><sv:property sv:name=\"sulu:history\" sv:type=\"Boolean\" sv:multi-valued=\"0\"><sv:value length=\"0\">0</sv:value></sv:property><sv:property sv:name=\"sulu:created\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T01:27:16.749+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:changed\" sv:type=\"Date\" sv:multi-valued=\"0\"><sv:value length=\"29\">2024-03-12T01:27:16.749+00:00</sv:value></sv:property><sv:property sv:name=\"sulu:content\" sv:type=\"Reference\" sv:multi-valued=\"0\"><sv:value length=\"36\">ca47175a-de3a-4bc0-8949-d16b77050c56</sv:value></sv:property></sv:node>\n',NULL,5,4);
/*!40000 ALTER TABLE `phpcr_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpcr_nodes_references`
--

DROP TABLE IF EXISTS `phpcr_nodes_references`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phpcr_nodes_references` (
  `source_id` int NOT NULL,
  `source_property_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_id` int NOT NULL,
  PRIMARY KEY (`source_id`,`source_property_name`,`target_id`),
  KEY `IDX_F3BF7E1158E0B66` (`target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpcr_nodes_references`
--

LOCK TABLES `phpcr_nodes_references` WRITE;
/*!40000 ALTER TABLE `phpcr_nodes_references` DISABLE KEYS */;
INSERT INTO `phpcr_nodes_references` VALUES (7,'sulu:content',5),(12,'sulu:content',10),(39,'sulu:content',37),(40,'sulu:content',37),(41,'sulu:content',37),(42,'sulu:content',37),(43,'sulu:content',37),(47,'sulu:content',45),(48,'sulu:content',45),(49,'sulu:content',45),(50,'sulu:content',45),(51,'sulu:content',45),(78,'sulu:content',77),(81,'sulu:content',77),(80,'sulu:content',79),(82,'sulu:content',79),(84,'sulu:content',83),(86,'sulu:content',85),(88,'sulu:content',87),(95,'sulu:content',87),(90,'sulu:content',89),(96,'sulu:content',89),(92,'sulu:content',91),(94,'sulu:content',93);
/*!40000 ALTER TABLE `phpcr_nodes_references` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpcr_nodes_weakreferences`
--

DROP TABLE IF EXISTS `phpcr_nodes_weakreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phpcr_nodes_weakreferences` (
  `source_id` int NOT NULL,
  `source_property_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_id` int NOT NULL,
  PRIMARY KEY (`source_id`,`source_property_name`,`target_id`),
  KEY `IDX_F0E4F6FA158E0B66` (`target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpcr_nodes_weakreferences`
--

LOCK TABLES `phpcr_nodes_weakreferences` WRITE;
/*!40000 ALTER TABLE `phpcr_nodes_weakreferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `phpcr_nodes_weakreferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpcr_type_childs`
--

DROP TABLE IF EXISTS `phpcr_type_childs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phpcr_type_childs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `node_type_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `protected` tinyint(1) NOT NULL,
  `auto_created` tinyint(1) NOT NULL,
  `mandatory` tinyint(1) NOT NULL,
  `on_parent_version` int NOT NULL,
  `primary_types` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpcr_type_childs`
--

LOCK TABLES `phpcr_type_childs` WRITE;
/*!40000 ALTER TABLE `phpcr_type_childs` DISABLE KEYS */;
INSERT INTO `phpcr_type_childs` VALUES (1,10,'*',0,0,0,1,'phpcrmig:version',NULL);
/*!40000 ALTER TABLE `phpcr_type_childs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpcr_type_nodes`
--

DROP TABLE IF EXISTS `phpcr_type_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phpcr_type_nodes` (
  `node_type_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `supertypes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_abstract` tinyint(1) NOT NULL,
  `is_mixin` tinyint(1) NOT NULL,
  `queryable` tinyint(1) NOT NULL,
  `orderable_child_nodes` tinyint(1) NOT NULL,
  `primary_item` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`node_type_id`),
  UNIQUE KEY `UNIQ_34B0A8095E237E06` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpcr_type_nodes`
--

LOCK TABLES `phpcr_type_nodes` WRITE;
/*!40000 ALTER TABLE `phpcr_type_nodes` DISABLE KEYS */;
INSERT INTO `phpcr_type_nodes` VALUES (1,'sulu:base','mix:referenceable',1,1,0,0,NULL),(2,'sulu:path','sulu:base',0,1,0,0,NULL),(3,'sulu:content','sulu:base',0,1,0,0,NULL),(4,'sulu:snippet','sulu:content',0,1,0,0,NULL),(5,'sulu:page','sulu:content',0,1,0,0,NULL),(6,'sulu:home','sulu:content',0,1,0,0,NULL),(7,'sulu:custom_url','sulu:base',0,1,0,0,NULL),(8,'sulu:custom_url_route','sulu:base',0,1,0,0,NULL),(9,'phpcrmig:version','nt:base mix:created',0,0,1,0,NULL),(10,'phpcrmig:versions','nt:base',0,0,1,0,NULL);
/*!40000 ALTER TABLE `phpcr_type_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpcr_type_props`
--

DROP TABLE IF EXISTS `phpcr_type_props`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phpcr_type_props` (
  `node_type_id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `protected` tinyint(1) NOT NULL,
  `auto_created` tinyint(1) NOT NULL,
  `mandatory` tinyint(1) NOT NULL,
  `on_parent_version` int NOT NULL,
  `multiple` tinyint(1) NOT NULL,
  `fulltext_searchable` tinyint(1) NOT NULL,
  `query_orderable` tinyint(1) NOT NULL,
  `required_type` int NOT NULL,
  `query_operators` int NOT NULL,
  `default_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`node_type_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpcr_type_props`
--

LOCK TABLES `phpcr_type_props` WRITE;
/*!40000 ALTER TABLE `phpcr_type_props` DISABLE KEYS */;
INSERT INTO `phpcr_type_props` VALUES (2,'sulu:content',0,0,1,1,0,0,0,9,0,NULL),(2,'sulu:history',0,1,1,1,0,0,0,6,0,'');
/*!40000 ALTER TABLE `phpcr_type_props` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phpcr_workspaces`
--

DROP TABLE IF EXISTS `phpcr_workspaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phpcr_workspaces` (
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phpcr_workspaces`
--

LOCK TABLES `phpcr_workspaces` WRITE;
/*!40000 ALTER TABLE `phpcr_workspaces` DISABLE KEYS */;
INSERT INTO `phpcr_workspaces` VALUES ('default'),('default_live');
/*!40000 ALTER TABLE `phpcr_workspaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pr_preview_links`
--

DROP TABLE IF EXISTS `pr_preview_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pr_preview_links` (
  `id` int NOT NULL AUTO_INCREMENT,
  `token` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `resourceKey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `resourceId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` json NOT NULL,
  `visitCount` int NOT NULL,
  `lastVisit` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_EFB5DBF25F37A13B` (`token`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pr_preview_links`
--

LOCK TABLES `pr_preview_links` WRITE;
/*!40000 ALTER TABLE `pr_preview_links` DISABLE KEYS */;
INSERT INTO `pr_preview_links` VALUES (1,'359bc26a3b85','pages','a395304f-486b-44d7-9b39-d59903185cd2','en_us','{\"webspaceKey\": \"sylius\", \"targetGroupId\": \"-1\"}',1,'2024-03-07 08:47:01'),(2,'e71eca260677','pages','70f15c7e-68c5-4e75-ae5a-1f5748402947','en_us','{\"webspaceKey\": \"sylius\", \"targetGroupId\": \"-1\"}',1,'2024-03-13 13:02:31');
/*!40000 ALTER TABLE `pr_preview_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ro_routes`
--

DROP TABLE IF EXISTS `ro_routes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ro_routes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `target_id` int DEFAULT NULL,
  `path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_class` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `history` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idUsersCreator` int DEFAULT NULL,
  `idUsersChanger` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_671DB7A4B548B0F4180C698` (`path`,`locale`),
  KEY `IDX_671DB7A4158E0B66` (`target_id`),
  KEY `IDX_671DB7A4DBF11E1D` (`idUsersCreator`),
  KEY `IDX_671DB7A430D07CD5` (`idUsersChanger`),
  KEY `IDX_671DB7A4B548B0F` (`path`),
  KEY `IDX_671DB7A44180C698` (`locale`),
  KEY `idx_resource` (`entity_id`,`entity_class`),
  KEY `idx_history` (`history`),
  CONSTRAINT `FK_671DB7A4158E0B66` FOREIGN KEY (`target_id`) REFERENCES `ro_routes` (`id`),
  CONSTRAINT `FK_671DB7A430D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_671DB7A4DBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ro_routes`
--

LOCK TABLES `ro_routes` WRITE;
/*!40000 ALTER TABLE `ro_routes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ro_routes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `se_access_controls`
--

DROP TABLE IF EXISTS `se_access_controls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `se_access_controls` (
  `id` int NOT NULL AUTO_INCREMENT,
  `permissions` smallint NOT NULL,
  `entityId` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `entityClass` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `entityIdInteger` int DEFAULT NULL,
  `idRoles` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C526DC52A1FA6DDA` (`idRoles`),
  KEY `IDX_C526DC52F62829FC` (`entityId`),
  KEY `IDX_C526DC523963FFAB` (`entityClass`),
  KEY `IDX_C526DC524473BB7A` (`entityIdInteger`),
  CONSTRAINT `FK_C526DC52A1FA6DDA` FOREIGN KEY (`idRoles`) REFERENCES `se_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `se_access_controls`
--

LOCK TABLES `se_access_controls` WRITE;
/*!40000 ALTER TABLE `se_access_controls` DISABLE KEYS */;
INSERT INTO `se_access_controls` VALUES (4,123,'70f15c7e-68c5-4e75-ae5a-1f5748402947','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior',NULL,1),(5,123,'5356ad8d-a3fd-4c8e-a1c4-2fc8189fba2a','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior',NULL,1),(6,123,'ca47175a-de3a-4bc0-8949-d16b77050c56','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior',NULL,1),(7,123,'33d30633-4f77-4b86-a042-9932e88d47e2','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior',NULL,1),(8,123,'9af5eead-fba2-4b95-a247-eb0cc8bd674c','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior',NULL,1);
/*!40000 ALTER TABLE `se_access_controls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `se_group_roles`
--

DROP TABLE IF EXISTS `se_group_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `se_group_roles` (
  `idGroups` int NOT NULL,
  `idRoles` int NOT NULL,
  PRIMARY KEY (`idGroups`,`idRoles`),
  KEY `IDX_9713F725937C91EA` (`idGroups`),
  KEY `IDX_9713F725A1FA6DDA` (`idRoles`),
  CONSTRAINT `FK_9713F725937C91EA` FOREIGN KEY (`idGroups`) REFERENCES `se_groups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_9713F725A1FA6DDA` FOREIGN KEY (`idRoles`) REFERENCES `se_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `se_group_roles`
--

LOCK TABLES `se_group_roles` WRITE;
/*!40000 ALTER TABLE `se_group_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `se_group_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `se_groups`
--

DROP TABLE IF EXISTS `se_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `se_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `lft` int NOT NULL,
  `rgt` int NOT NULL,
  `depth` int NOT NULL,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idGroupsParent` int DEFAULT NULL,
  `idUsersCreator` int DEFAULT NULL,
  `idUsersChanger` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_231E44ECBF274AB0` (`idGroupsParent`),
  KEY `IDX_231E44ECDBF11E1D` (`idUsersCreator`),
  KEY `IDX_231E44EC30D07CD5` (`idUsersChanger`),
  CONSTRAINT `FK_231E44EC30D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_231E44ECBF274AB0` FOREIGN KEY (`idGroupsParent`) REFERENCES `se_groups` (`id`),
  CONSTRAINT `FK_231E44ECDBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `se_groups`
--

LOCK TABLES `se_groups` WRITE;
/*!40000 ALTER TABLE `se_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `se_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `se_permissions`
--

DROP TABLE IF EXISTS `se_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `se_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `context` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` smallint NOT NULL,
  `idRoles` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_5CEC3EEAE25D857EC242628A1FA6DDA` (`context`,`module`,`idRoles`),
  KEY `IDX_5CEC3EEAA1FA6DDA` (`idRoles`),
  CONSTRAINT `FK_5CEC3EEAA1FA6DDA` FOREIGN KEY (`idRoles`) REFERENCES `se_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `se_permissions`
--

LOCK TABLES `se_permissions` WRITE;
/*!40000 ALTER TABLE `se_permissions` DISABLE KEYS */;
INSERT INTO `se_permissions` VALUES (1,'sulu.contact.people',NULL,127,1),(2,'sulu.contact.organizations',NULL,127,1),(3,'sulu.media.collections',NULL,127,1),(4,'sulu.media.system_collections',NULL,127,1),(5,'sulu.settings.categories',NULL,127,1),(6,'sulu.settings.tags',NULL,127,1),(7,'sulu.global.snippets',NULL,127,1),(8,'sulu.webspaces.example.default-snippets',NULL,127,1),(9,'sulu.webspaces.example',NULL,127,1),(10,'sulu.webspaces.example.analytics',NULL,127,1),(11,'sulu.webspaces.example.custom-urls',NULL,127,1),(12,'sulu.activities.activities',NULL,127,1),(13,'sulu.trash.trash',NULL,127,1),(14,'sulu.security.roles',NULL,127,1),(15,'sulu.security.users',NULL,127,1),(16,'sulu.webspaces.sylius',NULL,123,1),(17,'sulu.webspaces.sylius.analytics',NULL,120,1),(18,'sulu.webspaces.sylius.custom-urls',NULL,120,1),(19,'sulu.webspaces.sylius.default-snippets',NULL,80,1),(20,'sulu.media.collections',NULL,127,2),(21,'sulu.webspaces.sylius',NULL,127,2);
/*!40000 ALTER TABLE `se_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `se_role_settings`
--

DROP TABLE IF EXISTS `se_role_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `se_role_settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `settingKey` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` json NOT NULL,
  `roleId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_DAD1C8CB3AA9950BB8C2FD88` (`settingKey`,`roleId`),
  KEY `IDX_DAD1C8CBB8C2FD88` (`roleId`),
  KEY `IDX_DAD1C8CB3AA9950B` (`settingKey`),
  CONSTRAINT `FK_DAD1C8CBB8C2FD88` FOREIGN KEY (`roleId`) REFERENCES `se_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `se_role_settings`
--

LOCK TABLES `se_role_settings` WRITE;
/*!40000 ALTER TABLE `se_role_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `se_role_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `se_roles`
--

DROP TABLE IF EXISTS `se_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `se_roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_key` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `securitySystem` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `anonymous` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idSecurityTypes` int DEFAULT NULL,
  `idUsersCreator` int DEFAULT NULL,
  `idUsersChanger` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_13B749A05E237E06` (`name`),
  UNIQUE KEY `UNIQ_13B749A03EF22FDB` (`role_key`),
  KEY `IDX_13B749A0D02106C0` (`idSecurityTypes`),
  KEY `IDX_13B749A0DBF11E1D` (`idUsersCreator`),
  KEY `IDX_13B749A030D07CD5` (`idUsersChanger`),
  CONSTRAINT `FK_13B749A030D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_13B749A0D02106C0` FOREIGN KEY (`idSecurityTypes`) REFERENCES `se_security_types` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_13B749A0DBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `se_roles`
--

LOCK TABLES `se_roles` WRITE;
/*!40000 ALTER TABLE `se_roles` DISABLE KEYS */;
INSERT INTO `se_roles` VALUES (1,'User',NULL,'Sulu',0,'2024-03-05 11:52:26','2024-03-05 11:52:26',NULL,NULL,NULL),(2,'Anonymous User sylius',NULL,'sylius',1,'2024-03-07 02:41:18','2024-03-07 02:41:18',NULL,NULL,NULL);
/*!40000 ALTER TABLE `se_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `se_security_types`
--

DROP TABLE IF EXISTS `se_security_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `se_security_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `se_security_types`
--

LOCK TABLES `se_security_types` WRITE;
/*!40000 ALTER TABLE `se_security_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `se_security_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `se_user_groups`
--

DROP TABLE IF EXISTS `se_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `se_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `locale` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `idGroups` int DEFAULT NULL,
  `idUsers` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E43ED0C8937C91EA` (`idGroups`),
  KEY `IDX_E43ED0C8347E6F4` (`idUsers`),
  CONSTRAINT `FK_E43ED0C8347E6F4` FOREIGN KEY (`idUsers`) REFERENCES `se_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_E43ED0C8937C91EA` FOREIGN KEY (`idGroups`) REFERENCES `se_groups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `se_user_groups`
--

LOCK TABLES `se_user_groups` WRITE;
/*!40000 ALTER TABLE `se_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `se_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `se_user_roles`
--

DROP TABLE IF EXISTS `se_user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `se_user_roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `locale` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `idUsers` int DEFAULT NULL,
  `idRoles` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E48BD9DB347E6F4` (`idUsers`),
  KEY `IDX_E48BD9DBA1FA6DDA` (`idRoles`),
  CONSTRAINT `FK_E48BD9DB347E6F4` FOREIGN KEY (`idUsers`) REFERENCES `se_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_E48BD9DBA1FA6DDA` FOREIGN KEY (`idRoles`) REFERENCES `se_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `se_user_roles`
--

LOCK TABLES `se_user_roles` WRITE;
/*!40000 ALTER TABLE `se_user_roles` DISABLE KEYS */;
INSERT INTO `se_user_roles` VALUES (1,'[\"en\",\"en_us\",\"en_gb\",\"pl\",\"pl_pl\"]',1,1);
/*!40000 ALTER TABLE `se_user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `se_user_settings`
--

DROP TABLE IF EXISTS `se_user_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `se_user_settings` (
  `settingsValue` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `settingsKey` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `idUsers` int NOT NULL,
  PRIMARY KEY (`settingsKey`,`idUsers`),
  KEY `IDX_108FCAFA347E6F4` (`idUsers`),
  CONSTRAINT `FK_108FCAFA347E6F4` FOREIGN KEY (`idUsers`) REFERENCES `se_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `se_user_settings`
--

LOCK TABLES `se_user_settings` WRITE;
/*!40000 ALTER TABLE `se_user_settings` DISABLE KEYS */;
INSERT INTO `se_user_settings` VALUES ('true','sulu_admin.application.navigation_pinned',1),('\"en\"','sulu_admin.content_locale',1),('[]','sulu_admin.list_store.accounts.list.filter',1),('[]','sulu_admin.list_store.activities.list.filter',1),('\"9af5eead-fba2-4b95-a247-eb0cc8bd674c\"','sulu_admin.list_store.analytics.list.active',1),('[]','sulu_admin.list_store.analytics.list.filter',1),('[]','sulu_admin.list_store.categories.list.filter',1),('\"title\"','sulu_admin.list_store.collections.media_overview.sort_column',1),('\"asc\"','sulu_admin.list_store.collections.media_overview.sort_order',1),('[]','sulu_admin.list_store.contacts.list.filter',1),('\"9af5eead-fba2-4b95-a247-eb0cc8bd674c\"','sulu_admin.list_store.custom_urls.list.active',1),('[]','sulu_admin.list_store.custom_urls.list.filter',1),('[]','sulu_admin.list_store.media.media_overview.filter',1),('\"a395304f-486b-44d7-9b39-d59903185cd2\"','sulu_admin.list_store.pages.multi_list_overlay.active',1),('\"70f15c7e-68c5-4e75-ae5a-1f5748402947\"','sulu_admin.list_store.pages.page_list_example.active',1),('\"70f15c7e-68c5-4e75-ae5a-1f5748402947\"','sulu_admin.list_store.pages.page_list_sylius.active',1),('[]','sulu_admin.list_store.roles.list.filter',1),('[]','sulu_admin.list_store.snippets.list.filter',1),('[]','sulu_admin.list_store.tags.list.filter',1),('[]','sulu_admin.list_store.trash_items.list.filter',1),('\"column_list\"','sulu_admin.list.pages.page_list_sylius.adapter',1),('\"sylius\"','sulu_page.webspace_tabs.webspace',1);
/*!40000 ALTER TABLE `se_user_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `se_user_two_factors`
--

DROP TABLE IF EXISTS `se_user_two_factors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `se_user_two_factors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `method` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `idUsers` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_732E8321347E6F4` (`idUsers`),
  CONSTRAINT `FK_732E8321347E6F4` FOREIGN KEY (`idUsers`) REFERENCES `se_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `se_user_two_factors`
--

LOCK TABLES `se_user_two_factors` WRITE;
/*!40000 ALTER TABLE `se_user_two_factors` DISABLE KEYS */;
/*!40000 ALTER TABLE `se_user_two_factors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `se_users`
--

DROP TABLE IF EXISTS `se_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `se_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `salt` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `lastLogin` datetime DEFAULT NULL,
  `confirmationKey` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passwordResetToken` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passwordResetTokenExpiresAt` datetime DEFAULT NULL,
  `passwordResetTokenEmailsSent` int DEFAULT '0',
  `privateKey` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apiKey` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:guid)',
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idContacts` int NOT NULL,
  `idUsersCreator` int DEFAULT NULL,
  `idUsersChanger` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B10AC28EF85E0677` (`username`),
  UNIQUE KEY `UNIQ_B10AC28E60E33F28` (`idContacts`),
  UNIQUE KEY `UNIQ_B10AC28EADC1CD13` (`passwordResetToken`),
  UNIQUE KEY `UNIQ_B10AC28EE7927C74` (`email`),
  KEY `IDX_B10AC28EDBF11E1D` (`idUsersCreator`),
  KEY `IDX_B10AC28E30D07CD5` (`idUsersChanger`),
  CONSTRAINT `FK_B10AC28E30D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_B10AC28E60E33F28` FOREIGN KEY (`idContacts`) REFERENCES `co_contacts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_B10AC28EDBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `se_users`
--

LOCK TABLES `se_users` WRITE;
/*!40000 ALTER TABLE `se_users` DISABLE KEYS */;
INSERT INTO `se_users` VALUES (1,'admin','$2y$13$vrLvbWTowoMZqGNRequMuurRPKzJuMzizz0p1.WNzwoJTTJnVoCJ.','en','ePwjXt01XfgsyDJNWAVNtV0of8zulO2kNCoTfJ867W0=',0,1,'2024-03-15 14:20:07',NULL,NULL,NULL,NULL,NULL,'43d8833a6abc29e4190d141d137ff9ba','admin@example.com','2024-03-05 11:52:26','2024-03-15 14:20:07',1,NULL,1);
/*!40000 ALTER TABLE `se_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ta_tags`
--

DROP TABLE IF EXISTS `ta_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ta_tags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `idUsersCreator` int DEFAULT NULL,
  `idUsersChanger` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B258E4995E237E06` (`name`),
  KEY `IDX_B258E499DBF11E1D` (`idUsersCreator`),
  KEY `IDX_B258E49930D07CD5` (`idUsersChanger`),
  CONSTRAINT `FK_B258E49930D07CD5` FOREIGN KEY (`idUsersChanger`) REFERENCES `se_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_B258E499DBF11E1D` FOREIGN KEY (`idUsersCreator`) REFERENCES `se_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ta_tags`
--

LOCK TABLES `ta_tags` WRITE;
/*!40000 ALTER TABLE `ta_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `ta_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tr_trash_item_translations`
--

DROP TABLE IF EXISTS `tr_trash_item_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tr_trash_item_translations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `locale` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `trashItemId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8264DAF45C8D7CA4180C698` (`trashItemId`,`locale`),
  KEY `IDX_8264DAF45C8D7CA` (`trashItemId`),
  CONSTRAINT `FK_8264DAF45C8D7CA` FOREIGN KEY (`trashItemId`) REFERENCES `tr_trash_items` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tr_trash_item_translations`
--

LOCK TABLES `tr_trash_item_translations` WRITE;
/*!40000 ALTER TABLE `tr_trash_item_translations` DISABLE KEYS */;
INSERT INTO `tr_trash_item_translations` VALUES (1,'en','Test 1 Page',1),(2,'en_us','Test 1 Page',1),(3,'en','featured pages',2),(4,'en_us','featured pages',2),(5,'en','Blog Sub-Page 1',3),(6,'en_us','Blog Sub-Page 1',3),(7,'en','Blog Page 2',4),(8,'en_us','Blog Page 1',4),(9,'en','Test',5);
/*!40000 ALTER TABLE `tr_trash_item_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tr_trash_items`
--

DROP TABLE IF EXISTS `tr_trash_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tr_trash_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `resourceKey` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `resourceId` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `restoreData` json NOT NULL,
  `restoreType` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `restoreOptions` json NOT NULL,
  `resourceSecurityContext` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resourceSecurityObjectType` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resourceSecurityObjectId` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `storeTimestamp` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `defaultLocale` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_102989B64B64DCC` (`userId`),
  KEY `IDX_102989B5DAEB55C8CF57CB1` (`resourceKey`,`resourceId`),
  CONSTRAINT `FK_102989B64B64DCC` FOREIGN KEY (`userId`) REFERENCES `se_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tr_trash_items`
--

LOCK TABLES `tr_trash_items` WRITE;
/*!40000 ALTER TABLE `tr_trash_items` DISABLE KEYS */;
INSERT INTO `tr_trash_items` VALUES (1,'pages','e4614861-6e83-4542-b441-b7752a24c4f0','{\"locales\": [{\"title\": \"Test 1 Page\", \"author\": 1, \"locale\": \"en\", \"created\": \"2024-03-05T11:54:24+00:00\", \"creator\": 1, \"authored\": \"2024-03-05T11:54:24+00:00\", \"suluOrder\": 40, \"permissions\": [], \"redirectType\": 1, \"shadowLocale\": null, \"structureData\": {\"url\": \"/test-1-page\", \"title\": \"Test 1 Page\", \"article\": \"<p>Test 123</p>\"}, \"structureType\": \"default\", \"extensionsData\": {\"seo\": {\"title\": \"\", \"noIndex\": false, \"keywords\": \"\", \"noFollow\": false, \"description\": \"\", \"canonicalUrl\": \"\", \"hideInSitemap\": false}, \"excerpt\": {\"icon\": {\"ids\": []}, \"more\": \"\", \"tags\": [], \"title\": \"\", \"images\": {\"ids\": []}, \"segments\": [], \"categories\": [], \"description\": \"\"}}, \"resourceSegment\": \"/test-1-page\", \"redirectExternal\": null, \"navigationContexts\": [], \"redirectTargetUuid\": null, \"shadowLocaleEnabled\": false}, {\"title\": \"Test 1 Page\", \"author\": 1, \"locale\": \"en_us\", \"created\": \"2024-03-12T00:35:25+00:00\", \"creator\": 1, \"authored\": \"2024-03-05T11:54:24+00:00\", \"suluOrder\": 40, \"permissions\": [], \"redirectType\": 1, \"shadowLocale\": null, \"structureData\": {\"url\": \"/test-1-page\", \"title\": \"Test 1 Page\", \"article\": \"<p>Test 123</p>\"}, \"structureType\": \"default\", \"extensionsData\": {\"seo\": {\"title\": \"\", \"noIndex\": false, \"keywords\": \"\", \"noFollow\": false, \"description\": \"\", \"canonicalUrl\": \"\", \"hideInSitemap\": false}, \"excerpt\": {\"icon\": {\"ids\": []}, \"more\": \"\", \"tags\": [], \"title\": \"\", \"images\": {\"ids\": []}, \"segments\": [], \"categories\": [], \"description\": \"\"}}, \"resourceSegment\": \"/test-1-page\", \"redirectExternal\": null, \"navigationContexts\": [], \"redirectTargetUuid\": null, \"shadowLocaleEnabled\": false}], \"parentUuid\": \"9af5eead-fba2-4b95-a247-eb0cc8bd674c\"}',NULL,'[]','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','e4614861-6e83-4542-b441-b7752a24c4f0','2024-03-12 00:42:53','en',1),(2,'pages','a684fe64-41e0-4e0e-b411-bea7f0857a86','{\"locales\": [{\"title\": \"featured pages\", \"author\": \"1\", \"locale\": \"en\", \"created\": \"2024-03-05T11:41:59+00:00\", \"creator\": 1, \"authored\": \"2024-03-05T11:41:59+00:00\", \"suluOrder\": 30, \"permissions\": [], \"redirectType\": 1, \"shadowLocale\": null, \"structureData\": {\"url\": \"/blog-page-2/featured-pages\", \"links\": [\"a395304f-486b-44d7-9b39-d59903185cd2\", \"98e5b8e4-0e5a-45cc-9943-77ed68814e85\"], \"title\": \"featured pages\", \"blocks\": [{\"type\": \"similar-articles\", \"title\": \"Test featured similar articles\", \"settings\": {}}, {\"type\": \"similar-articles\", \"title\": \"Test featured similar articles\", \"settings\": {}}], \"article\": \"<p>Test featured pages</p>\", \"category_selection\": []}, \"structureType\": \"blog_page\", \"extensionsData\": {\"seo\": {\"title\": \"\", \"noIndex\": false, \"keywords\": \"\", \"noFollow\": false, \"description\": \"\", \"canonicalUrl\": \"\", \"hideInSitemap\": false}, \"excerpt\": {\"icon\": {\"ids\": []}, \"more\": \"\", \"tags\": [], \"title\": \"\", \"images\": {\"ids\": []}, \"segments\": [], \"categories\": [], \"description\": \"\"}}, \"resourceSegment\": \"/blog-page-2/featured-pages\", \"redirectExternal\": null, \"navigationContexts\": [], \"redirectTargetUuid\": null, \"shadowLocaleEnabled\": false}, {\"title\": \"featured pages\", \"author\": \"1\", \"locale\": \"en_us\", \"created\": \"2024-03-12T00:35:40+00:00\", \"creator\": 1, \"authored\": \"2024-03-05T11:41:59+00:00\", \"suluOrder\": 30, \"permissions\": [], \"redirectType\": 1, \"shadowLocale\": null, \"structureData\": {\"url\": \"/blog-page-2/featured-pages\", \"links\": [\"a395304f-486b-44d7-9b39-d59903185cd2\", \"98e5b8e4-0e5a-45cc-9943-77ed68814e85\"], \"title\": \"featured pages\", \"blocks\": [{\"type\": \"similar-articles\", \"title\": \"Test featured similar articles\", \"settings\": {}}, {\"type\": \"similar-articles\", \"title\": \"Test featured similar articles\", \"settings\": {}}], \"article\": \"<p>Test featured pages</p>\", \"category_selection\": []}, \"structureType\": \"blog_page\", \"extensionsData\": {\"seo\": {\"title\": \"\", \"noIndex\": false, \"keywords\": \"\", \"noFollow\": false, \"description\": \"\", \"canonicalUrl\": \"\", \"hideInSitemap\": false}, \"excerpt\": {\"icon\": {\"ids\": []}, \"more\": \"\", \"tags\": [], \"title\": \"\", \"images\": {\"ids\": []}, \"segments\": [], \"categories\": [], \"description\": \"\"}}, \"resourceSegment\": \"/blog-page-2/featured-pages\", \"redirectExternal\": null, \"navigationContexts\": [], \"redirectTargetUuid\": null, \"shadowLocaleEnabled\": false}], \"parentUuid\": \"a395304f-486b-44d7-9b39-d59903185cd2\"}',NULL,'[]','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','a684fe64-41e0-4e0e-b411-bea7f0857a86','2024-03-12 00:43:52','en',1),(3,'pages','98e5b8e4-0e5a-45cc-9943-77ed68814e85','{\"locales\": [{\"title\": \"Blog Sub-Page 1\", \"author\": 1, \"locale\": \"en\", \"created\": \"2024-03-05T11:40:21+00:00\", \"creator\": 1, \"authored\": \"2024-03-05T11:40:21+00:00\", \"suluOrder\": 20, \"permissions\": [], \"redirectType\": 1, \"shadowLocale\": null, \"structureData\": {\"url\": \"/blog-page-2/blog-sub-page-1\", \"links\": [], \"title\": \"Blog Sub-Page 1\", \"blocks\": [], \"article\": \"<p>Test sub page</p>\", \"category_selection\": []}, \"structureType\": \"blog_page\", \"extensionsData\": {\"seo\": {\"title\": \"\", \"noIndex\": false, \"keywords\": \"\", \"noFollow\": false, \"description\": \"\", \"canonicalUrl\": \"\", \"hideInSitemap\": false}, \"excerpt\": {\"icon\": {\"ids\": []}, \"more\": \"\", \"tags\": [], \"title\": \"\", \"images\": {\"ids\": []}, \"segments\": [], \"categories\": [], \"description\": \"\"}}, \"resourceSegment\": \"/blog-page-2/blog-sub-page-1\", \"redirectExternal\": null, \"navigationContexts\": [], \"redirectTargetUuid\": null, \"shadowLocaleEnabled\": false}, {\"title\": \"Blog Sub-Page 1\", \"author\": 1, \"locale\": \"en_us\", \"created\": \"2024-03-07T02:31:46+00:00\", \"creator\": 1, \"authored\": \"2024-03-05T11:40:21+00:00\", \"suluOrder\": 20, \"permissions\": [], \"redirectType\": 1, \"shadowLocale\": null, \"structureData\": {\"url\": \"/blog-page-2/blog-sub-page-1\", \"links\": [], \"title\": \"Blog Sub-Page 1\", \"blocks\": [], \"article\": \"<p>Test sub page</p>\", \"category_selection\": []}, \"structureType\": \"blog_page\", \"extensionsData\": {\"seo\": {\"title\": \"\", \"noIndex\": false, \"keywords\": \"\", \"noFollow\": false, \"description\": \"\", \"canonicalUrl\": \"\", \"hideInSitemap\": false}, \"excerpt\": {\"icon\": {\"ids\": []}, \"more\": \"\", \"tags\": [], \"title\": \"\", \"images\": {\"ids\": []}, \"segments\": [], \"categories\": [], \"description\": \"\"}}, \"resourceSegment\": \"/blog-page-2/blog-sub-page-1\", \"redirectExternal\": null, \"navigationContexts\": [], \"redirectTargetUuid\": null, \"shadowLocaleEnabled\": false}], \"parentUuid\": \"a395304f-486b-44d7-9b39-d59903185cd2\"}',NULL,'[]','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','98e5b8e4-0e5a-45cc-9943-77ed68814e85','2024-03-12 00:44:00','en',1),(4,'pages','a395304f-486b-44d7-9b39-d59903185cd2','{\"locales\": [{\"title\": \"Blog Page 2\", \"author\": \"1\", \"locale\": \"en\", \"created\": \"2024-03-05T11:39:15+00:00\", \"creator\": 1, \"authored\": \"2024-03-05T11:39:15+00:00\", \"suluOrder\": 30, \"permissions\": [], \"redirectType\": 1, \"shadowLocale\": null, \"structureData\": {\"url\": \"/blog-page-2\", \"links\": [], \"title\": \"Blog Page 2\", \"blocks\": [{\"type\": \"quote\", \"quote\": \"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec in sem mauris. Vivamus auctor tempor nunc, id suscipit diam semper id. Etiam in metus ante. Donec maximus at sapien quis condimentum. Sed sollicitudin hendrerit vehicula. Cras id ex a massa accumsan faucibus ac quis urna. Donec sed turpis quis purus euismod viverra. Phasellus mauris velit, cursus ac tortor porta, egestas viverra urna. Nunc eget lobortis lectus. Curabitur et ipsum molestie, egestas risus at, dapibus lorem. Fusce placerat libero sit amet suscipit consequat.\\n\\nCurabitur sit amet mollis risus. Donec sed sem quis turpis elementum iaculis sed ac nulla. Sed imperdiet mattis quam, a luctus mauris. Quisque neque diam, posuere ut eros vitae, tempus venenatis ligula. Nunc vitae venenatis ante, eget fringilla sapien. Mauris vulputate a nunc sit amet aliquet. Suspendisse nec efficitur neque, sed dignissim sapien. In hac habitasse platea dictumst. Aliquam erat volutpat. Donec non neque vehicula, fermentum nunc sed, fermentum eros. Proin ac nunc id magna lobortis laoreet vitae sed odio. Mauris vel metus dapibus, mattis nibh vel, posuere urna. Nulla porttitor felis eu neque lobortis, ultrices porta tortor placerat. Quisque ullamcorper erat id arcu eleifend, eu ornare orci aliquet.\\n\\nVivamus venenatis metus ut risus laoreet, et tristique tellus ullamcorper. In pretium neque eu tincidunt cursus. Aenean id auctor leo, sed finibus nulla. Interdum et malesuada fames ac ante ipsum primis in faucibus. In hac habitasse platea dictumst. Vivamus eu ante ut nisl egestas scelerisque at quis purus. Nunc ultricies ante eget sapien auctor pellentesque.\", \"settings\": {}, \"quoteReference\": \"Test\"}], \"article\": \"<p style=\\\"text-align:justify;\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec in sem mauris. Vivamus auctor tempor nunc, id suscipit diam semper id. Etiam in metus ante. Donec maximus at sapien quis condimentum. Sed sollicitudin hendrerit vehicula. Cras id ex a massa accumsan faucibus ac quis urna. Donec sed turpis quis purus euismod viverra. Phasellus mauris velit, cursus ac tortor porta, egestas viverra urna. Nunc eget lobortis lectus. Curabitur et ipsum molestie, egestas risus at, dapibus lorem. Fusce placerat libero sit amet suscipit consequat.</p><p style=\\\"text-align:justify;\\\">Curabitur sit amet mollis risus. Donec sed sem quis turpis elementum iaculis sed ac nulla. Sed imperdiet mattis quam, a luctus mauris. Quisque neque diam, posuere ut eros vitae, tempus venenatis ligula. Nunc vitae venenatis ante, eget fringilla sapien. Mauris vulputate a nunc sit amet aliquet. Suspendisse nec efficitur neque, sed dignissim sapien. In hac habitasse platea dictumst. Aliquam erat volutpat. Donec non neque vehicula, fermentum nunc sed, fermentum eros. Proin ac nunc id magna lobortis laoreet vitae sed odio. Mauris vel metus dapibus, mattis nibh vel, posuere urna. Nulla porttitor felis eu neque lobortis, ultrices porta tortor placerat. Quisque ullamcorper erat id arcu eleifend, eu ornare orci aliquet.</p><p style=\\\"text-align:justify;\\\">Vivamus venenatis metus ut risus laoreet, et tristique tellus ullamcorper. In pretium neque eu tincidunt cursus. Aenean id auctor leo, sed finibus nulla. Interdum et malesuada fames ac ante ipsum primis in faucibus. In hac habitasse platea dictumst. Vivamus eu ante ut nisl egestas scelerisque at quis purus. Nunc ultricies ante eget sapien auctor pellentesque.</p>\", \"category_selection\": []}, \"structureType\": \"blog_page\", \"extensionsData\": {\"seo\": {\"title\": \"\", \"noIndex\": false, \"keywords\": \"\", \"noFollow\": false, \"description\": \"\", \"canonicalUrl\": \"\", \"hideInSitemap\": false}, \"excerpt\": {\"icon\": {\"ids\": []}, \"more\": \"\", \"tags\": [], \"title\": \"\", \"images\": {\"ids\": []}, \"segments\": [], \"categories\": [], \"description\": \"\"}}, \"resourceSegment\": \"/blog-page-2\", \"redirectExternal\": null, \"navigationContexts\": [], \"redirectTargetUuid\": null, \"shadowLocaleEnabled\": false}, {\"title\": \"Blog Page 1\", \"author\": \"1\", \"locale\": \"en_us\", \"created\": \"2024-03-05T13:39:11+00:00\", \"creator\": 1, \"authored\": \"2024-03-05T11:39:15+00:00\", \"suluOrder\": 30, \"permissions\": [], \"redirectType\": 1, \"shadowLocale\": null, \"structureData\": {\"url\": \"/blog-page-2\", \"links\": [], \"title\": \"Blog Page 1\", \"blocks\": [{\"type\": \"quote\", \"quote\": \"Test\", \"settings\": {}, \"quoteReference\": \"Test\"}, {\"type\": \"quote\", \"quote\": \"Test 2\", \"settings\": {}, \"quoteReference\": \"Test 2\"}, {\"type\": \"text\", \"image\": {\"id\": null, \"displayOption\": \"top\"}, \"title\": \"Test 3\", \"settings\": {}, \"description\": \"<p><strong>Test 333</strong></p>\"}, {\"type\": \"text\", \"image\": {\"id\": null, \"displayOption\": \"top\"}, \"title\": \"\", \"settings\": {}, \"description\": \"\"}], \"article\": \"<p>Test11</p>\", \"category_selection\": []}, \"structureType\": \"blog_page\", \"extensionsData\": {\"seo\": {\"title\": \"\", \"noIndex\": false, \"keywords\": \"\", \"noFollow\": false, \"description\": \"\", \"canonicalUrl\": \"\", \"hideInSitemap\": false}, \"excerpt\": {\"icon\": {\"ids\": []}, \"more\": \"\", \"tags\": [], \"title\": \"\", \"images\": {\"ids\": []}, \"segments\": [], \"categories\": [], \"description\": \"\"}}, \"resourceSegment\": \"/blog-page-2\", \"redirectExternal\": null, \"navigationContexts\": [], \"redirectTargetUuid\": null, \"shadowLocaleEnabled\": false}], \"parentUuid\": \"9af5eead-fba2-4b95-a247-eb0cc8bd674c\"}',NULL,'[]','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','a395304f-486b-44d7-9b39-d59903185cd2','2024-03-12 00:44:22','en',1),(5,'pages','09dab2b5-7870-4c06-ae3b-b9dfac617fa9','{\"locales\": [{\"title\": \"Test\", \"author\": 1, \"locale\": \"en\", \"created\": \"2024-03-05T11:08:08+00:00\", \"creator\": 1, \"authored\": \"2024-03-05T11:08:08+00:00\", \"suluOrder\": 20, \"permissions\": [], \"redirectType\": 1, \"shadowLocale\": null, \"structureData\": {\"url\": \"/test\", \"title\": \"Test\", \"article\": \"<p>QASZDXFCGVHBSDFGHBJNMAqswedrfcgvhbn</p>\"}, \"structureType\": \"homepage\", \"extensionsData\": {\"seo\": {\"title\": \"\", \"noIndex\": false, \"keywords\": \"\", \"noFollow\": false, \"description\": \"\", \"canonicalUrl\": \"\", \"hideInSitemap\": false}, \"excerpt\": {\"icon\": {\"ids\": []}, \"more\": \"\", \"tags\": [], \"title\": \"\", \"images\": {\"ids\": []}, \"segments\": [], \"categories\": [], \"description\": \"\"}}, \"resourceSegment\": \"/test\", \"redirectExternal\": null, \"navigationContexts\": [], \"redirectTargetUuid\": null, \"shadowLocaleEnabled\": false}], \"parentUuid\": \"9af5eead-fba2-4b95-a247-eb0cc8bd674c\"}',NULL,'[]','sulu.webspaces.sylius','Sulu\\Component\\Content\\Document\\Behavior\\SecurityBehavior','09dab2b5-7870-4c06-ae3b-b9dfac617fa9','2024-03-12 00:45:14','en',1);
/*!40000 ALTER TABLE `tr_trash_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `we_analytics`
--

DROP TABLE IF EXISTS `we_analytics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `we_analytics` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `webspace_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `all_domains` tinyint(1) NOT NULL,
  `content` json NOT NULL,
  `type` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_4E50BB8D1640EFD3` (`all_domains`),
  KEY `IDX_4E50BB8DAE248174` (`webspace_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `we_analytics`
--

LOCK TABLES `we_analytics` WRITE;
/*!40000 ALTER TABLE `we_analytics` DISABLE KEYS */;
/*!40000 ALTER TABLE `we_analytics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `we_analytics_domains`
--

DROP TABLE IF EXISTS `we_analytics_domains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `we_analytics_domains` (
  `analytics` int NOT NULL,
  `domain` int NOT NULL,
  PRIMARY KEY (`analytics`,`domain`),
  KEY `IDX_F9323B6EEAC2E688` (`analytics`),
  KEY `IDX_F9323B6EA7A91E0B` (`domain`),
  CONSTRAINT `FK_F9323B6EA7A91E0B` FOREIGN KEY (`domain`) REFERENCES `we_domains` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_F9323B6EEAC2E688` FOREIGN KEY (`analytics`) REFERENCES `we_analytics` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `we_analytics_domains`
--

LOCK TABLES `we_analytics_domains` WRITE;
/*!40000 ALTER TABLE `we_analytics_domains` DISABLE KEYS */;
/*!40000 ALTER TABLE `we_analytics_domains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `we_domains`
--

DROP TABLE IF EXISTS `we_domains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `we_domains` (
  `id` int NOT NULL AUTO_INCREMENT,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `environment` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_7CFAB3F5F47645AE` (`url`),
  KEY `IDX_7CFAB3F54626DE22` (`environment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `we_domains`
--

LOCK TABLES `we_domains` WRITE;
/*!40000 ALTER TABLE `we_domains` DISABLE KEYS */;
/*!40000 ALTER TABLE `we_domains` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-18 13:22:41
