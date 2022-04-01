/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : timespan

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-08-22 19:47:22
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
INSERT INTO `banners` VALUES ('10', '2', '1', '123456', '123456', 'qwewqerewtrwr', 'http://localhost/development/update_timespan/timespan_admin/banner_images/10_3c5dd81d35c63d0b8a6527bf4c5d7b5f.jpg', '3c5dd81d35c63d0b8a6527bf4c5d7b5f.jpg', 'JPEG', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `banners` VALUES ('11', '1', '1', '123', '123', 'www.google.com', 'http://localhost/development/update_timespan/timespan_admin/banner_images/11_bg.png', 'bg.png', 'PNG', null, null, null, null, null, null, null, null, null, '');
INSERT INTO `banners` VALUES ('12', '2', '1', 'ssdsd', 'sdsdsd', 'sdsdsd', 'http://localhost/development/update_timespan/timespan_admin/banner_images/12_e85855e79988c043d29f5d0497bba588.png', 'e85855e79988c043d29f5d0497bba588.png', 'PNG', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `banners` VALUES ('13', '2', '1', 'aasas', 'sasaas', 'asassa', 'http://localhost/development/update_timespan/timespan_admin/banner_images/13_cb5bed9b7425129ba841de2fe556b525.jpg', 'cb5bed9b7425129ba841de2fe556b525.jpg', 'JPEG', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `banners` VALUES ('14', '2', '1', 'qwqw', 'qwqw', 'qwqw', 'http://localhost/development/update_timespan/timespan_admin/banner_images/14_70f4b97cd247ea2b652a8d4c92c9ff37.jpg', '70f4b97cd247ea2b652a8d4c92c9ff37.jpg', 'JPEG', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `banners` VALUES ('15', '2', '1', '123', '123', '123', 'http://localhost/development/update_timespan/timespan_admin/banner_images/15_5361733219dd3eb27a86e42914565b3d.jpg', '5361733219dd3eb27a86e42914565b3d.jpg', 'JPEG', null, null, null, null, null, null, null, null, null, '\0');

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
INSERT INTO `games` VALUES ('1', '1', 'Wwwwww34', 'WWww34', 'wwww33', '', '', '', '8', null, null, null, null, null, null, null, null, '12/08/2016 19:37:55 pm', '12/08/2016 19:44:33 pm', '\0');
INSERT INTO `games` VALUES ('2', '1', 'test', 'test', 'wewewewe', 'http://localhost/development/update_timespan/timespan_admin/game_images/2_1920_london.jpg', '1920_london.jpg', 'JPEG', '24', '1', null, null, null, null, null, null, null, '12/08/2016 19:44:11 pm', null, '\0');

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
INSERT INTO `game_categories` VALUES ('2', 'Adventure', 'Adventure', null, null, null, null, null, null, null, null, null, '');
INSERT INTO `game_categories` VALUES ('3', 'Billiards', 'Billiards', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `game_categories` VALUES ('4', 'Counter Strike', 'Counter Strike', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `game_categories` VALUES ('5', 'Fantasy', 'Fantasy', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `game_categories` VALUES ('6', 'Fighting', 'Fighting', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `game_categories` VALUES ('7', 'Flight', 'Flight', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `game_categories` VALUES ('8', 'Game Tools', 'Game Tools', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `game_categories` VALUES ('9', 'Horror', 'Horror', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `game_categories` VALUES ('10', 'Kids', 'Kids', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `game_categories` VALUES ('11', 'Racing', 'Racing', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `game_categories` VALUES ('12', 'Role Playing', 'Role Playing', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `game_categories` VALUES ('13', 'Shooter', 'Shooter', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `game_categories` VALUES ('14', 'Simulation', 'Simulation', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `game_categories` VALUES ('15', 'Sports', 'Sports', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `game_categories` VALUES ('16', 'Strategy', 'Strategy', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `game_categories` VALUES ('17', '', '', null, null, null, null, null, null, null, null, null, '');

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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of movies
-- ----------------------------
INSERT INTO `movies` VALUES ('27', null, null, 'Pete&#x27;s Dragon', 'Pete&#x27;s Dragon', 'tt2788732', 'http://www.imdb.com/title/tt2788732/', '2016', '', 'Adventure,Family,Fantasy', 'David Lowery', 'David Lowery,Toby Halbrooks,Malcolm Marmorstein,Seton I. Miller,S.S. Field', 'Bryce Dallas Howard,Robert Redford,Oakes Fegley,Oona Laurence,Wes Bentley,Karl Urban,Isiah Whitlock Jr.,Marcus Henderson,Aaron Jackson,Phil Grieve,Steve Barr,Keagan Carr Fransch,Jade Valour,Augustine Frizzell,Francis Biggs,Jasper Putt,Esm&#xE9;e Myers,Gareth Reeves,Levi Alexander,Jim McLarty,Brandie Stephens,Josephine Stephens,Tai McKenzie,Ian Harcourt,Mia Thomas,Ruby Acevedo,Oliver Neil,James Allcock,Annabelle Malaika S&#xFC;ess,Olly Presling', 'Bryce Dallas Howard,Robert Redford,Oakes Fegley,Oona Laurence,Wes Bentley', 'Adam Borba,Carthew Neal,Barrie M. Osborne,James Whitaker', '12 August 2016', 'The adventures of an orphaned boy named Pete and his best friend Elliot, who just so happens to be a dragon.', 'http://ia.media-imdb.com/images/M/MV5BMjA4NDYxNzYzOF5BMl5BanBnXkFtZTgwNzU1NzcwODE@._V1._SY200.jpg', 'http://ia.media-imdb.com/images/M/MV5BMjA4NDYxNzYzOF5BMl5BanBnXkFtZTgwNzU1NzcwODE@._V1._SY500.jpg', 'http://ia.media-imdb.com/images/M/MV5BMjA4NDYxNzYzOF5BMl5BanBnXkFtZTgwNzU1NzcwODE@._V1._SY0.jpg', 'English', '102', '\nThe adventures of an orphaned boy named Pete and his best friend Elliot, who just so happens to be a dragon.            ', 'Upcoming', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/fPOamb6d_20\" frameborder=\"0\" allowfullscreen></iframe>', null, null, null, null, '19', null, null, null, null, null, null, null, null, '10/08/2016 16:29:14 pm', null, '\0');
INSERT INTO `movies` VALUES ('28', null, null, 'Anthropoid', 'Anthropoid', 'tt4190530', 'http://www.imdb.com/title/tt4190530/', '2016', '8.0', 'Biography,History,Thriller,War', 'Sean Ellis', 'Sean Ellis,Anthony Frewin', 'Jamie Dornan,Cillian Murphy,Brian Caspe,Karel Herm&#xE1;nek Jr.,Sara Arsteinova,Hana Frejkov&#xE1;,Sean Mahon,Jan H&#xE1;jek,Marcin Dorocinski,Toby Jones,Alena Mihulov&#xE1;,Bill Milner,Charlotte Le Bon,Pavel Rezn&#xED;cek,Anna Geislerov&#xE1;,Vaclav Marek and his Blue Star,Justin Svoboda,Harry Lloyd,V&#xE1;clav Neuzil,Jir&#xED; Simek,Jana Jankovska,Jaroslav Psenicka,Detlef Bothe,John Martin,Frantisek Stupka,Martin Hofmann,David Bredin,Igor Bares,Roman Zach,Andrej Polak', 'Jamie Dornan,Cillian Murphy,Brian Caspe,Karel Herm&#xE1;nek Jr.,Sara Arsteinova', 'Chris Curling,Sean Ellis,L&#xE9;onard Glowinski,Mickey Liddell,Jennifer Monroe,Krystof Mucha,David Ondr&#xED;cek,Anita Overland,Pete Shilaimon,Daria Spackova', '12 August 2016', 'Based on the extraordinary true story of Operation Anthropoid, the WWII mission to assassinate SS General Reinhard Heydrich, the main architect behind the Final Solution and the Reich&#x27;s third in command after Hitler and Himmler.', 'http://ia.media-imdb.com/images/M/MV5BMjIxNzE0NjY1Nl5BMl5BanBnXkFtZTgwNjYzOTkxOTE@._V1._SY200.jpg', 'http://ia.media-imdb.com/images/M/MV5BMjIxNzE0NjY1Nl5BMl5BanBnXkFtZTgwNjYzOTkxOTE@._V1._SY500.jpg', 'http://ia.media-imdb.com/images/M/MV5BMjIxNzE0NjY1Nl5BMl5BanBnXkFtZTgwNjYzOTkxOTE@._V1._SY0.jpg', 'English,German', '120', '\nANTHROPOID is based on the extraordinary true story of Operation Anthropoid, the World War II mission to assassinate SS General Reinhard Heydrich. The Reich\'s third in command after Hitler and Himmler, Heydrich was the main architect behind the Final Solution and the leader of occupying Nazi forces in Czechoslovakia whose reign of terror prompted self-exiled Czech and Slovak soldiers (Cillian Murphy and Jamie Dornan) to hatch a top-secret mission that would change the face of Europe forever.                <em class=\"nobr\">Written by\n<a href=\"/search/title?plot_author=Bleecker%20Street&view=simple&sort=alpha&ref_=tt_stry_pl\"\n>Bleecker Street</a></em>            ', 'Upcoming', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/PvOorONKhpI\" frameborder=\"0\" allowfullscreen></iframe>', null, null, null, null, '9', null, null, null, null, null, null, null, null, '10/08/2016 17:58:23 pm', null, '\0');
INSERT INTO `movies` VALUES ('29', null, null, 'Suicide Squad', 'Suicide Squad', 'tt1386697', 'http://www.imdb.com/title/tt1386697/', '2016', '7.0', 'Action,Adventure,Comedy,Sci-Fi', 'David Ayer', 'David Ayer,John Ostrander', 'Will Smith,Jaime FitzSimons,Ike Barinholtz,Margot Robbie,Christopher Dyson,Bambadjan Bamba,Viola Davis,Ted Whittall,David Harbour,Robin Atkin Downes,Robert B. Kennedy,Billy Otis,Shailyn Pierre-Dixon,Jared Leto,James McGowan,Jim Parrack,Derek Perks,Common,Jai Courtney,Ezra Miller,Jay Hernandez,Adewale Akinnuoye-Agbaje,Cara Delevingne,Joel Kinnaman,Aidan Devine,Andrew Bee,Clive McLean,Frank J. Zupancic,Kent Sheridan,Roger Shank', 'Will Smith,Jaime FitzSimons,Ike Barinholtz,Margot Robbie,Christopher Dyson', 'Bruce Franklin,Andy Horwitz,Geoff Johns,Steven Mnuchin,Alex Ott,Charles Roven,Deborah Snyder,Zack Snyder,Richard Suckle,Colin Wilson', '12 August 2016', 'A secret government agency recruits a group of imprisoned supervillains to execute dangerous black ops missions in exchange for clemency, which inevitably leads to chaos.', 'http://ia.media-imdb.com/images/M/MV5BMjM1OTMxNzUyM15BMl5BanBnXkFtZTgwNjYzMTIzOTE@._V1._SY200.jpg', 'http://ia.media-imdb.com/images/M/MV5BMjM1OTMxNzUyM15BMl5BanBnXkFtZTgwNjYzMTIzOTE@._V1._SY500.jpg', 'http://ia.media-imdb.com/images/M/MV5BMjM1OTMxNzUyM15BMl5BanBnXkFtZTgwNjYzMTIzOTE@._V1._SY0.jpg', 'English,Japanese', '123', '\nIt feels good to be bad...Assemble a team of the world\'s most dangerous, incarcerated Super Villains, provide them with the most powerful arsenal at the government\'s disposal, and send them off on a mission to defeat an enigmatic, insuperable entity. U.S. intelligence officer Amanda Waller has determined only a secretly convened group of disparate, despicable individuals with next to nothing to lose will do. However, once they realize they weren\'t picked to succeed but chosen for their patent culpability when they inevitably fail, will the Suicide Squad resolve to die trying, or decide it\'s every man for himself?                Written by\nAmitash Balekar            ', 'Upcoming', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/CmRih_VtVAs\" frameborder=\"0\" allowfullscreen></iframe>', null, null, null, null, '15', null, null, null, null, null, null, null, null, '10/08/2016 18:36:48 pm', null, '\0');
INSERT INTO `movies` VALUES ('30', '2', '5', 'Dabangg', 'Dabangg', null, 'http://www.imdb.com/title/tt1620719/?ref_=nv_sr_1', '2010', '6.3', 'Action, Comedy, Crime', 'Abhinav Kashyap (as Abhinav Singh Kashyap)', 'Dilip Shukla, Abhinav Kashyap (as Abhinav Singh Kashyap)', 'Salman Khan, Sonakshi Sinha, Vinod Khanna', 'Salman Khan, Sonakshi Sinha, Vinod Khanna', 'Malaika Arora, Manoj Chaturvedi,Arbaaz Khan, Matt Zemlin', 'August 2010', 'A action movie', null, null, null, 'Hindi', '120 ', 'Set in Uttar Pradesh, Chulbul Pandey is a young boy who lives with his mother Naini, stepfather Prajapati, and younger half-brother Makkhi. Chulbul is constantly angry that his step-father is always partial towards his own biological son. 21 years later, Chulbul is a rowdy, mischievous, and sometimes crooked cop, who refers to himself as \"Robin Hood.\" He does everything in his own indomitable way; whether it\'s dealing with corrupt politician and thug Chedi Singh, fighting a family feud, or romancing stunning Rajo', 'Released', null, 'www.google.com', 'http://localhost/development/update_timespan/timespan_admin/movie_images/30_dabang.jpg', 'dabang.jpg', 'JPEG', '21', null, null, null, null, null, null, null, null, '11/08/2016 13:21:11 pm', null, '\0');
INSERT INTO `movies` VALUES ('31', '2', '4', 'Dabangg 2', 'Dabangg 2', null, 'http://www.imdb.com/title/tt2112131', '2012', '7.4', 'Action, Comedy, Crime', 'Ali Abbas Zafar', 'Dilip Shukla, Abhinav Kashyap (as Abhinav Singh Kashyap)', 'Salman Khan, Sonakshi Sinha, Vinod Khanna', 'Salman Khan, Sonakshi Sinha, Vinod Khanna', 'Malaika Arora, Manoj Chaturvedi,Arbaaz Khan, Matt Zemlin', 'August 2012', 'sdsdsdsdsdsd', null, null, null, 'HIndi', '120 ', 'Set in Uttar Pradesh, Chulbul Pandey is a young boy who lives with his mother Naini, stepfather Prajapati, and younger half-brother Makkhi. Chulbul is constantly angry that his step-father is always partial towards his own biological son. 21 years later, Chulbul is a rowdy, mischievous, and sometimes crooked cop, who refers to himself as \"Robin Hood.\" He does everything in his own indomitable way; whether it\'s dealing with corrupt politician and thug Chedi Singh, fighting a family feud, or romancing stunning Rajo', 'Released', null, 'www.google.com', 'http://localhost/development/update_timespan/timespan_admin/movie_images/31_dabang2.jpg', 'dabang2.jpg', 'JPEG', '6', null, null, null, null, null, null, null, null, '11/08/2016 14:40:55 pm', null, '\0');
INSERT INTO `movies` VALUES ('33', '2', '3', '1920 London', '1920 London', null, 'http://www.imdb.com/title/tt5638500/', '2016', '4.3', 'Horror', 'Dharmendra Suresh Desai', ' Vikram Bhatt (story), Sukhmani Sadana (screenplay)', 'Arun Bali, Meera Chopra, Gajendra Chouhan', 'Arun Bali, Meera Chopra, Gajendra Chouhan', 'Patel Cyrus', ' 6 May 2016 (USA)', 'After her husband becomes possessed by an evil spirit, a noble woman turns to her former lover to perform an exorcism.', null, null, null, 'Hindi', '120 ', 'Shivangi (Meera Chopra) lives in London with her husband Veer Singh (Vishal Karwal). One day, he receives a gift from Rajasthan. From then, strange things happen with Veer and his condition deteriorates. Shivangi, thinking that this is because of black magic, goes to Rajasthan and finds Jai (Sharman Joshi), an exorcist and begs for help. Jai help Shivangi and her possessed husband from the evil spirit forms the crux of the story.', 'Released', null, 'www.google.com', 'http://localhost/development/update_timespan/timespan_admin/movie_images/32_1920_london.jpg', '1920_london.jpg', 'JPEG', '23', '1', null, null, null, null, null, null, null, '11/08/2016 19:36:47 pm', null, '\0');
INSERT INTO `movies` VALUES ('34', null, null, 'Morris from America', 'Morris from America', 'tt3652862', 'http://www.imdb.com/title/tt3652862/', '2016', '5.7', 'Comedy,Drama,Romance', 'Chad Hartigan', 'Chad Hartigan', 'Markees Christmas,Craig Robinson,Carla Juri,Patrick G&#xFC;ldenberg,Levin Henning,Leon Badenhop,Lina Keller,Marie L&#xF6;schhorn,Josephine Becker,Roger Ditter,Florian Von Stockum,Nora Borchert,Diana Ionescu,Anna Sodan,Anabel M&#xF6;bius,Lukas Ritter,Eva L&#xF6;bau,Jakub Gierszal,Thorsten Wenning,Liv Scharbatke,Josephine Fabian,Manuel Hafner,Hugo Manuel,Kai Michael M&#xFC;ller,Benedikt Crisand', 'Markees Christmas,Craig Robinson,Carla Juri,Patrick G&#xFC;ldenberg,Levin Henning', 'Michael B. Clark,Ruth Ersfeld,Arek Gielnik,Stefanie Gro&#xDF;,Martin Heisler,Rachel Moy,Sara Murphy,Adele Romanski,Gabriele Simon,Alex Turtletaub', '19 August 2016', 'The romantic and coming-of-age misadventures of a 13-year-old American living in Germany.', 'http://ia.media-imdb.com/images/M/MV5BNDgyMzU5MTc2Ml5BMl5BanBnXkFtZTgwMTYwNzcxOTE@._V1._SY200.jpg', 'http://ia.media-imdb.com/images/M/MV5BNDgyMzU5MTc2Ml5BMl5BanBnXkFtZTgwMTYwNzcxOTE@._V1._SY500.jpg', 'http://ia.media-imdb.com/images/M/MV5BNDgyMzU5MTc2Ml5BMl5BanBnXkFtZTgwMTYwNzcxOTE@._V1._SY0.jpg', 'German,English', '91', '\nMorris is a 13-year-old African-American who moves to Heidelberg with his dad, who coaches professional soccer. The film explores Morris\'s attempts to fit in with German kids. He falls for a girl at a youth club and she encourages him to open up a little and share his rapping.                Written by\nSundance goer            ', 'Upcoming', 'wewewewe', null, null, null, null, null, null, null, null, null, null, null, null, null, '19/08/2016 17:44:30 pm', null, '\0');
INSERT INTO `movies` VALUES ('35', null, null, 'Nine Lives', 'Nine Lives', 'tt4383594', 'http://www.imdb.com/title/tt4383594/', '2016', '3.6', 'Comedy,Family,Fantasy', 'Barry Sonnenfeld', 'Gwyn Lurie,Matt Allen,Caleb Wilson,Dan Antoniazzi,Ben Shiffrin', 'Kevin Spacey,Jennifer Garner,Robbie Amell,Cheryl Hines,Mark Consuelos,Malina Weissman,Christopher Walken,Talitha Bateman,Teddy Sears,Jay Patterson,Jewelle Blackman,Serge Houde,Mark Camacho,Christopher Wilding,Kyle Gatehouse,Ellen David,Camille Ross,Jack Hallett,Tristan D. Lalla,Brad Aldous,Julianne Jain,Jason Cavalier,Jason Blicker,Kwasi Songui,Robert Harrison,Lori Graham,Sook Hexamer,Emilee Veluz,Melissa Duncan-Seon,David-Alexandre Coiteux', 'Kevin Spacey,Jennifer Garner,Robbie Amell,Cheryl Hines,Mark Consuelos', 'Henri Deneubourg,Lisa Ellzey,Mark Gao,Thierry Guilmard,Claude L&#xE9;ger,Gregory Ouanhon,Jonathan Vanger', '5 August 2016', 'A stuffy businessman finds himself trapped inside the body of his family&#x27;s cat.', 'http://ia.media-imdb.com/images/M/MV5BMzEzMjkwMjc3NV5BMl5BanBnXkFtZTgwMzc0NjY5ODE@._V1._SY200.jpg', 'movie_images/M/MV5BMzEzMjkwMjc3NV5BMl5BanBnXkFtZTgwMzc0NjY5ODE@._V1._SY500.jpg', 'http://ia.media-imdb.com/images/M/MV5BMzEzMjkwMjc3NV5BMl5BanBnXkFtZTgwMzc0NjY5ODE@._V1._SY0.jpg', 'English', '87', '\nTom Brand (Kevin Spacey) is a daredevil billionaire at the top of his game. His eponymous company FireBrand is nearing completion on its greatest achievement to date - the tallest skyscraper in the northern hemisphere. But Tom\'s workaholic lifestyle has disconnected him from his family, particularly his beautiful wife Lara (Jennifer Garner) and his adoring daughter Rebecca (Malina Weissman). Rebecca\'s 11th birthday is here, and she wants the gift she wants every year, a cat. Tom hates cats, but he is without a gift and time is running out. His GPS directs him to a mystical pet store brimming with odd and exotic cats- where the store\'s eccentric owner- Felix Perkins (Christopher Walken), presents him with a majestic tomcat, named Mr. Fuzzypants. En route to present his daughter with her dream pet, a bizarre turn of events finds Tom trapped inside the body of Mr. Fuzzypants. Adopted by his own family, he begins to experience what life is truly like for the family pet, and as a cat, Tom ...                Written by\nEuropaCorp            ', 'Upcoming', 'wewweewe', null, null, null, null, null, null, null, null, null, null, null, null, null, '19/08/2016 17:48:39 pm', null, '\0');
INSERT INTO `movies` VALUES ('36', null, null, 'Nine Lives', 'Nine Lives', 'tt4383594', 'http://www.imdb.com/title/tt4383594/', '2016', '3.6', 'Comedy,Family,Fantasy', 'Barry Sonnenfeld', 'Gwyn Lurie,Matt Allen,Caleb Wilson,Dan Antoniazzi,Ben Shiffrin', 'Kevin Spacey,Jennifer Garner,Robbie Amell,Cheryl Hines,Mark Consuelos,Malina Weissman,Christopher Walken,Talitha Bateman,Teddy Sears,Jay Patterson,Jewelle Blackman,Serge Houde,Mark Camacho,Christopher Wilding,Kyle Gatehouse,Ellen David,Camille Ross,Jack Hallett,Tristan D. Lalla,Brad Aldous,Julianne Jain,Jason Cavalier,Jason Blicker,Kwasi Songui,Robert Harrison,Lori Graham,Sook Hexamer,Emilee Veluz,Melissa Duncan-Seon,David-Alexandre Coiteux', 'Kevin Spacey,Jennifer Garner,Robbie Amell,Cheryl Hines,Mark Consuelos', 'Henri Deneubourg,Lisa Ellzey,Mark Gao,Thierry Guilmard,Claude L&#xE9;ger,Gregory Ouanhon,Jonathan Vanger', '5 August 2016', 'A stuffy businessman finds himself trapped inside the body of his family&#x27;s cat.', 'http://ia.media-imdb.com/images/M/MV5BMzEzMjkwMjc3NV5BMl5BanBnXkFtZTgwMzc0NjY5ODE@._V1._SY200.jpg', '', 'http://ia.media-imdb.com/images/M/MV5BMzEzMjkwMjc3NV5BMl5BanBnXkFtZTgwMzc0NjY5ODE@._V1._SY0.jpg', 'English', '87', '\nTom Brand (Kevin Spacey) is a daredevil billionaire at the top of his game. His eponymous company FireBrand is nearing completion on its greatest achievement to date - the tallest skyscraper in the northern hemisphere. But Tom\'s workaholic lifestyle has disconnected him from his family, particularly his beautiful wife Lara (Jennifer Garner) and his adoring daughter Rebecca (Malina Weissman). Rebecca\'s 11th birthday is here, and she wants the gift she wants every year, a cat. Tom hates cats, but he is without a gift and time is running out. His GPS directs him to a mystical pet store brimming with odd and exotic cats- where the store\'s eccentric owner- Felix Perkins (Christopher Walken), presents him with a majestic tomcat, named Mr. Fuzzypants. En route to present his daughter with her dream pet, a bizarre turn of events finds Tom trapped inside the body of Mr. Fuzzypants. Adopted by his own family, he begins to experience what life is truly like for the family pet, and as a cat, Tom ...                Written by\nEuropaCorp            ', 'Upcoming', 'wererer', null, null, null, null, null, null, null, null, null, null, null, null, null, '19/08/2016 18:03:47 pm', null, '\0');
INSERT INTO `movies` VALUES ('37', null, null, 'Suicide Squad', 'Suicide Squad', 'tt1386697', 'http://www.imdb.com/title/tt1386697/', '2016', '6.8', 'Action,Adventure,Comedy,Sci-Fi', 'David Ayer', 'David Ayer,John Ostrander', 'Will Smith,Jaime FitzSimons,Ike Barinholtz,Margot Robbie,Christopher Dyson,Bambadjan Bamba,Viola Davis,Ted Whittall,David Harbour,Robin Atkin Downes,Robert B. Kennedy,Billy Otis,Shailyn Pierre-Dixon,Jared Leto,James McGowan,Jim Parrack,Derek Perks,Common,Jai Courtney,Ezra Miller,Jay Hernandez,Adewale Akinnuoye-Agbaje,Cara Delevingne,Joel Kinnaman,Aidan Devine,Andrew Bee,Clive McLean,Frank J. Zupancic,Kent Sheridan,Roger Shank', 'Will Smith,Jaime FitzSimons,Ike Barinholtz,Margot Robbie,Christopher Dyson', 'Bruce Franklin,Andy Horwitz,Geoff Johns,Steven Mnuchin,Alex Ott,Charles Roven,Deborah Snyder,Zack Snyder,Richard Suckle,Colin Wilson', '12 August 2016', 'A secret government agency recruits a group of imprisoned supervillains to execute dangerous black ops missions in exchange for clemency, which inevitably leads to chaos.', 'http://ia.media-imdb.com/images/M/MV5BMjM1OTMxNzUyM15BMl5BanBnXkFtZTgwNjYzMTIzOTE@._V1._SY200.jpg', '', 'http://ia.media-imdb.com/images/M/MV5BMjM1OTMxNzUyM15BMl5BanBnXkFtZTgwNjYzMTIzOTE@._V1._SY0.jpg', 'English,Japanese', '123', '\nIt feels good to be bad...Assemble a team of the world\'s most dangerous, incarcerated Super Villains, provide them with the most powerful arsenal at the government\'s disposal, and send them off on a mission to defeat an enigmatic, insuperable entity. U.S. intelligence officer Amanda Waller has determined only a secretly convened group of disparate, despicable individuals with next to nothing to lose will do. However, once they realize they weren\'t picked to succeed but chosen for their patent culpability when they inevitably fail, will the Suicide Squad resolve to die trying, or decide it\'s every man for himself?                Written by\nAmitash Balekar            ', 'Upcoming', 'swsfdsd', null, null, null, null, null, null, null, null, null, null, null, null, null, '19/08/2016 18:06:12 pm', null, '\0');
INSERT INTO `movies` VALUES ('38', null, null, 'War Dogs', 'War Dogs', 'tt2005151', 'http://www.imdb.com/title/tt2005151/', '2016', '7.3', 'Comedy,Drama,War', 'Todd Phillips', 'Stephen Chin,Todd Phillips,Jason Smilovic,Guy Lawson', 'Miles Teller,Steve Lantz,Gregg Weiner,David Packouz,Eddie Jemison,Julian Sergi,Daniel Berson,Jonah Hill,Edson Jean,Damion Johnson,Bethuel Fletcher,Ana de Armas,Kevin Pollak,Gabriela Alvarez,Dan Bilzerian,Ali Chen,Patrick St. Esprit,Jeremy Tardy,Ashley Spillers,Alisa Allapach,Tucker Merrick,Mosa Omari,Mansour Badri,Mohammed Omari,Shaun Toub,Mehdi Merali,Bahram Khosraviani,Jeff Pierre,Randy Jay Burrell,Stoney Westmoreland', 'Miles Teller,Steve Lantz,Gregg Weiner,David Packouz,Eddie Jemison', 'Scott Budnick,Bradley Cooper,Julie Donovan,Joseph Garner,Mark Gordon,Guy Lawson,Mark O&#x27;Connor,Todd Phillips,Brett Ratner,David Siegel,Bryan Zuriff', '19 August 2016', 'Based on the true story of two young men, David Packouz and Efraim Diveroli, who won a $300 million contract from the Pentagon to arm America&#x27;s allies in Afghanistan.', 'http://ia.media-imdb.com/images/M/MV5BMjEyNzQ0NzM4MV5BMl5BanBnXkFtZTgwMDI0ODM2OTE@._V1._SY200.jpg', 'movie_images/M/MV5BMjEyNzQ0NzM4MV5BMl5BanBnXkFtZTgwMDI0ODM2OTE@._V1._SY500.jpg', 'http://ia.media-imdb.com/images/M/MV5BMjEyNzQ0NzM4MV5BMl5BanBnXkFtZTgwMDI0ODM2OTE@._V1._SY0.jpg', 'English', '114', '\nTwo friends in their early 20s (Hill and Teller) living in Miami Beach during the Iraq War exploit a little-known government initiative that allows small businesses to bid on U.S. Military contracts. Starting small, they begin raking in big money and are living the high life. But the pair gets in over their heads when they land a 300 million dollar deal to arm the Afghan Military - a deal that puts them in business with some very shady people, not the least of which turns out to be the U.S. Government. Based on true events.                Written by\nWarner Bros            ', 'Upcoming', 'iyutuy', null, null, null, null, null, null, null, null, null, null, null, null, null, '19/08/2016 18:08:27 pm', null, '\0');
INSERT INTO `movies` VALUES ('39', null, null, 'War Dogs', 'War Dogs', 'tt2005151', 'http://www.imdb.com/title/tt2005151/', '2016', '7.3', 'Comedy,Drama,War', 'Todd Phillips', 'Stephen Chin,Todd Phillips,Jason Smilovic,Guy Lawson', 'Miles Teller,Steve Lantz,Gregg Weiner,David Packouz,Eddie Jemison,Julian Sergi,Daniel Berson,Jonah Hill,Edson Jean,Damion Johnson,Bethuel Fletcher,Ana de Armas,Kevin Pollak,Gabriela Alvarez,Dan Bilzerian,Ali Chen,Patrick St. Esprit,Jeremy Tardy,Ashley Spillers,Alisa Allapach,Tucker Merrick,Mosa Omari,Mansour Badri,Mohammed Omari,Shaun Toub,Mehdi Merali,Bahram Khosraviani,Jeff Pierre,Randy Jay Burrell,Stoney Westmoreland', 'Miles Teller,Steve Lantz,Gregg Weiner,David Packouz,Eddie Jemison', 'Scott Budnick,Bradley Cooper,Julie Donovan,Joseph Garner,Mark Gordon,Guy Lawson,Mark O&#x27;Connor,Todd Phillips,Brett Ratner,David Siegel,Bryan Zuriff', '19 August 2016', 'Based on the true story of two young men, David Packouz and Efraim Diveroli, who won a $300 million contract from the Pentagon to arm America&#x27;s allies in Afghanistan.', 'http://ia.media-imdb.com/images/M/MV5BMjEyNzQ0NzM4MV5BMl5BanBnXkFtZTgwMDI0ODM2OTE@._V1._SY200.jpg', 'movie_images//M/MV5BMjEyNzQ0NzM4MV5BMl5BanBnXkFtZTgwMDI0ODM2OTE@._V1._SY500.jpg', 'http://ia.media-imdb.com/images/M/MV5BMjEyNzQ0NzM4MV5BMl5BanBnXkFtZTgwMDI0ODM2OTE@._V1._SY0.jpg', 'English', '114', '\nTwo friends in their early 20s (Hill and Teller) living in Miami Beach during the Iraq War exploit a little-known government initiative that allows small businesses to bid on U.S. Military contracts. Starting small, they begin raking in big money and are living the high life. But the pair gets in over their heads when they land a 300 million dollar deal to arm the Afghan Military - a deal that puts them in business with some very shady people, not the least of which turns out to be the U.S. Government. Based on true events.                Written by\nWarner Bros            ', 'Upcoming', 'frttrtrtr', null, null, null, null, null, null, null, null, null, null, null, null, null, '19/08/2016 18:10:16 pm', null, '\0');
INSERT INTO `movies` VALUES ('40', null, null, 'War Dogs', 'War Dogs', 'tt2005151', 'http://www.imdb.com/title/tt2005151/', '2016', '7.3', 'Comedy,Drama,War', 'Todd Phillips', 'Stephen Chin,Todd Phillips,Jason Smilovic,Guy Lawson', 'Miles Teller,Steve Lantz,Gregg Weiner,David Packouz,Eddie Jemison,Julian Sergi,Daniel Berson,Jonah Hill,Edson Jean,Damion Johnson,Bethuel Fletcher,Ana de Armas,Kevin Pollak,Gabriela Alvarez,Dan Bilzerian,Ali Chen,Patrick St. Esprit,Jeremy Tardy,Ashley Spillers,Alisa Allapach,Tucker Merrick,Mosa Omari,Mansour Badri,Mohammed Omari,Shaun Toub,Mehdi Merali,Bahram Khosraviani,Jeff Pierre,Randy Jay Burrell,Stoney Westmoreland', 'Miles Teller,Steve Lantz,Gregg Weiner,David Packouz,Eddie Jemison', 'Scott Budnick,Bradley Cooper,Julie Donovan,Joseph Garner,Mark Gordon,Guy Lawson,Mark O&#x27;Connor,Todd Phillips,Brett Ratner,David Siegel,Bryan Zuriff', '19 August 2016', 'Based on the true story of two young men, David Packouz and Efraim Diveroli, who won a $300 million contract from the Pentagon to arm America&#x27;s allies in Afghanistan.', 'http://ia.media-imdb.com/images/M/MV5BMjEyNzQ0NzM4MV5BMl5BanBnXkFtZTgwMDI0ODM2OTE@._V1._SY200.jpg', 'movie_images/M/MV5BMjEyNzQ0NzM4MV5BMl5BanBnXkFtZTgwMDI0ODM2OTE@._V1._SY500.jpg', 'http://ia.media-imdb.com/images/M/MV5BMjEyNzQ0NzM4MV5BMl5BanBnXkFtZTgwMDI0ODM2OTE@._V1._SY0.jpg', 'English', '114', '\nTwo friends in their early 20s (Hill and Teller) living in Miami Beach during the Iraq War exploit a little-known government initiative that allows small businesses to bid on U.S. Military contracts. Starting small, they begin raking in big money and are living the high life. But the pair gets in over their heads when they land a 300 million dollar deal to arm the Afghan Military - a deal that puts them in business with some very shady people, not the least of which turns out to be the U.S. Government. Based on true events.                Written by\nWarner Bros            ', 'Upcoming', 'frttrtrtr', null, null, null, null, null, null, null, null, null, null, null, null, null, '19/08/2016 18:10:52 pm', null, '\0');
INSERT INTO `movies` VALUES ('41', null, null, 'War Dogs', 'War Dogs', 'tt2005151', 'http://www.imdb.com/title/tt2005151/', '2016', '7.3', 'Comedy,Drama,War', 'Todd Phillips', 'Stephen Chin,Todd Phillips,Jason Smilovic,Guy Lawson', 'Miles Teller,Steve Lantz,Gregg Weiner,David Packouz,Eddie Jemison,Julian Sergi,Daniel Berson,Jonah Hill,Edson Jean,Damion Johnson,Bethuel Fletcher,Ana de Armas,Kevin Pollak,Gabriela Alvarez,Dan Bilzerian,Ali Chen,Patrick St. Esprit,Jeremy Tardy,Ashley Spillers,Alisa Allapach,Tucker Merrick,Mosa Omari,Mansour Badri,Mohammed Omari,Shaun Toub,Mehdi Merali,Bahram Khosraviani,Jeff Pierre,Randy Jay Burrell,Stoney Westmoreland', 'Miles Teller,Steve Lantz,Gregg Weiner,David Packouz,Eddie Jemison', 'Scott Budnick,Bradley Cooper,Julie Donovan,Joseph Garner,Mark Gordon,Guy Lawson,Mark O&#x27;Connor,Todd Phillips,Brett Ratner,David Siegel,Bryan Zuriff', '19 August 2016', 'Based on the true story of two young men, David Packouz and Efraim Diveroli, who won a $300 million contract from the Pentagon to arm America&#x27;s allies in Afghanistan.', 'http://ia.media-imdb.com/images/M/MV5BMjEyNzQ0NzM4MV5BMl5BanBnXkFtZTgwMDI0ODM2OTE@._V1._SY200.jpg', 'movie_images/M/MV5BMjEyNzQ0NzM4MV5BMl5BanBnXkFtZTgwMDI0ODM2OTE@._V1._SY500.jpg', 'http://ia.media-imdb.com/images/M/MV5BMjEyNzQ0NzM4MV5BMl5BanBnXkFtZTgwMDI0ODM2OTE@._V1._SY0.jpg', 'English', '114', '\nTwo friends in their early 20s (Hill and Teller) living in Miami Beach during the Iraq War exploit a little-known government initiative that allows small businesses to bid on U.S. Military contracts. Starting small, they begin raking in big money and are living the high life. But the pair gets in over their heads when they land a 300 million dollar deal to arm the Afghan Military - a deal that puts them in business with some very shady people, not the least of which turns out to be the U.S. Government. Based on true events.                Written by\nWarner Bros            ', 'Upcoming', 'frttrtrtr', null, null, null, null, null, null, null, null, null, null, null, null, null, '19/08/2016 18:13:55 pm', null, '\0');
INSERT INTO `movies` VALUES ('42', null, null, 'War Dogs', 'War Dogs', 'tt2005151', 'http://www.imdb.com/title/tt2005151/', '2016', '7.3', 'Comedy,Drama,War', 'Todd Phillips', 'Stephen Chin,Todd Phillips,Jason Smilovic,Guy Lawson', 'Miles Teller,Steve Lantz,Gregg Weiner,David Packouz,Eddie Jemison,Julian Sergi,Daniel Berson,Jonah Hill,Edson Jean,Damion Johnson,Bethuel Fletcher,Ana de Armas,Kevin Pollak,Gabriela Alvarez,Dan Bilzerian,Ali Chen,Patrick St. Esprit,Jeremy Tardy,Ashley Spillers,Alisa Allapach,Tucker Merrick,Mosa Omari,Mansour Badri,Mohammed Omari,Shaun Toub,Mehdi Merali,Bahram Khosraviani,Jeff Pierre,Randy Jay Burrell,Stoney Westmoreland', 'Miles Teller,Steve Lantz,Gregg Weiner,David Packouz,Eddie Jemison', 'Scott Budnick,Bradley Cooper,Julie Donovan,Joseph Garner,Mark Gordon,Guy Lawson,Mark O&#x27;Connor,Todd Phillips,Brett Ratner,David Siegel,Bryan Zuriff', '19 August 2016', 'Based on the true story of two young men, David Packouz and Efraim Diveroli, who won a $300 million contract from the Pentagon to arm America&#x27;s allies in Afghanistan.', 'http://ia.media-imdb.com/images/M/MV5BMjEyNzQ0NzM4MV5BMl5BanBnXkFtZTgwMDI0ODM2OTE@._V1._SY200.jpg', 'movie_images//M/MV5BMjEyNzQ0NzM4MV5BMl5BanBnXkFtZTgwMDI0ODM2OTE@._V1._SY500.jpg', 'http://ia.media-imdb.com/images/M/MV5BMjEyNzQ0NzM4MV5BMl5BanBnXkFtZTgwMDI0ODM2OTE@._V1._SY0.jpg', 'English', '114', '\nTwo friends in their early 20s (Hill and Teller) living in Miami Beach during the Iraq War exploit a little-known government initiative that allows small businesses to bid on U.S. Military contracts. Starting small, they begin raking in big money and are living the high life. But the pair gets in over their heads when they land a 300 million dollar deal to arm the Afghan Military - a deal that puts them in business with some very shady people, not the least of which turns out to be the U.S. Government. Based on true events.                Written by\nWarner Bros            ', 'Upcoming', 'frttrtrtr', null, null, null, null, null, null, null, null, null, null, null, null, null, '19/08/2016 18:16:23 pm', null, '\0');
INSERT INTO `movies` VALUES ('43', null, null, 'War Dogs', 'War Dogs', 'tt2005151', 'http://www.imdb.com/title/tt2005151/', '2016', '7.3', 'Comedy,Drama,War', 'Todd Phillips', 'Stephen Chin,Todd Phillips,Jason Smilovic,Guy Lawson', 'Miles Teller,Steve Lantz,Gregg Weiner,David Packouz,Eddie Jemison,Julian Sergi,Daniel Berson,Jonah Hill,Edson Jean,Damion Johnson,Bethuel Fletcher,Ana de Armas,Kevin Pollak,Gabriela Alvarez,Dan Bilzerian,Ali Chen,Patrick St. Esprit,Jeremy Tardy,Ashley Spillers,Alisa Allapach,Tucker Merrick,Mosa Omari,Mansour Badri,Mohammed Omari,Shaun Toub,Mehdi Merali,Bahram Khosraviani,Jeff Pierre,Randy Jay Burrell,Stoney Westmoreland', 'Miles Teller,Steve Lantz,Gregg Weiner,David Packouz,Eddie Jemison', 'Scott Budnick,Bradley Cooper,Julie Donovan,Joseph Garner,Mark Gordon,Guy Lawson,Mark O&#x27;Connor,Todd Phillips,Brett Ratner,David Siegel,Bryan Zuriff', '19 August 2016', 'Based on the true story of two young men, David Packouz and Efraim Diveroli, who won a $300 million contract from the Pentagon to arm America&#x27;s allies in Afghanistan.', 'http://ia.media-imdb.com/images/M/MV5BMjEyNzQ0NzM4MV5BMl5BanBnXkFtZTgwMDI0ODM2OTE@._V1._SY200.jpg', 'movie_images//M/MV5BMjEyNzQ0NzM4MV5BMl5BanBnXkFtZTgwMDI0ODM2OTE@._V1._SY500.jpg', 'http://ia.media-imdb.com/images/M/MV5BMjEyNzQ0NzM4MV5BMl5BanBnXkFtZTgwMDI0ODM2OTE@._V1._SY0.jpg', 'English', '114', '\nTwo friends in their early 20s (Hill and Teller) living in Miami Beach during the Iraq War exploit a little-known government initiative that allows small businesses to bid on U.S. Military contracts. Starting small, they begin raking in big money and are living the high life. But the pair gets in over their heads when they land a 300 million dollar deal to arm the Afghan Military - a deal that puts them in business with some very shady people, not the least of which turns out to be the U.S. Government. Based on true events.                Written by\nWarner Bros            ', 'Upcoming', 'frttrtrtr', null, null, null, null, null, null, null, null, null, null, null, null, null, '19/08/2016 18:17:04 pm', null, '\0');
INSERT INTO `movies` VALUES ('44', null, null, 'War Dogs', 'War Dogs', 'tt2005151', 'http://www.imdb.com/title/tt2005151/', '2016', '7.3', 'Comedy,Drama,War', 'Todd Phillips', 'Stephen Chin,Todd Phillips,Jason Smilovic,Guy Lawson', 'Miles Teller,Steve Lantz,Gregg Weiner,David Packouz,Eddie Jemison,Julian Sergi,Daniel Berson,Jonah Hill,Edson Jean,Damion Johnson,Bethuel Fletcher,Ana de Armas,Kevin Pollak,Gabriela Alvarez,Dan Bilzerian,Ali Chen,Patrick St. Esprit,Jeremy Tardy,Ashley Spillers,Alisa Allapach,Tucker Merrick,Mosa Omari,Mansour Badri,Mohammed Omari,Shaun Toub,Mehdi Merali,Bahram Khosraviani,Jeff Pierre,Randy Jay Burrell,Stoney Westmoreland', 'Miles Teller,Steve Lantz,Gregg Weiner,David Packouz,Eddie Jemison', 'Scott Budnick,Bradley Cooper,Julie Donovan,Joseph Garner,Mark Gordon,Guy Lawson,Mark O&#x27;Connor,Todd Phillips,Brett Ratner,David Siegel,Bryan Zuriff', '19 August 2016', 'Based on the true story of two young men, David Packouz and Efraim Diveroli, who won a $300 million contract from the Pentagon to arm America&#x27;s allies in Afghanistan.', 'http://ia.media-imdb.com/images/M/MV5BMjEyNzQ0NzM4MV5BMl5BanBnXkFtZTgwMDI0ODM2OTE@._V1._SY200.jpg', 'movie_images/M/MV5BMjEyNzQ0NzM4MV5BMl5BanBnXkFtZTgwMDI0ODM2OTE@._V1._SY500.jpg', 'http://ia.media-imdb.com/images/M/MV5BMjEyNzQ0NzM4MV5BMl5BanBnXkFtZTgwMDI0ODM2OTE@._V1._SY0.jpg', 'English', '114', '\nTwo friends in their early 20s (Hill and Teller) living in Miami Beach during the Iraq War exploit a little-known government initiative that allows small businesses to bid on U.S. Military contracts. Starting small, they begin raking in big money and are living the high life. But the pair gets in over their heads when they land a 300 million dollar deal to arm the Afghan Military - a deal that puts them in business with some very shady people, not the least of which turns out to be the U.S. Government. Based on true events.                Written by\nWarner Bros            ', 'Upcoming', 'frttrtrtr', null, null, null, null, null, null, null, null, null, null, null, null, null, '19/08/2016 18:17:57 pm', null, '\0');
INSERT INTO `movies` VALUES ('45', null, null, 'War Dogs', 'War Dogs', 'tt2005151', 'http://www.imdb.com/title/tt2005151/', '2016', '7.3', 'Comedy,Drama,War', 'Todd Phillips', 'Stephen Chin,Todd Phillips,Jason Smilovic,Guy Lawson', 'Miles Teller,Steve Lantz,Gregg Weiner,David Packouz,Eddie Jemison,Julian Sergi,Daniel Berson,Jonah Hill,Edson Jean,Damion Johnson,Bethuel Fletcher,Ana de Armas,Kevin Pollak,Gabriela Alvarez,Dan Bilzerian,Ali Chen,Patrick St. Esprit,Jeremy Tardy,Ashley Spillers,Alisa Allapach,Tucker Merrick,Mosa Omari,Mansour Badri,Mohammed Omari,Shaun Toub,Mehdi Merali,Bahram Khosraviani,Jeff Pierre,Randy Jay Burrell,Stoney Westmoreland', 'Miles Teller,Steve Lantz,Gregg Weiner,David Packouz,Eddie Jemison', 'Scott Budnick,Bradley Cooper,Julie Donovan,Joseph Garner,Mark Gordon,Guy Lawson,Mark O&#x27;Connor,Todd Phillips,Brett Ratner,David Siegel,Bryan Zuriff', '19 August 2016', 'Based on the true story of two young men, David Packouz and Efraim Diveroli, who won a $300 million contract from the Pentagon to arm America&#x27;s allies in Afghanistan.', 'http://ia.media-imdb.com/images/M/MV5BMjEyNzQ0NzM4MV5BMl5BanBnXkFtZTgwMDI0ODM2OTE@._V1._SY200.jpg', 'http://ia.media-imdb.com/images/M/MV5BMjEyNzQ0NzM4MV5BMl5BanBnXkFtZTgwMDI0ODM2OTE@._V1._SY500.jpg', 'http://ia.media-imdb.com/images/M/MV5BMjEyNzQ0NzM4MV5BMl5BanBnXkFtZTgwMDI0ODM2OTE@._V1._SY0.jpg', 'English', '114', '\nTwo friends in their early 20s (Hill and Teller) living in Miami Beach during the Iraq War exploit a little-known government initiative that allows small businesses to bid on U.S. Military contracts. Starting small, they begin raking in big money and are living the high life. But the pair gets in over their heads when they land a 300 million dollar deal to arm the Afghan Military - a deal that puts them in business with some very shady people, not the least of which turns out to be the U.S. Government. Based on true events.                Written by\nWarner Bros            ', 'Upcoming', 'frttrtrtr', null, null, null, null, null, null, null, null, null, null, null, null, null, '19/08/2016 18:26:00 pm', null, '\0');
INSERT INTO `movies` VALUES ('46', null, null, 'War Dogs', 'War Dogs', 'tt2005151', 'http://www.imdb.com/title/tt2005151/', '2016', '7.3', 'Comedy,Drama,War', 'Todd Phillips', 'Stephen Chin,Todd Phillips,Jason Smilovic,Guy Lawson', 'Miles Teller,Steve Lantz,Gregg Weiner,David Packouz,Eddie Jemison,Julian Sergi,Daniel Berson,Jonah Hill,Edson Jean,Damion Johnson,Bethuel Fletcher,Ana de Armas,Kevin Pollak,Gabriela Alvarez,Dan Bilzerian,Ali Chen,Patrick St. Esprit,Jeremy Tardy,Ashley Spillers,Alisa Allapach,Tucker Merrick,Mosa Omari,Mansour Badri,Mohammed Omari,Shaun Toub,Mehdi Merali,Bahram Khosraviani,Jeff Pierre,Randy Jay Burrell,Stoney Westmoreland', 'Miles Teller,Steve Lantz,Gregg Weiner,David Packouz,Eddie Jemison', 'Scott Budnick,Bradley Cooper,Julie Donovan,Joseph Garner,Mark Gordon,Guy Lawson,Mark O&#x27;Connor,Todd Phillips,Brett Ratner,David Siegel,Bryan Zuriff', '19 August 2016', 'Based on the true story of two young men, David Packouz and Efraim Diveroli, who won a $300 million contract from the Pentagon to arm America&#x27;s allies in Afghanistan.', 'http://ia.media-imdb.com/images/M/MV5BMjEyNzQ0NzM4MV5BMl5BanBnXkFtZTgwMDI0ODM2OTE@._V1._SY200.jpg', 'http://ia.media-imdb.com/images/M/MV5BMjEyNzQ0NzM4MV5BMl5BanBnXkFtZTgwMDI0ODM2OTE@._V1._SY500.jpg', 'http://ia.media-imdb.com/images/M/MV5BMjEyNzQ0NzM4MV5BMl5BanBnXkFtZTgwMDI0ODM2OTE@._V1._SY0.jpg', 'English', '114', '\nTwo friends in their early 20s (Hill and Teller) living in Miami Beach during the Iraq War exploit a little-known government initiative that allows small businesses to bid on U.S. Military contracts. Starting small, they begin raking in big money and are living the high life. But the pair gets in over their heads when they land a 300 million dollar deal to arm the Afghan Military - a deal that puts them in business with some very shady people, not the least of which turns out to be the U.S. Government. Based on true events.                Written by\nWarner Bros            ', 'Upcoming', 'frttrtrtr', null, null, null, null, null, null, null, null, null, null, null, null, null, '19/08/2016 18:28:52 pm', null, '\0');
INSERT INTO `movies` VALUES ('47', null, null, 'War Dogs', 'War Dogs', 'tt2005151', 'http://www.imdb.com/title/tt2005151/', '2016', '7.3', 'Comedy,Drama,War', 'Todd Phillips', 'Stephen Chin,Todd Phillips,Jason Smilovic,Guy Lawson', 'Miles Teller,Steve Lantz,Gregg Weiner,David Packouz,Eddie Jemison,Julian Sergi,Daniel Berson,Jonah Hill,Edson Jean,Damion Johnson,Bethuel Fletcher,Ana de Armas,Kevin Pollak,Gabriela Alvarez,Dan Bilzerian,Ali Chen,Patrick St. Esprit,Jeremy Tardy,Ashley Spillers,Alisa Allapach,Tucker Merrick,Mosa Omari,Mansour Badri,Mohammed Omari,Shaun Toub,Mehdi Merali,Bahram Khosraviani,Jeff Pierre,Randy Jay Burrell,Stoney Westmoreland', 'Miles Teller,Steve Lantz,Gregg Weiner,David Packouz,Eddie Jemison', 'Scott Budnick,Bradley Cooper,Julie Donovan,Joseph Garner,Mark Gordon,Guy Lawson,Mark O&#x27;Connor,Todd Phillips,Brett Ratner,David Siegel,Bryan Zuriff', '19 August 2016', 'Based on the true story of two young men, David Packouz and Efraim Diveroli, who won a $300 million contract from the Pentagon to arm America&#x27;s allies in Afghanistan.', 'movie_images/War Dogsposter.jpg', 'movie_images/War Dogsposter_large.jpg', 'movie_images/War Dogsposter_full.jpg', 'English', '114', '\nTwo friends in their early 20s (Hill and Teller) living in Miami Beach during the Iraq War exploit a little-known government initiative that allows small businesses to bid on U.S. Military contracts. Starting small, they begin raking in big money and are living the high life. But the pair gets in over their heads when they land a 300 million dollar deal to arm the Afghan Military - a deal that puts them in business with some very shady people, not the least of which turns out to be the U.S. Government. Based on true events.                Written by\nWarner Bros            ', 'Upcoming', 'swwewee', null, null, null, null, null, null, null, null, null, null, null, null, null, '19/08/2016 18:43:34 pm', null, '\0');
INSERT INTO `movies` VALUES ('48', null, null, 'War Dogs', 'War Dogs', 'tt2005151', 'http://www.imdb.com/title/tt2005151/', '2016', '7.3', 'Comedy,Drama,War', 'Todd Phillips', 'Stephen Chin,Todd Phillips,Jason Smilovic,Guy Lawson', 'Miles Teller,Steve Lantz,Gregg Weiner,David Packouz,Eddie Jemison,Julian Sergi,Daniel Berson,Jonah Hill,Edson Jean,Damion Johnson,Bethuel Fletcher,Ana de Armas,Kevin Pollak,Gabriela Alvarez,Dan Bilzerian,Ali Chen,Patrick St. Esprit,Jeremy Tardy,Ashley Spillers,Alisa Allapach,Tucker Merrick,Mosa Omari,Mansour Badri,Mohammed Omari,Shaun Toub,Mehdi Merali,Bahram Khosraviani,Jeff Pierre,Randy Jay Burrell,Stoney Westmoreland', 'Miles Teller,Steve Lantz,Gregg Weiner,David Packouz,Eddie Jemison', 'Scott Budnick,Bradley Cooper,Julie Donovan,Joseph Garner,Mark Gordon,Guy Lawson,Mark O&#x27;Connor,Todd Phillips,Brett Ratner,David Siegel,Bryan Zuriff', '19 August 2016', 'Based on the true story of two young men, David Packouz and Efraim Diveroli, who won a $300 million contract from the Pentagon to arm America&#x27;s allies in Afghanistan.', 'http://localhost/development/update_timespan/timespan_admin/movie_images/War Dogsposter.jpg', 'http://localhost/development/update_timespan/timespan_admin/movie_images/War Dogsposter_large.jpg', 'http://localhost/development/update_timespan/timespan_admin/movie_images/War Dogsposter_full.jpg', 'English', '114', '\nTwo friends in their early 20s (Hill and Teller) living in Miami Beach during the Iraq War exploit a little-known government initiative that allows small businesses to bid on U.S. Military contracts. Starting small, they begin raking in big money and are living the high life. But the pair gets in over their heads when they land a 300 million dollar deal to arm the Afghan Military - a deal that puts them in business with some very shady people, not the least of which turns out to be the U.S. Government. Based on true events.                Written by\nWarner Bros            ', 'Upcoming', 'iouuiyutyyt', null, null, null, null, '1', null, null, null, null, null, null, null, null, '19/08/2016 18:47:41 pm', null, '\0');

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
INSERT INTO `musics` VALUES ('1', '2', 'Dabang', 'Dabang', 'www.google.com', ' 2010', 'Classical', 'http://localhost/development/update_timespan/timespan_admin/music_images/_dabang.jpg', 'dabang.jpg', 'JPEG', '6', null, null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `musics` VALUES ('2', '1', 'Dabang 2', 'Dabang 2', 'www..yahoo.com', '2016', 'Jazz', '', '', '', '4', null, null, null, null, null, null, null, null, null, '12/08/2016 17:41:45 pm', '\0');
INSERT INTO `musics` VALUES ('3', '1', 'Dabang 2', 'Dabang 2', 'www.google.com', '2012', 'Classical', 'http://localhost/development/update_timespan/timespan_admin/music_images/3_dabang2.jpg', 'dabang2.jpg', 'JPEG', '25', null, null, null, null, null, null, null, null, null, '12/08/2016 17:43:20 pm', '\0');
INSERT INTO `musics` VALUES ('4', '2', 'test', 'test', 'www.google.com', '2016', 'classical', 'http://localhost/development/update_timespan/timespan_admin/music_images/4_api_disabled_status.png', 'api_disabled_status.png', 'PNG', '12', '1', null, null, null, null, null, null, null, '13/08/2016 12:59:26 pm', null, '\0');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of music_categories
-- ----------------------------
INSERT INTO `music_categories` VALUES ('1', 'Bhangra / Punjabi', 'Bhangra / Punjabi', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `music_categories` VALUES ('2', 'Bollywood Songs', 'Bollywood Songs', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `music_categories` VALUES ('3', 'Ghazals And Qawali', 'Ghazals And Qawali', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `music_categories` VALUES ('4', 'Hollywood Songs', 'Hollywood Songs', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `music_categories` VALUES ('5', 'Indian Pop and Remix', 'Indian Pop and Remix', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `music_categories` VALUES ('6', 'Old Is Gold', 'Old Is Gold', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `music_categories` VALUES ('7', 'Pakistani Songs', 'Pakistani Songs', null, null, null, null, null, null, null, null, null, '\0');

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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of onlinegames
-- ----------------------------
INSERT INTO `onlinegames` VALUES ('1', '8', 'Super Mario Rush', 'Super Mario Rush', 'http://files.dodear.com/onlinegames/file/super_mario_rush.swf', 'http://localhost/development/update_timespan/timespan_admin/online_game_images/1_69111b0ef735c8caf1da98afe903e412.jpg', '69111b0ef735c8caf1da98afe903e412.jpg', 'JPEG', '1', null, null, null, null, null, null, null, null, '16/08/2016 19:03:38 pm', null, '\0');
INSERT INTO `onlinegames` VALUES ('2', '5', 'Kingdom Wars Idle2', 'Kingdom Wars Idle2', 'http://files.dodear.com/onlinegames/file/kingdom_wars_idle.swf', 'http://localhost/development/update_timespan/timespan_admin/online_game_images/2_c424a06f726f6d2314865e8f11716986.jpg', 'c424a06f726f6d2314865e8f11716986.jpg', 'JPEG', null, null, null, null, null, null, null, null, null, '16/08/2016 19:18:43 pm', '16/08/2016 19:27:19 pm', '\0');
INSERT INTO `onlinegames` VALUES ('3', '2', 'Train driving frenzy', 'Train driving frenzy', 'http://files.dodear.com/onlinegames/file/train_driving_frenzy.swf', 'http://localhost/development/update_timespan/timespan_admin/online_game_images/3_92f8b4785c42b20993df12660d94bdba.jpg', '92f8b4785c42b20993df12660d94bdba.jpg', 'JPEG', null, null, null, null, null, null, null, null, null, '16/08/2016 19:28:26 pm', null, '\0');
INSERT INTO `onlinegames` VALUES ('4', '2', 'Super Warship', 'Super Warship', 'http://files.dodear.com/onlinegames/file/superwarship.swf', 'http://localhost/development/update_timespan/timespan_admin/online_game_images/4_ed640fd0628291fb2c139112628e67d8.jpg', 'ed640fd0628291fb2c139112628e67d8.jpg', 'JPEG', null, null, null, null, null, null, null, null, null, '16/08/2016 19:29:34 pm', null, '\0');
INSERT INTO `onlinegames` VALUES ('5', '2', 'Sift Heads Cartels Act 2', 'Sift Heads Cartels Act 2', 'http://files.dodear.com/onlinegames/file/SiftHeadsCartelsAct2.swf', 'http://localhost/development/update_timespan/timespan_admin/online_game_images/5_e7b846bdd59e28def35a72d8b32b4eb2.jpg', 'e7b846bdd59e28def35a72d8b32b4eb2.jpg', 'JPEG', null, null, null, null, null, null, null, null, null, '16/08/2016 19:30:58 pm', null, '\0');
INSERT INTO `onlinegames` VALUES ('6', '3', 'New York Taxi License', 'New York Taxi License', 'http://files.dodear.com/onlinegames/file/NewYorkTaxiLicense.swf', 'http://localhost/development/update_timespan/timespan_admin/online_game_images/6_7c5dd664e8987f22b5c460f542a3099b.jpg', '7c5dd664e8987f22b5c460f542a3099b.jpg', 'JPEG', null, null, null, null, null, null, null, null, null, '16/08/2016 19:31:36 pm', null, '\0');
INSERT INTO `onlinegames` VALUES ('7', '2', 'Monster Constructor 2', 'Monster Constructor 2', 'http://files.dodear.com/onlinegames/file/MonsterConstructor2.swf', 'http://localhost/development/update_timespan/timespan_admin/online_game_images/7_6113d15e4bdad6b7ae0bb9ad10779600.jpg', '6113d15e4bdad6b7ae0bb9ad10779600.jpg', 'JPEG', '1', null, null, null, null, null, null, null, null, '16/08/2016 19:32:29 pm', null, '\0');
INSERT INTO `onlinegames` VALUES ('8', '2', 'Zombie Rumble', 'Zombie Rumble', 'http://files.dodear.com/onlinegames/file/ZombieRumble.swf', 'http://localhost/development/update_timespan/timespan_admin/online_game_images/8_4317cb79eaf6d8d2f8a3046a2a7765e4.jpg', '4317cb79eaf6d8d2f8a3046a2a7765e4.jpg', 'JPEG', null, null, null, null, null, null, null, null, null, '16/08/2016 19:33:28 pm', null, '\0');
INSERT INTO `onlinegames` VALUES ('9', '3', 'Rocket Rush', 'Rocket Rush', 'http://files.dodear.com/onlinegames/file/RocketRush.swf', 'http://localhost/development/update_timespan/timespan_admin/online_game_images/9_35f58b9bd12dfb6a5232caf2afb99afb.jpg', '35f58b9bd12dfb6a5232caf2afb99afb.jpg', 'JPEG', null, null, null, null, null, null, null, null, null, '16/08/2016 19:34:25 pm', null, '\0');
INSERT INTO `onlinegames` VALUES ('10', '7', 'Bike Mania Reborn', 'Bike Mania Reborn', 'http://files.dodear.com/onlinegames/file/BikeManiaReborn.swf', 'http://localhost/development/update_timespan/timespan_admin/online_game_images/10_829441638a959b803a89b28c5e4d112e.jpg', '829441638a959b803a89b28c5e4d112e.jpg', 'JPEG', null, null, null, null, null, null, null, null, null, '16/08/2016 19:35:29 pm', null, '\0');
INSERT INTO `onlinegames` VALUES ('11', '2', 'Railroad Rush', 'Railroad Rush', 'http://files.dodear.com/onlinegames/file/RailroadRush.swf', 'http://localhost/development/update_timespan/timespan_admin/online_game_images/11_261a42f3374db316b7e4d8dbd8ae1ab9.jpg', '261a42f3374db316b7e4d8dbd8ae1ab9.jpg', 'JPEG', null, null, null, null, null, null, null, null, null, '16/08/2016 19:36:16 pm', null, '\0');
INSERT INTO `onlinegames` VALUES ('12', '5', 'Urban Shootout', 'Urban Shootout', 'http://files.dodear.com/onlinegames/file/UrbanShootout.swf', 'http://localhost/development/update_timespan/timespan_admin/online_game_images/12_c27a28d25e1e8286140dbda03374c4ad.jpg', 'c27a28d25e1e8286140dbda03374c4ad.jpg', 'JPEG', null, null, null, null, null, null, null, null, null, '16/08/2016 19:37:09 pm', null, '\0');
INSERT INTO `onlinegames` VALUES ('13', '2', 'Accurate Boy', 'Accurate Boy', 'http://files.dodear.com/onlinegames/file/AccurateBoy.swf', 'http://localhost/development/update_timespan/timespan_admin/online_game_images/13_a45a49f1a6ba94eee6965829d85fc5e8.jpg', 'a45a49f1a6ba94eee6965829d85fc5e8.jpg', 'JPEG', null, null, null, null, null, null, null, null, null, '16/08/2016 19:37:48 pm', null, '\0');
INSERT INTO `onlinegames` VALUES ('14', '2', 'Save The Aliens', 'Save The Aliens', 'http://files.dodear.com/onlinegames/file/SaveTheAliens.swf', 'http://localhost/development/update_timespan/timespan_admin/online_game_images/14_5462cf5e63b95c0c7b450d15f10fd847.jpg', '5462cf5e63b95c0c7b450d15f10fd847.jpg', 'JPEG', null, null, null, null, null, null, null, null, null, '16/08/2016 19:38:38 pm', null, '\0');
INSERT INTO `onlinegames` VALUES ('15', '7', 'Offroad Truckers', 'Offroad Truckers', 'http://files.dodear.com/onlinegames/file/OffroadTruckers.swf', 'http://localhost/development/update_timespan/timespan_admin/online_game_images/15_640b82b9bd5ad01b9ad2581b639cd49f.gif', '640b82b9bd5ad01b9ad2581b639cd49f.gif', 'GIF', null, null, null, null, null, null, null, null, null, '16/08/2016 19:39:17 pm', null, '\0');
INSERT INTO `onlinegames` VALUES ('16', '5', 'Van Helsing Vs Skeletons', 'Van Helsing Vs Skeletons', 'http://files.dodear.com/onlinegames/file/VanHelsingVsSkeletons.swf', 'http://localhost/development/update_timespan/timespan_admin/online_game_images/16_fb2615b4ba035c3316847f3758404250.jpg', 'fb2615b4ba035c3316847f3758404250.jpg', 'JPEG', null, null, null, null, null, null, null, null, null, '16/08/2016 19:40:06 pm', null, '\0');
INSERT INTO `onlinegames` VALUES ('17', '2', 'Station Wagun', 'Station Wagun', 'http://files.dodear.com/onlinegames/file/StationWagun.swf', 'http://localhost/development/update_timespan/timespan_admin/online_game_images/17_37b596a9a12c7a7e6f338cd78480e614.png', '37b596a9a12c7a7e6f338cd78480e614.png', 'PNG', null, null, null, null, null, null, null, null, null, '16/08/2016 19:40:53 pm', null, '\0');
INSERT INTO `onlinegames` VALUES ('18', '2', 'Tricky Rick 2', 'Tricky Rick 2', 'http://files.dodear.com/onlinegames/file/TrickyRick2.swf', 'http://localhost/development/update_timespan/timespan_admin/online_game_images/18_a203b69ce6993f2d7e1d6c34aae6fa55.jpg', 'a203b69ce6993f2d7e1d6c34aae6fa55.jpg', 'JPEG', null, null, null, null, null, null, null, null, null, '16/08/2016 19:41:35 pm', null, '\0');
INSERT INTO `onlinegames` VALUES ('19', '3', 'Tractors Power Adventure', 'Tractors Power Adventure', 'http://files.dodear.com/onlinegames/file/TractorsPowerAdventure.swf', 'http://localhost/development/update_timespan/timespan_admin/online_game_images/19_300119c8b1026b125f7e1c8ec09aeb7c.jpg', '300119c8b1026b125f7e1c8ec09aeb7c.jpg', 'JPEG', null, null, null, null, null, null, null, null, null, '16/08/2016 19:45:53 pm', null, '\0');
INSERT INTO `onlinegames` VALUES ('20', '3', 'Feed Us Lost Island', 'Feed Us Lost Island', 'http://files.dodear.com/onlinegames/file/FeedUsLostIsland.swf', 'http://localhost/development/update_timespan/timespan_admin/online_game_images/20_b94cf1031453deb70fce9a95bc0941f6.jpg', 'b94cf1031453deb70fce9a95bc0941f6.jpg', 'JPEG', null, null, null, null, null, null, null, null, null, '16/08/2016 19:46:39 pm', null, '\0');
INSERT INTO `onlinegames` VALUES ('21', '2', 'Ace Gangster Taxi', 'Ace Gangster Taxi', 'http://files.dodear.com/onlinegames/file/AceGangsterTaxi.swf', 'http://localhost/development/update_timespan/timespan_admin/online_game_images/21_83ea7cc427249363a5ad89ea660acd52.jpg', '83ea7cc427249363a5ad89ea660acd52.jpg', 'JPEG', null, null, null, null, null, null, null, null, null, '16/08/2016 19:47:15 pm', null, '\0');
INSERT INTO `onlinegames` VALUES ('22', '2', 'Tricky Rick ', 'Tricky Rick', 'http://files.dodear.com/onlinegames/file/TrickyRick.swf', 'http://localhost/development/update_timespan/timespan_admin/online_game_images/22_586079f8bd95172024f7189688332ebf.png', '586079f8bd95172024f7189688332ebf.png', 'PNG', null, null, null, null, null, null, null, null, null, '16/08/2016 19:48:29 pm', null, '\0');
INSERT INTO `onlinegames` VALUES ('23', '2', 'Bury My Bones', 'Bury My Bones', 'http://files.dodear.com/onlinegames/file/BuryMyBones.swf', 'http://localhost/development/update_timespan/timespan_admin/online_game_images/23_f0c2654c5235fb3a8cd96ac13922aa18.jpg', 'f0c2654c5235fb3a8cd96ac13922aa18.jpg', 'JPEG', null, null, null, null, null, null, null, null, null, '16/08/2016 19:49:01 pm', null, '\0');
INSERT INTO `onlinegames` VALUES ('24', '8', 'Heavy Machines', 'Heavy Machines', 'http://files.dodear.com/onlinegames/file/HeavyMachines.swf', 'http://localhost/development/update_timespan/timespan_admin/online_game_images/24_4d9921c0bbd53a58f30e8b8c1edf6aa1.jpg', '4d9921c0bbd53a58f30e8b8c1edf6aa1.jpg', 'JPEG', null, null, null, null, null, null, null, null, null, '16/08/2016 19:49:49 pm', null, '\0');
INSERT INTO `onlinegames` VALUES ('25', '2', 'Feed Us Pirates', 'Feed Us Pirates', 'http://files.dodear.com/onlinegames/file/FeedUsPirates.swf', 'http://localhost/development/update_timespan/timespan_admin/online_game_images/25_311a7204c71d020a6e0e970770976650.jpg', '311a7204c71d020a6e0e970770976650.jpg', 'JPEG', null, null, null, null, null, null, null, null, null, '16/08/2016 19:50:47 pm', null, '\0');
INSERT INTO `onlinegames` VALUES ('26', '8', 'Tnt Zombies Arsenal', 'Tnt Zombies Arsenal', 'http://files.dodear.com/onlinegames/file/TntZombiesArsenal.swf', 'http://localhost/development/update_timespan/timespan_admin/online_game_images/26_3c5dd81d35c63d0b8a6527bf4c5d7b5f.jpg', '3c5dd81d35c63d0b8a6527bf4c5d7b5f.jpg', 'JPEG', null, null, null, null, null, null, null, null, null, '16/08/2016 19:51:27 pm', null, '\0');
INSERT INTO `onlinegames` VALUES ('27', '8', 'Battlefield Medic WW2', 'Battlefield Medic WW2', 'http://files.dodear.com/onlinegames/file/BattlefieldMedicWW2.swf', 'http://localhost/development/update_timespan/timespan_admin/online_game_images/27_cc1129c6e80d47c87496ea3fa3674a6b.jpg', 'cc1129c6e80d47c87496ea3fa3674a6b.jpg', 'JPEG', null, null, null, null, null, null, null, null, null, '16/08/2016 19:52:02 pm', null, '\0');
INSERT INTO `onlinegames` VALUES ('28', '3', 'Trolley Express', 'Trolley Express', 'http://files.dodear.com/onlinegames/file/TrolleyExpress.swf', 'http://localhost/development/update_timespan/timespan_admin/online_game_images/28_7c3e98969f64bbb3cbe275329d1d24ec.jpg', '7c3e98969f64bbb3cbe275329d1d24ec.jpg', 'JPEG', null, null, null, null, null, null, null, null, null, '16/08/2016 19:52:43 pm', null, '\0');
INSERT INTO `onlinegames` VALUES ('29', '5', 'World War', 'World War', 'http://files.dodear.com/onlinegames/file/WorldWar.swf', 'http://localhost/development/update_timespan/timespan_admin/online_game_images/29_50305809f4fa70bca289a3aa4f47bfa0.jpg', '50305809f4fa70bca289a3aa4f47bfa0.jpg', 'JPEG', null, null, null, null, null, null, null, null, null, '16/08/2016 19:53:15 pm', null, '\0');
INSERT INTO `onlinegames` VALUES ('30', '8', 'Crazy Trucker Rush', 'Crazy Trucker Rush', 'http://files.dodear.com/onlinegames/file/CrazyTruckerRush.swf', 'http://localhost/development/update_timespan/timespan_admin/online_game_images/30_5361733219dd3eb27a86e42914565b3d.jpg', '5361733219dd3eb27a86e42914565b3d.jpg', 'JPEG', null, null, null, null, null, null, null, null, null, '16/08/2016 19:53:57 pm', null, '\0');
INSERT INTO `onlinegames` VALUES ('31', '5', 'Hitman Strikes Back', 'Hitman Strikes Back', 'http://files.dodear.com/onlinegames/file/HitmanStrikesBack.swf', 'http://localhost/development/update_timespan/timespan_admin/online_game_images/31_2c7e996726d75ca0dc42164b24b7992a.jpg', '2c7e996726d75ca0dc42164b24b7992a.jpg', 'JPEG', null, null, null, null, null, null, null, null, null, '16/08/2016 19:54:28 pm', null, '\0');
INSERT INTO `onlinegames` VALUES ('32', '2', 'Ricochet Kills 3', 'Ricochet Kills 3', 'http://files.dodear.com/onlinegames/file/RicochetKills3.swf', 'http://localhost/development/update_timespan/timespan_admin/online_game_images/32_cd24ca0d419d67f9ce38ccdb56f0bdc3.jpg', 'cd24ca0d419d67f9ce38ccdb56f0bdc3.jpg', 'JPEG', null, null, null, null, null, null, null, null, null, '16/08/2016 19:55:13 pm', null, '\0');
INSERT INTO `onlinegames` VALUES ('33', '8', 'Luigi Truck', 'Luigi Truck', 'http://files.dodear.com/onlinegames/file/LuigiTruck.swf', 'http://localhost/development/update_timespan/timespan_admin/online_game_images/33_e85855e79988c043d29f5d0497bba588.png', 'e85855e79988c043d29f5d0497bba588.png', 'PNG', '1', null, null, null, null, null, null, null, null, '16/08/2016 19:55:54 pm', null, '\0');
INSERT INTO `onlinegames` VALUES ('34', '8', 'Peach Across The World', 'Peach Across The World', 'http://files.dodear.com/onlinegames/file/PeachAcrossTheWorld.swf', 'http://localhost/development/update_timespan/timespan_admin/online_game_images/34_cb5bed9b7425129ba841de2fe556b525.jpg', 'cb5bed9b7425129ba841de2fe556b525.jpg', 'JPEG', '1', null, null, null, null, null, null, null, null, '16/08/2016 19:56:35 pm', null, '\0');
INSERT INTO `onlinegames` VALUES ('35', '3', 'Impale', 'Impale', 'http://files.dodear.com/onlinegames/file/Impale.swf', 'http://localhost/development/update_timespan/timespan_admin/online_game_images/35_2708eeaab3fbf1ce3d5ea830d4dafa26.jpg', '2708eeaab3fbf1ce3d5ea830d4dafa26.jpg', 'JPEG', '5', null, null, null, null, null, null, null, null, '16/08/2016 19:57:24 pm', null, '\0');
INSERT INTO `onlinegames` VALUES ('36', '8', 'Truck Loader', 'Truck Loader', 'http://files.dodear.com/onlinegames/file/TruckLoader.swf', 'http://localhost/development/update_timespan/timespan_admin/online_game_images/36_70f4b97cd247ea2b652a8d4c92c9ff37.jpg', '70f4b97cd247ea2b652a8d4c92c9ff37.jpg', 'JPEG', '2', null, null, null, null, null, null, null, null, '16/08/2016 19:57:57 pm', null, '\0');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of online_game_categories
-- ----------------------------
INSERT INTO `online_game_categories` VALUES ('1', '123', 'test1234546', null, null, null, null, null, null, null, null, null, '');
INSERT INTO `online_game_categories` VALUES ('2', 'Action', 'Action', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `online_game_categories` VALUES ('3', 'Adventure', 'Adventure', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `online_game_categories` VALUES ('4', 'Billiards', 'Billiards', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `online_game_categories` VALUES ('5', 'Fighting', 'Fighting', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `online_game_categories` VALUES ('6', 'Game Tools', 'Game Tools', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `online_game_categories` VALUES ('7', 'Racing', 'Racing', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `online_game_categories` VALUES ('8', 'Strategy', 'Strategy', null, null, null, null, null, null, null, null, null, '\0');

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
-- Table structure for sliders
-- ----------------------------
DROP TABLE IF EXISTS `sliders`;
CREATE TABLE `sliders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_url` varchar(555) DEFAULT NULL,
  `image_name` varchar(555) DEFAULT NULL,
  `image_type` varchar(555) DEFAULT NULL,
  `create_date` varchar(555) DEFAULT NULL,
  `update_date` varchar(555) DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sliders
-- ----------------------------
INSERT INTO `sliders` VALUES ('1', 'http://localhost/development/update_timespan/timespan_admin/slider_images/1_angelina_jolie_in_wanted_1680_1050_107.jpg', 'angelina_jolie_in_wanted_1680_1050_107.jpg', 'JPEG', '17/08/2016 17:06:03 pm', '17/08/2016 17:21:35 pm', '\0');
INSERT INTO `sliders` VALUES ('2', 'http://localhost/development/update_timespan/timespan_admin/slider_images/2_Joker-The-Dark-Knight.jpg', 'Joker-The-Dark-Knight.jpg', 'JPEG', '17/08/2016 17:06:54 pm', '17/08/2016 17:24:20 pm', '\0');
INSERT INTO `sliders` VALUES ('3', 'http://localhost/development/update_timespan/timespan_admin/slider_images/3_dracula.jpg', 'dracula.jpg', 'JPEG', '17/08/2016 17:06:59 pm', '17/08/2016 17:25:13 pm', '\0');
INSERT INTO `sliders` VALUES ('4', 'http://localhost/development/update_timespan/timespan_admin/slider_images/4_batman.jpg', 'batman.jpg', 'JPEG', '17/08/2016 17:25:07 pm', null, '\0');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of softwares
-- ----------------------------
INSERT INTO `softwares` VALUES ('1', '1', 'Ashampoo Photo Commander 23', 'Ashampoo Photo Commander23', 'www.yahoo.com', '', '', '', '2', null, null, null, null, null, null, null, null, '12/08/2016 18:58:37 pm', '12/08/2016 19:13:42 pm', '\0');
INSERT INTO `softwares` VALUES ('2', '1', 'Ashampoo Photo Commander', 'Ashampoo Photo Commander', 'www.google.com', 'http://localhost/development/update_timespan/timespan_admin/software_images/_dabang2.jpg', 'dabang2.jpg', 'JPEG', '5', null, null, null, null, null, null, null, null, '12/08/2016 19:16:04 pm', null, '\0');
INSERT INTO `softwares` VALUES ('3', '1', 'test2323', 'test232', 'sdsdsdsdds', 'http://localhost/development/update_timespan/timespan_admin/software_images/3_13398431_505420046319604_741852810_n.jpg', '13398431_505420046319604_741852810_n.jpg', 'JPEG', '12', null, null, null, null, null, null, null, null, '12/08/2016 19:21:10 pm', '12/08/2016 19:22:05 pm', '\0');
INSERT INTO `softwares` VALUES ('4', '1', 'werer', 'wewe', 'wwewe', null, null, null, '3', null, null, null, null, null, null, null, null, '08/08/2016 19:21:10 pm', null, '\0');
INSERT INTO `softwares` VALUES ('5', '1', '1223', null, null, null, null, null, '39', '2', null, null, null, null, null, null, null, '07/08/2016 19:21:10 pm', null, '\0');
INSERT INTO `softwares` VALUES ('6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '\0');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tvshows
-- ----------------------------
INSERT INTO `tvshows` VALUES ('1', '2', 'Man Mayal23', 'Man Mayal23', '23232323', '', '', '', '2', null, null, null, null, null, null, null, null, '12/08/2016 19:53:14 pm', '12/08/2016 19:53:40 pm', '\0');
INSERT INTO `tvshows` VALUES ('2', '1', 'test', 'test', 'www.google.com', 'http://localhost/development/update_timespan/timespan_admin/tvshow_images/2_watch_dogs.jpg', 'watch_dogs.jpg', 'JPEG', '24', null, null, null, null, null, null, null, null, '15/08/2016 19:38:46 pm', null, '\0');
INSERT INTO `tvshows` VALUES ('3', '2', 'test123', 'test123', 'www.example.com', 'http://localhost/development/update_timespan/timespan_admin/tvshow_images/3_sultan.jpg', 'sultan.jpg', 'JPEG', '1', null, null, null, null, null, null, null, null, '15/08/2016 19:39:15 pm', null, '\0');
INSERT INTO `tvshows` VALUES ('4', '1', 'wewe', 'wewe', 'www', 'http://localhost/development/update_timespan/timespan_admin/tvshow_images/4_1920_london.jpg', '1920_london.jpg', 'JPEG', '8', '1', null, null, null, null, null, null, null, '15/08/2016 19:39:27 pm', null, '\0');

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
INSERT INTO `tvshow_categories` VALUES ('1', 'Awards Show', 'Awards Show', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `tvshow_categories` VALUES ('2', 'English TV Show', 'English TV Show', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `tvshow_categories` VALUES ('3', 'Geo Entertainment', 'Geo Entertainment', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `tvshow_categories` VALUES ('4', 'Indian Dramas', 'Indian Dramas', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `tvshow_categories` VALUES ('5', 'Indian TV shows', 'Indian TV shows', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `tvshow_categories` VALUES ('6', 'Pakistani Dramas', 'Pakistani Dramas', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `tvshow_categories` VALUES ('7', 'Stage Show', 'Stage Show', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `tvshow_categories` VALUES ('8', 'TeleDrama', 'TeleDrama', null, null, null, null, null, null, null, null, null, '\0');
INSERT INTO `tvshow_categories` VALUES ('9', '', '', null, null, null, null, null, null, null, null, null, '');

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
INSERT INTO `videos` VALUES ('1', '4', 'Tere Mast Mast Do Nain 2', 'Tere Mast Mast Do Nain 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/u4JYkwiO9GY\" frameborder=\"0\" allowfullscreen></iframe>', '', '', '', '6', null, null, null, null, null, null, null, null, '12/08/2016 18:09:56 pm', '12/08/2016 18:34:23 pm', '\0');
INSERT INTO `videos` VALUES ('2', '1', 'Dabang 3', 'Dabang 3', '', '', '', '', '1', null, null, null, null, null, null, null, null, '12/08/2016 18:10:52 pm', '12/08/2016 18:39:47 pm', '\0');
INSERT INTO `videos` VALUES ('3', '1', 'Chori Kiya Re Jiya', 'Chori Kiya Re Jiya', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/9zXJluBR26A\" frameborder=\"0\" allowfullscreen></iframe>', 'http://localhost/development/update_timespan/timespan_admin/video_images/3_sultan.jpg', 'sultan.jpg', 'JPEG', '48', null, null, null, null, null, null, null, null, '12/08/2016 18:11:38 pm', '12/08/2016 19:09:59 pm', '\0');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of wallpapers
-- ----------------------------
INSERT INTO `wallpapers` VALUES ('1', '2', 'test2323', 'test2323', 'www.google.com', 'http://localhost/development/update_timespan/timespan_admin/wallpaper_images/1_dabang.jpg', 'dabang.jpg', 'JPEG', '8', null, null, null, null, null, null, null, null, '12/08/2016 20:07:02 pm', '12/08/2016 20:07:27 pm', '\0');
INSERT INTO `wallpapers` VALUES ('2', '5', 'test90898', 'jjkjkj', 'www.google.com', 'http://localhost/development/update_timespan/timespan_admin/wallpaper_images/2_sultan.jpg', 'sultan.jpg', 'JPEG', '9', null, null, null, null, null, null, null, null, '16/08/2016 17:47:20 pm', null, '\0');
INSERT INTO `wallpapers` VALUES ('3', '5', 'test', 'test', 'www.google.com', 'http://localhost/development/update_timespan/timespan_admin/wallpaper_images/3_n0FcaBH.jpg', 'n0FcaBH.jpg', 'JPEG', '10', null, null, null, null, null, null, null, null, '16/08/2016 17:49:40 pm', null, '\0');

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
