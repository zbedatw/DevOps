-- MySQL dump 10.16  Distrib 10.1.48-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.48-MariaDB-0+deb9u2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` varchar(0) DEFAULT NULL,
  `name` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` varchar(0) DEFAULT NULL,
  `group_id` varchar(0) DEFAULT NULL,
  `permission_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` tinyint(4) DEFAULT NULL,
  `content_type_id` tinyint(4) DEFAULT NULL,
  `codename` varchar(18) DEFAULT NULL,
  `name` varchar(23) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,1,'add_logentry','Can add log entry'),(2,1,'change_logentry','Can change log entry'),(3,1,'delete_logentry','Can delete log entry'),(4,1,'view_logentry','Can view log entry'),(5,2,'add_permission','Can add permission'),(6,2,'change_permission','Can change permission'),(7,2,'delete_permission','Can delete permission'),(8,2,'view_permission','Can view permission'),(9,3,'add_group','Can add group'),(10,3,'change_group','Can change group'),(11,3,'delete_group','Can delete group'),(12,3,'view_group','Can view group'),(13,4,'add_user','Can add user'),(14,4,'change_user','Can change user'),(15,4,'delete_user','Can delete user'),(16,4,'view_user','Can view user'),(17,5,'add_contenttype','Can add content type'),(18,5,'change_contenttype','Can change content type'),(19,5,'delete_contenttype','Can delete content type'),(20,5,'view_contenttype','Can view content type'),(21,6,'add_session','Can add session'),(22,6,'change_session','Can change session'),(23,6,'delete_session','Can delete session'),(24,6,'view_session','Can view session'),(25,7,'add_movie','Can add movie'),(26,7,'change_movie','Can change movie'),(27,7,'delete_movie','Can delete movie'),(28,7,'view_movie','Can view movie'),(29,8,'add_review','Can add review'),(30,8,'change_review','Can change review'),(31,8,'delete_review','Can delete review'),(32,8,'view_review','Can view review');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` tinyint(4) DEFAULT NULL,
  `password` varchar(88) DEFAULT NULL,
  `last_login` varchar(10) DEFAULT NULL,
  `is_superuser` tinyint(4) DEFAULT NULL,
  `username` varchar(7) DEFAULT NULL,
  `last_name` varchar(0) DEFAULT NULL,
  `email` varchar(0) DEFAULT NULL,
  `is_staff` tinyint(4) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `date_joined` varchar(10) DEFAULT NULL,
  `first_name` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$870000$L4XnMxdrF5Sap3syafzilb$dOtbDMsaKPTZnJmcLrULuJzCg7h0XV+nz1KqDHFYPXY=','2024-10-04',1,'zbedatw','','',1,1,'2024-09-15',''),(3,'pbkdf2_sha256$870000$utfLK58VnJbgACOyXy59VH$DBiBqbw9LLL0J8XBawnTVNvPqLaxhi3sWZPyM6C/Xlk=','',0,'mani','','',0,1,'2024-09-20','');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` varchar(0) DEFAULT NULL,
  `user_id` varchar(0) DEFAULT NULL,
  `group_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` varchar(0) DEFAULT NULL,
  `user_id` varchar(0) DEFAULT NULL,
  `permission_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` tinyint(4) DEFAULT NULL,
  `object_id` tinyint(4) DEFAULT NULL,
  `object_repr` varchar(45) DEFAULT NULL,
  `action_flag` tinyint(4) DEFAULT NULL,
  `change_message` varchar(36) DEFAULT NULL,
  `content_type_id` tinyint(4) DEFAULT NULL,
  `user_id` tinyint(4) DEFAULT NULL,
  `action_time` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,1,'Zbedat Family',1,'[{\"added\": {}}]',7,1,'2024-09-15'),(2,1,'Zbedat Family',2,'[]',7,1,'2024-09-15'),(3,2,'peace',1,'[{\"added\": {}}]',7,1,'2024-09-15'),(4,1,'Zbedat Family',2,'[{\"changed\": {\"fields\": [\"Thumb\"]}}]',7,1,'2024-09-20'),(5,2,'peace',2,'[{\"changed\": {\"fields\": [\"Thumb\"]}}]',7,1,'2024-09-20'),(6,2,'peace',2,'[]',7,1,'2024-09-20'),(7,2,'peace',2,'[{\"changed\": {\"fields\": [\"Thumb\"]}}]',7,1,'2024-09-20'),(8,2,'peace',2,'[]',7,1,'2024-09-20'),(9,1,'Zbedat Family',2,'[{\"changed\": {\"fields\": [\"Thumb\"]}}]',7,1,'2024-09-20'),(10,1,'Zbedat Family',2,'[{\"changed\": {\"fields\": [\"Thumb\"]}}]',7,1,'2024-09-20'),(11,2,'peace',2,'[{\"changed\": {\"fields\": [\"Thumb\"]}}]',7,1,'2024-09-20'),(12,2,'peace',2,'[{\"changed\": {\"fields\": [\"Thumb\"]}}]',7,1,'2024-09-20'),(13,3,'TEST 3',1,'[{\"added\": {}}]',7,1,'2024-09-20'),(14,2,'test',3,'',4,1,'2024-09-20'),(15,4,'wazwaz',3,'',4,1,'2024-09-20'),(16,1,'zbedatw review on Zbedat Family',1,'[{\"added\": {}}]',8,1,'2024-09-23'),(17,2,'mani review on Zbedat Family',1,'[{\"added\": {}}]',8,1,'2024-09-23'),(18,3,'zbedatw review on peace',3,'',8,1,'2024-09-25'),(19,2,'mani review on Zbedat Family',3,'',8,1,'2024-09-25'),(20,1,'zbedatw review on Zbedat Family',3,'',8,1,'2024-09-25'),(21,4,'zbedatw review on peace',3,'',8,1,'2024-09-25'),(22,5,'zbedatw review on peace',3,'',8,1,'2024-09-25'),(23,3,'TEST 3',3,'',7,1,'2024-09-28'),(24,2,'peace',3,'',7,1,'2024-09-28'),(25,1,'Zbedat Family',3,'',7,1,'2024-09-28'),(26,1,'The Shawshank Redemption',1,'[{\"added\": {}}]',7,1,'2024-09-28'),(27,2,'The Dark Knight',1,'[{\"added\": {}}]',7,1,'2024-09-28'),(28,3,'The Lord of the Rings: The Return of the King',1,'[{\"added\": {}}]',7,1,'2024-09-28'),(29,4,'Schindler\'s List',1,'[{\"added\": {}}]',7,1,'2024-09-28'),(30,5,'Inception',1,'[{\"added\": {}}]',7,1,'2024-09-28'),(31,4,'Schindler\'s List',2,'[{\"changed\": {\"fields\": [\"Thumb\"]}}]',7,1,'2024-09-28'),(32,4,'Schindler\'s List',2,'[{\"changed\": {\"fields\": [\"Thumb\"]}}]',7,1,'2024-09-28'),(33,8,'zbedatw review on The Shawshank Redemption',3,'',8,1,'2024-09-30');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` tinyint(4) DEFAULT NULL,
  `app_label` varchar(12) DEFAULT NULL,
  `model` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'movies','movie'),(8,'movies','review'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` tinyint(4) DEFAULT NULL,
  `app` varchar(12) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `applied` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-09-15'),(2,'auth','0001_initial','2024-09-15'),(3,'admin','0001_initial','2024-09-15'),(4,'admin','0002_logentry_remove_auto_add','2024-09-15'),(5,'admin','0003_logentry_add_action_flag_choices','2024-09-15'),(6,'contenttypes','0002_remove_content_type_name','2024-09-15'),(7,'auth','0002_alter_permission_name_max_length','2024-09-15'),(8,'auth','0003_alter_user_email_max_length','2024-09-15'),(9,'auth','0004_alter_user_username_opts','2024-09-15'),(10,'auth','0005_alter_user_last_login_null','2024-09-15'),(11,'auth','0006_require_contenttypes_0002','2024-09-15'),(12,'auth','0007_alter_validators_add_error_messages','2024-09-15'),(13,'auth','0008_alter_user_username_max_length','2024-09-15'),(14,'auth','0009_alter_user_last_name_max_length','2024-09-15'),(15,'auth','0010_alter_group_name_max_length','2024-09-15'),(16,'auth','0011_update_proxy_permissions','2024-09-15'),(17,'auth','0012_alter_user_first_name_max_length','2024-09-15'),(18,'movies','0001_initial','2024-09-15'),(19,'sessions','0001_initial','2024-09-15'),(20,'movies','0002_movie_thumb','2024-09-20'),(21,'movies','0003_alter_movie_thumb','2024-09-20'),(22,'movies','0004_review','2024-09-23'),(23,'movies','0005_remove_movie_slug_movie_trailer_url','2024-09-28');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(32) DEFAULT NULL,
  `session_data` varchar(227) DEFAULT NULL,
  `expire_date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('e70jasjxsv0wc7wae0ldx70vl1zyjb5f','.eJxVjDsOwjAQRO_iGln-O6akzxms9XqDA8iW4qRC3J1ESgHlzHszbxZhW0vcOi1xzuzKJLv8dgnwSfUA-QH13ji2ui5z4ofCT9r52DK9bqf7d1Cgl33tg5UDgkzS4aQnnSlopSAoYdSeDREaYZ0NQrkcNJAmkGg84uDRacM-X9jbN6E:1spqcZ:b7-6zq_wCy3H2q2Q5Fg8QYN7N5AXxelL-aBu5SkT8tU','2024-09-29'),('qrtqmgw8u3b2izj47qmc8qv115z4zwzp','e30:1ssmLB:nS2zDX3JckkO2zILeUeA3sFWrU8E1yMhmg6mtUbIQgg','2024-10-07'),('4ycwxt5uaym699fh1tq82zkhs6u464ls','.eJxVjDsOwjAQRO_iGln-O6akzxms9XqDA8iW4qRC3J1ESgHlzHszbxZhW0vcOi1xzuzKJLv8dgnwSfUA-QH13ji2ui5z4ofCT9r52DK9bqf7d1Cgl33tg5UDgkzS4aQnnSlopSAoYdSeDREaYZ0NQrkcNJAmkGg84uDRacM-X9jbN6E:1suBXc:tEr0XL5tIwsFFkzV3CiF3wJcZ7_fZ8eBjEOxRKb2P9s','2024-10-11'),('9dpw73huwqb0xvm6ri5i5w2iv2e5qv4l','.eJxVjDsOwjAQRO_iGln-O6akzxms9XqDA8iW4qRC3J1ESgHlzHszbxZhW0vcOi1xzuzKJLv8dgnwSfUA-QH13ji2ui5z4ofCT9r52DK9bqf7d1Cgl33tg5UDgkzS4aQnnSlopSAoYdSeDREaYZ0NQrkcNJAmkGg84uDRacM-X9jbN6E:1suS5x:EDU3d1lJrCU-okiRCi-WQI7AHGg2Hg-_KOYKqS7eHxc','2024-10-12'),('1nadngoidpzfuz0lc0r3yyz8f8e88qdj','.eJxVjDsOwjAQRO_iGln-O6akzxms9XqDA8iW4qRC3J1ESgHlzHszbxZhW0vcOi1xzuzKJLv8dgnwSfUA-QH13ji2ui5z4ofCT9r52DK9bqf7d1Cgl33tg5UDgkzS4aQnnSlopSAoYdSeDREaYZ0NQrkcNJAmkGg84uDRacM-X9jbN6E:1suXM9:Ezu-SVWIF7ZfGOoHCwM2RsLsIbsl4fW-6M3yOHZzrxI','2024-10-12'),('kweyyry27nltz8693pr3dyuvlh49qs11','.eJxVjDsOwjAQRO_iGln-O6akzxms9XqDA8iW4qRC3J1ESgHlzHszbxZhW0vcOi1xzuzKJLv8dgnwSfUA-QH13ji2ui5z4ofCT9r52DK9bqf7d1Cgl33tg5UDgkzS4aQnnSlopSAoYdSeDREaYZ0NQrkcNJAmkGg84uDRacM-X9jbN6E:1swiPm:nY-aAyXLsG63entn2B-laEXh_oEBi7L2Kv0kpSx7PPc','2024-10-18');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_movie`
--

DROP TABLE IF EXISTS `movies_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies_movie` (
  `id` tinyint(4) DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `description` text,
  `director` varchar(17) DEFAULT NULL,
  `actors` varchar(53) DEFAULT NULL,
  `year` smallint(6) DEFAULT NULL,
  `thumb` varchar(36) DEFAULT NULL,
  `trailer_url` varchar(84) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_movie`
--

LOCK TABLES `movies_movie` WRITE;
/*!40000 ALTER TABLE `movies_movie` DISABLE KEYS */;
INSERT INTO `movies_movie` VALUES (1,'The Shawshank Redemption','The film tells the story of banker Andy Dufresne (Tim Robbins), who is sentenced to life in Shawshank State Penitentiary for the murders of his wife and her lover, despite his claims of innocence. Over the following two decades, he befriends a fellow prisoner, contraband smuggler Ellis \"Red\" Redding (Morgan Freeman), and becomes instrumental in a money laundering operation led by the prison warden Samuel Norton (Bob Gunton). William Sadler, Clancy Brown, Gil Bellows, and James Whitmore appear in supporting roles to get his freedom.','Frank Darabont','Tim Robbins, Morgan Freeman, Bob Gunton',1994,'ShawshankRedemptionMoviePoster.jpg','https://www.youtube.com/watch?v=NmzuHjWmXOc&ab_channel=RottenTomatoesClassicTrailers'),(2,'The Dark Knight','The Dark Knight is a 2008 superhero film directed by Christopher Nolan, from a screenplay co-written with his brother Jonathan. Based on the DC Comics superhero Batman, it is the sequel to Batman Begins (2005), and the second installment in The Dark Knight trilogy. The plot follows the vigilante Batman, police lieutenant James Gordon, and district attorney Harvey Dent, who form an alliance to dismantle organized crime in Gotham City. Their efforts are derailed by the Joker, an anarchistic mastermind who seeks to test how far Batman will go to save the city from chaos. The ensemble cast includes Christian Bale, Michael Caine, Heath Ledger, Gary Oldman, Aaron Eckhart, Maggie Gyllenhaal, and Morgan Freeman.','Christopher Nolan','Christian Bale, Heath Ledger, Aaron Eckhart',2008,'The_Dark_Knight.jpg','https://www.youtube.com/watch?v=EXeTwQWrcwY&ab_channel=RottenTomatoesClassicTrailers'),(3,'The Lord of the Rings: The Return of the King','The Lord of the Rings: The Return of the King is a 2003 epic high fantasy adventure film directed by Peter Jackson from a screenplay by Fran Walsh, Philippa Boyens, and Jackson. It is based on 1955\'s The Return of the King, the third volume of the novel The Lord of the Rings by J. R. R. Tolkien. The sequel to 2002\'s The Lord of the Rings: The Two Towers, the film is the third and final instalment in The Lord of the Rings trilogy. It features an ensemble cast including Elijah Wood, Ian McKellen, Liv Tyler, Viggo Mortensen, Sean Astin, and other to make their final way toward Mount Doom to destroy the One Ring, unaware of Gollum\'s true intentions, while Merry, Pippin, Gandalf, Aragorn, Legolas, Gimli and their allies join forces against Sauron and his legions from Mordor.','Peter Jackson','Elijah Wood, Viggo Mortensen, Ian McKellen',2003,'Lord_Rings_Return_King.jpg','https://www.youtube.com/watch?v=r5X-hFf6Bwo&ab_channel=Movieclips'),(4,'Schindler\'s List','Schindler\'s List is a 1993 American epic historical drama film directed and produced by Steven Spielberg and written by Steven Zaillian. It is based on the 1982 novel Schindler\'s Ark by Thomas Keneally. The film follows Oskar Schindler, a German industrialist who saved more than a thousand mostly Polish–Jewish refugees from the Holocaust by employing them in his factories during World War II. It stars Liam Neeson as Schindler, Ralph Fiennes as SS officer Amon Göth, and Ben Kingsley as Schindler\'s Jewish accountant Itzhak Stern.','Steven Spielberg','Liam Neeson, Ralph Fiennes, Ben Kingsley',1993,'Schindlers_List_movie.jpg','https://www.youtube.com/watch?v=mxphAlJID9U&ab_channel=UniversalPictures'),(5,'Inception','Inception is a 2010 science fiction action film[4][5][6] written and directed by Christopher Nolan, who also produced it with Emma Thomas, his wife. The film stars Leonardo DiCaprio as a professional thief who steals information by infiltrating the subconscious of his targets. He is offered a chance to have his criminal history erased as payment for the implantation of another person\'s idea into a target\'s subconscious.[7] The ensemble cast includes Ken Watanabe, Joseph Gordon-Levitt, Marion Cotillard, Elliot Page,[a] Tom Hardy, Cillian Murphy, Tom Berenger, Dileep Rao, and Michael Caine.','Christopher Nolan','Leonardo DiCaprio, Joseph Gordon,-Levitt, Elliot Page',2010,'Inception_2010_theatrical_poster.jpg','https://www.youtube.com/watch?v=YoHD9XEInc0&ab_channel=RottenTomatoesClassicTrailers');
/*!40000 ALTER TABLE `movies_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_review`
--

DROP TABLE IF EXISTS `movies_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies_review` (
  `id` tinyint(4) DEFAULT NULL,
  `rating` tinyint(4) DEFAULT NULL,
  `comment` varchar(95) DEFAULT NULL,
  `movie_id` tinyint(4) DEFAULT NULL,
  `user_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_review`
--

LOCK TABLES `movies_review` WRITE;
/*!40000 ALTER TABLE `movies_review` DISABLE KEYS */;
INSERT INTO `movies_review` VALUES (10,5,'OMG!!! one of the best, i forgot, i saw all the episodes from 1 to 5',3,1),(11,4,'batman, one of the best action movies i love, ever and ever',2,1),(12,4,'duplicated movie, i never understand but i like it you dont know how i\'am happy when i watch it',5,1),(13,5,'fantastic movie one of the best',1,1);
/*!40000 ALTER TABLE `movies_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sqlite_sequence`
--

DROP TABLE IF EXISTS `sqlite_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sqlite_sequence` (
  `name` varchar(19) DEFAULT NULL,
  `seq` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sqlite_sequence`
--

LOCK TABLES `sqlite_sequence` WRITE;
/*!40000 ALTER TABLE `sqlite_sequence` DISABLE KEYS */;
INSERT INTO `sqlite_sequence` VALUES ('django_migrations',23),('django_admin_log',33),('django_content_type',8),('auth_permission',32),('auth_user',3),('movies_review',13),('movies_movie',5),('django_migrations',23),('django_admin_log',33),('django_content_type',8),('auth_permission',32),('auth_group',0),('auth_user',4),('movies_review',15),('movies_movie',5);
/*!40000 ALTER TABLE `sqlite_sequence` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-30 16:42:46
