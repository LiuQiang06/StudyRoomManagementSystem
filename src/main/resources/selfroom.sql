/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80035
 Source Host           : localhost:3306
 Source Schema         : selfroom

 Target Server Type    : MySQL
 Target Server Version : 80035
 File Encoding         : 65001

 Date: 19/02/2024 21:26:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_info
-- ----------------------------
DROP TABLE IF EXISTS `admin_info`;
CREATE TABLE `admin_info`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `login_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '登录名',
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_bin COMMENT = '管理员' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of admin_info
-- ----------------------------
INSERT INTO `admin_info` VALUES (1, 'admin', 'admin');

-- ----------------------------
-- Table structure for deposit_log
-- ----------------------------
DROP TABLE IF EXISTS `deposit_log`;
CREATE TABLE `deposit_log`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `deposit_no` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '充值编号',
  `amount` double(10, 2) NULL DEFAULT NULL COMMENT '充值金额',
  `user_id` int NULL DEFAULT NULL COMMENT '充值用户',
  `create_time` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '充值时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_bin COMMENT = '充值记录' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of deposit_log
-- ----------------------------
INSERT INTO `deposit_log` VALUES (1, '20231112154128735077', 20.00, 5, '2023-11-12 15:41:28');

-- ----------------------------
-- Table structure for desk_info
-- ----------------------------
DROP TABLE IF EXISTS `desk_info`;
CREATE TABLE `desk_info`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `desk_no` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '桌号',
  `desk_status` int NULL DEFAULT NULL COMMENT '当前状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_bin COMMENT = '桌子' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of desk_info
-- ----------------------------
INSERT INTO `desk_info` VALUES (1, '1号桌', 1);
INSERT INTO `desk_info` VALUES (2, '2号桌', 1);
INSERT INTO `desk_info` VALUES (3, '3号桌', 1);

-- ----------------------------
-- Table structure for order_info
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `order_no` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '订单编号',
  `desk_id` int NULL DEFAULT NULL COMMENT '预约桌号',
  `order_date` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '预约日期',
  `start_time` int NULL DEFAULT NULL COMMENT '开始时间',
  `end_time` int NULL DEFAULT NULL COMMENT '结束时间',
  `total_hours` int NULL DEFAULT NULL COMMENT '总时长（小时）',
  `price` double(10, 2) NULL DEFAULT NULL COMMENT '价格',
  `total_amount` double(10, 2) NULL DEFAULT NULL COMMENT '总金额',
  `user_id` int NULL DEFAULT NULL COMMENT '预订用户',
  `order_status` int NULL DEFAULT NULL COMMENT '预约状态',
  `create_time` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '预订时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_bin COMMENT = '订单' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of order_info
-- ----------------------------
INSERT INTO `order_info` VALUES (1, '20220301124214770404', 1, '2022-03-02', 9, 10, 1, 1.00, 1.00, 4, 1, '2022-03-01 12:42:14');
INSERT INTO `order_info` VALUES (2, '20230304184451315308', 2, '2023-03-05', 8, 10, 2, 1.00, 2.00, 4, 1, '2023-03-04 18:44:51');
INSERT INTO `order_info` VALUES (3, '20231103143751051188', 5, '2023-11-03', 8, 10, 2, 1.00, 2.00, 4, 4, '2023-11-03 14:37:51');
INSERT INTO `order_info` VALUES (4, '20231103144210114229', 3, '2023-11-04', 8, 10, 2, 1.00, 2.00, 4, 4, '2023-11-03 14:42:10');
INSERT INTO `order_info` VALUES (5, '20231103144251341071', 2, '2023-11-03', 8, 10, 2, 1.00, 2.00, 4, 4, '2023-11-03 14:42:51');
INSERT INTO `order_info` VALUES (6, '20231112154143818845', 6, '2023-11-12', 8, 9, 1, 1.00, 1.00, 5, 1, '2023-11-12 15:41:43');
INSERT INTO `order_info` VALUES (7, '20231115185742934664', 5, '2023-11-15', 8, 10, 2, 1.00, 2.00, 5, 4, '2023-11-15 18:57:42');
INSERT INTO `order_info` VALUES (8, '20231116104453570840', 5, '2023-11-16', 8, 12, 4, 1.00, 4.00, 5, 4, '2023-11-16 10:44:53');
INSERT INTO `order_info` VALUES (9, '20231116160331732884', 3, '2023-11-16', 8, 9, 1, 1.00, 1.00, 5, 1, '2023-11-16 16:03:31');

-- ----------------------------
-- Table structure for sys_setting_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_setting_info`;
CREATE TABLE `sys_setting_info`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `start_time` int NULL DEFAULT NULL COMMENT '开始时间',
  `end_time` int NULL DEFAULT NULL COMMENT '结束时间',
  `price` double(10, 2) NULL DEFAULT NULL COMMENT '价格',
  `shop_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '店铺名',
  `shop_intro` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '简介',
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_bin COMMENT = '系统设置' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_setting_info
-- ----------------------------
INSERT INTO `sys_setting_info` VALUES (1, 8, 18, 1.00, '刘强的自习室', '欢迎大家来学习', '保定学院');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `login_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '登录名',
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '密码',
  `real_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '姓名',
  `cel_phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '联系电话',
  `user_account` double(10, 2) NULL DEFAULT NULL COMMENT '账号余额',
  `create_time` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '注册时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_bin COMMENT = '用户' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES (4, 'yys', '123456', 'yang', '18616956666', 91.00, '2021-09-21 18:12:48');
INSERT INTO `user_info` VALUES (5, 'LQ', 'LQ', '刘强', '17336323074', 12.00, '2023-11-03 14:45:33');
INSERT INTO `user_info` VALUES (6, 'liuqiang', 'liuqiang', '刘强', '17336323074', 0.00, '2024-02-04 21:37:32');

SET FOREIGN_KEY_CHECKS = 1;
