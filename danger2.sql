/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : danger2

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-08-10 17:22:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for categories
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
-- Table structure for chapters
-- ----------------------------
DROP TABLE IF EXISTS `chapters`;
CREATE TABLE `chapters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `video_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `index_num` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of chapters
-- ----------------------------
INSERT INTO `chapters` VALUES ('7', '31', 'asdadsd', '2', '3', '2018-08-10 17:18:17', '2018-08-10 17:18:17');
INSERT INTO `chapters` VALUES ('8', '31', 'asdasdadwa', '3', '2', '2018-08-10 17:18:13', '2018-08-10 17:18:13');
INSERT INTO `chapters` VALUES ('9', '31', 'ascyhjyt', '2', '1', '2018-08-10 17:18:07', '2018-08-10 17:18:09');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pay_status` tinyint(3) unsigned DEFAULT '0' COMMENT '0待支付  1已支付',
  `chapter_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000000048 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1000000047', '0', '9', '2018-08-10 17:22:00', '2018-08-10 17:22:00');

-- ----------------------------
-- Table structure for videos
-- ----------------------------
DROP TABLE IF EXISTS `videos`;
CREATE TABLE `videos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(2550) CHARACTER SET utf8 NOT NULL,
  `pop_num` int(10) DEFAULT '0',
  `category_id` int(11) unsigned DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0' COMMENT '0:上架  1:下架',
  `video_uri` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `desc` varchar(2550) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `category_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of videos
-- ----------------------------
INSERT INTO `videos` VALUES ('31', '标题标题31', '99', '1', '0', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-10 17:20:39', '2018-08-10 17:20:39', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('32', '标题标题', '98', '1', '0', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-10 09:17:14', '2018-08-10 09:17:14', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('33', '标题标题12', '971', '1', '0', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-10 09:17:21', '2018-08-10 09:17:21', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('34', '标题标题', '96', '1', '0', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-10 09:17:22', '2018-08-10 09:17:22', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('35', '标题标题1', '951', '1', '0', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-10 09:17:20', '2018-08-10 09:17:20', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('36', '标题标题2', '912', '1', '0', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-10 09:17:19', '2018-08-10 09:17:19', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('37', '标题标题', '93', '1', '0', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-10 09:17:19', '2018-08-10 09:17:19', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('39', '标题标题', '91', '1', '0', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-10 09:17:18', '2018-08-10 09:17:18', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('40', '标题标题4', '212', '1', '0', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-10 09:17:18', '2018-08-10 09:17:18', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('41', '标题标题3', '892', '1', '0', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-10 09:17:18', '2018-08-10 09:17:18', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('42', '标题标题', '88', '1', '0', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-10 09:17:17', '2018-08-10 09:17:17', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('43', '标题标题', '87', '1', '0', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-10 15:49:10', '2018-08-10 15:49:10', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('44', '标题标题5', '100', '2', '0', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-10 09:17:17', '2018-08-10 09:17:17', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('45', '标题标题', '99', '2', '0', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-10 09:17:16', '2018-08-10 09:17:16', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('46', '标题标题', '98', '2', '0', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-10 10:51:36', '2018-08-10 10:51:36', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('47', '标题标题', '97', '2', '0', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-10 09:17:14', '2018-08-10 09:17:14', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('48', '标题标题', '96', '2', '0', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-10 09:17:15', '2018-08-10 09:17:15', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('49', '标题标题', '95', '2', '0', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-10 09:17:24', '2018-08-10 09:17:24', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('50', '标题标题', '94', '2', '0', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-10 09:17:24', '2018-08-10 09:17:24', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('51', '标题标题', '93', '2', '0', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-10 09:17:23', '2018-08-10 09:17:23', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('52', '标题标题', '92', '2', '0', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-10 09:17:23', '2018-08-10 09:17:23', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('53', '标题标题', '91', '2', '0', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-10 09:17:32', '2018-08-10 09:17:32', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('54', '标题标题', '90', '2', '0', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-10 09:17:32', '2018-08-10 09:17:32', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('55', '标题标题', '89', '2', '0', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-10 09:17:32', '2018-08-10 09:17:32', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('56', '标题标题', '89', '1', '0', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-10 09:17:31', '2018-08-10 09:17:31', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('57', '标题标题', '78', '2', '0', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-10 09:17:31', '2018-08-10 09:17:31', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('58', '标题标题', '23', '2', '0', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-10 09:17:30', '2018-08-10 09:17:30', '描述描述描述描述描述描述描述描述描述');
INSERT INTO `videos` VALUES ('59', '测试', '0', '1', '0', 'http://www.xiaoheju.com/fiml/44360.html', '2018-08-10 09:17:30', '2018-08-10 09:17:30', '剧情简介：\r\n《西虹市首富》是由闫非、彭大魔编剧兼执导，沈腾、宋芸桦、张一鸣、常远、艾伦、徐冬冬、魏翔、王成思、陶亮等主演的喜剧片。讲述的是混迹于丙级业余足球队的守门员王多鱼(沈腾饰)，因比赛失利被开除离队，却意外获得大笔财富，由此引发一系列令人哭笑不得的事件。影片将于2018年7月27日中国上映。《西虹市首富》...展开》》');
INSERT INTO `videos` VALUES ('60', '4123213', '0', '2', '0', 'https://www.wpyou.com/popunion.html', '2018-08-10 09:17:29', '2018-08-10 09:17:29', '描述描述描述描述');
INSERT INTO `videos` VALUES ('61', '是的', '0', '1', '0', 'https://www.wpyou.com/popunion.html', '2018-08-10 09:17:29', '2018-08-10 09:17:29', '描述描述描述');
INSERT INTO `videos` VALUES ('62', '是的', '0', '1', '0', 'https://www.wpyou.com/popunion.html', '2018-08-10 09:17:28', '2018-08-10 09:17:28', '描述描述描述');
INSERT INTO `videos` VALUES ('63', '是的', '0', '1', '0', 'https://www.wpyou.com/popunion.html', '2018-08-10 09:17:28', '2018-08-10 09:17:28', '描述描述描述');
INSERT INTO `videos` VALUES ('66', '测试111213', '0', '2', '0', 'https://www.wpyou.com/popunion.html', '2018-08-10 09:21:54', '2018-08-10 09:21:54', '描述                    描述描述描述描述');
INSERT INTO `videos` VALUES ('67', '啊啊啊啊啊', '0', '2', '0', 'http://naotu.baidu.com/file/81bbf949f877b4295cf1ca228d652641', '2018-08-10 16:18:28', '2018-08-10 16:18:28', '阿萨达多');
INSERT INTO `videos` VALUES ('68', '2131', '0', '1', '0', null, '2018-08-10 17:07:03', '2018-08-10 17:07:03', 'asdad');
INSERT INTO `videos` VALUES ('69', 'bbbb', '0', '1', '0', null, '2018-08-10 17:07:10', '2018-08-10 17:07:10', 'asd');
