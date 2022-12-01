/*
 Navicat Premium Data Transfer

 Source Server         : 本机Zing
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : 602

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 01/12/2022 11:51:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `idNumber` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `phone`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'zhengyi', '17853273138', '929645', NULL, NULL, 1);
INSERT INTO `user` VALUES (2, NULL, '13853713107', '929645', '1', '123', 1);
INSERT INTO `user` VALUES (3, NULL, '1385371310', '929645', NULL, NULL, 1);
INSERT INTO `user` VALUES (4, NULL, '9567143458', '123456', NULL, NULL, 1);
INSERT INTO `user` VALUES (5, NULL, '8498', '8948', NULL, NULL, 1);
INSERT INTO `user` VALUES (6, NULL, '1385317', '1588622', NULL, NULL, 1);

SET FOREIGN_KEY_CHECKS = 1;
