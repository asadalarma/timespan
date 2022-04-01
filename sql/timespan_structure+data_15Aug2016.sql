/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1_3306
Source Server Version : 50626
Source Host           : 127.0.0.1:3306
Source Database       : timespan

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2016-08-15 11:44:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for banners
-- ----------------------------
DROP TABLE IF EXISTS `banners`;
CREATE TABLE `banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_position_id` int(11) DEFAULT NULL,
  `fk_page_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `link` varchar(555) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `image_type` varchar(255) DEFAULT NULL,
  `param_string` varchar(555) DEFAULT NULL,
  `param_string1` text,
  `param_date` date DEFAULT NULL,
  `param_date1` datetime DEFAULT NULL,
  `param_double` double(55,0) DEFAULT NULL,
  `param_double1` double(255,0) DEFAULT NULL,
  `param_int` int(255) DEFAULT NULL,
  `create_date` varchar(255) DEFAULT NULL,
  `update_date` varchar(255) DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of banners
-- ----------------------------
INSERT INTO `banners` VALUES ('1', '1', '1', 'test', 'test', 'www.google.com', 'http://localhost/development/update_timespan/timespan_admin/banner_images/', '', '', null, null, null, null, null, null, null, null, null, '');
INSERT INTO `banners` VALUES ('2', '1', '1', 'test', 'test', 'www.google.com', 'http://localhost/development/update_timespan/timespan_admin/banner_images/', '', '', null, null, null, null, null, null, null, null, null, '');
INSERT INTO `banners` VALUES ('3', '1', '1', 'test', 'test', 'www.google.com', 'http://localhost/development/update_timespan/timespan_admin/banner_images/bg.png', 'bg.png', '3', null, null, null, null, null, null, null, null, null, '');
INSERT INTO `banners` VALUES ('4', '1', '1', 'test', 'test', 'www.google.com', 'http://localhost/development/update_timespan/timespan_admin/banner_images/bg.png', 'bg.png', '3', null, null, null, null, null, null, null, null, null, '');
INSERT INTO `banners` VALUES ('5', '1', '1', 'test', 'test', 'www.google.com', 'http://localhost/development/update_timespan/timespan_admin/banner_images/default.png', 'default.png', '3', null, null, null, null, null, null, null, null, null, '');
INSERT INTO `banners` VALUES ('6', '1', '1', 'test', 'test', 'www.google.com', 'http://localhost/development/update_timespan/timespan_admin/banner_images/default.png', 'default.png', '3', null, null, null, null, null, null, null, null, null, '');
INSERT INTO `banners` VALUES ('7', '2', '1', 'test', 'test', 'www.google.com', 'http://localhost/development/update_timespan/timespan_admin/banner_images/default.png', 'default.png', '3', null, null, null, null, null, null, null, null, null, '');
INSERT INTO `banners` VALUES ('8', '1', '1', 'test', 'test', 'www.google.com', 'http://localhost/development/update_timespan/timespan_admin/banner_images/8_default.png', 'default.png', 'PNG', null, null, null, null, null, null, null, null, null, '');
INSERT INTO `banners` VALUES ('9', '1', '1', 'test123', 'qwqe', 'www.yahoo.com', 'http://localhost/development/update_timespan/timespan_admin/banner_images/9_default.png', 'default.png', 'PNG', null, null, null, null, null, null, null, null, null, '');
INSERT INTO `banners` VALUES ('10', '1', '1', '123456', '123456', 'qwewqerewtrwr', 'http://localhost/development/update_timespan/timespan_admin/banner_images/10_default.png', 'default.png', 'PNG', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `banners` VALUES ('11', '1', '1', '123', '123', 'www.google.com', 'http://localhost/development/update_timespan/timespan_admin/banner_images/11_bg.png', 'bg.png', 'PNG', null, null, null, null, null, null, null, null, null, '');
INSERT INTO `banners` VALUES ('12', '1', '1', 'ssdsd', 'sdsdsd', 'sdsdsd', 'http://localhost/development/update_timespan/timespan_admin/banner_images/12_13423482_588024158042009_1019906565_n.jpg', '13423482_588024158042009_1019906565_n.jpg', 'JPEG', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `banners` VALUES ('13', '1', '1', 'aasas', 'sasaas', 'asassa', 'http://localhost/development/update_timespan/timespan_admin/banner_images/13_13423482_588024158042009_1019906565_n.jpg', '13423482_588024158042009_1019906565_n.jpg', 'JPEG', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `banners` VALUES ('14', '1', '1', 'qwqw', 'qwqw', 'qwqw', 'http://localhost/development/update_timespan/timespan_admin/banner_images/14_bg.png', 'bg.png', 'PNG', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `banners` VALUES ('15', '2', '1', '123', '123', '123', 'http://localhost/development/update_timespan/timespan_admin/banner_images/15_shoppingfill.png', 'shoppingfill.png', 'PNG', null, null, null, null, null, null, null, null, null, '\0');

-- ----------------------------
-- Table structure for games
-- ----------------------------
DROP TABLE IF EXISTS `games`;
CREATE TABLE `games` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_game_category_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `download_url` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `image_type` varchar(255) DEFAULT NULL,
  `views` mediumint(255) DEFAULT NULL,
  `downloads` mediumint(255) DEFAULT NULL,
  `param_string` varchar(555) DEFAULT NULL,
  `param_string1` text,
  `param_date` date DEFAULT NULL,
  `param_date1` datetime DEFAULT NULL,
  `param_double` double(55,0) DEFAULT NULL,
  `param_double1` double(255,0) DEFAULT NULL,
  `param_int` int(255) DEFAULT NULL,
  `create_date` varchar(255) DEFAULT NULL,
  `update_date` varchar(255) DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of games
-- ----------------------------
INSERT INTO `games` VALUES ('1', '1', 'Wwwwww34', 'WWww34', 'wwww33', '', '', '', null, null, null, null, null, null, null, null, null, '12/08/2016 19:37:55 pm', '12/08/2016 19:44:33 pm', '\0');
INSERT INTO `games` VALUES ('2', '1', 'test', 'test', 'wewewewe', 'http://localhost/development/update_timespan/timespan_admin/game_images/2_1920_london.jpg', '1920_london.jpg', 'JPEG', null, null, null, null, null, null, null, null, null, '12/08/2016 19:44:11 pm', null, '');

-- ----------------------------
-- Table structure for game_categories
-- ----------------------------
DROP TABLE IF EXISTS `game_categories`;
CREATE TABLE `game_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `param_string` varchar(555) DEFAULT NULL,
  `param_string1` text,
  `param_date` date DEFAULT NULL,
  `param_date1` datetime DEFAULT NULL,
  `param_double` double(55,0) DEFAULT NULL,
  `param_double1` double(255,0) DEFAULT NULL,
  `param_int` int(255) DEFAULT NULL,
  `create_date` varchar(255) DEFAULT NULL,
  `update_date` varchar(255) DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of game_categories
-- ----------------------------
INSERT INTO `game_categories` VALUES ('1', 'Action', 'Action', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `game_categories` VALUES ('2', 'test123', 'test123', null, null, null, null, null, null, null, null, null, '');
INSERT INTO `game_categories` VALUES ('3', 'Adventure', 'Adventure', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `game_categories` VALUES ('4', 'Billiards', 'Billiards', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `game_categories` VALUES ('5', 'Counter Strike', 'Counter Strike', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `game_categories` VALUES ('6', 'Fantasy', 'Fantasy', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `game_categories` VALUES ('7', 'Fighting', 'Fighting', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `game_categories` VALUES ('8', 'Flight', 'Flight', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `game_categories` VALUES ('9', 'Game Tools', 'Game Tools', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `game_categories` VALUES ('10', 'Horror', 'Horror', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `game_categories` VALUES ('11', 'Kids', 'Kids', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `game_categories` VALUES ('12', 'Racing', 'Racing', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `game_categories` VALUES ('13', 'Role Playing', 'Role Playing', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `game_categories` VALUES ('14', 'Shooter', 'Shooter', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `game_categories` VALUES ('15', 'Simulation', 'Simulation', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `game_categories` VALUES ('16', 'Sports', 'Sports', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `game_categories` VALUES ('17', 'Strategy', 'Strategy', null, null, null, null, null, null, null, null, null, '\0');

-- ----------------------------
-- Table structure for movies
-- ----------------------------
DROP TABLE IF EXISTS `movies`;
CREATE TABLE `movies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_movie_category_id` int(11) DEFAULT NULL,
  `fk_movie_quality_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `title_id` varchar(555) DEFAULT NULL,
  `imdb_url` varchar(555) DEFAULT NULL,
  `year` varchar(555) DEFAULT NULL,
  `rating` varchar(555) DEFAULT NULL,
  `geners` varchar(555) DEFAULT NULL,
  `directors` varchar(555) DEFAULT NULL,
  `writers` varchar(555) DEFAULT NULL,
  `cast` varchar(555) DEFAULT NULL,
  `stars` varchar(555) DEFAULT NULL,
  `producers` varchar(555) DEFAULT NULL,
  `release_date` varchar(555) DEFAULT NULL,
  `plot` varchar(555) DEFAULT NULL,
  `poster` varchar(555) DEFAULT NULL,
  `poster_large` varchar(555) DEFAULT NULL,
  `poster_full` varchar(555) DEFAULT NULL,
  `language` varchar(555) DEFAULT NULL,
  `runtime` varchar(555) DEFAULT NULL,
  `storyline` text,
  `status` varchar(555) DEFAULT NULL,
  `youtube_embed_code` text,
  `download_url` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `image_type` varchar(255) DEFAULT NULL,
  `views` mediumint(255) DEFAULT NULL,
  `downloads` mediumint(255) DEFAULT NULL,
  `param_string` varchar(555) DEFAULT NULL,
  `param_string1` text,
  `param_date` date DEFAULT NULL,
  `param_date1` datetime DEFAULT NULL,
  `param_double` double(55,0) DEFAULT NULL,
  `param_double1` double(255,0) DEFAULT NULL,
  `param_int` int(255) DEFAULT NULL,
  `create_date` varchar(255) DEFAULT NULL,
  `update_date` varchar(255) DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of movies
-- ----------------------------
INSERT INTO `movies` VALUES ('27', null, null, 'Pete&#x27;s Dragon', 'Pete&#x27;s Dragon', 'tt2788732', 'http://www.imdb.com/title/tt2788732/', '2016', '', 'Adventure,Family,Fantasy', 'David Lowery', 'David Lowery,Toby Halbrooks,Malcolm Marmorstein,Seton I. Miller,S.S. Field', 'Bryce Dallas Howard,Robert Redford,Oakes Fegley,Oona Laurence,Wes Bentley,Karl Urban,Isiah Whitlock Jr.,Marcus Henderson,Aaron Jackson,Phil Grieve,Steve Barr,Keagan Carr Fransch,Jade Valour,Augustine Frizzell,Francis Biggs,Jasper Putt,Esm&#xE9;e Myers,Gareth Reeves,Levi Alexander,Jim McLarty,Brandie Stephens,Josephine Stephens,Tai McKenzie,Ian Harcourt,Mia Thomas,Ruby Acevedo,Oliver Neil,James Allcock,Annabelle Malaika S&#xFC;ess,Olly Presling', 'Bryce Dallas Howard,Robert Redford,Oakes Fegley,Oona Laurence,Wes Bentley', 'Adam Borba,Carthew Neal,Barrie M. Osborne,James Whitaker', '12 August 2016', 'The adventures of an orphaned boy named Pete and his best friend Elliot, who just so happens to be a dragon.', 'http://ia.media-imdb.com/images/M/MV5BMjA4NDYxNzYzOF5BMl5BanBnXkFtZTgwNzU1NzcwODE@._V1._SY200.jpg', 'http://ia.media-imdb.com/images/M/MV5BMjA4NDYxNzYzOF5BMl5BanBnXkFtZTgwNzU1NzcwODE@._V1._SY500.jpg', 'http://ia.media-imdb.com/images/M/MV5BMjA4NDYxNzYzOF5BMl5BanBnXkFtZTgwNzU1NzcwODE@._V1._SY0.jpg', 'English', '102', '\nThe adventures of an orphaned boy named Pete and his best friend Elliot, who just so happens to be a dragon.            ', 'Upcoming', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/fPOamb6d_20\" frameborder=\"0\" allowfullscreen></iframe>', null, null, null, null, '16', null, null, null, null, null, null, null, null, '10/08/2016 16:29:14 pm', null, '\0');
INSERT INTO `movies` VALUES ('28', null, null, 'Anthropoid', 'Anthropoid', 'tt4190530', 'http://www.imdb.com/title/tt4190530/', '2016', '8.0', 'Biography,History,Thriller,War', 'Sean Ellis', 'Sean Ellis,Anthony Frewin', 'Jamie Dornan,Cillian Murphy,Brian Caspe,Karel Herm&#xE1;nek Jr.,Sara Arsteinova,Hana Frejkov&#xE1;,Sean Mahon,Jan H&#xE1;jek,Marcin Dorocinski,Toby Jones,Alena Mihulov&#xE1;,Bill Milner,Charlotte Le Bon,Pavel Rezn&#xED;cek,Anna Geislerov&#xE1;,Vaclav Marek and his Blue Star,Justin Svoboda,Harry Lloyd,V&#xE1;clav Neuzil,Jir&#xED; Simek,Jana Jankovska,Jaroslav Psenicka,Detlef Bothe,John Martin,Frantisek Stupka,Martin Hofmann,David Bredin,Igor Bares,Roman Zach,Andrej Polak', 'Jamie Dornan,Cillian Murphy,Brian Caspe,Karel Herm&#xE1;nek Jr.,Sara Arsteinova', 'Chris Curling,Sean Ellis,L&#xE9;onard Glowinski,Mickey Liddell,Jennifer Monroe,Krystof Mucha,David Ondr&#xED;cek,Anita Overland,Pete Shilaimon,Daria Spackova', '12 August 2016', 'Based on the extraordinary true story of Operation Anthropoid, the WWII mission to assassinate SS General Reinhard Heydrich, the main architect behind the Final Solution and the Reich&#x27;s third in command after Hitler and Himmler.', 'http://ia.media-imdb.com/images/M/MV5BMjIxNzE0NjY1Nl5BMl5BanBnXkFtZTgwNjYzOTkxOTE@._V1._SY200.jpg', 'http://ia.media-imdb.com/images/M/MV5BMjIxNzE0NjY1Nl5BMl5BanBnXkFtZTgwNjYzOTkxOTE@._V1._SY500.jpg', 'http://ia.media-imdb.com/images/M/MV5BMjIxNzE0NjY1Nl5BMl5BanBnXkFtZTgwNjYzOTkxOTE@._V1._SY0.jpg', 'English,German', '120', '\nANTHROPOID is based on the extraordinary true story of Operation Anthropoid, the World War II mission to assassinate SS General Reinhard Heydrich. The Reich\'s third in command after Hitler and Himmler, Heydrich was the main architect behind the Final Solution and the leader of occupying Nazi forces in Czechoslovakia whose reign of terror prompted self-exiled Czech and Slovak soldiers (Cillian Murphy and Jamie Dornan) to hatch a top-secret mission that would change the face of Europe forever.                <em class=\"nobr\">Written by\n<a href=\"/search/title?plot_author=Bleecker%20Street&view=simple&sort=alpha&ref_=tt_stry_pl\"\n>Bleecker Street</a></em>            ', 'Upcoming', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/PvOorONKhpI\" frameborder=\"0\" allowfullscreen></iframe>', null, null, null, null, '6', null, null, null, null, null, null, null, null, '10/08/2016 17:58:23 pm', null, '\0');
INSERT INTO `movies` VALUES ('29', null, null, 'Suicide Squad', 'Suicide Squad', 'tt1386697', 'http://www.imdb.com/title/tt1386697/', '2016', '7.0', 'Action,Adventure,Comedy,Sci-Fi', 'David Ayer', 'David Ayer,John Ostrander', 'Will Smith,Jaime FitzSimons,Ike Barinholtz,Margot Robbie,Christopher Dyson,Bambadjan Bamba,Viola Davis,Ted Whittall,David Harbour,Robin Atkin Downes,Robert B. Kennedy,Billy Otis,Shailyn Pierre-Dixon,Jared Leto,James McGowan,Jim Parrack,Derek Perks,Common,Jai Courtney,Ezra Miller,Jay Hernandez,Adewale Akinnuoye-Agbaje,Cara Delevingne,Joel Kinnaman,Aidan Devine,Andrew Bee,Clive McLean,Frank J. Zupancic,Kent Sheridan,Roger Shank', 'Will Smith,Jaime FitzSimons,Ike Barinholtz,Margot Robbie,Christopher Dyson', 'Bruce Franklin,Andy Horwitz,Geoff Johns,Steven Mnuchin,Alex Ott,Charles Roven,Deborah Snyder,Zack Snyder,Richard Suckle,Colin Wilson', '12 August 2016', 'A secret government agency recruits a group of imprisoned supervillains to execute dangerous black ops missions in exchange for clemency, which inevitably leads to chaos.', 'http://ia.media-imdb.com/images/M/MV5BMjM1OTMxNzUyM15BMl5BanBnXkFtZTgwNjYzMTIzOTE@._V1._SY200.jpg', 'http://ia.media-imdb.com/images/M/MV5BMjM1OTMxNzUyM15BMl5BanBnXkFtZTgwNjYzMTIzOTE@._V1._SY500.jpg', 'http://ia.media-imdb.com/images/M/MV5BMjM1OTMxNzUyM15BMl5BanBnXkFtZTgwNjYzMTIzOTE@._V1._SY0.jpg', 'English,Japanese', '123', '\nIt feels good to be bad...Assemble a team of the world\'s most dangerous, incarcerated Super Villains, provide them with the most powerful arsenal at the government\'s disposal, and send them off on a mission to defeat an enigmatic, insuperable entity. U.S. intelligence officer Amanda Waller has determined only a secretly convened group of disparate, despicable individuals with next to nothing to lose will do. However, once they realize they weren\'t picked to succeed but chosen for their patent culpability when they inevitably fail, will the Suicide Squad resolve to die trying, or decide it\'s every man for himself?                Written by\nAmitash Balekar            ', 'Upcoming', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/CmRih_VtVAs\" frameborder=\"0\" allowfullscreen></iframe>', null, null, null, null, '6', null, null, null, null, null, null, null, null, '10/08/2016 18:36:48 pm', null, '\0');
INSERT INTO `movies` VALUES ('30', '2', '5', 'Dabangg', 'Dabangg', null, 'http://www.imdb.com/title/tt1620719/?ref_=nv_sr_1', '2010', '6.3', 'Action, Comedy, Crime', 'Abhinav Kashyap (as Abhinav Singh Kashyap)', 'Dilip Shukla, Abhinav Kashyap (as Abhinav Singh Kashyap)', 'Salman Khan, Sonakshi Sinha, Vinod Khanna', 'Salman Khan, Sonakshi Sinha, Vinod Khanna', 'Malaika Arora, Manoj Chaturvedi,Arbaaz Khan, Matt Zemlin', 'August 2010', 'A action movie', null, null, null, 'Hindi', '120 ', 'Set in Uttar Pradesh, Chulbul Pandey is a young boy who lives with his mother Naini, stepfather Prajapati, and younger half-brother Makkhi. Chulbul is constantly angry that his step-father is always partial towards his own biological son. 21 years later, Chulbul is a rowdy, mischievous, and sometimes crooked cop, who refers to himself as \"Robin Hood.\" He does everything in his own indomitable way; whether it\'s dealing with corrupt politician and thug Chedi Singh, fighting a family feud, or romancing stunning Rajo', 'Released', null, 'www.google.com', 'http://localhost/development/update_timespan/timespan_admin/movie_images/30_dabang.jpg', 'dabang.jpg', 'JPEG', '20', null, null, null, null, null, null, null, null, '11/08/2016 13:21:11 pm', null, '\0');
INSERT INTO `movies` VALUES ('31', '2', '4', 'Dabangg 2', 'Dabangg 2', null, 'http://www.imdb.com/title/tt2112131', '2012', '7.4', 'Action, Comedy, Crime', 'Ali Abbas Zafar', 'Dilip Shukla, Abhinav Kashyap (as Abhinav Singh Kashyap)', 'Salman Khan, Sonakshi Sinha, Vinod Khanna', 'Salman Khan, Sonakshi Sinha, Vinod Khanna', 'Malaika Arora, Manoj Chaturvedi,Arbaaz Khan, Matt Zemlin', 'August 2012', 'sdsdsdsdsdsd', null, null, null, 'HIndi', '120 ', 'Set in Uttar Pradesh, Chulbul Pandey is a young boy who lives with his mother Naini, stepfather Prajapati, and younger half-brother Makkhi. Chulbul is constantly angry that his step-father is always partial towards his own biological son. 21 years later, Chulbul is a rowdy, mischievous, and sometimes crooked cop, who refers to himself as \"Robin Hood.\" He does everything in his own indomitable way; whether it\'s dealing with corrupt politician and thug Chedi Singh, fighting a family feud, or romancing stunning Rajo', 'Released', null, 'www.google.com', 'http://localhost/development/update_timespan/timespan_admin/movie_images/31_dabang2.jpg', 'dabang2.jpg', 'JPEG', '4', null, null, null, null, null, null, null, null, '11/08/2016 14:40:55 pm', null, '\0');
INSERT INTO `movies` VALUES ('33', '2', '3', '1920 London', '1920 London', null, 'http://www.imdb.com/title/tt5638500/', '2016', '4.3', 'Horror', 'Dharmendra Suresh Desai', ' Vikram Bhatt (story), Sukhmani Sadana (screenplay)', 'Arun Bali, Meera Chopra, Gajendra Chouhan', 'Arun Bali, Meera Chopra, Gajendra Chouhan', 'Patel Cyrus', ' 6 May 2016 (USA)', 'After her husband becomes possessed by an evil spirit, a noble woman turns to her former lover to perform an exorcism.', null, null, null, 'Hindi', '120 ', 'Shivangi (Meera Chopra) lives in London with her husband Veer Singh (Vishal Karwal). One day, he receives a gift from Rajasthan. From then, strange things happen with Veer and his condition deteriorates. Shivangi, thinking that this is because of black magic, goes to Rajasthan and finds Jai (Sharman Joshi), an exorcist and begs for help. Jai help Shivangi and her possessed husband from the evil spirit forms the crux of the story.', 'Released', null, 'www.google.com', 'http://localhost/development/update_timespan/timespan_admin/movie_images/32_1920_london.jpg', '1920_london.jpg', 'JPEG', '4', null, null, null, null, null, null, null, null, '11/08/2016 19:36:47 pm', null, '\0');

-- ----------------------------
-- Table structure for movie_categories
-- ----------------------------
DROP TABLE IF EXISTS `movie_categories`;
CREATE TABLE `movie_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `param_string` varchar(555) DEFAULT NULL,
  `param_string1` text,
  `param_date` date DEFAULT NULL,
  `param_date1` datetime DEFAULT NULL,
  `param_double` double(55,0) DEFAULT NULL,
  `param_double1` double(255,0) DEFAULT NULL,
  `param_int` int(255) DEFAULT NULL,
  `create_date` varchar(255) DEFAULT NULL,
  `update_date` varchar(255) DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of movie_categories
-- ----------------------------
INSERT INTO `movie_categories` VALUES ('1', '3D Movies', '3D Movies', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `movie_categories` VALUES ('2', 'Bollywood', 'Bollywood', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `movie_categories` VALUES ('3', 'Comedy Movies', 'Comedy Movies', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `movie_categories` VALUES ('4', 'English Dub Movies', 'English Dub Movies', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `movie_categories` VALUES ('5', 'Hollywood', 'Hollywood', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `movie_categories` VALUES ('6', 'Kids Movies', 'Kids Movies', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `movie_categories` VALUES ('7', 'Lollywood', 'Lollywood', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `movie_categories` VALUES ('8', 'Pollywood', 'Pollywood', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `movie_categories` VALUES ('9', 'Stage Shows', 'Stage Shows', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `movie_categories` VALUES ('10', 'Tollywood', 'Tollywood', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `movie_categories` VALUES ('11', 'Wrestling', 'Wrestling', null, null, null, null, null, null, null, null, null, '\0');

-- ----------------------------
-- Table structure for movie_qualities
-- ----------------------------
DROP TABLE IF EXISTS `movie_qualities`;
CREATE TABLE `movie_qualities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `param_string` varchar(555) DEFAULT NULL,
  `param_string1` text,
  `param_date` date DEFAULT NULL,
  `param_date1` datetime DEFAULT NULL,
  `param_double` double(55,0) DEFAULT NULL,
  `param_double1` double(255,0) DEFAULT NULL,
  `param_int` int(255) DEFAULT NULL,
  `create_date` varchar(255) DEFAULT NULL,
  `update_date` varchar(255) DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of movie_qualities
-- ----------------------------
INSERT INTO `movie_qualities` VALUES ('1', 'CAM', 'CAM', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `movie_qualities` VALUES ('2', 'Screener', 'Screener', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `movie_qualities` VALUES ('3', 'TS', 'TS', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `movie_qualities` VALUES ('4', 'Webrip', 'Webrip', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `movie_qualities` VALUES ('5', 'Master', 'Master', null, null, null, null, null, null, null, null, null, '\0');

-- ----------------------------
-- Table structure for musics
-- ----------------------------
DROP TABLE IF EXISTS `musics`;
CREATE TABLE `musics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_music_category_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `download_url` varchar(555) DEFAULT NULL,
  `year` varchar(555) DEFAULT NULL,
  `gener` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `image_type` varchar(255) DEFAULT NULL,
  `views` mediumint(255) DEFAULT NULL,
  `downloads` mediumint(255) DEFAULT NULL,
  `param_string` varchar(555) DEFAULT NULL,
  `param_string1` text,
  `param_date` date DEFAULT NULL,
  `param_date1` datetime DEFAULT NULL,
  `param_double` double(55,0) DEFAULT NULL,
  `param_double1` double(255,0) DEFAULT NULL,
  `param_int` int(255) DEFAULT NULL,
  `create_date` varchar(255) DEFAULT NULL,
  `update_date` varchar(255) DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of musics
-- ----------------------------
INSERT INTO `musics` VALUES ('1', '2', 'Dabang', 'Dabang', 'www.google.com', ' 2010', 'Classical', 'http://localhost/development/update_timespan/timespan_admin/music_images/_dabang.jpg', 'dabang.jpg', 'JPEG', '4', null, null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `musics` VALUES ('2', '1', 'Dabang 2', 'Dabang 2', 'www..yahoo.com', '2016', 'Jazz', '', '', '', null, null, null, null, null, null, null, null, null, null, '12/08/2016 17:41:45 pm', '\0');
INSERT INTO `musics` VALUES ('3', '1', 'Dabang 2', 'Dabang 2', 'www.google.com', '2012', 'Classical', 'http://localhost/development/update_timespan/timespan_admin/music_images/3_dabang2.jpg', 'dabang2.jpg', 'JPEG', '4', null, null, null, null, null, null, null, null, null, '12/08/2016 17:43:20 pm', '\0');
INSERT INTO `musics` VALUES ('4', '2', 'test', 'test', 'www.google.com', '2016', 'classical', 'http://localhost/development/update_timespan/timespan_admin/music_images/4_api_disabled_status.png', 'api_disabled_status.png', 'PNG', '1', null, null, null, null, null, null, null, null, '13/08/2016 12:59:26 pm', null, '\0');

-- ----------------------------
-- Table structure for music_categories
-- ----------------------------
DROP TABLE IF EXISTS `music_categories`;
CREATE TABLE `music_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `param_string` varchar(555) DEFAULT NULL,
  `param_string1` text,
  `param_date` date DEFAULT NULL,
  `param_date1` datetime DEFAULT NULL,
  `param_double` double(55,0) DEFAULT NULL,
  `param_double1` double(255,0) DEFAULT NULL,
  `param_int` int(255) DEFAULT NULL,
  `create_date` varchar(255) DEFAULT NULL,
  `update_date` varchar(255) DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of music_categories
-- ----------------------------
INSERT INTO `music_categories` VALUES ('1', 'Pakistani', 'Pakistani', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `music_categories` VALUES ('2', 'Bollywood ', 'Bollywood', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `music_categories` VALUES ('3', 'Hollywood', 'Hollywood', null, null, null, null, null, null, null, null, null, '\0');

-- ----------------------------
-- Table structure for onlinegames
-- ----------------------------
DROP TABLE IF EXISTS `onlinegames`;
CREATE TABLE `onlinegames` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_onlinegames_category_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `source_url` varchar(555) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `image_type` varchar(255) DEFAULT NULL,
  `param_string` varchar(555) DEFAULT NULL,
  `param_string1` text,
  `param_date` date DEFAULT NULL,
  `param_date1` datetime DEFAULT NULL,
  `param_double` double(55,0) DEFAULT NULL,
  `param_double1` double(255,0) DEFAULT NULL,
  `param_int` int(255) DEFAULT NULL,
  `create_date` varchar(255) DEFAULT NULL,
  `update_date` varchar(255) DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of onlinegames
-- ----------------------------

-- ----------------------------
-- Table structure for online_game_categories
-- ----------------------------
DROP TABLE IF EXISTS `online_game_categories`;
CREATE TABLE `online_game_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `param_string` varchar(555) DEFAULT NULL,
  `param_string1` text,
  `param_date` date DEFAULT NULL,
  `param_date1` datetime DEFAULT NULL,
  `param_double` double(55,0) DEFAULT NULL,
  `param_double1` double(255,0) DEFAULT NULL,
  `param_int` int(255) DEFAULT NULL,
  `create_date` varchar(255) DEFAULT NULL,
  `update_date` varchar(255) DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of online_game_categories
-- ----------------------------
INSERT INTO `online_game_categories` VALUES ('1', '123', 'test1234546', null, null, null, null, null, null, null, null, null, '');

-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `param_string` varchar(555) DEFAULT NULL,
  `param_string1` text,
  `param_date` date DEFAULT NULL,
  `param_date1` datetime DEFAULT NULL,
  `param_double` double(55,0) DEFAULT NULL,
  `param_double1` double(255,0) DEFAULT NULL,
  `param_int` int(255) DEFAULT NULL,
  `create_date` varchar(255) DEFAULT NULL,
  `update_date` varchar(255) DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES ('1', 'HomePage', 'HomePage', null, null, null, null, null, null, null, null, null, '\0');

-- ----------------------------
-- Table structure for positions
-- ----------------------------
DROP TABLE IF EXISTS `positions`;
CREATE TABLE `positions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `param_string` varchar(555) DEFAULT NULL,
  `param_string1` text,
  `param_date` date DEFAULT NULL,
  `param_date1` datetime DEFAULT NULL,
  `param_double` double(55,0) DEFAULT NULL,
  `param_double1` double(255,0) DEFAULT NULL,
  `param_int` int(255) DEFAULT NULL,
  `create_date` varchar(255) DEFAULT NULL,
  `update_date` varchar(255) DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of positions
-- ----------------------------
INSERT INTO `positions` VALUES ('1', 'Right', 'Right', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `positions` VALUES ('2', 'Center', 'Center', null, null, null, null, null, null, null, null, null, '\0');

-- ----------------------------
-- Table structure for softwares
-- ----------------------------
DROP TABLE IF EXISTS `softwares`;
CREATE TABLE `softwares` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_software_category_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `download_url` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `image_type` varchar(255) DEFAULT NULL,
  `views` mediumint(255) DEFAULT NULL,
  `downloads` mediumint(255) DEFAULT NULL,
  `param_string` varchar(555) DEFAULT NULL,
  `param_string1` text,
  `param_date` date DEFAULT NULL,
  `param_date1` datetime DEFAULT NULL,
  `param_double` double(55,0) DEFAULT NULL,
  `param_double1` double(255,0) DEFAULT NULL,
  `param_int` int(255) DEFAULT NULL,
  `create_date` varchar(255) DEFAULT NULL,
  `update_date` varchar(255) DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of softwares
-- ----------------------------
INSERT INTO `softwares` VALUES ('1', '1', 'Ashampoo Photo Commander 23', 'Ashampoo Photo Commander23', 'www.yahoo.com', '', '', '', null, null, null, null, null, null, null, null, null, '12/08/2016 18:58:37 pm', '12/08/2016 19:13:42 pm', '');
INSERT INTO `softwares` VALUES ('2', '1', 'Ashampoo Photo Commander', 'Ashampoo Photo Commander', 'www.google.com', 'http://localhost/development/update_timespan/timespan_admin/software_images/_dabang2.jpg', 'dabang2.jpg', 'JPEG', null, null, null, null, null, null, null, null, null, '12/08/2016 19:16:04 pm', null, '\0');
INSERT INTO `softwares` VALUES ('3', '1', 'test2323', 'test232', 'sdsdsdsdds', 'http://localhost/development/update_timespan/timespan_admin/software_images/3_13398431_505420046319604_741852810_n.jpg', '13398431_505420046319604_741852810_n.jpg', 'JPEG', null, null, null, null, null, null, null, null, null, '12/08/2016 19:21:10 pm', '12/08/2016 19:22:05 pm', '');

-- ----------------------------
-- Table structure for software_categories
-- ----------------------------
DROP TABLE IF EXISTS `software_categories`;
CREATE TABLE `software_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `param_string` varchar(555) DEFAULT NULL,
  `param_string1` text,
  `param_date` date DEFAULT NULL,
  `param_date1` datetime DEFAULT NULL,
  `param_double` double(55,0) DEFAULT NULL,
  `param_double1` double(255,0) DEFAULT NULL,
  `param_int` int(255) DEFAULT NULL,
  `create_date` varchar(255) DEFAULT NULL,
  `update_date` varchar(255) DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of software_categories
-- ----------------------------
INSERT INTO `software_categories` VALUES ('1', '3D CAD', '3D CAD', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `software_categories` VALUES ('2', 'Android Apps', 'Android Apps', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `software_categories` VALUES ('3', 'Anti-Malware', 'Anti-Malware', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `software_categories` VALUES ('4', 'Antivirus', 'Antivirus', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `software_categories` VALUES ('5', 'Browsers', 'Browsers', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `software_categories` VALUES ('6', 'Compression', 'Compression', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `software_categories` VALUES ('7', 'Converter', 'Converter', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `software_categories` VALUES ('8', 'Cutter', 'Cutter', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `software_categories` VALUES ('9', 'Desktop', 'Desktop', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `software_categories` VALUES ('10', 'Developer', 'Developer', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `software_categories` VALUES ('11', 'Download Manager', 'Download Manager', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `software_categories` VALUES ('12', 'DVD Burning', 'DVD Burning', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `software_categories` VALUES ('13', 'Email Manager', 'Email Manager', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `software_categories` VALUES ('14', 'File Sharing', 'File Sharing', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `software_categories` VALUES ('15', 'File Transfer', 'File Transfer', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `software_categories` VALUES ('16', 'Messaging', 'Messaging', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `software_categories` VALUES ('17', 'Multimedia', 'Multimedia', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `software_categories` VALUES ('18', 'Networking', 'Networking', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `software_categories` VALUES ('19', 'Office', 'Office', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `software_categories` VALUES ('20', 'Operating System', 'Operating System', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `software_categories` VALUES ('21', 'Photo Image', 'Photo Image', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `software_categories` VALUES ('22', 'Players', 'Players', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `software_categories` VALUES ('23', 'Recovery Data', 'Recovery Data', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `software_categories` VALUES ('24', 'Remote', 'Remote', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `software_categories` VALUES ('25', 'Security', 'Security', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `software_categories` VALUES ('26', 'System Tuning', 'System Tuning', null, null, null, null, null, null, null, null, null, '\0');

-- ----------------------------
-- Table structure for tvshows
-- ----------------------------
DROP TABLE IF EXISTS `tvshows`;
CREATE TABLE `tvshows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_tvshow_category_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `download_url` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `image_type` varchar(255) DEFAULT NULL,
  `views` mediumint(255) DEFAULT NULL,
  `downloads` mediumint(255) DEFAULT NULL,
  `param_string` varchar(555) DEFAULT NULL,
  `param_string1` text,
  `param_date` date DEFAULT NULL,
  `param_date1` datetime DEFAULT NULL,
  `param_double` double(55,0) DEFAULT NULL,
  `param_double1` double(255,0) DEFAULT NULL,
  `param_int` int(255) DEFAULT NULL,
  `create_date` varchar(255) DEFAULT NULL,
  `update_date` varchar(255) DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tvshows
-- ----------------------------
INSERT INTO `tvshows` VALUES ('1', '2', 'Man Mayal23', 'Man Mayal23', '23232323', '', '', '', null, null, null, null, null, null, null, null, null, '12/08/2016 19:53:14 pm', '12/08/2016 19:53:40 pm', '');

-- ----------------------------
-- Table structure for tvshow_categories
-- ----------------------------
DROP TABLE IF EXISTS `tvshow_categories`;
CREATE TABLE `tvshow_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `param_string` varchar(555) DEFAULT NULL,
  `param_string1` text,
  `param_date` date DEFAULT NULL,
  `param_date1` datetime DEFAULT NULL,
  `param_double` double(55,0) DEFAULT NULL,
  `param_double1` double(255,0) DEFAULT NULL,
  `param_int` int(255) DEFAULT NULL,
  `create_date` varchar(255) DEFAULT NULL,
  `update_date` varchar(255) DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tvshow_categories
-- ----------------------------
INSERT INTO `tvshow_categories` VALUES ('1', 'test4545', 'test123334344', null, null, null, null, null, null, null, null, null, '');
INSERT INTO `tvshow_categories` VALUES ('2', 'Awards Show', 'Awards Show', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `tvshow_categories` VALUES ('3', 'English TV Show', 'English TV Show', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `tvshow_categories` VALUES ('4', 'Geo Entertainment', 'Geo Entertainment', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `tvshow_categories` VALUES ('5', 'Indian Dramas', 'Indian Dramas', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `tvshow_categories` VALUES ('6', 'Indian TV shows', 'Indian TV shows', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `tvshow_categories` VALUES ('7', 'Pakistani Dramas', 'Pakistani Dramas', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `tvshow_categories` VALUES ('8', 'Stage Show', 'Stage Show', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `tvshow_categories` VALUES ('9', 'TeleDrama', 'TeleDrama', null, null, null, null, null, null, null, null, null, '\0');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `param_string` varchar(555) DEFAULT NULL,
  `param_string1` text,
  `param_date` date DEFAULT NULL,
  `param_date1` datetime DEFAULT NULL,
  `param_double` double(55,0) DEFAULT NULL,
  `param_double1` double(255,0) DEFAULT NULL,
  `param_int` int(255) DEFAULT NULL,
  `create_date` varchar(255) DEFAULT NULL,
  `update_date` varchar(255) DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `users` VALUES ('2', 'admin123', 'admin123', 'admin123', '0192023a7bbd73250516f069df18b500', 'admin123@example.com', 'defence phase 6 khadda market', '2016-07-30', '12345678910', null, null, null, null, null, null, null, null, null, '\0');

-- ----------------------------
-- Table structure for videos
-- ----------------------------
DROP TABLE IF EXISTS `videos`;
CREATE TABLE `videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_video_category_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `youtube_embed_code` varchar(555) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `image_type` varchar(255) DEFAULT NULL,
  `views` mediumint(255) DEFAULT NULL,
  `downloads` mediumint(255) DEFAULT NULL,
  `param_string` varchar(555) DEFAULT NULL,
  `param_string1` text,
  `param_date` date DEFAULT NULL,
  `param_date1` datetime DEFAULT NULL,
  `param_double` double(55,0) DEFAULT NULL,
  `param_double1` double(255,0) DEFAULT NULL,
  `param_int` int(255) DEFAULT NULL,
  `create_date` varchar(255) DEFAULT NULL,
  `update_date` varchar(255) DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of videos
-- ----------------------------
INSERT INTO `videos` VALUES ('1', '4', 'Tere Mast Mast Do Nain 2', 'Tere Mast Mast Do Nain 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/u4JYkwiO9GY\" frameborder=\"0\" allowfullscreen></iframe>', '', '', '', null, null, null, null, null, null, null, null, null, '12/08/2016 18:09:56 pm', '12/08/2016 18:34:23 pm', '\0');
INSERT INTO `videos` VALUES ('2', '1', 'Dabang 3', 'Dabang 3', '', '', '', '', null, null, null, null, null, null, null, null, null, '12/08/2016 18:10:52 pm', '12/08/2016 18:39:47 pm', '\0');
INSERT INTO `videos` VALUES ('3', '1', 'Chori Kiya Re Jiya', 'Chori Kiya Re Jiya', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/9zXJluBR26A\" frameborder=\"0\" allowfullscreen></iframe>', 'http://localhost/development/update_timespan/timespan_admin/video_images/3_sultan.jpg', 'sultan.jpg', 'JPEG', null, null, null, null, null, null, null, null, null, '12/08/2016 18:11:38 pm', '12/08/2016 19:09:59 pm', '\0');

-- ----------------------------
-- Table structure for video_categories
-- ----------------------------
DROP TABLE IF EXISTS `video_categories`;
CREATE TABLE `video_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `param_string` varchar(555) DEFAULT NULL,
  `param_string1` text,
  `param_date` date DEFAULT NULL,
  `param_date1` datetime DEFAULT NULL,
  `param_double` double(55,0) DEFAULT NULL,
  `param_double1` double(255,0) DEFAULT NULL,
  `param_int` int(255) DEFAULT NULL,
  `create_date` varchar(255) DEFAULT NULL,
  `update_date` varchar(255) DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of video_categories
-- ----------------------------
INSERT INTO `video_categories` VALUES ('1', 'Comedy', 'Comedy', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `video_categories` VALUES ('2', 'Documentary', 'Documentary', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `video_categories` VALUES ('3', 'Food and Health', 'Food and Health', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `video_categories` VALUES ('4', 'Music', 'Music', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `video_categories` VALUES ('5', 'Reality Shows', 'Reality Shows', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `video_categories` VALUES ('6', 'Sports', 'Sports', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `video_categories` VALUES ('7', 'Theatrical Trailers', 'Theatrical Trailers', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `video_categories` VALUES ('8', 'WWE Network Shows', 'WWE Network Shows', null, null, null, null, null, null, null, null, null, '\0');

-- ----------------------------
-- Table structure for wallpapers
-- ----------------------------
DROP TABLE IF EXISTS `wallpapers`;
CREATE TABLE `wallpapers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_wallpaper_category_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `download_url` varchar(555) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `image_type` varchar(255) DEFAULT NULL,
  `views` mediumint(255) DEFAULT NULL,
  `downloads` mediumint(255) DEFAULT NULL,
  `param_string` varchar(555) DEFAULT NULL,
  `param_string1` text,
  `param_date` date DEFAULT NULL,
  `param_date1` datetime DEFAULT NULL,
  `param_double` double(55,0) DEFAULT NULL,
  `param_double1` double(255,0) DEFAULT NULL,
  `param_int` int(255) DEFAULT NULL,
  `create_date` varchar(255) DEFAULT NULL,
  `update_date` varchar(255) DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of wallpapers
-- ----------------------------
INSERT INTO `wallpapers` VALUES ('1', '2', 'test2323', 'test2323', 'www.google.com', 'http://localhost/development/update_timespan/timespan_admin/wallpaper_images/1_dabang.jpg', 'dabang.jpg', 'JPEG', null, null, null, null, null, null, null, null, null, '12/08/2016 20:07:02 pm', '12/08/2016 20:07:27 pm', '\0');

-- ----------------------------
-- Table structure for wallpaper_categories
-- ----------------------------
DROP TABLE IF EXISTS `wallpaper_categories`;
CREATE TABLE `wallpaper_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `param_string` varchar(555) DEFAULT NULL,
  `param_string1` text,
  `param_date` date DEFAULT NULL,
  `param_date1` datetime DEFAULT NULL,
  `param_double` double(55,0) DEFAULT NULL,
  `param_double1` double(255,0) DEFAULT NULL,
  `param_int` int(255) DEFAULT NULL,
  `create_date` varchar(255) DEFAULT NULL,
  `update_date` varchar(255) DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of wallpaper_categories
-- ----------------------------
INSERT INTO `wallpaper_categories` VALUES ('1', 'Wallpaper123', 'Wallpaper1213', null, null, null, null, null, null, null, null, null, '');
INSERT INTO `wallpaper_categories` VALUES ('2', '3D', '3D', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `wallpaper_categories` VALUES ('3', 'Aero', 'Aero', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `wallpaper_categories` VALUES ('4', 'Animals', 'Animals', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `wallpaper_categories` VALUES ('5', 'Anime', 'Anime', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `wallpaper_categories` VALUES ('6', 'Architecture', 'Architecture', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `wallpaper_categories` VALUES ('7', 'Army', 'Army', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `wallpaper_categories` VALUES ('8', 'Artistic', 'Artistic', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `wallpaper_categories` VALUES ('9', 'Black and White', 'Black and White', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `wallpaper_categories` VALUES ('10', 'Cars', 'Cars', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `wallpaper_categories` VALUES ('11', 'Cartoons', 'Cartoons', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `wallpaper_categories` VALUES ('12', 'Celebrities', 'Celebrities', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `wallpaper_categories` VALUES ('13', 'Charity', 'Charity', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `wallpaper_categories` VALUES ('14', 'City', 'City', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `wallpaper_categories` VALUES ('15', 'Computers', 'Computers', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `wallpaper_categories` VALUES ('16', 'Country', 'Country', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `wallpaper_categories` VALUES ('17', 'Cute', 'Cute', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `wallpaper_categories` VALUES ('18', 'Elements', 'Elements', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `wallpaper_categories` VALUES ('19', 'Flowers', 'Flowers', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `wallpaper_categories` VALUES ('20', 'Food and Drink', 'Food and Drink', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `wallpaper_categories` VALUES ('21', 'Funny', 'Funny', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `wallpaper_categories` VALUES ('22', 'Games', 'Games', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `wallpaper_categories` VALUES ('23', 'Girls', 'Girls', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `wallpaper_categories` VALUES ('24', 'Holidays', 'Holidays', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `wallpaper_categories` VALUES ('25', 'Island', 'Island', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `wallpaper_categories` VALUES ('26', 'Love', 'Love', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `wallpaper_categories` VALUES ('27', 'Mixed', 'Mixed', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `wallpaper_categories` VALUES ('28', 'Motors', 'Motors', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `wallpaper_categories` VALUES ('29', 'Movies', 'Movies', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `wallpaper_categories` VALUES ('30', 'Music', 'Music', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `wallpaper_categories` VALUES ('31', 'Nature', 'Nature', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `wallpaper_categories` VALUES ('32', 'Sea Animals', 'Sea Animals', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `wallpaper_categories` VALUES ('33', 'Seasons', 'Seasons', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `wallpaper_categories` VALUES ('34', 'Space', 'Space', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `wallpaper_categories` VALUES ('35', 'Sports', 'Sports', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `wallpaper_categories` VALUES ('36', 'Sunset', 'Sunset', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `wallpaper_categories` VALUES ('37', 'Travel', 'Travel', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `wallpaper_categories` VALUES ('38', 'Vintage', 'Vintage', null, null, null, null, null, null, null, null, null, '\0');

-- ----------------------------
-- Table structure for webtvs
-- ----------------------------
DROP TABLE IF EXISTS `webtvs`;
CREATE TABLE `webtvs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_webtv_category_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `source_url` varchar(555) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `image_type` varchar(255) DEFAULT NULL,
  `param_string` varchar(555) DEFAULT NULL,
  `param_string1` text,
  `param_date` date DEFAULT NULL,
  `param_date1` datetime DEFAULT NULL,
  `param_double` double(55,0) DEFAULT NULL,
  `param_double1` double(255,0) DEFAULT NULL,
  `param_int` int(255) DEFAULT NULL,
  `create_date` varchar(255) DEFAULT NULL,
  `update_date` varchar(255) DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of webtvs
-- ----------------------------

-- ----------------------------
-- Table structure for webtv_categories
-- ----------------------------
DROP TABLE IF EXISTS `webtv_categories`;
CREATE TABLE `webtv_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `param_string` varchar(555) DEFAULT NULL,
  `param_string1` text,
  `param_date` date DEFAULT NULL,
  `param_date1` datetime DEFAULT NULL,
  `param_double` double(55,0) DEFAULT NULL,
  `param_double1` double(255,0) DEFAULT NULL,
  `param_int` int(255) DEFAULT NULL,
  `create_date` varchar(255) DEFAULT NULL,
  `update_date` varchar(255) DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of webtv_categories
-- ----------------------------
INSERT INTO `webtv_categories` VALUES ('1', 'test1213', 'test1213', null, null, null, null, null, null, null, null, null, '');
INSERT INTO `webtv_categories` VALUES ('2', '', '', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `webtv_categories` VALUES ('3', '', '', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `webtv_categories` VALUES ('4', '', '', null, null, null, null, null, null, null, null, null, '\0');
