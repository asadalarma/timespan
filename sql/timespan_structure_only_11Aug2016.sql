/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : timespan

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-08-11 20:29:04
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

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
