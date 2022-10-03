/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : db_boot_movie

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-10-08 17:27:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ylrc_account`
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_account`;
CREATE TABLE `ylrc_account` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `balance` decimal(19,2) NOT NULL,
  `head_pic` varchar(128) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `nickname` varchar(32) DEFAULT NULL,
  `password` varchar(32) NOT NULL,
  `sex` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_6opggmt4oncjopyy57ca38wi0` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_account
-- ----------------------------
INSERT INTO `ylrc_account` VALUES ('1', '2020-10-03 18:19:01', '2020-10-06 21:42:17', '0.00', 'default-head-pic.jpg', '13656564545', null, '54545454545', '1', '0');
INSERT INTO `ylrc_account` VALUES ('2', '2020-10-03 18:50:58', '2020-10-03 18:50:58', '0.00', 'default-head-pic.jpg', '13918666565', null, '3333333', '1', '1');
INSERT INTO `ylrc_account` VALUES ('3', '2020-10-04 11:55:07', '2020-10-08 15:17:25', '1535.66', '20201008/1602141427122.jpg', '13918661215', '猿来入此', '111111', '1', '1');
INSERT INTO `ylrc_account` VALUES ('4', '2020-10-08 15:59:21', '2020-10-08 16:06:30', '408.00', 'default-head-pic.jpg', '13918651215', null, '111111', '1', '1');

-- ----------------------------
-- Table structure for `ylrc_area`
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_area`;
CREATE TABLE `ylrc_area` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `city_id` bigint(20) DEFAULT NULL,
  `name` varchar(32) NOT NULL,
  `province_id` bigint(20) DEFAULT NULL,
  `is_show` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_area
-- ----------------------------
INSERT INTO `ylrc_area` VALUES ('1', '2020-09-06 16:10:08', '2020-09-19 13:10:50', null, '上海', null, '');
INSERT INTO `ylrc_area` VALUES ('2', '2020-09-06 16:15:55', '2020-09-06 16:15:55', null, '北京', null, '');
INSERT INTO `ylrc_area` VALUES ('3', '2020-09-06 16:16:08', '2020-09-19 13:12:00', null, '江苏', null, '');
INSERT INTO `ylrc_area` VALUES ('5', '2020-09-06 16:18:10', '2020-09-19 13:11:11', null, '上海市', '1', '');
INSERT INTO `ylrc_area` VALUES ('6', '2020-09-06 16:28:24', '2020-09-06 18:04:04', '5', '浦东新区', '1', '');
INSERT INTO `ylrc_area` VALUES ('7', '2020-09-06 16:29:22', '2020-09-06 17:11:43', null, '北京市', '2', '');
INSERT INTO `ylrc_area` VALUES ('8', '2020-09-06 16:29:32', '2020-09-06 16:29:32', null, '南京', '3', '');
INSERT INTO `ylrc_area` VALUES ('11', '2020-09-06 17:20:42', '2020-09-06 17:21:52', '5', '徐汇区', '1', '');
INSERT INTO `ylrc_area` VALUES ('12', '2020-09-06 17:22:30', '2020-09-06 17:22:30', '5', '黄浦区', '1', '');
INSERT INTO `ylrc_area` VALUES ('13', '2020-09-06 17:22:43', '2020-09-06 17:22:43', '5', '长宁区', '1', '');
INSERT INTO `ylrc_area` VALUES ('14', '2020-09-06 17:22:54', '2020-09-06 17:22:54', '5', '静安区', '1', '');
INSERT INTO `ylrc_area` VALUES ('15', '2020-09-06 17:23:08', '2020-09-06 17:23:08', '5', '普陀区', '1', '');
INSERT INTO `ylrc_area` VALUES ('16', '2020-09-06 17:23:18', '2020-09-06 17:23:18', '5', '虹口区', '1', '');
INSERT INTO `ylrc_area` VALUES ('17', '2020-09-06 17:23:31', '2020-09-06 17:23:31', '5', '杨浦区', '1', '');
INSERT INTO `ylrc_area` VALUES ('18', '2020-09-06 17:23:44', '2020-09-06 17:23:44', '5', '闵行区', '1', '');
INSERT INTO `ylrc_area` VALUES ('19', '2020-09-06 17:23:57', '2020-09-06 17:23:57', '5', '宝山区', '1', '');
INSERT INTO `ylrc_area` VALUES ('20', '2020-09-06 17:24:09', '2020-09-06 17:24:09', '5', '嘉定区', '1', '');
INSERT INTO `ylrc_area` VALUES ('21', '2020-09-06 17:24:19', '2020-09-06 17:24:19', '5', '金山区', '1', '');
INSERT INTO `ylrc_area` VALUES ('22', '2020-09-06 17:24:32', '2020-09-06 17:24:32', '5', '松江区', '1', '');
INSERT INTO `ylrc_area` VALUES ('23', '2020-09-06 17:24:46', '2020-09-06 17:24:46', '5', '青浦区', '1', '');
INSERT INTO `ylrc_area` VALUES ('24', '2020-09-06 17:25:01', '2020-09-06 17:25:01', '5', '奉贤区', '1', '');
INSERT INTO `ylrc_area` VALUES ('25', '2020-09-06 17:25:12', '2020-09-06 17:25:12', '5', '崇明区', '1', '');
INSERT INTO `ylrc_area` VALUES ('26', '2020-09-06 17:25:48', '2020-09-06 17:25:48', '7', '朝阳区', '2', '');
INSERT INTO `ylrc_area` VALUES ('27', '2020-09-06 18:00:57', '2020-09-06 18:00:57', '7', '宣武区', '2', '');
INSERT INTO `ylrc_area` VALUES ('28', '2020-09-06 18:01:15', '2020-09-06 18:01:15', null, '苏州', '3', '');
INSERT INTO `ylrc_area` VALUES ('29', '2020-09-06 18:01:32', '2020-09-19 13:11:40', null, '无锡', '3', '');
INSERT INTO `ylrc_area` VALUES ('30', '2020-09-06 18:01:47', '2020-09-06 18:01:47', '8', '鼓楼区', '3', '');
INSERT INTO `ylrc_area` VALUES ('31', '2020-09-19 13:00:54', '2020-09-19 13:00:54', null, '徐州', '3', '');
INSERT INTO `ylrc_area` VALUES ('32', '2020-09-19 13:01:10', '2020-09-19 13:01:10', null, '昆山', '3', '');
INSERT INTO `ylrc_area` VALUES ('33', '2020-09-19 13:01:50', '2020-09-19 13:01:50', null, '常州', '3', '');
INSERT INTO `ylrc_area` VALUES ('34', '2020-09-19 13:01:59', '2020-09-19 13:01:59', null, '南通', '3', '');
INSERT INTO `ylrc_area` VALUES ('35', '2020-09-19 13:02:13', '2020-09-19 13:02:13', null, '镇江', '3', '');
INSERT INTO `ylrc_area` VALUES ('36', '2020-09-19 13:02:25', '2020-09-19 13:02:25', null, '泰州', '3', '');
INSERT INTO `ylrc_area` VALUES ('37', '2020-09-19 13:02:41', '2020-09-19 13:02:41', null, '连云港', '3', '');
INSERT INTO `ylrc_area` VALUES ('38', '2020-09-19 13:02:51', '2020-09-19 13:02:51', null, '扬州', '3', '');

-- ----------------------------
-- Table structure for `ylrc_cinema`
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_cinema`;
CREATE TABLE `ylrc_cinema` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `address` varchar(128) NOT NULL,
  `cinema_service` varchar(128) DEFAULT NULL,
  `info` varchar(1280) DEFAULT NULL,
  `name` varchar(64) NOT NULL,
  `picture` varchar(512) DEFAULT NULL,
  `rate` decimal(19,2) DEFAULT NULL,
  `tel` varchar(16) NOT NULL,
  `transport` varchar(128) DEFAULT NULL,
  `area_id` bigint(20) DEFAULT NULL,
  `rate_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3rbe1c2ae9xlnyokjqgol32ky` (`area_id`),
  CONSTRAINT `FK3rbe1c2ae9xlnyokjqgol32ky` FOREIGN KEY (`area_id`) REFERENCES `ylrc_area` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_cinema
-- ----------------------------
INSERT INTO `ylrc_cinema` VALUES ('1', '2020-09-14 20:37:04', '2020-10-08 16:06:59', '上海上海市上海上海市人民北路2999号', '_3D,Park,Card,Dining,ChildDiscount,ProductPackage,Rest', '万达影城，牛逼的一塌糊涂！', '松江万达影城', '20200914/1600088570933.jpg', '7.61', '021-743737363', '地铁9号线2号口出', '22', '5');
INSERT INTO `ylrc_cinema` VALUES ('2', '2020-09-14 21:05:57', '2020-10-06 15:08:00', '江苏南京江苏南京江苏南京人民路123号', '_3D,Card,ChildDiscount,Rest', '很好的电影院！', '苏宁影院（鼓楼店）', '20200924/1600956313025.jpg', '6.67', '026-88454546', '738路公交下', '30', '3');
INSERT INTO `ylrc_cinema` VALUES ('3', '2020-09-19 22:11:14', '2020-10-06 15:11:08', '北京北京市朝阳大道001', '_3D,Park,Card,Dining,ChildDiscount,ProductPackage,Rest', '金逸影城MX4D（光美南昌绿地中心店）', '金逸影城MX4D（光美南昌绿地中心店）', '20200919/1600524631158.jpg', '9.00', '010-5556623', '地铁9号线2号口出', '26', '1');
INSERT INTO `ylrc_cinema` VALUES ('4', '2020-09-19 22:13:15', '2020-09-19 22:13:15', '上海上海市青浦区华新镇华志路789号新尚生活广场5楼', '_3D,Park,Card,Dining,ChildDiscount,ProductPackage,Rest', '一米二以下儿童观影免票，需成人陪同，一名成人仅限携带一名儿童，3D电影不', '上影青浦时光国际影城', '20200919/1600524730476.jpg', '0.00', '021-32583818', '地铁9号线2号口出', '23', '0');
INSERT INTO `ylrc_cinema` VALUES ('5', '2020-09-19 22:14:06', '2020-09-19 22:14:06', '上海上海市浦东新区陆家嘴世纪大道8号上海国金中心商场LG1-LG2层', '_3D,Park,Card,Dining,ChildDiscount,ProductPackage,Rest', '百丽宫影城（ifc商场店）', '百丽宫影城（ifc商场店）', '20200919/1600524805636.jpg', '0.00', '021-31263886', '地铁9号线2号口出', '6', '0');
INSERT INTO `ylrc_cinema` VALUES ('6', '2020-09-19 22:15:48', '2020-09-19 22:15:48', '上海上海市浦东新区上南路4467号20号中房金谊广场北区1层', '_3D,Park,Card,Dining,ChildDiscount,ProductPackage,Rest', '金谊华夏影城（三林店）', '金谊华夏影城（三林店）', '20200919/1600524921262.jpg', '0.00', '021-58583586-808', '地铁11号线2号口出', '6', '0');

-- ----------------------------
-- Table structure for `ylrc_cinema_comment`
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_cinema_comment`;
CREATE TABLE `ylrc_cinema_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `content` varchar(512) NOT NULL,
  `rate` decimal(19,2) NOT NULL,
  `account_id` bigint(20) NOT NULL,
  `cinema_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK62335x5bldhxxrvxyn2g6hh7l` (`account_id`),
  KEY `FKe2arjnvu7p5ckp9vnule741ia` (`cinema_id`),
  CONSTRAINT `FK62335x5bldhxxrvxyn2g6hh7l` FOREIGN KEY (`account_id`) REFERENCES `ylrc_account` (`id`),
  CONSTRAINT `FKe2arjnvu7p5ckp9vnule741ia` FOREIGN KEY (`cinema_id`) REFERENCES `ylrc_cinema` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_cinema_comment
-- ----------------------------
INSERT INTO `ylrc_cinema_comment` VALUES ('1', '2020-10-06 14:42:41', '2020-10-06 14:42:41', '还不错，就是位置有点偏僻！', '8.00', '3', '1');
INSERT INTO `ylrc_cinema_comment` VALUES ('2', '2020-10-06 14:50:22', '2020-10-06 14:50:22', '竟然没地方停车，这么大个电影也是醉了！！！', '6.00', '3', '1');
INSERT INTO `ylrc_cinema_comment` VALUES ('4', '2020-10-06 14:56:13', '2020-10-06 14:56:13', '这次的巨幕影厅很棒。', '9.00', '3', '1');
INSERT INTO `ylrc_cinema_comment` VALUES ('5', '2020-10-06 15:03:55', '2020-10-06 15:03:55', '还好吧。', '7.00', '3', '2');
INSERT INTO `ylrc_cinema_comment` VALUES ('6', '2020-10-06 15:07:22', '2020-10-06 15:07:22', '这次体验不错！', '9.00', '3', '2');
INSERT INTO `ylrc_cinema_comment` VALUES ('7', '2020-10-06 15:08:00', '2020-10-06 15:08:00', '这次体验一般！', '4.00', '3', '2');
INSERT INTO `ylrc_cinema_comment` VALUES ('8', '2020-10-06 15:11:08', '2020-10-06 15:11:08', '完美的一次体验！', '9.00', '3', '3');
INSERT INTO `ylrc_cinema_comment` VALUES ('9', '2020-10-06 23:36:06', '2020-10-06 23:36:06', '以前上学的时候经常去。还可以！', '7.00', '2', '1');
INSERT INTO `ylrc_cinema_comment` VALUES ('11', '2020-10-08 16:06:59', '2020-10-08 16:06:59', '还不错', '8.00', '4', '1');

-- ----------------------------
-- Table structure for `ylrc_cinema_hall`
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_cinema_hall`;
CREATE TABLE `ylrc_cinema_hall` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `max_x` int(11) NOT NULL,
  `max_y` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `cinema_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKcpgl2ik7d1ilwpjkm3mk9a5kj` (`cinema_id`),
  CONSTRAINT `FKcpgl2ik7d1ilwpjkm3mk9a5kj` FOREIGN KEY (`cinema_id`) REFERENCES `ylrc_cinema` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_cinema_hall
-- ----------------------------
INSERT INTO `ylrc_cinema_hall` VALUES ('1', '2020-09-15 20:07:53', '2020-09-16 20:03:02', '8', '9', '3D巨幕大厅', '2');
INSERT INTO `ylrc_cinema_hall` VALUES ('3', '2020-09-16 21:47:28', '2020-09-16 21:47:28', '9', '9', '1号巨幕影厅', '1');
INSERT INTO `ylrc_cinema_hall` VALUES ('4', '2020-09-24 21:09:43', '2020-09-24 21:09:43', '8', '11', '1号厅', '3');

-- ----------------------------
-- Table structure for `ylrc_cinema_hall_seat`
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_cinema_hall_seat`;
CREATE TABLE `ylrc_cinema_hall_seat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `cinema_hall_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKmdwbvcb0bsjcx8qqpbgi46flo` (`cinema_hall_id`),
  CONSTRAINT `FKmdwbvcb0bsjcx8qqpbgi46flo` FOREIGN KEY (`cinema_hall_id`) REFERENCES `ylrc_cinema_hall` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_cinema_hall_seat
-- ----------------------------
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('1', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '1', '1', '1', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('2', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '1', '2', '1', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('3', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '1', '3', '1', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('4', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '2', '4', '1', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('5', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '2', '5', '1', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('6', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '1', '6', '1', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('7', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '1', '7', '1', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('8', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '1', '8', '1', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('9', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '1', '1', '2', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('10', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '1', '2', '2', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('11', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '2', '3', '2', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('12', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '1', '4', '2', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('13', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '1', '5', '2', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('14', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '2', '6', '2', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('15', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '1', '7', '2', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('16', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '1', '8', '2', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('17', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '1', '1', '3', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('18', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '2', '2', '3', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('19', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '0', '1', '3', '3', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('20', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '0', '1', '4', '3', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('21', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '0', '1', '5', '3', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('22', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '0', '1', '6', '3', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('23', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '2', '7', '3', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('24', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '1', '8', '3', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('25', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '2', '1', '4', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('26', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '0', '1', '2', '4', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('27', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '1', '3', '4', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('28', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '1', '4', '4', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('29', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '1', '5', '4', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('30', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '1', '6', '4', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('31', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '0', '1', '7', '4', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('32', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '2', '8', '4', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('33', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '2', '1', '5', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('34', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '0', '1', '2', '5', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('35', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '1', '3', '5', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('36', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '1', '4', '5', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('37', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '1', '5', '5', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('38', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '1', '6', '5', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('39', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '0', '1', '7', '5', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('40', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '2', '8', '5', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('41', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '2', '1', '6', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('42', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '0', '1', '2', '6', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('43', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '1', '3', '6', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('44', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '1', '4', '6', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('45', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '1', '5', '6', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('46', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '1', '6', '6', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('47', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '0', '1', '7', '6', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('48', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '2', '8', '6', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('49', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '2', '1', '7', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('50', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '0', '1', '2', '7', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('51', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '1', '3', '7', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('52', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '1', '4', '7', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('53', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '1', '5', '7', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('54', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '1', '6', '7', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('55', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '0', '1', '7', '7', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('56', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '2', '8', '7', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('57', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '1', '1', '8', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('58', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '2', '2', '8', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('59', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '1', '3', '8', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('60', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '1', '4', '8', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('61', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '1', '5', '8', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('62', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '1', '6', '8', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('63', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '2', '7', '8', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('64', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '1', '8', '8', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('65', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '1', '1', '9', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('66', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '1', '2', '9', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('67', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '2', '3', '9', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('68', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '2', '4', '9', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('69', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '2', '5', '9', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('70', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '2', '6', '9', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('71', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '1', '7', '9', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('72', '2020-09-16 21:25:09', '2020-09-16 21:53:10', '1', '1', '8', '9', '1');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('73', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '1', '1', '1', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('74', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '1', '2', '1', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('75', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '2', '3', '1', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('76', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '2', '4', '1', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('77', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '2', '5', '1', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('78', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '2', '6', '1', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('79', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '2', '7', '1', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('80', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '1', '8', '1', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('81', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '1', '9', '1', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('82', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '1', '1', '2', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('83', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '2', '2', '2', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('84', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '1', '3', '2', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('85', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '1', '4', '2', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('86', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '0', '1', '5', '2', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('87', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '1', '6', '2', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('88', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '0', '1', '7', '2', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('89', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '2', '8', '2', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('90', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '1', '9', '2', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('91', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '2', '1', '3', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('92', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '1', '2', '3', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('93', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '1', '3', '3', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('94', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '1', '4', '3', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('95', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '1', '5', '3', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('96', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '1', '6', '3', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('97', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '1', '7', '3', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('98', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '1', '8', '3', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('99', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '2', '9', '3', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('100', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '2', '1', '4', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('101', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '1', '2', '4', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('102', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '0', '2', '3', '4', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('103', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '1', '4', '4', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('104', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '1', '5', '4', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('105', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '1', '6', '4', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('106', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '1', '7', '4', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('107', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '0', '1', '8', '4', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('108', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '2', '9', '4', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('109', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '2', '1', '5', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('110', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '1', '2', '5', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('111', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '1', '3', '5', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('112', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '1', '4', '5', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('113', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '1', '5', '5', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('114', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '1', '6', '5', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('115', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '1', '7', '5', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('116', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '0', '1', '8', '5', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('117', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '2', '9', '5', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('118', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '2', '1', '6', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('119', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '1', '2', '6', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('120', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '1', '3', '6', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('121', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '1', '4', '6', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('122', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '1', '5', '6', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('123', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '1', '6', '6', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('124', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '1', '7', '6', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('125', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '1', '8', '6', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('126', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '2', '9', '6', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('127', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '2', '1', '7', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('128', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '0', '1', '2', '7', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('129', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '1', '3', '7', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('130', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '1', '4', '7', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('131', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '1', '5', '7', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('132', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '1', '6', '7', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('133', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '1', '7', '7', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('134', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '0', '1', '8', '7', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('135', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '2', '9', '7', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('136', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '1', '1', '8', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('137', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '2', '2', '8', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('138', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '1', '3', '8', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('139', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '1', '4', '8', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('140', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '1', '5', '8', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('141', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '1', '6', '8', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('142', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '1', '7', '8', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('143', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '2', '8', '8', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('144', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '1', '9', '8', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('145', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '1', '1', '9', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('146', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '1', '2', '9', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('147', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '2', '3', '9', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('148', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '2', '4', '9', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('149', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '2', '5', '9', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('150', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '2', '6', '9', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('151', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '2', '7', '9', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('152', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '1', '8', '9', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('153', '2020-09-16 21:53:59', '2020-10-03 13:42:01', '1', '1', '9', '9', '3');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('154', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '1', '1', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('155', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '2', '1', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('156', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '3', '1', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('157', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '4', '1', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('158', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '5', '1', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('159', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '6', '1', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('160', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '7', '1', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('161', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '8', '1', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('162', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '1', '2', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('163', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '2', '2', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('164', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '3', '2', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('165', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '4', '2', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('166', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '5', '2', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('167', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '6', '2', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('168', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '7', '2', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('169', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '8', '2', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('170', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '1', '3', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('171', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '2', '3', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('172', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '3', '3', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('173', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '4', '3', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('174', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '5', '3', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('175', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '6', '3', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('176', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '7', '3', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('177', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '8', '3', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('178', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '1', '4', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('179', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '2', '4', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('180', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '3', '4', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('181', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '4', '4', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('182', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '5', '4', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('183', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '6', '4', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('184', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '7', '4', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('185', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '8', '4', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('186', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '1', '5', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('187', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '2', '5', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('188', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '3', '5', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('189', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '4', '5', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('190', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '5', '5', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('191', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '6', '5', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('192', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '7', '5', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('193', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '8', '5', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('194', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '1', '6', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('195', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '2', '6', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('196', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '3', '6', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('197', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '4', '6', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('198', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '5', '6', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('199', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '6', '6', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('200', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '7', '6', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('201', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '8', '6', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('202', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '1', '7', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('203', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '2', '7', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('204', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '3', '7', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('205', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '4', '7', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('206', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '5', '7', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('207', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '6', '7', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('208', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '7', '7', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('209', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '8', '7', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('210', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '1', '8', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('211', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '2', '8', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('212', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '3', '8', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('213', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '4', '8', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('214', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '5', '8', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('215', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '6', '8', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('216', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '7', '8', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('217', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '8', '8', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('218', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '1', '9', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('219', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '2', '9', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('220', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '3', '9', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('221', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '4', '9', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('222', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '5', '9', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('223', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '6', '9', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('224', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '7', '9', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('225', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '8', '9', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('226', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '1', '10', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('227', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '2', '10', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('228', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '3', '10', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('229', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '4', '10', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('230', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '5', '10', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('231', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '6', '10', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('232', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '7', '10', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('233', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '8', '10', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('234', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '1', '11', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('235', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '2', '11', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('236', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '3', '11', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('237', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '4', '11', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('238', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '5', '11', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('239', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '6', '11', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('240', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '7', '11', '4');
INSERT INTO `ylrc_cinema_hall_seat` VALUES ('241', '2020-09-24 21:09:53', '2020-09-24 21:09:53', '1', '1', '8', '11', '4');

-- ----------------------------
-- Table structure for `ylrc_cinema_hall_session`
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_cinema_hall_session`;
CREATE TABLE `ylrc_cinema_hall_session` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `show_date` varchar(12) NOT NULL,
  `show_time` varchar(12) NOT NULL,
  `cinema_id` bigint(20) DEFAULT NULL,
  `cinema_hall_id` bigint(20) DEFAULT NULL,
  `movie_id` bigint(20) DEFAULT NULL,
  `cinema_session_type` int(11) NOT NULL,
  `end_time` varchar(18) NOT NULL,
  `new_price` decimal(19,2) NOT NULL,
  `old_price` decimal(19,2) NOT NULL,
  `start_time` varchar(18) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKcqci2i9g2044uicf07sxwwcoi` (`cinema_id`),
  KEY `FK23nq84td4lhlgow750x6w52st` (`cinema_hall_id`),
  KEY `FK8yo0mdhaupvsygja3uncoh60s` (`movie_id`),
  CONSTRAINT `FK23nq84td4lhlgow750x6w52st` FOREIGN KEY (`cinema_hall_id`) REFERENCES `ylrc_cinema_hall` (`id`),
  CONSTRAINT `FK8yo0mdhaupvsygja3uncoh60s` FOREIGN KEY (`movie_id`) REFERENCES `ylrc_movie` (`id`),
  CONSTRAINT `FKcqci2i9g2044uicf07sxwwcoi` FOREIGN KEY (`cinema_id`) REFERENCES `ylrc_cinema` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_cinema_hall_session
-- ----------------------------
INSERT INTO `ylrc_cinema_hall_session` VALUES ('1', '2020-09-15 20:07:53', '2020-10-06 20:33:56', '2020-11-19', '08:30', '1', '3', '2', '1', '2020-11-19 10:25', '45.00', '100.00', '2020-11-19 08:30');
INSERT INTO `ylrc_cinema_hall_session` VALUES ('2', '2020-09-17 20:37:36', '2020-10-06 20:42:47', '2020-11-18', '11:30', '1', '3', '1', '0', '2020-11-18 13:52', '45.00', '80.00', '2020-11-18 11:30');
INSERT INTO `ylrc_cinema_hall_session` VALUES ('3', '2020-09-16 21:47:28', '2020-09-26 20:34:15', '2020-10-18', '13:30', '2', '1', '1', '0', '2020-10-18 15:52', '45.50', '88.00', '2020-10-18 13:30');
INSERT INTO `ylrc_cinema_hall_session` VALUES ('4', '2020-09-17 20:38:12', '2020-09-26 20:34:20', '2020-10-18', '08:00', '2', '1', '1', '0', '2020-10-18 10:22', '55.00', '66.00', '2020-10-18 08:00');
INSERT INTO `ylrc_cinema_hall_session` VALUES ('5', '2020-09-24 21:10:21', '2020-09-26 20:34:26', '2020-10-23', '20:00', '3', '4', '3', '0', '2020-10-23 21:45', '65.00', '100.00', '2020-10-23 20:00');
INSERT INTO `ylrc_cinema_hall_session` VALUES ('6', '2020-09-26 12:26:23', '2020-09-26 20:34:30', '2020-10-25', '20:00', '3', '4', '1', '0', '2020-10-25 22:22', '66.00', '98.00', '2020-10-25 20:00');
INSERT INTO `ylrc_cinema_hall_session` VALUES ('7', '2020-09-26 12:26:41', '2020-09-26 20:34:51', '2020-10-20', '22:00', '1', '3', '1', '0', '2020-10-21 00:22', '63.00', '100.00', '2020-10-20 22:00');
INSERT INTO `ylrc_cinema_hall_session` VALUES ('8', '2020-09-26 12:26:59', '2020-09-26 20:34:56', '2020-10-19', '09:00', '2', '1', '1', '0', '2020-10-19 11:22', '44.00', '68.00', '2020-10-19 09:00');
INSERT INTO `ylrc_cinema_hall_session` VALUES ('9', '2020-09-26 13:03:13', '2020-09-26 20:35:01', '2020-10-19', '09:00', '3', '4', '1', '0', '2020-10-19 11:22', '56.00', '78.00', '2020-10-19 09:00');
INSERT INTO `ylrc_cinema_hall_session` VALUES ('10', '2020-09-26 15:44:16', '2020-09-26 20:35:07', '2020-10-19', '10:30', '1', '3', '1', '2', '2020-10-19 12:52', '68.00', '55.00', '2020-10-19 10:30');
INSERT INTO `ylrc_cinema_hall_session` VALUES ('11', '2020-09-26 20:09:38', '2020-09-26 20:46:25', '2020-10-18', '14:00', '1', '3', '1', '1', '2020-10-18 16:22', '56.00', '66.00', '2020-10-18 14:00');
INSERT INTO `ylrc_cinema_hall_session` VALUES ('12', '2020-09-26 20:38:20', '2020-09-26 20:46:51', '2020-10-18', '17:00', '1', '3', '1', '1', '2020-10-18 19:22', '40.00', '66.00', '2020-10-18 17:00');
INSERT INTO `ylrc_cinema_hall_session` VALUES ('13', '2020-09-26 20:41:36', '2020-09-26 20:47:10', '2020-10-18', '19:30', '1', '3', '1', '1', '2020-10-18 21:52', '41.00', '88.00', '2020-10-18 19:30');
INSERT INTO `ylrc_cinema_hall_session` VALUES ('14', '2020-09-26 20:48:11', '2020-09-26 20:48:11', '2020-10-18', '08:00', '1', '3', '2', '1', '2020-10-18 09:55', '45.00', '80.00', '2020-10-18 08:00');
INSERT INTO `ylrc_cinema_hall_session` VALUES ('15', '2020-09-26 20:50:07', '2020-09-26 20:50:07', '2020-10-18', '22:00', '1', '3', '10', '1', '2020-10-19 00:27', '55.00', '100.00', '2020-10-18 22:00');
INSERT INTO `ylrc_cinema_hall_session` VALUES ('16', '2020-09-26 20:51:06', '2020-09-26 20:51:06', '2020-10-18', '05:00', '1', '3', '14', '1', '2020-10-18 07:03', '50.00', '66.00', '2020-10-18 05:00');
INSERT INTO `ylrc_cinema_hall_session` VALUES ('17', '2020-09-26 20:53:22', '2020-09-26 20:53:22', '2020-10-18', '03:00', '1', '3', '7', '0', '2020-10-18 04:50', '35.00', '50.00', '2020-10-18 03:00');

-- ----------------------------
-- Table structure for `ylrc_database_bak`
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_database_bak`;
CREATE TABLE `ylrc_database_bak` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `filename` varchar(32) NOT NULL,
  `filepath` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_database_bak
-- ----------------------------
INSERT INTO `ylrc_database_bak` VALUES ('10', '2020-03-22 19:36:47', '2020-03-22 19:36:47', 'db_boot_base_20200322193647.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('11', '2020-03-22 19:37:54', '2020-03-22 19:37:54', 'db_boot_base_20200322193754.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('12', '2020-03-22 19:40:04', '2020-03-22 19:40:04', 'db_boot_base_20200322194004.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('14', '2020-03-22 19:40:14', '2020-03-22 19:40:14', 'db_boot_base_20200322194014.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('15', '2020-03-22 19:40:19', '2020-03-22 19:40:19', 'db_boot_base_20200322194019.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('17', '2020-03-22 19:43:34', '2020-03-22 19:43:34', 'db_boot_base_20200322194334.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('18', '2020-03-22 19:43:39', '2020-03-22 19:43:39', 'db_boot_base_20200322194339.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('20', '2020-03-22 19:43:49', '2020-03-22 19:43:49', 'db_boot_base_20200322194349.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('21', '2020-03-22 19:43:54', '2020-03-22 19:43:54', 'db_boot_base_20200322194354.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('22', '2020-03-22 19:43:59', '2020-03-22 19:43:59', 'db_boot_base_20200322194359.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('23', '2020-03-22 19:44:04', '2020-03-22 19:44:04', 'db_boot_base_20200322194404.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('24', '2020-03-22 19:44:09', '2020-03-22 19:44:09', 'db_boot_base_20200322194409.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('25', '2020-03-22 19:44:14', '2020-03-22 19:44:14', 'db_boot_base_20200322194414.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('26', '2020-03-22 19:44:19', '2020-03-22 19:44:19', 'db_boot_base_20200322194419.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('27', '2020-03-22 19:44:24', '2020-03-22 19:44:24', 'db_boot_base_20200322194424.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('28', '2020-03-22 19:44:29', '2020-03-22 19:44:29', 'db_boot_base_20200322194429.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('29', '2020-03-22 19:44:34', '2020-03-22 19:44:34', 'db_boot_base_20200322194434.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('30', '2020-03-22 19:44:39', '2020-03-22 19:44:39', 'db_boot_base_20200322194439.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('31', '2020-03-23 17:46:49', '2020-03-23 17:46:49', 'db_boot_base_20200323174649.sql', 'D:/workspace_devloper/baseproject/base/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('32', '2020-09-02 21:53:16', '2020-09-02 21:53:16', 'db_boot_movie_20200902215316.sql', 'E:/workspace-devloper/movie/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('33', '2020-09-02 21:53:36', '2020-09-02 21:53:36', 'db_boot_movie_20200902215335.sql', 'E:/workspace-devloper/movie/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('34', '2020-09-20 01:00:00', '2020-09-20 01:00:00', 'db_boot_movie_20200920010000.sql', 'E:/workspace-devloper/movie/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('35', '2020-09-26 01:00:00', '2020-09-26 01:00:00', 'db_boot_movie_20200926010000.sql', 'E:/workspace-devloper/movie/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('36', '2020-10-04 01:00:00', '2020-10-04 01:00:00', 'db_boot_movie_20201004010000.sql', 'E:/workspace-devloper/movie/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('37', '2020-10-05 01:00:00', '2020-10-05 01:00:00', 'db_boot_movie_20201005010000.sql', 'E:/workspace-devloper/movie/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('38', '2020-10-06 01:00:00', '2020-10-06 01:00:00', 'db_boot_movie_20201006010000.sql', 'E:/workspace-devloper/movie/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('39', '2020-10-07 01:00:00', '2020-10-07 01:00:00', 'db_boot_movie_20201007010000.sql', 'E:/workspace-devloper/movie/src/main/resources/backup/');
INSERT INTO `ylrc_database_bak` VALUES ('40', '2020-10-08 01:00:00', '2020-10-08 01:00:00', 'db_boot_movie_20201008010000.sql', 'E:/workspace-devloper/movie/src/main/resources/backup/');

-- ----------------------------
-- Table structure for `ylrc_menu`
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_menu`;
CREATE TABLE `ylrc_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `name` varchar(18) NOT NULL,
  `url` varchar(128) DEFAULT NULL,
  `icon` varchar(32) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `is_bitton` bit(1) NOT NULL,
  `is_show` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKsbtnjocfrq29e8taxdwo21gic` (`parent_id`),
  CONSTRAINT `FKsbtnjocfrq29e8taxdwo21gic` FOREIGN KEY (`parent_id`) REFERENCES `ylrc_menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_menu
-- ----------------------------
INSERT INTO `ylrc_menu` VALUES ('2', '2020-03-14 14:26:03', '2020-03-14 18:24:53', '系统设置', '', 'mdi-settings', '0', null, '', '');
INSERT INTO `ylrc_menu` VALUES ('3', '2020-03-14 16:58:55', '2020-03-14 18:26:02', '菜单管理', '/admin/menu/list', 'mdi-view-list', '1', '2', '', '');
INSERT INTO `ylrc_menu` VALUES ('5', '2020-03-14 17:04:44', '2020-03-14 18:27:53', '新增', '/admin/menu/add', 'mdi-plus', '2', '3', '', '');
INSERT INTO `ylrc_menu` VALUES ('7', '2020-03-14 17:07:43', '2020-03-15 12:11:25', '角色管理', '/admin/role/list', 'mdi-account-settings-variant', '5', '2', '', '');
INSERT INTO `ylrc_menu` VALUES ('8', '2020-03-14 18:28:48', '2020-03-21 22:04:45', '编辑', 'edit(\'/admin/menu/edit\')', 'mdi-grease-pencil', '3', '3', '', '');
INSERT INTO `ylrc_menu` VALUES ('9', '2020-03-14 18:30:00', '2020-03-21 22:08:20', '删除', 'del(\'/admin/menu/delete\')', 'mdi-close', '4', '3', '', '');
INSERT INTO `ylrc_menu` VALUES ('10', '2020-03-15 12:12:00', '2020-03-15 12:12:00', '添加', '/admin/role/add', 'mdi-account-plus', '6', '7', '', '');
INSERT INTO `ylrc_menu` VALUES ('11', '2020-03-15 12:12:36', '2020-03-21 22:10:45', '编辑', 'edit(\'/admin/role/edit\')', 'mdi-account-edit', '7', '7', '', '');
INSERT INTO `ylrc_menu` VALUES ('12', '2020-03-15 12:13:19', '2020-03-21 22:15:27', '删除', 'del(\'/admin/role/delete\')', 'mdi-account-remove', '8', '7', '', '');
INSERT INTO `ylrc_menu` VALUES ('13', '2020-03-15 12:14:52', '2020-03-15 12:17:00', '用户管理', '/admin/user/list', 'mdi-account-multiple', '9', '2', '', '');
INSERT INTO `ylrc_menu` VALUES ('14', '2020-03-15 12:15:22', '2020-03-15 12:17:27', '添加', '/admin/user/add', 'mdi-account-plus', '10', '13', '', '');
INSERT INTO `ylrc_menu` VALUES ('15', '2020-03-16 17:18:14', '2020-03-21 22:11:19', '编辑', 'edit(\'/admin/user/edit\')', 'mdi-account-edit', '11', '13', '', '');
INSERT INTO `ylrc_menu` VALUES ('16', '2020-03-16 17:19:01', '2020-03-21 22:15:36', '删除', 'del(\'/admin/user/delete\')', 'mdi-account-remove', '12', '13', '', '');
INSERT INTO `ylrc_menu` VALUES ('19', '2020-03-22 11:24:36', '2020-03-22 11:26:00', '上传图片', '/upload/upload_photo', 'mdi-arrow-up-bold-circle', '0', '13', '', '');
INSERT INTO `ylrc_menu` VALUES ('20', '2020-03-22 14:09:35', '2020-03-22 14:09:47', '日志管理', '/system/operator_log_list', 'mdi-tag-multiple', '13', '2', '', '');
INSERT INTO `ylrc_menu` VALUES ('21', '2020-03-22 14:11:39', '2020-03-22 14:11:39', '删除', 'del(\'/system/delete_operator_log\')', 'mdi-tag-remove', '14', '20', '', '');
INSERT INTO `ylrc_menu` VALUES ('22', '2020-03-22 14:12:57', '2020-03-22 14:46:55', '清空日志', 'delAll(\'/system/delete_all_operator_log\')', 'mdi-delete-circle', '15', '20', '', '');
INSERT INTO `ylrc_menu` VALUES ('23', '2020-03-22 14:46:40', '2020-03-22 14:47:09', '数据备份', '/admin/database_bak/list', 'mdi-database', '16', '2', '', '');
INSERT INTO `ylrc_menu` VALUES ('24', '2020-03-22 14:48:07', '2020-03-22 15:13:41', '备份', 'add(\'/admin/database_bak/add\')', 'mdi-database-plus', '17', '23', '', '');
INSERT INTO `ylrc_menu` VALUES ('25', '2020-03-22 14:49:03', '2020-03-22 14:49:03', '删除', 'del(\'/admin/database_bak/delete\')', 'mdi-database-minus', '18', '23', '', '');
INSERT INTO `ylrc_menu` VALUES ('26', '2020-03-22 19:36:20', '2020-03-22 19:36:20', '还原', 'restore(\'/admin/database_bak/restore\')', 'mdi-database-minus', '19', '23', '', '');
INSERT INTO `ylrc_menu` VALUES ('27', '2020-09-03 20:31:22', '2020-09-03 20:31:40', '地域管理', '', 'mdi-map', '20', null, '', '');
INSERT INTO `ylrc_menu` VALUES ('28', '2020-09-03 20:32:50', '2020-09-03 20:32:50', '地域列表', '/admin/area/list', 'mdi-map-marker-multiple', '21', '27', '', '');
INSERT INTO `ylrc_menu` VALUES ('29', '2020-09-03 20:33:34', '2020-09-03 20:33:34', '添加', '/admin/area/add', 'mdi-map-marker-plus', '22', '28', '', '');
INSERT INTO `ylrc_menu` VALUES ('30', '2020-09-03 20:34:38', '2020-09-03 20:34:38', '编辑', 'edit(\'/admin/area/edit\')', 'mdi-map-marker-radius', '23', '28', '', '');
INSERT INTO `ylrc_menu` VALUES ('31', '2020-09-03 20:35:22', '2020-09-03 20:35:22', '删除', 'del(\'/admin/area/delete\')', 'mdi-map-marker-minus', '24', '28', '', '');
INSERT INTO `ylrc_menu` VALUES ('32', '2020-09-06 17:55:12', '2020-09-06 18:10:56', '获取省份下的城市列表', '/admin/area/get_citys', 'mdi-format-list-bulleted', '25', '28', '', '');
INSERT INTO `ylrc_menu` VALUES ('33', '2020-09-06 18:10:40', '2020-09-06 18:13:10', '电影管理', '', 'mdi-movie', '26', null, '', '');
INSERT INTO `ylrc_menu` VALUES ('34', '2020-09-06 18:12:51', '2020-09-06 18:12:51', '电影列表', '/admin/movie/list', 'mdi-microsoft', '28', '33', '', '');
INSERT INTO `ylrc_menu` VALUES ('35', '2020-09-06 18:16:11', '2020-09-06 18:16:11', '添加', '/admin/movie/add', 'mdi-plus-circle', '29', '34', '', '');
INSERT INTO `ylrc_menu` VALUES ('36', '2020-09-06 18:16:54', '2020-09-13 18:30:50', '编辑', 'edit(\'/admin/movie/edit\')', 'mdi-border-color', '30', '34', '', '');
INSERT INTO `ylrc_menu` VALUES ('37', '2020-09-06 18:18:09', '2020-09-06 18:18:09', '删除', 'del(\'/admin/movie/delete\')', 'mdi-minus-circle', '31', '34', '', '');
INSERT INTO `ylrc_menu` VALUES ('38', '2020-09-13 14:45:57', '2020-09-13 20:58:39', '上传视频', '/upload/upload_video', 'mdi-arrow-expand-up', '32', '34', '', '');
INSERT INTO `ylrc_menu` VALUES ('39', '2020-09-13 20:58:28', '2020-09-13 20:58:47', '影院管理', '', 'mdi-store', '33', null, '', '');
INSERT INTO `ylrc_menu` VALUES ('40', '2020-09-13 21:00:02', '2020-09-13 21:00:02', '影院列表', '/admin/cinema/list', 'mdi-raspberrypi', '34', '39', '', '');
INSERT INTO `ylrc_menu` VALUES ('41', '2020-09-13 21:02:55', '2020-09-13 21:02:55', '添加', '/admin/cinema/add', 'mdi-loupe', '35', '40', '', '');
INSERT INTO `ylrc_menu` VALUES ('42', '2020-09-13 21:03:42', '2020-09-13 21:03:51', '编辑', 'edit(\'/admin/cinema/edit\')', 'mdi-pencil', '36', '40', '', '');
INSERT INTO `ylrc_menu` VALUES ('43', '2020-09-13 21:04:28', '2020-09-13 21:04:28', '删除', 'del(\'/admin/cinema/delete\')', 'mdi-close', '37', '40', '', '');
INSERT INTO `ylrc_menu` VALUES ('44', '2020-09-14 19:30:50', '2020-09-14 19:31:15', '获取城市下的区列表', '/admin/area/get_districts', 'mdi-circle-outline', '38', '28', '', '');
INSERT INTO `ylrc_menu` VALUES ('45', '2020-09-15 19:44:19', '2020-09-15 19:44:34', '影厅管理', '', 'mdi-hospital-building', '39', null, '', '');
INSERT INTO `ylrc_menu` VALUES ('46', '2020-09-15 19:45:06', '2020-09-15 19:45:06', '影厅列表', '/admin/cinema_hall/list', 'mdi-houzz', '41', '45', '', '');
INSERT INTO `ylrc_menu` VALUES ('47', '2020-09-15 19:46:22', '2020-09-15 19:46:22', '添加', '/admin/cinema_hall/add', 'mdi-table-row-plus-after', '42', '46', '', '');
INSERT INTO `ylrc_menu` VALUES ('48', '2020-09-15 19:47:06', '2020-09-15 19:47:06', '编辑', 'edit(\'/admin/cinema_hall/edit\')', 'mdi-eyedropper-variant', '43', '46', '', '');
INSERT INTO `ylrc_menu` VALUES ('49', '2020-09-15 19:47:37', '2020-09-15 19:47:37', '删除', 'del(\'/admin/cinema_hall/delete\')', 'mdi-close', '44', '46', '', '');
INSERT INTO `ylrc_menu` VALUES ('50', '2020-09-15 19:48:36', '2020-09-15 19:48:36', '编辑座位', 'editSeat(\'/admin/cinema_hall/edit_seat\')', 'mdi-gate', '45', '46', '', '');
INSERT INTO `ylrc_menu` VALUES ('51', '2020-09-17 19:53:01', '2020-09-17 19:53:01', '排片管理', '', 'mdi-filmstrip', '46', null, '', '');
INSERT INTO `ylrc_menu` VALUES ('52', '2020-09-17 19:55:38', '2020-09-17 19:55:38', '场次列表', '/admin/cinema_hall_session/list', 'mdi-film', '47', '51', '', '');
INSERT INTO `ylrc_menu` VALUES ('53', '2020-09-17 19:56:31', '2020-09-17 19:56:31', '添加', '/admin/cinema_hall_session/add', 'mdi-plus-circle', '48', '52', '', '');
INSERT INTO `ylrc_menu` VALUES ('54', '2020-09-17 19:57:03', '2020-09-17 19:57:03', '编辑', 'edit(\'/admin/cinema_hall_session/edit\')', 'mdi-border-color', '49', '52', '', '');
INSERT INTO `ylrc_menu` VALUES ('55', '2020-09-17 19:57:33', '2020-09-17 19:57:33', '删除', 'del(\'/admin/cinema_hall_session/delete\')', 'mdi-filmstrip-off', '50', '52', '', '');
INSERT INTO `ylrc_menu` VALUES ('56', '2020-09-17 20:03:43', '2020-09-17 20:03:43', '根据影院查找所属影厅', '/admin/cinema_hall/get_cinema_halls', 'mdi-autorenew', '51', '46', '', '');
INSERT INTO `ylrc_menu` VALUES ('57', '2020-09-21 21:51:27', '2020-09-21 21:51:27', '新闻资讯', '', 'mdi-note-text', '52', null, '', '');
INSERT INTO `ylrc_menu` VALUES ('58', '2020-09-21 21:52:15', '2020-09-21 21:52:15', '分类管理', '/admin/news_category/list', 'mdi-clipboard-text', '53', '57', '', '');
INSERT INTO `ylrc_menu` VALUES ('59', '2020-09-21 21:53:06', '2020-09-21 21:53:06', '添加', '/admin/news_category/add', 'mdi-library-plus', '54', '58', '', '');
INSERT INTO `ylrc_menu` VALUES ('60', '2020-09-21 21:53:40', '2020-09-21 21:53:40', '编辑', 'edit(\'/admin/news_category/edit\')', 'mdi-border-color', '55', '58', '', '');
INSERT INTO `ylrc_menu` VALUES ('61', '2020-09-21 21:54:15', '2020-09-21 21:54:15', '删除', 'del(\'/admin/news_category/delete\')', 'mdi-close', '56', '58', '', '');
INSERT INTO `ylrc_menu` VALUES ('62', '2020-09-21 21:54:45', '2020-09-21 21:54:45', '资讯管理', '/admin/news/list', 'mdi-angular', '57', '57', '', '');
INSERT INTO `ylrc_menu` VALUES ('63', '2020-09-21 21:55:20', '2020-09-21 21:55:20', '添加', '/admin/news/add', 'mdi-plus-circle', '58', '62', '', '');
INSERT INTO `ylrc_menu` VALUES ('64', '2020-09-21 21:55:42', '2020-09-21 21:55:52', '编辑', 'edit(\'/admin/news/edit\')', 'mdi-border-color', '59', '62', '', '');
INSERT INTO `ylrc_menu` VALUES ('65', '2020-09-21 21:56:43', '2020-09-21 21:56:43', '删除', 'del(\'/admin/news/delete\')', 'mdi-close', '60', '62', '', '');
INSERT INTO `ylrc_menu` VALUES ('66', '2020-10-06 21:11:12', '2020-10-06 21:11:25', '用户管理', '', 'mdi-account-multiple', '61', null, '', '');
INSERT INTO `ylrc_menu` VALUES ('67', '2020-10-06 21:13:24', '2020-10-06 21:13:24', '用户列表', '/admin/account/list', 'mdi-account-settings-variant', '62', '66', '', '');
INSERT INTO `ylrc_menu` VALUES ('68', '2020-10-06 21:14:30', '2020-10-06 21:14:30', '编辑状态', 'edit(\'/admin/account/edit\')', 'mdi-account-settings-variant', '63', '67', '', '');
INSERT INTO `ylrc_menu` VALUES ('69', '2020-10-06 21:49:02', '2020-10-06 21:49:02', '订单管理', '', 'mdi-currency-cny', '64', null, '', '');
INSERT INTO `ylrc_menu` VALUES ('70', '2020-10-06 21:49:44', '2020-10-06 21:49:44', '订单列表', '/admin/order/list', 'mdi-currency-usd', '65', '69', '', '');
INSERT INTO `ylrc_menu` VALUES ('71', '2020-10-06 21:52:28', '2020-10-06 21:52:28', '查看详情', 'view(\'/admin/order/view_detail\')', 'mdi-eye', '66', '70', '', '');
INSERT INTO `ylrc_menu` VALUES ('72', '2020-10-07 11:55:35', '2020-10-07 11:55:35', '支付管理', '', 'mdi-currency-usd', '67', null, '', '');
INSERT INTO `ylrc_menu` VALUES ('73', '2020-10-07 11:56:20', '2020-10-07 11:56:20', '支付列表', '/admin/pay_log/list', 'mdi-database', '68', '72', '', '');
INSERT INTO `ylrc_menu` VALUES ('74', '2020-10-07 12:11:27', '2020-10-07 12:11:27', '评价管理', '/admin/movie/comment_list', 'mdi-comment-multiple-outline', '69', '33', '', '');
INSERT INTO `ylrc_menu` VALUES ('75', '2020-10-07 12:12:59', '2020-10-07 12:12:59', '删除', 'deleteComment(\'/admin/movie/delete_comment\')', 'mdi-message-draw', '70', '74', '', '');
INSERT INTO `ylrc_menu` VALUES ('76', '2020-10-07 12:46:45', '2020-10-07 12:46:45', '评价管理', '/admin/cinema/comment_list', 'mdi-comment-text', '71', '39', '', '');
INSERT INTO `ylrc_menu` VALUES ('77', '2020-10-07 12:47:19', '2020-10-07 12:47:19', '删除', 'deleteComment(\'/admin/cinema/delete_comment\')', 'mdi-do-not-disturb', '72', '76', '', '');

-- ----------------------------
-- Table structure for `ylrc_movie`
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_movie`;
CREATE TABLE `ylrc_movie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `abs` varchar(128) DEFAULT NULL,
  `actor` varchar(512) NOT NULL,
  `area` int(11) DEFAULT NULL,
  `directed_by` varchar(64) NOT NULL,
  `info` varchar(1280) DEFAULT NULL,
  `language` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `picture` varchar(512) DEFAULT NULL,
  `rate` decimal(19,2) DEFAULT NULL,
  `show_time` datetime DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `total_money` decimal(19,2) DEFAULT NULL,
  `type` varchar(128) DEFAULT NULL,
  `video` varchar(512) DEFAULT NULL,
  `is_show` bit(1) DEFAULT NULL,
  `rate_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_movie
-- ----------------------------
INSERT INTO `ylrc_movie` VALUES ('1', '2020-09-14 21:11:31', '2020-10-08 16:06:30', '月黑高飞(港) / 刺激1995(台) / 地狱诺言 / 铁窗岁月 / 消香克的救赎', ' 蒂姆·罗宾斯 / 摩根·弗里曼 / 鲍勃·冈顿 / 威廉姆·赛德勒 / 克兰西·布朗 / 吉尔·贝罗斯 / 马克·罗斯顿 ', '3', '弗兰克·德拉邦特', '20世纪40年代末，小有成就的青年银行家安迪（蒂姆·罗宾斯 Tim Robbins 饰）因涉嫌杀害妻子及她的情人而锒铛入狱。在这座名为鲨堡的监狱内，希望似乎虚无缥缈，终身监禁的惩罚无疑注定了安迪接下来灰暗绝望的人生。未过多久，安迪尝试接近囚犯中颇有声望的瑞德（摩根·弗 里曼 Morgan Freeman 饰），请求对方帮自己搞来小锤子。以此为契机，二人逐渐熟稔，安迪也仿佛在鱼龙混杂、罪恶横生、黑白混淆的牢狱中找到属于自己的求生之道。他利用自身的专业知识，帮助监狱管理层逃税、洗黑钱，同时凭借与瑞德的交往在犯人中间也渐渐受到礼遇。表面看来，他已如瑞德那样对那堵高墙从憎恨转变为处之泰然，但是对自由的渴望仍促使他朝着心中的希望和目标前进。而关于其罪行的真相，似乎更使这一切朝前推进了一步…… \r\n　　本片根据著名作家斯蒂芬·金（Stephen Edwin King）的原著改编。', '1', '肖申克的救赎 The Shawshank Redemption (1994)', '20200914/1600088979472.jpg;20201006/1601998341205.jpg;20201006/1601998344588.jpg;20201006/1601998347450.jpg;20201006/1601998351465.jpg', '9.51', '1994-09-10 23:55:00', '142', '812.00', 'Plot,Other', '20201006/1601998356103.mp4', '', '4');
INSERT INTO `ylrc_movie` VALUES ('2', '2020-09-17 21:49:32', '2020-10-06 13:46:32', '花木兰 Mulan (2020)', ' 刘亦菲 / 甄子丹 / 巩俐 / 李连杰 / 李截 / 安柚鑫', '3', '妮琪·卡罗', '迪士尼影业荣誉出品《花木兰》由备受赞誉的电影导演妮基·卡罗执导，将中国传奇战士的史诗故事全新呈现。影片讲述了一位无所畏惧的年轻女子义无反顾为家国而战，成为中国史上最著名的伟大勇士之一。当皇帝下令境内每个家庭必须有一位男丁应召出征，抵御北方来犯者入侵，出身军戎之家的长女花木兰，挺身而出，替病痛缠身的父亲应征入伍。她女扮男装化名“花军”，一路历经磨练，驾驭自己内心的力量，激发真正的潜能。通过这段传奇历程，她将成为一名光荣的勇士，不仅赢得国家的认可，更博得父亲的骄傲。', '1', '花木兰 Mulan (2020)', '20200917/1600350485608.jpg;20200917/1600350489371.jpg;20200917/1600350492749.jpg', '6.00', '2020-09-11 00:00:00', '115', '180.00', 'Action,Plot,Science', '', '', '1');
INSERT INTO `ylrc_movie` VALUES ('3', '2020-09-19 10:37:42', '2020-10-06 13:46:54', '墨西哥亡灵节', '盖尔·加西亚·贝纳尔 / 安东尼·冈萨雷斯 / 本杰明·布拉特 / 芮妮·维克托 / 安娜·奥菲丽亚·莫吉亚', '3', '李·昂克里奇 / 阿德里安·莫利纳', '寻梦环游记', '0', '寻梦环游记', '20200919/1600482941012.jpg', '9.00', '2020-09-19 00:00:00', '105', '90.00', 'Comedy,Action,Science,Cartoon,Horror', '', '', '1');
INSERT INTO `ylrc_movie` VALUES ('4', '2020-09-19 10:39:55', '2020-10-06 13:47:13', '', '安娜·肯德里克,贾斯汀·汀布莱克,詹米·多南,山姆·洛克威尔,詹姆斯·柯登', '3', '迈克·米歇尔, 大卫·史密斯', '魔发精灵2', '1', '魔发精灵2', '20200919/1600483140287.jpg', '9.00', '2020-09-17 00:00:00', '90', '100.00', 'Comedy,Plot,Science,Cartoon,Other', '', '', '1');
INSERT INTO `ylrc_movie` VALUES ('5', '2020-09-19 10:44:29', '2020-10-06 13:47:36', '', '威尔·史密斯,马丁·劳伦斯', '3', '阿迪尔·埃尔·阿比, 比拉勒·法拉赫', '曾制作《珍珠港》、《壮志凌云》、《加勒比海盗》系列等爆款电影的好莱坞金牌制片人全新倾力打造的《绝地战警：疾速追击》，讲述了迈阿密警员麦克（威尔·史密斯饰）遭遇神秘黑帮势力的暗杀伏击，为了迎战势力庞大火力惊人的黑帮分子，解决隐藏在暗处的危机，麦克找回曾经的搭档马库斯（马丁·劳伦斯饰），“嘴炮二人组”再度集结开启沙雕模式，不仅时刻上演逗比互怼，更在迈阿密街头与黑帮展开空前绝后的飙车枪战大戏。这对最佳搭档究竟能否在枪林弹雨下突出重围，找出幕后黑手完成绝地反杀？', '1', '绝地战警：疾速追击', '20200919/1600483323364.jpg;20200919/1600483339214.jpg;20200919/1600483346432.jpg;20200919/1600483352829.jpg;20200919/1600483365293.jpg;20200919/1600483378658.jpg;20200919/1600483399059.jpg', '9.00', '2018-09-13 00:00:00', '124', '600.00', 'Love,Comedy,Action,Plot,Science,Horror,Crime', '20200919/1600483423387.mp4', '', '1');
INSERT INTO `ylrc_movie` VALUES ('6', '2020-09-19 10:52:20', '2020-10-06 15:10:39', '一生所爱', '周星驰 / 吴孟达 / 朱茵 / 蔡少芬 / 蓝洁瑛', '1', '刘镇伟', '大话西游之大圣娶亲', '2', '大话西游之大圣娶亲', '20200919/1600483728314.jpg', '9.50', '1996-06-12 00:00:00', '95', '0.00', 'Love,Comedy,Action,Science,Fantasy,Adventure', '', '', '2');
INSERT INTO `ylrc_movie` VALUES ('7', '2020-09-19 10:56:07', '2020-09-19 10:56:07', '殊死一搏的较量', '肖央,谭卓,陈冲,姜皓文,秦沛', '0', '柯汶利', '误杀——殊死一搏的较量！！！', '0', '误杀', '20200919/1600484100745.jpg', '0.00', '2019-07-19 00:00:00', '110', '0.00', 'Action,Plot,Horror,Crime', '', '', '0');
INSERT INTO `ylrc_movie` VALUES ('8', '2020-09-19 11:01:15', '2020-09-19 11:01:15', '生而为魔,那又如何?', ' 吕艳婷 / 囧森瑟夫 / 瀚墨 / 陈浩 / 绿绮 / 张珈铭 / 杨卫', '0', '饺子', '天地灵气孕育出一颗能量巨大的混元珠，元始天尊将混元珠提炼成灵珠和魔丸，灵珠投胎为人，助周伐纣时可堪大用；而魔丸则会诞出魔王，为祸人间。元始天尊启动了天劫咒语，3年后天雷将会降临，摧毁魔丸。太乙受命将灵珠托生于陈塘关李靖家的儿子哪吒身上。然而阴差阳错，灵珠和魔丸竟然被掉包。本应是灵珠英雄的哪吒却成了混世大魔王。调皮捣蛋顽劣不堪的哪吒却徒有一颗做英雄的心。然而面对众人对魔丸的误解和即将来临的天雷的降临，哪吒是否命中注定会立地成魔？他将何去何从？', '0', '哪吒之魔童降世', '20200919/1600484294052.jpg;20200919/1600484469714.jpg;20200919/1600484472124.jpg', '0.00', '2019-10-24 00:00:00', '110', '0.00', 'Action,Plot,Science,Cartoon,Fantasy,Adventure', '20200919/1600484404952.mp4', '', '0');
INSERT INTO `ylrc_movie` VALUES ('9', '2020-09-19 11:13:02', '2020-09-19 11:13:02', '', '马思纯,钟楚曦,黄景瑜', '0', '徐展雄', '荞麦疯长', '0', '荞麦疯长', '20200919/1600484548575.jpg', '0.00', '2020-09-10 00:00:00', '112', '0.00', 'Love,Plot', '', '', '0');
INSERT INTO `ylrc_movie` VALUES ('10', '2020-09-19 11:16:45', '2020-09-19 11:16:45', '四百人对外号称八百人', '王千源,张译,姜武,黄志忠,张俊一,欧豪,张承', '0', '管虎', '1937年淞沪会战的最后一役，“八百壮士”奉命坚守上海四行仓库，以少敌多顽强抵抗四天四夜。电影《八佰》由管虎导演，是亚洲首部全片使用IMAX摄影机拍摄的商业电影，将于2020年8月21日全国影院上映。', '0', '八佰', '20200919/1600485202576.jpg;20200919/1600485384369.jpg;20200919/1600485387064.jpg;20200919/1600485389123.jpg;20200919/1600485392619.jpg;20200919/1600485394590.jpg', '0.00', '2020-08-17 00:00:00', '147', '0.00', 'Action,Plot,Adventure', '20200919/1600485398822.mp4', '', '0');
INSERT INTO `ylrc_movie` VALUES ('11', '2020-09-19 11:24:38', '2020-09-19 11:24:38', '穿越时空的爱 / Love You Forever', '李鸿其 / 李一桐 / 范伟 / 张超 / 罗辑 / 郭欣禹', '0', ' 姚婷婷', '林格（李鸿其 饰）人生所有美好的记忆，都与邱倩（李一桐 饰）有关。一场意外、一块神奇的表彻底改变了两人的人生......时空不断被重置，唯一不变的，是爱你如初的心。', '0', '我在时间尽头等你', '20200919/1600485771101.jpg;20200919/1600485775438.jpg;20200919/1600485777489.jpg;20200919/1600485779555.jpg', '0.00', '2020-08-25 00:00:00', '120', '0.00', 'Love,Fantasy', '20200919/1600485821794.mp4', '', '0');
INSERT INTO `ylrc_movie` VALUES ('12', '2020-09-19 11:28:33', '2020-09-19 11:28:49', '二分之一的魔法 / 魔法环游记 / 勇往直前 / 觅法奇程 / ½的魔法 / 向前', '汤姆·赫兰德 / 克里斯·帕拉特 / 茱莉亚·路易斯-德瑞弗斯', '3', '丹·斯坎隆', '影片设定在一个由精灵、巨魔和灵魂等组成的郊外幻想世界，在那里独角兽在垃圾桶中穿行，像是有着糖果条纹的负鼠。影片提供了一个前提，即魔法是真实的，但它早已被现代技术所遗忘和取代。一对十几岁的兄弟，在他们尚不更事时父亲便已离世，他们决定进入这个幻想世界，与父亲共度最后一个神奇的日子。霍兰德配音弟弟伊安、帕拉特配音聒噪的哥哥、德瑞弗斯配音兄弟二人的母亲、斯宾瑟则会利用其声线的优势。', '1', '1/2的魔法 Onward ', '20200919/1600486054872.jpg;20200919/1600486060819.jpg;20200919/1600486126266.jpg', '0.00', '2020-08-19 00:00:00', '102', '0.00', 'Action,Science,Cartoon,Fantasy,Adventure', '20200919/1600486065711.mp4', '', '0');
INSERT INTO `ylrc_movie` VALUES ('13', '2020-09-19 11:32:53', '2020-09-19 11:32:53', '鱼游回来了', '季冠霖 / 苏尚卿 / 许魏洲 / 金士杰 / 杨婷 / 潘淑兰 / 九儿', '0', '梁旋 / 张春', '所有活着的人类，都是海里一条巨大的鱼；出生的时候他们从海的此岸出发。他们的生命就像横越大海，有时相遇，有时分开……死的时候，他们便到了岸，各去各的世界。 \r\n　　四十五亿年前，这个星球上，只有一片汪洋大海，和一群古老的大鱼。在与人类世界平行的空间里，生活着一个规规矩矩、遵守秩序的族群，他们为神工作，掌管世界万物运行规律，也掌管人类的灵魂。他们的天空与人类世界的大海相连。他们既不是神，也不是人，他们是“其他人”。 \r\n　　十六岁生日那天，居住在“神之围楼”里的一个名叫椿（季冠霖 配音）的女孩变作一条海豚到人间巡礼，被大海中的一张网困住，一个人类男孩因为救她而落入深海死去。为了报恩，为了让人类男孩复活，她需要在自己的世界里，历经种种困难与阻碍，帮助死后男孩的灵魂——一条拇指那么大的小鱼，成长为一条比鲸更巨大的鱼并回归大海。', '0', '大鱼海棠', '20200919/1600486339390.jpg;20200919/1600486341397.jpg;20200919/1600486343692.jpg;20200919/1600486371040.jpg', '0.00', '2020-09-05 00:00:00', '105', '0.00', 'Science,Cartoon,Fantasy', '20200919/1600486348627.mp4', '', '0');
INSERT INTO `ylrc_movie` VALUES ('14', '2020-09-19 11:37:09', '2020-10-06 23:34:39', '新战狼 / 新战死沙场 / Wolf Warriors 2', ' 吴京 / 弗兰克·格里罗 / 吴刚 / 张翰 / 卢靖姗 / 丁海峰 / 淳于珊珊 / 余男 / 于谦', '0', '吴京', '由于一怒杀害了强拆牺牲战友房子的恶霸，屡立功勋的冷锋（吴京 饰）受到军事法庭的判决。在押期间，亲密爱人龙小云壮烈牺牲。出狱后，冷锋辗转来到非洲，他辗转各地，只为寻找杀害小云的凶手。在此期间，冷锋逗留的国家发生叛乱，叛徒红巾军大开杀戒，血流成河。中国派出海军执行撤侨任务，期间冷锋得知有一位陈博士被困在五十五公里外的医院，而叛军则试图抓住这位博士。而从另一位华侨（于谦 饰）口中得知，杀害小云的凶手正待在这个国家。 \r\n　　在无法得到海军支援的情况下，冷锋只身闯入硝烟四起的战场。不屈不挠的战狼，与冷酷无情的敌人展开悬殊之战……', '0', '战狼2 (2017)', '20200919/1600486597046.jpg;20200919/1600486599080.jpg;20200919/1600486601298.jpg;20200919/1600486603478.jpg;20200919/1600486606880.jpg;20200919/1600486609247.jpg', '9.67', '2017-08-15 00:00:00', '123', '0.00', 'Action,Plot,Horror,Adventure', '20200919/1600486614347.mp4', '', '3');
INSERT INTO `ylrc_movie` VALUES ('15', '2020-09-19 11:41:53', '2020-09-19 11:41:53', '失忆白蛇', '张喆 / 杨天翔 / 唐小喜 / 刘薇 / 张遥函 /', '0', '黄家康, 赵霁', '幽暗洞中，白蛇（张喆 配音）苦苦修炼却不得其法，小青见此情景，将发髻上的碧玉簪子取下，令白蛇攥在手中。那一刻，五百年前的记忆瞬间苏醒。五百年前，晚唐君主昏聩庸碌，掌握邪术的国师只手遮天，命令天下百姓捕蛇修法。为了拯救族群，白蛇冒险行刺，结果却遭遇挫败，还失去了记忆。当她再度醒来，发现自己被一个专门捕蛇的村落所救下，而那个胆小却善良的青年许宣（杨天翔 配音）则吸引了白蛇的注意。与此同时，国师派出爪牙四处追寻白蛇的下落，而蛇族更误解白蛇叛逃人类，接二连三派出杀手。 \r\n　　五百年后的一段姻缘，早在这乱世之间便已缔结……', '0', '白蛇：缘起', '20200919/1600486820658.jpg;20200919/1600486822602.jpg;20200919/1600486824771.jpg;20200919/1600486826698.jpg;20200919/1600486830561.jpg', '0.00', '2020-09-02 00:00:00', '99', '0.00', 'Science,Cartoon,Fantasy', '20200919/1600486864383.mp4', '', '0');
INSERT INTO `ylrc_movie` VALUES ('16', '2020-09-19 11:48:17', '2020-09-19 11:48:17', '星际启示录(港) / 星际效应(台) / 星际空间 / 星际之间 / 星际远航 / 星际 / Flora\'s Letter', ' 马修·麦康纳 / 安妮·海瑟薇 / 杰西卡·查斯坦 / 麦肯吉·弗依 / 卡西·阿弗莱克 / 迈克尔·凯恩 / 马特·达蒙 / 蒂莫西·柴勒梅德', '3', '克里斯托弗·诺兰', '近未来的地球黄沙遍野，小麦、秋葵等基础农作物相继因枯萎病灭绝，人类不再像从前那样仰望星空，放纵想象力和灵感的迸发，而是每日在沙尘暴的肆虐下倒数着所剩不多的光景。在家务农的前NASA宇航员库珀（马修·麦康纳 Matthew McConaughey 饰）接连在女儿墨菲（麦肯吉·弗依 Mackenzie Foy 饰）的书房发现奇怪的重力场现象，随即得知在某个未知区域内前NASA成员仍秘密进行一个拯救人类的计划。多年以前土星附近出现神秘虫洞，NASA借机将数名宇航员派遣到遥远的星系寻找适合居住的星球。在布兰德教授（迈克尔·凯恩 Michael Caine 饰）的劝说下，库珀忍痛告别了女儿，和其他三名专家教授女儿艾米莉亚·布兰德（安妮·海瑟薇 Anne Hathaway 饰）、罗米利（大卫·吉雅西 David Gyasi 饰）、多伊尔（韦斯·本特利 Wes B... ', '1', '星际穿越 Interstellar', '20200919/1600487196617.jpg;20200919/1600487198381.jpg;20200919/1600487200518.jpg', '0.00', '2014-07-18 00:00:00', '169', '0.00', 'Plot,Science,Fantasy,Adventure', '20200919/1600487204030.mp4', '', '0');
INSERT INTO `ylrc_movie` VALUES ('17', '2020-09-24 21:20:20', '2020-09-24 21:31:50', '', '黄渤 /王宝强 /刘昊然 /佟丽娅 /葛优', '0', '宁浩 /徐峥', '电影《我和我的家乡》定档2020年国庆，延续《我和我的祖国》集体创作的方式，由张艺谋担当总监制，宁浩担任总导演，张一白担任总策划，宁浩、徐峥、陈思诚、闫非&彭大魔、邓超&俞白眉分别执导五个故事。', '0', '我和我的家乡', '20200924/1600953564633.jpg;20200924/1600954295299.jpg;20200924/1600954298394.jpg;20200924/1600954300960.jpg', '0.00', '2020-10-01 00:00:00', '110', '0.00', 'Comedy,Plot,Other', '20200924/1600954305605.mp4', '', '0');

-- ----------------------------
-- Table structure for `ylrc_movie_comment`
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_movie_comment`;
CREATE TABLE `ylrc_movie_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `content` varchar(512) NOT NULL,
  `rate` decimal(19,2) NOT NULL,
  `account_id` bigint(20) NOT NULL,
  `movie_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKtdpkp5fleo773wbsiqec0y5er` (`account_id`),
  KEY `FK95583yxmyntkckphhs5ktmknr` (`movie_id`),
  CONSTRAINT `FK95583yxmyntkckphhs5ktmknr` FOREIGN KEY (`movie_id`) REFERENCES `ylrc_movie` (`id`),
  CONSTRAINT `FKtdpkp5fleo773wbsiqec0y5er` FOREIGN KEY (`account_id`) REFERENCES `ylrc_account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_movie_comment
-- ----------------------------
INSERT INTO `ylrc_movie_comment` VALUES ('1', '2020-10-06 13:26:41', '2020-10-06 13:26:41', '真的很不错！', '9.00', '3', '1');
INSERT INTO `ylrc_movie_comment` VALUES ('2', '2020-10-06 13:27:25', '2020-10-06 13:27:25', '太好了，好久没看到这样的电影了！！！', '10.00', '3', '1');
INSERT INTO `ylrc_movie_comment` VALUES ('3', '2020-10-06 13:46:32', '2020-10-06 13:46:32', '感觉很一般嘛，搞得历史正剧魔幻化！！！', '6.00', '3', '2');
INSERT INTO `ylrc_movie_comment` VALUES ('4', '2020-10-06 13:46:54', '2020-10-06 13:46:54', '还没看过，感觉很不错的样子。', '9.00', '3', '3');
INSERT INTO `ylrc_movie_comment` VALUES ('5', '2020-10-06 13:47:13', '2020-10-06 13:47:13', '这个枕边没看过。', '9.00', '3', '4');
INSERT INTO `ylrc_movie_comment` VALUES ('6', '2020-10-06 13:47:36', '2020-10-06 13:47:36', '这个电影爽的一批，很好看，强烈建议！', '9.00', '3', '5');
INSERT INTO `ylrc_movie_comment` VALUES ('7', '2020-10-06 13:47:59', '2020-10-06 13:47:59', '星爷的经典，必须满分！', '10.00', '3', '6');
INSERT INTO `ylrc_movie_comment` VALUES ('8', '2020-10-06 15:09:05', '2020-10-06 15:09:05', '又看了一遍，真的太好了！', '9.00', '3', '1');
INSERT INTO `ylrc_movie_comment` VALUES ('9', '2020-10-06 15:10:39', '2020-10-06 15:10:39', '好好好好好好好好好好好好好好好好好好好好好好好好好好好好！', '9.00', '3', '6');
INSERT INTO `ylrc_movie_comment` VALUES ('10', '2020-10-06 20:15:21', '2020-10-06 20:15:21', '战狼牛逼！！！', '10.00', '3', '14');
INSERT INTO `ylrc_movie_comment` VALUES ('11', '2020-10-06 23:34:16', '2020-10-06 23:34:16', '吴京是我一直最喜欢的明星！', '9.00', '2', '14');
INSERT INTO `ylrc_movie_comment` VALUES ('12', '2020-10-06 23:34:39', '2020-10-06 23:34:39', '京哥最牛，天下无敌！', '10.00', '2', '14');
INSERT INTO `ylrc_movie_comment` VALUES ('13', '2020-10-06 23:35:03', '2020-10-06 23:35:03', '奥斯卡最佳影片，实至名归！', '10.00', '2', '1');

-- ----------------------------
-- Table structure for `ylrc_news`
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_news`;
CREATE TABLE `ylrc_news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `abs` varchar(256) NOT NULL,
  `content` varchar(2560) NOT NULL,
  `picture` varchar(128) NOT NULL,
  `title` varchar(128) NOT NULL,
  `view_num` int(11) DEFAULT NULL,
  `news_category_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKeo3d5beecg1tuom3di7rtlv2b` (`news_category_id`),
  CONSTRAINT `FKeo3d5beecg1tuom3di7rtlv2b` FOREIGN KEY (`news_category_id`) REFERENCES `ylrc_news_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_news
-- ----------------------------
INSERT INTO `ylrc_news` VALUES ('1', '2020-09-22 20:24:23', '2020-10-06 23:29:26', '活动期间，北京银行信用卡持卡用户每自然月可计积分消费金额累计满888元（含），次月10日后即可获得2次10元特惠购票权益。删掉后发神经看大黄房顶上即可舒服哈空间房顶上健康和第三方房顶上见客户', '活动一：活动期间，北京银行信用卡持卡用户每自然月可计积分消费金额累计满888元（含），次月10日后即可获得2次10元特惠购票权益，每份权益最多可购买1张特惠电影票，特惠电影票每月限量1300张，先到先得。\r\n\r\n二、京银行1元观影\r\n\r\n活动二：活动期间，凡通过北京银行南昌分行核发且在活动期间成功激活名下首张北京银行银联标识信用卡的持卡人，于激活次月即可获1元观影权益两次。每份权益最多可购买1张特惠电影票，特惠电影票每月限量1000张，先到先得。\r\n\r\n\r\n\r\n     活动参与流程：\r\n\r\n（1）客户关注、登录“北京银行南昌分行”微信公众号；\r\n\r\n（2）点击菜单-京彩生活-特惠观影，达标客户页面可享受特惠购票权益；\r\n\r\n（3） 点击“立即购票”，选择有“10元抢票”/“1元抢票”标识的影片场次，选座完成后点击“确定”；\r\n\r\n（4） 支付时，选择“北京银行信用卡”或微信中绑定的北京银行信用卡支付，点击“立即支付”；\r\n\r\n（5） 支付完成后，可在“个人中心”中查看订单详情。', '20200922/1600780600459.jpg', '北京银行1元、10元观影', '13', '1');
INSERT INTO `ylrc_news` VALUES ('3', '2020-09-22 21:20:49', '2020-10-06 20:14:38', '活动期间，2019年5月1日至2020年4月30日。白金卡客户无需抢券，每月可至“猿来入此银行信用卡”获取一次白金卡6元观影专享权益。', '活动期间，白金卡客户无需抢券，每月可至“江西银行信用卡”官方微信-粉丝福利-惠生活活动入口自动获取一次白金卡6元观影专享权益。获取6元观影权益成功后，即可在活动当月至全省指定影城享6元看2D或3D电影的劲爆优惠，一次权益最多可购买2张电影票（55元以上影票不参与该活动） \r\n\r\n\r\n活动时间：2019年5月1日至2020年4月30日\r\n\r\n\r\n 使用流程 ：\r\n\r\n\r\n（1）关注“江西银行信用卡”微信公众账号，点击菜单栏-粉丝福利-惠生活菜单。\r\n\r\n（2）点击影票，进入“白金私享家6元观影通道”入口 \r\n\r\n（3）查看活动详情，点击“立即购票” \r\n\r\n（4）选择影片、影院、场次、座位等（跳转支付页面时，未登录用户需先进行登录）\r\n\r\n（5）进入支付页面时，选择“江西银行白金信用卡”支付方式，输入江西银行白金信用卡16位卡号进行验证。验证成功后，跳转银联支付（每个白金卡用户每次最多可购买2张6元电影票，超出票数按正常价结算） \r\n\r\n（6）成功出票后，凭取票码至影院取票机取票即可。', '20200922/1600780845730.png', '猿来入此银行白金卡6元观影', '13', '4');

-- ----------------------------
-- Table structure for `ylrc_news_category`
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_news_category`;
CREATE TABLE `ylrc_news_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `name` varchar(32) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_news_category
-- ----------------------------
INSERT INTO `ylrc_news_category` VALUES ('1', '2020-09-22 20:24:23', '2020-09-22 20:29:46', '电影资讯', '电影资讯');
INSERT INTO `ylrc_news_category` VALUES ('3', '2020-09-22 20:30:19', '2020-09-22 20:30:19', '精彩影评', '');
INSERT INTO `ylrc_news_category` VALUES ('4', '2020-09-22 20:30:24', '2020-09-22 21:10:43', '行业资讯', '');
INSERT INTO `ylrc_news_category` VALUES ('6', '2020-09-22 21:10:50', '2020-09-22 21:10:50', '其他', '');

-- ----------------------------
-- Table structure for `ylrc_operater_log`
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_operater_log`;
CREATE TABLE `ylrc_operater_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `content` varchar(1024) NOT NULL,
  `operator` varchar(18) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=423 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_operater_log
-- ----------------------------
INSERT INTO `ylrc_operater_log` VALUES ('172', '2020-03-22 14:49:22', '2020-03-22 14:49:22', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('173', '2020-03-22 14:58:14', '2020-03-22 14:58:14', '用户【猿来入此】于【2020-03-22 14:58:13】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('174', '2020-03-22 15:09:49', '2020-03-22 15:09:49', '用户【猿来入此】于【2020-03-22 15:09:49】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('175', '2020-03-22 15:11:09', '2020-03-22 15:11:09', '用户【猿来入此】于【2020-03-22 15:11:08】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('176', '2020-03-22 15:13:41', '2020-03-22 15:13:41', '编辑菜单信息【Menu [name=备份, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=add(\'/database_bak/add\'), icon=mdi-database-plus, sort=17, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('177', '2020-03-22 16:16:31', '2020-03-22 16:16:31', '用户【猿来入此】于【2020-03-22 16:16:31】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('178', '2020-03-22 16:31:23', '2020-03-22 16:31:23', '用户【猿来入此】于【2020-03-22 16:31:23】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('179', '2020-03-22 16:56:25', '2020-03-22 16:56:25', '用户【猿来入此】于【2020-03-22 16:56:25】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('180', '2020-03-22 17:00:42', '2020-03-22 17:00:42', '用户【猿来入此】于【2020-03-22 17:00:42】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('181', '2020-03-22 17:13:01', '2020-03-22 17:13:01', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('182', '2020-03-22 17:15:04', '2020-03-22 17:15:04', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322171504.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('183', '2020-03-22 17:15:14', '2020-03-22 17:15:14', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322171514.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('184', '2020-03-22 17:21:02', '2020-03-22 17:21:02', '用户【猿来入此】于【2020-03-22 17:21:02】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('185', '2020-03-22 17:21:15', '2020-03-22 17:21:15', '添加角色【dsadsasadsa】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('186', '2020-03-22 18:09:55', '2020-03-22 18:09:55', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322180955.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('187', '2020-03-22 18:59:16', '2020-03-22 18:59:16', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322185916.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('188', '2020-03-22 18:59:41', '2020-03-22 18:59:41', '数据库成功还原，还原文件信息：DatabaseBak [filename=db_boot_base_20200322180955.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('189', '2020-03-22 19:12:03', '2020-03-22 19:12:03', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322191203.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('190', '2020-03-22 19:12:59', '2020-03-22 19:12:59', '数据库成功还原，还原文件信息：DatabaseBak [filename=db_boot_base_20200322191203.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('191', '2020-03-22 19:35:07', '2020-03-22 19:35:07', '用户【猿来入此】于【2020-03-22 19:35:07】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('192', '2020-03-22 19:35:21', '2020-03-22 19:35:21', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322193521.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('193', '2020-03-22 19:36:20', '2020-03-22 19:36:20', '添加菜单信息【Menu [name=还原, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=restore(\'/database_bak/restore\'), icon=mdi-database-minus, sort=19, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('194', '2020-03-22 19:36:34', '2020-03-22 19:36:34', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('195', '2020-03-22 19:36:47', '2020-03-22 19:36:47', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322193647.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('196', '2020-03-22 19:37:21', '2020-03-22 19:37:21', '数据库成功还原，还原文件信息：DatabaseBak [filename=db_boot_base_20200322193647.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('197', '2020-03-22 19:37:54', '2020-03-22 19:37:54', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322193754.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('198', '2020-03-22 19:38:15', '2020-03-22 19:38:15', '数据库成功还原，还原文件信息：DatabaseBak [filename=db_boot_base_20200322193754.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('199', '2020-03-22 19:43:34', '2020-03-22 19:43:34', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194334.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES ('200', '2020-03-22 19:43:39', '2020-03-22 19:43:39', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194339.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES ('201', '2020-03-22 19:43:44', '2020-03-22 19:43:44', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194344.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES ('202', '2020-03-22 19:43:49', '2020-03-22 19:43:49', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194349.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES ('203', '2020-03-22 19:43:52', '2020-03-22 19:43:52', '用户【猿来入此】于【2020-03-22 19:43:52】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('204', '2020-03-22 19:43:54', '2020-03-22 19:43:54', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194354.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES ('205', '2020-03-22 19:43:59', '2020-03-22 19:43:59', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194359.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES ('206', '2020-03-22 19:44:04', '2020-03-22 19:44:04', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194404.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES ('207', '2020-03-22 19:44:09', '2020-03-22 19:44:09', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194409.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES ('208', '2020-03-22 19:44:14', '2020-03-22 19:44:14', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194414.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES ('209', '2020-03-22 19:44:19', '2020-03-22 19:44:19', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194419.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES ('210', '2020-03-22 19:44:24', '2020-03-22 19:44:24', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194424.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES ('211', '2020-03-22 19:44:29', '2020-03-22 19:44:29', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194429.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES ('212', '2020-03-22 19:44:34', '2020-03-22 19:44:34', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194434.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES ('213', '2020-03-22 19:44:39', '2020-03-22 19:44:39', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200322194439.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES ('214', '2020-03-22 21:11:19', '2020-03-22 21:11:19', '用户【猿来入此】于【2020-03-22 21:11:19】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('215', '2020-03-22 21:18:12', '2020-03-22 21:18:12', '用户【猿来入此】于【2020-03-22 21:18:11】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('216', '2020-03-22 21:36:47', '2020-03-22 21:36:47', '用户【猿来入此】于【2020-03-22 21:36:47】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('217', '2020-03-22 21:43:51', '2020-03-22 21:43:51', '用户【猿来入此】于【2020-03-22 21:43:51】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('218', '2020-03-23 17:41:23', '2020-03-23 17:41:23', '用户【猿来入此】于【2020-03-23 17:41:23】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('219', '2020-03-23 17:41:49', '2020-03-23 17:41:49', '添加菜单信息【Menu [name=sdadsa递四方速递, parent=null, url=https://www.yuanlrc.com/, icon=mdi-alarm-snooze, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('220', '2020-03-23 17:42:02', '2020-03-23 17:42:02', '编辑菜单信息【Menu [name=sdadsa递四方速递, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=https://www.yuanlrc.com/, icon=mdi-alarm-snooze, sort=3, isButton=false, isShow=false]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('221', '2020-03-23 17:42:09', '2020-03-23 17:42:09', '删除菜单信息，菜单ID【27】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('222', '2020-03-23 17:42:32', '2020-03-23 17:42:32', '编辑角色【sdfds水电费多少】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('223', '2020-03-23 17:42:45', '2020-03-23 17:42:45', '编辑角色【sdfds水电费多少】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('224', '2020-03-23 17:42:56', '2020-03-23 17:42:56', '删除角色ID【7】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('225', '2020-03-23 17:43:16', '2020-03-23 17:43:16', '添加角色【撒旦撒】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('226', '2020-03-23 17:43:29', '2020-03-23 17:43:29', '删除角色ID【8】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('227', '2020-03-23 17:44:11', '2020-03-23 17:44:11', '添加用户，用户名：打撒大撒', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('228', '2020-03-23 17:44:29', '2020-03-23 17:44:29', '编辑用户，用户名：打撒大撒22', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('229', '2020-03-23 17:44:37', '2020-03-23 17:44:37', '添加用户，用户ID：6', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('230', '2020-03-23 17:44:55', '2020-03-23 17:44:55', '添加用户，用户ID：4', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('231', '2020-03-23 17:45:47', '2020-03-23 17:45:47', '编辑用户，用户名：小刘同志', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('232', '2020-03-23 17:46:49', '2020-03-23 17:46:49', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20200323174649.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('233', '2020-03-23 17:47:16', '2020-03-23 17:47:16', '数据库成功还原，还原文件信息：DatabaseBak [filename=db_boot_base_20200323174649.sql, filepath=D:/workspace_devloper/baseproject/base/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('234', '2020-03-23 17:48:15', '2020-03-23 17:48:15', '用户【测试账号】于【2020-03-23 17:48:15】登录系统！', '测试账号');
INSERT INTO `ylrc_operater_log` VALUES ('235', '2020-03-23 17:49:00', '2020-03-23 17:49:00', '编辑角色【测试角色】', '测试账号');
INSERT INTO `ylrc_operater_log` VALUES ('236', '2020-03-23 17:49:50', '2020-03-23 17:49:50', '用户【猿来入此】于【2020-03-23 17:49:50】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('237', '2020-03-23 17:50:03', '2020-03-23 17:50:03', '编辑用户，用户名：小刘同志', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('238', '2020-03-23 17:50:19', '2020-03-23 17:50:19', '编辑用户，用户名：小刘同志', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('239', '2020-03-23 17:50:56', '2020-03-23 17:50:56', '用户【猿来入此】于【2020-03-23 17:50:56】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('240', '2020-09-02 21:51:49', '2020-09-02 21:51:49', '用户【猿来入此】于【2020-09-02 21:51:49】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('241', '2020-09-02 21:53:16', '2020-09-02 21:53:16', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_movie_20200902215316.sql, filepath=E:/workspace-devloper/movie/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('242', '2020-09-02 21:53:36', '2020-09-02 21:53:36', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_movie_20200902215335.sql, filepath=E:/workspace-devloper/movie/src/main/resources/backup/]', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('243', '2020-09-03 19:50:21', '2020-09-03 19:50:21', '用户【猿来入此】于【2020-09-03 19:50:21】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('244', '2020-09-03 19:51:59', '2020-09-03 19:51:59', '用户【猿来入此】于【2020-09-03 19:51:59】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('245', '2020-09-03 20:29:46', '2020-09-03 20:29:46', '用户【猿来入此】于【2020-09-03 20:29:46】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('246', '2020-09-03 20:31:22', '2020-09-03 20:31:22', '添加菜单信息【Menu [name=地域管理, parent=null, url=, icon=mdi-map, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('247', '2020-09-03 20:31:40', '2020-09-03 20:31:40', '编辑菜单信息【Menu [name=地域管理, parent=null, url=, icon=mdi-map, sort=20, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('248', '2020-09-03 20:32:50', '2020-09-03 20:32:50', '添加菜单信息【Menu [name=地域列表, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/area/list, icon=mdi-map-marker-multiple, sort=21, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('249', '2020-09-03 20:33:34', '2020-09-03 20:33:34', '添加菜单信息【Menu [name=添加, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/area/add, icon=mdi-map-marker-plus, sort=22, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('250', '2020-09-03 20:34:38', '2020-09-03 20:34:38', '添加菜单信息【Menu [name=编辑, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'/admin/area/edit\'), icon=mdi-map-marker-radius, sort=23, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('251', '2020-09-03 20:35:22', '2020-09-03 20:35:22', '添加菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/admin/area/delete\'), icon=mdi-map-marker-minus, sort=24, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('252', '2020-09-03 20:35:36', '2020-09-03 20:35:36', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('253', '2020-09-03 20:35:57', '2020-09-03 20:35:57', '用户【猿来入此】于【2020-09-03 20:35:57】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('254', '2020-09-03 21:05:42', '2020-09-03 21:05:42', '用户【猿来入此】于【2020-09-03 21:05:42】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('255', '2020-09-03 21:29:32', '2020-09-03 21:29:32', '用户【猿来入此】于【2020-09-03 21:29:32】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('256', '2020-09-06 16:09:21', '2020-09-06 16:09:21', '用户【猿来入此】于【2020-09-06 16:09:21】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('257', '2020-09-06 16:15:20', '2020-09-06 16:15:20', '用户【猿来入此】于【2020-09-06 16:15:20】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('258', '2020-09-06 16:20:39', '2020-09-06 16:20:39', '用户【猿来入此】于【2020-09-06 16:20:39】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('259', '2020-09-06 16:27:42', '2020-09-06 16:27:42', '用户【猿来入此】于【2020-09-06 16:27:42】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('260', '2020-09-06 16:40:47', '2020-09-06 16:40:47', '用户【猿来入此】于【2020-09-06 16:40:47】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('261', '2020-09-06 16:50:05', '2020-09-06 16:50:05', '用户【猿来入此】于【2020-09-06 16:50:05】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('262', '2020-09-06 17:51:37', '2020-09-06 17:51:37', '用户【猿来入此】于【2020-09-06 17:51:37】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('263', '2020-09-06 17:55:12', '2020-09-06 17:55:12', '添加菜单信息【Menu [name=获取省份下的城市列表, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/area/get_citys, icon=mdi-format-list-bulleted, sort=0, isButton=false, isShow=false]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('264', '2020-09-06 17:55:20', '2020-09-06 17:55:20', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('265', '2020-09-06 17:55:31', '2020-09-06 17:55:31', '用户【猿来入此】于【2020-09-06 17:55:31】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('266', '2020-09-06 18:10:40', '2020-09-06 18:10:40', '添加菜单信息【Menu [name=电影管理, parent=null, url=/admin/movie/list, icon=mdi-movie, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('267', '2020-09-06 18:10:56', '2020-09-06 18:10:56', '编辑菜单信息【Menu [name=获取省份下的城市列表, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/area/get_citys, icon=mdi-format-list-bulleted, sort=25, isButton=false, isShow=false]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('268', '2020-09-06 18:11:04', '2020-09-06 18:11:04', '编辑菜单信息【Menu [name=电影管理, parent=null, url=/admin/movie/list, icon=mdi-movie, sort=26, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('269', '2020-09-06 18:12:51', '2020-09-06 18:12:51', '添加菜单信息【Menu [name=电影列表, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/movie/list, icon=mdi-microsoft, sort=28, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('270', '2020-09-06 18:13:10', '2020-09-06 18:13:10', '编辑菜单信息【Menu [name=电影管理, parent=null, url=, icon=mdi-movie, sort=26, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('271', '2020-09-06 18:16:11', '2020-09-06 18:16:11', '添加菜单信息【Menu [name=添加, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/movie/add, icon=mdi-plus-circle, sort=29, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('272', '2020-09-06 18:16:54', '2020-09-06 18:16:54', '添加菜单信息【Menu [name=编辑, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/movie/edit, icon=mdi-border-color, sort=30, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('273', '2020-09-06 18:18:09', '2020-09-06 18:18:09', '添加菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/admin/movie/delete\'), icon=mdi-minus-circle, sort=31, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('274', '2020-09-06 18:18:24', '2020-09-06 18:18:24', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('275', '2020-09-06 19:51:35', '2020-09-06 19:51:35', '用户【猿来入此】于【2020-09-06 19:51:35】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('276', '2020-09-06 20:52:28', '2020-09-06 20:52:28', '用户【猿来入此】于【2020-09-06 20:52:28】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('277', '2020-09-13 14:19:44', '2020-09-13 14:19:44', '用户【猿来入此】于【2020-09-13 14:19:44】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('278', '2020-09-13 14:45:57', '2020-09-13 14:45:57', '添加菜单信息【Menu [name=上传视频, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/upload/upload_video, icon=mdi-arrow-expand-up, sort=0, isButton=true, isShow=false]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('279', '2020-09-13 14:46:07', '2020-09-13 14:46:07', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('280', '2020-09-13 14:46:17', '2020-09-13 14:46:17', '用户【猿来入此】于【2020-09-13 14:46:17】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('281', '2020-09-13 16:11:12', '2020-09-13 16:11:12', '用户【猿来入此】于【2020-09-13 16:11:11】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('282', '2020-09-13 16:57:40', '2020-09-13 16:57:40', '用户【猿来入此】于【2020-09-13 16:57:40】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('283', '2020-09-13 17:13:20', '2020-09-13 17:13:20', '用户【猿来入此】于【2020-09-13 17:13:20】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('284', '2020-09-13 17:44:29', '2020-09-13 17:44:29', '用户【猿来入此】于【2020-09-13 17:44:29】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('285', '2020-09-13 17:51:37', '2020-09-13 17:51:37', '用户【猿来入此】于【2020-09-13 17:51:37】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('286', '2020-09-13 18:04:26', '2020-09-13 18:04:26', '用户【猿来入此】于【2020-09-13 18:04:26】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('287', '2020-09-13 18:23:27', '2020-09-13 18:23:27', '用户【猿来入此】于【2020-09-13 18:23:27】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('288', '2020-09-13 18:30:50', '2020-09-13 18:30:50', '编辑菜单信息【Menu [name=编辑, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'/admin/movie/edit\'), icon=mdi-border-color, sort=30, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('289', '2020-09-13 18:32:37', '2020-09-13 18:32:37', '用户【猿来入此】于【2020-09-13 18:32:37】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('290', '2020-09-13 18:40:53', '2020-09-13 18:40:53', '用户【猿来入此】于【2020-09-13 18:40:52】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('291', '2020-09-13 19:27:28', '2020-09-13 19:27:28', '用户【猿来入此】于【2020-09-13 19:27:28】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('292', '2020-09-13 20:13:23', '2020-09-13 20:13:23', '用户【猿来入此】于【2020-09-13 20:13:23】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('293', '2020-09-13 20:55:45', '2020-09-13 20:55:45', '用户【猿来入此】于【2020-09-13 20:55:45】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('294', '2020-09-13 20:58:28', '2020-09-13 20:58:28', '添加菜单信息【Menu [name=影院管理, parent=null, url=, icon=mdi-store, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('295', '2020-09-13 20:58:39', '2020-09-13 20:58:39', '编辑菜单信息【Menu [name=上传视频, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/upload/upload_video, icon=mdi-arrow-expand-up, sort=32, isButton=true, isShow=false]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('296', '2020-09-13 20:58:47', '2020-09-13 20:58:47', '编辑菜单信息【Menu [name=影院管理, parent=null, url=, icon=mdi-store, sort=33, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('297', '2020-09-13 21:00:02', '2020-09-13 21:00:02', '添加菜单信息【Menu [name=影院列表, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/cinema/list, icon=mdi-raspberrypi, sort=34, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('298', '2020-09-13 21:02:55', '2020-09-13 21:02:55', '添加菜单信息【Menu [name=添加, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/cinema/add, icon=mdi-loupe, sort=35, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('299', '2020-09-13 21:03:42', '2020-09-13 21:03:42', '添加菜单信息【Menu [name=编辑, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'/admin/cinema/edit\'), icon=mdi-pencil, sort=35, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('300', '2020-09-13 21:03:51', '2020-09-13 21:03:51', '编辑菜单信息【Menu [name=编辑, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'/admin/cinema/edit\'), icon=mdi-pencil, sort=36, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('301', '2020-09-13 21:04:28', '2020-09-13 21:04:28', '添加菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/admin/cinema/delete\'), icon=mdi-close, sort=37, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('302', '2020-09-13 21:04:38', '2020-09-13 21:04:38', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('303', '2020-09-13 21:06:49', '2020-09-13 21:06:49', '用户【猿来入此】于【2020-09-13 21:06:49】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('304', '2020-09-14 18:56:28', '2020-09-14 18:56:28', '用户【猿来入此】于【2020-09-14 18:56:28】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('305', '2020-09-14 19:30:50', '2020-09-14 19:30:50', '添加菜单信息【Menu [name=获取城市下的区列表, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/area/get_districts, icon=mdi-circle-outline, sort=39, isButton=true, isShow=false]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('306', '2020-09-14 19:31:15', '2020-09-14 19:31:15', '编辑菜单信息【Menu [name=获取城市下的区列表, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/area/get_districts, icon=mdi-circle-outline, sort=38, isButton=true, isShow=false]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('307', '2020-09-14 19:31:32', '2020-09-14 19:31:32', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('308', '2020-09-14 19:31:42', '2020-09-14 19:31:42', '用户【猿来入此】于【2020-09-14 19:31:42】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('309', '2020-09-14 20:35:29', '2020-09-14 20:35:29', '用户【猿来入此】于【2020-09-14 20:35:29】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('310', '2020-09-15 19:43:24', '2020-09-15 19:43:24', '用户【猿来入此】于【2020-09-15 19:43:24】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('311', '2020-09-15 19:44:19', '2020-09-15 19:44:19', '添加菜单信息【Menu [name=影厅管理, parent=null, url=, icon=mdi-hospital-building, sort=40, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('312', '2020-09-15 19:44:34', '2020-09-15 19:44:34', '编辑菜单信息【Menu [name=影厅管理, parent=null, url=, icon=mdi-hospital-building, sort=39, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('313', '2020-09-15 19:45:06', '2020-09-15 19:45:06', '添加菜单信息【Menu [name=影厅列表, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/cinema_hall/list, icon=mdi-houzz, sort=41, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('314', '2020-09-15 19:46:22', '2020-09-15 19:46:22', '添加菜单信息【Menu [name=添加, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/cinema_hall/add, icon=mdi-table-row-plus-after, sort=42, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('315', '2020-09-15 19:47:06', '2020-09-15 19:47:06', '添加菜单信息【Menu [name=编辑, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'/admin/cinema_hall/edit\'), icon=mdi-eyedropper-variant, sort=43, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('316', '2020-09-15 19:47:37', '2020-09-15 19:47:37', '添加菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/admin/cinema_hall/delete\'), icon=mdi-close, sort=44, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('317', '2020-09-15 19:48:36', '2020-09-15 19:48:36', '添加菜单信息【Menu [name=编辑座位, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=editSeat(\'/admin/cinema_hall/edit_seat\'), icon=mdi-gate, sort=45, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('318', '2020-09-15 19:48:46', '2020-09-15 19:48:46', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('319', '2020-09-15 19:53:18', '2020-09-15 19:53:18', '用户【猿来入此】于【2020-09-15 19:53:18】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('320', '2020-09-15 20:00:45', '2020-09-15 20:00:45', '用户【猿来入此】于【2020-09-15 20:00:45】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('321', '2020-09-15 20:05:50', '2020-09-15 20:05:50', '用户【猿来入此】于【2020-09-15 20:05:50】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('322', '2020-09-16 19:52:39', '2020-09-16 19:52:39', '用户【猿来入此】于【2020-09-16 19:52:39】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('323', '2020-09-16 20:02:39', '2020-09-16 20:02:39', '用户【猿来入此】于【2020-09-16 20:02:39】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('324', '2020-09-16 21:13:51', '2020-09-16 21:13:51', '用户【猿来入此】于【2020-09-16 21:13:51】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('325', '2020-09-16 21:22:13', '2020-09-16 21:22:13', '用户【猿来入此】于【2020-09-16 21:22:13】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('326', '2020-09-16 21:36:23', '2020-09-16 21:36:23', '用户【猿来入此】于【2020-09-16 21:36:23】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('327', '2020-09-17 19:52:06', '2020-09-17 19:52:06', '用户【猿来入此】于【2020-09-17 19:52:06】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('328', '2020-09-17 19:53:01', '2020-09-17 19:53:01', '添加菜单信息【Menu [name=排片管理, parent=null, url=, icon=mdi-filmstrip, sort=46, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('329', '2020-09-17 19:55:38', '2020-09-17 19:55:38', '添加菜单信息【Menu [name=场次列表, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/cinema_hall_session/list, icon=mdi-film, sort=47, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('330', '2020-09-17 19:56:32', '2020-09-17 19:56:32', '添加菜单信息【Menu [name=添加, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/cinema_hall_session/add, icon=mdi-plus-circle, sort=48, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('331', '2020-09-17 19:57:03', '2020-09-17 19:57:03', '添加菜单信息【Menu [name=编辑, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'/admin/cinema_hall_session/edit\'), icon=mdi-border-color, sort=49, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('332', '2020-09-17 19:57:33', '2020-09-17 19:57:33', '添加菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/admin/cinema_hall_session/delete\'), icon=mdi-filmstrip-off, sort=50, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('333', '2020-09-17 19:57:45', '2020-09-17 19:57:45', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('334', '2020-09-17 20:03:43', '2020-09-17 20:03:43', '添加菜单信息【Menu [name=根据影院查找所属影厅, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/cinema_hall/get_cinema_halls, icon=mdi-autorenew, sort=51, isButton=false, isShow=false]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('335', '2020-09-17 20:03:55', '2020-09-17 20:03:55', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('336', '2020-09-17 20:11:44', '2020-09-17 20:11:44', '用户【猿来入此】于【2020-09-17 20:11:44】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('337', '2020-09-17 20:34:48', '2020-09-17 20:34:48', '用户【猿来入此】于【2020-09-17 20:34:48】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('338', '2020-09-17 21:33:39', '2020-09-17 21:33:39', '用户【猿来入此】于【2020-09-17 21:33:39】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('339', '2020-09-19 10:34:05', '2020-09-19 10:34:05', '用户【猿来入此】于【2020-09-19 10:34:05】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('340', '2020-09-19 10:46:49', '2020-09-19 10:46:49', '用户【猿来入此】于【2020-09-19 10:46:49】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('341', '2020-09-19 13:06:51', '2020-09-19 13:06:51', '用户【猿来入此】于【2020-09-19 13:06:51】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('342', '2020-09-19 13:10:44', '2020-09-19 13:10:44', '用户【猿来入此】于【2020-09-19 13:10:44】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('343', '2020-09-19 21:38:05', '2020-09-19 21:38:05', '用户【猿来入此】于【2020-09-19 21:38:05】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('344', '2020-09-19 22:09:05', '2020-09-19 22:09:05', '用户【猿来入此】于【2020-09-19 22:09:05】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('345', '2020-09-20 01:00:00', '2020-09-20 01:00:00', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_movie_20200920010000.sql, filepath=E:/workspace-devloper/movie/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES ('346', '2020-09-21 21:49:14', '2020-09-21 21:49:14', '用户【猿来入此】于【2020-09-21 21:49:14】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('347', '2020-09-21 21:51:27', '2020-09-21 21:51:27', '添加菜单信息【Menu [name=新闻资讯, parent=null, url=, icon=mdi-note-text, sort=52, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('348', '2020-09-21 21:52:15', '2020-09-21 21:52:15', '添加菜单信息【Menu [name=分类管理, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/new_category/list, icon=mdi-clipboard-text, sort=53, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('349', '2020-09-21 21:53:06', '2020-09-21 21:53:06', '添加菜单信息【Menu [name=添加, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/new_category/add, icon=mdi-library-plus, sort=54, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('350', '2020-09-21 21:53:40', '2020-09-21 21:53:40', '添加菜单信息【Menu [name=编辑, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'/admin/new_category/edit\'), icon=mdi-border-color, sort=55, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('351', '2020-09-21 21:54:15', '2020-09-21 21:54:15', '添加菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/admin/new_category/delete\'), icon=mdi-close, sort=56, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('352', '2020-09-21 21:54:45', '2020-09-21 21:54:45', '添加菜单信息【Menu [name=资讯管理, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/new/list, icon=mdi-angular, sort=57, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('353', '2020-09-21 21:55:20', '2020-09-21 21:55:20', '添加菜单信息【Menu [name=添加, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/new/add, icon=mdi-plus-circle, sort=58, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('354', '2020-09-21 21:55:42', '2020-09-21 21:55:42', '添加菜单信息【Menu [name=编辑, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'/admin/new/edit\'), icon=mdi-border-color, sort=58, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('355', '2020-09-21 21:55:52', '2020-09-21 21:55:52', '编辑菜单信息【Menu [name=编辑, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'/admin/new/edit\'), icon=mdi-border-color, sort=59, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('356', '2020-09-21 21:56:43', '2020-09-21 21:56:43', '添加菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=del(\'/admin/new/delete\'), icon=mdi-close, sort=60, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('357', '2020-09-21 21:56:53', '2020-09-21 21:56:53', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('358', '2020-09-21 22:11:18', '2020-09-21 22:11:18', '用户【猿来入此】于【2020-09-21 22:11:18】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('359', '2020-09-21 22:13:36', '2020-09-21 22:13:36', '用户【猿来入此】于【2020-09-21 22:13:36】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('360', '2020-09-22 18:52:53', '2020-09-22 18:52:53', '用户【猿来入此】于【2020-09-22 18:52:53】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('361', '2020-09-22 20:23:48', '2020-09-22 20:23:48', '用户【猿来入此】于【2020-09-22 20:23:48】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('362', '2020-09-22 20:50:43', '2020-09-22 20:50:43', '用户【猿来入此】于【2020-09-22 20:50:43】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('363', '2020-09-22 20:57:28', '2020-09-22 20:57:28', '用户【猿来入此】于【2020-09-22 20:57:28】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('364', '2020-09-22 21:15:39', '2020-09-22 21:15:39', '用户【猿来入此】于【2020-09-22 21:15:39】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('365', '2020-09-24 19:50:57', '2020-09-24 19:50:57', '用户【猿来入此】于【2020-09-24 19:50:57】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('366', '2020-09-24 20:17:18', '2020-09-24 20:17:18', '用户【猿来入此】于【2020-09-24 20:17:17】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('367', '2020-09-24 20:20:32', '2020-09-24 20:20:32', '用户【猿来入此】于【2020-09-24 20:20:32】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('368', '2020-09-24 21:08:41', '2020-09-24 21:08:41', '用户【猿来入此】于【2020-09-24 21:08:41】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('369', '2020-09-24 21:17:23', '2020-09-24 21:17:23', '用户【猿来入此】于【2020-09-24 21:17:23】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('370', '2020-09-24 21:31:20', '2020-09-24 21:31:20', '用户【猿来入此】于【2020-09-24 21:31:19】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('371', '2020-09-24 22:04:17', '2020-09-24 22:04:17', '用户【猿来入此】于【2020-09-24 22:04:17】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('372', '2020-09-26 01:00:00', '2020-09-26 01:00:00', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_movie_20200926010000.sql, filepath=E:/workspace-devloper/movie/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES ('373', '2020-09-26 12:25:52', '2020-09-26 12:25:52', '用户【猿来入此】于【2020-09-26 12:25:52】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('374', '2020-09-26 13:53:56', '2020-09-26 13:53:56', '用户【猿来入此】于【2020-09-26 13:53:56】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('375', '2020-09-26 15:27:06', '2020-09-26 15:27:06', '用户【猿来入此】于【2020-09-26 15:27:06】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('376', '2020-09-26 15:43:33', '2020-09-26 15:43:33', '用户【猿来入此】于【2020-09-26 15:43:33】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('377', '2020-09-26 20:08:52', '2020-09-26 20:08:52', '用户【猿来入此】于【2020-09-26 20:08:52】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('378', '2020-09-26 20:27:12', '2020-09-26 20:27:12', '用户【猿来入此】于【2020-09-26 20:27:12】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('379', '2020-09-26 20:33:34', '2020-09-26 20:33:34', '用户【猿来入此】于【2020-09-26 20:33:34】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('380', '2020-10-03 13:38:17', '2020-10-03 13:38:17', '用户【猿来入此】于【2020-10-03 13:38:17】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('381', '2020-10-03 20:45:43', '2020-10-03 20:45:43', '用户【猿来入此】于【2020-10-03 20:45:43】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('382', '2020-10-04 01:00:00', '2020-10-04 01:00:00', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_movie_20201004010000.sql, filepath=E:/workspace-devloper/movie/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES ('383', '2020-10-05 01:00:00', '2020-10-05 01:00:00', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_movie_20201005010000.sql, filepath=E:/workspace-devloper/movie/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES ('384', '2020-10-06 01:00:00', '2020-10-06 01:00:00', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_movie_20201006010000.sql, filepath=E:/workspace-devloper/movie/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES ('385', '2020-10-06 20:33:07', '2020-10-06 20:33:07', '用户【猿来入此】于【2020-10-06 20:33:07】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('386', '2020-10-06 21:11:12', '2020-10-06 21:11:12', '添加菜单信息【Menu [name=用户管理, parent=null, url=, icon=mdi-account-multiple, sort=0, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('387', '2020-10-06 21:11:25', '2020-10-06 21:11:25', '编辑菜单信息【Menu [name=用户管理, parent=null, url=, icon=mdi-account-multiple, sort=61, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('388', '2020-10-06 21:13:24', '2020-10-06 21:13:24', '添加菜单信息【Menu [name=用户列表, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/account/list, icon=mdi-account-settings-variant, sort=62, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('389', '2020-10-06 21:14:30', '2020-10-06 21:14:30', '添加菜单信息【Menu [name=编辑状态, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=edit(\'/admin/account/edit\'), icon=mdi-account-settings-variant, sort=63, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('390', '2020-10-06 21:14:38', '2020-10-06 21:14:38', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('391', '2020-10-06 21:24:30', '2020-10-06 21:24:30', '用户【猿来入此】于【2020-10-06 21:24:30】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('392', '2020-10-06 21:45:29', '2020-10-06 21:45:29', '用户【猿来入此】于【2020-10-06 21:45:29】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('393', '2020-10-06 21:49:02', '2020-10-06 21:49:02', '添加菜单信息【Menu [name=订单管理, parent=null, url=, icon=mdi-currency-cny, sort=64, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('394', '2020-10-06 21:49:44', '2020-10-06 21:49:44', '添加菜单信息【Menu [name=订单列表, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/order/list, icon=mdi-currency-usd, sort=65, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('395', '2020-10-06 21:52:28', '2020-10-06 21:52:28', '添加菜单信息【Menu [name=查看详情, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=view(\'/admin/order/view_detail\'), icon=mdi-eye, sort=66, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('396', '2020-10-06 21:53:05', '2020-10-06 21:53:05', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('397', '2020-10-06 22:07:48', '2020-10-06 22:07:48', '用户【猿来入此】于【2020-10-06 22:07:48】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('398', '2020-10-07 01:00:00', '2020-10-07 01:00:00', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_movie_20201007010000.sql, filepath=E:/workspace-devloper/movie/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES ('399', '2020-10-07 11:53:32', '2020-10-07 11:53:32', '用户【猿来入此】于【2020-10-07 11:53:32】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('400', '2020-10-07 11:55:35', '2020-10-07 11:55:35', '添加菜单信息【Menu [name=支付管理, parent=null, url=, icon=mdi-currency-usd, sort=67, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('401', '2020-10-07 11:56:20', '2020-10-07 11:56:20', '添加菜单信息【Menu [name=支付列表, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/pay_log/list, icon=mdi-database, sort=68, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('402', '2020-10-07 11:56:43', '2020-10-07 11:56:43', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('403', '2020-10-07 12:03:51', '2020-10-07 12:03:51', '用户【猿来入此】于【2020-10-07 12:03:51】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('404', '2020-10-07 12:11:27', '2020-10-07 12:11:27', '添加菜单信息【Menu [name=评价管理, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/movie/comment_list, icon=mdi-comment-multiple-outline, sort=69, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('405', '2020-10-07 12:12:59', '2020-10-07 12:12:59', '添加菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=deleteComment(\'/admin/movie/delete_comment\'), icon=mdi-message-draw, sort=70, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('406', '2020-10-07 12:13:14', '2020-10-07 12:13:14', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('407', '2020-10-07 12:19:12', '2020-10-07 12:19:12', '用户【猿来入此】于【2020-10-07 12:19:12】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('408', '2020-10-07 12:46:45', '2020-10-07 12:46:45', '添加菜单信息【Menu [name=评价管理, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=/admin/cinema/comment_list, icon=mdi-comment-text, sort=71, isButton=false, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('409', '2020-10-07 12:47:19', '2020-10-07 12:47:19', '添加菜单信息【Menu [name=删除, parent=Menu [name=null, parent=null, url=null, icon=null, sort=0, isButton=false, isShow=true], url=deleteComment(\'/admin/cinema/delete_comment\'), icon=mdi-do-not-disturb, sort=72, isButton=true, isShow=true]】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('410', '2020-10-07 12:47:31', '2020-10-07 12:47:31', '编辑角色【超级管理员】', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('411', '2020-10-07 12:53:13', '2020-10-07 12:53:13', '用户【猿来入此】于【2020-10-07 12:53:13】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('412', '2020-10-08 01:00:01', '2020-10-08 01:00:01', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_movie_20201008010000.sql, filepath=E:/workspace-devloper/movie/src/main/resources/backup/]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES ('413', '2020-10-08 11:50:42', '2020-10-08 11:50:42', '用户【猿来入此】于【2020-10-08 11:50:42】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('414', '2020-10-08 11:54:47', '2020-10-08 11:54:47', '用户【猿来入此】于【2020-10-08 11:54:47】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('415', '2020-10-08 11:59:29', '2020-10-08 11:59:29', '用户【猿来入此】于【2020-10-08 11:59:29】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('416', '2020-10-08 12:04:34', '2020-10-08 12:04:34', '用户【猿来入此】于【2020-10-08 12:04:33】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('417', '2020-10-08 13:03:03', '2020-10-08 13:03:03', '用户【猿来入此】于【2020-10-08 13:03:02】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('418', '2020-10-08 13:52:44', '2020-10-08 13:52:44', '用户【猿来入此】于【2020-10-08 13:52:44】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('419', '2020-10-08 15:17:55', '2020-10-08 15:17:55', '用户【猿来入此】于【2020-10-08 15:17:55】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('420', '2020-10-08 16:07:12', '2020-10-08 16:07:12', '用户【猿来入此】于【2020-10-08 16:07:12】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('421', '2020-10-08 16:43:15', '2020-10-08 16:43:15', '用户【猿来入此】于【2020-10-08 16:43:15】登录系统！', '猿来入此');
INSERT INTO `ylrc_operater_log` VALUES ('422', '2020-10-08 17:13:29', '2020-10-08 17:13:29', '用户【猿来入此】于【2020-10-08 17:13:29】登录系统！', '猿来入此');

-- ----------------------------
-- Table structure for `ylrc_order`
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_order`;
CREATE TABLE `ylrc_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `new_money` decimal(19,2) NOT NULL,
  `num` int(11) NOT NULL,
  `old_money` decimal(19,2) NOT NULL,
  `sn` varchar(32) NOT NULL,
  `status` int(11) NOT NULL,
  `account_id` bigint(20) DEFAULT NULL,
  `cinema_hall_session_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_cnu3vqqup53vhukxwq1gmeaes` (`sn`),
  KEY `FK4nx0uodwjhqllqmakjojxhh5h` (`account_id`),
  KEY `FKopxdihwe2006wcpuwumtneaep` (`cinema_hall_session_id`),
  CONSTRAINT `FK4nx0uodwjhqllqmakjojxhh5h` FOREIGN KEY (`account_id`) REFERENCES `ylrc_account` (`id`),
  CONSTRAINT `FKopxdihwe2006wcpuwumtneaep` FOREIGN KEY (`cinema_hall_session_id`) REFERENCES `ylrc_cinema_hall_session` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_order
-- ----------------------------
INSERT INTO `ylrc_order` VALUES ('5', '2020-10-05 18:40:35', '2020-10-05 18:40:35', '100.00', '2', '132.00', 'B0F14C6961E5432A9A3131901ABCD050', '-1', '3', '16');
INSERT INTO `ylrc_order` VALUES ('7', '2020-10-05 20:05:07', '2020-10-05 20:05:07', '90.00', '2', '160.00', '818F04092571481988B9E12018C2D8D0', '-1', '3', '2');
INSERT INTO `ylrc_order` VALUES ('8', '2020-10-05 20:09:33', '2020-10-05 20:09:33', '90.00', '2', '160.00', '1556F8B7D2924F639414BED65888B126', '-1', '3', '2');
INSERT INTO `ylrc_order` VALUES ('9', '2020-10-05 20:14:02', '2020-10-05 20:14:02', '90.00', '2', '160.00', '1DA77B6B8029493CB1F62B661139FC51', '-1', '3', '2');
INSERT INTO `ylrc_order` VALUES ('10', '2020-10-05 21:01:40', '2020-10-05 21:01:40', '90.00', '2', '160.00', 'EC72ED5D0A5B41BC830A15CA30BF4BAF', '1', '3', '2');
INSERT INTO `ylrc_order` VALUES ('11', '2020-10-05 21:08:18', '2020-10-05 21:08:18', '90.00', '2', '160.00', 'E94AB06246B04039B3612BA42F6CD11A', '-1', '3', '2');
INSERT INTO `ylrc_order` VALUES ('12', '2020-10-05 22:53:31', '2020-10-05 22:53:31', '180.00', '4', '320.00', '993C436F83DC4BE29E14104CBA9025C9', '-1', '3', '2');
INSERT INTO `ylrc_order` VALUES ('13', '2020-10-06 13:48:37', '2020-10-06 13:48:37', '126.00', '2', '200.00', '0438D65D9ABD4D80816457ACD9265B02', '-1', '3', '7');
INSERT INTO `ylrc_order` VALUES ('14', '2020-10-07 12:58:58', '2020-10-07 12:58:58', '180.00', '4', '320.00', 'F945D593BF3F48BFAE36107885457064', '1', '3', '2');
INSERT INTO `ylrc_order` VALUES ('15', '2020-10-08 16:06:13', '2020-10-08 16:06:13', '112.00', '2', '132.00', '6489147DE0794E21B0179728E8854778', '1', '4', '11');

-- ----------------------------
-- Table structure for `ylrc_order_auth`
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_order_auth`;
CREATE TABLE `ylrc_order_auth` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `mac` varchar(32) DEFAULT NULL,
  `order_sn` varchar(18) NOT NULL,
  `phone` varchar(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_order_auth
-- ----------------------------

-- ----------------------------
-- Table structure for `ylrc_order_item`
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_order_item`;
CREATE TABLE `ylrc_order_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `money` decimal(19,2) NOT NULL,
  `cinema_hall_seat_id` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4v4n8mbmsr8kjhp6opof81sqy` (`cinema_hall_seat_id`),
  KEY `FKnptvb10fv8g48jsej6qj0d4aw` (`order_id`),
  CONSTRAINT `FK4v4n8mbmsr8kjhp6opof81sqy` FOREIGN KEY (`cinema_hall_seat_id`) REFERENCES `ylrc_cinema_hall_seat` (`id`),
  CONSTRAINT `FKnptvb10fv8g48jsej6qj0d4aw` FOREIGN KEY (`order_id`) REFERENCES `ylrc_order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_order_item
-- ----------------------------
INSERT INTO `ylrc_order_item` VALUES ('4', '2020-10-05 18:40:35', '2020-10-05 18:40:35', '50.00', '104', '5');
INSERT INTO `ylrc_order_item` VALUES ('5', '2020-10-05 18:40:35', '2020-10-05 18:40:35', '50.00', '105', '5');
INSERT INTO `ylrc_order_item` VALUES ('7', '2020-10-05 20:05:07', '2020-10-05 20:05:07', '45.00', '84', '7');
INSERT INTO `ylrc_order_item` VALUES ('8', '2020-10-05 20:05:07', '2020-10-05 20:05:07', '45.00', '85', '7');
INSERT INTO `ylrc_order_item` VALUES ('9', '2020-10-05 20:09:34', '2020-10-05 20:09:34', '45.00', '84', '8');
INSERT INTO `ylrc_order_item` VALUES ('10', '2020-10-05 20:09:34', '2020-10-05 20:09:34', '45.00', '85', '8');
INSERT INTO `ylrc_order_item` VALUES ('11', '2020-10-05 20:14:02', '2020-10-05 20:14:02', '45.00', '84', '9');
INSERT INTO `ylrc_order_item` VALUES ('12', '2020-10-05 20:14:02', '2020-10-05 20:14:02', '45.00', '85', '9');
INSERT INTO `ylrc_order_item` VALUES ('13', '2020-10-05 21:01:40', '2020-10-05 21:01:40', '45.00', '84', '10');
INSERT INTO `ylrc_order_item` VALUES ('14', '2020-10-05 21:01:40', '2020-10-05 21:01:40', '45.00', '85', '10');
INSERT INTO `ylrc_order_item` VALUES ('15', '2020-10-05 21:08:18', '2020-10-05 21:08:18', '45.00', '113', '11');
INSERT INTO `ylrc_order_item` VALUES ('16', '2020-10-05 21:08:18', '2020-10-05 21:08:18', '45.00', '115', '11');
INSERT INTO `ylrc_order_item` VALUES ('17', '2020-10-05 22:53:31', '2020-10-05 22:53:31', '45.00', '94', '12');
INSERT INTO `ylrc_order_item` VALUES ('18', '2020-10-05 22:53:31', '2020-10-05 22:53:31', '45.00', '95', '12');
INSERT INTO `ylrc_order_item` VALUES ('19', '2020-10-05 22:53:31', '2020-10-05 22:53:31', '45.00', '96', '12');
INSERT INTO `ylrc_order_item` VALUES ('20', '2020-10-05 22:53:31', '2020-10-05 22:53:31', '45.00', '97', '12');
INSERT INTO `ylrc_order_item` VALUES ('21', '2020-10-06 13:48:37', '2020-10-06 13:48:37', '63.00', '113', '13');
INSERT INTO `ylrc_order_item` VALUES ('22', '2020-10-06 13:48:37', '2020-10-06 13:48:37', '63.00', '114', '13');
INSERT INTO `ylrc_order_item` VALUES ('23', '2020-10-07 12:58:58', '2020-10-07 12:58:58', '45.00', '95', '14');
INSERT INTO `ylrc_order_item` VALUES ('24', '2020-10-07 12:58:58', '2020-10-07 12:58:58', '45.00', '96', '14');
INSERT INTO `ylrc_order_item` VALUES ('25', '2020-10-07 12:58:58', '2020-10-07 12:58:58', '45.00', '104', '14');
INSERT INTO `ylrc_order_item` VALUES ('26', '2020-10-07 12:58:58', '2020-10-07 12:58:58', '45.00', '105', '14');
INSERT INTO `ylrc_order_item` VALUES ('27', '2020-10-08 16:06:13', '2020-10-08 16:06:13', '56.00', '95', '15');
INSERT INTO `ylrc_order_item` VALUES ('28', '2020-10-08 16:06:13', '2020-10-08 16:06:13', '56.00', '96', '15');

-- ----------------------------
-- Table structure for `ylrc_pay_log`
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_pay_log`;
CREATE TABLE `ylrc_pay_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `money` decimal(19,2) NOT NULL,
  `payment_type` int(11) NOT NULL,
  `sn` varchar(32) NOT NULL,
  `status` int(11) NOT NULL,
  `account_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_akwat47xp16622s7uwb44lnfv` (`sn`),
  KEY `FK2op86eg6t9v1j7imlk7c1vcur` (`account_id`),
  CONSTRAINT `FK2op86eg6t9v1j7imlk7c1vcur` FOREIGN KEY (`account_id`) REFERENCES `ylrc_account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_pay_log
-- ----------------------------
INSERT INTO `ylrc_pay_log` VALUES ('6', '2020-10-01 17:00:59', '2020-10-01 14:01:03', '55.00', '0', 'fdgdgfdgsdfdsfds', '0', '1');
INSERT INTO `ylrc_pay_log` VALUES ('7', '2020-10-01 22:08:36', '2020-10-04 22:09:16', '100.00', '0', '0B2A1E4D4157471AA3114CCF29D55D03', '1', '3');
INSERT INTO `ylrc_pay_log` VALUES ('8', '2020-10-01 22:32:50', '2020-10-04 22:34:32', '16.68', '0', '62D5684A5DE2464282BAE0F9404082CD', '1', '3');
INSERT INTO `ylrc_pay_log` VALUES ('9', '2020-10-02 23:23:38', '2020-10-05 23:23:38', '500.00', '0', 'E28FE107F5E04C5CBA38E690E3A3425C', '0', '3');
INSERT INTO `ylrc_pay_log` VALUES ('10', '2020-10-03 13:05:30', '2020-10-07 13:05:53', '1688.98', '0', 'CD9A8E0194C6487FB78A5DDF85B79D95', '1', '3');
INSERT INTO `ylrc_pay_log` VALUES ('11', '2020-10-04 13:58:11', '2020-10-08 13:58:11', '200.00', '0', '7C98DDB7999A40D99E87F33E24765965', '1', '2');
INSERT INTO `ylrc_pay_log` VALUES ('12', '2020-10-05 13:58:46', '2020-10-08 13:58:46', '300.00', '0', '5AF2A4284F0A4E70B2E662A20A6689B5', '0', '2');
INSERT INTO `ylrc_pay_log` VALUES ('13', '2020-10-06 13:58:51', '2020-10-08 13:58:51', '500.00', '0', 'D9543FC7D0FC4762956DD339C7609B81', '1', '2');
INSERT INTO `ylrc_pay_log` VALUES ('14', '2020-10-07 13:58:55', '2020-10-08 13:58:55', '100.00', '0', 'F380AD4910564C76BAF65AE8292DBE43', '0', '2');
INSERT INTO `ylrc_pay_log` VALUES ('15', '2020-10-08 13:59:00', '2020-10-08 13:59:00', '334.00', '0', '0A9D02DB764A4F258A4EE7479E3D51E0', '0', '2');
INSERT INTO `ylrc_pay_log` VALUES ('16', '2020-10-03 23:23:38', '2020-10-08 14:04:07', '666.00', '0', 'fdgdgfdgsdfdsfds1', '0', '1');
INSERT INTO `ylrc_pay_log` VALUES ('17', '2020-10-06 13:58:51', '2020-10-08 14:24:28', '333.00', '0', 'fdgdgfdgsdfdsfds2', '0', '1');
INSERT INTO `ylrc_pay_log` VALUES ('18', '2020-10-06 13:58:51', '2020-10-08 14:25:08', '600.00', '0', 'fdgdgfdgsdfdsfds3', '0', '1');
INSERT INTO `ylrc_pay_log` VALUES ('19', '2020-10-08 16:04:17', '2020-10-08 16:05:01', '520.00', '0', 'FE2ED51C1CEC44799386D8176270A186', '1', '4');

-- ----------------------------
-- Table structure for `ylrc_role`
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_role`;
CREATE TABLE `ylrc_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `name` varchar(18) NOT NULL,
  `remark` varchar(128) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_role
-- ----------------------------
INSERT INTO `ylrc_role` VALUES ('1', '2020-03-15 13:16:38', '2020-10-07 12:47:31', '超级管理员', '超级管理员拥有最高权限。', '1');
INSERT INTO `ylrc_role` VALUES ('2', '2020-03-15 13:18:57', '2020-03-21 22:18:43', '普通管理员', '普通管理员只有部分权限', '1');
INSERT INTO `ylrc_role` VALUES ('4', '2020-03-21 20:11:00', '2020-03-23 17:49:00', '测试角色', 'sadsa', '0');

-- ----------------------------
-- Table structure for `ylrc_role_authorities`
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_role_authorities`;
CREATE TABLE `ylrc_role_authorities` (
  `role_id` bigint(20) NOT NULL,
  `authorities_id` bigint(20) NOT NULL,
  KEY `FKhj7ap1o1cjrl7enr9arf5f2qp` (`authorities_id`),
  KEY `FKg3xdaexmr0x1qx8omhvjtk46d` (`role_id`),
  CONSTRAINT `FKg3xdaexmr0x1qx8omhvjtk46d` FOREIGN KEY (`role_id`) REFERENCES `ylrc_role` (`id`),
  CONSTRAINT `FKhj7ap1o1cjrl7enr9arf5f2qp` FOREIGN KEY (`authorities_id`) REFERENCES `ylrc_menu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_role_authorities
-- ----------------------------
INSERT INTO `ylrc_role_authorities` VALUES ('2', '2');
INSERT INTO `ylrc_role_authorities` VALUES ('2', '3');
INSERT INTO `ylrc_role_authorities` VALUES ('2', '5');
INSERT INTO `ylrc_role_authorities` VALUES ('2', '7');
INSERT INTO `ylrc_role_authorities` VALUES ('2', '11');
INSERT INTO `ylrc_role_authorities` VALUES ('2', '13');
INSERT INTO `ylrc_role_authorities` VALUES ('2', '16');
INSERT INTO `ylrc_role_authorities` VALUES ('4', '2');
INSERT INTO `ylrc_role_authorities` VALUES ('4', '13');
INSERT INTO `ylrc_role_authorities` VALUES ('4', '15');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '2');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '3');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '5');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '8');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '9');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '7');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '10');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '11');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '12');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '13');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '14');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '15');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '16');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '19');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '20');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '21');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '22');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '23');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '24');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '25');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '26');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '27');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '28');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '29');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '30');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '31');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '32');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '44');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '33');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '34');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '35');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '36');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '37');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '38');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '74');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '75');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '39');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '40');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '41');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '42');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '43');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '76');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '77');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '45');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '46');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '47');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '48');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '49');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '50');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '56');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '51');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '52');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '53');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '54');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '55');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '57');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '58');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '59');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '60');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '61');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '62');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '63');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '64');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '65');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '66');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '67');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '68');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '69');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '70');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '71');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '72');
INSERT INTO `ylrc_role_authorities` VALUES ('1', '73');

-- ----------------------------
-- Table structure for `ylrc_user`
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_user`;
CREATE TABLE `ylrc_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `email` varchar(32) DEFAULT NULL,
  `head_pic` varchar(128) DEFAULT NULL,
  `mobile` varchar(12) DEFAULT NULL,
  `password` varchar(32) NOT NULL,
  `sex` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `username` varchar(18) NOT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_btsosjytrl4hu7fnm1intcpo8` (`username`),
  KEY `FKg09b8o67eu61st68rv6nk8npj` (`role_id`),
  CONSTRAINT `FKg09b8o67eu61st68rv6nk8npj` FOREIGN KEY (`role_id`) REFERENCES `ylrc_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ylrc_user
-- ----------------------------
INSERT INTO `ylrc_user` VALUES ('1', '2020-03-18 19:18:53', '2020-03-22 12:43:54', 'ylrc@qq.com', '20200322/1584850135123.jpg', '13356565656', '123456', '1', '1', '猿来入此', '1');
INSERT INTO `ylrc_user` VALUES ('2', '2020-03-18 19:20:36', '2020-03-21 22:18:55', 'llq@qq.com', '20200318/1584530412075.jpg', '13918655656', '123456', '1', '1', '测试账号', '2');
INSERT INTO `ylrc_user` VALUES ('5', '2020-03-20 20:42:19', '2020-03-23 17:50:19', 'yw@qq.com', '20200323/1584956702094.png', '13356565656', '123456', '1', '1', '小刘同志', '4');
