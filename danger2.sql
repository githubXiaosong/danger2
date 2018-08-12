/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : 127.0.0.1:3306
Source Database       : danger2

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-08-12 16:09:35
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', '慕课网', '2018-08-12 12:00:25', '2018-08-12 12:00:25', '0');
INSERT INTO `categories` VALUES ('2', '极客学院', '2018-08-12 12:00:44', '2018-08-12 12:00:44', '0');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pay_status` tinyint(3) unsigned DEFAULT '0' COMMENT '0待支付  1已支付',
  `video_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000000100 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1000000077', '0', '84', '2018-08-12 12:19:38', '2018-08-12 12:19:38');
INSERT INTO `orders` VALUES ('1000000078', '0', '84', '2018-08-12 12:21:03', '2018-08-12 12:21:03');
INSERT INTO `orders` VALUES ('1000000079', '0', '84', '2018-08-12 12:21:11', '2018-08-12 12:21:11');
INSERT INTO `orders` VALUES ('1000000080', '0', '84', '2018-08-12 12:21:30', '2018-08-12 12:21:30');
INSERT INTO `orders` VALUES ('1000000081', '0', '84', '2018-08-12 12:21:38', '2018-08-12 12:21:38');
INSERT INTO `orders` VALUES ('1000000082', '0', '84', '2018-08-12 12:21:41', '2018-08-12 12:21:41');
INSERT INTO `orders` VALUES ('1000000083', '0', '84', '2018-08-12 12:21:52', '2018-08-12 12:21:52');
INSERT INTO `orders` VALUES ('1000000084', '0', '84', '2018-08-12 12:22:14', '2018-08-12 12:22:14');
INSERT INTO `orders` VALUES ('1000000085', '0', '84', '2018-08-12 12:22:43', '2018-08-12 12:22:43');
INSERT INTO `orders` VALUES ('1000000086', '0', '84', '2018-08-12 12:22:52', '2018-08-12 12:22:52');
INSERT INTO `orders` VALUES ('1000000087', '0', '84', '2018-08-12 12:22:58', '2018-08-12 12:22:58');
INSERT INTO `orders` VALUES ('1000000088', '0', '84', '2018-08-12 12:23:11', '2018-08-12 12:23:11');
INSERT INTO `orders` VALUES ('1000000089', '0', '84', '2018-08-12 12:24:15', '2018-08-12 12:24:15');
INSERT INTO `orders` VALUES ('1000000090', '0', '86', '2018-08-12 12:34:48', '2018-08-12 12:34:48');
INSERT INTO `orders` VALUES ('1000000091', '0', '87', '2018-08-12 12:36:56', '2018-08-12 12:36:56');
INSERT INTO `orders` VALUES ('1000000092', '0', '86', '2018-08-12 13:55:41', '2018-08-12 13:55:41');
INSERT INTO `orders` VALUES ('1000000093', '0', '87', '2018-08-12 13:55:43', '2018-08-12 13:55:43');
INSERT INTO `orders` VALUES ('1000000094', '0', '88', '2018-08-12 13:55:46', '2018-08-12 13:55:46');
INSERT INTO `orders` VALUES ('1000000095', '0', '503', '2018-08-12 15:17:00', '2018-08-12 15:17:00');
INSERT INTO `orders` VALUES ('1000000096', '0', '519', '2018-08-12 15:17:38', '2018-08-12 15:17:38');
INSERT INTO `orders` VALUES ('1000000097', '0', '257', '2018-08-12 15:21:27', '2018-08-12 15:21:27');
INSERT INTO `orders` VALUES ('1000000098', '0', '513', '2018-08-12 15:21:28', '2018-08-12 15:21:28');
INSERT INTO `orders` VALUES ('1000000099', '0', '595', '2018-08-12 15:59:18', '2018-08-12 15:59:18');

-- ----------------------------
-- Table structure for videos
-- ----------------------------
DROP TABLE IF EXISTS `videos`;
CREATE TABLE `videos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(2550) CHARACTER SET utf8 NOT NULL,
  `cover_uri` varchar(255) DEFAULT NULL,
  `uri` varchar(2550) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL COMMENT '百度网盘密码',
  `price` int(11) DEFAULT NULL,
  `pop_num` int(10) DEFAULT '0',
  `category_id` int(11) unsigned DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0' COMMENT '0:上架  1:下架',
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `desc` varchar(2550) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `category_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=596 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of videos
-- ----------------------------
INSERT INTO `videos` VALUES ('90', 'Laravel5.4 快速开发简书网站', 'https://img.mukewang.com/szimg/593a7a470001bcff05400300-360-202.jpg', 'https://pan.baidu.com/s/1GEpq3q6bNXUqRayPF7A7NQ', '9rcu', '5', '0', '1', '0', '2018-08-12 14:07:06', '2018-08-12 14:07:06', '11');
INSERT INTO `videos` VALUES ('91', 'Spring Boot 2.0深度实践之核心技术篇', '//img.mukewang.com/szimg/5b4c817f0001945605400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('92', 'Python flask构建微信小程序订餐系统', '//img.mukewang.com/szimg/5b67a8a10001d05905400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('93', 'RabbitMQ消息中间件技术精讲', '//img.mukewang.com/szimg/5b6015ac00011ca105400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('94', 'Vue2.5开发去哪儿网App 从零基础入门到实战项目', '//img.mukewang.com/szimg/5ac2dfe100014a9005400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('95', '玩转数据结构 从入门到进阶', '//img.mukewang.com/szimg/5ad05dc00001eae705400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('96', 'NLP 实践 TensorFlow 打造聊天机器人', '//img.mukewang.com/szimg/5b6910d30001adad05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('97', 'SpringBoot 仿抖音短视频小程序开发 全栈式实战项目', '//img.mukewang.com/szimg/5afb8aa900014cc705400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('98', 'Java并发编程与高并发解决方案', '//img.mukewang.com/szimg/5aaa55850001a3ef10800600-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('99', 'Vue.js 源码全方位深入解析', '//img.mukewang.com/szimg/5b17bad10001535305400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('100', 'Spring Cloud微服务实战', '//img.mukewang.com/szimg/5a9ca4e80001786305400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('101', 'Java生产环境下性能监控与调优详解', '//img.mukewang.com/szimg/5b384772000132c405400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('102', '掌握前端面试技巧 让你比面试官更了解面试', '//img.mukewang.com/szimg/59897b1600011ec805400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('103', '深度学习之神经网络（CNN/RNN/GAN）算法原理+实战', '//img.mukewang.com/szimg/5b56952600014eb005400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('104', '纯正商业级应用-微信小程序开发实战', '//img.mukewang.com/szimg/5b4bfb7000019d2e10800600-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('105', 'Java仿微信全栈  高性能后台+移动客户端', '//img.mukewang.com/szimg/5b5ad11b0001261305400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('106', 'Koa2 实现电影微信公众号前后端开发', '//img.mukewang.com/szimg/5b614ac3000185f805400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('107', '专为程序员设计的线性代数课程', '//img.mukewang.com/szimg/5b5835a60001907e05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('108', 'JAVA分布式优惠券系统后台 手把手实战开发', '//img.mukewang.com/szimg/5b55356c0001af0105400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('109', 'Javascript 设计模式系统讲解与应用', '//img.mukewang.com/szimg/5b4f02bd0001870c06000338-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('110', 'Jenkins+Ansible+Gitlab自动化部署三剑客', '//img.mukewang.com/szimg/5b4d9a8b00014cc405400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('111', 'Python3实战Spark大数据分析及调度', '//img.mukewang.com/szimg/5b4421010001ff1805400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('112', '原理+实战 快速掌握响应式开发', '//img.mukewang.com/szimg/5b3f2c890001d1b305400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('113', 'XSS跨站漏洞 加强Web安全', '//img.mukewang.com/szimg/5b3c409b0001c33e05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('114', 'TestNG测试框架入门到实战', '//img.mukewang.com/szimg/5b39eb5a00016c4205400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('115', '最火Python3 玩转实用小工具', '//img.mukewang.com/szimg/5b3307f50001859e05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('116', '中小型企业通用自动化运维架构', '//img.mukewang.com/szimg/5b3204580001f28805400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('117', 'React16.4 开发简书项目 从零基础入门到实战', '//img.mukewang.com/szimg/5b3082da0001d7e905400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('118', 'selenium3.0平台级自动化测试框架综合实战', '//img.mukewang.com/szimg/5b2cd8590001c61505400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('119', '分布式事务实践 解决数据一致性', '//img.mukewang.com/szimg/5b2a29d50001bf4605400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('120', 'React全家桶+AntD 共享单车后台管理系统开发', '//img.mukewang.com/szimg/5b28a9cf00017c9a05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('121', '基于 GitHub App 业务深度讲解 Kotlin1.2高级特性与框架设计', '//img.mukewang.com/szimg/5b190aa4000148c605400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('122', 'Java读源码之Netty深入剖析', '//img.mukewang.com/szimg/5b165c2b0001e24a05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('123', 'Go语言实战流媒体视频网站', '//img.mukewang.com/szimg/5b1121f70001ff3205400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('124', 'Activiti6.0工作流引擎深度解析与实战', '//img.mukewang.com/szimg/5b0e922f0001910905400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('125', 'HTTP协议原理+实践 Web开发工程师必学', '//img.mukewang.com/szimg/5b0cb5df00016e5405400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('126', '微信小程序入门与实战 常用组件API开发技巧项目实战', '//img.mukewang.com/szimg/583e42fb0001e04f05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('127', '阿里大牛亲授  阿里云主机(ECS)与CentOS7实战', '//img.mukewang.com/szimg/5b0b60480001b95e06000338-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('128', 'Python Flask构建可扩展的RESTful API', '//img.mukewang.com/szimg/5b061fe30001db4505400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('129', '聚焦Python分布式爬虫必学框架Scrapy 打造搜索引擎', '//img.mukewang.com/szimg/58d21b90000135a105400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('130', '抖音级短视频App交互设计系统学习与实战', '//img.mukewang.com/szimg/5b03d17b0001d9ce05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('131', 'Docker环境下的前后端分离项目部署与运维', '//img.mukewang.com/szimg/5aff82e90001d29e05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('132', '全网首发mpvue课程小程序全栈开发', '//img.mukewang.com/szimg/5afbd8bf000175f805400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('133', '从原理到场景 系统讲解 PHP 缓存技术', '//img.mukewang.com/szimg/5af5413600011b1d05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('134', '区块链入门与去中心化应用实战', '//img.mukewang.com/szimg/5af2a67500016b9905400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('135', '学习Scala 进击大数据Spark生态圈', '//img.mukewang.com/szimg/5af17d9500011dc105400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('136', 'Python3实用编程技巧进阶', '//img.mukewang.com/szimg/5aec33fd0001c86805400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('137', 'SpringBoot开发理财产品系统', '//img.mukewang.com/szimg/5ae4172200010b8f05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('138', 'H5和小程序直播开发 零距离快速入门', '//img.mukewang.com/szimg/5adfed310001efee05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('139', 'SpringBoot2.0不容错过的新特性 WebFlux响应式编程', '//img.mukewang.com/szimg/5ad9e5a80001732c05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('140', '验证码图像识别，快速掌握TensorFlow模型构建与开发', '//img.mukewang.com/szimg/5ad94a9800015dd410800600-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('141', 'MyCAT+MySQL 搭建高可用企业级数据库集群', '//img.mukewang.com/szimg/5ad5568300018ede05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('142', 'Gradle3.0自动化项目构建技术精讲+实战', '//img.mukewang.com/szimg/5acf37460001aa3405400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('143', 'HBase+SpringBoot实战分布式文件存储', '//img.mukewang.com/szimg/5acc60d80001ef7605400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('144', '最全面的Java接口自动化测试实战', '//img.mukewang.com/szimg/5ac9d67e0001395c05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('145', '新浪微博资深大牛全方位剖析 iOS 高级面试', '//img.mukewang.com/szimg/5abe148300014c3305400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('146', 'Python高级编程和异步IO并发编程', '//img.mukewang.com/szimg/5abcabea00014f6b10800600-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('147', 'App界面设计利器Sketch  精选案例合集', '//img.mukewang.com/szimg/5abb3a4900010d6905400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('148', 'ZooKeeper分布式专题与Dubbo微服务入门', '//img.mukewang.com/szimg/5ab9be440001b21f05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('149', 'Python Flask高级编程', '//img.mukewang.com/szimg/5ab84f650001f0b005400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('150', 'Docker+Kubernetes(k8s)微服务容器化实践', '//img.mukewang.com/szimg/5ab3a1240001e67910800600-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('151', '韩天峰力荐 Swoole入门到实战打造高性能赛事直播平台', '//img.mukewang.com/szimg/5ab0fd1400010d7d10800600-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('152', 'Vue核心技术 Vue+Vue-Router+Vuex+SSR实战精讲', '//img.mukewang.com/szimg/5aab7f270001909810800600-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('153', '高薪设计师必修课 AE移动UI动效设计从入门到实战', '//img.mukewang.com/szimg/5aa9d2c1000104d510800600-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('154', 'Python主讲移动端自动化测试框架Appium 从基础到项目实战', '//img.mukewang.com/szimg/5aa781790001ba2c05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('155', '基于Golang协程实现流量统计系统', '//img.mukewang.com/szimg/5aa27bbd0001b80405400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('156', 'OpenCV+TensorFlow 入门人工智能图像处理', '//img.mukewang.com/szimg/5a9f4c2e00010ce205400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('157', '揭秘一线互联网企业 前端JavaScript高级面试', '//img.mukewang.com/szimg/5a9dfab40001bf1005400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('158', '系统学习Docker 践行DevOps理念', '//img.mukewang.com/szimg/5a9614850001bc3405400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('159', 'Tomcat+Memcached/Redis集群 构建高可用解决方案', '//img.mukewang.com/szimg/5a82c6c200013f0905400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('160', 'Python3数据分析与挖掘建模实战', '//img.mukewang.com/szimg/5a8150100001424f05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('161', 'Python移动自动化测试面试', '//img.mukewang.com/szimg/5a794b0700011e4b05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('162', 'Elastic Stack从入门到实践', '//img.mukewang.com/szimg/5a7441e30001d4f805400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('163', '微信小游戏入门与实战 刷爆朋友圈', '//img.mukewang.com/szimg/5a7279250001e10705400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('164', 'Google资深工程师深度讲解Go语言', '//img.mukewang.com/szimg/5a7127370001a8fa05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('165', 'React16+React-Router4 从零打造企业级电商后台管理系统', '//img.mukewang.com/szimg/5a6e7fdf0001e7bb05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('166', 'Koa2框架从0开始构建预告片网站', '//img.mukewang.com/szimg/5a67ebf50001b6d005400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('167', '从天气项目入门 Spring Cloud 微服务治理', '//img.mukewang.com/szimg/5a6547290001be8805400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('168', '基于Python玩转人工智能最火框架 TensorFlow应用实践', '//img.mukewang.com/szimg/5a5ddeda000145b405400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('169', '前端面试项目冲刺，京东金融Vue组件化实战', '//img.mukewang.com/szimg/5a5c07bd00010ee005400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('170', 'Python+Django+Ansible Playbook自动化运维项目实战', '//img.mukewang.com/szimg/5a5334a50001d3dc05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('171', 'Java深入微服务原理改造房产销售平台', '//img.mukewang.com/szimg/5a52d6630001cfd305400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('172', '基于Storm构建实时热力分布项目实战', '//img.mukewang.com/szimg/5a4ae67500012b6105400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('173', '专为初学者打造的软件测试入门的首选课堂', '//img.mukewang.com/szimg/5a4d9b04000137b605400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('174', '四大维度解锁 Webpack 前端工程化', '//img.mukewang.com/szimg/5a4302b00001942405400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('175', 'Java秒杀系统方案优化 高性能高并发实战', '//img.mukewang.com/szimg/5a405cbc000124ca05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('176', 'Python3入门机器学习 经典算法与应用', '//img.mukewang.com/szimg/5a39cd3f0001c09805400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('177', 'BAT大牛亲授 基于ElasticSearch的搜房网实战', '//img.mukewang.com/szimg/5a308c9400011c1305400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('178', 'Kotlin打造完整电商APP 模块化+MVP+主流框架', '//img.mukewang.com/szimg/5a2f49b00001bd3105400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('179', '全面系统讲解CSS 工作应用+面试一步搞定', '//img.mukewang.com/szimg/5a24c8840001af4405400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('180', '快速上手Ionic3 多平台开发企业级问答社区', '//img.mukewang.com/szimg/5a1e4bad0001eb0605400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('181', 'Webpack + React全栈工程架构项目实战精讲', '//img.mukewang.com/szimg/5a17ef670001292c05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('182', 'Java企业级电商项目架构演进之路  Tomcat集群与Redis分布式', '//img.mukewang.com/szimg/5a16336900014ca405400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('183', 'RxJava从源码到应用 移动端开发效率秒提速', '//img.mukewang.com/szimg/5a66a66800016cba05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('184', '移动端App UI 设计入门与实战', '//img.mukewang.com/szimg/5a123d7e00011fa705400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('185', 'Android高级面试 10大开源框架源码解析', '//img.mukewang.com/szimg/5a0ceed40001528605400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('186', 'Python3数据科学入门与实战', '//img.mukewang.com/szimg/5a097bde00019ed605400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('187', 'Python接口测试框架实战与自动化进阶', '//img.mukewang.com/szimg/5a014f130001fb7105400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('188', '快速上手Linux 玩转典型应用', '//img.mukewang.com/szimg/59fc347400016ad405400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('189', 'Spark Streaming实时流处理项目实战', '//img.mukewang.com/szimg/59f85ec90001103405400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('190', 'ES6+ 开发电商网站的账号体系 JS SDK', '//img.mukewang.com/szimg/59f684ee0001dbfa05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('191', '一站式学习Redis  从入门到高可用分布式实践', '//img.mukewang.com/szimg/5b46c4460001ae0805400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('192', 'Redux+React Router+Node.js全栈开发', '//img.mukewang.com/szimg/59ed4c380001cbc405400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('193', 'Java开发企业级权限管理系统', '//img.mukewang.com/szimg/59e6b62c0001fbc805400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('194', 'PHP秒杀系统  高并发高性能的极致挑战', '//img.mukewang.com/szimg/59e40e200001bea605400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('195', 'BAT大厂APP架构演进实践与优化之路', '//img.mukewang.com/szimg/59dc79420001530905400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('196', '毕设项目 SSM到Spring Boot 从零开发校园商铺平台', '//img.mukewang.com/szimg/59c9b245000143ae05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('197', 'Node.js入门到企业Web开发中的应用', '//img.mukewang.com/szimg/59c860220001247d05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('198', 'JMeter 深入进阶性能测试体系 各领域企业实战', '//img.mukewang.com/szimg/59c0f06e0001150805400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('199', '全网最热Python3入门+进阶 更快上手实际开发', '//img.mukewang.com/szimg/59b8a486000107fb05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('200', '看的见的算法 7个经典应用诠释算法精髓', '//img.mukewang.com/szimg/59b2766f000190d505400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('201', 'PHP开发高可用高安全App后端', '//img.mukewang.com/szimg/59ae66b2000110fa05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('202', 'Spring Security技术栈开发企业级认证与授权', '//img.mukewang.com/szimg/59acb2040001bc2905400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('203', 'Python前后端分离开发Vue+Django REST framework实战', '//img.mukewang.com/szimg/59a5415a0001ccf505400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('204', '360大牛带你横扫PHP职场 全面解读PHP面试', '//img.mukewang.com/szimg/59a007f600018d1f05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('205', 'Google面试官亲授 升级Java面试', '//img.mukewang.com/szimg/5a1cc281000174f605400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('206', '让你页面速度飞起来 Web前端性能优化', '//img.mukewang.com/szimg/5993a3e20001442905400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('207', '10小时入门大数据', '//img.mukewang.com/szimg/59eebab000013cce05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('208', '基于Spring Boot技术栈博客系统企业级前后端实战', '//img.mukewang.com/szimg/59eeba8b000114cc05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('209', 'Python Flask 构建微电影视频网站', '//img.mukewang.com/szimg/5977fce00001d32305400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('210', 'Angular 打造企业级协作平台', '//img.mukewang.com/szimg/59755a64000141d505400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('211', 'Nginx入门到实践  不管是运维还是开发 Nginx都是你的必备技能', '//img.mukewang.com/szimg/596f01c60001558d05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('212', '高性能的 PHP API 接口开发', '//img.mukewang.com/szimg/59eeb25100016d5705400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('213', 'Web自动化测试  Selenium基础到企业应用', '//img.mukewang.com/szimg/5965c159000184e305400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('214', '开发微信全家桶项目Vue/Node/MongoDB高级技术栈全覆盖', '//img.mukewang.com/szimg/59eeb2340001f59105400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('215', 'Spring Boot企业微信点餐系统', '//img.mukewang.com/szimg/59eeb21c00012eb205400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('216', 'Android通用框架设计与完整电商APP开发', '//img.mukewang.com/szimg/5959a60f0001cfd305400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('217', 'Java SSM快速开发仿慕课网在线教育平台', '//img.mukewang.com/szimg/59eeb193000189ca05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('218', '前端JavaScript面试技巧', '//img.mukewang.com/szimg/595067d5000132a105400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('219', 'Python操作三大主流数据库', '//img.mukewang.com/szimg/59eeb2040001752d05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('220', 'Get全栈技能点 Vue2.0 / Node.js / MongoDB 打造商城系统', '//img.mukewang.com/szimg/59eeb1b00001c1aa05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('221', '以慕课网日志分析为例  进入大数据 Spark SQL 的世界', '//img.mukewang.com/szimg/5940e2a20001045a05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('222', 'Laravel  快速开发简书', '//img.mukewang.com/szimg/593a7a470001bcff05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('223', 'Android应用发展趋势必备武器  热修复与插件化', '//img.mukewang.com/szimg/5938b0f100016a9e05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('224', '真实数据对接 从0开发前后端分离的企业级上线项目', '//img.mukewang.com/szimg/59eeb17200013f8605400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('225', '全新升级 Kotlin系统入门与进阶', '//img.mukewang.com/szimg/59313618000198ed05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('226', '全网稀缺Vue 2.0高级实战 独立开发专属音乐WebAPP', '//img.mukewang.com/szimg/592e2eab0001302505660314-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('227', 'IT段子手详解MyBatis遇到Spring 秒学Java SSM开发大众点评', '//img.mukewang.com/szimg/59eeb1de00010e2805400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('228', '腾讯大牛亲授 Web 前后端漏洞分析与防御技巧', '//img.mukewang.com/szimg/59eeb03e0001ebc105400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('229', '机器学习入门 Scikit-learn实现经典小案例', '//img.mukewang.com/szimg/59e563cb00010b7105400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('230', '微信服务号+Yii 2.0构建商城系统全栈应用', '//img.mukewang.com/szimg/597adc6b0001173605400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('231', '全程MVP手把手 打造IM即时通讯Android APP', '//img.mukewang.com/szimg/59118b92000147bf05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('232', 'BAT大咖助力 全面升级Android面试', '//img.mukewang.com/szimg/5909a1250001197e05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('233', 'React高级实战   打造大众点评 WebApp', '//img.mukewang.com/szimg/59006d090001508305400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('234', 'ES6零基础教学 解析彩票项目', '//img.mukewang.com/szimg/58fea8780001f29c05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('235', '微信小程序商城构建全栈应用', '//img.mukewang.com/szimg/58f6fd6a0001e17805400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('236', '从0开始 独立完成企业级Java电商网站开发', '//img.mukewang.com/szimg/58f57d200001461105400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('237', 'Node.js项目线上服务器部署与发布', '//img.mukewang.com/szimg/58e75f2e00015c0705400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('238', 'Angular 4.0从入门到实战 打造股票管理网站', '//img.mukewang.com/szimg/58d8c6da0001ff8505400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('239', 'Thinkphp 5.0 仿百度糯米开发多商家电商平台', '//img.mukewang.com/szimg/58c89b2f00016d5f05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('240', '玩转算法面试 从真题到思维全面提升算法思维', '//img.mukewang.com/szimg/5a1f65a900015d1505400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('241', 'React Native技术精讲与高质量上线APP开发', '//img.mukewang.com/szimg/5adfe05e00012ecd05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('242', 'Yii 2.0进阶版 高级组件 ES/Redis/ Sentry 优化京东平台', '//img.mukewang.com/szimg/58b38551000156dd05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('243', 'React.js入门基础与案例开发', '//img.mukewang.com/szimg/58a68f000001262805400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('244', '组件化封装思想实战Android App', '//img.mukewang.com/szimg/589c0e990001ac9505400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('245', 'Angular JS 仿拉勾网 WebApp  开发移动端单页应用', '//img.mukewang.com/szimg/588170340001b26105400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('246', '带领新手快速开发Android App', '//img.mukewang.com/szimg/5876eed20001476f05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('247', '高性能可扩展MySQL数据库设计及架构优化 电商项目', '//img.mukewang.com/szimg/586359c00001af9005400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('248', 'Python升级3.6 强力Django+杀手级Xadmin打造在线教育平台', '//img.mukewang.com/szimg/5859ed790001b9da05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('249', 'Android自动化测试实战 Java篇   主流工具 框架 脚本', '//img.mukewang.com/szimg/5850bc4500015ecd05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('250', '完整Vue.js项目流程高仿饿了么App', '//img.mukewang.com/szimg/582ac41a0001d3c705400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('251', '学习算法思想，修炼编程内功', '//img.mukewang.com/szimg/59eeb022000162bc05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('252', 'Yii 2.0开发一个仿京东商城平台', '//img.mukewang.com/szimg/59081e8a0001c54f05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('253', '贯穿全栈React Native开发APP', '//img.mukewang.com/szimg/57bd5ec80001b0c405400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('254', '响应式开发一招致胜', '//img.mukewang.com/szimg/5902a84b0001b54f05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('255', 'MySQL性能管理及架构设计', '//img.mukewang.com/szimg/5902b0510001c8d705400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('256', '前端到后台ThinkPHP开发整站', '//img.mukewang.com/szimg/576376440001766205400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('257', 'Web App用组件方式开发全站', '//img.mukewang.com/szimg/5763765d0001352105400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('258', 'HTML5独立开发书城webApp', '//img.mukewang.com/szimg/586e0f55000158db05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('259', 'Spring Boot 2.0深度实践之核心技术篇', '//img.mukewang.com/szimg/5b4c817f0001945605400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('260', 'Python flask构建微信小程序订餐系统', '//img.mukewang.com/szimg/5b67a8a10001d05905400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('261', 'RabbitMQ消息中间件技术精讲', '//img.mukewang.com/szimg/5b6015ac00011ca105400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('262', 'Vue2.5开发去哪儿网App 从零基础入门到实战项目', '//img.mukewang.com/szimg/5ac2dfe100014a9005400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('263', '玩转数据结构 从入门到进阶', '//img.mukewang.com/szimg/5ad05dc00001eae705400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('264', 'NLP 实践 TensorFlow 打造聊天机器人', '//img.mukewang.com/szimg/5b6910d30001adad05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('265', 'SpringBoot 仿抖音短视频小程序开发 全栈式实战项目', '//img.mukewang.com/szimg/5afb8aa900014cc705400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('266', 'Java并发编程与高并发解决方案', '//img.mukewang.com/szimg/5aaa55850001a3ef10800600-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('267', 'Vue.js 源码全方位深入解析', '//img.mukewang.com/szimg/5b17bad10001535305400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('268', 'Spring Cloud微服务实战', '//img.mukewang.com/szimg/5a9ca4e80001786305400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('269', 'Java生产环境下性能监控与调优详解', '//img.mukewang.com/szimg/5b384772000132c405400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('270', '掌握前端面试技巧 让你比面试官更了解面试', '//img.mukewang.com/szimg/59897b1600011ec805400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('271', '深度学习之神经网络（CNN/RNN/GAN）算法原理+实战', '//img.mukewang.com/szimg/5b56952600014eb005400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('272', '纯正商业级应用-微信小程序开发实战', '//img.mukewang.com/szimg/5b4bfb7000019d2e10800600-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('273', 'Java仿微信全栈  高性能后台+移动客户端', '//img.mukewang.com/szimg/5b5ad11b0001261305400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('274', 'Koa2 实现电影微信公众号前后端开发', '//img.mukewang.com/szimg/5b614ac3000185f805400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('275', '专为程序员设计的线性代数课程', '//img.mukewang.com/szimg/5b5835a60001907e05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('276', 'JAVA分布式优惠券系统后台 手把手实战开发', '//img.mukewang.com/szimg/5b55356c0001af0105400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('277', 'Javascript 设计模式系统讲解与应用', '//img.mukewang.com/szimg/5b4f02bd0001870c06000338-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('278', 'Jenkins+Ansible+Gitlab自动化部署三剑客', '//img.mukewang.com/szimg/5b4d9a8b00014cc405400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('279', 'Python3实战Spark大数据分析及调度', '//img.mukewang.com/szimg/5b4421010001ff1805400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('280', '原理+实战 快速掌握响应式开发', '//img.mukewang.com/szimg/5b3f2c890001d1b305400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('281', 'XSS跨站漏洞 加强Web安全', '//img.mukewang.com/szimg/5b3c409b0001c33e05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('282', 'TestNG测试框架入门到实战', '//img.mukewang.com/szimg/5b39eb5a00016c4205400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('283', '最火Python3 玩转实用小工具', '//img.mukewang.com/szimg/5b3307f50001859e05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('284', '中小型企业通用自动化运维架构', '//img.mukewang.com/szimg/5b3204580001f28805400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('285', 'React16.4 开发简书项目 从零基础入门到实战', '//img.mukewang.com/szimg/5b3082da0001d7e905400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('286', 'selenium3.0平台级自动化测试框架综合实战', '//img.mukewang.com/szimg/5b2cd8590001c61505400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('287', '分布式事务实践 解决数据一致性', '//img.mukewang.com/szimg/5b2a29d50001bf4605400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('288', 'React全家桶+AntD 共享单车后台管理系统开发', '//img.mukewang.com/szimg/5b28a9cf00017c9a05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('289', '基于 GitHub App 业务深度讲解 Kotlin1.2高级特性与框架设计', '//img.mukewang.com/szimg/5b190aa4000148c605400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('290', 'Java读源码之Netty深入剖析', '//img.mukewang.com/szimg/5b165c2b0001e24a05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('291', 'Go语言实战流媒体视频网站', '//img.mukewang.com/szimg/5b1121f70001ff3205400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('292', 'Activiti6.0工作流引擎深度解析与实战', '//img.mukewang.com/szimg/5b0e922f0001910905400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('293', 'HTTP协议原理+实践 Web开发工程师必学', '//img.mukewang.com/szimg/5b0cb5df00016e5405400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('294', '微信小程序入门与实战 常用组件API开发技巧项目实战', '//img.mukewang.com/szimg/583e42fb0001e04f05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('295', '阿里大牛亲授  阿里云主机(ECS)与CentOS7实战', '//img.mukewang.com/szimg/5b0b60480001b95e06000338-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('296', 'Python Flask构建可扩展的RESTful API', '//img.mukewang.com/szimg/5b061fe30001db4505400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('297', '聚焦Python分布式爬虫必学框架Scrapy 打造搜索引擎', '//img.mukewang.com/szimg/58d21b90000135a105400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('298', '抖音级短视频App交互设计系统学习与实战', '//img.mukewang.com/szimg/5b03d17b0001d9ce05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('299', 'Docker环境下的前后端分离项目部署与运维', '//img.mukewang.com/szimg/5aff82e90001d29e05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('300', '全网首发mpvue课程小程序全栈开发', '//img.mukewang.com/szimg/5afbd8bf000175f805400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('301', '从原理到场景 系统讲解 PHP 缓存技术', '//img.mukewang.com/szimg/5af5413600011b1d05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('302', '区块链入门与去中心化应用实战', '//img.mukewang.com/szimg/5af2a67500016b9905400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('303', '学习Scala 进击大数据Spark生态圈', '//img.mukewang.com/szimg/5af17d9500011dc105400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('304', 'Python3实用编程技巧进阶', '//img.mukewang.com/szimg/5aec33fd0001c86805400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('305', 'SpringBoot开发理财产品系统', '//img.mukewang.com/szimg/5ae4172200010b8f05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('306', 'H5和小程序直播开发 零距离快速入门', '//img.mukewang.com/szimg/5adfed310001efee05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('307', 'SpringBoot2.0不容错过的新特性 WebFlux响应式编程', '//img.mukewang.com/szimg/5ad9e5a80001732c05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('308', '验证码图像识别，快速掌握TensorFlow模型构建与开发', '//img.mukewang.com/szimg/5ad94a9800015dd410800600-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('309', 'MyCAT+MySQL 搭建高可用企业级数据库集群', '//img.mukewang.com/szimg/5ad5568300018ede05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('310', 'Gradle3.0自动化项目构建技术精讲+实战', '//img.mukewang.com/szimg/5acf37460001aa3405400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('311', 'HBase+SpringBoot实战分布式文件存储', '//img.mukewang.com/szimg/5acc60d80001ef7605400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('312', '最全面的Java接口自动化测试实战', '//img.mukewang.com/szimg/5ac9d67e0001395c05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('313', '新浪微博资深大牛全方位剖析 iOS 高级面试', '//img.mukewang.com/szimg/5abe148300014c3305400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('314', 'Python高级编程和异步IO并发编程', '//img.mukewang.com/szimg/5abcabea00014f6b10800600-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('315', 'App界面设计利器Sketch  精选案例合集', '//img.mukewang.com/szimg/5abb3a4900010d6905400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('316', 'ZooKeeper分布式专题与Dubbo微服务入门', '//img.mukewang.com/szimg/5ab9be440001b21f05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('317', 'Python Flask高级编程', '//img.mukewang.com/szimg/5ab84f650001f0b005400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('318', 'Docker+Kubernetes(k8s)微服务容器化实践', '//img.mukewang.com/szimg/5ab3a1240001e67910800600-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('319', '韩天峰力荐 Swoole入门到实战打造高性能赛事直播平台', '//img.mukewang.com/szimg/5ab0fd1400010d7d10800600-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('320', 'Vue核心技术 Vue+Vue-Router+Vuex+SSR实战精讲', '//img.mukewang.com/szimg/5aab7f270001909810800600-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('321', '高薪设计师必修课 AE移动UI动效设计从入门到实战', '//img.mukewang.com/szimg/5aa9d2c1000104d510800600-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('322', 'Python主讲移动端自动化测试框架Appium 从基础到项目实战', '//img.mukewang.com/szimg/5aa781790001ba2c05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('323', '基于Golang协程实现流量统计系统', '//img.mukewang.com/szimg/5aa27bbd0001b80405400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('324', 'OpenCV+TensorFlow 入门人工智能图像处理', '//img.mukewang.com/szimg/5a9f4c2e00010ce205400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('325', '揭秘一线互联网企业 前端JavaScript高级面试', '//img.mukewang.com/szimg/5a9dfab40001bf1005400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('326', '系统学习Docker 践行DevOps理念', '//img.mukewang.com/szimg/5a9614850001bc3405400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('327', 'Tomcat+Memcached/Redis集群 构建高可用解决方案', '//img.mukewang.com/szimg/5a82c6c200013f0905400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('328', 'Python3数据分析与挖掘建模实战', '//img.mukewang.com/szimg/5a8150100001424f05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('329', 'Python移动自动化测试面试', '//img.mukewang.com/szimg/5a794b0700011e4b05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('330', 'Elastic Stack从入门到实践', '//img.mukewang.com/szimg/5a7441e30001d4f805400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('331', '微信小游戏入门与实战 刷爆朋友圈', '//img.mukewang.com/szimg/5a7279250001e10705400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('332', 'Google资深工程师深度讲解Go语言', '//img.mukewang.com/szimg/5a7127370001a8fa05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('333', 'React16+React-Router4 从零打造企业级电商后台管理系统', '//img.mukewang.com/szimg/5a6e7fdf0001e7bb05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('334', 'Koa2框架从0开始构建预告片网站', '//img.mukewang.com/szimg/5a67ebf50001b6d005400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('335', '从天气项目入门 Spring Cloud 微服务治理', '//img.mukewang.com/szimg/5a6547290001be8805400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('336', '基于Python玩转人工智能最火框架 TensorFlow应用实践', '//img.mukewang.com/szimg/5a5ddeda000145b405400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('337', '前端面试项目冲刺，京东金融Vue组件化实战', '//img.mukewang.com/szimg/5a5c07bd00010ee005400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('338', 'Python+Django+Ansible Playbook自动化运维项目实战', '//img.mukewang.com/szimg/5a5334a50001d3dc05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('339', 'Java深入微服务原理改造房产销售平台', '//img.mukewang.com/szimg/5a52d6630001cfd305400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('340', '基于Storm构建实时热力分布项目实战', '//img.mukewang.com/szimg/5a4ae67500012b6105400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('341', '专为初学者打造的软件测试入门的首选课堂', '//img.mukewang.com/szimg/5a4d9b04000137b605400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('342', '四大维度解锁 Webpack 前端工程化', '//img.mukewang.com/szimg/5a4302b00001942405400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('343', 'Java秒杀系统方案优化 高性能高并发实战', '//img.mukewang.com/szimg/5a405cbc000124ca05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('344', 'Python3入门机器学习 经典算法与应用', '//img.mukewang.com/szimg/5a39cd3f0001c09805400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('345', 'BAT大牛亲授 基于ElasticSearch的搜房网实战', '//img.mukewang.com/szimg/5a308c9400011c1305400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('346', 'Kotlin打造完整电商APP 模块化+MVP+主流框架', '//img.mukewang.com/szimg/5a2f49b00001bd3105400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('347', '全面系统讲解CSS 工作应用+面试一步搞定', '//img.mukewang.com/szimg/5a24c8840001af4405400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('348', '快速上手Ionic3 多平台开发企业级问答社区', '//img.mukewang.com/szimg/5a1e4bad0001eb0605400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('349', 'Webpack + React全栈工程架构项目实战精讲', '//img.mukewang.com/szimg/5a17ef670001292c05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('350', 'Java企业级电商项目架构演进之路  Tomcat集群与Redis分布式', '//img.mukewang.com/szimg/5a16336900014ca405400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('351', 'RxJava从源码到应用 移动端开发效率秒提速', '//img.mukewang.com/szimg/5a66a66800016cba05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('352', '移动端App UI 设计入门与实战', '//img.mukewang.com/szimg/5a123d7e00011fa705400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('353', 'Android高级面试 10大开源框架源码解析', '//img.mukewang.com/szimg/5a0ceed40001528605400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('354', 'Python3数据科学入门与实战', '//img.mukewang.com/szimg/5a097bde00019ed605400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('355', 'Python接口测试框架实战与自动化进阶', '//img.mukewang.com/szimg/5a014f130001fb7105400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('356', '快速上手Linux 玩转典型应用', '//img.mukewang.com/szimg/59fc347400016ad405400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('357', 'Spark Streaming实时流处理项目实战', '//img.mukewang.com/szimg/59f85ec90001103405400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('358', 'ES6+ 开发电商网站的账号体系 JS SDK', '//img.mukewang.com/szimg/59f684ee0001dbfa05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('359', '一站式学习Redis  从入门到高可用分布式实践', '//img.mukewang.com/szimg/5b46c4460001ae0805400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('360', 'Redux+React Router+Node.js全栈开发', '//img.mukewang.com/szimg/59ed4c380001cbc405400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('361', 'Java开发企业级权限管理系统', '//img.mukewang.com/szimg/59e6b62c0001fbc805400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('362', 'PHP秒杀系统  高并发高性能的极致挑战', '//img.mukewang.com/szimg/59e40e200001bea605400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('363', 'BAT大厂APP架构演进实践与优化之路', '//img.mukewang.com/szimg/59dc79420001530905400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('364', '毕设项目 SSM到Spring Boot 从零开发校园商铺平台', '//img.mukewang.com/szimg/59c9b245000143ae05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('365', 'Node.js入门到企业Web开发中的应用', '//img.mukewang.com/szimg/59c860220001247d05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('366', 'JMeter 深入进阶性能测试体系 各领域企业实战', '//img.mukewang.com/szimg/59c0f06e0001150805400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('367', '全网最热Python3入门+进阶 更快上手实际开发', '//img.mukewang.com/szimg/59b8a486000107fb05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('368', '看的见的算法 7个经典应用诠释算法精髓', '//img.mukewang.com/szimg/59b2766f000190d505400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('369', 'PHP开发高可用高安全App后端', '//img.mukewang.com/szimg/59ae66b2000110fa05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('370', 'Spring Security技术栈开发企业级认证与授权', '//img.mukewang.com/szimg/59acb2040001bc2905400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('371', 'Python前后端分离开发Vue+Django REST framework实战', '//img.mukewang.com/szimg/59a5415a0001ccf505400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('372', '360大牛带你横扫PHP职场 全面解读PHP面试', '//img.mukewang.com/szimg/59a007f600018d1f05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('373', 'Google面试官亲授 升级Java面试', '//img.mukewang.com/szimg/5a1cc281000174f605400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('374', '让你页面速度飞起来 Web前端性能优化', '//img.mukewang.com/szimg/5993a3e20001442905400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('375', '10小时入门大数据', '//img.mukewang.com/szimg/59eebab000013cce05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('376', '基于Spring Boot技术栈博客系统企业级前后端实战', '//img.mukewang.com/szimg/59eeba8b000114cc05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('377', 'Python Flask 构建微电影视频网站', '//img.mukewang.com/szimg/5977fce00001d32305400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('378', 'Angular 打造企业级协作平台', '//img.mukewang.com/szimg/59755a64000141d505400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('379', 'Nginx入门到实践  不管是运维还是开发 Nginx都是你的必备技能', '//img.mukewang.com/szimg/596f01c60001558d05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('380', '高性能的 PHP API 接口开发', '//img.mukewang.com/szimg/59eeb25100016d5705400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('381', 'Web自动化测试  Selenium基础到企业应用', '//img.mukewang.com/szimg/5965c159000184e305400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('382', '开发微信全家桶项目Vue/Node/MongoDB高级技术栈全覆盖', '//img.mukewang.com/szimg/59eeb2340001f59105400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('383', 'Spring Boot企业微信点餐系统', '//img.mukewang.com/szimg/59eeb21c00012eb205400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('384', 'Android通用框架设计与完整电商APP开发', '//img.mukewang.com/szimg/5959a60f0001cfd305400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('385', 'Java SSM快速开发仿慕课网在线教育平台', '//img.mukewang.com/szimg/59eeb193000189ca05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('386', '前端JavaScript面试技巧', '//img.mukewang.com/szimg/595067d5000132a105400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('387', 'Python操作三大主流数据库', '//img.mukewang.com/szimg/59eeb2040001752d05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('388', 'Get全栈技能点 Vue2.0 / Node.js / MongoDB 打造商城系统', '//img.mukewang.com/szimg/59eeb1b00001c1aa05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('389', '以慕课网日志分析为例  进入大数据 Spark SQL 的世界', '//img.mukewang.com/szimg/5940e2a20001045a05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('390', 'Laravel  快速开发简书', '//img.mukewang.com/szimg/593a7a470001bcff05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('391', 'Android应用发展趋势必备武器  热修复与插件化', '//img.mukewang.com/szimg/5938b0f100016a9e05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('392', '真实数据对接 从0开发前后端分离的企业级上线项目', '//img.mukewang.com/szimg/59eeb17200013f8605400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('393', '全新升级 Kotlin系统入门与进阶', '//img.mukewang.com/szimg/59313618000198ed05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('394', '全网稀缺Vue 2.0高级实战 独立开发专属音乐WebAPP', '//img.mukewang.com/szimg/592e2eab0001302505660314-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('395', 'IT段子手详解MyBatis遇到Spring 秒学Java SSM开发大众点评', '//img.mukewang.com/szimg/59eeb1de00010e2805400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('396', '腾讯大牛亲授 Web 前后端漏洞分析与防御技巧', '//img.mukewang.com/szimg/59eeb03e0001ebc105400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('397', '机器学习入门 Scikit-learn实现经典小案例', '//img.mukewang.com/szimg/59e563cb00010b7105400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('398', '微信服务号+Yii 2.0构建商城系统全栈应用', '//img.mukewang.com/szimg/597adc6b0001173605400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('399', '全程MVP手把手 打造IM即时通讯Android APP', '//img.mukewang.com/szimg/59118b92000147bf05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('400', 'BAT大咖助力 全面升级Android面试', '//img.mukewang.com/szimg/5909a1250001197e05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('401', 'React高级实战   打造大众点评 WebApp', '//img.mukewang.com/szimg/59006d090001508305400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('402', 'ES6零基础教学 解析彩票项目', '//img.mukewang.com/szimg/58fea8780001f29c05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('403', '微信小程序商城构建全栈应用', '//img.mukewang.com/szimg/58f6fd6a0001e17805400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('404', '从0开始 独立完成企业级Java电商网站开发', '//img.mukewang.com/szimg/58f57d200001461105400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('405', 'Node.js项目线上服务器部署与发布', '//img.mukewang.com/szimg/58e75f2e00015c0705400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('406', 'Angular 4.0从入门到实战 打造股票管理网站', '//img.mukewang.com/szimg/58d8c6da0001ff8505400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('407', 'Thinkphp 5.0 仿百度糯米开发多商家电商平台', '//img.mukewang.com/szimg/58c89b2f00016d5f05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('408', '玩转算法面试 从真题到思维全面提升算法思维', '//img.mukewang.com/szimg/5a1f65a900015d1505400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('409', 'React Native技术精讲与高质量上线APP开发', '//img.mukewang.com/szimg/5adfe05e00012ecd05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('410', 'Yii 2.0进阶版 高级组件 ES/Redis/ Sentry 优化京东平台', '//img.mukewang.com/szimg/58b38551000156dd05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('411', 'React.js入门基础与案例开发', '//img.mukewang.com/szimg/58a68f000001262805400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('412', '组件化封装思想实战Android App', '//img.mukewang.com/szimg/589c0e990001ac9505400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('413', 'Angular JS 仿拉勾网 WebApp  开发移动端单页应用', '//img.mukewang.com/szimg/588170340001b26105400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('414', '带领新手快速开发Android App', '//img.mukewang.com/szimg/5876eed20001476f05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('415', '高性能可扩展MySQL数据库设计及架构优化 电商项目', '//img.mukewang.com/szimg/586359c00001af9005400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('416', 'Python升级3.6 强力Django+杀手级Xadmin打造在线教育平台', '//img.mukewang.com/szimg/5859ed790001b9da05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('417', 'Android自动化测试实战 Java篇   主流工具 框架 脚本', '//img.mukewang.com/szimg/5850bc4500015ecd05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('418', '完整Vue.js项目流程高仿饿了么App', '//img.mukewang.com/szimg/582ac41a0001d3c705400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('419', '学习算法思想，修炼编程内功', '//img.mukewang.com/szimg/59eeb022000162bc05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('420', 'Yii 2.0开发一个仿京东商城平台', '//img.mukewang.com/szimg/59081e8a0001c54f05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('421', '贯穿全栈React Native开发APP', '//img.mukewang.com/szimg/57bd5ec80001b0c405400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('422', '响应式开发一招致胜', '//img.mukewang.com/szimg/5902a84b0001b54f05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('423', 'MySQL性能管理及架构设计', '//img.mukewang.com/szimg/5902b0510001c8d705400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('424', '前端到后台ThinkPHP开发整站', '//img.mukewang.com/szimg/576376440001766205400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('425', 'Web App用组件方式开发全站', '//img.mukewang.com/szimg/5763765d0001352105400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('426', 'HTML5独立开发书城webApp', '//img.mukewang.com/szimg/586e0f55000158db05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('427', 'Spring Boot 2.0深度实践之核心技术篇', '//img.mukewang.com/szimg/5b4c817f0001945605400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('428', 'Python flask构建微信小程序订餐系统', '//img.mukewang.com/szimg/5b67a8a10001d05905400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('429', 'RabbitMQ消息中间件技术精讲', '//img.mukewang.com/szimg/5b6015ac00011ca105400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('430', 'Vue2.5开发去哪儿网App 从零基础入门到实战项目', '//img.mukewang.com/szimg/5ac2dfe100014a9005400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('431', '玩转数据结构 从入门到进阶', '//img.mukewang.com/szimg/5ad05dc00001eae705400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('432', 'NLP 实践 TensorFlow 打造聊天机器人', '//img.mukewang.com/szimg/5b6910d30001adad05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('433', 'SpringBoot 仿抖音短视频小程序开发 全栈式实战项目', '//img.mukewang.com/szimg/5afb8aa900014cc705400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('434', 'Java并发编程与高并发解决方案', '//img.mukewang.com/szimg/5aaa55850001a3ef10800600-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('435', 'Vue.js 源码全方位深入解析', '//img.mukewang.com/szimg/5b17bad10001535305400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('436', 'Spring Cloud微服务实战', '//img.mukewang.com/szimg/5a9ca4e80001786305400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('437', 'Java生产环境下性能监控与调优详解', '//img.mukewang.com/szimg/5b384772000132c405400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('438', '掌握前端面试技巧 让你比面试官更了解面试', '//img.mukewang.com/szimg/59897b1600011ec805400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('439', '深度学习之神经网络（CNN/RNN/GAN）算法原理+实战', '//img.mukewang.com/szimg/5b56952600014eb005400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('440', '纯正商业级应用-微信小程序开发实战', '//img.mukewang.com/szimg/5b4bfb7000019d2e10800600-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('441', 'Java仿微信全栈  高性能后台+移动客户端', '//img.mukewang.com/szimg/5b5ad11b0001261305400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('442', 'Koa2 实现电影微信公众号前后端开发', '//img.mukewang.com/szimg/5b614ac3000185f805400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('443', '专为程序员设计的线性代数课程', '//img.mukewang.com/szimg/5b5835a60001907e05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('444', 'JAVA分布式优惠券系统后台 手把手实战开发', '//img.mukewang.com/szimg/5b55356c0001af0105400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('445', 'Javascript 设计模式系统讲解与应用', '//img.mukewang.com/szimg/5b4f02bd0001870c06000338-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('446', 'Jenkins+Ansible+Gitlab自动化部署三剑客', '//img.mukewang.com/szimg/5b4d9a8b00014cc405400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('447', 'Python3实战Spark大数据分析及调度', '//img.mukewang.com/szimg/5b4421010001ff1805400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('448', '原理+实战 快速掌握响应式开发', '//img.mukewang.com/szimg/5b3f2c890001d1b305400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('449', 'XSS跨站漏洞 加强Web安全', '//img.mukewang.com/szimg/5b3c409b0001c33e05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('450', 'TestNG测试框架入门到实战', '//img.mukewang.com/szimg/5b39eb5a00016c4205400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('451', '最火Python3 玩转实用小工具', '//img.mukewang.com/szimg/5b3307f50001859e05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('452', '中小型企业通用自动化运维架构', '//img.mukewang.com/szimg/5b3204580001f28805400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('453', 'React16.4 开发简书项目 从零基础入门到实战', '//img.mukewang.com/szimg/5b3082da0001d7e905400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('454', 'selenium3.0平台级自动化测试框架综合实战', '//img.mukewang.com/szimg/5b2cd8590001c61505400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('455', '分布式事务实践 解决数据一致性', '//img.mukewang.com/szimg/5b2a29d50001bf4605400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('456', 'React全家桶+AntD 共享单车后台管理系统开发', '//img.mukewang.com/szimg/5b28a9cf00017c9a05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('457', '基于 GitHub App 业务深度讲解 Kotlin1.2高级特性与框架设计', '//img.mukewang.com/szimg/5b190aa4000148c605400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('458', 'Java读源码之Netty深入剖析', '//img.mukewang.com/szimg/5b165c2b0001e24a05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('459', 'Go语言实战流媒体视频网站', '//img.mukewang.com/szimg/5b1121f70001ff3205400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('460', 'Activiti6.0工作流引擎深度解析与实战', '//img.mukewang.com/szimg/5b0e922f0001910905400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('461', 'HTTP协议原理+实践 Web开发工程师必学', '//img.mukewang.com/szimg/5b0cb5df00016e5405400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('462', '微信小程序入门与实战 常用组件API开发技巧项目实战', '//img.mukewang.com/szimg/583e42fb0001e04f05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('463', '阿里大牛亲授  阿里云主机(ECS)与CentOS7实战', '//img.mukewang.com/szimg/5b0b60480001b95e06000338-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('464', 'Python Flask构建可扩展的RESTful API', '//img.mukewang.com/szimg/5b061fe30001db4505400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('465', '聚焦Python分布式爬虫必学框架Scrapy 打造搜索引擎', '//img.mukewang.com/szimg/58d21b90000135a105400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('466', '抖音级短视频App交互设计系统学习与实战', '//img.mukewang.com/szimg/5b03d17b0001d9ce05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('467', 'Docker环境下的前后端分离项目部署与运维', '//img.mukewang.com/szimg/5aff82e90001d29e05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('468', '全网首发mpvue课程小程序全栈开发', '//img.mukewang.com/szimg/5afbd8bf000175f805400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('469', '从原理到场景 系统讲解 PHP 缓存技术', '//img.mukewang.com/szimg/5af5413600011b1d05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('470', '区块链入门与去中心化应用实战', '//img.mukewang.com/szimg/5af2a67500016b9905400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('471', '学习Scala 进击大数据Spark生态圈', '//img.mukewang.com/szimg/5af17d9500011dc105400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('472', 'Python3实用编程技巧进阶', '//img.mukewang.com/szimg/5aec33fd0001c86805400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('473', 'SpringBoot开发理财产品系统', '//img.mukewang.com/szimg/5ae4172200010b8f05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('474', 'H5和小程序直播开发 零距离快速入门', '//img.mukewang.com/szimg/5adfed310001efee05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('475', 'SpringBoot2.0不容错过的新特性 WebFlux响应式编程', '//img.mukewang.com/szimg/5ad9e5a80001732c05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('476', '验证码图像识别，快速掌握TensorFlow模型构建与开发', '//img.mukewang.com/szimg/5ad94a9800015dd410800600-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('477', 'MyCAT+MySQL 搭建高可用企业级数据库集群', '//img.mukewang.com/szimg/5ad5568300018ede05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('478', 'Gradle3.0自动化项目构建技术精讲+实战', '//img.mukewang.com/szimg/5acf37460001aa3405400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('479', 'HBase+SpringBoot实战分布式文件存储', '//img.mukewang.com/szimg/5acc60d80001ef7605400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('480', '最全面的Java接口自动化测试实战', '//img.mukewang.com/szimg/5ac9d67e0001395c05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('481', '新浪微博资深大牛全方位剖析 iOS 高级面试', '//img.mukewang.com/szimg/5abe148300014c3305400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('482', 'Python高级编程和异步IO并发编程', '//img.mukewang.com/szimg/5abcabea00014f6b10800600-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('483', 'App界面设计利器Sketch  精选案例合集', '//img.mukewang.com/szimg/5abb3a4900010d6905400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('484', 'ZooKeeper分布式专题与Dubbo微服务入门', '//img.mukewang.com/szimg/5ab9be440001b21f05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('485', 'Python Flask高级编程', '//img.mukewang.com/szimg/5ab84f650001f0b005400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('486', 'Docker+Kubernetes(k8s)微服务容器化实践', '//img.mukewang.com/szimg/5ab3a1240001e67910800600-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('487', '韩天峰力荐 Swoole入门到实战打造高性能赛事直播平台', '//img.mukewang.com/szimg/5ab0fd1400010d7d10800600-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('488', 'Vue核心技术 Vue+Vue-Router+Vuex+SSR实战精讲', '//img.mukewang.com/szimg/5aab7f270001909810800600-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('489', '高薪设计师必修课 AE移动UI动效设计从入门到实战', '//img.mukewang.com/szimg/5aa9d2c1000104d510800600-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('490', 'Python主讲移动端自动化测试框架Appium 从基础到项目实战', '//img.mukewang.com/szimg/5aa781790001ba2c05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('491', '基于Golang协程实现流量统计系统', '//img.mukewang.com/szimg/5aa27bbd0001b80405400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('492', 'OpenCV+TensorFlow 入门人工智能图像处理', '//img.mukewang.com/szimg/5a9f4c2e00010ce205400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('493', '揭秘一线互联网企业 前端JavaScript高级面试', '//img.mukewang.com/szimg/5a9dfab40001bf1005400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('494', '系统学习Docker 践行DevOps理念', '//img.mukewang.com/szimg/5a9614850001bc3405400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('495', 'Tomcat+Memcached/Redis集群 构建高可用解决方案', '//img.mukewang.com/szimg/5a82c6c200013f0905400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('496', 'Python3数据分析与挖掘建模实战', '//img.mukewang.com/szimg/5a8150100001424f05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('497', 'Python移动自动化测试面试', '//img.mukewang.com/szimg/5a794b0700011e4b05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('498', 'Elastic Stack从入门到实践', '//img.mukewang.com/szimg/5a7441e30001d4f805400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('499', '微信小游戏入门与实战 刷爆朋友圈', '//img.mukewang.com/szimg/5a7279250001e10705400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('500', 'Google资深工程师深度讲解Go语言', '//img.mukewang.com/szimg/5a7127370001a8fa05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('501', 'React16+React-Router4 从零打造企业级电商后台管理系统', '//img.mukewang.com/szimg/5a6e7fdf0001e7bb05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('502', 'Koa2框架从0开始构建预告片网站', '//img.mukewang.com/szimg/5a67ebf50001b6d005400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('503', '从天气项目入门 Spring Cloud 微服务治理', '//img.mukewang.com/szimg/5a6547290001be8805400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('504', '基于Python玩转人工智能最火框架 TensorFlow应用实践', '//img.mukewang.com/szimg/5a5ddeda000145b405400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('505', '前端面试项目冲刺，京东金融Vue组件化实战', '//img.mukewang.com/szimg/5a5c07bd00010ee005400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('506', 'Python+Django+Ansible Playbook自动化运维项目实战', '//img.mukewang.com/szimg/5a5334a50001d3dc05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('507', 'Java深入微服务原理改造房产销售平台', '//img.mukewang.com/szimg/5a52d6630001cfd305400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('508', '基于Storm构建实时热力分布项目实战', '//img.mukewang.com/szimg/5a4ae67500012b6105400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('509', '专为初学者打造的软件测试入门的首选课堂', '//img.mukewang.com/szimg/5a4d9b04000137b605400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('510', '四大维度解锁 Webpack 前端工程化', '//img.mukewang.com/szimg/5a4302b00001942405400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('511', 'Java秒杀系统方案优化 高性能高并发实战', '//img.mukewang.com/szimg/5a405cbc000124ca05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('512', 'Python3入门机器学习 经典算法与应用', '//img.mukewang.com/szimg/5a39cd3f0001c09805400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('513', 'BAT大牛亲授 基于ElasticSearch的搜房网实战', '//img.mukewang.com/szimg/5a308c9400011c1305400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('514', 'Kotlin打造完整电商APP 模块化+MVP+主流框架', '//img.mukewang.com/szimg/5a2f49b00001bd3105400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('515', '全面系统讲解CSS 工作应用+面试一步搞定', '//img.mukewang.com/szimg/5a24c8840001af4405400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('516', '快速上手Ionic3 多平台开发企业级问答社区', '//img.mukewang.com/szimg/5a1e4bad0001eb0605400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('517', 'Webpack + React全栈工程架构项目实战精讲', '//img.mukewang.com/szimg/5a17ef670001292c05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('518', 'Java企业级电商项目架构演进之路  Tomcat集群与Redis分布式', '//img.mukewang.com/szimg/5a16336900014ca405400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('519', 'RxJava从源码到应用 移动端开发效率秒提速', '//img.mukewang.com/szimg/5a66a66800016cba05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('520', '移动端App UI 设计入门与实战', '//img.mukewang.com/szimg/5a123d7e00011fa705400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('521', 'Android高级面试 10大开源框架源码解析', '//img.mukewang.com/szimg/5a0ceed40001528605400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('522', 'Python3数据科学入门与实战', '//img.mukewang.com/szimg/5a097bde00019ed605400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('523', 'Python接口测试框架实战与自动化进阶', '//img.mukewang.com/szimg/5a014f130001fb7105400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('524', '快速上手Linux 玩转典型应用', '//img.mukewang.com/szimg/59fc347400016ad405400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('525', 'Spark Streaming实时流处理项目实战', '//img.mukewang.com/szimg/59f85ec90001103405400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('526', 'ES6+ 开发电商网站的账号体系 JS SDK', '//img.mukewang.com/szimg/59f684ee0001dbfa05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('527', '一站式学习Redis  从入门到高可用分布式实践', '//img.mukewang.com/szimg/5b46c4460001ae0805400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('528', 'Redux+React Router+Node.js全栈开发', '//img.mukewang.com/szimg/59ed4c380001cbc405400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('529', 'Java开发企业级权限管理系统', '//img.mukewang.com/szimg/59e6b62c0001fbc805400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('530', 'PHP秒杀系统  高并发高性能的极致挑战', '//img.mukewang.com/szimg/59e40e200001bea605400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('531', 'BAT大厂APP架构演进实践与优化之路', '//img.mukewang.com/szimg/59dc79420001530905400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('532', '毕设项目 SSM到Spring Boot 从零开发校园商铺平台', '//img.mukewang.com/szimg/59c9b245000143ae05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('533', 'Node.js入门到企业Web开发中的应用', '//img.mukewang.com/szimg/59c860220001247d05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('534', 'JMeter 深入进阶性能测试体系 各领域企业实战', '//img.mukewang.com/szimg/59c0f06e0001150805400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('535', '全网最热Python3入门+进阶 更快上手实际开发', '//img.mukewang.com/szimg/59b8a486000107fb05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('536', '看的见的算法 7个经典应用诠释算法精髓', '//img.mukewang.com/szimg/59b2766f000190d505400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('537', 'PHP开发高可用高安全App后端', '//img.mukewang.com/szimg/59ae66b2000110fa05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('538', 'Spring Security技术栈开发企业级认证与授权', '//img.mukewang.com/szimg/59acb2040001bc2905400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('539', 'Python前后端分离开发Vue+Django REST framework实战', '//img.mukewang.com/szimg/59a5415a0001ccf505400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('540', '360大牛带你横扫PHP职场 全面解读PHP面试', '//img.mukewang.com/szimg/59a007f600018d1f05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('541', 'Google面试官亲授 升级Java面试', '//img.mukewang.com/szimg/5a1cc281000174f605400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('542', '让你页面速度飞起来 Web前端性能优化', '//img.mukewang.com/szimg/5993a3e20001442905400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('543', '10小时入门大数据', '//img.mukewang.com/szimg/59eebab000013cce05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('544', '基于Spring Boot技术栈博客系统企业级前后端实战', '//img.mukewang.com/szimg/59eeba8b000114cc05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('545', 'Python Flask 构建微电影视频网站', '//img.mukewang.com/szimg/5977fce00001d32305400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('546', 'Angular 打造企业级协作平台', '//img.mukewang.com/szimg/59755a64000141d505400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('547', 'Nginx入门到实践  不管是运维还是开发 Nginx都是你的必备技能', '//img.mukewang.com/szimg/596f01c60001558d05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('548', '高性能的 PHP API 接口开发', '//img.mukewang.com/szimg/59eeb25100016d5705400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('549', 'Web自动化测试  Selenium基础到企业应用', '//img.mukewang.com/szimg/5965c159000184e305400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('550', '开发微信全家桶项目Vue/Node/MongoDB高级技术栈全覆盖', '//img.mukewang.com/szimg/59eeb2340001f59105400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('551', 'Spring Boot企业微信点餐系统', '//img.mukewang.com/szimg/59eeb21c00012eb205400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('552', 'Android通用框架设计与完整电商APP开发', '//img.mukewang.com/szimg/5959a60f0001cfd305400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('553', 'Java SSM快速开发仿慕课网在线教育平台', '//img.mukewang.com/szimg/59eeb193000189ca05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('554', '前端JavaScript面试技巧', '//img.mukewang.com/szimg/595067d5000132a105400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('555', 'Python操作三大主流数据库', '//img.mukewang.com/szimg/59eeb2040001752d05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('556', 'Get全栈技能点 Vue2.0 / Node.js / MongoDB 打造商城系统', '//img.mukewang.com/szimg/59eeb1b00001c1aa05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('557', '以慕课网日志分析为例  进入大数据 Spark SQL 的世界', '//img.mukewang.com/szimg/5940e2a20001045a05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('558', 'Laravel  快速开发简书', '//img.mukewang.com/szimg/593a7a470001bcff05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('559', 'Android应用发展趋势必备武器  热修复与插件化', '//img.mukewang.com/szimg/5938b0f100016a9e05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('560', '真实数据对接 从0开发前后端分离的企业级上线项目', '//img.mukewang.com/szimg/59eeb17200013f8605400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('561', '全新升级 Kotlin系统入门与进阶', '//img.mukewang.com/szimg/59313618000198ed05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('562', '全网稀缺Vue 2.0高级实战 独立开发专属音乐WebAPP', '//img.mukewang.com/szimg/592e2eab0001302505660314-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('563', 'IT段子手详解MyBatis遇到Spring 秒学Java SSM开发大众点评', '//img.mukewang.com/szimg/59eeb1de00010e2805400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('564', '腾讯大牛亲授 Web 前后端漏洞分析与防御技巧', '//img.mukewang.com/szimg/59eeb03e0001ebc105400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('565', '机器学习入门 Scikit-learn实现经典小案例', '//img.mukewang.com/szimg/59e563cb00010b7105400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('566', '微信服务号+Yii 2.0构建商城系统全栈应用', '//img.mukewang.com/szimg/597adc6b0001173605400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('567', '全程MVP手把手 打造IM即时通讯Android APP', '//img.mukewang.com/szimg/59118b92000147bf05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('568', 'BAT大咖助力 全面升级Android面试', '//img.mukewang.com/szimg/5909a1250001197e05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('569', 'React高级实战   打造大众点评 WebApp', '//img.mukewang.com/szimg/59006d090001508305400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('570', 'ES6零基础教学 解析彩票项目', '//img.mukewang.com/szimg/58fea8780001f29c05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('571', '微信小程序商城构建全栈应用', '//img.mukewang.com/szimg/58f6fd6a0001e17805400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('572', '从0开始 独立完成企业级Java电商网站开发', '//img.mukewang.com/szimg/58f57d200001461105400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('573', 'Node.js项目线上服务器部署与发布', '//img.mukewang.com/szimg/58e75f2e00015c0705400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('574', 'Angular 4.0从入门到实战 打造股票管理网站', '//img.mukewang.com/szimg/58d8c6da0001ff8505400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('575', 'Thinkphp 5.0 仿百度糯米开发多商家电商平台', '//img.mukewang.com/szimg/58c89b2f00016d5f05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('576', '玩转算法面试 从真题到思维全面提升算法思维', '//img.mukewang.com/szimg/5a1f65a900015d1505400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('577', 'React Native技术精讲与高质量上线APP开发', '//img.mukewang.com/szimg/5adfe05e00012ecd05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('578', 'Yii 2.0进阶版 高级组件 ES/Redis/ Sentry 优化京东平台', '//img.mukewang.com/szimg/58b38551000156dd05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('579', 'React.js入门基础与案例开发', '//img.mukewang.com/szimg/58a68f000001262805400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('580', '组件化封装思想实战Android App', '//img.mukewang.com/szimg/589c0e990001ac9505400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('581', 'Angular JS 仿拉勾网 WebApp  开发移动端单页应用', '//img.mukewang.com/szimg/588170340001b26105400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('582', '带领新手快速开发Android App', '//img.mukewang.com/szimg/5876eed20001476f05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('583', '高性能可扩展MySQL数据库设计及架构优化 电商项目', '//img.mukewang.com/szimg/586359c00001af9005400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('584', 'Python升级3.6 强力Django+杀手级Xadmin打造在线教育平台', '//img.mukewang.com/szimg/5859ed790001b9da05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('585', 'Android自动化测试实战 Java篇   主流工具 框架 脚本', '//img.mukewang.com/szimg/5850bc4500015ecd05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('586', '完整Vue.js项目流程高仿饿了么App', '//img.mukewang.com/szimg/582ac41a0001d3c705400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('587', '学习算法思想，修炼编程内功', '//img.mukewang.com/szimg/59eeb022000162bc05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('588', 'Yii 2.0开发一个仿京东商城平台', '//img.mukewang.com/szimg/59081e8a0001c54f05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('589', '贯穿全栈React Native开发APP', '//img.mukewang.com/szimg/57bd5ec80001b0c405400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('590', '响应式开发一招致胜', '//img.mukewang.com/szimg/5902a84b0001b54f05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('591', 'MySQL性能管理及架构设计', '//img.mukewang.com/szimg/5902b0510001c8d705400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('592', '前端到后台ThinkPHP开发整站', '//img.mukewang.com/szimg/576376440001766205400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('593', 'Web App用组件方式开发全站', '//img.mukewang.com/szimg/5763765d0001352105400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('594', 'HTML5独立开发书城webApp', '//img.mukewang.com/szimg/586e0f55000158db05400300-360-202.jpg', null, null, '5', '0', '1', '0', '2018-08-12 15:15:47', '2018-08-12 15:15:47', '11');
INSERT INTO `videos` VALUES ('595', '计科学院的第一个视频', '//img.mukewang.com/szimg/586e0f55000158db05400300-360-202.jpg', null, null, '5', '0', '2', '0', '2018-08-12 15:49:04', '2018-08-12 15:49:04', '11');
