/*
 Navicat Premium Data Transfer

 Source Server         : island
 Source Server Type    : MySQL
 Source Server Version : 50505
 Source Host           : localhost
 Source Database       : island

 Target Server Type    : MySQL
 Target Server Version : 50505
 File Encoding         : utf-8

 Date: 05/17/2019 16:46:08 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `book`
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `fav_nums` int(11) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(12) DEFAULT NULL,
  `nums` int(11) DEFAULT '0',
  `book_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `favor`
-- ----------------------------
DROP TABLE IF EXISTS `favor`;
CREATE TABLE `favor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `art_id` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `flow`
-- ----------------------------
DROP TABLE IF EXISTS `flow`;
CREATE TABLE `flow` (
  `created_at` datetime DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `index` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `art_id` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `flow`
-- ----------------------------
BEGIN;
INSERT INTO `flow` VALUES ('2019-04-05 17:11:14', '1', '1', '1', '200', '3', null, null), ('2019-04-05 17:11:21', '1', '2', '2', '300', '2', null, null), ('2019-04-05 17:11:27', '1', '3', '3', '200', '2', null, null), ('2019-04-02 17:11:50', '1', '4', '4', '100', '2', null, null), ('2019-04-17 17:11:56', '1', '5', '6', '300', '1', null, null), ('2019-04-05 17:12:00', '1', '6', '7', '200', '1', null, null), ('2019-04-05 17:12:04', '1', '7', '8', '100', '1', null, null), ('2019-04-05 17:12:07', '1', '8', '5', '200', '4', null, null);
COMMIT;

-- ----------------------------
--  Table structure for `hot_book`
-- ----------------------------
DROP TABLE IF EXISTS `hot_book`;
CREATE TABLE `hot_book` (
  `created_at` datetime DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `index` int(11) DEFAULT NULL,
  `image` varchar(64) DEFAULT NULL,
  `author` varchar(25) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=51665 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `hot_book`
-- ----------------------------
BEGIN;
INSERT INTO `hot_book` VALUES ('0000-00-00 00:00:00', '1', '7', '1', 'https://img3.doubanio.com/lpic/s4669554.jpg', '[???]????????????????????', '???????????????', null, null), ('0000-00-00 00:00:00', '1', '65', '2', 'https://img3.doubanio.com/lpic/s4059293.jpg', 'MarkPilgrim', 'Dive Into Python 3', null, null), ('0000-00-00 00:00:00', '1', '183', '3', 'https://img3.doubanio.com/lpic/s4387251.jpg', 'MagnusLieHetland', 'Python????????????', null, null), ('0000-00-00 00:00:00', '1', '1002', '4', 'https://img3.doubanio.com/lpic/s6384944.jpg', '[????????????]???????????????????????', '????????????', null, null), ('0000-00-00 00:00:00', '1', '1049', '5', 'https://img1.doubanio.com/view/subject/l/public/s29775868.jpg', '[???]????????????', '??????', null, null), ('0000-00-00 00:00:00', '1', '1061', '6', 'https://img3.doubanio.com/lpic/s1358984.jpg', '[???]????????R??R????????', '???????????????????????????', null, null), ('0000-00-00 00:00:00', '1', '1120', '7', 'https://img3.doubanio.com/lpic/s4610502.jpg', '[???]????????????', '?????????', null, null), ('0000-00-00 00:00:00', '1', '1166', '8', 'https://img1.doubanio.com/lpic/s23632058.jpg', '??????', '????????????', null, null), ('0000-00-00 00:00:00', '1', '1308', '9', 'https://img3.doubanio.com/lpic/s3814606.jpg', '[???]????????????', '??????', null, null), ('0000-00-00 00:00:00', '1', '1339', '10', 'https://img3.doubanio.com/lpic/s1074376.jpg', '[???]J??K????????', '??????????????????????????????????????', null, null), ('0000-00-00 00:00:00', '1', '1383', '11', 'https://img1.doubanio.com/lpic/s3557848.jpg', '??????', '?????????', null, null), ('0000-00-00 00:00:00', '1', '1398', '12', 'https://img1.doubanio.com/lpic/s2752367.jpg', '[???]J??K????????', '?????????????????????????????', null, null), ('0000-00-00 00:00:00', '1', '1560', '13', 'https://img1.doubanio.com/lpic/s3463069.jpg', '?????????', '????????????', null, null), ('0000-00-00 00:00:00', '1', '7821', '14', 'https://img3.doubanio.com/lpic/s6144591.jpg', '[??????]?????????????????', '??????????????????', null, null), ('0000-00-00 00:00:00', '1', '8854', '15', 'https://img1.doubanio.com/lpic/s29494718.jpg', '[???]????????????', '???????????????', null, null), ('0000-00-00 00:00:00', '1', '8866', '16', 'https://img3.doubanio.com/lpic/s2393243.jpg', '??????', '?????????????????????', null, null), ('0000-00-00 00:00:00', '1', '15198', '17', 'https://img1.doubanio.com/lpic/s1080179.jpg', '??????', '??????????????????', null, null), ('0000-00-00 00:00:00', '1', '15984', '18', 'https://img3.doubanio.com/lpic/s27970504.jpg', '??????', '????????????', null, null), ('0000-00-00 00:00:00', '1', '21050', '19', 'https://img3.doubanio.com/lpic/s2853431.jpg', '[???]????????????', '????????????31', null, null), ('0000-00-00 00:00:00', '1', '51664', '20', 'https://img3.doubanio.com/lpic/s29034294.jpg', '[???]???????????????', '???????????????', null, null);
COMMIT;

-- ----------------------------
--  Table structure for `movie`
-- ----------------------------
DROP TABLE IF EXISTS `movie`;
CREATE TABLE `movie` (
  `created_at` datetime DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(64) DEFAULT NULL,
  `content` varchar(300) DEFAULT NULL,
  `pubdate` date DEFAULT NULL,
  `fav_nums` smallint(6) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `movie`
-- ----------------------------
BEGIN;
INSERT INTO `movie` VALUES ('0000-00-00 00:00:00', '1', '1', 'images/movie.8.png', '?????????????????????????????????????????????????????????', '2018-06-22', '165', '????????????????????? ???', '100', '2019-04-18 02:40:48', null), ('0000-00-00 00:00:00', '1', '2', 'images/movie.4.png', '??????????????????????????????????????????????????????', '2018-06-22', '46', '???????????????????????????', '100', '2019-04-09 04:34:38', null);
COMMIT;

-- ----------------------------
--  Table structure for `music`
-- ----------------------------
DROP TABLE IF EXISTS `music`;
CREATE TABLE `music` (
  `created_at` datetime DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(64) DEFAULT NULL,
  `content` varchar(300) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `pubdate` date DEFAULT NULL,
  `fav_nums` smallint(6) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `music`
-- ----------------------------
BEGIN;
INSERT INTO `music` VALUES ('0000-00-00 00:00:00', '1', '1', 'images/music.7.png', '????????????????????? ?????????????????????', 'http://music.163.com/song/media/outer/url?id=393926.mp3', '2018-06-22', '95', '200', '?????????????????????????????????', null, '2019-04-17 18:25:12'), ('0000-00-00 00:00:00', '1', '2', 'images/music.1.png', '????????????????????? ??????????????????', 'http://music.163.com/song/media/outer/url?id=516076896.mp3', '2018-06-22', '47', '200', '?????? ??????????????????', null, '2019-04-10 09:13:12'), ('0000-00-00 00:00:00', '1', '3', 'images/music.3.png', '?????????????????????', 'http://music.163.com/song/media/outer/url?id=317245.mp3', '2018-06-22', '44', '200', '??????????????????????????????', null, '2019-04-12 11:59:49'), ('0000-00-00 00:00:00', '1', '4', 'images/music.5.png', '???????????????????????????????????????', 'http://music.163.com/song/media/outer/url?id=26427662.mp3', '2018-06-22', '68', '200', '????????? ????????????????????????', null, null);
COMMIT;

-- ----------------------------
--  Table structure for `sentence`
-- ----------------------------
DROP TABLE IF EXISTS `sentence`;
CREATE TABLE `sentence` (
  `created_at` datetime DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(64) DEFAULT NULL,
  `content` varchar(300) DEFAULT NULL,
  `pubdate` date DEFAULT NULL,
  `fav_nums` smallint(6) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `sentence`
-- ----------------------------
BEGIN;
INSERT INTO `sentence` VALUES ('0000-00-00 00:00:00', '1', '1', 'images/sentence.6.png', '???????????????????????????', '2018-06-22', '72', '??????', '300', '2019-04-12 12:13:37', null), ('0000-00-00 00:00:00', '1', '2', 'images/sentence.2.png', '?????????????????????????????????', '2018-06-22', '33', '??????', '300', '2019-04-10 09:13:28', null);
COMMIT;

-- ----------------------------
--  Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `openid` varchar(64) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `openid` (`openid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

SET FOREIGN_KEY_CHECKS = 1;
