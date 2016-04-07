-- MySQL dump 10.13  Distrib 5.6.14, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: student_module_history_test
-- ------------------------------------------------------
-- Server version	5.6.14-1+debphp.org~precise+1

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
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2016-03-07 21:33:26.033148'),(2,'auth','0001_initial','2016-03-07 21:33:26.071794'),(3,'admin','0001_initial','2016-03-07 21:33:26.094726'),(4,'assessment','0001_initial','2016-03-07 21:33:26.734334'),(5,'assessment','0002_staffworkflow','2016-03-07 21:33:26.748174'),(6,'contenttypes','0002_remove_content_type_name','2016-03-07 21:33:26.822178'),(7,'auth','0002_alter_permission_name_max_length','2016-03-07 21:33:26.846501'),(8,'auth','0003_alter_user_email_max_length','2016-03-07 21:33:26.870855'),(9,'auth','0004_alter_user_username_opts','2016-03-07 21:33:26.895281'),(10,'auth','0005_alter_user_last_login_null','2016-03-07 21:33:26.919048'),(11,'auth','0006_require_contenttypes_0002','2016-03-07 21:33:26.922595'),(12,'bookmarks','0001_initial','2016-03-07 21:33:27.008343'),(13,'branding','0001_initial','2016-03-07 21:33:27.065792'),(14,'bulk_email','0001_initial','2016-03-07 21:33:27.189432'),(15,'bulk_email','0002_data__load_course_email_template','2016-03-07 21:33:27.197917'),(16,'instructor_task','0001_initial','2016-03-07 21:33:27.245184'),(17,'certificates','0001_initial','2016-03-07 21:33:27.641690'),(18,'certificates','0002_data__certificatehtmlviewconfiguration_data','2016-03-07 21:33:27.656293'),(19,'certificates','0003_data__default_modes','2016-03-07 21:33:27.667624'),(20,'certificates','0004_certificategenerationhistory','2016-03-07 21:33:27.737402'),(21,'certificates','0005_auto_20151208_0801','2016-03-07 21:33:27.794978'),(22,'certificates','0006_certificatetemplateasset_asset_slug','2016-03-07 21:33:27.808778'),(23,'certificates','0007_certificateinvalidation','2016-03-07 21:33:27.865273'),(24,'commerce','0001_data__add_ecommerce_service_user','2016-03-07 21:33:27.875925'),(25,'commerce','0002_commerceconfiguration','2016-03-07 21:33:27.937252'),(26,'contentserver','0001_initial','2016-03-07 21:33:28.010793'),(27,'cors_csrf','0001_initial','2016-03-07 21:33:28.072393'),(28,'course_action_state','0001_initial','2016-03-07 21:33:29.150991'),(29,'course_groups','0001_initial','2016-03-07 21:33:29.653738'),(30,'course_modes','0001_initial','2016-03-07 21:33:29.692413'),(31,'course_modes','0002_coursemode_expiration_datetime_is_explicit','2016-03-07 21:33:29.707909'),(32,'course_modes','0003_auto_20151113_1443','2016-03-07 21:33:29.723139'),(33,'course_modes','0004_auto_20151113_1457','2016-03-07 21:33:29.802913'),(34,'course_modes','0005_auto_20151217_0958','2016-03-07 21:33:29.819395'),(35,'course_modes','0006_auto_20160208_1407','2016-03-07 21:33:29.901786'),(36,'course_overviews','0001_initial','2016-03-07 21:33:29.932173'),(37,'course_overviews','0002_add_course_catalog_fields','2016-03-07 21:33:30.019436'),(38,'course_overviews','0003_courseoverviewgeneratedhistory','2016-03-07 21:33:30.035991'),(39,'course_overviews','0004_courseoverview_org','2016-03-07 21:33:30.055999'),(40,'course_overviews','0005_delete_courseoverviewgeneratedhistory','2016-03-07 21:33:30.069417'),(41,'course_overviews','0006_courseoverviewimageset','2016-03-07 21:33:30.092113'),(42,'course_overviews','0007_courseoverviewimageconfig','2016-03-07 21:33:30.174080'),(43,'course_overviews','0008_remove_courseoverview_facebook_url','2016-03-07 21:33:30.176656'),(44,'course_overviews','0009_readd_facebook_url','2016-03-07 21:33:30.178836'),(45,'course_structures','0001_initial','2016-03-07 21:33:30.194595'),(46,'courseware','0001_initial','2016-03-07 21:33:31.078692'),(47,'coursewarehistoryextended','0001_initial','2016-03-07 21:33:31.241565'),(48,'coursewarehistoryextended','0002_force_studentmodule_index','2016-03-07 21:33:31.349328'),(49,'credentials','0001_initial','2016-03-07 21:33:31.439568'),(50,'credit','0001_initial','2016-03-07 21:33:32.158562'),(51,'dark_lang','0001_initial','2016-03-07 21:33:32.272553'),(52,'dark_lang','0002_data__enable_on_install','2016-03-07 21:33:32.292147'),(53,'default','0001_initial','2016-03-07 21:33:32.618496'),(54,'default','0002_add_related_name','2016-03-07 21:33:32.747109'),(55,'default','0003_alter_email_max_length','2016-03-07 21:33:32.764118'),(56,'django_comment_common','0001_initial','2016-03-07 21:33:33.045633'),(57,'django_notify','0001_initial','2016-03-07 21:33:33.683870'),(58,'django_openid_auth','0001_initial','2016-03-07 21:33:33.887994'),(59,'oauth2','0001_initial','2016-03-07 21:33:35.518104'),(60,'edx_oauth2_provider','0001_initial','2016-03-07 21:33:35.661195'),(61,'edx_proctoring','0001_initial','2016-03-07 21:33:37.901502'),(62,'edx_proctoring','0002_proctoredexamstudentattempt_is_status_acknowledged','2016-03-07 21:33:38.137829'),(63,'edx_proctoring','0003_auto_20160101_0525','2016-03-07 21:33:38.644618'),(64,'edx_proctoring','0004_auto_20160201_0523','2016-03-07 21:33:38.906016'),(65,'edxval','0001_initial','2016-03-07 21:33:39.155791'),(66,'edxval','0002_data__default_profiles','2016-03-07 21:33:39.181773'),(67,'embargo','0001_initial','2016-03-07 21:33:39.959843'),(68,'embargo','0002_data__add_countries','2016-03-07 21:33:40.149397'),(69,'external_auth','0001_initial','2016-03-07 21:33:40.725785'),(70,'lms_xblock','0001_initial','2016-03-07 21:33:41.882266'),(71,'sites','0001_initial','2016-03-07 21:33:41.904159'),(72,'microsite_configuration','0001_initial','2016-03-07 21:33:42.952132'),(73,'microsite_configuration','0002_auto_20160202_0228','2016-03-07 21:33:43.359419'),(74,'milestones','0001_initial','2016-03-07 21:33:43.716203'),(75,'milestones','0002_data__seed_relationship_types','2016-03-07 21:33:43.739942'),(76,'milestones','0003_coursecontentmilestone_requirements','2016-03-07 21:33:43.772194'),(77,'milestones','0004_auto_20151221_1445','2016-03-07 21:33:43.907278'),(78,'mobile_api','0001_initial','2016-03-07 21:33:44.150482'),(79,'notes','0001_initial','2016-03-07 21:33:44.414752'),(80,'oauth_provider','0001_initial','2016-03-07 21:33:45.032852'),(81,'organizations','0001_initial','2016-03-07 21:33:45.111393'),(82,'programs','0001_initial','2016-03-07 21:33:45.427919'),(83,'programs','0002_programsapiconfig_cache_ttl','2016-03-07 21:33:45.727136'),(84,'programs','0003_auto_20151120_1613','2016-03-07 21:33:47.072788'),(85,'programs','0004_programsapiconfig_enable_certification','2016-03-07 21:33:48.327058'),(86,'programs','0005_programsapiconfig_max_retries','2016-03-07 21:33:48.536151'),(87,'rss_proxy','0001_initial','2016-03-07 21:33:48.571928'),(88,'self_paced','0001_initial','2016-03-07 21:33:48.799690'),(89,'sessions','0001_initial','2016-03-07 21:33:48.831344'),(90,'student','0001_initial','2016-03-07 21:33:58.200378'),(91,'shoppingcart','0001_initial','2016-03-07 21:34:07.068222'),(92,'shoppingcart','0002_auto_20151208_1034','2016-03-07 21:34:07.860305'),(93,'shoppingcart','0003_auto_20151217_0958','2016-03-07 21:34:08.746587'),(94,'splash','0001_initial','2016-03-07 21:34:09.212391'),(95,'static_replace','0001_initial','2016-03-07 21:34:09.728084'),(96,'static_replace','0002_assetexcludedextensionsconfig','2016-03-07 21:34:10.232762'),(97,'status','0001_initial','2016-03-07 21:34:11.353387'),(98,'student','0002_auto_20151208_1034','2016-03-07 21:34:12.427561'),(99,'submissions','0001_initial','2016-03-07 21:34:13.762704'),(100,'submissions','0002_auto_20151119_0913','2016-03-07 21:34:13.860261'),(101,'submissions','0003_submission_status','2016-03-07 21:34:13.899844'),(102,'survey','0001_initial','2016-03-07 21:34:14.322540'),(103,'teams','0001_initial','2016-03-07 21:34:15.395533'),(104,'third_party_auth','0001_initial','2016-03-07 21:34:17.484168'),(105,'track','0001_initial','2016-03-07 21:34:17.515995'),(106,'user_api','0001_initial','2016-03-07 21:34:21.513361'),(107,'util','0001_initial','2016-03-07 21:34:21.885445'),(108,'util','0002_data__default_rate_limit_config','2016-03-07 21:34:21.920632'),(109,'verify_student','0001_initial','2016-03-07 21:34:27.215973'),(110,'verify_student','0002_auto_20151124_1024','2016-03-07 21:34:27.909387'),(111,'verify_student','0003_auto_20151113_1443','2016-03-07 21:34:28.606460'),(112,'wiki','0001_initial','2016-03-07 21:34:45.492292'),(113,'wiki','0002_remove_article_subscription','2016-03-07 21:34:45.529216'),(114,'workflow','0001_initial','2016-03-07 21:34:45.651613'),(115,'xblock_django','0001_initial','2016-03-07 21:34:46.297434'),(116,'xblock_django','0002_auto_20160204_0809','2016-03-07 21:34:46.988209'),(117,'contentstore','0001_initial','2016-03-07 21:35:04.702755'),(118,'course_creators','0001_initial','2016-03-07 21:35:04.729239'),(119,'xblock_config','0001_initial','2016-03-07 21:35:04.908173');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-07 21:35:08