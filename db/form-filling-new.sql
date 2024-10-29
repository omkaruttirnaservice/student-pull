CREATE DATABASE  IF NOT EXISTS `new_forms` /*!40100 DEFAULT CHARACTER SET utf8mb4  */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `new_forms`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: new_forms
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `final_student`
--

DROP TABLE IF EXISTS `final_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `final_student` (
  `roll_no` bigint NOT NULL AUTO_INCREMENT,
  `app_id` bigint NOT NULL,
  `cast` varchar(20) NOT NULL,
  PRIMARY KEY (`roll_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `final_student`
--

LOCK TABLES `final_student` WRITE;
/*!40000 ALTER TABLE `final_student` DISABLE KEYS */;
/*!40000 ALTER TABLE `final_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finalized_candidate`
--

DROP TABLE IF EXISTS `finalized_candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `finalized_candidate` (
  `app_id` bigint NOT NULL AUTO_INCREMENT,
  `reg_id` bigint NOT NULL,
  PRIMARY KEY (`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finalized_candidate`
--

LOCK TABLES `finalized_candidate` WRITE;
/*!40000 ALTER TABLE `finalized_candidate` DISABLE KEYS */;
/*!40000 ALTER TABLE `finalized_candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interview_marks`
--

DROP TABLE IF EXISTS `interview_marks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interview_marks` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `roll_no` bigint NOT NULL,
  `form_no` bigint NOT NULL,
  `name` varchar(255) NOT NULL,
  `caste` varchar(255) NOT NULL,
  `marks_gain` varchar(255) NOT NULL,
  `interview_marks` varchar(255) NOT NULL,
  `total_marks` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interview_marks`
--

LOCK TABLES `interview_marks` WRITE;
/*!40000 ALTER TABLE `interview_marks` DISABLE KEYS */;
/*!40000 ALTER TABLE `interview_marks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utr_allotment_info`
--

DROP TABLE IF EXISTS `utr_allotment_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utr_allotment_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ai_collage_name` varchar(250) NOT NULL,
  `ai_collage_address` varchar(512) NOT NULL,
  `ai_collage_code` varchar(512) NOT NULL,
  `ai_collage_id` bigint NOT NULL,
  `ai_post_name` varchar(250) NOT NULL,
  `ai_post_id` bigint NOT NULL,
  `ai_slot_number` int NOT NULL,
  `ai_slot_time` varchar(50) NOT NULL,
  `ai_count` double NOT NULL,
  `ai_roll_start` double NOT NULL,
  `ai_roll_end` double NOT NULL,
  `ai_solt_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utr_allotment_info`
--

LOCK TABLES `utr_allotment_info` WRITE;
/*!40000 ALTER TABLE `utr_allotment_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `utr_allotment_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utr_candidate_appications`
--

DROP TABLE IF EXISTS `utr_candidate_appications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utr_candidate_appications` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `ca_reg_id` bigint NOT NULL,
  `ca_post_id` bigint NOT NULL,
  `ca_post_name` varchar(255) NOT NULL,
  `ca_dob` date NOT NULL,
  `ca_gender` varchar(10) NOT NULL,
  `ca_catagory` varchar(20) NOT NULL,
  `ca_marital_status` varchar(20) NOT NULL,
  `ca_fathers_name` varchar(32) NOT NULL,
  `ca_mothers_name` varchar(32) NOT NULL,
  `ca_spouse_name` varchar(32) DEFAULT NULL,
  `ca_address` longtext NOT NULL,
  `ca_line_two_address` longtext,
  `ca_line_three_address` longtext,
  `ca_state` varchar(50) NOT NULL,
  `ca_district` varchar(50) NOT NULL,
  `ca_pin_number` bigint NOT NULL,
  `ca_sign` longtext,
  `ca_photo` longtext,
  `ca_education_details` longtext,
  `ca_extraQualification` longtext,
  `ca_experienceList` longtext,
  `ca_general_details_done` int DEFAULT '0',
  `ca_education_details_done` int DEFAULT '0',
  `ca_document_details_done` int DEFAULT '0',
  `ca_preview_done` int DEFAULT '0',
  `ca_payment_done` int DEFAULT '0',
  `ca_payment_order_id` longtext,
  `ca_pament_order_signature` longtext,
  `ca_pament_payment_id` longtext,
  `ca_payment_time` longtext,
  `ca_payment_date` date DEFAULT NULL,
  `ca_pament_ammount` varchar(100) DEFAULT '0',
  `ca_inserted_on_date` date DEFAULT NULL,
  `ca_inserted_on_time` varchar(30) DEFAULT NULL,
  `ca_update_on_date` date DEFAULT NULL,
  `ca_update_on_time` varchar(30) DEFAULT NULL,
  `ca_detailsReligion` varchar(30) DEFAULT NULL,
  `ca_detailsNationality` varchar(30) DEFAULT NULL,
  `ca_detailsDomicile` varchar(30) DEFAULT NULL,
  `ca_detailsMarathiLanguage` varchar(30) DEFAULT NULL,
  `ca_detailsMarathiLanguageRead` varchar(30) DEFAULT NULL,
  `ca_detailsMarathiLanguageWrite` varchar(30) DEFAULT NULL,
  `ca_detailsMarathiLanguageSpeak` varchar(30) DEFAULT NULL,
  `ca_detailsEnglishLanguage` varchar(30) DEFAULT NULL,
  `ca_detailsEnglishLanguageRead` varchar(30) DEFAULT NULL,
  `ca_detailsEnglishLanguageWrite` varchar(30) DEFAULT NULL,
  `ca_detailsEnglishLanguageSpeak` varchar(30) DEFAULT NULL,
  `ca_detailsEarthquakeAffected` varchar(30) DEFAULT NULL,
  `ca_detailsOtherLanguage` varchar(30) DEFAULT NULL,
  `ca_detailsOtherLanguageRead` varchar(30) DEFAULT NULL,
  `ca_detailsOtherLanguageWrite` varchar(30) DEFAULT NULL,
  `ca_detailsOtherLanguageSpeak` varchar(30) DEFAULT NULL,
  `ca_detailsDisability` varchar(30) DEFAULT NULL,
  `ca_detailsDisabilityType` varchar(100) DEFAULT NULL,
  `ca_detailsExServiceman` varchar(30) DEFAULT NULL,
  `ca_detailsExServicemanYear` varchar(30) DEFAULT NULL,
  `ca_detailsExServicemanMonth` varchar(30) DEFAULT NULL,
  `ca_detailsFreedomFighterChild` varchar(30) DEFAULT NULL,
  `ca_detailsProjectAffected` varchar(30) DEFAULT NULL,
  `ca_detailsMeritoriousSports` varchar(30) DEFAULT NULL,
  `ca_detailsChildWifeServicemanDied` varchar(30) DEFAULT NULL,
  `ca_detailsJDPendingInCourt` varchar(30) DEFAULT NULL,
  `ca_detailsJDPendingDisciplinaryOtherSimilarAction` varchar(30) DEFAULT NULL,
  `ca_detailsJDPendingDisciplinaryActionByGov` varchar(30) DEFAULT NULL,
  `ca_detailsJDCourtCaseFiled` varchar(30) DEFAULT NULL,
  `ca_detailsJDBlackListed` varchar(30) DEFAULT NULL,
  `ca_detailsSammanterText` varchar(30) DEFAULT NULL,
  `ca_detailsSammanter` bigint DEFAULT NULL,
  `ca_detailsNonCreamyLayer` varchar(30) DEFAULT NULL,
  `ca_detailsSubCategory` varchar(30) DEFAULT NULL,
  `ca_payment` double DEFAULT NULL,
  `ca_tax_per` double DEFAULT NULL,
  `ca_tax_payment` double DEFAULT NULL,
  `ca_payment_type` double NOT NULL DEFAULT '0',
  `ca_challan_date` date DEFAULT NULL,
  `ca_is_existing_emp` int NOT NULL DEFAULT '0',
  `ca_detailsExistingEmployeeDept` varchar(100) NOT NULL DEFAULT '-',
  `ca_detailsExistingEmployeeDeptPost` varchar(100) NOT NULL DEFAULT '-',
  `ca_detailsExistingEmployeeYear` double NOT NULL DEFAULT '0',
  `ca_detailsExistingEmployeeMonth` double NOT NULL DEFAULT '0',
  `ca_detailsMainPost` varchar(250) NOT NULL DEFAULT '-',
  `ca_mt` int NOT NULL DEFAULT '0',
  `ca_et` int NOT NULL DEFAULT '0',
  `ca_ht` int NOT NULL DEFAULT '0',
  `ca_mf` int NOT NULL DEFAULT '0',
  `ca_ef` int NOT NULL DEFAULT '0',
  `ca_hf` int NOT NULL DEFAULT '0',
  `ca_challanBranchCode` varchar(50) NOT NULL DEFAULT '0',
  `ca_valid_user` int NOT NULL DEFAULT '0',
  `ca_post_order` int NOT NULL DEFAULT '999',
  `ca_roll_number` bigint NOT NULL DEFAULT '0',
  `ca_center_name` varchar(150) NOT NULL DEFAULT '-',
  `ca_center_code` varchar(10) NOT NULL DEFAULT '-',
  `ca_batch_time` varchar(50) NOT NULL DEFAULT '-',
  `ca_batch_slot` int NOT NULL DEFAULT '0',
  `ca_center_address` varchar(150) NOT NULL DEFAULT '-',
  `ca_center_lab_no` varchar(150) NOT NULL DEFAULT '-',
  `ca_center_floor` varchar(150) NOT NULL DEFAULT '-',
  `ca_center_department` varchar(150) NOT NULL DEFAULT '-',
  `ca_ht_download` int NOT NULL DEFAULT '0',
  `ca_exam_date` date DEFAULT NULL,
  `ca_is_alloted` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ca_reg_id` (`ca_reg_id`),
  KEY `ca_post_id` (`ca_post_id`),
  KEY `ca_catagory` (`ca_catagory`),
  KEY `ca_gender` (`ca_gender`),
  KEY `ca_detailsMainPost` (`ca_detailsMainPost`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utr_candidate_appications`
--

LOCK TABLES `utr_candidate_appications` WRITE;
/*!40000 ALTER TABLE `utr_candidate_appications` DISABLE KEYS */;
INSERT INTO `utr_candidate_appications` VALUES (26,11,4,'शिपाई','1985-12-19','male','st','unmarried','SHIVAJI','SHINDHU','-','FLAT 14 , BODHLE NAGAR NASHIK','SHREE SHREE RAVISHANKAR MARG','','Maharashtra','Mumbai City',422006,'sign_1681892878616.jpg','photo_1681892878612.jpg','[{\"eduSpecialization\":\"10th/SSC\",\"eduUniversity\":\"State Board\",\"eduMonth\":\"January\",\"eduYear\":\"1970\",\"eduMarksOutOf\":\"1\",\"eduMarksGain\":\"1\",\"eduPercent\":\"100.00\",\"eduClass\":\"Distinction\",\"id\":1,\"name\":\"SSC/10th\"},{\"eduSpecialization\":\"12th/HSC\",\"eduUniversity\":\"State Board\",\"eduMonth\":\"January\",\"eduYear\":\"1981\",\"eduMarksOutOf\":\"100\",\"eduMarksGain\":\"11\",\"eduPercent\":\"11.00\",\"eduClass\":\"First Class\",\"id\":2,\"name\":\"HSC\"}]','[]','[{\"organization\":\"CONFLUENCE\",\"location\":\"PUNE\",\"designation\":\"PHP DEVELOPER\",\"experience\":\"11\"},{\"organization\":\"O TECH\",\"location\":\"MUMBAI\",\"designation\":\"TRAINER-IT\",\"experience\":\"11\"}]',1,1,1,1,1,'12345','111111','112222222','12:02:18','2023-04-20','590','2023-04-14','20:02:49',NULL,NULL,'Christians','No','No','Marathi','0','0','0','English','0','0','0','No',NULL,'0','0','0','No','','No',NULL,NULL,'No','No','No','No','No','No','No','No','No','',-1,'1','KUNBI',500,18,90,1,NULL,0,'-','-',0,0,'State Transport Co-Operative Bank LTD Mumbai',0,0,0,0,0,0,'0',0,999,0,'-','-','-',0,'-','-','-','-',0,NULL,0),(27,14,4,'शिपाई','1983-10-17','female','st','unmarried','SHIVAJI','BABITA','-','FLAT 14 , BODHLE NAGAR NASHIK','SHREE SHREE RAVISHANKAR MARG','','Maharashtra','Kolhapur',422006,'sign_1681973495509.jpg','photo_1681973495506.jpg','[{\"eduSpecialization\":\"10th/SSC\",\"eduUniversity\":\"State Board\",\"eduMonth\":\"January\",\"eduYear\":\"1982\",\"eduMarksOutOf\":\"100\",\"eduMarksGain\":\"100\",\"eduPercent\":\"100.00\",\"eduClass\":\"Distinction\",\"id\":1,\"name\":\"SSC/10th\"}]','[]','[{\"organization\":\"AFMSLDGM\",\"location\":\"KLGMLK\",\"designation\":\"SDGKMSKL\",\"experience\":\"1\"}]',1,1,1,1,1,'12345','111111','112222222','12:22:09','2023-04-20','590','2023-04-20','12:18:26',NULL,NULL,'Christians','Yes','Yes','Marathi','0','0','0','English','0','0','0','No',NULL,'0','0','0','No','','No',NULL,NULL,'No','No','No','No','No','No','No','No','No','',-1,'1','KUNBI',500,18,90,1,NULL,0,'-','-',0,0,'State Transport Co-Operative Bank LTD Mumbai',0,0,0,0,0,0,'0',0,999,0,'-','-','-',0,'-','-','-','-',0,NULL,0),(28,14,3,'कनिष्ठ लिपिक','1981-09-18','male','st','unmarried','SHIVAJI','BABITA','-','FLAT 14 , BODHLE NAGAR NASHIK','','','Kerala','AFFSNF',422006,'sign_1681973690892.jpg','photo_1681974235622.jpg','[{\"eduSpecialization\":\"10th/SSC\",\"eduUniversity\":\"State Board\",\"eduMonth\":\"January\",\"eduYear\":\"1982\",\"eduMarksOutOf\":\"100\",\"eduMarksGain\":\"50\",\"eduPercent\":\"50.00\",\"eduClass\":\"Distinction\",\"id\":1,\"name\":\"SSC/10th\"},{\"eduSpecialization\":\"AITP\",\"eduUniversity\":\"State Board\",\"eduMonth\":\"January\",\"eduYear\":\"1982\",\"eduMarksOutOf\":\"100\",\"eduMarksGain\":\"50\",\"eduPercent\":\"50.00\",\"eduClass\":\"Distinction\",\"id\":5,\"name\":\"Graduation\"},{\"eduSpecialization\":\"D.M.\",\"eduUniversity\":\"State Board\",\"eduMonth\":\"February\",\"eduYear\":\"1982\",\"eduMarksOutOf\":\"100\",\"eduMarksGain\":\"50\",\"eduPercent\":\"50.00\",\"eduClass\":\"Distinction\",\"id\":6,\"name\":\"Post Graduation\"},{\"eduSpecialization\":\"2nd Class Wireman ship\",\"eduUniversity\":\"State Board\",\"eduMonth\":\"February\",\"eduYear\":\"1982\",\"eduMarksOutOf\":\"100\",\"eduMarksGain\":\"100\",\"eduPercent\":\"100.00\",\"eduClass\":\"First Class\",\"id\":7,\"name\":\"Computer Cirtification\"}]','[]','[]',1,1,1,0,0,NULL,NULL,NULL,NULL,NULL,'0','2023-04-20','12:22:31',NULL,NULL,'Other','Yes','Yes','Marathi','0','0','0','English','0','0','0','No',NULL,'0','0','0','No','','No',NULL,NULL,'No','No','No','No','No','No','No','No','No','',-1,'1','KUNBI',500,90,450,0,NULL,0,'-','-',0,0,'State Transport Co-Operative Bank LTD Mumbai',0,0,0,0,0,0,'0',0,999,0,'-','-','-',0,'-','-','-','-',0,NULL,0);
/*!40000 ALTER TABLE `utr_candidate_appications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utr_candidate_appications_final`
--

DROP TABLE IF EXISTS `utr_candidate_appications_final`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utr_candidate_appications_final` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `ca_reg_id` bigint NOT NULL,
  `ca_post_id` bigint NOT NULL,
  `ca_post_name` varchar(255) NOT NULL,
  `ca_dob` date NOT NULL,
  `ca_gender` varchar(10) NOT NULL,
  `ca_catagory` varchar(20) NOT NULL,
  `ca_marital_status` varchar(20) NOT NULL,
  `ca_fathers_name` varchar(32) NOT NULL,
  `ca_mothers_name` varchar(32) NOT NULL,
  `ca_spouse_name` varchar(32) DEFAULT NULL,
  `ca_address` longtext NOT NULL,
  `ca_line_two_address` longtext,
  `ca_line_three_address` longtext,
  `ca_state` varchar(50) NOT NULL,
  `ca_district` varchar(50) NOT NULL,
  `ca_pin_number` bigint NOT NULL,
  `ca_sign` longtext,
  `ca_photo` longtext,
  `ca_education_details` longtext,
  `ca_extraQualification` longtext,
  `ca_experienceList` longtext,
  `ca_general_details_done` int DEFAULT '0',
  `ca_education_details_done` int DEFAULT '0',
  `ca_document_details_done` int DEFAULT '0',
  `ca_preview_done` int DEFAULT '0',
  `ca_payment_done` int DEFAULT '0',
  `ca_payment_order_id` longtext,
  `ca_pament_order_signature` longtext,
  `ca_pament_payment_id` double DEFAULT NULL,
  `ca_payment_time` longtext,
  `ca_payment_date` date DEFAULT NULL,
  `ca_pament_ammount` varchar(100) DEFAULT '0',
  `ca_inserted_on_date` date DEFAULT NULL,
  `ca_inserted_on_time` varchar(30) DEFAULT NULL,
  `ca_update_on_date` date DEFAULT NULL,
  `ca_update_on_time` varchar(30) DEFAULT NULL,
  `ca_detailsReligion` varchar(30) DEFAULT NULL,
  `ca_detailsNationality` varchar(30) DEFAULT NULL,
  `ca_detailsDomicile` varchar(30) DEFAULT NULL,
  `ca_detailsMarathiLanguage` varchar(30) DEFAULT NULL,
  `ca_detailsMarathiLanguageRead` varchar(30) DEFAULT NULL,
  `ca_detailsMarathiLanguageWrite` varchar(30) DEFAULT NULL,
  `ca_detailsMarathiLanguageSpeak` varchar(30) DEFAULT NULL,
  `ca_detailsEnglishLanguage` varchar(30) DEFAULT NULL,
  `ca_detailsEnglishLanguageRead` varchar(30) DEFAULT NULL,
  `ca_detailsEnglishLanguageWrite` varchar(30) DEFAULT NULL,
  `ca_detailsEnglishLanguageSpeak` varchar(30) DEFAULT NULL,
  `ca_detailsEarthquakeAffected` varchar(30) DEFAULT NULL,
  `ca_detailsOtherLanguage` varchar(30) DEFAULT NULL,
  `ca_detailsOtherLanguageRead` varchar(30) DEFAULT NULL,
  `ca_detailsOtherLanguageWrite` varchar(30) DEFAULT NULL,
  `ca_detailsOtherLanguageSpeak` varchar(30) DEFAULT NULL,
  `ca_detailsDisability` varchar(30) DEFAULT NULL,
  `ca_detailsDisabilityType` varchar(100) DEFAULT NULL,
  `ca_detailsExServiceman` varchar(30) DEFAULT NULL,
  `ca_detailsExServicemanYear` varchar(30) DEFAULT NULL,
  `ca_detailsExServicemanMonth` varchar(30) DEFAULT NULL,
  `ca_detailsFreedomFighterChild` varchar(30) DEFAULT NULL,
  `ca_detailsProjectAffected` varchar(30) DEFAULT NULL,
  `ca_detailsMeritoriousSports` varchar(30) DEFAULT NULL,
  `ca_detailsChildWifeServicemanDied` varchar(30) DEFAULT NULL,
  `ca_detailsJDPendingInCourt` varchar(30) DEFAULT NULL,
  `ca_detailsJDPendingDisciplinaryOtherSimilarAction` varchar(30) DEFAULT NULL,
  `ca_detailsJDPendingDisciplinaryActionByGov` varchar(30) DEFAULT NULL,
  `ca_detailsJDCourtCaseFiled` varchar(30) DEFAULT NULL,
  `ca_detailsJDBlackListed` varchar(30) DEFAULT NULL,
  `ca_detailsSammanterText` varchar(30) DEFAULT NULL,
  `ca_detailsSammanter` bigint DEFAULT NULL,
  `ca_detailsNonCreamyLayer` varchar(30) DEFAULT NULL,
  `ca_detailsSubCategory` varchar(30) DEFAULT NULL,
  `ca_payment` double DEFAULT NULL,
  `ca_tax_per` double DEFAULT NULL,
  `ca_tax_payment` double DEFAULT NULL,
  `ca_payment_type` double NOT NULL DEFAULT '0',
  `ca_challan_date` date DEFAULT NULL,
  `ca_is_existing_emp` int NOT NULL DEFAULT '0',
  `ca_detailsExistingEmployeeDept` varchar(100) NOT NULL DEFAULT '-',
  `ca_detailsExistingEmployeeDeptPost` varchar(100) NOT NULL DEFAULT '-',
  `ca_detailsExistingEmployeeYear` double NOT NULL DEFAULT '0',
  `ca_detailsExistingEmployeeMonth` double NOT NULL DEFAULT '0',
  `ca_detailsMainPost` varchar(250) NOT NULL DEFAULT '-',
  `ca_mt` int NOT NULL DEFAULT '0',
  `ca_et` int NOT NULL DEFAULT '0',
  `ca_ht` int NOT NULL DEFAULT '0',
  `ca_mf` int NOT NULL DEFAULT '0',
  `ca_ef` int NOT NULL DEFAULT '0',
  `ca_hf` int NOT NULL DEFAULT '0',
  `ca_challanBranchCode` varchar(50) NOT NULL DEFAULT '0',
  `ca_valid_user` int NOT NULL DEFAULT '0',
  `ca_post_order` int NOT NULL DEFAULT '999',
  `ca_roll_number` bigint NOT NULL DEFAULT '0',
  `ca_center_name` varchar(150) NOT NULL DEFAULT '-',
  `ca_center_code` varchar(10) NOT NULL DEFAULT '-',
  `ca_batch_time` varchar(50) NOT NULL DEFAULT '-',
  `ca_batch_slot` int NOT NULL DEFAULT '0',
  `ca_center_address` varchar(150) NOT NULL DEFAULT '-',
  `ca_center_lab_no` varchar(150) NOT NULL DEFAULT '-',
  `ca_center_floor` varchar(150) NOT NULL DEFAULT '-',
  `ca_center_department` varchar(150) NOT NULL DEFAULT '-',
  `ca_ht_download` int NOT NULL DEFAULT '0',
  `ca_exam_date` date DEFAULT NULL,
  `ca_is_alloted` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ca_reg_id` (`ca_reg_id`),
  KEY `ca_post_id` (`ca_post_id`),
  KEY `ca_catagory` (`ca_catagory`),
  KEY `ca_gender` (`ca_gender`),
  KEY `ca_detailsMainPost` (`ca_detailsMainPost`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utr_candidate_appications_final`
--

LOCK TABLES `utr_candidate_appications_final` WRITE;
/*!40000 ALTER TABLE `utr_candidate_appications_final` DISABLE KEYS */;
/*!40000 ALTER TABLE `utr_candidate_appications_final` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utr_category`
--

DROP TABLE IF EXISTS `utr_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utr_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utr_category`
--

LOCK TABLES `utr_category` WRITE;
/*!40000 ALTER TABLE `utr_category` DISABLE KEYS */;
INSERT INTO `utr_category` VALUES (1,'sc'),(2,'st'),(3,'vja'),(4,'ntb'),(5,'ntd'),(6,'sbc'),(7,'obc');
/*!40000 ALTER TABLE `utr_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utr_challan_info`
--

DROP TABLE IF EXISTS `utr_challan_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utr_challan_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ci_bank_name` varchar(75) NOT NULL,
  `ci_account_number` varchar(75) NOT NULL,
  `ci_bank_address` longtext NOT NULL,
  `ci_ifsc_code` varchar(75) NOT NULL,
  `ci_bank_contact_no` varchar(75) NOT NULL,
  `ci_bank_fees` double NOT NULL,
  `ci_bank_branch` varchar(75) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utr_challan_info`
--

LOCK TABLES `utr_challan_info` WRITE;
/*!40000 ALTER TABLE `utr_challan_info` DISABLE KEYS */;
INSERT INTO `utr_challan_info` VALUES (1,'Yavatmal District Central Co-Operative Bank Limited','000105960100509','Yavatmal ','-','-',0,'Yavatmal ');
/*!40000 ALTER TABLE `utr_challan_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utr_collage`
--

DROP TABLE IF EXISTS `utr_collage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utr_collage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `c_collageName` varchar(255) NOT NULL,
  `c_collageCode` varchar(255) NOT NULL,
  `c_collageAddress` longtext NOT NULL,
  `c_collageEmailId` varchar(100) NOT NULL,
  `c_collageContact` varchar(15) NOT NULL,
  `c_collageAltContact` varchar(15) NOT NULL,
  `c_collageCollageCount` double NOT NULL,
  `c_collageCollageBufferCount` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utr_collage`
--

LOCK TABLES `utr_collage` WRITE;
/*!40000 ALTER TABLE `utr_collage` DISABLE KEYS */;
INSERT INTO `utr_collage` VALUES (19,'Sipna College of Engineering and Technology','101','Sipna Campus, Infront of Nemani Godown, Badnera Road, Amravati-444701','-','9890233768','9834658273',310,30),(20,'Mahalaxmi Infotech','102','C/O Nanibai B. Ed. College, Samata Colony, Kathora Road, Near Rangoli Lawn, Amravati-444604','-','7020259895','8087648684',250,25),(23,'Sarvadnya Infotech','103','Warhade D. Ed. College, Behind Maharshi Public School, Navsari, Amravati-444602 ','-','7020586998','8080127180',180,20),(24,'Dr. Rajendra Gode Institute of Technology and Research','104','Near Shri Sant Achyut Maharaj Heart Hospital, University Mardi Road, Amravati-444602','-','9422159868','9890310439',150,25),(25,'Probity Infotech','105','Dreamzland Business Park, Wing B4, 2nd Floor, Sh. No. 237-240, Borgaon (Dh.), Amravati-Nagpur Highway, Beside Royal Toyota, Amravati-444901','-','8668408867','9834658273',100,10);
/*!40000 ALTER TABLE `utr_collage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utr_interview_slot`
--

DROP TABLE IF EXISTS `utr_interview_slot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utr_interview_slot` (
  `id` int NOT NULL AUTO_INCREMENT,
  `main_post` varchar(255) NOT NULL,
  `sub_post` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utr_interview_slot`
--

LOCK TABLES `utr_interview_slot` WRITE;
/*!40000 ALTER TABLE `utr_interview_slot` DISABLE KEYS */;
/*!40000 ALTER TABLE `utr_interview_slot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utr_master_auth`
--

DROP TABLE IF EXISTS `utr_master_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utr_master_auth` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_name` varchar(1024) NOT NULL,
  `password` varchar(1024) NOT NULL,
  `roll` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utr_master_auth`
--

LOCK TABLES `utr_master_auth` WRITE;
/*!40000 ALTER TABLE `utr_master_auth` DISABLE KEYS */;
INSERT INTO `utr_master_auth` VALUES (1,'a','a',0),(2,'Admin','ydcc',1);
/*!40000 ALTER TABLE `utr_master_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utr_payment_info`
--

DROP TABLE IF EXISTS `utr_payment_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utr_payment_info` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `pi_post_id` bigint NOT NULL,
  `pi_category_id` bigint NOT NULL,
  `cat_name` varchar(255) NOT NULL,
  `pi_payment` double NOT NULL,
  `pi_tax_per` double NOT NULL,
  `pi_tax_payment` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pi_post_id` (`pi_post_id`),
  KEY `pi_category_id` (`pi_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utr_payment_info`
--

LOCK TABLES `utr_payment_info` WRITE;
/*!40000 ALTER TABLE `utr_payment_info` DISABLE KEYS */;
INSERT INTO `utr_payment_info` VALUES (57,1,1,'sc',750,0,0),(58,1,2,'st',750,0,0),(59,1,3,'vja',750,0,0),(60,1,4,'ntb',750,0,0),(61,1,5,'ntd',750,0,0),(62,1,6,'sbc',750,0,0),(63,1,7,'obc',750,0,0),(64,2,1,'sc',750,0,0),(65,2,2,'st',750,0,0),(66,2,3,'vja',750,0,0),(67,2,4,'ntb',750,0,0),(68,2,5,'ntd',750,0,0),(69,2,6,'sbc',750,0,0),(70,2,7,'obc',750,0,0),(71,3,1,'sc',500,90,450),(72,3,2,'st',500,90,450),(73,3,3,'vja',500,90,450),(74,3,4,'ntb',500,90,450),(75,3,5,'ntd',500,90,450),(76,3,6,'sbc',500,90,450),(77,3,7,'obc',500,90,450),(78,4,1,'sc',500,18,90),(79,4,2,'st',500,18,90),(80,4,3,'vja',500,18,90),(81,4,4,'ntb',500,18,90),(82,4,5,'ntd',500,18,90),(83,4,6,'sbc',500,18,90),(84,4,7,'obc',500,18,90);
/*!40000 ALTER TABLE `utr_payment_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utr_post`
--

DROP TABLE IF EXISTS `utr_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utr_post` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `main_post_name` varchar(255) NOT NULL,
  `post_name` varchar(255) NOT NULL DEFAULT '',
  `post_fee` double DEFAULT NULL,
  `post_fee_tax` double DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `post_com_citification` int DEFAULT '0',
  `post_graduation` int DEFAULT '0',
  `post_tenth` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `post_name` (`main_post_name`),
  KEY `main_post_name` (`post_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utr_post`
--

LOCK TABLES `utr_post` WRITE;
/*!40000 ALTER TABLE `utr_post` DISABLE KEYS */;
INSERT INTO `utr_post` VALUES (3,'State Transport Co-Operative Bank LTD Mumbai','कनिष्ठ लिपिक',500,90,NULL,1,1,1),(4,'State Transport Co-Operative Bank LTD Mumbai','शिपाई',500,90,NULL,0,0,1);
/*!40000 ALTER TABLE `utr_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utr_process`
--

DROP TABLE IF EXISTS `utr_process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utr_process` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `p_name` varchar(255) NOT NULL,
  `p_desc` varchar(255) NOT NULL,
  `p_start_date` date NOT NULL,
  `p_end_date` date NOT NULL,
  `p_end_edit_date` date NOT NULL,
  `p_end_print_date` date NOT NULL,
  `p_image` longtext NOT NULL,
  `p_print_ht` int NOT NULL,
  `p_payment_mode` int NOT NULL DEFAULT '2',
  `p_form_filling_site` longtext NOT NULL,
  `p_final_candidate` int NOT NULL DEFAULT '0',
  `p_primary_post` int NOT NULL DEFAULT '0',
  `p_post_roll_no_set` int NOT NULL DEFAULT '0',
  `p_finalise_allotment` int NOT NULL DEFAULT '0',
  `p_print_hall_tickite` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utr_process`
--

LOCK TABLES `utr_process` WRITE;
/*!40000 ALTER TABLE `utr_process` DISABLE KEYS */;
INSERT INTO `utr_process` VALUES (1,'State Transport Co-Operative Bank LTD Mumbai ','-','2021-07-06','2021-07-18','2021-07-18','2021-07-20','/assets/images/brand-name.jpeg',0,1,' https://www.demo.in/',0,0,0,0,0);
/*!40000 ALTER TABLE `utr_process` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utr_process_slots`
--

DROP TABLE IF EXISTS `utr_process_slots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utr_process_slots` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slot` varchar(10) NOT NULL,
  `time` varchar(100) NOT NULL,
  `entry_time` varchar(50) NOT NULL,
  `gate_close_time` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utr_process_slots`
--

LOCK TABLES `utr_process_slots` WRITE;
/*!40000 ALTER TABLE `utr_process_slots` DISABLE KEYS */;
INSERT INTO `utr_process_slots` VALUES (1,'1','08:30 am to 10:00 am','07:30 am','08:15 am'),(2,'2','11:30 am to 01:00 pm','10:30 am','11:15 am'),(3,'3','02:30 pm to 04:30 pm','01:30 pm','02:15 pm'),(4,'4','05:30 pm to 07:00 pm','04:30 pm','05:15 pm');
/*!40000 ALTER TABLE `utr_process_slots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utr_result`
--

DROP TABLE IF EXISTS `utr_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utr_result` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `roll_no` bigint NOT NULL,
  `app_id` bigint NOT NULL,
  `name` varchar(512) NOT NULL,
  `caste` varchar(512) NOT NULL,
  `post` varchar(512) NOT NULL,
  `sub_post` varchar(512) NOT NULL,
  `correct` varchar(512) NOT NULL,
  `wrong` varchar(512) NOT NULL,
  `result` varchar(512) NOT NULL,
  `n_date` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utr_result`
--

LOCK TABLES `utr_result` WRITE;
/*!40000 ALTER TABLE `utr_result` DISABLE KEYS */;
/*!40000 ALTER TABLE `utr_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utr_sammanter_list`
--

DROP TABLE IF EXISTS `utr_sammanter_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utr_sammanter_list` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sm_name` varchar(255) NOT NULL,
  `sm_set` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utr_sammanter_list`
--

LOCK TABLES `utr_sammanter_list` WRITE;
/*!40000 ALTER TABLE `utr_sammanter_list` DISABLE KEYS */;
INSERT INTO `utr_sammanter_list` VALUES (1,'नाही',0),(2,'माजी सैनिक',0),(3,'अंशकालीन',0),(4,'खेळाडू',0),(5,'अपंग',0),(6,'प्रकल्पग्रस्त',0),(7,'भूकंपग्रस्त',0),(8,'अनाथ',0),(9,'सर्वसाधारण',0),(10,'महिला',0);
/*!40000 ALTER TABLE `utr_sammanter_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utr_sammanter_post_category`
--

DROP TABLE IF EXISTS `utr_sammanter_post_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utr_sammanter_post_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `spc_post_id` bigint NOT NULL,
  `spc_category_id` bigint NOT NULL,
  `spc_sammanter_id` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utr_sammanter_post_category`
--

LOCK TABLES `utr_sammanter_post_category` WRITE;
/*!40000 ALTER TABLE `utr_sammanter_post_category` DISABLE KEYS */;
INSERT INTO `utr_sammanter_post_category` VALUES (28,2,4,9),(29,2,7,9),(30,2,7,10),(31,2,7,2),(32,1,1,2),(33,1,1,3),(34,1,1,9),(35,1,1,10),(36,1,2,2),(37,1,2,3),(38,1,2,9),(39,1,2,10),(40,1,3,9),(41,1,3,10),(42,1,4,9),(43,1,4,10),(44,1,5,9),(45,1,6,9),(46,1,6,10),(47,1,7,2),(48,1,7,3),(49,1,7,9),(50,1,7,10),(51,2,2,9),(52,2,2,10),(53,2,7,3),(54,3,1,1),(56,4,1,1),(57,4,2,1),(58,4,3,1),(59,4,4,1),(60,4,5,1),(61,4,6,1),(62,4,7,1),(63,3,2,1),(64,3,3,1),(65,3,4,1),(66,3,5,1),(67,3,6,1),(68,3,7,1);
/*!40000 ALTER TABLE `utr_sammanter_post_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utr_user_basic`
--

DROP TABLE IF EXISTS `utr_user_basic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utr_user_basic` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `ub_otp` bigint DEFAULT NULL,
  `ub_password` varchar(40) NOT NULL,
  `ub_first_name` varchar(40) NOT NULL,
  `ub_middle_name` varchar(40) NOT NULL,
  `ub_last_name` varchar(40) NOT NULL,
  `ub_mobile_number` varchar(15) NOT NULL,
  `ub_alternative_number` varchar(15) DEFAULT NULL,
  `ub_email_id` varchar(255) NOT NULL,
  `ub_aadhar_number` varchar(12) NOT NULL,
  `ub_pan_card` varchar(10) NOT NULL,
  `ub_inserted_timestamp` varchar(20) DEFAULT NULL,
  `ub_inser_date` varchar(20) DEFAULT NULL,
  `ub_update_timestamp` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ub_email_id` (`ub_email_id`),
  KEY `ub_mobile_number` (`ub_mobile_number`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utr_user_basic`
--

LOCK TABLES `utr_user_basic` WRITE;
/*!40000 ALTER TABLE `utr_user_basic` DISABLE KEYS */;
INSERT INTO `utr_user_basic` VALUES (1,NULL,'1','A','A','A','2222222222','2222222222','DEEPAK@GMAIL.COM','111111111111','1111111111',NULL,NULL,NULL),(2,NULL,'o6qpm811','D','D','D','5555555555','5555555555','A@A.COM','333333333333','2222222222',NULL,NULL,NULL),(3,NULL,'xulpy1yg','AAA','AAA','AAA','1111111111','','A@A','111111111112','1111111111',NULL,NULL,NULL),(4,NULL,'2cr8xv5d','AAA','A','A','1111111111','1111111111','1@1','111111111113','1111111111',NULL,NULL,NULL),(5,NULL,'7idxk2bk','A','A','A','2222222222','','3@3','666666666666','6666666666',NULL,NULL,NULL),(6,NULL,'6','A','A','A','7777777777','','D@D','444444444444','5555555555',NULL,NULL,NULL),(7,NULL,'n87txjks','D','D','D','8888888888','','H@H','888888888888','8888888888',NULL,NULL,NULL),(8,NULL,'8','A','A','A','1111111111','','A@A','444444444441','4444444444',NULL,NULL,NULL),(10,NULL,'1','GAURAV','NARAYAN','VAIDYA','9922694311','7066166080','GAURAVVAIDYA@GMAIL.COM','123456789000','AKCPV8809N',NULL,NULL,NULL),(11,NULL,'11','A','A','A','1111111111','','deepakkumar.shinde0@gmail.com@undefined','211111111112','',NULL,NULL,NULL),(12,NULL,'wxht2jyp','A','A','A','1111111111','','deepakkumar.shinde0@gmail.com','111111111115','',NULL,NULL,NULL),(13,NULL,'9dpgzdnb','S','S','S','4444444444','','deepakkumar.shinde0@gmail.com','111111111116','',NULL,NULL,NULL),(14,NULL,'6dzb0yzm','D','D','D','4444444444','','deepakkumar.shinde0@gmail.com','111111111117','',NULL,NULL,NULL);
/*!40000 ALTER TABLE `utr_user_basic` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-20 12:36:56
