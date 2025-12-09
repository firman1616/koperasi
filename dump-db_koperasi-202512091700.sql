-- MySQL dump 10.13  Distrib 8.0.44, for Linux (x86_64)
--
-- Host: localhost    Database: db_koperasi
-- ------------------------------------------------------
-- Server version	8.0.44-0ubuntu0.24.04.1

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
-- Table structure for table `tbl_jbbt`
--

DROP TABLE IF EXISTS `tbl_jbbt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_jbbt` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tgl_trans` date DEFAULT NULL,
  `kd_trans` varchar(100) DEFAULT NULL,
  `barang_id` int DEFAULT NULL,
  `harga_modal` decimal(10,2) DEFAULT NULL,
  `harga_jual` decimal(10,2) DEFAULT NULL,
  `tempo` int DEFAULT NULL,
  `prosentase` int DEFAULT NULL,
  `uang_muka` decimal(10,2) DEFAULT NULL,
  `cicilan_per_bulan` decimal(10,2) DEFAULT NULL,
  `nama_pembeli` varchar(100) DEFAULT NULL,
  `total_bayar` decimal(10,2) DEFAULT NULL,
  `sisa_bayar` decimal(10,2) DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_jbbt`
--

LOCK TABLES `tbl_jbbt` WRITE;
/*!40000 ALTER TABLE `tbl_jbbt` DISABLE KEYS */;
INSERT INTO `tbl_jbbt` VALUES (1,'2025-12-09','JBBT-2512-00001 ',113,350000.00,555000.00,3,20,100000.00,188667.00,'Firman',666000.00,566000.00,NULL);
/*!40000 ALTER TABLE `tbl_jbbt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_dtl_jbbt`
--

DROP TABLE IF EXISTS `tbl_dtl_jbbt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_dtl_jbbt` (
  `id` int NOT NULL AUTO_INCREMENT,
  `jbbt_id` int DEFAULT NULL,
  `tgl_japo` date DEFAULT NULL,
  `nominal_bayar` decimal(10,2) DEFAULT NULL,
  `status` int DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_dtl_jbbt`
--

LOCK TABLES `tbl_dtl_jbbt` WRITE;
/*!40000 ALTER TABLE `tbl_dtl_jbbt` DISABLE KEYS */;
INSERT INTO `tbl_dtl_jbbt` VALUES (1,1,'2026-01-09',188667.00,1),(2,1,'2026-02-09',188667.00,1),(3,1,'2026-03-09',188666.00,1);
/*!40000 ALTER TABLE `tbl_dtl_jbbt` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-09 17:00:39
