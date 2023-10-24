/*
 Navicat MySQL Data Transfer

 Source Server         : where
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:3306
 Source Schema         : homework

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 24/10/2023 17:23:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bms_book_category
-- ----------------------------
DROP TABLE IF EXISTS `bms_book_category`;
CREATE TABLE `bms_book_category`  (
  `id` bigint NOT NULL COMMENT '目录id',
  `category` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '目录',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '书籍分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bms_book_category
-- ----------------------------
INSERT INTO `bms_book_category` VALUES (1, '软件工程');
INSERT INTO `bms_book_category` VALUES (2, '计算机科学与技术');
INSERT INTO `bms_book_category` VALUES (3, '大数据科学与技术');
INSERT INTO `bms_book_category` VALUES (4, '计算机科学与技术');
INSERT INTO `bms_book_category` VALUES (5, '计算机科学与技术');
INSERT INTO `bms_book_category` VALUES (6, '计算机科学与技术');
INSERT INTO `bms_book_category` VALUES (7, '软件工程');
INSERT INTO `bms_book_category` VALUES (8, '软件工程');
INSERT INTO `bms_book_category` VALUES (9, '计算机科学与技术');
INSERT INTO `bms_book_category` VALUES (10, '大数据科学与技术');
INSERT INTO `bms_book_category` VALUES (11, '软件工程');
INSERT INTO `bms_book_category` VALUES (12, '软件工程');
INSERT INTO `bms_book_category` VALUES (13, '软件工程');
INSERT INTO `bms_book_category` VALUES (14, '软件工程');
INSERT INTO `bms_book_category` VALUES (15, '软件工程');
INSERT INTO `bms_book_category` VALUES (16, '大数据科学与技术');
INSERT INTO `bms_book_category` VALUES (17, '软件工程');
INSERT INTO `bms_book_category` VALUES (18, '大数据科学与技术');
INSERT INTO `bms_book_category` VALUES (19, '计算机科学与技术');
INSERT INTO `bms_book_category` VALUES (20, '软件工程');

-- ----------------------------
-- Table structure for bms_book_category_relation
-- ----------------------------
DROP TABLE IF EXISTS `bms_book_category_relation`;
CREATE TABLE `bms_book_category_relation`  (
  `book_id` bigint NOT NULL COMMENT '书籍id',
  `category_id` bigint NOT NULL COMMENT '目录id'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '书籍分类关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bms_book_category_relation
-- ----------------------------
INSERT INTO `bms_book_category_relation` VALUES (1, 1);
INSERT INTO `bms_book_category_relation` VALUES (2, 1);
INSERT INTO `bms_book_category_relation` VALUES (3, 3);
INSERT INTO `bms_book_category_relation` VALUES (4, 4);
INSERT INTO `bms_book_category_relation` VALUES (6, 4);
INSERT INTO `bms_book_category_relation` VALUES (5, 5);
INSERT INTO `bms_book_category_relation` VALUES (7, 4);
INSERT INTO `bms_book_category_relation` VALUES (8, 4);
INSERT INTO `bms_book_category_relation` VALUES (9, 4);
INSERT INTO `bms_book_category_relation` VALUES (10, 4);
INSERT INTO `bms_book_category_relation` VALUES (11, 4);
INSERT INTO `bms_book_category_relation` VALUES (12, 4);

-- ----------------------------
-- Table structure for bms_book_lend_info
-- ----------------------------
DROP TABLE IF EXISTS `bms_book_lend_info`;
CREATE TABLE `bms_book_lend_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '借阅信息id',
  `book_id` bigint NOT NULL COMMENT '借阅书籍',
  `user_id` bigint NOT NULL COMMENT '借阅人',
  `lend_time` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '借阅时间',
  `return_time` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归还时间',
  `status` int NOT NULL COMMENT '是否归还  0：未归还 1 ：已归还',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1600425352671084550 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '借阅信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bms_book_lend_info
-- ----------------------------
INSERT INTO `bms_book_lend_info` VALUES (2, 2, 0, '2022-05-18 08:44:41', '2022-12-07 17:41:57', 1);
INSERT INTO `bms_book_lend_info` VALUES (3, 6, 8, '2022-04-01 09:44:33', '2022-03-04 04:09:48', 1);
INSERT INTO `bms_book_lend_info` VALUES (4, 20, 4, '2022-07-29 22:15:13', '2022-02-06 00:46:36', 0);
INSERT INTO `bms_book_lend_info` VALUES (5, 20, 2, '2022-04-25 16:46:03', '2022-04-17 10:13:36', 1);
INSERT INTO `bms_book_lend_info` VALUES (6, 9, 20, '2022-08-08 04:00:02', '2022-01-13 13:04:15', 0);
INSERT INTO `bms_book_lend_info` VALUES (7, 1, 1, '2022-06-21 17:14:30', '2022-12-14 21:07:46', 1);
INSERT INTO `bms_book_lend_info` VALUES (8, 20, 20, '2022-07-11 06:07:07', '2022-12-18 17:35:02', 0);
INSERT INTO `bms_book_lend_info` VALUES (9, 0, 2, '2022-07-23 15:08:35', '2022-03-10 15:14:32', 1);
INSERT INTO `bms_book_lend_info` VALUES (10, 20, 6, '2022-09-24 03:21:04', '2022-09-24 12:58:07', 1);
INSERT INTO `bms_book_lend_info` VALUES (11, 7, 2, '2022-09-05 00:53:14', '2022-03-12 07:32:14', 1);
INSERT INTO `bms_book_lend_info` VALUES (12, 7, 6, '2022-11-11 02:33:25', '2022-06-17 19:54:14', 1);
INSERT INTO `bms_book_lend_info` VALUES (13, 20, 8, '2022-03-26 21:14:37', '2022-11-11 13:39:09', 1);
INSERT INTO `bms_book_lend_info` VALUES (14, 2, 1, '2022-01-01 04:44:02', '2022-12-07 17:41:57', 1);
INSERT INTO `bms_book_lend_info` VALUES (15, 5, 5, '2022-03-21 14:09:57', '2022-10-21 09:11:32', 0);
INSERT INTO `bms_book_lend_info` VALUES (16, 1, 0, '2022-01-30 03:30:55', '2022-12-14 21:07:46', 1);
INSERT INTO `bms_book_lend_info` VALUES (17, 2, 2, '2022-09-30 16:27:19', '2022-12-07 17:41:57', 1);
INSERT INTO `bms_book_lend_info` VALUES (18, 2, 1, '2022-03-30 03:32:59', '2022-12-07 17:41:57', 1);
INSERT INTO `bms_book_lend_info` VALUES (19, 9, 7, '2022-11-21 22:36:10', '2022-07-22 22:27:46', 0);
INSERT INTO `bms_book_lend_info` VALUES (20, 3, 20, '2022-01-25 22:04:37', '2022-07-26 13:24:31', 1);
INSERT INTO `bms_book_lend_info` VALUES (21, 2, 2, '2022-08-19 17:12:50', '2022-12-07 17:41:57', 1);
INSERT INTO `bms_book_lend_info` VALUES (22, 1, 4, '2022-11-15 23:24:46', '2022-12-14 21:07:46', 1);
INSERT INTO `bms_book_lend_info` VALUES (23, 20, 20, '2022-10-01 21:33:45', '2022-05-22 04:22:09', 1);
INSERT INTO `bms_book_lend_info` VALUES (24, 6, 20, '2022-03-21 10:05:29', '2022-09-26 02:52:49', 1);
INSERT INTO `bms_book_lend_info` VALUES (25, 2, 1, '2022-05-24 07:06:24', '2022-12-07 17:41:57', 1);
INSERT INTO `bms_book_lend_info` VALUES (26, 1, 2, '2022-04-16 01:26:14', '2022-12-14 21:07:46', 1);
INSERT INTO `bms_book_lend_info` VALUES (27, 8, 0, '2022-11-27 16:16:32', '2022-12-06 01:13:17', 1);
INSERT INTO `bms_book_lend_info` VALUES (28, 6, 1, '2022-12-10 15:31:11', '2022-05-26 21:33:18', 1);
INSERT INTO `bms_book_lend_info` VALUES (29, 6, 2, '2022-07-10 05:32:08', '2022-12-25 15:12:40', 1);
INSERT INTO `bms_book_lend_info` VALUES (30, 20, 2, '2022-12-11 09:39:11', '2022-02-28 04:20:18', 1);
INSERT INTO `bms_book_lend_info` VALUES (31, 0, 1, '2022-03-05 15:49:10', '2022-04-09 11:55:53', 1);
INSERT INTO `bms_book_lend_info` VALUES (32, 0, 0, '2022-09-17 09:45:40', '2022-10-16 16:40:12', 1);
INSERT INTO `bms_book_lend_info` VALUES (33, 20, 2, '2022-01-17 23:37:41', '2022-07-19 01:15:14', 1);
INSERT INTO `bms_book_lend_info` VALUES (34, 8, 20, '2022-02-12 14:16:49', '2022-07-16 17:08:19', 1);
INSERT INTO `bms_book_lend_info` VALUES (35, 1, 6, '2022-04-16 01:10:04', '2022-12-14 21:07:46', 1);
INSERT INTO `bms_book_lend_info` VALUES (36, 20, 4, '2022-08-23 08:59:59', '2022-01-12 13:13:42', 1);
INSERT INTO `bms_book_lend_info` VALUES (37, 20, 4, '2022-12-03 03:29:06', '2022-06-19 11:59:45', 1);
INSERT INTO `bms_book_lend_info` VALUES (38, 0, 5, '2022-06-24 20:12:40', '2022-08-01 16:23:09', 1);
INSERT INTO `bms_book_lend_info` VALUES (39, 1, 4, '2022-02-04 13:07:53', '2022-12-14 21:07:46', 1);
INSERT INTO `bms_book_lend_info` VALUES (40, 2, 6, '2022-12-28 00:22:02', '2022-12-07 17:41:57', 1);
INSERT INTO `bms_book_lend_info` VALUES (41, 2, 4, '2022-07-08 16:39:27', '2022-12-07 17:41:57', 1);
INSERT INTO `bms_book_lend_info` VALUES (42, 6, 2, '2022-08-08 04:13:50', '2022-04-25 07:29:58', 1);
INSERT INTO `bms_book_lend_info` VALUES (43, 7, 8, '2022-09-18 17:39:13', '2022-02-18 14:27:54', 1);
INSERT INTO `bms_book_lend_info` VALUES (44, 4, 7, '2022-12-27 16:55:11', '2022-06-28 02:31:45', 1);
INSERT INTO `bms_book_lend_info` VALUES (45, 6, 0, '2022-09-14 07:37:34', '2022-06-07 08:23:46', 1);
INSERT INTO `bms_book_lend_info` VALUES (46, 20, 20, '2022-12-28 14:10:06', '2022-04-29 08:49:26', 1);
INSERT INTO `bms_book_lend_info` VALUES (47, 20, 1, '2022-08-17 01:26:52', '2022-02-08 06:10:03', 1);
INSERT INTO `bms_book_lend_info` VALUES (48, 20, 2, '2022-01-08 15:07:31', '2022-02-07 13:04:46', 1);
INSERT INTO `bms_book_lend_info` VALUES (49, 20, 2, '2022-11-07 16:21:45', '2022-11-03 11:13:07', 1);
INSERT INTO `bms_book_lend_info` VALUES (50, 2, 6, '2022-06-21 04:48:16', '2022-12-07 17:41:57', 1);
INSERT INTO `bms_book_lend_info` VALUES (1600033180725604354, 2, 1, '2022-12-06 15:43:32', '2022-12-07 17:41:57', 1);
INSERT INTO `bms_book_lend_info` VALUES (1600425352671084546, 2, 1, '2022-12-07 17:41:53', '2022-12-07 17:41:57', 1);
INSERT INTO `bms_book_lend_info` VALUES (1600425352671084547, 1, 1599740147547340820, '2022-12-14 16:31:24', '2022-12-14 21:07:46', 1);
INSERT INTO `bms_book_lend_info` VALUES (1600425352671084548, 1, 1599740147547340820, '2022-12-14 16:33:49', '2022-12-14 21:07:46', 1);
INSERT INTO `bms_book_lend_info` VALUES (1600425352671084549, 1, 1, '2022-12-14 21:07:03', '2022-12-14 21:07:46', 1);
INSERT INTO `bms_book_lend_info` VALUES (1600425352671084550, 1, 1, '2022-12-14 21:07:43', '2022-12-14 21:07:46', 1);

-- ----------------------------
-- Table structure for bms_book_sku
-- ----------------------------
DROP TABLE IF EXISTS `bms_book_sku`;
CREATE TABLE `bms_book_sku`  (
  `id` bigint NOT NULL COMMENT '库存id',
  `book_id` bigint NOT NULL COMMENT '书籍id',
  `stock` bigint NOT NULL COMMENT '库存',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '书籍sku库存信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bms_book_sku
-- ----------------------------
INSERT INTO `bms_book_sku` VALUES (1, 1, 62);
INSERT INTO `bms_book_sku` VALUES (2, 2, 22);
INSERT INTO `bms_book_sku` VALUES (3, 3, 74);
INSERT INTO `bms_book_sku` VALUES (4, 4, 2);
INSERT INTO `bms_book_sku` VALUES (5, 5, 60);
INSERT INTO `bms_book_sku` VALUES (6, 6, 81);
INSERT INTO `bms_book_sku` VALUES (7, 7, 86);
INSERT INTO `bms_book_sku` VALUES (8, 8, 10);
INSERT INTO `bms_book_sku` VALUES (9, 9, 10);
INSERT INTO `bms_book_sku` VALUES (10, 10, 1);
INSERT INTO `bms_book_sku` VALUES (11, 11, 19);
INSERT INTO `bms_book_sku` VALUES (12, 12, 1);
INSERT INTO `bms_book_sku` VALUES (13, 13, 6);
INSERT INTO `bms_book_sku` VALUES (14, 14, 55);
INSERT INTO `bms_book_sku` VALUES (15, 15, 19);
INSERT INTO `bms_book_sku` VALUES (16, 16, 75);
INSERT INTO `bms_book_sku` VALUES (17, 17, 10);
INSERT INTO `bms_book_sku` VALUES (18, 18, 81);
INSERT INTO `bms_book_sku` VALUES (19, 19, 34);
INSERT INTO `bms_book_sku` VALUES (20, 20, 1);

-- ----------------------------
-- Table structure for bms_book_spu
-- ----------------------------
DROP TABLE IF EXISTS `bms_book_spu`;
CREATE TABLE `bms_book_spu`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '书籍编号',
  `book_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '书籍名',
  `writer_id` bigint NOT NULL COMMENT '作者id',
  `publisher` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '出版商',
  `input_time` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '购入时间',
  `describe` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '书籍描述',
  `image` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '图片',
  `status` int NOT NULL COMMENT '是否展示 1：展示 0：不展示',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '图书标准spu表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bms_book_spu
-- ----------------------------
INSERT INTO `bms_book_spu` VALUES (1, '精益求精', 1, '东南技术大学', '2022-09-04 01:59:58', '答案', '1', 1);
INSERT INTO `bms_book_spu` VALUES (2, '理所当然', 1, '西北大学', '2022-09-04 03:01:12', '发如雪', '2', 1);
INSERT INTO `bms_book_spu` VALUES (3, '名不虚传', 8, '南技术大学', '2022-11-18 02:43:54', '反方向的钟', '3', 1);
INSERT INTO `bms_book_spu` VALUES (4, '名副其实', 11, '东艺术大学', '2022-06-23 17:29:07', '花海', '4', 1);
INSERT INTO `bms_book_spu` VALUES (5, '人满为患', 1, '东南艺术大学', '2022-02-15 04:44:32', '盛夏', '5', 0);
INSERT INTO `bms_book_spu` VALUES (6, '举足轻重', 6, '中国科技大学', '2022-05-11 00:26:56', '反方向的钟', '6', 1);
INSERT INTO `bms_book_spu` VALUES (7, '刻不容缓', 10, '东北技术大学', '2022-09-10 22:39:18', '漠河舞厅', '7', 0);
INSERT INTO `bms_book_spu` VALUES (8, '三位一体', 5, '北理工大学', '2022-12-05 19:34:36', '像我这样的人', '8', 0);
INSERT INTO `bms_book_spu` VALUES (9, '议论纷纷', 22, '北理工大学', '2022-06-15 22:11:21', '晴天', '9', 0);
INSERT INTO `bms_book_spu` VALUES (10, '随时随地', 16, '南技术大学', '2022-05-29 06:47:17', '本草纲目', '10', 0);
INSERT INTO `bms_book_spu` VALUES (11, '实事求是', 3, '西南大学', '2022-02-24 19:16:30', '火红的萨日朗', '11', 0);
INSERT INTO `bms_book_spu` VALUES (12, '持之以恒', 2, '东艺术大学', '2022-05-19 19:19:34', '本草纲目', '12', 0);
INSERT INTO `bms_book_spu` VALUES (13, '明察暗访', 2, '西南理工大学', '2022-06-02 13:03:55', '模特', '13', 0);
INSERT INTO `bms_book_spu` VALUES (14, '不可思议', 12, '东北技术大学', '2022-02-03 11:19:23', '坏女孩', '14', 0);
INSERT INTO `bms_book_spu` VALUES (15, '各式各样', 5, '南艺术大学', '2022-09-30 19:33:44', '无问', '15', 0);
INSERT INTO `bms_book_spu` VALUES (16, '沸沸扬扬', 13, '西南大学', '2022-03-17 04:14:30', '发如雪', '16', 0);
INSERT INTO `bms_book_spu` VALUES (17, '大势所趋', 14, '南体育大学', '2022-11-13 18:09:56', '发如雪', '17', 0);
INSERT INTO `bms_book_spu` VALUES (18, '厉行节约', 16, '北技术大学', '2022-12-27 22:51:58', '无问', '18', 0);
INSERT INTO `bms_book_spu` VALUES (19, '在所难免', 17, '西技术大学', '2022-04-21 16:05:40', '本草纲目', '19', 0);
INSERT INTO `bms_book_spu` VALUES (20, '燃眉之急', 18, '北科技大学', '2022-09-26 01:28:59', '无问', '20', 0);

-- ----------------------------
-- Table structure for bms_book_writer
-- ----------------------------
DROP TABLE IF EXISTS `bms_book_writer`;
CREATE TABLE `bms_book_writer`  (
  `id` bigint NOT NULL COMMENT '作者id',
  `writer` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '作者',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '书籍作者' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bms_book_writer
-- ----------------------------
INSERT INTO `bms_book_writer` VALUES (1, '赖梓晨');
INSERT INTO `bms_book_writer` VALUES (2, '谢文轩');
INSERT INTO `bms_book_writer` VALUES (3, '李泽洋');
INSERT INTO `bms_book_writer` VALUES (4, '洪峻熙');
INSERT INTO `bms_book_writer` VALUES (5, '高果');
INSERT INTO `bms_book_writer` VALUES (6, '叶弘文');
INSERT INTO `bms_book_writer` VALUES (7, '赵雪松');
INSERT INTO `bms_book_writer` VALUES (8, '韩绍齐');
INSERT INTO `bms_book_writer` VALUES (9, '夏苑博');
INSERT INTO `bms_book_writer` VALUES (10, '梁明杰');
INSERT INTO `bms_book_writer` VALUES (11, '贾旭尧');
INSERT INTO `bms_book_writer` VALUES (12, '万越彬');
INSERT INTO `bms_book_writer` VALUES (13, '范智渊');
INSERT INTO `bms_book_writer` VALUES (14, '张炎彬');
INSERT INTO `bms_book_writer` VALUES (15, '范烨霖');
INSERT INTO `bms_book_writer` VALUES (16, '余鑫鹏');
INSERT INTO `bms_book_writer` VALUES (17, '雷子轩');
INSERT INTO `bms_book_writer` VALUES (18, '李立辉');
INSERT INTO `bms_book_writer` VALUES (19, '覃博文');
INSERT INTO `bms_book_writer` VALUES (20, '尹思');

-- ----------------------------
-- Table structure for tb_book
-- ----------------------------
DROP TABLE IF EXISTS `tb_book`;
CREATE TABLE `tb_book`  (
  `id` bigint NOT NULL COMMENT '书籍编号',
  `book_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '书籍名称',
  `writer` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '作者',
  `publisher` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '出版商',
  `buy_date` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '购买日期',
  `lended_number` bigint NULL DEFAULT NULL COMMENT '借阅次数',
  `has_lend` int NOT NULL COMMENT '是否借出',
  `describe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '书籍描述信息',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '书籍信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_book
-- ----------------------------
INSERT INTO `tb_book` VALUES (1, '大雪', '程烨霖', '厦门大学', '2022-07-16 05:43:49', 29, 1, '脱颖而出');
INSERT INTO `tb_book` VALUES (2, '小满', '毛智辉', '厦门大学', '2022-02-08 20:47:39', 1, 0, '风口浪尖');
INSERT INTO `tb_book` VALUES (3, '雨水', '孙越彬', '武汉工业学院', '2022-10-06 21:05:21', 9, 1, '排忧解难');
INSERT INTO `tb_book` VALUES (4, '惊蛰', '戴琪', '南昌大学', '2022-04-13 07:44:45', 1, 0, '前所未有');
INSERT INTO `tb_book` VALUES (5, '惊蛰', '贾昊强', '山西中医学院', '2022-08-18 12:30:11', 100, 1, '供不应求');
INSERT INTO `tb_book` VALUES (6, '冬至', '萧鸿涛', '上海外国语大学', '2022-08-21 20:23:42', 1, 1, '奋发有为');
INSERT INTO `tb_book` VALUES (7, '秋分', '曾天翊', '上海交通大学', '2022-10-20 16:43:59', 19, 1, '实事求是');
INSERT INTO `tb_book` VALUES (8, '雨水', '袁鸿煊', '中国协和医科大学', '2022-10-15 16:49:08', 1, 1, '图文并茂');
INSERT INTO `tb_book` VALUES (9, '白露', '陆胤祥', '中国矿业大学', '2022-04-04 19:48:14', 1, 1, '立竿见影');
INSERT INTO `tb_book` VALUES (10, '立冬', '黄煜祺', '上海师范大学', '2022-06-10 22:19:28', 24, 0, '千家万户');
INSERT INTO `tb_book` VALUES (11, '大暑', '傅明哲', '沈阳大学', '2022-11-27 15:12:20', 1, 1, '淋漓尽致');
INSERT INTO `tb_book` VALUES (12, '白露', '李博文', '右江民族医学院', '2022-12-24 08:50:48', 77, 1, '所作所为');
INSERT INTO `tb_book` VALUES (13, '白露', '卢鸿涛', '长沙理工大学', '2022-04-07 14:49:37', 15, 0, '刻不容缓');
INSERT INTO `tb_book` VALUES (14, '惊蛰', '戴雨泽', '北京交通大学', '2022-07-31 12:23:05', 19, 1, '相辅相成');
INSERT INTO `tb_book` VALUES (15, '惊蛰', '孟天宇', '东华大学', '2022-01-06 03:36:58', 77, 0, '比比皆是');
INSERT INTO `tb_book` VALUES (16, '小寒', '赵炫明', '上海应用技术学院', '2022-04-17 05:06:45', 1, 0, '无家可归');
INSERT INTO `tb_book` VALUES (17, '立春', '曹越彬', '南昌工程学院', '2022-01-02 03:39:17', 61, 1, '明察暗访');
INSERT INTO `tb_book` VALUES (18, '夏至', '尹昊强', '江西师范大学', '2022-10-09 08:56:54', 21, 1, '由来已久');
INSERT INTO `tb_book` VALUES (19, '大寒', '顾建辉', '对外经济贸易大学', '2022-07-19 08:27:59', 1, 0, '由来已久');
INSERT INTO `tb_book` VALUES (20, '春分', '万博文', '内蒙古财经学院', '2022-10-04 15:41:24', 31, 0, '马不停蹄');
INSERT INTO `tb_book` VALUES (21, '大暑', '贾昊焱', '湖北美术学院', '2022-08-07 21:38:13', 15, 0, '显而易见');
INSERT INTO `tb_book` VALUES (22, '清明', '李明辉', '青岛港湾职业技术学院', '2022-01-18 04:18:35', 1, 0, '行之有效');
INSERT INTO `tb_book` VALUES (23, '夏至', '李健雄', '湘潭大学', '2022-01-25 10:50:07', 41, 0, '不绝于耳');
INSERT INTO `tb_book` VALUES (24, '处暑', '马子骞', '南京理工大学', '2022-06-26 18:34:31', 19, 0, '铺天盖地');
INSERT INTO `tb_book` VALUES (25, '春分', '洪思源', '石家庄铁道学院', '2022-01-12 13:09:02', 5, 1, '精心设计');
INSERT INTO `tb_book` VALUES (26, '惊蛰', '万明', '天津科技大学', '2022-10-06 15:46:13', 49, 0, '再接再厉');
INSERT INTO `tb_book` VALUES (27, '立春', '韦浩然', '山东师范大学', '2022-11-12 16:30:45', 16, 0, '再接再厉');
INSERT INTO `tb_book` VALUES (28, '谷雨', '李熠彤', '安徽师范大学', '2022-03-28 15:42:21', 11, 0, '源远流长');
INSERT INTO `tb_book` VALUES (29, '立春', '林天宇', '内蒙古科技大学', '2022-11-26 09:31:47', 49, 0, '明察暗访');
INSERT INTO `tb_book` VALUES (30, '寒露', '邹鹭洋', '内蒙古医学院', '2022-05-18 10:25:21', 1, 1, '不言而喻');
INSERT INTO `tb_book` VALUES (31, '惊蛰', '戴琪', '南开大学', '2022-04-05 21:12:35', 60, 1, '各式各样');
INSERT INTO `tb_book` VALUES (32, '小雪', '苏瑾瑜', '广西师范大学', '2022-06-28 13:45:56', 1, 1, '络绎不绝');
INSERT INTO `tb_book` VALUES (33, '清明', '许建辉', '山西农业大学', '2022-07-06 21:42:44', 40, 1, '不可思议');
INSERT INTO `tb_book` VALUES (34, '夏至', '黄鹏', '安徽工业大学', '2022-02-09 04:33:43', 68, 1, '五花八门');
INSERT INTO `tb_book` VALUES (35, '清明', '何明轩', '沈阳农业大学', '2022-01-02 11:24:09', 1, 0, '紧锣密鼓');
INSERT INTO `tb_book` VALUES (36, '小满', '顾伟泽', '中国海洋大学', '2022-05-29 11:22:32', 1, 1, '迫在眉睫');
INSERT INTO `tb_book` VALUES (37, '秋分', '黎思源', '华北电力大学', '2022-01-22 19:24:37', 10, 0, '万无一失');
INSERT INTO `tb_book` VALUES (38, '立秋', '陈天磊', '内蒙古师范大学', '2022-05-15 00:47:32', 14, 0, '铺张浪费');
INSERT INTO `tb_book` VALUES (39, '秋分', '夏嘉懿', '上海大学', '2022-10-12 02:34:06', 38, 1, '铺张浪费');
INSERT INTO `tb_book` VALUES (40, '大雪', '周熠彤', '桂林电子工业学院', '2022-08-25 22:35:17', 91, 1, '坚定不移');
INSERT INTO `tb_book` VALUES (41, '霜降', '孙远航', '东华理工学院', '2022-10-13 10:42:48', 32, 0, '源远流长');
INSERT INTO `tb_book` VALUES (42, '秋分', '赖金鑫', '华中师范大学', '2022-06-01 08:33:18', 25, 1, '独一无二');
INSERT INTO `tb_book` VALUES (43, '霜降', '徐荣轩', '浙江理工大学', '2022-03-25 16:13:03', 11, 0, '一见钟情');
INSERT INTO `tb_book` VALUES (44, '霜降', '白致远', '沈阳大学', '2022-04-02 00:04:06', 50, 1, '潜移默化');
INSERT INTO `tb_book` VALUES (45, '大暑', '汪子骞', '沈阳大学', '2022-06-17 01:44:39', 1, 0, '雪上加霜');
INSERT INTO `tb_book` VALUES (46, '立冬', '钟鸿涛', '山西财经大学', '2022-11-19 13:12:33', 17, 1, '一视同仁');
INSERT INTO `tb_book` VALUES (47, '处暑', '萧天磊', '安徽师范大学', '2022-03-26 00:14:29', 1, 0, '日新月异');
INSERT INTO `tb_book` VALUES (48, '雨水', '贺远航', '中国医科大学', '2022-03-22 03:36:35', 100, 0, '风口浪尖');
INSERT INTO `tb_book` VALUES (49, '小暑', '万烨伟', '湖北美术学院', '2022-10-13 20:03:06', 1, 1, '讨价还价');
INSERT INTO `tb_book` VALUES (50, '白露', '唐昊强', '河北工程学院', '2022-02-19 11:52:13', 39, 1, '有所作为');
INSERT INTO `tb_book` VALUES (51, '芒种', '李晓博', '河北大学', '2022-11-29 17:46:27', 10, 1, '余波未平');
INSERT INTO `tb_book` VALUES (52, '惊蛰', '邵建辉', '河南师范大学', '2022-01-24 00:17:44', 29, 1, '对症下药');
INSERT INTO `tb_book` VALUES (53, '夏至', '陆果', '武汉音乐学院', '2022-10-13 11:04:14', 51, 0, '马不停蹄');
INSERT INTO `tb_book` VALUES (54, '冬至', '苏金鑫', '安徽农业大学', '2022-09-26 22:04:05', 8, 0, '大势所趋');
INSERT INTO `tb_book` VALUES (55, '霜降', '黄伟诚', '山东中医药大学', '2022-02-18 05:38:32', 59, 0, '脱颖而出');
INSERT INTO `tb_book` VALUES (56, '立冬', '韦雨泽', '北京中医药大学', '2022-08-07 19:20:45', 9, 0, '万无一失');
INSERT INTO `tb_book` VALUES (57, '立冬', '冯越泽', '北京邮电大学', '2022-01-15 02:20:46', 3, 0, '数以万计');
INSERT INTO `tb_book` VALUES (58, '春分', '金擎苍', '湖南科技大学', '2022-02-07 05:56:06', 46, 0, '后顾之忧');
INSERT INTO `tb_book` VALUES (59, '清明', '莫峻熙', '华东政法学院', '2022-01-09 22:59:24', 12, 1, '名不虚传');
INSERT INTO `tb_book` VALUES (60, '小寒', '钟聪健', '广东工业大学', '2022-05-08 02:37:01', 100, 1, '长治久安');
INSERT INTO `tb_book` VALUES (61, '寒露', '赖晓博', '郑州航空工业管理学院', '2022-11-04 06:29:55', 5, 0, '五花八门');
INSERT INTO `tb_book` VALUES (62, '雨水', '邓睿渊', '安徽师范大学', '2022-03-27 20:27:15', 1, 1, '全力以赴');
INSERT INTO `tb_book` VALUES (63, '立冬', '韦伟祺', '辽宁工程技术大学', '2022-09-06 15:03:39', 1, 0, '不可忽视');
INSERT INTO `tb_book` VALUES (64, '处暑', '龚君浩', '湖南农业大学', '2022-10-04 22:57:54', 16, 1, '不得而知');
INSERT INTO `tb_book` VALUES (65, '大雪', '罗明哲', '沈阳大学', '2022-07-28 17:44:37', 92, 1, '错综复杂');
INSERT INTO `tb_book` VALUES (66, '小暑', '邹烨霖', '海南大学', '2022-02-03 03:22:01', 14, 0, '厉行节约');
INSERT INTO `tb_book` VALUES (67, '雨水', '梁子默', '广州中医药大学', '2022-07-19 04:45:31', 11, 0, '博大精深');
INSERT INTO `tb_book` VALUES (68, '寒露', '丁鹏', '燕山大学', '2022-03-13 23:11:04', 62, 0, '有条不紊');
INSERT INTO `tb_book` VALUES (69, '立冬', '余思聪', '安徽理工大学', '2022-01-18 03:13:28', 46, 1, '势在必行');
INSERT INTO `tb_book` VALUES (70, '秋分', '覃立轩', '广西大学', '2022-11-27 16:57:31', 8, 0, '安居乐业');
INSERT INTO `tb_book` VALUES (71, '清明', '姜志泽', '河南工业大学', '2022-06-25 12:01:06', 100, 1, '耳目一新');
INSERT INTO `tb_book` VALUES (72, '谷雨', '龙胤祥', '湖南农业大学', '2022-09-28 06:56:59', 36, 1, '心有余悸');
INSERT INTO `tb_book` VALUES (73, '寒露', '傅鑫磊', '内蒙古农业大学', '2022-01-12 00:02:28', 1, 1, '自强不息');
INSERT INTO `tb_book` VALUES (74, '处暑', '钟立轩', '湖北师范学院', '2022-04-28 08:41:57', 1, 1, '心有余悸');
INSERT INTO `tb_book` VALUES (75, '秋分', '邵晓博', '华中科技大学', '2022-01-06 00:19:26', 1, 1, '见义勇为');
INSERT INTO `tb_book` VALUES (76, '雨水', '朱文', '西南师范大学', '2022-01-07 00:43:46', 1, 1, '所作所为');
INSERT INTO `tb_book` VALUES (77, '春分', '陶鹏煊', '福建工程学院', '2022-09-25 12:39:53', 100, 0, '图文并茂');
INSERT INTO `tb_book` VALUES (78, '立夏', '武聪健', '江汉大学', '2022-06-24 22:01:03', 25, 1, '千家万户');
INSERT INTO `tb_book` VALUES (79, '霜降', '林志泽', '福建医科大学', '2022-08-20 18:44:04', 4, 0, '家喻户晓');
INSERT INTO `tb_book` VALUES (80, '小暑', '杜晋鹏', '山东中医药大学', '2022-06-22 20:45:25', 1, 1, '无独有偶');
INSERT INTO `tb_book` VALUES (81, '处暑', '曹雨泽', '杭州电子科技大学', '2022-01-31 12:07:19', 8, 1, '独一无二');
INSERT INTO `tb_book` VALUES (82, '谷雨', '贾明', '广西大学', '2022-03-19 13:16:38', 90, 1, '琳琅满目');
INSERT INTO `tb_book` VALUES (83, '冬至', '郑嘉懿', '福建工程学院', '2022-08-19 13:14:37', 1, 1, '出人意料');
INSERT INTO `tb_book` VALUES (84, '秋分', '周雨泽', '河南科技大学', '2022-05-14 15:14:52', 31, 0, '不了了之');
INSERT INTO `tb_book` VALUES (85, '小满', '谢峻熙', '天津医科大学', '2022-06-17 05:13:53', 13, 1, '举世瞩目');
INSERT INTO `tb_book` VALUES (86, '大暑', '谢晓博', '海南医学院', '2022-03-12 02:46:28', 81, 1, '可乘之机');
INSERT INTO `tb_book` VALUES (87, '大寒', '赵明杰', '上海对外贸易学院', '2022-05-05 20:20:54', 72, 1, '脱颖而出');
INSERT INTO `tb_book` VALUES (88, '大寒', '史天翊', '中山大学', '2022-09-18 19:06:03', 100, 1, '深入人心');
INSERT INTO `tb_book` VALUES (89, '立夏', '郑志泽', '暨南大学', '2022-11-21 15:18:43', 1, 1, '明察暗访');
INSERT INTO `tb_book` VALUES (90, '白露', '宋懿轩', '天津理工大学', '2022-08-16 15:19:52', 1, 0, '不约而同');
INSERT INTO `tb_book` VALUES (91, '芒种', '谢楷瑞', '中山大学', '2022-06-23 06:59:34', 1, 1, '见义勇为');
INSERT INTO `tb_book` VALUES (92, '小寒', '贺梓晨', '南昌大学', '2022-01-23 04:01:11', 79, 0, '一模一样');
INSERT INTO `tb_book` VALUES (93, '谷雨', '于航', '南华大学', '2022-07-16 21:43:10', 70, 0, '理所当然');
INSERT INTO `tb_book` VALUES (94, '夏至', '邵懿轩', '桂林医学院', '2022-06-22 10:53:25', 100, 1, '归根结底');
INSERT INTO `tb_book` VALUES (95, '白露', '田懿轩', '武汉科技大学', '2022-10-09 00:02:02', 1, 0, '先发制人');
INSERT INTO `tb_book` VALUES (96, '小寒', '周煜城', '福州大学', '2022-07-23 02:19:15', 78, 0, '沸沸扬扬');
INSERT INTO `tb_book` VALUES (97, '立春', '钱伟诚', '中国计量学院', '2022-09-13 05:18:52', 25, 1, '根深蒂固');
INSERT INTO `tb_book` VALUES (98, '大寒', '周胤祥', '吉首大学', '2022-05-24 14:40:42', 33, 1, '行之有效');
INSERT INTO `tb_book` VALUES (99, '春分', '邵笑愚', '内蒙古农业大学', '2022-04-20 09:23:18', 72, 0, '先发制人');
INSERT INTO `tb_book` VALUES (100, '立冬', '彭立果', '上海音乐学院', '2022-04-10 18:54:29', 19, 0, '翻天覆地');

-- ----------------------------
-- Table structure for tb_lender
-- ----------------------------
DROP TABLE IF EXISTS `tb_lender`;
CREATE TABLE `tb_lender`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `sex` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '性别',
  `depno` bigint NOT NULL COMMENT '科别代号',
  `depname` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '科别名',
  `grade` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '年级',
  `class` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '班级',
  `telephone` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电话号码',
  `address` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '借阅人' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_lender
-- ----------------------------
INSERT INTO `tb_lender` VALUES (1, '吴耀杰', '男', 6, '计算机科学与技术', '20级', '软件工程01班', '18394445097', '海口');
INSERT INTO `tb_lender` VALUES (2, '段伟宸', '女', 6, '大数据科学与技术', '20级', '软件工程01班', '15053782693', '阳泉');
INSERT INTO `tb_lender` VALUES (3, '任雨泽', '女', 6, '软件工程', '20级', '软件工程01班', '15533576414', '合肥');
INSERT INTO `tb_lender` VALUES (4, '杜鹏飞', '男', 6, '计算机科学与技术', '20级', '软件工程01班', '15371591105', '鄂尔多斯');
INSERT INTO `tb_lender` VALUES (5, '苏钰轩', '男', 6, '计算机科学与技术', '20级', '软件工程01班', '17707216456', '丽水');
INSERT INTO `tb_lender` VALUES (6, '魏炫明', '女', 6, '大数据科学与技术', '20级', '软件工程01班', '17191324307', '胶州');
INSERT INTO `tb_lender` VALUES (7, '陶思淼', '女', 6, '软件工程', '20级', '软件工程01班', '15780443203', '桂林');
INSERT INTO `tb_lender` VALUES (8, '侯智宸', '女', 6, '软件工程', '20级', '软件工程01班', '17635269471', '三门峡');
INSERT INTO `tb_lender` VALUES (9, '江航', '男', 6, '大数据科学与技术', '20级', '软件工程01班', '15246570166', '蓬莱');
INSERT INTO `tb_lender` VALUES (10, '武浩', '男', 6, '计算机科学与技术', '20级', '软件工程01班', '17195632485', '海口');
INSERT INTO `tb_lender` VALUES (11, '曾浩宇', '男', 6, '计算机科学与技术', '20级', '软件工程01班', '15325378991', '深圳');
INSERT INTO `tb_lender` VALUES (12, '阎建辉', '女', 6, '大数据科学与技术', '20级', '软件工程01班', '17593852230', '安阳');
INSERT INTO `tb_lender` VALUES (13, '曾思淼', '男', 6, '软件工程', '20级', '软件工程01班', '17020234833', '锦州');
INSERT INTO `tb_lender` VALUES (14, '魏晋鹏', '男', 6, '计算机科学与技术', '20级', '软件工程01班', '15817755988', '阳江');
INSERT INTO `tb_lender` VALUES (15, '赖鸿煊', '男', 6, '计算机科学与技术', '20级', '软件工程01班', '13546444286', '莱芜');
INSERT INTO `tb_lender` VALUES (16, '石擎苍', '男', 6, '大数据科学与技术', '20级', '软件工程01班', '17638868786', '昆山');
INSERT INTO `tb_lender` VALUES (17, '龚聪健', '女', 6, '软件工程', '20级', '软件工程01班', '17087469590', '徐州');
INSERT INTO `tb_lender` VALUES (18, '万晓博', '女', 6, '大数据科学与技术', '20级', '软件工程01班', '14714467853', '包头');
INSERT INTO `tb_lender` VALUES (19, '韦鑫磊', '男', 6, '大数据科学与技术', '20级', '软件工程01班', '15070921307', '天津');
INSERT INTO `tb_lender` VALUES (20, '高远航', '男', 6, '软件工程', '20级', '软件工程01班', '14796250847', '德阳');
INSERT INTO `tb_lender` VALUES (21, '罗思', '男', 6, '大数据科学与技术', '20级', '软件工程01班', '15111499735', '临汾');
INSERT INTO `tb_lender` VALUES (22, '夏鑫鹏', '女', 6, '计算机科学与技术', '20级', '软件工程01班', '17769834712', '泉州');
INSERT INTO `tb_lender` VALUES (23, '邹远航', '女', 6, '大数据科学与技术', '20级', '软件工程01班', '17741087872', '齐齐哈尔');
INSERT INTO `tb_lender` VALUES (24, '袁绍齐', '女', 6, '大数据科学与技术', '20级', '软件工程01班', '17088993957', '深圳');
INSERT INTO `tb_lender` VALUES (25, '钟建辉', '女', 6, '大数据科学与技术', '20级', '软件工程01班', '17583809207', '江阴');
INSERT INTO `tb_lender` VALUES (26, '江志泽', '女', 6, '计算机科学与技术', '20级', '软件工程01班', '17010772599', '梅州');
INSERT INTO `tb_lender` VALUES (27, '罗雨泽', '女', 6, '大数据科学与技术', '20级', '软件工程01班', '17606648472', '金华');
INSERT INTO `tb_lender` VALUES (28, '江峻熙', '女', 6, '大数据科学与技术', '20级', '软件工程01班', '17861702624', '广州');
INSERT INTO `tb_lender` VALUES (29, '万天宇', '女', 6, '计算机科学与技术', '20级', '软件工程01班', '17569962429', '三亚');
INSERT INTO `tb_lender` VALUES (30, '邹立果', '女', 6, '计算机科学与技术', '20级', '软件工程01班', '15820151893', '日照');
INSERT INTO `tb_lender` VALUES (31, '孙烨伟', '女', 6, '大数据科学与技术', '20级', '软件工程01班', '15738989144', '乌鲁木齐');
INSERT INTO `tb_lender` VALUES (32, '许风华', '女', 6, '大数据科学与技术', '20级', '软件工程01班', '15571058754', '咸阳');
INSERT INTO `tb_lender` VALUES (33, '段鹏', '女', 6, '大数据科学与技术', '20级', '软件工程01班', '15637280677', '保定');
INSERT INTO `tb_lender` VALUES (34, '雷鹭洋', '男', 6, '大数据科学与技术', '20级', '软件工程01班', '15395638985', '丽水');
INSERT INTO `tb_lender` VALUES (35, '许楷瑞', '男', 6, '大数据科学与技术', '20级', '软件工程01班', '15738961160', '泰安');
INSERT INTO `tb_lender` VALUES (36, '周峻熙', '男', 6, '软件工程', '20级', '软件工程01班', '15574478114', '衡水');
INSERT INTO `tb_lender` VALUES (37, '朱鸿煊', '男', 6, '软件工程', '20级', '软件工程01班', '17644160179', '保定');
INSERT INTO `tb_lender` VALUES (38, '邵鹏煊', '男', 6, '大数据科学与技术', '20级', '软件工程01班', '15099114622', '石家庄');
INSERT INTO `tb_lender` VALUES (39, '孔立轩', '女', 6, '计算机科学与技术', '20级', '软件工程01班', '15988990218', '包头');
INSERT INTO `tb_lender` VALUES (40, '侯弘文', '女', 6, '软件工程', '20级', '软件工程01班', '15275604866', '南京');
INSERT INTO `tb_lender` VALUES (41, '侯立果', '男', 6, '大数据科学与技术', '20级', '软件工程01班', '15690130234', '丽水');
INSERT INTO `tb_lender` VALUES (42, '胡鸿煊', '女', 6, '软件工程', '20级', '软件工程01班', '17129827863', '锦州');
INSERT INTO `tb_lender` VALUES (43, '马立诚', '女', 6, '软件工程', '20级', '软件工程01班', '15160262330', '福州');
INSERT INTO `tb_lender` VALUES (44, '张思淼', '女', 6, '软件工程', '20级', '软件工程01班', '15225318764', '日照');
INSERT INTO `tb_lender` VALUES (45, '邵远航', '女', 6, '软件工程', '20级', '软件工程01班', '13767981731', '柳州');
INSERT INTO `tb_lender` VALUES (46, '曹浩然', '女', 6, '大数据科学与技术', '20级', '软件工程01班', '15747864478', '包头');
INSERT INTO `tb_lender` VALUES (47, '曾鹏', '女', 6, '软件工程', '20级', '软件工程01班', '17018517196', '齐齐哈尔');
INSERT INTO `tb_lender` VALUES (48, '任鹏', '女', 6, '计算机科学与技术', '20级', '软件工程01班', '17705737024', '惠州');
INSERT INTO `tb_lender` VALUES (49, '傅靖琪', '男', 6, '大数据科学与技术', '20级', '软件工程01班', '17047234255', '昆山');
INSERT INTO `tb_lender` VALUES (50, '谭子轩', '男', 6, '软件工程', '20级', '软件工程01班', '17151268371', '延安');
INSERT INTO `tb_lender` VALUES (51, '吴昊强', '男', 6, '软件工程', '20级', '软件工程01班', '15658271966', '东营');
INSERT INTO `tb_lender` VALUES (52, '杨雨泽', '女', 6, '大数据科学与技术', '20级', '软件工程01班', '17658098739', '招远');
INSERT INTO `tb_lender` VALUES (53, '蒋振家', '男', 6, '软件工程', '20级', '软件工程01班', '15206239465', '沈阳');
INSERT INTO `tb_lender` VALUES (54, '蒋哲瀚', '女', 6, '大数据科学与技术', '20级', '软件工程01班', '15626788597', '淮安');
INSERT INTO `tb_lender` VALUES (55, '傅文博', '男', 6, '大数据科学与技术', '20级', '软件工程01班', '15597280101', '海口');
INSERT INTO `tb_lender` VALUES (56, '魏哲瀚', '女', 6, '计算机科学与技术', '20级', '软件工程01班', '17883159654', '安阳');
INSERT INTO `tb_lender` VALUES (57, '谭熠彤', '男', 6, '计算机科学与技术', '20级', '软件工程01班', '15705474376', '攀枝花');
INSERT INTO `tb_lender` VALUES (58, '江明哲', '女', 6, '软件工程', '20级', '软件工程01班', '17873842572', '邢台');
INSERT INTO `tb_lender` VALUES (59, '龙鹤轩', '女', 6, '大数据科学与技术', '20级', '软件工程01班', '15053602717', '宝鸡');
INSERT INTO `tb_lender` VALUES (60, '汪立辉', '女', 6, '软件工程', '20级', '软件工程01班', '15805369852', '海门');
INSERT INTO `tb_lender` VALUES (61, '卢炎彬', '男', 6, '大数据科学与技术', '20级', '软件工程01班', '15751631270', '大同');
INSERT INTO `tb_lender` VALUES (62, '李浩然', '女', 6, '计算机科学与技术', '20级', '软件工程01班', '15907642857', '大庆');
INSERT INTO `tb_lender` VALUES (63, '黎擎宇', '男', 6, '大数据科学与技术', '20级', '软件工程01班', '14550987336', '荣成');
INSERT INTO `tb_lender` VALUES (64, '洪立辉', '男', 6, '大数据科学与技术', '20级', '软件工程01班', '17834736624', '文登');
INSERT INTO `tb_lender` VALUES (65, '江昊焱', '女', 6, '大数据科学与技术', '20级', '软件工程01班', '15658083537', '宜兴');
INSERT INTO `tb_lender` VALUES (66, '袁越彬', '男', 6, '软件工程', '20级', '软件工程01班', '15672568457', '延安');
INSERT INTO `tb_lender` VALUES (67, '何鸿煊', '男', 6, '计算机科学与技术', '20级', '软件工程01班', '17752269714', '北京');
INSERT INTO `tb_lender` VALUES (68, '江凯瑞', '女', 6, '大数据科学与技术', '20级', '软件工程01班', '14560293777', '肇庆');
INSERT INTO `tb_lender` VALUES (69, '石苑博', '女', 6, '计算机科学与技术', '20级', '软件工程01班', '14579312405', '三门峡');
INSERT INTO `tb_lender` VALUES (70, '秦梓晨', '男', 6, '大数据科学与技术', '20级', '软件工程01班', '15772541919', '沈阳');
INSERT INTO `tb_lender` VALUES (71, '覃烨霖', '男', 6, '计算机科学与技术', '20级', '软件工程01班', '17114487039', '西安');
INSERT INTO `tb_lender` VALUES (72, '潘伟诚', '男', 6, '大数据科学与技术', '20级', '软件工程01班', '15283232576', '三门峡');
INSERT INTO `tb_lender` VALUES (73, '夏钰轩', '女', 6, '软件工程', '20级', '软件工程01班', '13647083771', '淄博');
INSERT INTO `tb_lender` VALUES (74, '夏聪健', '女', 6, '软件工程', '20级', '软件工程01班', '15539605359', '桂林');
INSERT INTO `tb_lender` VALUES (75, '赖擎苍', '男', 6, '大数据科学与技术', '20级', '软件工程01班', '17101606041', '韶关');
INSERT INTO `tb_lender` VALUES (76, '龙建辉', '男', 6, '计算机科学与技术', '20级', '软件工程01班', '17299412384', '南充');
INSERT INTO `tb_lender` VALUES (77, '陈哲瀚', '女', 6, '软件工程', '20级', '软件工程01班', '17887269827', '张家界');
INSERT INTO `tb_lender` VALUES (78, '梁正豪', '男', 6, '软件工程', '20级', '软件工程01班', '15380213837', '张家口');
INSERT INTO `tb_lender` VALUES (79, '黎乐驹', '女', 6, '软件工程', '20级', '软件工程01班', '13337612149', '铜川');
INSERT INTO `tb_lender` VALUES (80, '傅烨磊', '男', 6, '软件工程', '20级', '软件工程01班', '17110352434', '临汾');
INSERT INTO `tb_lender` VALUES (81, '钟荣轩', '女', 6, '大数据科学与技术', '20级', '软件工程01班', '17379176697', '胶南');
INSERT INTO `tb_lender` VALUES (82, '刘鑫磊', '男', 6, '计算机科学与技术', '20级', '软件工程01班', '17724119023', '衡水');
INSERT INTO `tb_lender` VALUES (83, '韩立果', '女', 6, '计算机科学与技术', '20级', '软件工程01班', '15094509498', '常州');
INSERT INTO `tb_lender` VALUES (84, '谭鹏涛', '女', 6, '软件工程', '20级', '软件工程01班', '15746239759', '邯郸');
INSERT INTO `tb_lender` VALUES (85, '陶航', '男', 6, '计算机科学与技术', '20级', '软件工程01班', '15846230686', '克拉玛依');
INSERT INTO `tb_lender` VALUES (86, '余伟祺', '女', 6, '大数据科学与技术', '20级', '软件工程01班', '15193868079', '江门');
INSERT INTO `tb_lender` VALUES (87, '陶正豪', '女', 6, '大数据科学与技术', '20级', '软件工程01班', '15351403656', '句容');
INSERT INTO `tb_lender` VALUES (88, '钟锦程', '女', 6, '软件工程', '20级', '软件工程01班', '17134175837', '重庆');
INSERT INTO `tb_lender` VALUES (89, '金烨霖', '女', 6, '计算机科学与技术', '20级', '软件工程01班', '17594166896', '天津');
INSERT INTO `tb_lender` VALUES (90, '高浩宇', '男', 6, '软件工程', '20级', '软件工程01班', '13158172859', '金华');
INSERT INTO `tb_lender` VALUES (91, '钟泽洋', '男', 6, '软件工程', '20级', '软件工程01班', '18277854455', '郑州');
INSERT INTO `tb_lender` VALUES (92, '汪绍齐', '女', 6, '大数据科学与技术', '20级', '软件工程01班', '15907221842', '沈阳');
INSERT INTO `tb_lender` VALUES (93, '丁明辉', '男', 6, '大数据科学与技术', '20级', '软件工程01班', '15874707483', '张家港');
INSERT INTO `tb_lender` VALUES (94, '胡鑫鹏', '男', 6, '大数据科学与技术', '20级', '软件工程01班', '17373465053', '揭阳');
INSERT INTO `tb_lender` VALUES (95, '陆耀杰', '男', 6, '计算机科学与技术', '20级', '软件工程01班', '15702856309', '淄博');
INSERT INTO `tb_lender` VALUES (96, '武凯瑞', '女', 6, '软件工程', '20级', '软件工程01班', '17255017140', '兰州');
INSERT INTO `tb_lender` VALUES (97, '段思源', '男', 6, '计算机科学与技术', '20级', '软件工程01班', '14548620367', '揭阳');
INSERT INTO `tb_lender` VALUES (98, '傅健雄', '男', 6, '计算机科学与技术', '20级', '软件工程01班', '17836046765', '即墨');
INSERT INTO `tb_lender` VALUES (99, '赖博超', '女', 6, '软件工程', '20级', '软件工程01班', '17843704092', '潍坊');
INSERT INTO `tb_lender` VALUES (100, '刘明辉', '男', 6, '计算机科学与技术', '20级', '软件工程01班', '17756418615', '沈阳');

-- ----------------------------
-- Table structure for tb_lender_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_lender_info`;
CREATE TABLE `tb_lender_info`  (
  `lender_id` bigint NOT NULL COMMENT '借阅人id',
  `book_id` bigint NOT NULL COMMENT '借阅书籍id',
  `lend_data` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '借阅日期',
  `return_data` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '归还日期'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '借阅信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_lender_info
-- ----------------------------
INSERT INTO `tb_lender_info` VALUES (59, 1, '2022-10-27 00:47:52', '2022-04-23 18:33:21');
INSERT INTO `tb_lender_info` VALUES (1, 12, '2022-06-16 23:14:41', '2022-04-07 11:25:14');
INSERT INTO `tb_lender_info` VALUES (3, 58, '2022-06-24 18:43:16', '2022-12-28 17:20:59');
INSERT INTO `tb_lender_info` VALUES (100, 1, '2022-02-11 06:35:42', '2022-03-07 01:30:29');
INSERT INTO `tb_lender_info` VALUES (60, 1, '2022-02-11 23:53:59', '2022-06-08 02:02:57');
INSERT INTO `tb_lender_info` VALUES (12, 39, '2022-08-25 10:27:42', '2022-10-10 13:10:00');
INSERT INTO `tb_lender_info` VALUES (4, 5, '2022-08-02 16:06:44', '2022-03-06 08:45:32');
INSERT INTO `tb_lender_info` VALUES (54, 13, '2022-09-19 00:59:15', '2022-08-18 05:05:59');
INSERT INTO `tb_lender_info` VALUES (100, 4, '2022-05-13 15:46:10', '2022-04-04 19:27:41');
INSERT INTO `tb_lender_info` VALUES (100, 13, '2022-05-08 04:45:43', '2022-05-22 00:35:46');
INSERT INTO `tb_lender_info` VALUES (99, 1, '2022-05-12 19:38:08', '2022-11-19 06:05:19');
INSERT INTO `tb_lender_info` VALUES (1, 67, '2022-07-30 20:29:34', '2022-09-27 10:04:01');
INSERT INTO `tb_lender_info` VALUES (14, 35, '2022-03-04 04:12:34', '2022-10-16 10:43:32');
INSERT INTO `tb_lender_info` VALUES (1, 100, '2022-01-17 09:47:16', '2022-11-06 12:20:30');
INSERT INTO `tb_lender_info` VALUES (1, 87, '2022-04-27 14:21:02', '2022-09-03 19:54:02');
INSERT INTO `tb_lender_info` VALUES (13, 4, '2022-02-04 16:59:09', '2022-05-14 23:46:30');
INSERT INTO `tb_lender_info` VALUES (4, 1, '2022-01-30 20:43:29', '2022-05-10 02:51:16');
INSERT INTO `tb_lender_info` VALUES (10, 20, '2022-08-06 00:13:52', '2022-04-05 09:29:38');
INSERT INTO `tb_lender_info` VALUES (1, 26, '2022-12-02 18:59:03', '2022-08-22 03:35:57');
INSERT INTO `tb_lender_info` VALUES (10, 11, '2022-10-14 05:04:18', '2022-03-25 17:07:19');
INSERT INTO `tb_lender_info` VALUES (65, 1, '2022-09-16 08:47:55', '2022-07-13 05:38:46');
INSERT INTO `tb_lender_info` VALUES (6, 100, '2022-09-14 07:39:31', '2022-06-03 22:52:13');
INSERT INTO `tb_lender_info` VALUES (9, 100, '2022-08-02 07:03:41', '2022-06-30 05:14:46');
INSERT INTO `tb_lender_info` VALUES (55, 5, '2022-01-31 19:15:22', '2022-03-09 17:35:13');
INSERT INTO `tb_lender_info` VALUES (10, 3, '2022-12-01 06:58:41', '2022-07-21 10:40:22');
INSERT INTO `tb_lender_info` VALUES (6, 100, '2022-01-31 01:25:32', '2022-10-07 03:40:59');
INSERT INTO `tb_lender_info` VALUES (1, 100, '2022-11-24 12:48:22', '2022-10-21 21:48:09');
INSERT INTO `tb_lender_info` VALUES (3, 7, '2022-06-17 00:00:54', '2022-12-12 18:20:15');
INSERT INTO `tb_lender_info` VALUES (5, 1, '2022-01-16 19:26:07', '2022-06-29 15:31:01');
INSERT INTO `tb_lender_info` VALUES (3, 67, '2022-07-26 11:36:30', '2022-12-24 07:07:03');
INSERT INTO `tb_lender_info` VALUES (15, 1, '2022-06-07 04:47:53', '2022-03-03 15:18:47');
INSERT INTO `tb_lender_info` VALUES (1, 8, '2022-07-23 09:31:57', '2022-11-04 21:00:29');
INSERT INTO `tb_lender_info` VALUES (69, 100, '2022-05-01 17:36:14', '2022-02-03 14:26:25');
INSERT INTO `tb_lender_info` VALUES (9, 1, '2022-06-02 21:39:25', '2022-03-19 08:52:43');
INSERT INTO `tb_lender_info` VALUES (27, 5, '2022-06-13 17:37:19', '2022-09-11 17:50:24');
INSERT INTO `tb_lender_info` VALUES (19, 17, '2022-03-23 12:36:21', '2022-01-24 09:20:52');
INSERT INTO `tb_lender_info` VALUES (70, 1, '2022-06-03 01:23:09', '2022-03-02 17:51:12');
INSERT INTO `tb_lender_info` VALUES (63, 59, '2022-08-19 17:28:37', '2022-12-04 14:09:43');
INSERT INTO `tb_lender_info` VALUES (4, 60, '2022-09-23 06:30:21', '2022-07-12 20:21:38');
INSERT INTO `tb_lender_info` VALUES (6, 2, '2022-05-30 04:48:55', '2022-05-30 02:17:13');
INSERT INTO `tb_lender_info` VALUES (18, 53, '2022-05-06 08:59:35', '2022-01-29 14:29:39');
INSERT INTO `tb_lender_info` VALUES (3, 9, '2022-07-01 17:10:10', '2022-10-21 07:36:28');
INSERT INTO `tb_lender_info` VALUES (5, 33, '2022-12-22 19:46:28', '2022-05-01 21:43:41');
INSERT INTO `tb_lender_info` VALUES (3, 10, '2022-04-11 15:26:08', '2022-10-18 14:59:13');
INSERT INTO `tb_lender_info` VALUES (9, 1, '2022-05-07 14:14:24', '2022-12-26 12:56:41');
INSERT INTO `tb_lender_info` VALUES (1, 1, '2022-06-02 13:54:22', '2022-05-01 08:21:41');
INSERT INTO `tb_lender_info` VALUES (50, 15, '2022-02-26 16:10:39', '2022-01-01 07:25:12');
INSERT INTO `tb_lender_info` VALUES (65, 95, '2022-10-01 16:43:52', '2022-02-17 17:29:53');
INSERT INTO `tb_lender_info` VALUES (100, 66, '2022-09-13 01:33:59', '2022-10-04 08:30:51');
INSERT INTO `tb_lender_info` VALUES (84, 8, '2022-09-15 10:51:09', '2022-05-01 14:12:11');
INSERT INTO `tb_lender_info` VALUES (8, 45, '2022-01-15 00:32:10', '2022-02-11 21:30:25');
INSERT INTO `tb_lender_info` VALUES (21, 100, '2022-06-12 21:22:35', '2022-04-17 20:14:32');
INSERT INTO `tb_lender_info` VALUES (1, 10, '2022-08-01 05:03:44', '2022-06-20 17:27:37');
INSERT INTO `tb_lender_info` VALUES (7, 18, '2022-05-26 23:25:42', '2022-06-17 02:15:19');
INSERT INTO `tb_lender_info` VALUES (19, 6, '2022-05-01 09:34:13', '2022-02-02 04:14:29');
INSERT INTO `tb_lender_info` VALUES (100, 11, '2022-05-18 14:25:35', '2022-05-17 14:40:49');
INSERT INTO `tb_lender_info` VALUES (82, 45, '2022-09-27 19:31:13', '2022-04-08 02:41:52');
INSERT INTO `tb_lender_info` VALUES (4, 1, '2022-05-31 12:43:47', '2022-12-13 05:37:06');
INSERT INTO `tb_lender_info` VALUES (4, 10, '2022-03-17 11:00:38', '2022-07-06 13:27:52');
INSERT INTO `tb_lender_info` VALUES (1, 1, '2022-05-03 03:27:47', '2022-02-19 01:39:25');
INSERT INTO `tb_lender_info` VALUES (55, 23, '2022-01-26 16:55:02', '2022-03-22 02:17:01');
INSERT INTO `tb_lender_info` VALUES (2, 2, '2022-06-11 23:37:37', '2022-10-11 14:58:32');
INSERT INTO `tb_lender_info` VALUES (16, 63, '2022-11-16 11:03:44', '2022-06-06 23:15:07');
INSERT INTO `tb_lender_info` VALUES (74, 8, '2022-08-28 13:41:23', '2022-04-04 17:53:51');
INSERT INTO `tb_lender_info` VALUES (33, 83, '2022-03-20 17:13:25', '2022-07-03 16:58:14');
INSERT INTO `tb_lender_info` VALUES (10, 27, '2022-02-25 18:42:55', '2022-06-20 11:55:03');
INSERT INTO `tb_lender_info` VALUES (1, 22, '2022-05-25 19:07:12', '2022-12-22 07:23:58');
INSERT INTO `tb_lender_info` VALUES (58, 1, '2022-02-25 21:36:16', '2022-06-17 00:44:30');
INSERT INTO `tb_lender_info` VALUES (10, 100, '2022-07-10 18:15:21', '2022-06-30 04:51:16');
INSERT INTO `tb_lender_info` VALUES (10, 1, '2022-05-06 01:10:34', '2022-11-14 07:33:22');
INSERT INTO `tb_lender_info` VALUES (11, 1, '2022-06-29 06:37:24', '2022-01-22 14:58:01');
INSERT INTO `tb_lender_info` VALUES (2, 1, '2022-04-19 06:45:15', '2022-05-21 07:37:57');
INSERT INTO `tb_lender_info` VALUES (16, 20, '2022-09-01 19:36:20', '2022-06-26 19:47:33');
INSERT INTO `tb_lender_info` VALUES (26, 17, '2022-08-16 19:29:25', '2022-06-07 21:54:09');
INSERT INTO `tb_lender_info` VALUES (6, 33, '2022-11-19 01:49:06', '2022-03-27 17:15:27');
INSERT INTO `tb_lender_info` VALUES (98, 23, '2022-11-06 23:36:52', '2022-02-13 15:26:12');
INSERT INTO `tb_lender_info` VALUES (11, 2, '2022-07-05 00:47:21', '2022-01-22 21:16:37');
INSERT INTO `tb_lender_info` VALUES (37, 47, '2022-12-13 08:17:35', '2022-03-31 20:47:00');
INSERT INTO `tb_lender_info` VALUES (100, 65, '2022-07-21 11:28:36', '2022-05-11 09:33:09');
INSERT INTO `tb_lender_info` VALUES (14, 61, '2022-11-02 18:55:08', '2022-02-05 10:59:54');
INSERT INTO `tb_lender_info` VALUES (70, 3, '2022-05-25 21:31:07', '2022-01-23 22:08:45');
INSERT INTO `tb_lender_info` VALUES (100, 1, '2022-01-18 12:07:21', '2022-12-26 11:09:42');
INSERT INTO `tb_lender_info` VALUES (8, 16, '2022-12-07 23:33:21', '2022-06-09 05:13:48');
INSERT INTO `tb_lender_info` VALUES (1, 6, '2022-09-29 16:00:41', '2022-11-08 00:13:59');
INSERT INTO `tb_lender_info` VALUES (3, 78, '2022-12-25 18:37:30', '2022-11-16 08:53:45');
INSERT INTO `tb_lender_info` VALUES (10, 10, '2022-03-11 13:53:54', '2022-09-05 23:30:20');
INSERT INTO `tb_lender_info` VALUES (11, 11, '2022-03-10 03:57:19', '2022-11-08 13:48:22');
INSERT INTO `tb_lender_info` VALUES (1, 55, '2022-05-06 14:15:08', '2022-08-20 08:38:25');
INSERT INTO `tb_lender_info` VALUES (64, 16, '2022-04-16 17:16:49', '2022-07-02 16:21:42');
INSERT INTO `tb_lender_info` VALUES (1, 100, '2022-08-30 11:37:20', '2022-08-25 09:17:51');
INSERT INTO `tb_lender_info` VALUES (19, 18, '2022-03-11 18:40:41', '2022-01-15 09:09:07');
INSERT INTO `tb_lender_info` VALUES (80, 17, '2022-09-22 09:48:34', '2022-01-10 12:28:26');
INSERT INTO `tb_lender_info` VALUES (97, 1, '2022-11-27 00:24:26', '2022-07-21 08:51:06');
INSERT INTO `tb_lender_info` VALUES (9, 6, '2022-12-28 22:58:14', '2022-09-12 02:21:18');
INSERT INTO `tb_lender_info` VALUES (1, 91, '2022-08-02 18:36:08', '2022-09-22 00:33:01');
INSERT INTO `tb_lender_info` VALUES (1, 100, '2022-01-01 08:17:21', '2022-06-13 11:49:31');
INSERT INTO `tb_lender_info` VALUES (4, 6, '2022-04-17 02:06:06', '2022-01-06 16:44:12');
INSERT INTO `tb_lender_info` VALUES (17, 58, '2022-11-14 23:48:48', '2022-09-26 21:08:53');
INSERT INTO `tb_lender_info` VALUES (1, 1, '2022-12-07 16:51:32', '2022-10-02 09:11:24');
INSERT INTO `tb_lender_info` VALUES (11, 11, '2022-04-29 06:49:42', '2022-05-24 20:55:01');

-- ----------------------------
-- Table structure for ums_department_major_relation
-- ----------------------------
DROP TABLE IF EXISTS `ums_department_major_relation`;
CREATE TABLE `ums_department_major_relation`  (
  `department_id` bigint NOT NULL,
  `major_id` bigint NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '`bms_department_major_relation`' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_department_major_relation
-- ----------------------------
INSERT INTO `ums_department_major_relation` VALUES (1, 19);
INSERT INTO `ums_department_major_relation` VALUES (2, 2);
INSERT INTO `ums_department_major_relation` VALUES (4, 5);
INSERT INTO `ums_department_major_relation` VALUES (4, 13);
INSERT INTO `ums_department_major_relation` VALUES (1, 17);
INSERT INTO `ums_department_major_relation` VALUES (7, 7);
INSERT INTO `ums_department_major_relation` VALUES (3, 8);
INSERT INTO `ums_department_major_relation` VALUES (20, 6);
INSERT INTO `ums_department_major_relation` VALUES (7, 3);
INSERT INTO `ums_department_major_relation` VALUES (6, 0);
INSERT INTO `ums_department_major_relation` VALUES (9, 9);
INSERT INTO `ums_department_major_relation` VALUES (1, 4);
INSERT INTO `ums_department_major_relation` VALUES (1, 20);
INSERT INTO `ums_department_major_relation` VALUES (9, 10);
INSERT INTO `ums_department_major_relation` VALUES (7, 11);
INSERT INTO `ums_department_major_relation` VALUES (2, 1);
INSERT INTO `ums_department_major_relation` VALUES (9, 12);

-- ----------------------------
-- Table structure for ums_menu
-- ----------------------------
DROP TABLE IF EXISTS `ums_menu`;
CREATE TABLE `ums_menu`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '权限id',
  `menu_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单名',
  `grade` int NOT NULL COMMENT '菜单等级',
  `status` int NOT NULL COMMENT '是否启用（0正常， 1停用）',
  `parent_id` bigint NOT NULL COMMENT ' 菜单等级',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_menu
-- ----------------------------
INSERT INTO `ums_menu` VALUES (1, '书籍', 1, 0, 0);
INSERT INTO `ums_menu` VALUES (2, '用户', 1, 0, 0);
INSERT INTO `ums_menu` VALUES (3, '权限', 1, 0, 0);
INSERT INTO `ums_menu` VALUES (4, '书籍列表', 2, 1, 1);
INSERT INTO `ums_menu` VALUES (5, '书籍管理', 2, 0, 1);
INSERT INTO `ums_menu` VALUES (6, '用户列表', 2, 0, 2);
INSERT INTO `ums_menu` VALUES (7, '基本信息', 2, 0, 2);
INSERT INTO `ums_menu` VALUES (8, '收藏记录', 2, 0, 2);
INSERT INTO `ums_menu` VALUES (9, '借书记录', 2, 0, 2);
INSERT INTO `ums_menu` VALUES (10, '角色列表', 2, 0, 3);
INSERT INTO `ums_menu` VALUES (11, '权限列表', 2, 0, 3);
INSERT INTO `ums_menu` VALUES (12, '菜单列表', 2, 0, 3);

-- ----------------------------
-- Table structure for ums_menu_permission_relation
-- ----------------------------
DROP TABLE IF EXISTS `ums_menu_permission_relation`;
CREATE TABLE `ums_menu_permission_relation`  (
  `menu_id` bigint NOT NULL COMMENT '菜单id',
  `permission_id` bigint NOT NULL COMMENT '权限id'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_menu_permission_relation
-- ----------------------------
INSERT INTO `ums_menu_permission_relation` VALUES (1, 1);
INSERT INTO `ums_menu_permission_relation` VALUES (1, 2);
INSERT INTO `ums_menu_permission_relation` VALUES (1, 3);
INSERT INTO `ums_menu_permission_relation` VALUES (1, 4);

-- ----------------------------
-- Table structure for ums_permission
-- ----------------------------
DROP TABLE IF EXISTS `ums_permission`;
CREATE TABLE `ums_permission`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '权限id',
  `permission` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '权限',
  `status` int NOT NULL COMMENT '权限状态 （0：正常 1停用）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_permission
-- ----------------------------
INSERT INTO `ums_permission` VALUES (1, 'member:usercollection:detail', 0);
INSERT INTO `ums_permission` VALUES (2, 'member:usercollection:info', 0);
INSERT INTO `ums_permission` VALUES (3, 'member:usercollection:save', 0);
INSERT INTO `ums_permission` VALUES (4, 'member:usercollection:update', 0);

-- ----------------------------
-- Table structure for ums_role
-- ----------------------------
DROP TABLE IF EXISTS `ums_role`;
CREATE TABLE `ums_role`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色名',
  `role` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色关键字',
  `status` int NOT NULL COMMENT '是否启用（0正常， 1停用）',
  `describe` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述信息',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1600759004055568397 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_role
-- ----------------------------
INSERT INTO `ums_role` VALUES (1, 'admin', '超级管理员', 0, '能管理所有只能查看用户自己的功能');
INSERT INTO `ums_role` VALUES (2, 'user', '用户', 0, '只能查看用户自己的功能');
INSERT INTO `ums_role` VALUES (3, 'bookManager', '书籍管理员', 0, '只能管理书籍信息');
INSERT INTO `ums_role` VALUES (4, 'userManager', '用户管理员', 0, '只能管理用户信息');
INSERT INTO `ums_role` VALUES (5, 'authManager', '权限管理员', 0, '只能管理权限新');
INSERT INTO `ums_role` VALUES (6, 'purchase', '书籍采购员', 0, '只能查看管理采购书籍');
INSERT INTO `ums_role` VALUES (1600759004055568397, 'auth', '权限', 1, NULL);

-- ----------------------------
-- Table structure for ums_role_menu_relation
-- ----------------------------
DROP TABLE IF EXISTS `ums_role_menu_relation`;
CREATE TABLE `ums_role_menu_relation`  (
  `role_id` bigint NOT NULL COMMENT '角色id',
  `menu_id` bigint NOT NULL COMMENT '权限id'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_role_menu_relation
-- ----------------------------
INSERT INTO `ums_role_menu_relation` VALUES (12, 0);
INSERT INTO `ums_role_menu_relation` VALUES (2, 0);
INSERT INTO `ums_role_menu_relation` VALUES (2, 1);
INSERT INTO `ums_role_menu_relation` VALUES (1333, 4);
INSERT INTO `ums_role_menu_relation` VALUES (3333, 5);
INSERT INTO `ums_role_menu_relation` VALUES (1, 1);
INSERT INTO `ums_role_menu_relation` VALUES (1, 4);
INSERT INTO `ums_role_menu_relation` VALUES (1, 5);
INSERT INTO `ums_role_menu_relation` VALUES (1, 2);
INSERT INTO `ums_role_menu_relation` VALUES (1, 6);
INSERT INTO `ums_role_menu_relation` VALUES (1, 7);
INSERT INTO `ums_role_menu_relation` VALUES (1, 8);
INSERT INTO `ums_role_menu_relation` VALUES (1, 9);
INSERT INTO `ums_role_menu_relation` VALUES (1, 3);
INSERT INTO `ums_role_menu_relation` VALUES (1, 10);
INSERT INTO `ums_role_menu_relation` VALUES (1, 11);
INSERT INTO `ums_role_menu_relation` VALUES (1, 12);

-- ----------------------------
-- Table structure for ums_user
-- ----------------------------
DROP TABLE IF EXISTS `ums_user`;
CREATE TABLE `ums_user`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  `major_id` bigint NULL DEFAULT NULL COMMENT '专业id',
  `class_number` int NULL DEFAULT NULL COMMENT '班级',
  `sex` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '性别',
  `telephone` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '手机号',
  `remain` int NOT NULL COMMENT '剩余可以借书籍数量',
  `image` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户头像',
  `status` int NOT NULL COMMENT '用户状态： 0 可用 1 停用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1599740147547340821 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '借阅人信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_user
-- ----------------------------
INSERT INTO `ums_user` VALUES (1, 'admin', '$2a$10$M3b3MPsMGjO1dbDdoNNSleg.iWyx3IL2bVru5K6.zVH6pZC1d0zDa', 4, 6, '女', '13350464537', 20, 'https://img2.woyaogexing.com/2022/12/01/111d29f2190fb762df13c38163e47f7a.jpeg', 0);
INSERT INTO `ums_user` VALUES (2, '方锦程', '$2a$10$M3b3MPsMGjO1dbDdoNNSleg.iWyx3IL2bVru5K6.zVH6pZC1d0zDa', 0, 3, '女', '15237124219', 20, '', 0);
INSERT INTO `ums_user` VALUES (3, '王智宸', '$2a$10$M3b3MPsMGjO1dbDdoNNSleg.iWyx3IL2bVru5K6.zVH6pZC1d0zDa', 4, 4, '女', '15892548280', 20, NULL, 0);
INSERT INTO `ums_user` VALUES (4, '白泽洋', '$2a$10$M3b3MPsMGjO1dbDdoNNSleg.iWyx3IL2bVru5K6.zVH6pZC1d0zDa', 0, 3, '男', '15731023185', 20, NULL, 0);
INSERT INTO `ums_user` VALUES (5, '黎耀杰', '$2a$10$M3b3MPsMGjO1dbDdoNNSleg.iWyx3IL2bVru5K6.zVH6pZC1d0zDa', 6, 5, '男', '17145960024', 20, NULL, 0);
INSERT INTO `ums_user` VALUES (6, '赵志泽', '$2a$10$M3b3MPsMGjO1dbDdoNNSleg.iWyx3IL2bVru5K6.zVH6pZC1d0zDa', 6, 6, '女', '17383780223', 20, NULL, 0);
INSERT INTO `ums_user` VALUES (7, '阎健柏', '123456$2a$10$M3b3MPsMGjO1dbDdoNNSleg.iWyx3IL2bVru5K6.zVH6pZC1d0zDa', 20, 2, '女', '17722179738', 20, NULL, 0);
INSERT INTO `ums_user` VALUES (8, '陶思聪', '$2a$10$M3b3MPsMGjO1dbDdoNNSleg.iWyx3IL2bVru5K6.zVH6pZC1d0zDa', 1, 3, '男', '17715416895', 20, NULL, 0);
INSERT INTO `ums_user` VALUES (9, '赵晓啸', '$2a$10$M3b3MPsMGjO1dbDdoNNSleg.iWyx3IL2bVru5K6.zVH6pZC1d0zDa', 20, 1, '男', '17070339548', 20, NULL, 0);
INSERT INTO `ums_user` VALUES (10, '谭明轩', '$2a$10$M3b3MPsMGjO1dbDdoNNSleg.iWyx3IL2bVru5K6.zVH6pZC1d0zDa', 1, 6, '女', '17107130991', 20, NULL, 0);
INSERT INTO `ums_user` VALUES (11, '孙梓晨', '$2a$10$M3b3MPsMGjO1dbDdoNNSleg.iWyx3IL2bVru5K6.zVH6pZC1d0zDa', 3, 6, '男', '15321948653', 20, NULL, 0);
INSERT INTO `ums_user` VALUES (12, '马明哲', '$2a$10$M3b3MPsMGjO1dbDdoNNSleg.iWyx3IL2bVru5K6.zVH6pZC1d0zDa', 9, 6, '女', '17317367285', 20, NULL, 0);
INSERT INTO `ums_user` VALUES (13, '何擎宇', '$2a$10$M3b3MPsMGjO1dbDdoNNSleg.iWyx3IL2bVru5K6.zVH6pZC1d0zDa', 20, 3, '男', '17896544296', 20, NULL, 0);
INSERT INTO `ums_user` VALUES (14, '曾炫明', '$2a$10$M3b3MPsMGjO1dbDdoNNSleg.iWyx3IL2bVru5K6.zVH6pZC1d0zDa', 1, 4, '男', '15551098188', 20, NULL, 0);
INSERT INTO `ums_user` VALUES (15, '尹鸿涛', '$2a$10$M3b3MPsMGjO1dbDdoNNSleg.iWyx3IL2bVru5K6.zVH6pZC1d0zDa', 8, 4, '女', '17757734529', 20, NULL, 0);
INSERT INTO `ums_user` VALUES (16, '侯懿轩', '$2a$10$M3b3MPsMGjO1dbDdoNNSleg.iWyx3IL2bVru5K6.zVH6pZC1d0zDa', 20, 2, '男', '15740760253', 20, NULL, 0);
INSERT INTO `ums_user` VALUES (17, '王立轩', '$2a$10$M3b3MPsMGjO1dbDdoNNSleg.iWyx3IL2bVru5K6.zVH6pZC1d0zDa', 2, 2, '女', '15367986168', 20, NULL, 0);
INSERT INTO `ums_user` VALUES (18, '王志泽', '$2a$10$M3b3MPsMGjO1dbDdoNNSleg.iWyx3IL2bVru5K6.zVH6pZC1d0zDa', 0, 1, '女', '15171809389', 20, NULL, 0);
INSERT INTO `ums_user` VALUES (19, '陶智宸', '$2a$10$M3b3MPsMGjO1dbDdoNNSleg.iWyx3IL2bVru5K6.zVH6pZC1d0zDa', 0, 2, '男', '17344515343', 20, NULL, 0);
INSERT INTO `ums_user` VALUES (20, '唐旭尧', '$2a$10$M3b3MPsMGjO1dbDdoNNSleg.iWyx3IL2bVru5K6.zVH6pZC1d0zDa', 0, 1, '男', '17550067422', 20, NULL, 0);
INSERT INTO `ums_user` VALUES (1599740147547340805, 'admin1', '$2a$10$Y/KjKvqlmVwTXZGrw23gEeb.OFFnPeBrM0AAbE45jJ7vRIGPhEAVK', NULL, NULL, NULL, '13350464539', 20, NULL, 0);
INSERT INTO `ums_user` VALUES (1599740147547340819, 'admin3', '$2a$10$ZiuLf3dXlZIiimRmaHH7le816WeLseq./OWX1LahmM/tWa7lLo8Vm', NULL, NULL, NULL, '13350464531', 20, NULL, 0);
INSERT INTO `ums_user` VALUES (1599740147547340820, 'admin2', '$2a$10$VWKVwghdecM/ZLvGGQWVwe6Mp6k/fvEZkFgAybBA.88eeCVfv.Mpa', NULL, NULL, NULL, '13366666666', 20, NULL, 0);
INSERT INTO `ums_user` VALUES (1599740147547340821, 'admin4', '$2a$10$FLnQDYiyHmmt6ZNDhMh9YuQBs7.3ZwmiMBAPnvmhG9hhY8InIZzo.', NULL, NULL, NULL, '13350464529', 20, NULL, 0);

-- ----------------------------
-- Table structure for ums_user_collection
-- ----------------------------
DROP TABLE IF EXISTS `ums_user_collection`;
CREATE TABLE `ums_user_collection`  (
  `user_id` bigint NOT NULL COMMENT '用户id',
  `book_id` bigint NOT NULL COMMENT '书籍id'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户书籍收藏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_user_collection
-- ----------------------------
INSERT INTO `ums_user_collection` VALUES (9, 6);
INSERT INTO `ums_user_collection` VALUES (2, 20);
INSERT INTO `ums_user_collection` VALUES (3, 1);
INSERT INTO `ums_user_collection` VALUES (1, 4);
INSERT INTO `ums_user_collection` VALUES (0, 2);
INSERT INTO `ums_user_collection` VALUES (2, 0);
INSERT INTO `ums_user_collection` VALUES (4, 3);
INSERT INTO `ums_user_collection` VALUES (5, 2);
INSERT INTO `ums_user_collection` VALUES (4, 20);
INSERT INTO `ums_user_collection` VALUES (6, 20);
INSERT INTO `ums_user_collection` VALUES (0, 20);
INSERT INTO `ums_user_collection` VALUES (1, 3);
INSERT INTO `ums_user_collection` VALUES (8, 3);
INSERT INTO `ums_user_collection` VALUES (20, 8);
INSERT INTO `ums_user_collection` VALUES (4, 4);
INSERT INTO `ums_user_collection` VALUES (4, 1);
INSERT INTO `ums_user_collection` VALUES (3, 20);
INSERT INTO `ums_user_collection` VALUES (20, 0);
INSERT INTO `ums_user_collection` VALUES (1, 2);
INSERT INTO `ums_user_collection` VALUES (1, 2);
INSERT INTO `ums_user_collection` VALUES (1, 3);
INSERT INTO `ums_user_collection` VALUES (1, 1);

-- ----------------------------
-- Table structure for ums_user_department
-- ----------------------------
DROP TABLE IF EXISTS `ums_user_department`;
CREATE TABLE `ums_user_department`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '院系id',
  `department` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '院系',
  `status` int NOT NULL COMMENT '状态： 0 正常 1：停用',
  `describe` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '`bms_department`' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_user_department
-- ----------------------------
INSERT INTO `ums_user_department` VALUES (1, '北京邮电大学', 0, '这是北京邮电大学');
INSERT INTO `ums_user_department` VALUES (2, '山西医科大学', 0, NULL);
INSERT INTO `ums_user_department` VALUES (3, '上海工程技术大学', 0, NULL);
INSERT INTO `ums_user_department` VALUES (4, '海南医学院', 0, NULL);
INSERT INTO `ums_user_department` VALUES (5, '山西师范大学', 0, NULL);
INSERT INTO `ums_user_department` VALUES (6, '华中农业大学', 0, NULL);
INSERT INTO `ums_user_department` VALUES (7, '吉首大学', 0, NULL);
INSERT INTO `ums_user_department` VALUES (8, '广西工学院', 0, NULL);
INSERT INTO `ums_user_department` VALUES (9, '中南民族大学', 0, NULL);
INSERT INTO `ums_user_department` VALUES (10, '中南民族大学', 0, NULL);
INSERT INTO `ums_user_department` VALUES (11, '江西财经大学', 0, NULL);
INSERT INTO `ums_user_department` VALUES (12, '湖南科技大学', 0, NULL);
INSERT INTO `ums_user_department` VALUES (13, '湘潭大学', 0, NULL);
INSERT INTO `ums_user_department` VALUES (14, '重庆邮电学院', 0, NULL);
INSERT INTO `ums_user_department` VALUES (15, '华中师范大学', 0, NULL);
INSERT INTO `ums_user_department` VALUES (16, '集美大学', 0, NULL);
INSERT INTO `ums_user_department` VALUES (17, '南昌大学', 0, NULL);
INSERT INTO `ums_user_department` VALUES (18, '皖西学院', 0, NULL);
INSERT INTO `ums_user_department` VALUES (19, '上海交通大学', 0, NULL);
INSERT INTO `ums_user_department` VALUES (20, '中国科学技术大学', 0, NULL);

-- ----------------------------
-- Table structure for ums_user_major
-- ----------------------------
DROP TABLE IF EXISTS `ums_user_major`;
CREATE TABLE `ums_user_major`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '专业id',
  `major` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '专业',
  `status` int NOT NULL COMMENT '状态： 0 正常 1：停用',
  `describe` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '`bms_major`' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_user_major
-- ----------------------------
INSERT INTO `ums_user_major` VALUES (1, '计算机科学与技术', 0, NULL);
INSERT INTO `ums_user_major` VALUES (2, '计算机科学与技术', 0, NULL);
INSERT INTO `ums_user_major` VALUES (3, '计算机科学与技术', 0, NULL);
INSERT INTO `ums_user_major` VALUES (4, '大数据科学与技术', 0, NULL);
INSERT INTO `ums_user_major` VALUES (5, '大数据科学与技术', 0, NULL);
INSERT INTO `ums_user_major` VALUES (6, '大数据科学与技术', 0, NULL);
INSERT INTO `ums_user_major` VALUES (7, '大数据科学与技术', 0, NULL);
INSERT INTO `ums_user_major` VALUES (8, '软件工程', 0, NULL);
INSERT INTO `ums_user_major` VALUES (9, '大数据科学与技术', 0, NULL);
INSERT INTO `ums_user_major` VALUES (10, '大数据科学与技术', 0, NULL);
INSERT INTO `ums_user_major` VALUES (11, '软件工程', 0, NULL);
INSERT INTO `ums_user_major` VALUES (12, '大数据科学与技术', 0, NULL);
INSERT INTO `ums_user_major` VALUES (13, '软件工程', 0, NULL);
INSERT INTO `ums_user_major` VALUES (14, '大数据科学与技术', 0, NULL);
INSERT INTO `ums_user_major` VALUES (15, '计算机科学与技术', 0, NULL);
INSERT INTO `ums_user_major` VALUES (16, '大数据科学与技术', 0, NULL);
INSERT INTO `ums_user_major` VALUES (17, '计算机科学与技术', 0, NULL);
INSERT INTO `ums_user_major` VALUES (18, '大数据科学与技术', 0, NULL);
INSERT INTO `ums_user_major` VALUES (19, '大数据科学与技术', 0, '这是大数据科学与技术三所示');
INSERT INTO `ums_user_major` VALUES (20, '大数据科学与技术', 0, NULL);

-- ----------------------------
-- Table structure for ums_user_role_relation
-- ----------------------------
DROP TABLE IF EXISTS `ums_user_role_relation`;
CREATE TABLE `ums_user_role_relation`  (
  `user_id` bigint NOT NULL COMMENT '用户id',
  `role_id` bigint NOT NULL COMMENT '角色id'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_user_role_relation
-- ----------------------------
INSERT INTO `ums_user_role_relation` VALUES (10, 1);
INSERT INTO `ums_user_role_relation` VALUES (2, 2);
INSERT INTO `ums_user_role_relation` VALUES (5, 1);
INSERT INTO `ums_user_role_relation` VALUES (4, 2);
INSERT INTO `ums_user_role_relation` VALUES (1, 1);
INSERT INTO `ums_user_role_relation` VALUES (3, 2);
INSERT INTO `ums_user_role_relation` VALUES (5, 2);
INSERT INTO `ums_user_role_relation` VALUES (6, 1);
INSERT INTO `ums_user_role_relation` VALUES (0, 1);
INSERT INTO `ums_user_role_relation` VALUES (7, 1);
INSERT INTO `ums_user_role_relation` VALUES (1599672562973671426, 1);
INSERT INTO `ums_user_role_relation` VALUES (1599735377000493057, 1);
INSERT INTO `ums_user_role_relation` VALUES (1599736395956318209, 1);
INSERT INTO `ums_user_role_relation` VALUES (1599737198980984834, 1);
INSERT INTO `ums_user_role_relation` VALUES (1599739704406540289, 1);
INSERT INTO `ums_user_role_relation` VALUES (1599739825571594241, 1);
INSERT INTO `ums_user_role_relation` VALUES (1599740147547340802, 1);
INSERT INTO `ums_user_role_relation` VALUES (1599740147547340803, 2);
INSERT INTO `ums_user_role_relation` VALUES (1599740147547340804, 2);
INSERT INTO `ums_user_role_relation` VALUES (1599740147547340805, 2);
INSERT INTO `ums_user_role_relation` VALUES (1599740147547340806, 2);
INSERT INTO `ums_user_role_relation` VALUES (1599740147547340807, 2);
INSERT INTO `ums_user_role_relation` VALUES (1599740147547340808, 2);
INSERT INTO `ums_user_role_relation` VALUES (1599740147547340809, 2);
INSERT INTO `ums_user_role_relation` VALUES (1599740147547340810, 2);
INSERT INTO `ums_user_role_relation` VALUES (1599740147547340811, 2);
INSERT INTO `ums_user_role_relation` VALUES (1599740147547340812, 2);
INSERT INTO `ums_user_role_relation` VALUES (1599740147547340813, 2);
INSERT INTO `ums_user_role_relation` VALUES (1599740147547340814, 2);
INSERT INTO `ums_user_role_relation` VALUES (1599740147547340815, 2);
INSERT INTO `ums_user_role_relation` VALUES (1599740147547340816, 2);
INSERT INTO `ums_user_role_relation` VALUES (1599740147547340817, 2);
INSERT INTO `ums_user_role_relation` VALUES (1599740147547340818, 2);
INSERT INTO `ums_user_role_relation` VALUES (1599740147547340819, 2);
INSERT INTO `ums_user_role_relation` VALUES (1599740147547340820, 2);
INSERT INTO `ums_user_role_relation` VALUES (1599740147547340821, 2);

SET FOREIGN_KEY_CHECKS = 1;
