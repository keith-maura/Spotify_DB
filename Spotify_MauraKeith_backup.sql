-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: spotify
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `album` (
  `album_id` int NOT NULL,
  `album_name` varchar(100) NOT NULL,
  `artist_id` int NOT NULL,
  `popularity` int DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  PRIMARY KEY (`album_id`),
  KEY `artist_id` (`artist_id`),
  CONSTRAINT `artist_id` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`artist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album`
--

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
INSERT INTO `album` VALUES (1,'Awaken, My Love!',1,78,'2016-12-02'),(2,'Suncity',2,72,'2018-10-19'),(3,'Men Amongst Mountains',3,65,'2015-07-15'),(4,'Folk Hop N\' Roll',4,63,'2017-03-10'),(5,'FIRE ON MARZZ',5,77,'2019-06-28'),(6,'SATURATION',6,72,'2017-06-09'),(7,'Chiquito',7,70,'2018-05-04'),(8,'Mount Everest',8,63,'2019-06-21'),(9,'Dance Monkey',9,88,'2019-10-17'),(10,'Thousand Peaces',10,69,'2017-11-03'),(11,'Para Mi',7,72,'2019-07-26'),(12,'Ur So F**kInG cOoL',9,68,'2020-05-29'),(13,'MOJO',11,58,'2019-10-07'),(14,'Sunflower',12,73,'2017-03-22'),(15,'Y U Gotta B Like That',13,67,'2019-06-02'),(16,'LA DIVINE',14,61,'2017-04-07'),(17,'Lungs',15,69,'2009-01-01'),(18,'1000 Forms Of Fear',16,71,'2015-05-04'),(19,'Dynasty',17,56,'2015-09-22'),(20,'Revolver',18,75,'1966-08-05'),(21,'It\'s Time',19,64,'2005-02-07'),(22,'Fire',20,57,'2016-09-30'),(23,'STELLA & STEVE',5,89,'2019-11-15'),(24,'Love Is Alive',20,54,'2017-01-27'),(25,'MELT',21,67,'2018-09-21'),(26,'Yeezus',22,75,'2013-01-01'),(27,'Graduation',22,82,'2007-09-11'),(28,'Chapter One',23,61,'2017-06-02'),(29,'digital druglord',24,78,'2017-04-21'),(30,'Fly',25,34,'2017-02-24'),(31,'LABRINTH, SIA & DIPLO PRESENT LSD',26,79,'2019-04-12'),(32,'Blurryface',27,86,'2015-05-15'),(33,'Indian Summer',28,55,'2015-06-09'),(34,'Summer\'s Gone',29,62,'2012-09-05'),(35,'Misbehaving',8,39,'2017-09-15'),(36,'In Return',29,70,'2014-09-08'),(37,'GENERATIONWHY',30,66,'2016-07-29'),(38,'Revival',31,69,'2015-10-09'),(39,'Crave You',32,55,'2010-03-26'),(40,'Greatest Hits: God\'s Favorite Band',33,72,'2017-11-17'),(41,'High You Are',34,57,'2013-10-08'),(42,'Light of Mine',35,71,'2016-12-02'),(43,'Watermelon Sugar',36,94,'2019-12-13'),(44,'Break My Heart',37,83,'2020-03-25'),(45,'I\'m Gonna Show You Crazy',38,62,'2014-12-19'),(46,'Magnets',39,75,'2019-05-24'),(47,'Mother',40,61,'2019-09-12'),(48,'Cuz I Love You',41,78,'2019-04-19'),(49,'Motivation',42,72,'2019-08-16'),(50,'Only The Lonely',43,59,'2017-01-13'),(51,'Shawn Mendes',44,80,'2019-06-19'),(52,'Happiness Begins',45,86,'2019-06-07'),(53,'What A Man Gotta Do',45,80,'2020-01-17'),(54,'Ride It',46,84,'2019-07-26'),(55,'Bad Child/Can\'t Be Happy All The Time',9,75,'2020-03-11'),(56,'American Teen',2,87,'2017-04-27'),(57,'Sweet but Psycho',47,79,'2018-08-17'),(58,'Youngblood',48,82,'2018-06-15'),(59,'Happier',49,81,'2018-08-17'),(60,'Lukas Graham',50,76,'2016-04-01'),(61,'Wild World',51,67,'2016-09-09'),(62,'Some Type of Love',40,65,'2016-05-01'),(63,'If I Can\'t Have You',44,76,'2019-05-03'),(64,'Can\'t Hide',52,53,'2016-08-12'),(65,'All My Friends',53,68,'2015-10-21'),(66,'Kids At Play',20,71,'2018-10-26'),(67,'Stone Cold Classics',54,55,'2006-01-01'),(68,'The Good Times',55,69,'2001-08-28'),(69,'Right Place Right Time',56,62,'2011-01-01'),(70,'When I\'m Down',52,64,'2016-10-21'),(71,'Last To Leave',20,54,'2017-12-08'),(72,'Nation of Two',57,73,'2018-02-23'),(73,'The Lumineers',58,71,'2012-04-03'),(74,'The World From The Side Of The Moon',59,67,'2013-01-01'),(75,'Up from Below',60,64,'2009-07-07'),(76,'My Head Is An Animal',61,75,'2012-01-01'),(77,'Neotheater',62,72,'2019-04-26'),(78,'Cleopatra',58,72,'2016-04-08'),(79,'Dream Your Life Away',57,77,'2014-09-09'),(80,'Vessel',27,79,'2013-01-08'),(81,'VHS',63,75,'2015-06-30'),(82,'Run',64,47,'2016-07-22'),(83,'21',65,80,'2011-01-19'),(84,'Sign No More',66,70,'2009-10-02'),(85,'Revolution',67,44,'2018-01-19'),(86,'The Lady Killer',68,62,'2010-11-09'),(87,'A Fever You Can\'t Sweat Out',69,73,'2005-09-27'),(88,'When The World Comes Down',70,67,'2008-01-01'),(89,'hot girl bummer',24,83,'2019-08-23'),(90,'Deadroses',24,76,'2015-02-14'),(91,'In the Cards',71,49,'2015-09-18'),(92,'Just Movement',71,43,'2013-01-01'),(93,'Andy Grammer',72,68,'2011-06-14'),(94,'TALKING IS HARD',73,75,'2014-12-02'),(95,'MKTO',74,76,'2012-01-01'),(96,'Closer',75,61,'2017-06-02'),(97,'4',76,79,'2011-06-24'),(98,'Cash Machine',77,33,'2016-09-09'),(99,'The Midsummer Station',78,70,'2012-01-01'),(100,'Habits',79,66,'2010-01-01'),(101,'Let The Road',80,72,'2014-01-01'),(102,'Cooler Than Me',81,62,'2009-12-15'),(103,'Whatever',82,72,'2011-11-25'),(104,'Don\'t Kill the Magic',83,73,'2014-06-25'),(105,'Raymond v Raymond',84,75,'2010-03-30'),(106,'Groove',85,39,'2014-11-22'),(107,'The Bright Side',86,59,'2012-07-30'),(108,'Good News For People Who Love Bad News',87,68,'2004-04-05'),(109,'Bolu',88,48,'2015-04-13'),(110,'Michael Henry & Justin Robinett',89,41,'2012-01-09'),(111,'Vivid Pictures',90,60,'2018-03-13'),(112,'50 Big Ones: Greatest Hits',91,70,'2012-01-01'),(113,'Hooked On A Feeling',92,70,'1973-01-01'),(114,'Out of the Blue',93,76,'1977-01-01'),(115,'Diana Ross Presents The Jackson 5',94,71,'1969-12-18'),(116,'Partners In Crime',95,69,'1979-01-01'),(117,'Looking Glass',96,69,'1972-01-01'),(118,'Greatest Hits',54,62,'1981-10-26'),(119,'Sweet Dreams (Are Made Of This)',97,75,'1983-01-04'),(120,'Hunting High and Low',98,78,'1985-06-01'),(121,'Youthquake',99,66,'1985-03-26'),(122,'The Works',54,65,'1984-02-27'),(123,'HEATWAVE',100,49,'2018-09-04'),(124,'What If',101,56,'2019-04-04'),(125,'Surf',102,67,'2017-12-03'),(126,'Now and Then',103,69,'2019-10-11'),(127,'Being Human In Public',104,63,'2018-10-19'),(128,'The Weekend',105,81,'2017-06-09'),(129,'Funky Galileo',106,50,'2020-03-06'),(130,'Lioness: Hidden Treasures',107,69,'2011-01-01'),(131,'Man on the Moon',108,47,'2016-10-21'),(132,'Gen Z',109,6,'2018-08-29'),(133,'Tribute',110,61,'2013-01-01'),(134,'Bananas for Breakfast',111,40,'2017-10-02'),(135,'The Divine Feminine',112,77,'2016-09-16'),(136,'You Should Be Here',113,67,'2015-04-28'),(137,'Ctrl',105,81,'2017-06-09'),(138,'War & Leisure',114,76,'2017-12-01'),(139,'All I Want Is You',114,73,'2010-11-26'),(140,'With You',115,36,'2016-05-24'),(141,'It Was Good Until It Wasn\'t',113,84,'2020-05-08'),(142,'Hypersonic Missiles',116,71,'2019-09-13'),(143,'Apricot Princess',12,74,'2017-04-26'),(144,'Spider-Man: Into the Spider-Verse',117,85,'2018-12-14'),(145,'After Hours',118,99,'2020-03-20'),(146,'WHEN WE ALL FALL ASLEEP, WHERE DO WE GO?',119,95,'2019-03-29'),(147,'Because the Internet',1,77,'2013-12-10'),(148,'Shine',120,73,'2008-03-28'),(149,'Kung Fu Panda 2',121,37,'2011-01-01'),(150,'The Incredibles',122,50,'2004-11-02'),(151,'ANTI',123,84,'2016-01-28'),(152,'Struttin\' My Stuff',124,55,'1975-01-01'),(153,'Put You Head On My Shoulder: The Very Best Of Paul Anka',125,69,'2000-10-03'),(154,'The Very Best Of The Righteous Brothers',126,63,'1990-01-01'),(155,'Where Polly People Go to Read',127,59,'2019-04-19'),(156,'Burlesque Original Motion Picture Soundtrack',128,60,'2010-11-22'),(157,'Confident',129,74,'2015-10-16'),(158,'A Day At The Races',54,64,'1976-12-10'),(159,'Unorthodox Jukebox',130,83,'2012-12-07'),(160,'Doo-Wops & Hooligans',130,82,'2010-10-05'),(161,'Too Low For Zero',131,75,'1983-05-30'),(162,'I AM...SASHA FIERCE',76,72,'2008-11-14'),(163,'Thoroughly Modern Millie',132,48,'2002-01-01'),(164,'In The Lonely Hour',133,77,'2015-11-06'),(165,'20th Century Masters: The Millennium Collection',134,65,'2000-01-01'),(166,'Abattoir Blues / The Lyre of Orpheus',135,59,'2004-09-20'),(167,'I Put A Spell On You',136,71,'1965-06-01'),(168,'Music From The Motion Picture Cadillac Records',76,56,'2008-11-28'),(169,'Yours Truly',137,68,'2013-01-01'),(170,'Whitney',138,77,'1987-06-02'),(171,'The Bodyguard',138,75,'1992-11-17'),(172,'Back To Black',107,76,'2006-10-27'),(173,'thank u, next',137,90,'2019-02-08'),(174,'Dangerous Woman',137,84,'2016-05-20'),(175,'Revenge Of The Dreamers III',139,79,'2019-07-05'),(176,'The Autobiography',140,56,'2017-07-28'),(177,'Hit Yo Groove',141,50,'2019-12-31'),(178,'Baby On Baby',142,82,'2019-03-01'),(179,'Welcome to Chilis',143,66,'2020-01-17'),(180,'Kys',144,13,'2016-09-05'),(181,'YES!',145,48,'2014-07-14'),(182,'Too Fast',146,58,'2016-10-25'),(183,'Change For Me',147,48,'2020-05-13'),(184,'Urtha1',148,43,'2018-05-30'),(185,'Play God',149,36,'2019-12-06'),(186,'VS. Redux',150,54,'2010-10-20'),(187,'NOVA',151,72,'2018-07-27'),(188,'Flower Boy',152,82,'2017-07-21'),(189,'ARIZONA BABY',153,72,'2019-04-25'),(190,'Don\'t Forget About Me, Demos',154,71,'2018-10-16'),(191,'Blueberry Faygo',155,87,'2020-02-07'),(192,'The New Toronto 3',156,85,'2020-04-10'),(193,'Meet The Woo',157,82,'2019-07-26'),(194,'Paper Trail',158,75,'2008-09-08'),(195,'Oxymoron',159,74,'2014-01-01'),(196,'NOIR',160,67,'2018-11-08'),(197,'LM$',161,55,'2019-05-23'),(198,'There\'s A lot Going On',140,66,'2016-06-03'),(199,'Fever',162,75,'2019-05-17'),(200,'Survive The Summer',163,69,'2018-08-03'),(201,'Juicy',164,64,'2019-08-15'),(202,'Amala',164,76,'2019-03-01'),(203,'2014 Forest Hills Drive',165,84,'2014-12-09'),(204,'Speakerboxxx/The Love Below',166,77,'2003-01-01'),(205,'ASTROWORLD',167,94,'2018-08-03'),(206,'Born Sinner',165,76,'2013-06-14'),(207,'Greatest Hits: My Prerogative',168,55,'2004-01-01'),(208,'Tomorrow',169,65,'2007-09-07'),(209,'Short Kings Anthem',24,62,'2019-06-21'),(210,'Currents',170,84,'2015-07-17'),(211,'Nothing Was The Same',171,68,'2013-01-01'),(212,'Now, Not Yet',172,69,'2019-08-09'),(213,'DUMMY BOY',173,85,'2018-11-27'),(214,'I Love You.',174,78,'2013-04-19'),(215,'Replay',175,68,'2009-08-11'),(216,'Lalala',176,80,'2019-06-28'),(217,'Demons',109,2,'2020-05-01'),(218,'WANT',177,65,'2008-07-07'),(219,'Hi, It\'s Me',178,73,'2019-07-12'),(220,'Please Excuse Me For Being Antisocial',179,94,'2019-12-06'),(221,'Hot Fuss',180,76,'2004-06-15'),(222,'Stay',181,45,'2018-11-30'),(223,'Your Love (Déjà vu)',182,64,'2020-02-19'),(224,'Ferrari Boyz',183,47,'2011-08-05'),(225,'Let Go',184,78,'2002-06-04'),(226,'Breakaway',185,74,'2004-01-17'),(227,'R&G (Rhythm & Gangsta): The Masterpiece',186,63,'2004-01-01'),(228,'SremmLife',187,79,'2015-01-06'),(229,'Hoodie SZN',188,84,'2018-12-21'),(230,'Scorpion',171,89,'2018-06-29'),(231,'St. Elsewhere',189,66,'2006-05-02'),(232,'Lemonade',76,90,'2016-04-23'),(233,'Thank Me Later',171,68,'2010-01-01'),(234,'The Kickback',190,59,'2011-07-12'),(235,'Institution',191,66,'2015-12-26'),(236,'LONG.LIVE.A$AP',192,78,'2013-01-01'),(237,'Project Baby 2',191,36,'2017-08-17'),(238,'Soul Searching',193,58,'2019-08-09'),(239,'RITMO (Bad Boys For Life)',194,60,'2019-12-20'),(240,'Body',195,52,'2018-07-20'),(241,'So Much Fun',196,81,'2019-08-16'),(242,'KIRK',142,87,'2019-09-27'),(243,'Remember Me',197,67,'2018-10-08'),(244,'You Think You\'re a Comic!',127,46,'2018-02-08'),(245,'Butterfly',197,60,'2018-03-09'),(246,'Wannabewithu',7,70,'2016-07-09'),(247,'Romance Garbage',198,58,'2018-07-07'),(248,'Falling for U',199,72,'2017-08-14'),(249,'She Live',200,47,'2019-05-10'),(250,'Drew Barrymore',201,65,'2017-12-01'),(251,'I AM YOU',202,81,'2018-08-03'),(252,'The Time Of Our Lives',203,70,'2009-01-01'),(253,'iSouljaBoyTellem',204,71,'2008-01-01'),(254,'souljaboytellem.com',204,71,'2007-01-01'),(255,'The Beautiful & Damned',205,78,'2017-12-15'),(256,'Chocolate Factory',206,66,'2003-01-01'),(257,'Finesse',130,90,'2018-06-29'),(258,'All I Feel',207,60,'2008-04-08'),(259,'Jason Derulo',208,69,'2010-02-24'),(260,'The Trinity',209,72,'2005-09-26'),(261,'Goodies',210,72,'2004-09-24'),(262,'Freedom',211,67,'2008-01-01'),(263,'Passion, Pain & Pleasure',212,69,'2010-09-13'),(264,'Crunkest Hits',213,62,'2011-03-15'),(265,'Hot Mess',214,61,'2009-07-07'),(266,'Country Grammar',215,73,'2000-06-27'),(267,'Flockaveli',216,72,'2010-10-01'),(268,'Teenage Dream',217,82,'2012-03-12'),(269,'Gravity',218,45,'2016-11-11'),(270,'All That We Needed',219,74,'2005-01-01'),(271,'Somewhere Somehow',220,69,'2013-01-01'),(272,'All The Little Lights',221,71,'2013-02-17'),(273,'Science & Faith',222,60,'2011-01-18'),(274,'The Bedroom Demos',223,66,'2008-05-04'),(275,'It\'s About Us',224,75,'2014-10-06'),(276,'Chaos And The Calm',225,71,'2014-12-15'),(277,'Is There Anybody Out There?',226,73,'2014-01-20'),(278,'Birdy',227,72,'2011-11-04'),(279,'head or heart',228,63,'2014-03-27'),(280,'us',229,75,'2016-03-25'),(281,'Only Human',230,83,'2018-03-09'),(282,'Jealous',8,73,'2014-11-21'),(283,'The Fault In Our Stars: Music From The Motion Picture',231,65,'2014-05-19'),(284,'The Pinkprint',232,73,'2014-12-15'),(285,'x',231,85,'2014-06-21'),(286,'Unapologetic',123,69,'2012-12-11'),(287,'How To Save A Life',233,77,'2005-09-13'),(288,'Better',234,68,'2016-04-29'),(289,'Flicker',235,80,'2017-10-20'),(290,'James Arthur',236,74,'2013-11-04'),(291,'lovestrong',228,70,'2011-05-10'),(292,'The Thrill Of It All',133,75,'2017-11-03'),(293,'25',65,78,'2016-06-24'),(294,'Eyes Open',237,74,'2006-01-01'),(295,'Coco',238,65,'2007-01-01'),(296,'Unbreakable Smile',239,63,'2016-01-29'),(297,'Not About Angels',227,69,'2014-04-13'),(298,'Handwritten',44,77,'2015-11-20'),(299,'Back to You',240,71,'2018-05-10'),(300,'Culture II',241,81,'2018-01-26'),(301,'Asleep In The Bread Aisle',242,58,'2009-01-01'),(302,'Or Nah',243,74,'2014-06-10'),(303,'Top Five (Music From And Inspired By The Motion Picture)',244,56,'2014-12-09'),(304,'She Belongs to the Game',245,58,'2015-10-19'),(305,'Magic In The Hamptons',246,77,'2018-06-08'),(306,'Stadium Arcadium',247,81,'2006-05-09'),(307,'Me And My Gang',248,73,'2006-01-01'),(308,'The Carter V',249,77,'2018-09-28'),(309,'Melodrama',250,77,'2017-06-16'),(310,'Lazy Fair',201,67,'2014-04-22'),(311,'All Night Longer',251,61,'2012-08-20'),(312,'Jordan Belfort',252,68,'2015-08-26'),(313,'The Trojan Horse',253,52,'2017-06-16'),(314,'A Town Called Paradise',254,61,'2014-06-13'),(315,'The Story of Us',255,71,'2017-09-15'),(316,'BOOMIVERSE',256,63,'2017-06-16'),(317,'The Click',62,73,'2017-06-09'),(318,'This Feeling',257,49,'2016-08-16'),(319,'The Name Above the Title',258,58,'2016-10-14'),(320,'La La Land',201,67,'2019-07-05'),(321,'ROXANNE',161,87,'2019-10-10'),(322,'Alone Together',259,59,'2016-04-08'),(323,'Don\'t Forget',129,61,'2008-01-01'),(324,'Landmark',260,68,'2017-02-24'),(325,'Kid Krow',261,84,'2020-03-20'),(326,'Rivers in the Wasteland',262,58,'2014-04-17'),(327,'Put Your Records On',263,47,'2020-04-24'),(328,'CLERKS II (Music From The Motion Picture)',272,41,'2010-07-27'),(329,'Close To You',273,58,'1970-01-01'),(330,'Greatest',274,79,'1979-01-01'),(331,'America',275,72,'1972-01-01'),(332,'Hotel California',276,79,'1976-12-08'),(333,'Boston',277,77,'1976-01-01'),(334,'Chicago X',278,69,'1976-06-14'),(335,'American Pie',279,73,'1971-01-01'),(336,'I Am',280,71,'1976-06-01'),(337,'Bigger Than Both Of Us',281,66,'1976-08-01'),(338,'The Chic Organization 1977-1979',282,68,'1976-01-01'),(339,'Hot Chocolate',283,66,'1975-01-01'),(340,'Summer Breeze',284,55,'1972-01-01'),(341,'Minute by Minute',285,65,'1978-01-01'),(342,'Band On The Run',286,69,'1973-12-05'),(343,'No Secrets',287,70,'1972-01-01'),(344,'Honky Chateau',131,76,'1972-05-19'),(345,'Off the Wall',288,75,'1979-08-10'),(346,'Freedom for the Stallion',289,56,'1973-01-01'),(347,'Get The Knack',290,68,'1979-01-01'),(348,'Rumours',291,83,'1977-02-04'),(349,'Songs Of Love And Hate',292,59,'1971-03-19'),(350,'Witching Hour',293,37,'2005-01-01'),(351,'Weekend',294,38,'2013-10-14'),(352,'The Tales That We Tell',294,22,'2017-06-16'),(353,'Crossing The Rubicon',294,41,'2009-06-01'),(354,'Duran Duran',295,58,'1981-06-15'),(355,'Rio',295,70,'1982-05-10'),(356,'Seven and the Ragged Tiger',295,56,'1983-11-21'),(357,'Arena',295,48,'1984-11-12');
/*!40000 ALTER TABLE `album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artist`
--

DROP TABLE IF EXISTS `artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artist` (
  `artist_id` int NOT NULL,
  `artist_name` varchar(100) NOT NULL,
  `popularity` int DEFAULT NULL,
  PRIMARY KEY (`artist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist`
--

LOCK TABLES `artist` WRITE;
/*!40000 ALTER TABLE `artist` DISABLE KEYS */;
INSERT INTO `artist` VALUES (1,'Childish Gambino',83),(2,'Khalid',93),(3,'The Revivalists',63),(4,'Judah & the Lion',65),(5,'BENEE',84),(6,'BROCKHAMPTON',81),(7,'Cuco',76),(8,'Labrinth',80),(9,'Tones And I',86),(10,'Absofacto',64),(11,'Evan McIntosh',53),(12,'Rex Orange County',81),(13,'Audrey Mika',69),(14,'Cold War Kids',66),(15,'Florence + The Machine',78),(16,'Sia',87),(17,'MIIA',56),(18,'The Beatles',90),(19,'Michael Bublé',78),(20,'Louis The Child',75),(21,'SHAED',72),(22,'Kanye West',91),(23,'Lemaitre',60),(24,'blackbear',86),(25,'Ødyssey',43),(26,'LSD',87),(27,'Twenty One Pilots',87),(28,'Jai Wolf',65),(29,'ODESZA',75),(30,'ZHU',72),(31,'Selena Gomez',88),(32,'Flight Facilities',64),(33,'Green Day',83),(34,'What So Not',64),(35,'KYLE',77),(36,'Harry Styles',90),(37,'Dua Lipa',94),(38,'Bebe Rexha',85),(39,'Sam Feldt',81),(40,'Charlie Puth',83),(41,'Lizzo',82),(42,'Normani',78),(43,'Colony House',59),(44,'Shawn Mendes',89),(45,'Jonas Brothers',85),(46,'Regard',80),(47,'Ava Max',87),(48,'5 Seconds of Summer',86),(49,'Marshmello',89),(50,'Lukas Graham',77),(51,'Bastille',82),(52,'Whethan',71),(53,'Snakehips',70),(54,'Queen',90),(55,'Afroman',64),(56,'Olly Murs',71),(57,'Vance Joy',78),(58,'The Lumineers',79),(59,'Phillip Phillips',65),(60,'Edward Sharpe & The Magnetic Zeros',66),(61,'Of Monsters and Men',73),(62,'AJR',78),(63,'X Ambassadors',79),(64,'Matthew Mole',55),(65,'Adele',85),(66,'Mumford & Sons',79),(67,'Van William',40),(68,'CeeLo Green',69),(69,'Panic! At The Disco',85),(70,'The All-American Rejects',71),(71,'Robert DeLong',52),(72,'Andy Grammer',78),(73,'WALK THE MOON',73),(74,'MKTO',73),(75,'The Chainsmokers',88),(76,'Beyoncé',90),(77,'DRAM',68),(78,'Owl City',73),(79,'Neon Trees',70),(80,'Rixton',66),(81,'Mike Posner',74),(82,'Hot Chelle Rae',66),(83,'MAGIC!',71),(84,'Usher',83),(85,'Jack & Jack',72),(86,'Aer',57),(87,'Modest Mouse',68),(88,'Tom Rosenthal',65),(89,'Michael Henry & Justin Robinett',38),(90,'Timmies',70),(91,'The Beach Boys',78),(92,'Blue Swede',65),(93,'Electric Light Orchestra',76),(94,'The Jackson 5',71),(95,'Rupert Holmes',64),(96,'Looking Glass',62),(97,'Eurythmics',71),(98,'a-ha',74),(99,'Dead Or Alive',61),(100,'MICHELLE',43),(101,'Amber Mark',64),(102,'Surfaces',83),(103,'khai dreams',73),(104,'Jessie Reyez',79),(105,'SZA',82),(106,'Sure Sure',59),(107,'Amy Winehouse',78),(108,'Zella Day',61),(109,'Zugos',22),(110,'John Newman',72),(111,'c a n d i d !',37),(112,'Mac Miller',87),(113,'Kehlani',85),(114,'Miguel',82),(115,'Garrickson',34),(116,'Sam Fender',68),(117,'Post Malone',95),(118,'The Weeknd',97),(119,'Billie Eilish',94),(120,'Estelle',69),(121,'John Powell',66),(122,'Michael Giacchino',68),(123,'Rihanna',91),(124,'Elvin Bishop',55),(125,'Paul Anka',67),(126,'The Righteous Brothers',65),(127,'Gus Dapperton',83),(128,'Christina Aguilera',81),(129,'Demi Lovato',86),(130,'Bruno Mars',89),(131,'Elton John',85),(132,'Sutton Foster',50),(133,'Sam Smith',89),(134,'Gloria Gaynor',67),(135,'Nick Cave & The Bad Seeds',68),(136,'Nina Simone',74),(137,'Ariana Grande',95),(138,'Whitney Houston',81),(139,'Dreamville',75),(140,'Vic Mensa',69),(141,'RunitupTahj',43),(142,'DaBaby',94),(143,'Yung Gravy',77),(144,'josh pan',50),(145,'Jason Mraz',80),(146,'Sonder',59),(147,'Brasstracks',56),(148,'Sugi.wa',56),(149,'Everyone You Know',56),(150,'Macklemore & Ryan Lewis',78),(151,'RL Grime',69),(152,'Tyler, The Creator',70),(153,'Kevin Abstract',68),(154,'Dominic Fike',76),(155,'Lil Mosey',87),(156,'Tory Lanez',88),(157,'Pop Smoke',85),(158,'T.I.',79),(159,'ScHoolboy Q',79),(160,'Smino',74),(161,'Arizona Zervas',83),(162,'Megan Thee Stallion',87),(163,'Iggy Azalea',76),(164,'Doja Cat',91),(165,'J. Cole',88),(166,'OutKast',77),(167,'Travis Scott',98),(168,'Britney Spears',82),(169,'Sean Kingston',74),(170,'Tame Impala',83),(171,'Drake',99),(172,'half·alive',66),(173,'6ix9ine',88),(174,'The Neighbourhood',80),(175,'Iyaz',69),(176,'Y2K',75),(177,'3OH!3',67),(178,'Ashnikko',69),(179,'Roddy Ricch',94),(180,'The Killers',81),(181,'The Hails',45),(182,'Glass Animals',74),(183,'Gucci Mane',85),(184,'Avril Lavigne',80),(185,'Kelly Clarkson',79),(186,'Snoop Dogg',86),(187,'Rae Sremmurd',79),(188,'A Boogie Wit da Hoodie',89),(189,'Gnarls Barkley',68),(190,'Cali Swag District',52),(191,'Kodak Black',84),(192,'A$AP Rocky',86),(193,'Bazzi',85),(194,'Black Eyes Peas',86),(195,'Loud Luxury',77),(196,'Young Thug',92),(197,'UMI',70),(198,'Fatboibari',63),(199,'Peachy!',67),(200,'Maxo Kream',65),(201,'Bryce Vine',76),(202,'YNW Melly',85),(203,'Miley Cyrus',84),(204,'Soulja Boy',71),(205,'G-Eazy',86),(206,'R. Kelly',72),(207,'Ray J',61),(208,'Jason Derulo',82),(209,'Sean Paul',83),(210,'Ciara',75),(211,'Akon',82),(212,'Trey Songz',79),(213,'Lil Jon & The East Side Boyz',66),(214,'Cobra Starship',62),(215,'Nelly',78),(216,'Waka Flocka Flame',70),(217,'Katy Perry',88),(218,'Timeflies',64),(219,'Plain White T\'s',70),(220,'We The Kings',68),(221,'Passenger',76),(222,'The Script',79),(223,'Ron Pope',62),(224,'Alex & Sierra',69),(225,'James Bay',78),(226,'A Great Big World',70),(227,'Birdy',75),(228,'Christina Perri',75),(229,'gnash',76),(230,'Calum Scott',78),(231,'Ed Sheeran',86),(232,'Nicki Minaj',92),(233,'The Fray',80),(234,'Haley Reinhart',73),(235,'Niall Horan',83),(236,'James Arthur',85),(237,'Snow Patrol',73),(238,'Colbie Caillat',74),(239,'Tori Kelly',73),(240,'Louis Tomlinson',75),(241,'Migos',85),(242,'Asher Roth',57),(243,'Ty Dolla $ign',88),(244,'JAY-Z',86),(245,'Troy Ave',56),(246,'Social House',75),(247,'Red Hot Chili Peppers',86),(248,'Rascal Flatts',75),(249,'Lil Wayne',90),(250,'Lorde',73),(251,'Sammy Adams',61),(252,'Wes Walker',55),(253,'WATCH THE DUCK',48),(254,'Tiësto',84),(255,'Quinn XCII',79),(256,'Big Boi',62),(257,'mike.',71),(258,'Kid Quill',60),(259,'Skizzy Mars',64),(260,'Hippo Campus',69),(261,'Conan Gray',80),(262,'NEEDTOBREATHE',69),(263,'Ritt Momney',51),(264,'Grouplove',72),(265,'Camila Cabello',89),(266,'Halsey',91),(267,'070 Shake',65),(268,'Creamy',27),(269,'Orion Sun',58),(270,'Inner Wave',59),(271,'Jesse',60),(272,'B.J. Thomas',54),(273,'Carpenters',71),(274,'Bee Gees',78),(275,'America',71),(276,'Eagles',80),(277,'Boston',71),(278,'Chicago',73),(279,'Don McLean',69),(280,'Earth, Wind & Fire',76),(281,'Daryl Hall & John Oates',76),(282,'CHIC',65),(283,'Hot Chocolate',62),(284,'Seals and Crofts',61),(285,'The Doobie Brothers',73),(286,'Wings',69),(287,'Carly Simon',67),(288,'Michael Jackson',85),(289,'Hues Corporation',52),(290,'The Knack',62),(291,'Fleetwood Mac',83),(292,'Leonard Cohen',71),(293,'Ladytron',51),(294,'The Sounds',54),(295,'Duran Duran',72),(296,'Metric',62),(297,'Wall Of Voodoo',41);
/*!40000 ALTER TABLE `artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artist_has_genre`
--

DROP TABLE IF EXISTS `artist_has_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artist_has_genre` (
  `artist_id` int NOT NULL,
  `genre_id` int NOT NULL,
  KEY `artist_id` (`artist_id`),
  KEY `genre_id` (`genre_id`),
  CONSTRAINT `artist_has_genre_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`artist_id`),
  CONSTRAINT `artist_has_genre_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist_has_genre`
--

LOCK TABLES `artist_has_genre` WRITE;
/*!40000 ALTER TABLE `artist_has_genre` DISABLE KEYS */;
INSERT INTO `artist_has_genre` VALUES (1,1),(1,2),(1,3),(1,4),(2,1),(2,5),(2,3),(3,1),(3,6),(4,7),(4,8),(4,1),(4,6),(4,3),(5,3),(6,2),(6,14),(6,3),(6,4),(7,3),(8,3),(9,3),(10,8),(10,3),(11,8),(11,3),(12,3),(12,8),(12,5),(13,3),(14,8),(14,3),(14,6),(14,1),(15,3),(15,1),(15,9),(16,10),(16,3),(17,3),(18,6),(19,3),(19,11),(20,12),(20,8),(20,3),(21,3),(22,4),(22,2),(23,1),(23,10),(23,3),(24,3),(24,4),(25,3),(26,3),(27,10),(27,3),(28,12),(28,8),(28,3),(29,12),(30,12),(31,10),(31,3),(32,1),(32,10),(32,3),(32,8),(33,13),(34,12),(34,8),(35,3),(35,4),(36,3),(37,10),(37,3),(38,10),(38,3),(39,12),(39,10),(39,3),(40,10),(40,3),(41,3),(41,2),(41,4),(42,10),(42,3),(42,5),(43,8),(43,3),(43,1),(43,6),(44,3),(45,14),(45,10),(45,3),(45,6),(46,3),(46,12),(47,10),(47,3),(48,14),(48,10),(48,3),(49,3),(50,3),(51,6),(51,3),(52,12),(52,8),(52,3),(52,6),(53,10),(53,12),(53,3),(54,6),(55,15),(55,4),(55,2),(56,10),(56,3),(56,6),(57,7),(57,3),(57,6),(57,11),(58,7),(58,3),(58,6),(59,7),(59,3),(59,11),(59,6),(60,7),(60,8),(60,3),(60,6),(61,7),(61,3),(61,6),(62,3),(62,6),(63,1),(63,6),(63,3),(64,8),(64,1),(64,3),(65,16),(65,3),(66,7),(66,6),(67,1),(67,7),(67,6),(68,1),(68,2),(69,9),(69,3),(69,6),(69,17),(70,6),(70,3),(70,13),(71,1),(71,6),(72,10),(72,3),(72,11),(72,6),(73,8),(73,3),(73,1),(73,6),(74,10),(74,3),(74,4),(74,6),(75,10),(75,12),(75,3),(76,10),(76,3),(76,5),(77,3),(77,4),(78,3),(78,6),(79,8),(79,3),(79,1),(79,6),(79,11),(80,10),(80,3),(81,10),(81,3),(81,4),(82,10),(82,3),(82,13),(82,6),(83,3),(83,18),(84,1),(84,2),(84,10),(84,3),(84,5),(85,10),(85,3),(86,8),(86,3),(86,4),(87,1),(87,6),(87,10),(87,13),(87,8),(88,7),(88,8),(89,3),(90,12),(91,9),(91,3),(91,6),(91,7),(92,3),(93,6),(93,7),(93,11),(94,19),(95,6),(96,6),(96,3),(97,10),(97,3),(97,6),(98,10),(98,6),(99,10),(99,6),(100,3),(101,1),(101,5),(101,8),(101,16),(101,3),(102,3),(102,16),(103,8),(103,3),(104,5),(104,3),(105,3),(105,4),(106,8),(106,3),(106,6),(107,16),(108,3),(108,8),(109,3),(110,3),(111,3),(112,2),(112,4),(113,3),(113,4),(113,5),(114,10),(114,3),(114,4),(114,5),(115,16),(116,8),(116,6),(117,4),(118,5),(118,3),(119,3),(120,5),(121,20),(122,20),(123,3),(123,10),(123,5),(124,21),(124,6),(124,22),(125,3),(125,6),(125,11),(126,3),(126,7),(126,11),(126,19),(126,6),(127,3),(127,8),(128,10),(128,3),(128,4),(129,10),(129,3),(130,10),(130,3),(131,6),(131,11),(132,23),(133,3),(134,24),(135,1),(135,6),(136,25),(136,21),(136,16),(137,10),(137,3),(138,10),(138,3),(139,2),(139,4),(140,4),(140,2),(140,3),(141,4),(142,2),(142,4),(143,4),(143,2),(143,3),(144,12),(145,3),(145,11),(145,6),(146,5),(146,16),(147,3),(148,3),(149,8),(150,10),(150,3),(150,4),(151,12),(152,2),(152,4),(153,2),(153,4),(154,1),(154,3),(154,6),(155,4),(156,2),(156,4),(156,3),(157,4),(158,1),(158,2),(158,10),(158,3),(159,4),(159,2),(159,3),(160,1),(160,5),(160,2),(160,4),(161,3),(161,4),(162,3),(162,4),(163,2),(163,10),(163,3),(163,4),(164,8),(164,3),(165,2),(165,3),(165,4),(166,1),(166,2),(166,4),(167,4),(168,10),(168,3),(168,4),(169,10),(169,3),(169,2),(170,3),(171,2),(171,3),(171,4),(172,8),(172,3),(172,1),(172,6),(173,17),(173,4),(174,1),(174,6),(174,3),(175,10),(175,3),(175,4),(176,3),(176,4),(177,10),(177,3),(177,13),(177,4),(178,3),(179,4),(180,6),(181,8),(182,3),(182,6),(183,1),(183,2),(183,4),(184,3),(184,10),(185,11),(185,3),(185,10),(185,6),(186,4),(186,2),(187,2),(187,3),(187,4),(188,4),(188,3),(189,1),(189,2),(189,16),(190,3),(190,4),(191,4),(191,2),(192,2),(192,3),(192,4),(193,3),(194,10),(194,3),(194,4),(195,10),(195,12),(195,3),(196,1),(196,2),(196,4),(196,3),(197,1),(197,5),(197,16),(197,8),(197,3),(198,17),(198,4),(199,8),(199,3),(200,2),(200,4),(201,3),(201,4),(202,4),(203,10),(203,3),(204,1),(204,2),(204,10),(204,3),(204,4),(205,2),(205,8),(205,3),(205,4),(206,3),(207,3),(207,4),(207,5),(208,3),(208,4),(208,10),(209,10),(209,3),(209,4),(210,10),(210,3),(210,5),(211,10),(211,3),(212,10),(212,3),(212,5),(213,1),(213,2),(213,4),(213,3),(214,10),(214,3),(214,13),(215,10),(215,3),(215,2),(215,4),(216,1),(216,2),(216,4),(217,10),(217,3),(218,10),(218,3),(218,8),(218,4),(218,6),(219,11),(219,3),(219,13),(219,6),(220,11),(220,3),(220,13),(220,6),(221,7),(221,3),(221,11),(221,6),(222,6),(222,11),(222,3),(223,3),(223,11),(223,6),(224,11),(224,3),(225,11),(225,3),(225,6),(226,11),(226,3),(226,6),(227,10),(227,3),(227,6),(228,10),(228,3),(228,11),(228,6),(229,3),(230,11),(230,3),(231,3),(232,10),(232,3),(232,2),(232,4),(233,6),(233,11),(233,3),(234,3),(235,10),(235,3),(235,6),(236,3),(237,6),(237,11),(237,3),(238,3),(238,10),(238,11),(238,6),(239,10),(239,3),(239,5),(240,10),(240,3),(241,1),(241,2),(241,3),(241,4),(242,1),(242,2),(242,8),(242,3),(242,4),(243,10),(243,3),(243,2),(243,4),(243,5),(243,16),(244,2),(244,3),(244,4),(245,2),(246,3),(247,1),(247,6),(247,26),(247,27),(248,22),(249,2),(249,4),(249,3),(250,3),(250,10),(251,8),(251,3),(251,4),(252,2),(253,1),(253,5),(254,10),(254,3),(254,12),(255,8),(255,3),(255,4),(256,1),(256,2),(256,4),(257,8),(257,3),(257,4),(258,8),(258,3),(258,4),(259,8),(259,3),(259,4),(259,2),(260,8),(260,3),(260,6),(260,1),(261,3),(261,8),(262,3),(262,1),(262,6),(262,28),(262,8),(262,7),(262,11),(263,3),(264,8),(264,3),(264,6),(264,1),(265,10),(265,3),(266,10),(266,3),(266,8),(267,1),(267,5),(267,8),(267,4),(268,3),(269,1),(269,5),(269,3),(269,8),(269,16),(270,8),(270,6),(270,3),(271,3),(272,3),(272,22),(272,7),(272,6),(272,11),(273,7),(273,11),(273,6),(274,24),(274,11),(274,6),(275,24),(275,11),(275,6),(276,6),(276,22),(276,7),(276,11),(277,6),(277,22),(277,11),(278,6),(278,7),(278,11),(279,6),(279,7),(279,11),(280,24),(280,25),(280,26),(280,19),(280,16),(281,6),(281,7),(281,11),(282,24),(282,26),(282,19),(282,16),(283,3),(283,24),(283,11),(283,19),(283,6),(284,6),(284,3),(284,22),(284,7),(284,11),(285,6),(285,21),(285,22),(285,7),(285,11),(286,6),(286,7),(286,11),(287,6),(287,22),(287,7),(287,11),(288,3),(288,5),(288,16),(289,24),(290,6),(290,3),(291,6),(291,11),(292,7),(292,6),(293,1),(293,10),(293,3),(293,12),(294,10),(294,13),(294,1),(294,6),(294,8),(295,10),(295,6),(295,3);
/*!40000 ALTER TABLE `artist_has_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre` (
  `genre_id` int NOT NULL,
  `genre_name` varchar(50) NOT NULL,
  PRIMARY KEY (`genre_id`),
  UNIQUE KEY `genre_name` (`genre_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'alternative'),(21,'blues'),(9,'boroque'),(14,'boy band'),(23,'broadway'),(28,'christian'),(15,'comedy'),(22,'country'),(10,'dance'),(24,'disco'),(12,'edm'),(17,'emo'),(7,'folk'),(26,'funk'),(2,'hip hop'),(8,'indie'),(25,'jazz'),(11,'mellow'),(27,'metal'),(19,'motown'),(3,'pop'),(13,'punk'),(5,'r&b'),(4,'rap'),(18,'reggae'),(6,'rock'),(16,'soul'),(20,'soundtrack');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlist`
--

DROP TABLE IF EXISTS `playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playlist` (
  `playlist_id` int NOT NULL,
  `playlist_name` varchar(50) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`playlist_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlist`
--

LOCK TABLES `playlist` WRITE;
/*!40000 ALTER TABLE `playlist` DISABLE KEYS */;
INSERT INTO `playlist` VALUES (1,'Vibing',1),(2,'Alternative Fun Rhythms',1),(3,'Fun Beats',1),(4,'Summer Jams',1),(5,'Fun Jam Along',1),(6,'Folksy',1),(7,'~angsty~',1),(8,'2010sish Party',1),(9,'Quirky',1),(10,'80s',1),(11,'feliz',2),(12,'cop',2),(13,'pace in',2),(14,'kuiper belt',2),(15,'heat',2),(16,'on dekk',2),(17,'twease me daddi',2),(18,'vapor',2),(19,'black and white bangers',2),(20,'Bops',3),(21,'Sad Songs',3),(22,'Vibes',3),(23,'Ultimate 70s',4),(24,'Running',4),(25,'Leonard Cohen - Songs Of Love And Hate',4),(26,'Duran Duran',4);
/*!40000 ALTER TABLE `playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlist_has_song`
--

DROP TABLE IF EXISTS `playlist_has_song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playlist_has_song` (
  `playlist_id` int NOT NULL,
  `song_id` int NOT NULL,
  KEY `playlist_id` (`playlist_id`),
  KEY `song_id` (`song_id`),
  CONSTRAINT `playlist_has_song_ibfk_1` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`playlist_id`),
  CONSTRAINT `playlist_has_song_ibfk_2` FOREIGN KEY (`song_id`) REFERENCES `song` (`song_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlist_has_song`
--

LOCK TABLES `playlist_has_song` WRITE;
/*!40000 ALTER TABLE `playlist_has_song` DISABLE KEYS */;
INSERT INTO `playlist_has_song` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(2,3),(2,5),(2,7),(2,8),(2,9),(2,12),(2,17),(2,18),(2,19),(2,20),(2,21),(2,22),(2,23),(2,24),(2,25),(2,26),(3,9),(3,17),(3,19),(3,27),(3,28),(3,29),(3,30),(3,31),(3,32),(3,33),(3,34),(3,35),(3,36),(3,37),(3,38),(3,39),(3,40),(3,41),(3,42),(3,43),(3,44),(3,45),(3,46),(3,47),(4,48),(4,49),(4,50),(4,51),(4,52),(4,53),(4,54),(4,55),(4,56),(4,5),(4,57),(4,58),(4,59),(4,60),(4,61),(4,62),(4,63),(4,64),(4,65),(4,66),(4,67),(4,68),(4,69),(4,25),(5,63),(5,70),(5,71),(5,72),(5,73),(5,74),(5,75),(5,76),(5,77),(5,68),(5,67),(5,25),(6,78),(6,79),(6,80),(6,81),(6,82),(6,83),(6,84),(6,85),(6,86),(6,87),(6,88),(6,89),(6,90),(6,91),(6,92),(6,93),(6,94),(6,95),(6,96),(6,97),(6,98),(6,99),(6,100),(6,101),(7,102),(7,103),(7,104),(7,31),(7,105),(7,106),(7,107),(7,108),(7,12),(8,102),(8,109),(8,110),(8,111),(8,112),(8,113),(8,114),(8,115),(8,75),(8,116),(8,117),(8,118),(8,119),(8,120),(8,121),(8,122),(8,123),(8,124),(9,125),(9,126),(9,127),(9,128),(9,129),(10,73),(10,130),(10,131),(10,132),(10,133),(10,134),(10,135),(10,136),(10,137),(10,138),(10,139),(11,140),(11,141),(11,142),(11,143),(11,5),(11,144),(11,145),(11,146),(11,147),(11,148),(11,149),(11,150),(11,151),(11,7),(12,152),(12,153),(12,154),(12,155),(12,156),(12,157),(12,158),(12,159),(13,160),(13,161),(13,5),(13,162),(13,163),(13,29),(13,164),(13,165),(13,166),(13,167),(13,168),(13,169),(13,170),(14,171),(14,172),(14,173),(14,174),(14,175),(14,176),(14,177),(14,178),(14,179),(14,180),(14,181),(14,182),(14,183),(14,184),(14,185),(14,186),(14,187),(14,188),(14,145),(14,189),(14,190),(14,191),(14,192),(14,193),(14,147),(14,194),(14,195),(14,196),(14,197),(14,198),(15,199),(15,200),(15,201),(15,202),(15,203),(16,204),(16,205),(16,206),(16,25),(16,207),(16,208),(16,209),(16,210),(17,211),(17,212),(17,213),(17,214),(17,215),(17,216),(17,217),(17,218),(17,219),(17,220),(17,221),(17,222),(17,223),(17,224),(17,225),(17,226),(17,227),(17,228),(17,229),(17,230),(17,231),(17,232),(17,233),(17,234),(17,235),(17,105),(17,236),(17,237),(17,130),(17,238),(17,239),(17,240),(17,167),(17,241),(17,242),(17,243),(17,244),(17,245),(17,246),(17,247),(17,248),(17,249),(17,250),(17,251),(17,252),(17,253),(17,254),(17,255),(17,256),(17,257),(17,258),(17,259),(17,260),(17,261),(17,262),(17,263),(17,264),(17,114),(17,265),(17,266),(17,267),(17,268),(17,269),(17,27),(17,9),(18,171),(18,270),(18,271),(18,272),(18,273),(18,274),(18,7),(18,275),(19,246),(19,277),(19,220),(19,278),(19,279),(19,224),(19,205),(19,235),(19,237),(20,280),(20,281),(20,282),(20,283),(20,284),(20,285),(20,286),(20,287),(20,252),(20,288),(20,228),(20,289),(20,290),(20,291),(20,292),(20,293),(20,294),(20,295),(20,242),(20,296),(20,259),(20,297),(20,232),(20,255),(20,95),(20,256),(20,298),(21,299),(21,300),(21,301),(21,90),(21,302),(21,303),(21,304),(21,305),(21,306),(21,307),(21,308),(21,309),(21,310),(21,311),(21,312),(21,313),(21,314),(21,315),(21,316),(21,97),(21,317),(21,318),(21,319),(21,320),(21,321),(21,322),(21,323),(21,324),(21,325),(21,326),(21,177),(21,327),(21,328),(21,329),(21,330),(21,331),(21,332),(22,333),(22,62),(22,334),(22,335),(22,336),(22,337),(22,338),(22,339),(22,340),(22,341),(22,342),(22,343),(22,278),(22,344),(22,345),(22,346),(22,210),(22,347),(22,348),(22,246),(22,255),(22,349),(22,350),(22,351),(22,352),(22,353),(22,354),(22,355),(22,356),(22,357),(22,358),(23,365),(23,366),(23,367),(23,368),(23,369),(23,370),(23,371),(23,372),(23,373),(23,134),(23,374),(23,375),(23,376),(23,377),(23,378),(23,379),(23,380),(23,381),(23,382),(23,383),(23,384),(23,385),(23,386),(24,395),(24,396),(24,397),(24,398),(24,399),(24,400),(24,401),(24,402),(24,403),(24,404),(25,387),(25,388),(25,389),(25,390),(25,391),(25,392),(25,393),(25,394),(26,405),(26,406),(26,407),(26,408),(26,409),(26,410),(26,411),(26,412),(26,413),(26,414),(26,415),(26,416),(26,417),(26,418),(26,419),(26,420),(26,421),(26,422),(26,423),(26,424),(26,425),(26,426),(26,427),(26,428),(26,429),(26,430),(26,431),(26,432);
/*!40000 ALTER TABLE `playlist_has_song` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song`
--

DROP TABLE IF EXISTS `song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `song` (
  `song_id` int NOT NULL,
  `song_title` varchar(100) NOT NULL,
  `length_sec` int DEFAULT NULL,
  `explicit` tinyint(1) DEFAULT NULL,
  `key_signature` varchar(2) DEFAULT NULL,
  `key_mode` enum('major','minor') DEFAULT NULL,
  `tempo` int DEFAULT NULL,
  `time_signature` int DEFAULT NULL,
  `album_id` int NOT NULL,
  `popularity` int DEFAULT NULL,
  PRIMARY KEY (`song_id`),
  KEY `album_id` (`album_id`),
  CONSTRAINT `album_id` FOREIGN KEY (`album_id`) REFERENCES `album` (`album_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song`
--

LOCK TABLES `song` WRITE;
/*!40000 ALTER TABLE `song` DISABLE KEYS */;
INSERT INTO `song` VALUES (1,'Redbone',327,1,'C#','major',160,4,1,82),(2,'Better',229,0,'C','minor',98,4,2,78),(3,'Wish I Knew You',274,0,'C','minor',101,4,3,68),(4,'Suit And Jacket',222,0,'A#','major',164,4,4,62),(5,'Afterlife',237,0,'A#','major',110,4,5,61),(6,'FACE',259,1,'B','minor',120,4,6,70),(7,'Dontmakemefallinlove',208,0,'G#','major',104,4,7,72),(8,'Mount Everest',157,1,'C','minor',89,4,8,69),(9,'Dance Monkey',209,0,'F#','minor',98,4,9,94),(10,'Dissolve',225,0,'F#','minor',85,4,10,74),(11,'Keeping Tabs',248,1,'D','major',140,4,11,64),(12,'Ur So F**kInG cOoL',173,1,'B','minor',79,4,12,74),(13,'TMDWAIWW',298,0,'D','major',107,3,13,37),(14,'Sunflower',252,1,'F#','major',130,4,14,79),(15,'Bossa No Sé',201,1,'E','major',134,4,11,73),(16,'Y U Gotta B Like That',154,0,'A','major',92,4,15,73),(17,'Love Is Mystical',214,0,'G','minor',106,4,16,60),(18,'Dog Days Are Over',252,0,'G','major',150,4,17,69),(19,'Elastic Heart',257,0,'A','major',130,4,18,65),(20,'Chandelier',216,0,'C#','major',117,5,18,70),(21,'Dynasty',226,0,'G#','minor',124,4,19,62),(22,'Eleanor Rigby',127,0,'E','minor',138,4,20,70),(23,'Feeling Good',237,0,'C#','major',115,3,21,63),(24,'Fire',206,0,'F#','minor',90,4,22,36),(25,'Supalonely',223,1,'G','major',129,4,23,95),(26,'Slow Down Love',158,0,'B','minor',127,4,24,64),(27,'Trampoline',184,0,'G','minor',127,4,25,72),(28,'Black Skinhead',188,1,'C#','major',130,4,26,74),(29,'Stronger',312,1,'A#','minor',104,4,27,80),(30,'Closer',271,0,'D','minor',92,4,28,63),(31,'do re mi',212,1,'G#','major',111,3,29,78),(32,'Fly',173,0,'F#','minor',111,4,30,40),(33,'Genius',214,0,'B','minor',159,4,31,75),(34,'Go',135,0,'F','major',175,4,24,46),(35,'Goner',237,0,'F#','minor',96,3,32,66),(36,'Higher',231,0,'E','minor',172,4,28,54),(37,'Indian Summer',248,0,'F#','major',85,4,33,61),(38,'IPlayYouListen',293,0,'A','major',125,4,34,54),(39,'Misbehaving',229,0,'B','minor',125,4,35,44),(40,'No New Friends',176,0,'G','major',106,4,31,71),(41,'Sun Models',160,0,'G#','minor',120,4,36,66),(42,'Thunderclouds',187,0,'G','major',112,4,31,77),(43,'Working For It',232,1,'F','minor',100,4,37,63),(44,'Same Old Love',229,0,'B','minor',98,4,38,64),(45,'Crave You',235,0,'C#','minor',120,4,39,60),(46,'Boulevard of Broken Dreams',262,1,'G#','major',167,4,40,74),(47,'High You Are',213,0,'A#','major',137,4,41,63),(48,'iSpy',253,1,'G','major',75,4,42,76),(49,'Watermelon Sugar',174,0,'C','major',95,4,43,88),(50,'Break My Heart',222,0,'E','minor',113,4,44,89),(51,'I\'m Gonna Show You Crazy',208,1,'D','major',90,4,45,68),(52,'Post Malone',174,0,'G','major',107,4,46,81),(53,'Mother',163,0,'B','major',180,3,47,67),(54,'Good as Hell',160,0,'C','minor',96,4,48,75),(55,'Motivation',194,0,'E','major',171,4,49,78),(56,'You Know It',182,0,'D#','major',158,4,50,63),(57,'Señorita',191,0,'A','minor',117,4,51,88),(58,'Sucker',181,0,'C#','minor',138,4,52,85),(59,'What A Man Gotta Do',181,0,'A','major',113,4,53,86),(60,'Ride It',158,0,'G','minor',118,4,54,90),(61,'Bad Child',221,1,'F#','minor',118,4,55,80),(62,'Young Dumb & Broke',203,0,'C#','major',137,4,56,82),(63,'Sweet but Psycho',187,0,'C#','major',133,4,57,85),(64,'Youngblood',203,0,'G','minor',120,4,58,82),(65,'Happier',214,0,'F','major',100,4,59,86),(66,'Funeral',245,0,'D#','major',95,3,60,52),(67,'Good Grief',206,0,'C#','major',120,4,61,67),(68,'Marvin Gaye',190,0,'C#','minor',110,4,62,70),(69,'If I Can\'t Have You',191,0,'D','major',124,4,63,82),(70,'Can\'t Hide',184,0,'D','minor',180,4,64,58),(71,'All My Friends',230,1,'C','major',95,4,65,74),(72,'Better Not',223,0,'A','major',114,4,66,72),(73,'Bohemian Rhapsody',355,0,'C','minor',144,4,67,60),(74,'Crazy Rap',329,1,'A','major',99,4,68,69),(75,'Dance with Me Tonight',203,0,'B','minor',164,4,69,60),(76,'When I\'m Down',165,0,'G','major',94,4,70,70),(77,'Last To Leave',180,0,'C','major',94,4,71,60),(78,'Like Gold',224,0,'G','major',110,4,72,64),(79,'Big Parade',328,0,'E','major',122,4,73,53),(80,'Stubborn Love',279,0,'C','major',115,4,73,65),(81,'Home',210,0,'C','major',121,4,74,67),(82,'Home',303,0,'D','major',112,4,75,67),(83,'From Finner',223,0,'G#','minor',96,3,76,50),(84,'Mountain Sound',211,0,'C#','minor',102,4,76,61),(85,'Dead Sea',248,0,'C','major',94,4,73,55),(86,'Dear Winter',168,1,'F','major',94,4,77,60),(87,'Ophelia',160,0,'F','major',76,4,78,72),(88,'Fire and the Flood',249,0,'F','major',115,4,79,67),(89,'House of Gold',164,0,'C','major',115,4,80,71),(90,'Unsteady',194,0,'C','major',117,4,81,76),(91,'Renegades',195,0,'D','major',90,4,81,74),(92,'Georgia',231,0,'B','major',144,4,79,69),(93,'Run',199,0,'C#','major',107,4,82,32),(94,'Holding On',191,0,'D','minor',108,4,82,29),(95,'Running After You',238,0,'E','major',105,4,82,49),(96,'Dreams & Heartache',211,0,'D','major',104,4,82,18),(97,'Someone Like You',285,0,'A','major',135,4,83,78),(98,'The Cave',218,0,'E','major',142,4,84,67),(99,'Little Lion Man',247,1,'F','major',139,4,84,68),(100,'Lay It on Me',215,0,'F','major',128,4,72,63),(101,'Revolution',236,0,'B','major',160,4,85,22),(102,'F**k You',223,1,'C','major',127,4,86,67),(103,'I Write Sins Not Tragedies',188,0,'A','minor',170,4,87,74),(104,'Gives You Hell',213,0,'E','major',100,4,88,72),(105,'hot girl bummer',185,1,'F#','minor',130,1,89,88),(106,'Idfc',245,1,'C#','minor',145,4,90,80),(107,'Long Way Down',234,1,'B','minor',80,4,91,50),(108,'Global Concepts',278,1,'E','minor',108,4,92,43),(109,'Fine By Me',173,0,'B','major',90,4,93,65),(110,'Shut Up and Dance',199,0,'C#','major',128,4,94,79),(111,'Classic',175,0,'C#','major',102,4,95,78),(112,'Closer',271,0,'D','minor',92,4,96,63),(113,'Love On Top',267,0,'C','major',94,4,97,75),(114,'Cash Machine',181,1,'A','major',143,4,98,39),(115,'Good Time',206,0,'D#','major',126,4,99,74),(116,'Animal',212,0,'F','major',148,4,100,71),(117,'Me And My Broken Heart',194,0,'F','minor',174,4,101,76),(118,'Cooler Than Me',213,0,'G','minor',130,4,102,72),(119,'I Like It Like That',188,0,'C#','major',101,4,103,64),(120,'Rude',225,0,'C#','major',144,4,104,78),(121,'DJ Got Us Fallin\' In Love',221,0,'G','minor',120,4,105,78),(122,'Groove',186,0,'E','minor',124,4,106,44),(123,'Floats My Boat',206,1,'D','minor',85,4,107,61),(124,'Float On',208,0,'F#','major',101,4,108,70),(125,'Birthday Party',224,0,'C#','major',84,4,77,58),(126,'Don\'t You Know How Busy and Important I Am?',140,0,'C','minor',138,4,109,37),(127,'Wow, I Can Get Sexual Too',176,0,'A','minor',115,4,110,11),(128,'Imagination',142,0,'C#','major',58,4,111,58),(129,'Kokomo',217,0,'C','major',116,4,112,73),(130,'Hooked on a Feeling',173,0,'G#','major',118,4,113,76),(131,'Mr. Blue Sky',303,0,'A#','major',178,4,114,80),(132,'I Want You Back',176,0,'G#','major',197,4,115,76),(133,'Escape (The Pina Colada Song)',276,0,'C','major',139,4,116,74),(134,'Brandy (You\'re a Fine Girl)',187,0,'C#','minor',125,4,117,74),(135,'Don\'t Stop Me Now',210,0,'F','major',156,4,118,60),(136,'Sweet Dreams (Are Made Of This)',217,0,'C','minor',125,4,119,81),(137,'Take on Me',225,0,'F#','minor',84,4,120,83),(138,'You Spin Me Round (Like a Record)',200,0,'F#','minor',128,4,121,72),(139,'Radio Ga Ga',348,0,'F','major',112,4,122,65),(140,'STUCK ON U',144,0,'G','major',170,4,123,42),(141,'Mixer',193,0,'A','major',95,4,124,61),(142,'24 / 7 / 365',177,0,'E','major',141,4,125,70),(143,'Sunkissed',126,0,'F#','major',154,4,126,74),(144,'Apple Juice',180,0,'F','major',140,3,127,57),(145,'The Weekend',272,1,'G#','minor',68,5,128,75),(146,'Funky Galileo',246,0,'A#','major',111,4,129,56),(147,'Valerie',240,0,'F','minor',101,4,130,53),(148,'Man on the Moon',242,0,'G#','major',75,4,131,53),(149,'F430 Spider',122,0,'B','major',190,4,132,2),(150,'Love Me Again',240,0,'D','minor',126,4,133,66),(151,'The Ballad of Harambe',192,0,'C#','minor',90,3,134,40),(152,'Skin',288,1,'F','minor',120,4,135,59),(153,'The Way',263,1,'A#','major',101,4,136,64),(154,'The Weekend',272,1,'G#','minor',68,5,137,75),(155,'Come Through and Chill',322,1,'F#','major',82,1,138,71),(156,'Quickie',226,0,'A','minor',68,4,139,55),(157,'Vixen',182,0,'C','minor',81,4,139,58),(158,'You Again',229,0,'A','minor',114,3,140,40),(159,'Can I',180,1,'F#','major',117,4,141,77),(160,'Saturday',181,1,'C#','major',176,4,142,59),(161,'Never Enough',299,1,'E','major',159,4,143,59),(162,'Remote Control',163,0,'G#','minor',94,4,132,1),(163,'Sunflower',158,0,'D','major',90,4,144,86),(164,'Blinding Lights',200,0,'C#','major',171,4,145,100),(165,'bad guy',194,0,'G','major',135,4,146,91),(166,'IV. Sweatpants',181,1,'C#','minor',80,4,147,72),(167,'American Boy',285,1,'C','major',118,4,148,78),(168,'Rickshaw Chase',156,0,'D','major',81,4,149,20),(169,'More Cannons!',180,0,'E','minor',90,3,149,24),(170,'100 Mile Dash',188,0,'F','minor',174,4,150,29),(171,'Higher',121,1,'D#','major',153,3,151,62),(172,'Fooled Around And Fell In Love',276,0,'A#','major',113,3,152,61),(173,'Put Your Head On My Shoulder',155,0,'E','minor',116,3,153,72),(174,'Unchained Melody',216,0,'C','major',99,3,154,65),(175,'My Favorite Fish',216,0,'F','minor',74,4,155,59),(176,'Bound To You',264,0,'E','minor',164,3,156,53),(177,'Stone Cold',191,0,'G#','major',140,3,157,73),(178,'Somebody To Love',296,0,'G#','major',112,3,158,68),(179,'Gorilla',244,1,'G','major',140,4,159,66),(180,'Talking to the Moon',218,0,'C#','minor',146,4,160,74),(181,'I Guess That\'s Why They Call It The Blues',285,0,'C','major',121,3,161,68),(182,'Ego',236,0,'C#','major',79,4,162,57),(183,'Gimme Gimme',214,0,'B','major',176,4,163,44),(184,'Lay Me Down',220,0,'E','major',125,4,164,76),(185,'I Will Survive',198,0,'C','major',117,4,165,71),(186,'O Children',411,0,'E','minor',122,4,166,60),(187,'Feeling Good',174,0,'G','minor',79,4,167,73),(188,'I\'d Rather Go Blind',190,0,'A','major',166,3,168,57),(189,'Tattooed Heart',195,0,'G','major',72,4,169,58),(190,'Daydreamin\'',211,0,'G','major',114,3,169,49),(191,'I Wanna Dance with Somebody (Who Loves Me)',291,0,'C#','major',119,4,170,81),(192,'I Will Always Love You',271,0,'E','major',67,4,171,76),(193,'Back to Black',240,1,'A#','major',123,4,172,73),(194,'imagine',212,1,'G#','major',63,3,173,74),(195,'Dangerous Woman',236,0,'E','minor',134,3,174,77),(196,'Leave Me Lonely',230,0,'G#','minor',91,3,174,62),(197,'Greedy',215,0,'C#','major',110,4,174,73),(198,'Down Bad',169,1,'C','major',150,4,175,71),(199,'The Fire Next Time',224,1,'C#','major',114,4,176,47),(200,'Hit Yo Groove',111,0,'C#','major',135,4,177,56),(201,'Celebrate',193,1,'F#','major',140,4,178,56),(202,'Welcome to Chilis',158,1,'A#','minor',160,4,179,72),(203,'Kys',178,0,'A#','minor',87,4,180,18),(204,'It\'s So Hard to Say Goodby to Yesterday',179,0,'E','major',74,3,181,35),(205,'Too Fast',308,0,'E','minor',99,3,182,63),(206,'Change For Me',250,0,'G#','major',170,4,183,54),(207,'Urtha1',130,0,'C','minor',118,4,184,49),(208,'Play God',179,1,'A#','minor',100,4,185,42),(209,'Otherside',346,1,'E','minor',116,4,186,57),(210,'UCLA',192,1,'C#','major',140,4,187,75),(211,'Glitter',225,1,'C#','major',79,5,188,70),(212,'Joyride',216,1,'A','minor',80,4,189,55),(213,'Falling Asleep',109,0,'G','major',161,4,190,52),(214,'Blueberry Faygo',163,1,'C','major',99,4,191,92),(215,'Broke In A Minute',132,1,'C','minor',120,4,192,83),(216,'Dior',216,1,'G','major',142,4,193,84),(217,'Dead And Gone',300,1,'C','major',135,4,194,68),(218,'Collard Greens',300,1,'B','major',154,4,195,72),(219,'L.M.F.',189,1,'C#','major',155,4,196,52),(220,'LM$',166,1,'G#','minor',130,4,197,61),(221,'Liquor Locker',258,1,'F#','minor',79,4,198,62),(222,'Cash Sh*t',193,1,'C#','major',130,4,199,77),(223,'Kream',167,1,'A#','major',174,4,200,74),(224,'Juicy',202,1,'C','major',170,4,201,70),(225,'Tia Tamera',211,1,'C','major',120,4,202,73),(226,'A Tale of 2 Citiez',270,1,'F#','major',190,4,203,69),(227,'G.O.M.D.',301,1,'E','minor',128,4,203,74),(228,'Hey Ya!',235,0,'E','minor',80,4,204,79),(229,'SICKO MODE',313,1,'G#','major',155,4,205,92),(230,'Power Trip',241,1,'C#','major',100,4,206,72),(231,'Toxic',199,0,'F','minor',143,4,207,55),(232,'Fire Burning',240,0,'C#','major',123,4,208,70),(233,'Short Kings Anthem',159,1,'G#','minor',98,4,209,68),(234,'The Less I Know The Better',216,1,'E','major',117,4,210,85),(235,'All Me',271,1,'C#','major',122,4,211,66),(236,'still feel.',248,0,'A#','minor',120,4,212,68),(237,'FEFE',179,1,'C#','major',126,4,213,81),(238,'Sweater Weather',240,0,'A#','major',124,4,214,81),(239,'Replay',182,0,'A','major',91,4,215,73),(240,'Lalala',161,1,'D','major',130,4,216,86),(241,'Demons',136,0,'G#','major',145,4,217,4),(242,'DONTTRUSTME',193,1,'F','minor',130,4,218,70),(243,'STUPID',167,1,'D','major',150,4,219,75),(244,'Suge',163,1,'D','minor',75,4,178,82),(245,'The Box',197,1,'A#','minor',117,4,220,96),(246,'Mr. Brightside',223,0,'C#','major',148,4,221,78),(247,'Stay',159,0,'A','major',127,4,222,51),(248,'Your Love (Déjà vu)',234,0,'G','major',108,4,223,70),(249,'15th and the 1st',233,1,'B','major',140,4,224,52),(250,'Sk8er Boi',204,0,'C','major',150,4,225,75),(251,'Since U Been Gone',189,0,'C','major',131,4,226,73),(252,'Drop It Like It\'s Hot',266,1,'C#','major',92,4,227,68),(253,'Come Get Her',213,1,'D','major',185,4,228,78),(254,'Swervin',189,1,'A','major',93,4,229,83),(255,'Nice For What',211,1,'G#','major',93,4,230,80),(256,'Crazy',182,0,'G#','major',112,4,231,71),(257,'Formation',206,1,'F','minor',122,4,232,76),(258,'Over',234,1,'G','major',100,5,233,63),(259,'Teach Me How to Dougie',237,1,'B','major',85,4,234,64),(260,'Like Dat',200,1,'G#','major',135,4,235,59),(261,'F**kin\' Problems',234,1,'C#','major',96,4,236,76),(262,'Heartless',198,1,'A#','minor',170,4,145,84),(263,'Roll In Peace',213,0,'A#','minor',140,4,237,34),(264,'Paradise',169,1,'B','minor',122,4,238,46),(265,'RITMO (Bad Boys For Life)',458,0,'F','major',122,4,239,52),(266,'Body',180,0,'G#','major',125,4,240,43),(267,'Hot',193,1,'C','minor',112,4,241,78),(268,'BOP',160,1,'B','major',127,4,242,86),(269,'Remember Me',199,0,'F','minor',112,4,243,73),(270,'I Have Lost My Pearls',202,0,'B','minor',105,4,244,42),(271,'Butterfly',161,0,'F','major',132,4,245,66),(272,'Lover Is a Day',456,1,'D#','major',180,4,246,73),(273,'Romance Garbage',122,0,'F#','minor',145,4,247,63),(274,'Falling for U',124,0,'G#','minor',80,4,248,78),(275,'She Live',170,1,'C#','major',120,4,249,53),(276,'Sex Talk',131,1,'C','major',140,4,199,63),(277,'TOES',136,1,'G#','major',160,4,242,82),(278,'Drew Barrymore',191,1,'B','minor',152,4,250,71),(279,'Murder On My Mind',268,1,'C','minor',115,4,251,83),(280,'Party In The U.S.A.',202,0,'A#','minor',96,4,252,74),(281,'Kiss Me Thru The Phone',193,1,'G','major',150,4,253,76),(282,'Crank That (Soulja Boy)',222,0,'C','major',140,4,254,76),(283,'No Limit',245,1,'C#','major',176,4,255,75),(284,'Ignition - Remix',186,0,'C#','major',133,4,256,70),(285,'Finesse',182,0,'C','minor',95,4,257,71),(286,'Sexy Can I',204,1,'C#','major',172,4,258,66),(287,'Watcha Say',221,0,'B','major',144,4,259,68),(288,'Temperature',219,0,'C','minor',125,4,260,77),(289,'One, Two Step',204,0,'F','minor',113,4,261,74),(290,'Right Now (Na Na Na)',241,0,'G#','minor',138,4,262,66),(291,'Live Your Life',339,1,'B','minor',160,4,194,75),(292,'Bottoms Up',242,1,'C#','major',74,4,263,73),(293,'Get Low',334,1,'C#','major',101,4,264,65),(294,'Good Girls Go Bad',196,0,'C','major',120,4,265,65),(295,'Ride Wit Me',292,1,'G','major',102,4,266,74),(296,'No Hands',264,1,'C#','major',131,4,267,74),(297,'Whatever You Like',250,1,'A','minor',150,4,194,74),(298,'The One That Got Away',227,0,'C#','minor',134,4,268,72),(299,'Gravity',215,1,'A#','major',74,4,269,50),(300,'Hey There Delilah',233,0,'D','major',104,4,270,80),(301,'Sad Song',226,0,'C#','major',85,4,271,73),(302,'Let Her Go',253,0,'G','major',75,4,272,76),(303,'For the First Time',253,1,'A','major',174,4,273,62),(304,'A Drop In The Ocean',220,0,'F','major',73,3,274,72),(305,'Little Do You Know',185,0,'C','major',146,4,275,79),(306,'Let It Go',261,0,'C#','major',147,4,276,73),(307,'Say Something',229,0,'D','major',141,3,277,77),(308,'Skinny Love',201,0,'E','major',166,4,278,75),(309,'human',251,0,'G#','major',144,4,279,67),(310,'i hate u, I love u',251,1,'F#','minor',93,4,280,80),(311,'Dancing On My Own',260,0,'C#','major',113,4,281,82),(312,'Jealous',288,0,'C#','major',129,3,282,79),(313,'All of the Stars',235,0,'B','major',150,4,283,68),(314,'When I Look At You',249,0,'F#','major',138,3,252,61),(315,'Grand Piano',259,1,'E','major',128,4,284,57),(316,'Photograph',259,0,'E','major',108,4,285,83),(317,'Stay',241,0,'A','minor',112,4,286,67),(318,'How to Save a Life',263,0,'A#','major',122,4,287,80),(319,'Can\'t Help Falling in Love',173,0,'C','major',138,4,288,73),(320,'This Town',233,0,'A','major',112,4,289,76),(321,'Impossible',209,0,'C','minor',170,4,290,77),(322,'Jar of Hearts',247,0,'D#','major',75,4,291,73),(323,'Too Good At Goodbyes',201,0,'F','major',92,4,292,75),(324,'When We Were Young',291,0,'D#','major',144,4,293,72),(325,'When I Was Your Man',214,0,'C','major',73,4,159,82),(326,'Chasing Cars',268,0,'A','major',104,4,294,78),(327,'Skyscraper',221,0,'G','major',104,4,157,68),(328,'Because of You',219,0,'F','minor',140,4,226,72),(329,'Realize',244,0,'C#','major',140,4,295,59),(330,'I Was Made For Loving You',189,0,'D','major',146,4,296,65),(331,'Not About Angels',189,0,'C','major',117,4,297,74),(332,'A Little Too Much',190,0,'B','major',80,3,298,38),(333,'Back to You',208,0,'F#','major',102,4,299,77),(334,'Stir Fry',190,1,'D','major',182,4,300,73),(335,'I Love College',242,1,'G#','major',86,4,301,63),(336,'Or Nah',243,1,'C#','minor',122,4,302,79),(337,'Ni**as In Paris',219,1,'C#','major',140,4,303,61),(338,'She Belongs to the Game',247,1,'A','minor',94,4,304,64),(339,'Magic In The Hamptons',165,0,'C#','major',96,4,305,82),(340,'Snow (Hey Oh)',335,0,'B','major',105,4,306,79),(341,'Life is a Highway',276,0,'F','major',103,4,307,73),(342,'Uproar',194,1,'C#','major',99,4,308,71),(343,'Green Light',235,0,'D','major',129,4,309,73),(344,'Sour Patch Kids',253,1,'A','major',77,4,310,69),(345,'All Night Longer',177,1,'C#','major',127,4,311,67),(346,'Jordan Belfort',208,1,'B','minor',160,4,312,68),(347,'Making Luv To The Beat',249,1,'C','major',104,4,313,58),(348,'Guilty Pleasure',204,1,'F#','major',150,4,310,63),(349,'Wasted',190,0,'D','major',112,4,314,65),(350,'Take Me Home',231,0,'F','major',89,4,310,53),(351,'Straightjacket',207,0,'F','minor',137,4,315,67),(352,'All Night',242,1,'E','major',136,4,316,66),(353,'I\'m Not Famous',220,1,'F','major',95,4,317,58),(354,'This Feeling',192,1,'A','major',92,4,318,54),(355,'A Song to Sing',185,1,'D','major',94,4,319,57),(356,'La La Land',177,1,'C#','minor',98,4,320,73),(357,'ROXANNE',164,1,'F#','minor',117,5,321,92),(358,'Girl on a Train',183,1,'A','major',94,4,322,60),(359,'La La Land',196,0,'F#','minor',170,4,323,60),(360,'Buttercup',227,0,'A','major',109,4,324,68),(361,'Maniac',186,0,'G#','major',108,4,325,83),(362,'Blu',202,0,'C#','minor',100,4,23,59),(363,'The Heart',225,0,'C','major',104,4,326,47),(364,'Put Your Records On',210,0,'F#','minor',91,4,327,53),(365,'Raindrops Keep Fallin\' On My Head',182,0,'F','major',105,4,328,21),(366,'(They Long To Be) Close To You',276,0,'G#','major',89,4,329,61),(367,'Stayin\' Alive',285,0,'A#','minor',104,4,330,77),(368,'A Horse with No Name',252,0,'B','minor',123,4,331,77),(369,'Hotel California',391,0,'D','major',123,4,332,82),(370,'More Than a Feeling',285,0,'G','major',109,4,333,79),(371,'If You Leave Me Now',235,0,'B','major',104,4,334,74),(372,'American Pie',517,0,'E','minor',138,4,335,76),(373,'Boogie Wonderland',288,0,'D','minor',132,4,336,73),(374,'Rich Girl',143,0,'F','major',170,4,337,71),(375,'Le Freak',331,0,'G','major',119,4,338,68),(376,'You Sexy Thing',245,0,'F','major',106,4,339,71),(377,'Summer Breeze',205,0,'F','major',89,4,340,60),(378,'What a Fool Believes',224,0,'G#','minor',121,4,341,70),(379,'Band On The Run',313,0,'G','major',125,4,342,72),(380,'You\'re so Vain',258,0,'C','major',106,4,343,75),(381,'Rocket Man (I Think It\'s Going To Be A Long, Long Time)',282,0,'A#','major',137,4,344,81),(382,'Night Fever',212,0,'C#','minor',109,4,330,72),(383,'Don\'t Stop \'Til You Get Enough',365,0,'B','major',109,4,345,74),(384,'Rock the Boat',203,0,'D#','major',107,4,346,61),(385,'My Sharona',295,0,'C','major',147,4,347,73),(386,'Dreams',258,0,'C','major',120,4,348,80),(387,'Avalanche',302,0,'F','minor',92,4,349,52),(388,'Last Year\'s Man',360,0,'D#','major',134,3,349,37),(389,'Dress Rehearsal Rag',366,0,'B','minor',94,3,349,35),(390,'Diamonds in the Mine',231,0,'A','major',137,4,349,36),(391,'Love Calls You By Your Name',341,0,'C','major',77,4,349,35),(392,'Famous Blue Raincoat',311,0,'A','minor',119,3,349,62),(393,'Sing Another Song, Boys',374,0,'G','major',119,3,349,34),(394,'Joan of Arc',389,0,'G','major',119,3,349,35),(395,'International Dateline',257,0,'G#','major',168,4,350,23),(396,'Destroy Everything You Touch',276,0,'E','minor',120,4,350,41),(397,'High Rise',294,0,'C#','major',148,4,350,19),(398,'Great Day',286,0,'D#','minor',125,4,351,28),(399,'Outlaw',184,0,'F','minor',160,4,351,28),(400,'Young and Wild',214,0,'G#','major',126,4,351,18),(401,'Sail Into the Sun',239,0,'C#','minor',103,4,352,18),(402,'My Lover',265,0,'G#','minor',131,4,353,28),(403,'Underground',228,0,'G','major',78,4,353,18),(404,'No One Sleeps When I\'m Awake',264,0,'F#','major',132,4,353,41),(405,'Girls on Film',213,0,'G','major',132,4,354,60),(406,'Planet Earth',243,0,'C','major',131,4,354,51),(407,'Anyone Out There',243,0,'D','major',137,4,354,40),(408,'Careless Memories',236,0,'A','major',161,4,354,42),(409,'Is There Something I Should Know?',250,0,'G','major',125,4,354,32),(410,'The Night Boat',325,0,'D','major',127,4,354,18),(411,'Sound of Thunder',246,0,'G','major',127,4,354,19),(412,'Friends of Mine',344,0,'E','minor',124,4,354,37),(413,'Tel Aviv',321,0,'D','major',124,4,354,27),(414,'Rio',337,0,'A','major',141,4,355,61),(415,'My Own Way',291,0,'E','minor',124,4,355,42),(416,'Lonely in Your Nightmare',231,0,'D','major',137,4,355,38),(417,'Hungry Like the Wolf',221,0,'C','major',128,4,355,72),(418,'Hold Back the Rain',241,0,'A','major',131,4,355,39),(419,'New Religion',332,0,'D','major',126,4,355,41),(420,'Last Chance on the Stairway',261,0,'D','major',137,4,355,36),(421,'Save a Prayer',333,0,'A','minor',114,4,355,63),(422,'The Chauffeur',322,0,'D','major',83,4,355,51),(423,'The Reflex',267,0,'C','major',127,4,356,56),(424,'New Moon on Monday',259,0,'G','major',122,4,356,38),(425,'(I\'m Looking For) Cracks in the Pavement',219,0,'C#','major',113,4,356,18),(426,'I Take the Dice',198,0,'C','major',136,4,356,17),(427,'Of Crime and Passion',231,0,'E','minor',143,4,356,29),(428,'Union of the Snake',260,0,'B','minor',116,4,356,46),(429,'Shadows on Your Side',244,0,'G','major',138,4,356,36),(430,'Tiger Tiger',201,0,'A','minor',172,4,356,35),(431,'The Seventh Stranger',324,0,'A','minor',86,4,356,36),(432,'The Wild Boys - Live at Oakland Coliseum, Oakland, CA, 14/04/1984',259,0,'B','minor',116,4,357,51);
/*!40000 ALTER TABLE `song` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL,
  `user_name` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Maura Keith'),(2,'Deacon Clark'),(3,'Kelli Therrien'),(4,'Ed Keith');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_follows_artist`
--

DROP TABLE IF EXISTS `user_follows_artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_follows_artist` (
  `user_id` int NOT NULL,
  `artist_id` int NOT NULL,
  KEY `user_id` (`user_id`),
  KEY `artist_id` (`artist_id`),
  CONSTRAINT `user_follows_artist_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `user_follows_artist_ibfk_2` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`artist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_follows_artist`
--

LOCK TABLES `user_follows_artist` WRITE;
/*!40000 ALTER TABLE `user_follows_artist` DISABLE KEYS */;
INSERT INTO `user_follows_artist` VALUES (1,119),(1,40),(1,264),(1,265),(1,266),(1,36),(1,45),(1,2),(1,41),(1,250),(1,20),(1,50),(1,64),(1,29),(1,61),(1,44),(1,16),(1,9),(1,27),(1,63),(2,267),(2,268),(2,127),(2,172),(2,109),(2,269),(2,270),(2,271),(3,224),(3,230),(3,235),(3,199),(3,205),(3,203),(4,293),(4,296),(4,295),(4,297);
/*!40000 ALTER TABLE `user_follows_artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_follows_user`
--

DROP TABLE IF EXISTS `user_follows_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_follows_user` (
  `follower_id` int NOT NULL,
  `followee_id` int NOT NULL,
  KEY `follower_id` (`follower_id`),
  KEY `followee_id` (`followee_id`),
  CONSTRAINT `user_follows_user_ibfk_1` FOREIGN KEY (`follower_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `user_follows_user_ibfk_2` FOREIGN KEY (`followee_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_follows_user`
--

LOCK TABLES `user_follows_user` WRITE;
/*!40000 ALTER TABLE `user_follows_user` DISABLE KEYS */;
INSERT INTO `user_follows_user` VALUES (1,2),(1,3),(1,4),(2,1),(3,1),(3,2),(4,1);
/*!40000 ALTER TABLE `user_follows_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_likes_playlist`
--

DROP TABLE IF EXISTS `user_likes_playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_likes_playlist` (
  `user_id` int NOT NULL,
  `playlist_id` int NOT NULL,
  KEY `user_id` (`user_id`),
  KEY `playlist_id` (`playlist_id`),
  CONSTRAINT `user_likes_playlist_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `user_likes_playlist_ibfk_2` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`playlist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_likes_playlist`
--

LOCK TABLES `user_likes_playlist` WRITE;
/*!40000 ALTER TABLE `user_likes_playlist` DISABLE KEYS */;
INSERT INTO `user_likes_playlist` VALUES (1,13),(1,11),(1,26),(2,1),(2,3),(2,22),(3,4),(3,19);
/*!40000 ALTER TABLE `user_likes_playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_likes_song`
--

DROP TABLE IF EXISTS `user_likes_song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_likes_song` (
  `user_id` int NOT NULL,
  `song_id` int NOT NULL,
  KEY `user_id` (`user_id`),
  KEY `song_id` (`song_id`),
  CONSTRAINT `user_likes_song_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `user_likes_song_ibfk_2` FOREIGN KEY (`song_id`) REFERENCES `song` (`song_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_likes_song`
--

LOCK TABLES `user_likes_song` WRITE;
/*!40000 ALTER TABLE `user_likes_song` DISABLE KEYS */;
INSERT INTO `user_likes_song` VALUES (1,359),(1,353),(1,33),(1,360),(1,324),(1,12),(1,7),(1,17),(1,362),(1,5),(1,363),(1,52),(2,364),(2,14),(2,18),(2,149),(2,140),(3,316),(3,312),(3,331),(3,341),(3,293),(3,295),(3,307),(4,404),(4,414),(4,390),(4,385),(4,379),(4,19),(4,22);
/*!40000 ALTER TABLE `user_likes_song` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-18 12:56:51
