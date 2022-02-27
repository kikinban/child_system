-- MySQL dump 10.18  Distrib 10.3.27-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: db    Database: myapp_development
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `administrators`
--

LOCK TABLES `administrators` WRITE;
/*!40000 ALTER TABLE `administrators` DISABLE KEYS */;
/*!40000 ALTER TABLE `administrators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2022-01-27 15:15:18.277343','2022-01-27 15:15:18.277343');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `attempts`
--

LOCK TABLES `attempts` WRITE;
/*!40000 ALTER TABLE `attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `calendars`
--

LOCK TABLES `calendars` WRITE;
/*!40000 ALTER TABLE `calendars` DISABLE KEYS */;
INSERT INTO `calendars` VALUES (1,'卒園式','2022年3月26日10:00より卒園式を予定しています。\r\n詳細は改めて近日になりましたら、紙面にて配布させて頂きます。\r\nご不明点ありましたら、園長までお声がけください。','2022-03-25 15:00:00','2022-01-29 15:26:08.084208','2022-01-29 15:26:08.084208');
/*!40000 ALTER TABLE `calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `change_posts`
--

LOCK TABLES `change_posts` WRITE;
/*!40000 ALTER TABLE `change_posts` DISABLE KEYS */;
INSERT INTO `change_posts` VALUES (1,'2022-01-28','10:00:00','','延長保育をお願いします。','2022-01-27 15:51:30.525436','2022-01-27 15:51:30.525436','降園',NULL,'木幡 美沙','時間変更');
/*!40000 ALTER TABLE `change_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `class_posts`
--

LOCK TABLES `class_posts` WRITE;
/*!40000 ALTER TABLE `class_posts` DISABLE KEYS */;
INSERT INTO `class_posts` VALUES (1,'youchien_sanpo_cart.png','youchien_piano_kids.png','youchien_ohirune.png','日常生活','こんにちは。\r\n今日は子ども達の日常を写真と共にお伝え致します。\r\nお天気の良い日には、バギーに乗って公園に行きお散歩を楽しんでいる子ども達。\r\nリトミックは講師の先生のピアノに合わせて、体を揺らしたり動物に変身したりと積極的に参加しています。\r\nたくさん遊んだ後は、お昼寝タイム。可愛い寝顔を毎日見せてくれ、保育者は癒やされていますよ。','2022-01-27 16:10:37.908974','2022-01-27 16:10:37.908974');
/*!40000 ALTER TABLE `class_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `daily_records`
--

LOCK TABLES `daily_records` WRITE;
/*!40000 ALTER TABLE `daily_records` DISABLE KEYS */;
INSERT INTO `daily_records` VALUES (1,NULL,'今日は雨天の為、室内あそびをしました。\r\n今月の製作をしたり、好きなブロックに集中して遊んでいましたよ。\r\nおもちゃで遊んでいる時は、「かして」と友達に上手に伝えることができて、カッコイイみさちゃんでした。','','2022-01-30 14:31:14.450705','2022-01-30 14:31:14.450705','36.6~37.0','somewhat_bad','true','true','false','false','false','false','false','false','鼻水・咳共に午後にかけて多く出ていました。','none','普通便','1回','none','complete','','complete','','remaining','中に入っていた野菜が苦手で、半分残しています。');
/*!40000 ALTER TABLE `daily_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `incorporates`
--

LOCK TABLES `incorporates` WRITE;
/*!40000 ALTER TABLE `incorporates` DISABLE KEYS */;
INSERT INTO `incorporates` VALUES (1,'2022-10-01','10月スケッチブックシアター','10月31日はハロウィンの日ですね。\r\n今月は「5ひきおばけ」という歌に合わせて、保育者の手作りスケッチブックシアターを作りました。\r\n子ども達は手足をユラユラ揺らして、おばけに変身！\r\nとても可愛い姿を見せてくれています。\r\nご家庭でも是非、お子様に聞いて一緒にやってみてください♪','IMG_3713.JPG',NULL,NULL,'2022-01-30 06:08:25.332753','2022-01-30 06:08:25.332753');
/*!40000 ALTER TABLE `incorporates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `parent_forms`
--

LOCK TABLES `parent_forms` WRITE;
/*!40000 ALTER TABLE `parent_forms` DISABLE KEYS */;
INSERT INTO `parent_forms` VALUES (1,'木幡　美沙','木幡　麻子','要望','こんにちは。\r\nいつも娘がお世話になっております。\r\n食事で汚れた服は袋に入れて、鞄に入れて頂くことはできますでしょうか？\r\n日頃より着替える枚数が多く、汚れた服をそのまま入れるのは避けたいです。\r\n検討の程、よろしくお願い致します。','2022-01-27 16:30:29.266055','2022-01-27 16:30:29.266055');
/*!40000 ALTER TABLE `parent_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `parent_informations`
--

LOCK TABLES `parent_informations` WRITE;
/*!40000 ALTER TABLE `parent_informations` DISABLE KEYS */;
INSERT INTO `parent_informations` VALUES (1,'2022-01-30','マスク着用について','日頃より、感染症対策についてご協力頂きありがとうございます。\r\n現在は保育者が常時着用していますが、3歳以上児のみ対象でマスクの着用をお願いしたいと思っております。\r\n2月1日からご協力頂き、当面の間取り組んでいく予定です。\r\nご不明点ありましたら、担任または事務所までお声がけください。','732604932864094d8c1f6c50c1f5cac2.jpg','2022-01-30 11:58:10.060294','2022-01-30 11:58:10.060294');
/*!40000 ALTER TABLE `parent_informations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `parent_tops`
--

LOCK TABLES `parent_tops` WRITE;
/*!40000 ALTER TABLE `parent_tops` DISABLE KEYS */;
/*!40000 ALTER TABLE `parent_tops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `parents_notes`
--

LOCK TABLES `parents_notes` WRITE;
/*!40000 ALTER TABLE `parents_notes` DISABLE KEYS */;
INSERT INTO `parents_notes` VALUES (2,NULL,'2022-01-30 14:54:23.853941','2022-01-30 14:54:23.853941','{1=>2022, 2=>1, 3=>30}','36.0~36.5','true','true','false',NULL,'false','false','false','false','','yes','普通便','1回','none','',NULL,' チャーハン、餃子、わかめスープ、いちご',NULL,' パン、フル\r\nーツ','昨日や早く帰宅したので、みさの好きな餃子を一緒に作りました。\r\n小さな手で一生懸命、肉を包んでくれました。\r\n家族みんなで美味しく食べ、普段以上に食欲旺盛でした。\r\n体調は少し鼻水・咳がありますが、元気です。','体調に変化があった場合、本日は父親の携帯に連絡をお願い致します\r\n。','父','木幡　宗次郎','false','somewhat_bad');
/*!40000 ALTER TABLE `parents_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20211012144133'),('20211206152337'),('20211207144104'),('20211208144759'),('20211212111120'),('20211218110218'),('20211226080724'),('20211227141407'),('20220106145322'),('20220107142902'),('20220108143005'),('20220108153933'),('20220108162507'),('20220117141419'),('20220118095249'),('20220120145235'),('20220123030942'),('20220123053251'),('20220123144943'),('20220124121629'),('20220127154553'),('20220130144720');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `stampings`
--

LOCK TABLES `stampings` WRITE;
/*!40000 ALTER TABLE `stampings` DISABLE KEYS */;
INSERT INTO `stampings` VALUES (6,NULL,NULL,'登園','2022-01-27 15:33:23.440018','2022-01-27 15:33:23.440018',NULL,'木幡　美沙');
/*!40000 ALTER TABLE `stampings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-26 17:57:31
