/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : minzu

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2022-10-29 19:57:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_account
-- ----------------------------
DROP TABLE IF EXISTS `tb_account`;
CREATE TABLE `tb_account` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `user_pwd` varchar(200) NOT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `user_mobile` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_account
-- ----------------------------
INSERT INTO `tb_account` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', null, null);

-- ----------------------------
-- Table structure for tb_customer
-- ----------------------------
DROP TABLE IF EXISTS `tb_customer`;
CREATE TABLE `tb_customer` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cust_name` varchar(50) DEFAULT NULL,
  `cust_mobile` varchar(30) DEFAULT NULL,
  `cust_address` varchar(100) DEFAULT NULL,
  `cust_ticket` int(11) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_customer
-- ----------------------------
INSERT INTO `tb_customer` VALUES ('1', '老李', '13567898765', '武汉', '10');
INSERT INTO `tb_customer` VALUES ('2', '老王', '13567898766', '武汉', '100');
INSERT INTO `tb_customer` VALUES ('3', '老张', '13567898715', '武汉', '10');
INSERT INTO `tb_customer` VALUES ('4', '老刘', '13567898735', '武汉', '20');
INSERT INTO `tb_customer` VALUES ('5', '老陈', '13567898775', '武汉', '50');
INSERT INTO `tb_customer` VALUES ('8', '冯宝宝1号', '1895054829', '武汉市', '18');
INSERT INTO `tb_customer` VALUES ('10', '冯宝宝2号', '1895054829', '武汉市', '18');
INSERT INTO `tb_customer` VALUES ('11', '冯宝宝3号', '1895054829', '武汉市', '18');
INSERT INTO `tb_customer` VALUES ('12', '冯宝宝4号', '1895054829', '武汉市', '11');
INSERT INTO `tb_customer` VALUES ('13', '冯宝宝5号', '1895054829', '武汉市', '11');
INSERT INTO `tb_customer` VALUES ('15', '冯宝宝6号', '1895054829', '武汉市', '18');
INSERT INTO `tb_customer` VALUES ('16', '冯加其', '1895054829', '武汉市洪山区杨家湾', '11');

-- ----------------------------
-- Table structure for tb_history
-- ----------------------------
DROP TABLE IF EXISTS `tb_history`;
CREATE TABLE `tb_history` (
  `hid` int(11) NOT NULL AUTO_INCREMENT,
  `cust_id` int(11) DEFAULT NULL,
  `worker_id` int(11) DEFAULT NULL,
  `send_water_time` date DEFAULT NULL,
  `send_water_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`hid`),
  KEY `cust_id` (`cust_id`),
  KEY `worker_id` (`worker_id`),
  CONSTRAINT `tb_history_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `tb_customer` (`cid`),
  CONSTRAINT `tb_history_ibfk_2` FOREIGN KEY (`worker_id`) REFERENCES `tb_worker` (`wid`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_history
-- ----------------------------
INSERT INTO `tb_history` VALUES ('2', '2', '1', '2020-01-01', '13');
INSERT INTO `tb_history` VALUES ('3', '3', '1', '2020-01-01', '13');
INSERT INTO `tb_history` VALUES ('4', '1', '2', '2020-01-01', '138');
INSERT INTO `tb_history` VALUES ('5', '1', '3', '2020-01-01', '138');
INSERT INTO `tb_history` VALUES ('6', '1', '4', '2020-01-01', '13');
INSERT INTO `tb_history` VALUES ('7', '2', '3', '2020-01-01', '138');
INSERT INTO `tb_history` VALUES ('10', '8', '12', '2022-07-04', '108');
INSERT INTO `tb_history` VALUES ('11', '2', '1', '2022-07-06', '11');
INSERT INTO `tb_history` VALUES ('12', '2', '2', '2022-07-06', '128');
INSERT INTO `tb_history` VALUES ('13', '3', '1', '2022-07-06', '12');
INSERT INTO `tb_history` VALUES ('14', '1', '2', '2022-07-06', '134');
INSERT INTO `tb_history` VALUES ('15', '1', '1', '2022-10-19', '10');
INSERT INTO `tb_history` VALUES ('16', '1', '6', '2022-10-19', '88');
INSERT INTO `tb_history` VALUES ('17', '4', '4', '2022-10-19', '88');
INSERT INTO `tb_history` VALUES ('18', '1', '12', '2022-10-19', '78');
INSERT INTO `tb_history` VALUES ('19', '8', '5', '2022-10-19', '108');
INSERT INTO `tb_history` VALUES ('20', '1', '4', '2022-10-01', '108');
INSERT INTO `tb_history` VALUES ('21', '1', '2', '2022-10-16', '88');
INSERT INTO `tb_history` VALUES ('22', '4', '4', '2022-10-23', '107');
INSERT INTO `tb_history` VALUES ('23', '1', '5', '2022-10-22', '77');
INSERT INTO `tb_history` VALUES ('34', '8', '21', '2022-10-28', '69');
INSERT INTO `tb_history` VALUES ('35', '1', '13', '2022-10-29', '89');
INSERT INTO `tb_history` VALUES ('36', '2', '14', '2022-10-29', '90');
INSERT INTO `tb_history` VALUES ('37', '4', '15', '2022-10-29', '101');
INSERT INTO `tb_history` VALUES ('38', '5', '16', '2022-10-30', '99');

-- ----------------------------
-- Table structure for tb_worker
-- ----------------------------
DROP TABLE IF EXISTS `tb_worker`;
CREATE TABLE `tb_worker` (
  `wid` int(11) NOT NULL AUTO_INCREMENT,
  `worker_name` varchar(50) DEFAULT NULL,
  `worker_salary` int(11) DEFAULT NULL,
  `worker_money` double(5,2) DEFAULT NULL,
  `worker_image` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`wid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_worker
-- ----------------------------
INSERT INTO `tb_worker` VALUES ('1', '张三', '7300', '2.40', '24373751311900.jpg');
INSERT INTO `tb_worker` VALUES ('2', '李四', '5100', '1.10', '27723607379300.jpg');
INSERT INTO `tb_worker` VALUES ('3', '王五', '3608', '1.70', null);
INSERT INTO `tb_worker` VALUES ('4', '赵六', '2900', '1.20', null);
INSERT INTO `tb_worker` VALUES ('5', '刘大', '3670', '1.90', null);
INSERT INTO `tb_worker` VALUES ('6', '陈二', '3605', '1.20', null);
INSERT INTO `tb_worker` VALUES ('12', '管大帅哥', '7500', '8.80', null);
INSERT INTO `tb_worker` VALUES ('13', '冯宝宝一号', '8000', '2.80', '27730170988700.jpg');
INSERT INTO `tb_worker` VALUES ('14', '冯宝宝二号', '4500', '3.90', '27735473056600.jpg');
INSERT INTO `tb_worker` VALUES ('15', '冯宝宝三号', '4000', '2.40', '27741278174800.jpg');
INSERT INTO `tb_worker` VALUES ('16', '冯宝宝四号', '7000', '3.90', '27748281946300.jpg');
INSERT INTO `tb_worker` VALUES ('17', 'jack2', '5000', '1.80', '32522457797500.jpg');
INSERT INTO `tb_worker` VALUES ('18', 'jack3', '5000', '1.80', '32532160096000.jpg');
INSERT INTO `tb_worker` VALUES ('19', 'jack4', '5000', '1.80', '32542272888300.jpg');
INSERT INTO `tb_worker` VALUES ('20', 'jack5', '5000', '1.80', '32551646406400.jpg');
INSERT INTO `tb_worker` VALUES ('21', 'jack6', '5000', '1.80', '32562026698400.jpg');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `email` varchar(255) NOT NULL COMMENT '邮箱',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `username` varchar(255) NOT NULL COMMENT '姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1@qq.com', '123456', '张三');
INSERT INTO `user` VALUES ('2', '2@qq.com', '234567', '李四');
INSERT INTO `user` VALUES ('3', '3@qq.com', '345678', '王五');
