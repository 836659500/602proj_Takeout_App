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

 Date: 01/12/2022 11:51:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dish
-- ----------------------------
DROP TABLE IF EXISTS `dish`;
CREATE TABLE `dish`  (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '菜品名称',
  `category_id` bigint(20) NOT NULL COMMENT '菜品分类id',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '菜品价格',
  `code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '商品码',
  `image` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '图片',
  `description` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '描述信息',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 停售 1 起售',
  `sort` int(11) NOT NULL DEFAULT 0 COMMENT '顺序',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  `create_user` bigint(20) NOT NULL COMMENT '创建人',
  `update_user` bigint(20) NOT NULL COMMENT '修改人',
  `is_deleted` int(11) NOT NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_dish_name`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '菜品管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dish
-- ----------------------------
INSERT INTO `dish` VALUES (1397849739276890114, 'Peppery Chicken', 1, 7800.00, '222222222', 'f966a38e-0780-40be-bb52-5699d13cb3d9.jpg', '', 1, 0, '2021-05-27 09:38:43', '2021-05-27 09:38:43', 1, 1, 0);
INSERT INTO `dish` VALUES (1397850140982161409, 'Braised Pork', 1, 6800.00, '123412341234', '0a3b3288-3446-4420-bbff-f263d0c02d8e.jpg', '', 1, 0, '2021-05-27 09:40:19', '2021-05-27 09:40:19', 1, 1, 0);
INSERT INTO `dish` VALUES (1397850392090947585, 'Tanam shark fin', 1, 4800.00, '123412341234', '740c79ce-af29-41b8-b78d-5f49c96e38c4.jpg', '', 1, 0, '2021-05-27 09:41:19', '2021-05-27 09:41:19', 1, 1, 0);
INSERT INTO `dish` VALUES (1397850851245600769, 'Farewell my Concubine', 1, 12800.00, '123412341234', '057dd338-e487-4bbc-a74c-0384c44a9ca3.jpg', 'Stewed chicken with tortoise', 1, 0, '2021-05-27 09:43:08', '2021-05-27 09:43:08', 1, 1, 0);
INSERT INTO `dish` VALUES (1397851099502260226, 'stewed assorted meat', 1, 11800.00, '23412341234', 'a53a4e6a-3b83-4044-87f9-9d49b30a8fdc.jpg', '', 1, 0, '2021-05-27 09:44:08', '2021-05-27 09:44:08', 1, 1, 0);
INSERT INTO `dish` VALUES (1397851370462687234, 'Pig\'s blood balls', 1, 13800.00, '1246812345678', '2a50628e-7758-4c51-9fbb-d37c61cdacad.jpg', '', 1, 0, '2021-05-27 09:45:12', '2021-05-27 09:45:12', 1, 1, 0);
INSERT INTO `dish` VALUES (1397851668262465537, 'Tasty snake', 1, 16800.00, '1234567812345678', '0f4bd884-dc9c-4cf9-b59e-7d5958fec3dd.jpg', '', 1, 0, '2021-05-27 09:46:23', '2021-05-27 09:46:23', 1, 1, 0);
INSERT INTO `dish` VALUES (1397852391150759938, 'diced chicken with green pepper', 2, 8800.00, '2346812468', 'ef2b73f2-75d1-4d3a-beea-22da0e1421bd.jpg', '', 1, 0, '2021-05-27 09:49:16', '2021-05-27 09:49:16', 1, 1, 0);
INSERT INTO `dish` VALUES (1397853183287013378, 'Spicy rabbit head', 2, 19800.00, '123456787654321', '2a2e9d66-b41d-4645-87bd-95f2cfeed218.jpg', '', 1, 0, '2021-05-27 09:52:24', '2021-05-27 09:52:24', 1, 1, 0);
INSERT INTO `dish` VALUES (1397853709101740034, 'pork with garlic sauce', 2, 9800.00, '1234321234321', 'd2f61d70-ac85-4529-9b74-6d9a2255c6d7.jpg', '', 1, 0, '2021-05-27 09:54:30', '2021-05-27 09:54:30', 1, 1, 0);
INSERT INTO `dish` VALUES (1397853890262118402, 'Shredded pork with fish flavor', 2, 3800.00, '1234212321234', '8dcfda14-5712-4d28-82f7-ae905b3c2308.jpg', '', 1, 0, '2021-05-27 09:55:13', '2021-05-27 09:55:13', 1, 1, 0);
INSERT INTO `dish` VALUES (1397854652581064706, 'Spicy boiled fish', 2, 14800.00, '2345312·345321', '1fdbfbf3-1d86-4b29-a3fc-46345852f2f8.jpg', '', 1, 0, '2021-05-27 09:58:15', '2021-05-27 09:58:15', 1, 1, 0);
INSERT INTO `dish` VALUES (1397854865672679425, 'Scrambled eggs with fish fragrance', 2, 2000.00, '23456431·23456', '0f252364-a561-4e8d-8065-9a6797a6b1d3.jpg', '', 1, 0, '2021-05-27 09:59:06', '2021-05-27 09:59:06', 1, 1, 0);
INSERT INTO `dish` VALUES (1397860242057375745, 'Roasted goose with crispy skin', 3, 12800.00, '123456786543213456', 'e476f679-5c15-436b-87fa-8c4e9644bf33.jpeg', '', 1, 0, '2021-05-27 10:20:27', '2021-05-27 10:20:27', 1, 1, 0);
INSERT INTO `dish` VALUES (1397860578738352129, 'Boiled Chicken Slices', 3, 6600.00, '12345678654', '9ec6fc2d-50d2-422e-b954-de87dcd04198.jpeg', '', 1, 0, '2021-05-27 10:21:48', '2021-05-27 10:21:48', 1, 1, 0);
INSERT INTO `dish` VALUES (1397860792492666881, 'Roast Suckling pig', 3, 38800.00, '213456432123456', '2e96a7e3-affb-438e-b7c3-e1430df425c9.jpeg', '', 1, 0, '2021-05-27 10:22:39', '2021-05-27 10:22:39', 1, 1, 0);
INSERT INTO `dish` VALUES (1397860963880316929, 'Crispy Pigeon', 3, 10800.00, '1234563212345', '3fabb83a-1c09-4fd9-892b-4ef7457daafa.jpeg', '', 1, 0, '2021-05-27 10:23:19', '2021-05-27 10:23:19', 1, 1, 0);
INSERT INTO `dish` VALUES (1397861683434139649, 'Steamed river fresh seafood', 3, 38800.00, '1234567876543213456', '1405081e-f545-42e1-86a2-f7559ae2e276.jpeg', '', 1, 0, '2021-05-27 10:26:11', '2021-05-27 10:26:11', 1, 1, 0);
INSERT INTO `dish` VALUES (1397862198033297410, 'slow cooker soup', 3, 49800.00, '123456786532455', '583df4b7-a159-4cfc-9543-4f666120b25f.jpeg', '', 1, 0, '2021-05-27 10:28:14', '2021-05-27 10:28:14', 1, 1, 0);
INSERT INTO `dish` VALUES (1397862477831122945, 'Lobster baked with soup', 3, 108800.00, '1234567865432', '5b8d2da3-3744-4bb3-acdc-329056b8259d.jpeg', '', 1, 0, '2021-05-27 10:29:20', '2021-05-27 10:29:20', 1, 1, 0);
INSERT INTO `dish` VALUES (1413342036832100354, 'Arctic Ocean', 4, 500.00, '', 'c99e0aab-3cb7-4eaa-80fd-f47d4ffea694.png', '', 1, 0, '2021-07-09 11:39:35', '2021-07-09 15:12:18', 1, 1, 0);
INSERT INTO `dish` VALUES (1413345246889791330, 'Lingchuan dog meat', 3, 50.00, '123', '0dc11598a48d4635de5effef8329ae97.jpg', ' ', 1, 0, '2022-11-24 00:26:59', '2022-11-30 00:27:12', 1, 1, 0);
INSERT INTO `dish` VALUES (1413384757047271425, 'Wong Lo Kat', 4, 500.00, '', '00874a5e-0df2-446b-8f69-a30eb7d88ee8.png', '', 1, 0, '2021-07-09 14:29:20', '2021-07-12 09:09:16', 1, 1, 0);
INSERT INTO `dish` VALUES (1413385247889891330, 'Rice', 5, 200.00, '', 'ee04a05a-1230-46b6-8ad5-1a95b140fff3.png', '', 1, 0, '2021-07-09 14:31:17', '2021-07-11 16:35:26', 1, 1, 0);

SET FOREIGN_KEY_CHECKS = 1;
