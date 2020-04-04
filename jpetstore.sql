/*
 Navicat Premium Data Transfer

 Source Server         : 1111
 Source Server Type    : MySQL
 Source Server Version : 100406
 Source Host           : localhost:3306
 Source Schema         : jpetstore

 Target Server Type    : MySQL
 Target Server Version : 100406
 File Encoding         : 65001

 Date: 04/04/2020 21:48:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `userid` varchar(80) NOT NULL,
  `email` varchar(80) NOT NULL,
  `firstname` varchar(80) NOT NULL,
  `lastname` varchar(80) NOT NULL,
  `status` varchar(2) DEFAULT NULL,
  `addr1` varchar(80) NOT NULL,
  `addr2` varchar(40) DEFAULT NULL,
  `city` varchar(80) NOT NULL,
  `state` varchar(80) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `phone` varchar(80) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------
BEGIN;
INSERT INTO `account` VALUES ('a', 'a', 'b', 'a', NULL, 'a', 'a', 'aa', 'a', 'a', 'a', 'a');
INSERT INTO `account` VALUES ('ACID', 'acid@yourdomain.com', 'ABC', 'XYX', 'OK', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '555-555-5555');
INSERT INTO `account` VALUES ('Aczy156', 'aczy156crf@gmail.com', 'RanFei', 'Chen', NULL, '湖南省长沙市', 'a', 'Changsha', '湖南', '410205', 'China', '13501390703');
INSERT INTO `account` VALUES ('b', 'b', 'b', 'b', NULL, 'b', 'b', 'b', 'b', 'b', 'b', 'b');
INSERT INTO `account` VALUES ('j2ee', 'yourname@yourdomain.com', 'ABC', 'XYX', NULL, '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '555-555-5555');
COMMIT;

-- ----------------------------
-- Table structure for addlog
-- ----------------------------
DROP TABLE IF EXISTS `addlog`;
CREATE TABLE `addlog` (
  `addlogid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(80) DEFAULT NULL,
  `additemid` varchar(10) DEFAULT NULL,
  `addtime` date DEFAULT NULL,
  PRIMARY KEY (`addlogid`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of addlog
-- ----------------------------
BEGIN;
INSERT INTO `addlog` VALUES (1, 'a', 'EST-18', '2019-10-23');
INSERT INTO `addlog` VALUES (2, 'a', 'EST-18', '2019-10-23');
INSERT INTO `addlog` VALUES (3, 'a', 'EST-4', '2019-10-23');
INSERT INTO `addlog` VALUES (4, 'a', 'EST-10', '2019-10-23');
INSERT INTO `addlog` VALUES (5, 'a', 'EST-2', '2019-10-23');
INSERT INTO `addlog` VALUES (6, 'a', 'EST-18', '2019-10-24');
INSERT INTO `addlog` VALUES (7, 'a', 'EST-28', '2019-10-24');
INSERT INTO `addlog` VALUES (8, 'a', 'EST-2', '2019-10-27');
INSERT INTO `addlog` VALUES (9, 'a', 'EST-8', '2019-10-27');
INSERT INTO `addlog` VALUES (10, 'a', 'EST-6', '2019-10-27');
INSERT INTO `addlog` VALUES (11, 'a', 'EST-8', '2019-10-27');
INSERT INTO `addlog` VALUES (12, 'a', 'EST-27', '2019-10-28');
INSERT INTO `addlog` VALUES (13, 'a', 'EST-7', '2019-10-28');
INSERT INTO `addlog` VALUES (14, 'a', 'EST-4', '2019-10-28');
INSERT INTO `addlog` VALUES (15, 'a', 'EST-8', '2019-10-28');
INSERT INTO `addlog` VALUES (16, 'a', 'EST-20', '2019-10-28');
INSERT INTO `addlog` VALUES (17, 'a', 'EST-20', '2019-10-28');
INSERT INTO `addlog` VALUES (18, 'a', 'EST-20', '2019-10-28');
INSERT INTO `addlog` VALUES (19, 'a', 'EST-14', '2019-10-28');
INSERT INTO `addlog` VALUES (20, 'a', 'EST-20', '2019-10-28');
INSERT INTO `addlog` VALUES (21, 'a', 'EST-14', '2019-10-28');
INSERT INTO `addlog` VALUES (22, 'a', 'EST-16', '2019-10-28');
INSERT INTO `addlog` VALUES (23, 'a', 'EST-6', '2019-10-28');
INSERT INTO `addlog` VALUES (24, 'a', 'EST-15', '2019-10-29');
INSERT INTO `addlog` VALUES (25, 'a', NULL, '2019-10-29');
INSERT INTO `addlog` VALUES (26, 'a', 'EST-14', '2019-10-29');
INSERT INTO `addlog` VALUES (27, 'a', 'EST-11', '2019-10-29');
INSERT INTO `addlog` VALUES (28, 'a', 'EST-19', '2019-10-29');
INSERT INTO `addlog` VALUES (29, 'a', 'EST-19', '2019-10-29');
INSERT INTO `addlog` VALUES (30, 'a', 'EST-16', '2019-10-29');
INSERT INTO `addlog` VALUES (31, 'j2ee', 'EST-11', '2019-10-29');
INSERT INTO `addlog` VALUES (32, 'j2ee', 'EST-12', '2019-10-29');
INSERT INTO `addlog` VALUES (33, 'j2ee', 'EST-13', '2019-10-29');
INSERT INTO `addlog` VALUES (34, 'j2ee', 'EST-10', '2019-10-29');
INSERT INTO `addlog` VALUES (35, 'j2ee', 'EST-19', '2019-10-29');
INSERT INTO `addlog` VALUES (36, 'ACID', 'EST-13', '2020-04-01');
INSERT INTO `addlog` VALUES (37, 'ACID', 'EST-17', '2020-04-01');
COMMIT;

-- ----------------------------
-- Table structure for bannerdata
-- ----------------------------
DROP TABLE IF EXISTS `bannerdata`;
CREATE TABLE `bannerdata` (
  `favcategory` varchar(80) NOT NULL,
  `bannername` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`favcategory`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bannerdata
-- ----------------------------
BEGIN;
INSERT INTO `bannerdata` VALUES ('BIRDS', '<image src=\"images/banner_birds.gif\">');
INSERT INTO `bannerdata` VALUES ('CATS', '<image src=\"images/banner_cats.gif\">');
INSERT INTO `bannerdata` VALUES ('DOGS', '<image src=\"images/banner_dogs.gif\">');
INSERT INTO `bannerdata` VALUES ('FISH', '<image src=\"images/banner_fish.gif\">');
INSERT INTO `bannerdata` VALUES ('REPTILES', '<image src=\"images/banner_reptiles.gif\">');
COMMIT;

-- ----------------------------
-- Table structure for browselog
-- ----------------------------
DROP TABLE IF EXISTS `browselog`;
CREATE TABLE `browselog` (
  `browselogid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(80) DEFAULT NULL,
  `browseitemid` varchar(10) DEFAULT NULL,
  `browsetime` date DEFAULT NULL,
  PRIMARY KEY (`browselogid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of browselog
-- ----------------------------
BEGIN;
INSERT INTO `browselog` VALUES (1, 'a', 'EST-18', '2019-10-23');
INSERT INTO `browselog` VALUES (2, 'a', 'EST-20', '2019-10-23');
INSERT INTO `browselog` VALUES (3, 'a', 'EST-4', '2019-10-23');
INSERT INTO `browselog` VALUES (4, 'a', 'EST-10', '2019-10-23');
INSERT INTO `browselog` VALUES (5, 'a', 'EST-18', '2019-10-23');
INSERT INTO `browselog` VALUES (6, 'a', 'EST-18', '2019-10-24');
INSERT INTO `browselog` VALUES (7, 'a', 'EST-8', '2019-10-27');
INSERT INTO `browselog` VALUES (8, 'a', 'EST-16', '2019-10-28');
COMMIT;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(80) NOT NULL,
  `itemid` varchar(10) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart
-- ----------------------------
BEGIN;
INSERT INTO `cart` VALUES (20, 'j2ee', 'EST-11', 9);
INSERT INTO `cart` VALUES (22, 'j2ee', 'EST-13', 11);
INSERT INTO `cart` VALUES (24, 'j2ee', 'EST-19', 1);
INSERT INTO `cart` VALUES (25, 'ACID', 'EST-13', 1);
INSERT INTO `cart` VALUES (26, 'ACID', 'EST-17', 1);
COMMIT;

-- ----------------------------
-- Table structure for cartitem
-- ----------------------------
DROP TABLE IF EXISTS `cartitem`;
CREATE TABLE `cartitem` (
  `cartItemid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `itemId` varchar(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `inStock` tinyint(10) DEFAULT NULL,
  `total` double DEFAULT NULL,
  PRIMARY KEY (`cartItemid`)
) ENGINE=InnoDB AUTO_INCREMENT=24507 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cartitem
-- ----------------------------
BEGIN;
INSERT INTO `cartitem` VALUES (24505, 'a', 'EST-4', 6, 1, 111);
INSERT INTO `cartitem` VALUES (24506, 'a', 'EST-5', 1, 1, 18.5);
COMMIT;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `catid` varchar(10) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `descn` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
BEGIN;
INSERT INTO `category` VALUES ('BIRDS', 'Birds', '<image src=\"images/birds_icon.gif\"><font size=\"5\" color=\"blue\"> Birds</font>');
INSERT INTO `category` VALUES ('CATS', 'Cats', '<image src=\"images/cats_icon.gif\"><font size=\"5\" color=\"blue\"> Cats</font>');
INSERT INTO `category` VALUES ('DOGS', 'Dogs', '<image src=\"images/dogs_icon.gif\"><font size=\"5\" color=\"blue\"> Dogs</font>');
INSERT INTO `category` VALUES ('FISH', 'Fish', '<image src=\"images/fish_icon.gif\"><font size=\"5\" color=\"blue\"> Fish</font>');
INSERT INTO `category` VALUES ('REPTILES', 'Reptiles', '<image src=\"images/reptiles_icon.gif\"><font size=\"5\" color=\"blue\"> Reptiles</font>');
COMMIT;

-- ----------------------------
-- Table structure for inventory
-- ----------------------------
DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory` (
  `itemid` varchar(10) NOT NULL,
  `qty` int(11) NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of inventory
-- ----------------------------
BEGIN;
INSERT INTO `inventory` VALUES ('EST-1', 10000);
INSERT INTO `inventory` VALUES ('EST-10', 9998);
INSERT INTO `inventory` VALUES ('EST-11', 10000);
INSERT INTO `inventory` VALUES ('EST-12', 9998);
INSERT INTO `inventory` VALUES ('EST-13', 9998);
INSERT INTO `inventory` VALUES ('EST-14', 10000);
INSERT INTO `inventory` VALUES ('EST-15', 9999);
INSERT INTO `inventory` VALUES ('EST-16', 10000);
INSERT INTO `inventory` VALUES ('EST-17', 9997);
INSERT INTO `inventory` VALUES ('EST-18', 9992);
INSERT INTO `inventory` VALUES ('EST-19', 9995);
INSERT INTO `inventory` VALUES ('EST-2', 10000);
INSERT INTO `inventory` VALUES ('EST-20', 10000);
INSERT INTO `inventory` VALUES ('EST-21', 10000);
INSERT INTO `inventory` VALUES ('EST-22', 10000);
INSERT INTO `inventory` VALUES ('EST-23', 10000);
INSERT INTO `inventory` VALUES ('EST-24', 10000);
INSERT INTO `inventory` VALUES ('EST-25', 10000);
INSERT INTO `inventory` VALUES ('EST-26', 9999);
INSERT INTO `inventory` VALUES ('EST-27', 10000);
INSERT INTO `inventory` VALUES ('EST-28', 10000);
INSERT INTO `inventory` VALUES ('EST-3', 9998);
INSERT INTO `inventory` VALUES ('EST-4', 9997);
INSERT INTO `inventory` VALUES ('EST-5', 10000);
INSERT INTO `inventory` VALUES ('EST-6', 10000);
INSERT INTO `inventory` VALUES ('EST-7', 10000);
INSERT INTO `inventory` VALUES ('EST-8', 10000);
INSERT INTO `inventory` VALUES ('EST-9', 10000);
COMMIT;

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `itemid` varchar(10) NOT NULL,
  `productid` varchar(10) NOT NULL,
  `listprice` decimal(10,2) DEFAULT NULL,
  `unitcost` decimal(10,2) DEFAULT NULL,
  `supplier` int(11) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `attr1` varchar(80) DEFAULT NULL,
  `attr2` varchar(80) DEFAULT NULL,
  `attr3` varchar(80) DEFAULT NULL,
  `attr4` varchar(80) DEFAULT NULL,
  `attr5` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`itemid`),
  KEY `fk_item_2` (`supplier`),
  KEY `itemProd` (`productid`),
  CONSTRAINT `fk_item_1` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`),
  CONSTRAINT `fk_item_2` FOREIGN KEY (`supplier`) REFERENCES `supplier` (`suppid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item
-- ----------------------------
BEGIN;
INSERT INTO `item` VALUES ('EST-1', 'FI-SW-01', 16.50, 10.00, 1, 'P', 'Large', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-10', 'K9-DL-01', 18.50, 12.00, 1, 'P', 'Spotted Adult Female', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-11', 'RP-SN-01', 18.50, 12.00, 1, 'P', 'Venomless', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-12', 'RP-SN-01', 18.50, 12.00, 1, 'P', 'Rattleless', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-13', 'RP-LI-02', 18.50, 12.00, 1, 'P', 'Green Adult', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-14', 'FL-DSH-01', 58.50, 12.00, 1, 'P', 'Tailless', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-15', 'FL-DSH-01', 23.50, 12.00, 1, 'P', 'With tail', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-16', 'FL-DLH-02', 93.50, 12.00, 1, 'P', 'Adult Female', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-17', 'FL-DLH-02', 93.50, 12.00, 1, 'P', 'Adult Male', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-18', 'AV-CB-01', 193.50, 92.00, 1, 'P', 'Adult Male Amazon Parrot', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-19', 'AV-SB-02', 15.50, 2.00, 1, 'P', 'Adult Male', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-2', 'FI-SW-01', 16.50, 10.00, 1, 'P', 'Small', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-20', 'FI-FW-02', 5.50, 2.00, 1, 'P', 'Adult Male', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-21', 'FI-FW-02', 5.29, 1.00, 1, 'P', 'Adult Female', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-22', 'K9-RT-02', 135.50, 100.00, 1, 'P', 'Adult Male', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-23', 'K9-RT-02', 145.49, 100.00, 1, 'P', 'Adult Female', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-24', 'K9-RT-02', 255.50, 92.00, 1, 'P', 'Adult Male', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-25', 'K9-RT-02', 325.29, 90.00, 1, 'P', 'Adult Female', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-26', 'K9-CW-01', 125.50, 92.00, 1, 'P', 'Adult Male', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-27', 'K9-CW-01', 155.29, 90.00, 1, 'P', 'Adult Female', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-28', 'K9-RT-01', 155.29, 90.00, 1, 'P', 'Adult Female', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-3', 'FI-SW-02', 18.50, 12.00, 1, 'P', 'Toothless', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-4', 'FI-FW-01', 18.50, 12.00, 1, 'P', 'Spotted', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-5', 'FI-FW-01', 18.50, 12.00, 1, 'P', 'Spotless', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-6', 'K9-BD-01', 18.50, 12.00, 1, 'P', 'Male Adult', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-7', 'K9-BD-01', 18.50, 12.00, 1, 'P', 'Female Puppy', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-8', 'K9-PO-02', 18.50, 12.00, 1, 'P', 'Male Puppy', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-9', 'K9-DL-01', 18.50, 12.00, 1, 'P', 'Spotless Male Puppy', NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for lineitem
-- ----------------------------
DROP TABLE IF EXISTS `lineitem`;
CREATE TABLE `lineitem` (
  `orderid` int(11) NOT NULL,
  `linenum` int(11) NOT NULL,
  `itemid` varchar(10) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unitprice` decimal(10,2) NOT NULL,
  PRIMARY KEY (`orderid`,`linenum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lineitem
-- ----------------------------
BEGIN;
INSERT INTO `lineitem` VALUES (1004, 1, 'EST-18', 2, 193.50);
INSERT INTO `lineitem` VALUES (1005, 1, 'EST-19', 1, 15.50);
INSERT INTO `lineitem` VALUES (1006, 1, 'EST-18', 1, 193.50);
INSERT INTO `lineitem` VALUES (1007, 1, 'EST-19', 1, 15.50);
INSERT INTO `lineitem` VALUES (1008, 1, 'EST-19', 1, 15.50);
INSERT INTO `lineitem` VALUES (1009, 1, 'EST-18', 1, 193.50);
INSERT INTO `lineitem` VALUES (1010, 1, 'EST-18', 1, 193.50);
INSERT INTO `lineitem` VALUES (1011, 1, 'EST-18', 1, 193.50);
INSERT INTO `lineitem` VALUES (1012, 1, 'EST-18', 1, 193.50);
INSERT INTO `lineitem` VALUES (1013, 1, 'EST-18', 1, 193.50);
INSERT INTO `lineitem` VALUES (1014, 1, 'EST-18', 1, 193.50);
INSERT INTO `lineitem` VALUES (1015, 1, 'EST-5', 1, 18.50);
INSERT INTO `lineitem` VALUES (1016, 1, 'EST-18', 1, 193.50);
INSERT INTO `lineitem` VALUES (1016, 2, 'EST-2', 1, 16.50);
INSERT INTO `lineitem` VALUES (1016, 3, 'EST-25', 1, 325.29);
INSERT INTO `lineitem` VALUES (1016, 4, 'EST-28', 2, 155.29);
INSERT INTO `lineitem` VALUES (1016, 5, 'EST-8', 1, 18.50);
INSERT INTO `lineitem` VALUES (1017, 1, 'EST-19', 1, 15.50);
INSERT INTO `lineitem` VALUES (1017, 2, 'EST-28', 1, 155.29);
INSERT INTO `lineitem` VALUES (1017, 3, 'EST-9', 1, 18.50);
INSERT INTO `lineitem` VALUES (1017, 4, 'EST-27', 2, 155.29);
INSERT INTO `lineitem` VALUES (1018, 1, 'EST-18', 1, 193.50);
INSERT INTO `lineitem` VALUES (1018, 2, 'EST-20', 2, 5.50);
INSERT INTO `lineitem` VALUES (1018, 3, 'EST-1', 1, 16.50);
INSERT INTO `lineitem` VALUES (1018, 4, 'EST-3', 1, 18.50);
INSERT INTO `lineitem` VALUES (1019, 1, 'EST-18', 1, 193.50);
INSERT INTO `lineitem` VALUES (1020, 1, 'EST-18', 1, 193.50);
INSERT INTO `lineitem` VALUES (1021, 1, 'EST-18', 1, 193.50);
INSERT INTO `lineitem` VALUES (1022, 1, 'EST-19', 1, 15.50);
INSERT INTO `lineitem` VALUES (1023, 1, 'EST-2', 1, 16.50);
INSERT INTO `lineitem` VALUES (1024, 1, 'EST-18', 1, 193.50);
INSERT INTO `lineitem` VALUES (1025, 1, 'EST-18', 1, 193.50);
INSERT INTO `lineitem` VALUES (1027, 1, 'EST-28', 1, 155.29);
INSERT INTO `lineitem` VALUES (1028, 1, 'EST-27', 28, 155.29);
INSERT INTO `lineitem` VALUES (1029, 1, 'EST-27', 28, 155.29);
INSERT INTO `lineitem` VALUES (1030, 1, 'EST-4', 1, 18.50);
INSERT INTO `lineitem` VALUES (1031, 1, 'EST-8', 3, 18.50);
INSERT INTO `lineitem` VALUES (1032, 1, 'EST-20', 4, 5.50);
INSERT INTO `lineitem` VALUES (1033, 1, 'EST-14', 1, 58.50);
INSERT INTO `lineitem` VALUES (1034, 1, 'EST-20', 1, 5.50);
INSERT INTO `lineitem` VALUES (1035, 1, 'EST-14', 1, 58.50);
INSERT INTO `lineitem` VALUES (1036, 1, 'EST-16', 1, 93.50);
INSERT INTO `lineitem` VALUES (1037, 1, 'EST-16', 1, 93.50);
INSERT INTO `lineitem` VALUES (1038, 1, 'EST-16', 1, 93.50);
INSERT INTO `lineitem` VALUES (1039, 1, 'EST-16', 1, 93.50);
INSERT INTO `lineitem` VALUES (1040, 1, 'EST-16', 1, 93.50);
INSERT INTO `lineitem` VALUES (1041, 1, 'EST-11', 1, 18.50);
INSERT INTO `lineitem` VALUES (1043, 1, 'EST-12', 2, 18.50);
INSERT INTO `lineitem` VALUES (1043, 2, 'EST-18', 1, 193.50);
INSERT INTO `lineitem` VALUES (1043, 3, 'EST-4', 1, 18.50);
INSERT INTO `lineitem` VALUES (1043, 4, 'EST-3', 1, 18.50);
INSERT INTO `lineitem` VALUES (1045, 1, 'EST-18', 1, 193.50);
INSERT INTO `lineitem` VALUES (1047, 1, 'EST-26', 1, 125.50);
INSERT INTO `lineitem` VALUES (1050, 1, 'EST-18', 1, 193.50);
INSERT INTO `lineitem` VALUES (1057, 1, 'EST-17', 1, 93.50);
INSERT INTO `lineitem` VALUES (1075, 1, 'EST-19', 1, 15.50);
INSERT INTO `lineitem` VALUES (1077, 1, 'EST-19', 1, 15.50);
INSERT INTO `lineitem` VALUES (1080, 1, 'EST-18', 1, 193.50);
INSERT INTO `lineitem` VALUES (1082, 1, 'EST-19', 1, 15.50);
INSERT INTO `lineitem` VALUES (1084, 1, 'EST-18', 1, 193.50);
INSERT INTO `lineitem` VALUES (1086, 1, 'EST-13', 1, 18.50);
INSERT INTO `lineitem` VALUES (1088, 1, 'EST-18', 1, 193.50);
INSERT INTO `lineitem` VALUES (1088, 2, 'EST-19', 1, 15.50);
INSERT INTO `lineitem` VALUES (1090, 1, 'EST-15', 1, 23.50);
INSERT INTO `lineitem` VALUES (1092, 1, 'EST-19', 1, 15.50);
INSERT INTO `lineitem` VALUES (1094, 1, 'EST-19', 1, 15.50);
INSERT INTO `lineitem` VALUES (1096, 1, 'EST-19', 1, 15.50);
INSERT INTO `lineitem` VALUES (1098, 1, 'EST-19', 1, 15.50);
INSERT INTO `lineitem` VALUES (1100, 1, 'EST-15', 1, 23.50);
INSERT INTO `lineitem` VALUES (1102, 1, 'EST-19', 1, 15.50);
INSERT INTO `lineitem` VALUES (1104, 1, 'EST-19', 1, 15.50);
INSERT INTO `lineitem` VALUES (1106, 1, 'EST-19', 1, 15.50);
INSERT INTO `lineitem` VALUES (1108, 1, 'EST-19', 1, 15.50);
INSERT INTO `lineitem` VALUES (1110, 1, 'EST-12', 1, 18.50);
INSERT INTO `lineitem` VALUES (1112, 1, 'EST-18', 1, 193.50);
INSERT INTO `lineitem` VALUES (1112, 2, 'EST-19', 1, 15.50);
INSERT INTO `lineitem` VALUES (1114, 1, 'EST-17', 1, 93.50);
INSERT INTO `lineitem` VALUES (1114, 2, 'EST-10', 1, 18.50);
INSERT INTO `lineitem` VALUES (1116, 1, 'EST-14', 1, 58.50);
INSERT INTO `lineitem` VALUES (1118, 1, 'EST-13', 1, 18.50);
INSERT INTO `lineitem` VALUES (1120, 1, 'EST-19', 1, 15.50);
INSERT INTO `lineitem` VALUES (1122, 1, 'EST-3', 1, 18.50);
INSERT INTO `lineitem` VALUES (1124, 1, 'EST-18', 2, 193.50);
INSERT INTO `lineitem` VALUES (1126, 1, 'EST-15', 1, 23.50);
INSERT INTO `lineitem` VALUES (1126, 2, 'EST-10', 1, 18.50);
INSERT INTO `lineitem` VALUES (1128, 1, 'EST-18', 1, 193.50);
INSERT INTO `lineitem` VALUES (1128, 2, 'EST-19', 1, 15.50);
INSERT INTO `lineitem` VALUES (1130, 1, 'EST-17', 1, 93.50);
INSERT INTO `lineitem` VALUES (1132, 1, 'EST-19', 1, 15.50);
INSERT INTO `lineitem` VALUES (1132, 2, 'EST-4', 1, 18.50);
INSERT INTO `lineitem` VALUES (1134, 1, 'EST-4', 1, 18.50);
INSERT INTO `lineitem` VALUES (1134, 2, 'EST-10', 1, 18.50);
INSERT INTO `lineitem` VALUES (1136, 1, 'EST-18', 1, 193.50);
INSERT INTO `lineitem` VALUES (1136, 2, 'EST-17', 1, 93.50);
INSERT INTO `lineitem` VALUES (1138, 1, 'EST-13', 1, 18.50);
INSERT INTO `lineitem` VALUES (1138, 2, 'EST-19', 1, 15.50);
INSERT INTO `lineitem` VALUES (1140, 1, 'EST-13', 1, 18.50);
INSERT INTO `lineitem` VALUES (1142, 1, 'EST-19', 1, 15.50);
INSERT INTO `lineitem` VALUES (1144, 1, 'EST-19', 1, 15.50);
INSERT INTO `lineitem` VALUES (1146, 1, 'EST-18', 1, 193.50);
COMMIT;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL,
  `userid` varchar(80) NOT NULL,
  `orderdate` date NOT NULL,
  `shipaddr1` varchar(80) NOT NULL,
  `shipaddr2` varchar(80) DEFAULT NULL,
  `shipcity` varchar(80) NOT NULL,
  `shipstate` varchar(80) NOT NULL,
  `shipzip` varchar(20) NOT NULL,
  `shipcountry` varchar(20) NOT NULL,
  `billaddr1` varchar(80) NOT NULL,
  `billaddr2` varchar(80) DEFAULT NULL,
  `billcity` varchar(80) NOT NULL,
  `billstate` varchar(80) NOT NULL,
  `billzip` varchar(20) NOT NULL,
  `billcountry` varchar(20) NOT NULL,
  `courier` varchar(80) NOT NULL,
  `totalprice` decimal(10,2) NOT NULL,
  `billtofirstname` varchar(80) NOT NULL,
  `billtolastname` varchar(80) NOT NULL,
  `shiptofirstname` varchar(80) NOT NULL,
  `shiptolastname` varchar(80) NOT NULL,
  `creditcard` varchar(80) NOT NULL,
  `exprdate` varchar(7) NOT NULL,
  `cardtype` varchar(80) NOT NULL,
  `locale` varchar(80) NOT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
BEGIN;
INSERT INTO `orders` VALUES (1014, 'a', '2019-10-21', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'aa', 'a', 'a', 'a', 'UPS', 193.50, 'a', 'a', 'a', 'a', '', '12/03', 'Visa', 'a');
INSERT INTO `orders` VALUES (1015, 'a', '2019-10-21', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'aa', 'a', 'a', 'a', 'UPS', 18.50, 'a', 'a', 'a', 'a', 'asas', '12/03', 'Visa', 'a');
INSERT INTO `orders` VALUES (1017, 'a', '2019-10-21', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'aa', 'a', 'a', 'a', 'UPS', 499.87, 'a', 'a', 'a', 'a', '12412', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1018, 'a', '2019-10-21', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'aa', 'a', 'a', 'a', 'UPS', 239.50, 'a', 'a', 'a', 'a', '12412412', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1019, 'a', '2019-10-21', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'aa', 'a', 'a', 'a', 'UPS', 193.50, 'a', 'a', 'a', 'a', 'asd', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1020, 'a', '2019-10-21', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'aa', 'a', 'a', 'a', 'UPS', 193.50, 'a', 'a', 'a', 'a', '', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1021, 'a', '2019-10-21', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'aa', 'a', 'a', 'a', 'UPS', 193.50, 'a', 'a', 'a', 'a', '', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1022, 'a', '2019-10-21', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'aa', 'a', 'a', 'a', 'UPS', 15.50, 'a', 'a', 'a', 'a', '12', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1023, 'a', '2019-10-23', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'aa', 'a', 'a', 'a', 'UPS', 16.50, 'a', 'a', 'a', 'a', '', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1024, 'a', '2019-10-24', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'aa', 'a', 'a', 'a', 'UPS', 193.50, 'a', 'a', 'a', 'a', '124', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1025, 'a', '2019-10-24', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'aa', 'a', 'a', 'a', 'UPS', 193.50, 'a', 'a', 'a', 'a', '124', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1027, 'a', '2019-10-24', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'aa', 'a', 'a', 'a', 'UPS', 155.29, 'a', 'a', 'a', 'a', '124', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1028, 'a', '2019-10-28', 'a', 'a', 'aa', 'a', 'a', 'a', 'a', 'a', 'aa', 'a', 'a', 'a', 'UPS', 4348.12, 'a', 'a', 'a', 'a', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1029, 'a', '2019-10-28', 'a', 'a', 'aa', 'a', 'a', 'a', 'a', 'a', 'aa', 'a', 'a', 'a', 'UPS', 4348.12, 'a', 'a', 'a', 'a', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1030, 'a', '2019-10-28', 'a', 'a', 'aa', 'a', 'a', 'a', 'a', 'a', 'aa', 'a', 'a', 'a', 'UPS', 18.50, 'a', 'a', 'a', 'a', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1031, 'a', '2019-10-28', 'saf', '', '', '', '', '', 'a', 'a', 'aa', 'a', 'a', 'a', 'UPS', 55.50, 'a', 'a', 'as', 'sa', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1032, 'a', '2019-10-28', 'a', 'a', 'aa', 'a', 'a', 'a', 'a', 'a', 'aa', 'a', 'a', 'a', 'UPS', 22.00, 'a', 'a', 'a', 'a', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1033, 'a', '2019-10-28', '', '', '', '', '', '', 'a', 'a', 'aa', 'a', 'a', 'a', 'UPS', 58.50, 'a', 'a', '', '', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1034, 'a', '2019-10-28', 'a', 'a', 'aa', 'a', 'a', 'a', 'a', 'a', 'aa', 'a', 'a', 'a', 'UPS', 5.50, 'a', 'a', 'a', 'a', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1035, 'a', '2019-10-28', 'a', 'a', 'aa', 'a', 'a', 'a', 'a', 'a', 'aa', 'a', 'a', 'a', 'UPS', 58.50, 'a', 'a', 'a', 'a', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1036, 'a', '2019-10-28', 'a', 'a', 'aa', 'a', 'a', 'a', 'a', 'a', 'aa', 'a', 'a', 'a', 'UPS', 93.50, 'a', 'a', 'a', 'a', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1037, 'a', '2019-10-28', 'a', 'a', 'aa', 'a', 'a', 'a', 'a', 'a', 'aa', 'a', 'a', 'a', 'UPS', 93.50, 'a', 'a', 'a', 'a', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1038, 'a', '2019-10-28', 'a', 'a', 'aa', 'a', 'a', 'a', 'a', 'a', 'aa', 'a', 'a', 'a', 'UPS', 93.50, 'a', 'a', 'a', 'a', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1039, 'a', '2019-10-28', 'a', 'a', 'aa', 'a', 'a', 'a', 'a', 'a', 'aa', 'a', 'a', 'a', 'UPS', 93.50, 'a', 'a', 'a', 'a', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1040, 'a', '2019-10-28', 'a', 'a', 'aa', 'a', 'a', 'a', 'a', 'a', 'aa', 'a', 'a', 'a', 'UPS', 93.50, 'a', 'a', 'a', 'a', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1041, 'a', '2019-10-29', 'a', 'a', 'aa', 'a', 'a', 'a', 'a', 'a', 'aa', 'a', 'a', 'a', 'UPS', 18.50, 'a', 'a', 'a', 'a', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1043, 'j2ee', '2020-03-11', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 267.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1045, 'a', '2020-03-27', 'a', 'a', 'aa', 'a', 'a', 'a', 'a', 'a', 'aa', 'a', 'a', 'a', 'UPS', 193.50, 'b', 'a', 'b', 'a', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1047, 'a', '2020-03-27', 'a', 'a', 'aa', 'a', 'a', 'a', 'a', 'a', 'aa', 'a', 'a', 'a', 'UPS', 125.50, 'b', 'a', 'b', 'a', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1050, 'a', '2020-03-27', 'a', 'a', 'aa', 'a', 'a', 'a', 'a', 'a', 'aa', 'a', 'a', 'a', 'UPS', 193.50, 'b', 'a', 'b', 'a', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1057, 'a', '2020-03-28', 'a', 'a', 'aa', 'a', 'a', 'a', 'a', 'a', 'aa', 'a', 'a', 'a', 'UPS', 93.50, 'b', 'a', 'b', 'a', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1075, 'a', '2020-03-29', 'a', 'a', 'aa', 'a', 'a', 'a', 'a', 'a', 'aa', 'a', 'a', 'a', 'UPS', 15.50, 'b', 'a', 'b', 'a', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1082, 'a', '2020-03-29', 'a', 'a', 'aa', 'a', 'a', 'a', 'a', 'a', 'aa', 'a', 'a', 'a', 'UPS', 15.50, 'b', 'a', 'b', 'a', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1088, 'j2ee', '2020-03-29', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 209.00, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1090, 'j2ee', '2020-03-29', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 23.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1092, 'ACID', '2020-03-29', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 15.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1094, 'ACID', '2020-03-29', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 15.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1096, 'ACID', '2020-03-29', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 15.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1098, 'ACID', '2020-03-29', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 15.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1100, 'ACID', '2020-03-29', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 23.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1102, 'ACID', '2020-03-29', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 15.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1104, 'ACID', '2020-03-29', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 15.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1106, 'ACID', '2020-03-29', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 15.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1108, 'ACID', '2020-03-29', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 15.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1110, 'ACID', '2020-03-29', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 18.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1112, 'ACID', '2020-03-29', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 209.00, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1114, 'ACID', '2020-03-29', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 112.00, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1116, 'ACID', '2020-03-29', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 58.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1118, 'ACID', '2020-03-29', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 18.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1120, 'ACID', '2020-03-30', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 15.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1122, 'ACID', '2020-03-30', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 18.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1124, 'ACID', '2020-03-30', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 387.00, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1126, 'ACID', '2020-03-31', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 42.00, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1128, 'ACID', '2020-03-31', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 209.00, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1130, 'ACID', '2020-03-31', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 93.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1132, 'ACID', '2020-03-31', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 34.00, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1134, 'ACID', '2020-03-31', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 37.00, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1136, 'ACID', '2020-03-31', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 287.00, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1138, 'ACID', '2020-03-31', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 34.00, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1140, 'ACID', '2020-03-31', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 18.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1142, 'ACID', '2020-03-31', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 15.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1144, 'ACID', '2020-03-31', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', 'UPS', 15.50, 'ABC', 'XYX', 'ABC', 'XYX', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
INSERT INTO `orders` VALUES (1146, 'a', '2020-04-02', 'a', 'a', 'aa', 'a', 'a', 'a', 'a', 'a', 'aa', 'a', 'a', 'a', 'UPS', 193.50, 'b', 'a', 'b', 'a', '999 9999 9999 9999', '12/03', 'Visa', 'CA');
COMMIT;

-- ----------------------------
-- Table structure for orderstatus
-- ----------------------------
DROP TABLE IF EXISTS `orderstatus`;
CREATE TABLE `orderstatus` (
  `orderid` int(11) NOT NULL,
  `linenum` int(11) NOT NULL,
  `timestamp` date NOT NULL,
  `status` varchar(2) NOT NULL,
  PRIMARY KEY (`orderid`,`linenum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderstatus
-- ----------------------------
BEGIN;
INSERT INTO `orderstatus` VALUES (1004, 1, '2019-10-21', 'P');
INSERT INTO `orderstatus` VALUES (1005, 1, '2019-10-21', 'P');
INSERT INTO `orderstatus` VALUES (1006, 1, '2019-10-21', 'P');
INSERT INTO `orderstatus` VALUES (1007, 1, '2019-10-21', 'P');
INSERT INTO `orderstatus` VALUES (1008, 1, '2019-10-21', 'P');
INSERT INTO `orderstatus` VALUES (1009, 1, '2019-10-21', 'P');
INSERT INTO `orderstatus` VALUES (1010, 1, '2019-10-21', 'P');
INSERT INTO `orderstatus` VALUES (1011, 1, '2019-10-21', 'P');
INSERT INTO `orderstatus` VALUES (1012, 1, '2019-10-21', 'P');
INSERT INTO `orderstatus` VALUES (1013, 1, '2019-10-21', 'P');
INSERT INTO `orderstatus` VALUES (1014, 1, '2019-10-21', 'P');
INSERT INTO `orderstatus` VALUES (1015, 1, '2019-10-21', 'P');
INSERT INTO `orderstatus` VALUES (1016, 5, '2019-10-21', 'P');
INSERT INTO `orderstatus` VALUES (1017, 4, '2019-10-21', 'P');
INSERT INTO `orderstatus` VALUES (1018, 4, '2019-10-21', 'P');
INSERT INTO `orderstatus` VALUES (1019, 1, '2019-10-21', 'P');
INSERT INTO `orderstatus` VALUES (1020, 1, '2019-10-21', 'P');
INSERT INTO `orderstatus` VALUES (1021, 1, '2019-10-21', 'P');
INSERT INTO `orderstatus` VALUES (1022, 1, '2019-10-21', 'P');
INSERT INTO `orderstatus` VALUES (1023, 1, '2019-10-23', 'P');
INSERT INTO `orderstatus` VALUES (1024, 1, '2019-10-24', 'P');
INSERT INTO `orderstatus` VALUES (1025, 1, '2019-10-24', 'P');
INSERT INTO `orderstatus` VALUES (1026, 0, '2019-10-24', 'P');
INSERT INTO `orderstatus` VALUES (1027, 1, '2019-10-24', 'P');
INSERT INTO `orderstatus` VALUES (1028, 1, '2019-10-28', 'P');
INSERT INTO `orderstatus` VALUES (1029, 1, '2019-10-28', 'P');
INSERT INTO `orderstatus` VALUES (1030, 1, '2019-10-28', 'P');
INSERT INTO `orderstatus` VALUES (1031, 1, '2019-10-28', 'P');
INSERT INTO `orderstatus` VALUES (1032, 1, '2019-10-28', 'P');
INSERT INTO `orderstatus` VALUES (1033, 1, '2019-10-28', 'P');
INSERT INTO `orderstatus` VALUES (1034, 1, '2019-10-28', 'P');
INSERT INTO `orderstatus` VALUES (1035, 1, '2019-10-28', 'P');
INSERT INTO `orderstatus` VALUES (1036, 1, '2019-10-28', 'P');
INSERT INTO `orderstatus` VALUES (1037, 1, '2019-10-28', 'P');
INSERT INTO `orderstatus` VALUES (1038, 1, '2019-10-28', 'P');
INSERT INTO `orderstatus` VALUES (1039, 1, '2019-10-28', 'P');
INSERT INTO `orderstatus` VALUES (1040, 1, '2019-10-28', 'P');
INSERT INTO `orderstatus` VALUES (1041, 1, '2019-10-29', 'P');
INSERT INTO `orderstatus` VALUES (1043, 1043, '2020-03-11', 'P');
INSERT INTO `orderstatus` VALUES (1045, 1045, '2020-03-27', 'P');
INSERT INTO `orderstatus` VALUES (1047, 1047, '2020-03-27', 'P');
INSERT INTO `orderstatus` VALUES (1050, 1050, '2020-03-27', 'P');
INSERT INTO `orderstatus` VALUES (1057, 1057, '2020-03-28', 'P');
INSERT INTO `orderstatus` VALUES (1075, 1075, '2020-03-29', 'P');
INSERT INTO `orderstatus` VALUES (1082, 1082, '2020-03-29', 'P');
INSERT INTO `orderstatus` VALUES (1088, 1088, '2020-03-29', 'P');
INSERT INTO `orderstatus` VALUES (1090, 1090, '2020-03-29', 'P');
INSERT INTO `orderstatus` VALUES (1092, 1092, '2020-03-29', 'P');
INSERT INTO `orderstatus` VALUES (1094, 1094, '2020-03-29', 'P');
INSERT INTO `orderstatus` VALUES (1096, 1096, '2020-03-29', 'P');
INSERT INTO `orderstatus` VALUES (1098, 1098, '2020-03-29', 'P');
INSERT INTO `orderstatus` VALUES (1100, 1100, '2020-03-29', 'P');
INSERT INTO `orderstatus` VALUES (1102, 1102, '2020-03-29', 'P');
INSERT INTO `orderstatus` VALUES (1104, 1104, '2020-03-29', 'P');
INSERT INTO `orderstatus` VALUES (1106, 1106, '2020-03-29', 'P');
INSERT INTO `orderstatus` VALUES (1108, 1108, '2020-03-29', 'P');
INSERT INTO `orderstatus` VALUES (1110, 1110, '2020-03-29', 'P');
INSERT INTO `orderstatus` VALUES (1112, 1112, '2020-03-29', 'P');
INSERT INTO `orderstatus` VALUES (1114, 1114, '2020-03-29', 'P');
INSERT INTO `orderstatus` VALUES (1116, 1116, '2020-03-29', 'P');
INSERT INTO `orderstatus` VALUES (1118, 1118, '2020-03-29', 'P');
INSERT INTO `orderstatus` VALUES (1120, 1120, '2020-03-30', 'P');
INSERT INTO `orderstatus` VALUES (1122, 1122, '2020-03-30', 'P');
INSERT INTO `orderstatus` VALUES (1124, 1124, '2020-03-30', 'P');
INSERT INTO `orderstatus` VALUES (1126, 1126, '2020-03-31', 'P');
INSERT INTO `orderstatus` VALUES (1128, 1128, '2020-03-31', 'P');
INSERT INTO `orderstatus` VALUES (1130, 1130, '2020-03-31', 'P');
INSERT INTO `orderstatus` VALUES (1132, 1132, '2020-03-31', 'P');
INSERT INTO `orderstatus` VALUES (1134, 1134, '2020-03-31', 'P');
INSERT INTO `orderstatus` VALUES (1136, 1136, '2020-03-31', 'P');
INSERT INTO `orderstatus` VALUES (1138, 1138, '2020-03-31', 'P');
INSERT INTO `orderstatus` VALUES (1140, 1140, '2020-03-31', 'P');
INSERT INTO `orderstatus` VALUES (1142, 1142, '2020-03-31', 'P');
INSERT INTO `orderstatus` VALUES (1144, 1144, '2020-03-31', 'P');
INSERT INTO `orderstatus` VALUES (1146, 1146, '2020-04-02', 'P');
COMMIT;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `productid` varchar(10) NOT NULL,
  `category` varchar(10) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `descn` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`productid`),
  KEY `productCat` (`category`),
  KEY `productName` (`name`),
  CONSTRAINT `fk_product_1` FOREIGN KEY (`category`) REFERENCES `category` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
BEGIN;
INSERT INTO `product` VALUES ('AV-CB-01', 'BIRDS', 'Amazon Parrot', '<image src=\"images/bird2.gif\">Great companion for up to 75 years');
INSERT INTO `product` VALUES ('AV-SB-02', 'BIRDS', 'Finch', '<image src=\"images/bird1.gif\">Great stress reliever');
INSERT INTO `product` VALUES ('FI-FW-01', 'FISH', 'Koi', '<image src=\"images/fish3.gif\">Fresh Water fish from Japan');
INSERT INTO `product` VALUES ('FI-FW-02', 'FISH', 'Goldfish', '<image src=\"images/fish2.gif\">Fresh Water fish from China');
INSERT INTO `product` VALUES ('FI-SW-01', 'FISH', 'Angelfish', '<image src=\"images/fish1.gif\">Salt Water fish from Australia');
INSERT INTO `product` VALUES ('FI-SW-02', 'FISH', 'Tiger Shark', '<image src=\"images/fish4.gif\">Salt Water fish from Australia');
INSERT INTO `product` VALUES ('FL-DLH-02', 'CATS', 'Persian', '<image src=\"images/cat1.gif\">Friendly house cat, doubles as a princess');
INSERT INTO `product` VALUES ('FL-DSH-01', 'CATS', 'Manx', '<image src=\"images/cat2.gif\">Great for reducing mouse populations');
INSERT INTO `product` VALUES ('K9-BD-01', 'DOGS', 'Bulldog', '<image src=\"images/dog2.gif\">Friendly dog from England');
INSERT INTO `product` VALUES ('K9-CW-01', 'DOGS', 'Chihuahua', '<image src=\"images/dog4.gif\">Great companion dog');
INSERT INTO `product` VALUES ('K9-DL-01', 'DOGS', 'Dalmation', '<image src=\"images/dog5.gif\">Great dog for a Fire Station');
INSERT INTO `product` VALUES ('K9-PO-02', 'DOGS', 'Poodle', '<image src=\"images/dog6.gif\">Cute dog from France');
INSERT INTO `product` VALUES ('K9-RT-01', 'DOGS', 'Golden Retriever', '<image src=\"images/dog1.gif\">Great family dog');
INSERT INTO `product` VALUES ('K9-RT-02', 'DOGS', 'Labrador Retriever', '<image src=\"images/dog3.gif\">Great hunting dog');
INSERT INTO `product` VALUES ('RP-LI-02', 'REPTILES', 'Iguana', '<image src=\"images/lizard1.gif\">Friendly green friend');
INSERT INTO `product` VALUES ('RP-SN-01', 'REPTILES', 'Rattlesnake', '<image src=\"images/lizard1.gif\">Doubles as a watch dog');
COMMIT;

-- ----------------------------
-- Table structure for profile
-- ----------------------------
DROP TABLE IF EXISTS `profile`;
CREATE TABLE `profile` (
  `userid` varchar(80) NOT NULL,
  `langpref` varchar(80) NOT NULL,
  `favcategory` varchar(30) DEFAULT NULL,
  `mylistopt` tinyint(1) DEFAULT NULL,
  `banneropt` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of profile
-- ----------------------------
BEGIN;
INSERT INTO `profile` VALUES ('a', 'English', 'FISH', NULL, NULL);
INSERT INTO `profile` VALUES ('ACID', 'english', 'CATS', 1, 1);
INSERT INTO `profile` VALUES ('Aczy156', 'English', 'DOGS', NULL, NULL);
INSERT INTO `profile` VALUES ('b', 'English', 'DOGS', NULL, NULL);
INSERT INTO `profile` VALUES ('j2ee', 'english', 'FISH', 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for sequence
-- ----------------------------
DROP TABLE IF EXISTS `sequence`;
CREATE TABLE `sequence` (
  `name` varchar(30) NOT NULL,
  `nextid` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sequence
-- ----------------------------
BEGIN;
INSERT INTO `sequence` VALUES ('linenum', 1000);
INSERT INTO `sequence` VALUES ('ordernum', 1147);
COMMIT;

-- ----------------------------
-- Table structure for signon
-- ----------------------------
DROP TABLE IF EXISTS `signon`;
CREATE TABLE `signon` (
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `id` int(20) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of signon
-- ----------------------------
BEGIN;
INSERT INTO `signon` VALUES ('a', '123456789', 1);
INSERT INTO `signon` VALUES ('ACID', 'ACID', 2);
INSERT INTO `signon` VALUES ('Aczy156', 'Aczy156', 3);
INSERT INTO `signon` VALUES ('b', 'b', 4);
INSERT INTO `signon` VALUES ('j2ee', 'j2ee', 5);
COMMIT;

-- ----------------------------
-- Table structure for supplier
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier` (
  `suppid` int(11) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `status` varchar(2) NOT NULL,
  `addr1` varchar(80) DEFAULT NULL,
  `addr2` varchar(80) DEFAULT NULL,
  `city` varchar(80) DEFAULT NULL,
  `state` varchar(80) DEFAULT NULL,
  `zip` varchar(5) DEFAULT NULL,
  `phone` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`suppid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of supplier
-- ----------------------------
BEGIN;
INSERT INTO `supplier` VALUES (1, 'XYZ Pets', 'AC', '600 Avon Way', '', 'Los Angeles', 'CA', '94024', '212-947-0797');
INSERT INTO `supplier` VALUES (2, 'ABC Pets', 'AC', '700 Abalone Way', '', 'San Francisco ', 'CA', '94024', '415-947-0797');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
