/*
Navicat MySQL Data Transfer

Source Server         : wamp
Source Server Version : 50524
Source Host           : localhost:3306
Source Database       : icss

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2015-09-22 21:40:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `icss_department`
-- ----------------------------
DROP TABLE IF EXISTS `icss_department`;
CREATE TABLE `icss_department` (
  `dt_id` int(11) NOT NULL AUTO_INCREMENT,
  `dt_no` varchar(20) DEFAULT NULL,
  `dt_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`dt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of icss_department
-- ----------------------------

-- ----------------------------
-- Table structure for `icss_emp`
-- ----------------------------
DROP TABLE IF EXISTS `icss_emp`;
CREATE TABLE `icss_emp` (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(50) DEFAULT NULL,
  `emp_age` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of icss_emp
-- ----------------------------
INSERT INTO `icss_emp` VALUES ('1', 'admin12', '25');
INSERT INTO `icss_emp` VALUES ('2', 'root', '90');
INSERT INTO `icss_emp` VALUES ('3', null, null);
INSERT INTO `icss_emp` VALUES ('4', 'db2admin', null);
INSERT INTO `icss_emp` VALUES ('7', 'dd', 'd');
INSERT INTO `icss_emp` VALUES ('9', 'f', '12');
INSERT INTO `icss_emp` VALUES ('10', '22222', '43');
INSERT INTO `icss_emp` VALUES ('11', 'fF', '1');
INSERT INTO `icss_emp` VALUES ('12', null, null);
INSERT INTO `icss_emp` VALUES ('13', null, null);
INSERT INTO `icss_emp` VALUES ('14', 'HAHA', '1');
INSERT INTO `icss_emp` VALUES ('15', '12', '12');
INSERT INTO `icss_emp` VALUES ('16', '13', '13');

-- ----------------------------
-- Table structure for `icss_user`
-- ----------------------------
DROP TABLE IF EXISTS `icss_user`;
CREATE TABLE `icss_user` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_name` varchar(50) DEFAULT NULL,
  `u_age` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of icss_user
-- ----------------------------
INSERT INTO `icss_user` VALUES ('1', '56', '5');
INSERT INTO `icss_user` VALUES ('2', 'f', 'f');
INSERT INTO `icss_user` VALUES ('3', 'ff', '12');
INSERT INTO `icss_user` VALUES ('4', 'ff', '12');
INSERT INTO `icss_user` VALUES ('5', 'f', 'f');
