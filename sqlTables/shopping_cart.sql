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

 Date: 01/12/2022 11:51:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for shopping_cart
-- ----------------------------
DROP TABLE IF EXISTS `shopping_cart`;
CREATE TABLE `shopping_cart`  (
  `id` bigint(20) NULL DEFAULT NULL COMMENT '主键',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '名称',
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '图片',
  `user_id` bigint(20) NOT NULL COMMENT '主键',
  `dish_id` bigint(20) NULL DEFAULT NULL COMMENT '菜品id',
  `setmeal_id` bigint(20) NULL DEFAULT NULL COMMENT '套餐id',
  `dish_flavor` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '口味',
  `number` int(11) NULL DEFAULT 1 COMMENT '数量',
  `amount` decimal(10, 2) NOT NULL COMMENT '金额',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '购物车' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shopping_cart
-- ----------------------------
INSERT INTO `shopping_cart` VALUES (NULL, 'Peppery Chicken', 'f966a38e-0780-40be-bb52-5699d13cb3d9.jpg', 2, NULL, NULL, NULL, 1, 78.00, NULL);
INSERT INTO `shopping_cart` VALUES (NULL, 'Tanam shark fin', '740c79ce-af29-41b8-b78d-5f49c96e38c4.jpg', 2, NULL, NULL, NULL, 1, 48.00, NULL);
INSERT INTO `shopping_cart` VALUES (NULL, 'Farewell my Concubine', '057dd338-e487-4bbc-a74c-0384c44a9ca3.jpg', 6, NULL, NULL, NULL, 1, 128.00, NULL);

SET FOREIGN_KEY_CHECKS = 1;
