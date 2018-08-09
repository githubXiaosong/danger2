/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : danger

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-08-05 14:18:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `categories`
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(4) DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', '类型1', '2018-07-27 09:36:38', '2018-07-27 09:36:41', '0');
INSERT INTO `categories` VALUES ('2', '类型2', '2018-07-27 09:36:42', '2018-07-27 09:36:43', '0');

-- ----------------------------
-- Table structure for `videos`
-- ----------------------------
DROP TABLE IF EXISTS `videos`;
CREATE TABLE `videos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(2550) CHARACTER SET utf8 NOT NULL,
  `pop_num` int(10) DEFAULT '0',
  `category_id` int(11) unsigned DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0' COMMENT '0:上架  1:下架',
  `cover_uri` varchar(2550) DEFAULT NULL,
  `video_uri` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `desc` varchar(2550) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `category_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of videos
-- ----------------------------
INSERT INTO `videos` VALUES ('19', '标题标题', '92', '1', '0', 'img/201610011475310373.jpg', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-04 18:40:14', '2018-08-04 18:40:14', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('31', '标题标题', '99', '1', '0', 'img/201610011475310373.jpg', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-04 18:39:31', '2018-08-04 18:39:31', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('32', '标题标题', '98', '1', '0', 'img/201610011475310373.jpg', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-04 18:39:31', '2018-08-04 18:39:31', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('33', '标题标题12', '971', '1', '0', 'img/201610011475310373.jpg', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-04 22:44:04', '2018-08-04 22:44:04', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('34', '标题标题', '96', '1', '0', 'img/201610011475310373.jpg', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-04 18:39:32', '2018-08-04 18:39:32', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('35', '标题标题1', '951', '1', '0', 'img/201610011475310373.jpg', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-04 22:42:44', '2018-08-04 22:42:44', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('36', '标题标题2', '912', '1', '0', 'img/201610011475310373.jpg', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-04 22:42:46', '2018-08-04 22:42:46', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('37', '标题标题', '93', '1', '0', 'img/201610011475310373.jpg', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-04 18:39:33', '2018-08-04 18:39:33', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('38', '标题标题6', '123', '1', '0', 'img/201610011475310373.jpg', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-04 22:43:10', '2018-08-04 22:43:10', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('39', '标题标题', '91', '1', '0', 'img/201610011475310373.jpg', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-04 18:39:34', '2018-08-04 18:39:34', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('40', '标题标题4', '212', '1', '0', 'img/201610011475310373.jpg', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-04 22:42:49', '2018-08-04 22:42:49', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('41', '标题标题3', '892', '1', '0', 'img/201610011475310373.jpg', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-04 22:42:47', '2018-08-04 22:42:47', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('42', '标题标题', '88', '1', '0', 'img/201610011475310373.jpg', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-04 18:39:35', '2018-08-04 18:39:35', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('43', '标题标题', '87', '1', '0', 'img/201610011475310373.jpg', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-04 18:39:35', '2018-08-04 18:39:35', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('44', '标题标题5', '100', '2', '0', 'img/201610011475310373.jpg', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-04 22:42:51', '2018-08-04 22:42:51', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('45', '标题标题', '99', '2', '0', 'img/201610011475310373.jpg', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-04 18:39:36', '2018-08-04 18:39:36', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('46', '标题标题', '98', '2', '0', 'img/201610011475310373.jpg', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-04 18:39:36', '2018-08-04 18:39:36', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('47', '标题标题', '97', '2', '0', 'img/201610011475310373.jpg', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-04 18:39:36', '2018-08-04 18:39:36', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('48', '标题标题', '96', '2', '0', 'img/201610011475310373.jpg', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-04 18:39:37', '2018-08-04 18:39:37', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('49', '标题标题', '95', '2', '0', 'img/201610011475310373.jpg', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-04 18:39:37', '2018-08-04 18:39:37', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('50', '标题标题', '94', '2', '0', 'img/201610011475310373.jpg', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-04 18:39:37', '2018-08-04 18:39:37', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('51', '标题标题', '93', '2', '0', 'img/201610011475310373.jpg', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-04 18:39:37', '2018-08-04 18:39:37', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('52', '标题标题', '92', '2', '0', 'img/201610011475310373.jpg', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-04 18:39:38', '2018-08-04 18:39:38', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('53', '标题标题', '91', '2', '0', 'img/201610011475310373.jpg', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-04 18:39:38', '2018-08-04 18:39:38', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('54', '标题标题', '90', '2', '0', 'img/201610011475310373.jpg', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-04 18:39:39', '2018-08-04 18:39:39', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('55', '标题标题', '89', '2', '0', 'img/201610011475310373.jpg', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-04 18:39:50', '2018-08-04 18:39:50', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('56', '标题标题', '89', '1', '0', 'img/201610011475310373.jpg', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-04 22:58:00', '2018-08-04 22:58:00', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('57', '标题标题', '78', '2', '0', 'img/201610011475310373.jpg', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-04 22:58:53', '2018-08-04 22:58:53', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('58', '标题标题', '23', '2', '0', 'img/201610011475310373.jpg', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-04 22:59:10', '2018-08-04 22:59:10', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('59', '测试', '0', '1', '0', 'img/V7fY6I7f2aQvlH1Ay6qv9LyGZFa1iWXFrmPzE4dL.jpeg', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-05 00:17:27', '2018-08-05 00:17:27', '剧情简介：\r\n《西虹市首富》是由闫非、彭大魔编剧兼执导，沈腾、宋芸桦、张一鸣、常远、艾伦、徐冬冬、魏翔、王成思、陶亮等主演的喜剧片。讲述的是混迹于丙级业余足球队的守门员王多鱼(沈腾饰)，因比赛失利被开除离队，却意外获得大笔财富，由此引发一系列令人哭笑不得的事件。影片将于2018年7月27日中国上映。《西虹市首富》...展开》》');
