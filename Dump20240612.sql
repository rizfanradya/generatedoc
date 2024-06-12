-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: generatedoc
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add siswa',7,'add_siswa'),(26,'Can change siswa',7,'change_siswa'),(27,'Can delete siswa',7,'delete_siswa'),(28,'Can view siswa',7,'view_siswa');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$720000$i8HIDzIkugeqF7zqBh3qDc$OXUVlh++oGi678lvHrT+xe8OGph2LwxDnpFofq5fg8A=','2024-06-10 19:22:27.368699',1,'admin','','','admin@gmail.com',1,1,'2024-06-10 16:22:09.032867');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-06-10 16:24:03.067722','1','test',1,'[{\"added\": {}}]',7,1),(2,'2024-06-10 16:35:20.204073','2','test 2',1,'[{\"added\": {}}]',7,1),(3,'2024-06-10 19:15:28.941315','1','ADITIA FATUR',2,'[{\"changed\": {\"fields\": [\"Nama\", \"Pendidikan agama\", \"Pendidikan pancasila\", \"Bahasa indonesia\", \"Matematika\", \"Ipa\", \"Ips\", \"Seni budaya\", \"Penjasorkes\", \"Bahasa lampung\", \"Pendidikan anti korupsi\"]}}]',7,1),(4,'2024-06-10 19:33:21.231613','2','RIFKI PRATAMA',2,'[{\"changed\": {\"fields\": [\"Nama\", \"Pendidikan agama\", \"Pendidikan pancasila\", \"Bahasa indonesia\", \"Matematika\", \"Ipa\", \"Ips\", \"Seni budaya\", \"Penjasorkes\", \"Bahasa lampung\", \"Pendidikan anti korupsi\"]}}]',7,1),(5,'2024-06-10 19:34:33.960849','3','RISMA LUFIANA',1,'[{\"added\": {}}]',7,1),(6,'2024-06-10 19:36:44.938908','4','RIZKI MARCELLINO',1,'[{\"added\": {}}]',7,1),(7,'2024-06-10 19:37:35.242922','2','RIFKI PRATAMA',2,'[{\"changed\": {\"fields\": [\"Seni budaya\", \"Penjasorkes\"]}}]',7,1),(8,'2024-06-10 19:39:24.295747','5','SALSABILA NOVITA MUTIANA',1,'[{\"added\": {}}]',7,1),(9,'2024-06-10 19:40:48.596891','6','SHELA SETIA NINGRUM',1,'[{\"added\": {}}]',7,1),(10,'2024-06-10 19:41:49.068170','7','SIFA MEILISA PUTRI',1,'[{\"added\": {}}]',7,1),(11,'2024-06-10 19:42:35.682520','8','SUCI AULIA',1,'[{\"added\": {}}]',7,1),(12,'2024-06-10 19:43:30.646496','9','SUKMA ARIF MAULANA',1,'[{\"added\": {}}]',7,1),(13,'2024-06-10 19:44:34.946614','10','VINO RISKI PRATAMA',1,'[{\"added\": {}}]',7,1),(14,'2024-06-10 19:45:40.509190','11','ZHAKY REVANDO',1,'[{\"added\": {}}]',7,1),(15,'2024-06-10 19:55:04.400243','2','RIFKI PRATAMA',2,'[{\"changed\": {\"fields\": [\"Tempat tanggal lahir\", \"Nomor induk siswa\", \"Nisn\"]}}]',7,1),(16,'2024-06-10 19:56:03.678645','1','ADITIA FATUR',2,'[{\"changed\": {\"fields\": [\"Tempat tanggal lahir\", \"Nomor induk siswa\", \"Nisn\"]}}]',7,1),(17,'2024-06-10 19:56:51.812453','3','RISMA LUFIANA',2,'[{\"changed\": {\"fields\": [\"Tempat tanggal lahir\", \"Nomor induk siswa\", \"Nisn\"]}}]',7,1),(18,'2024-06-10 19:57:36.783809','4','RIZKI MARCELLINO',2,'[{\"changed\": {\"fields\": [\"Tempat tanggal lahir\", \"Nomor induk siswa\", \"Nisn\"]}}]',7,1),(19,'2024-06-10 19:59:01.558740','5','SALSABILA NOVITA MUTIANA',2,'[{\"changed\": {\"fields\": [\"Tempat tanggal lahir\", \"Nomor induk siswa\", \"Nisn\"]}}]',7,1),(20,'2024-06-10 19:59:42.343867','6','SHELA SETIA NINGRUM',2,'[{\"changed\": {\"fields\": [\"Tempat tanggal lahir\", \"Nomor induk siswa\", \"Nisn\"]}}]',7,1),(21,'2024-06-10 20:00:31.779663','7','SIFA MEILISA PUTRI',2,'[{\"changed\": {\"fields\": [\"Tempat tanggal lahir\", \"Nomor induk siswa\", \"Nisn\"]}}]',7,1),(22,'2024-06-10 20:01:11.016566','8','SUCI AULIA',2,'[{\"changed\": {\"fields\": [\"Tempat tanggal lahir\", \"Nomor induk siswa\", \"Nisn\"]}}]',7,1),(23,'2024-06-10 20:02:39.036745','1','ADITIA FATUR',2,'[{\"changed\": {\"fields\": [\"Tempat tanggal lahir\"]}}]',7,1),(24,'2024-06-10 20:03:00.228749','2','RIFKI PRATAMA',2,'[{\"changed\": {\"fields\": [\"Tempat tanggal lahir\"]}}]',7,1),(25,'2024-06-10 20:03:22.671771','3','RISMA LUFIANA',2,'[{\"changed\": {\"fields\": [\"Tempat tanggal lahir\"]}}]',7,1),(26,'2024-06-10 20:03:44.221389','4','RIZKI MARCELLINO',2,'[{\"changed\": {\"fields\": [\"Tempat tanggal lahir\"]}}]',7,1),(27,'2024-06-10 20:04:06.253022','5','SALSABILA NOVITA MUTIANA',2,'[{\"changed\": {\"fields\": [\"Tempat tanggal lahir\"]}}]',7,1),(28,'2024-06-10 20:04:34.140725','6','SHELA SETIA NINGRUM',2,'[{\"changed\": {\"fields\": [\"Tempat tanggal lahir\"]}}]',7,1),(29,'2024-06-10 20:05:00.880322','7','SIFA MEILISA PUTRI',2,'[{\"changed\": {\"fields\": [\"Tempat tanggal lahir\"]}}]',7,1),(30,'2024-06-10 20:05:20.822739','8','SUCI AULIA',2,'[{\"changed\": {\"fields\": [\"Tempat tanggal lahir\"]}}]',7,1),(31,'2024-06-10 20:06:27.368890','9','SUKMA ARIF MAULANA',2,'[{\"changed\": {\"fields\": [\"Tempat tanggal lahir\", \"Nomor induk siswa\", \"Nisn\"]}}]',7,1),(32,'2024-06-10 20:07:19.706672','10','VINO RISKI PRATAMA',2,'[{\"changed\": {\"fields\": [\"Tempat tanggal lahir\", \"Nomor induk siswa\", \"Nisn\"]}}]',7,1),(33,'2024-06-10 20:09:35.169787','11','ZHAKY REVANDO',2,'[{\"changed\": {\"fields\": [\"Tempat tanggal lahir\", \"Nomor induk siswa\", \"Nisn\"]}}]',7,1),(34,'2024-06-10 20:21:50.939448','12','AHMAD WALUYO',1,'[{\"added\": {}}]',7,1),(35,'2024-06-10 20:22:03.425582','12','AHMAD WALUYO',2,'[{\"changed\": {\"fields\": [\"Tempat tanggal lahir\"]}}]',7,1),(36,'2024-06-10 20:24:17.303790','13','AMELIA SAPUTRI',1,'[{\"added\": {}}]',7,1),(37,'2024-06-10 20:27:08.005816','14','ANISA TALIASARI',1,'[{\"added\": {}}]',7,1),(38,'2024-06-10 20:29:48.201705','15','APRELIA DWI ANJARANI',1,'[{\"added\": {}}]',7,1),(39,'2024-06-10 20:31:38.183007','16','ASSIFA MAHARANI',1,'[{\"added\": {}}]',7,1),(40,'2024-06-10 20:33:14.146133','17','AYU SETIA NINGSIH',1,'[{\"added\": {}}]',7,1),(41,'2024-06-10 20:34:52.028700','18','DEVAN ADI PRATAMA',1,'[{\"added\": {}}]',7,1),(42,'2024-06-10 20:37:57.165078','19','DIMAS SYARIFFUDIN PRADANA',1,'[{\"added\": {}}]',7,1),(43,'2024-06-10 20:39:50.744855','20','FAISAL HANIV MUSTAFA',1,'[{\"added\": {}}]',7,1),(44,'2024-06-10 20:41:26.083839','21','FALOVIE ADI KATAMA',1,'[{\"added\": {}}]',7,1),(45,'2024-06-10 20:43:23.057079','22','FIKA LIYANA',1,'[{\"added\": {}}]',7,1),(46,'2024-06-10 20:44:57.598943','23','FITRIYANI SOLEHA',1,'[{\"added\": {}}]',7,1),(47,'2024-06-10 20:46:52.536837','24','IBNU CAHYO PRAYOGO',1,'[{\"added\": {}}]',7,1),(48,'2024-06-10 20:51:26.945871','25','IQBAL SETIAWAN',1,'[{\"added\": {}}]',7,1),(49,'2024-06-10 20:53:00.519931','26','KLARA ASYIFA PUTRI',1,'[{\"added\": {}}]',7,1),(50,'2024-06-10 20:54:38.245368','27','M. RIDUWAN',1,'[{\"added\": {}}]',7,1),(51,'2024-06-10 20:56:27.904705','28','MUHAMMAD YUDHA PRASETYA',1,'[{\"added\": {}}]',7,1),(52,'2024-06-10 20:57:59.068010','29','NAZWA APRILIA SALSABILA',1,'[{\"added\": {}}]',7,1),(53,'2024-06-10 20:59:24.619988','30','NAZZALA JASMINE AULIA',1,'[{\"added\": {}}]',7,1),(54,'2024-06-10 21:01:46.289513','31','NOVA APRILYA',1,'[{\"added\": {}}]',7,1),(55,'2024-06-10 21:03:24.306335','32','NOVA IRAWAN',1,'[{\"added\": {}}]',7,1),(56,'2024-06-10 21:05:05.043919','33','PUSPITA SARI',1,'[{\"added\": {}}]',7,1),(57,'2024-06-10 21:07:17.439871','34','PUTRI NUR ROSIDAH',1,'[{\"added\": {}}]',7,1),(58,'2024-06-10 21:08:54.164387','35','RAFA AJI SAPUTRA',1,'[{\"added\": {}}]',7,1),(59,'2024-06-10 21:11:01.766774','36','RAFFA KURNIAWAN',1,'[{\"added\": {}}]',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'generatedoc','siswa'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-06-10 16:20:20.712666'),(2,'auth','0001_initial','2024-06-10 16:20:23.489523'),(3,'admin','0001_initial','2024-06-10 16:20:24.306151'),(4,'admin','0002_logentry_remove_auto_add','2024-06-10 16:20:24.315151'),(5,'admin','0003_logentry_add_action_flag_choices','2024-06-10 16:20:24.327186'),(6,'contenttypes','0002_remove_content_type_name','2024-06-10 16:20:24.436150'),(7,'auth','0002_alter_permission_name_max_length','2024-06-10 16:20:24.503154'),(8,'auth','0003_alter_user_email_max_length','2024-06-10 16:20:24.528154'),(9,'auth','0004_alter_user_username_opts','2024-06-10 16:20:24.540155'),(10,'auth','0005_alter_user_last_login_null','2024-06-10 16:20:24.610635'),(11,'auth','0006_require_contenttypes_0002','2024-06-10 16:20:24.613637'),(12,'auth','0007_alter_validators_add_error_messages','2024-06-10 16:20:24.621638'),(13,'auth','0008_alter_user_username_max_length','2024-06-10 16:20:24.697636'),(14,'auth','0009_alter_user_last_name_max_length','2024-06-10 16:20:24.778637'),(15,'auth','0010_alter_group_name_max_length','2024-06-10 16:20:24.797637'),(16,'auth','0011_update_proxy_permissions','2024-06-10 16:20:24.805635'),(17,'auth','0012_alter_user_first_name_max_length','2024-06-10 16:20:24.898637'),(18,'generatedoc','0001_initial','2024-06-10 16:20:24.929635'),(19,'sessions','0001_initial','2024-06-10 16:20:24.975636');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('bqb8np9rrzxcduhakrnhdtd46a8szpq8','.eJxVjDsOwjAQBe_iGln-e6Gk5wzWZr3BAWRLcVIh7k4ipYB2Zt57i4TrUtLaeU5TFhehxemXDUhPrrvID6z3JqnVZZ4GuSfysF3eWubX9Wj_Dgr2sq2jgpEzZEcqKLSGYkSINngyCsFGRqvdBoxno-PoSQOdDbAHq7wPTny-x3c2jQ:1sGhnb:KltIXzDijrmYnExfijD13TWEK8PWUWJnIm8XELI3l4U','2024-06-24 16:23:11.139412'),('gctti9fr4elt6z9wuwucvylvsi7fp6e0','.eJxVjDsOwjAQBe_iGln-e6Gk5wzWZr3BAWRLcVIh7k4ipYB2Zt57i4TrUtLaeU5TFhehxemXDUhPrrvID6z3JqnVZZ4GuSfysF3eWubX9Wj_Dgr2sq2jgpEzZEcqKLSGYkSINngyCsFGRqvdBoxno-PoSQOdDbAHq7wPTny-x3c2jQ:1sGkb5:eUYRtW3xNmntm792lUS9pwK6Ln2Ur4xnRp4xa5xnI2g','2024-06-24 19:22:27.372742');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generatedoc_siswa`
--

DROP TABLE IF EXISTS `generatedoc_siswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generatedoc_siswa` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `tempat_tanggal_lahir` varchar(100) NOT NULL,
  `nomor_induk_siswa` varchar(20) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `pendidikan_agama` double NOT NULL,
  `pendidikan_pancasila` double NOT NULL,
  `bahasa_indonesia` double NOT NULL,
  `matematika` double NOT NULL,
  `ipa` double NOT NULL,
  `ips` double NOT NULL,
  `seni_budaya` double NOT NULL,
  `penjasorkes` double NOT NULL,
  `bahasa_lampung` double NOT NULL,
  `pendidikan_anti_korupsi` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generatedoc_siswa`
--

LOCK TABLES `generatedoc_siswa` WRITE;
/*!40000 ALTER TABLE `generatedoc_siswa` DISABLE KEYS */;
INSERT INTO `generatedoc_siswa` VALUES (1,'ADITIA FATUR','Lempuyang Bandar, 08 September 2011','2321','0113123291',76,70,70,70,70,70,80,70,70,70),(2,'RIFKI PRATAMA','Bandar Rejo, 06 Oktober 2011','244','0119589084',80,74,74,73,73,73,75,74,72,72),(3,'RISMA LUFIANA','Lempuyang Bandar, 06 Desember 2012','125','0126702909',81,70,70,70,70,70,70,70,80,70),(4,'RIZKI MARCELLINO','Putra Lempuyang, 18 Maret 2012','2410','0127939010',78,75,75,75,85,75,85,75,80,80),(5,'SALSABILA NOVITA MUTIANA','Banjar Rejo, 01 November 2011','567','0119606314',90,85,85,75,80,85,85,80,85,85),(6,'SHELA SETIA NINGRUM','Lempuyang Bandar, 06 Desember 2010','322','0106611834',95,85,85,75,85,85,85,85,85,87),(7,'SIFA MEILISA PUTRI','Rejo Sari, 26 Mei 2012','654','0127506197',83,76,74,74,74,72,73,75,72,72),(8,'SUCI AULIA','Bandar Rejo, 07 Agustus 2011','123','0113156746',89,80,80,75,80,80,80,80,80,80),(9,'SUKMA ARIF MAULANA','Bandar Rejo, 27 Juli 2011','2319','0111131439',78,71,71,71,72,70,73,75,72,71),(10,'VINO RISKI PRATAMA','Bandar Rejo, 15 Oktober 2011','247','0118171465',85,70,70,75,75,70,70,75,80,70),(11,'ZHAKY REVANDO','Bandar Rejo, 27 Maret 2011','138','0117776157',76,70,70,70,70,70,70,80,80,70),(12,'AHMAD WALUYO','Qurnia Mataram, 03 Oktober 2010','2328','0105926939',75,71,70,70,70,70,70,71,70,70),(13,'AMELIA SAPUTRI','Pajar Mataram, 25 Maret 2011','2814','0116291052',73,80,77,77,77,76,74,73,75,78),(14,'ANISA TALIASARI','Bandar Rejo, 25 Desember 2011','857','0119704369',86,80,80,80,80,80,85,70,80,80),(15,'APRELIA DWI ANJARANI','Lampug Tengah, 10 April 2009','2411','0107241059',75,73,71,71,70,71,71,72,71,73),(16,'ASSIFA MAHARANI','Bandar Rejo, 11 Januari 2012','233','0121978816',81,75,74,75,73,75,74,73,76,75),(17,'AYU SETIA NINGSIH','Bandar Rejo, 19 September 2011','133','0114686593',83,80,79,79,80,80,77,74,74,78),(18,'DEVAN ADI PRATAMA','Putra Lempuyang, 26 September 2011','132','0113713484',77,70,72,74,71,72,72,71,75,75),(19,'DIMAS SYARIFFUDIN PRADANA','Bandar Rejo, 08 Maret 2012','235','0122056751',82,85,70,70,70,70,85,70,75,80),(20,'FAISAL HANIV MUSTAFA','Bandar Rejo, 31 Januari 2012','236','0128676605',77,70,71,71,71,72,71,73,71,74),(21,'FALOVIE ADI KATAMA','Lempuyang Bandar, 05 Oktober 2011','212','0119313160',87,79,74,76,74,76,76,73,75,77),(22,'FIKA LIYANA','Bandar Rejo, 30 November 2011','2312','0112151690',76,79,77,78,76,79,75,75,78,79),(23,'FITRIYANI SOLEHA','Lampug Tengah, 02 Oktober 2010','2358','0103562064',75,71,73,71,71,72,74,73,72,74),(24,'IBNU CAHYO PRAYOGO','Bandar Rejo, 11 November 2011','435','0115368387',79,75,72,72,73,72,71,73,71,70),(25,'IQBAL SETIAWAN','Agung Jaya, 31 Oktober 2011','321','0113910967',80,70,70,70,75,75,80,70,85,70),(26,'KLARA ASYIFA PUTRI','Pales, 27 Maret 2012','134','0124115449',82,76,75,75,75,75,75,75,77,78),(27,'M. RIDUWAN','Bandar Rejo, 22 Agustus 2012','127','0123282298',84,75,70,75,75,70,85,70,70,75),(28,'MUHAMMAD YUDHA PRASETYA','Bandar Rejo, 26 Juli 2011','246','0113266676',90,75,70,75,89,80,80,75,80,80),(29,'NAZWA APRILIA SALSABILA','Lempuyang Bandar, 07 April 2012','1999','0129427503',90,85,85,80,89,80,85,80,85,85),(30,'NAZZALA JASMINE AULIA','Bandar Rejo, 29 Desember 2011','342','0117110142',83,78,76,76,75,78,71,75,73,75),(31,'NOVA APRILYA','Lempuyang Bandar, 06 April 2011','2311','0117859623',85,78,75,76,76,76,76,83,78,75),(32,'NOVA IRAWAN','Bandar Rejo, 31 Oktober 2011','232','0113245870',87,75,70,70,70,70,70,70,80,75),(33,'PUSPITA SARI','Bandar Rejo, 29 Januari 2012','765','0121377740',83,73,75,74,73,75,74,73,74,75),(34,'PUTRI NUR ROSIDAH','Bandar Rejo, 28 Maret 2011','2404','0119838504',82,75,85,70,70,70,80,75,85,80),(35,'RAFA AJI SAPUTRA','Lempuyang Bandar, 30 Desember 2011','248','0117479137',80,70,70,70,70,70,70,70,80,85),(36,'RAFFA KURNIAWAN','Lempuyang Bandar, 12 Juni 2011','136','0115187636',80,72,72,72,72,72,72,74,70,72);
/*!40000 ALTER TABLE `generatedoc_siswa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-12  7:52:02
