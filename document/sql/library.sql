/*
 Navicat MySQL Data Transfer

 Source Server         : where
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:3306
 Source Schema         : library

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 11/03/2023 12:32:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for book_type
-- ----------------------------
DROP TABLE IF EXISTS `book_type`;
CREATE TABLE `book_type`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '图书22类分类序号 ',
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '类型名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book_type
-- ----------------------------

-- ----------------------------
-- Table structure for lend_record
-- ----------------------------
DROP TABLE IF EXISTS `lend_record`;
CREATE TABLE `lend_record`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '借阅记录的id',
  `lender` int NOT NULL COMMENT '借阅人的id（外键）',
  `book` int NOT NULL COMMENT '节约的书籍id（外键）',
  `lend_time` datetime NOT NULL COMMENT '借出时间',
  `return_time` datetime NOT NULL COMMENT '归还时间（借出时间-归还时间 == 总的借书时间）',
  `state` int NOT NULL COMMENT '当前记录的状态（1 表示以归还， 0 表示未归还）',
  `final_stuation` int NOT NULL COMMENT '借阅的最终状态（即判断是否超时归还  1 表示正常   0 表示超时）',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_lender`(`lender`) USING BTREE,
  INDEX `fk_book`(`book`) USING BTREE,
  CONSTRAINT `fk_book` FOREIGN KEY (`book`) REFERENCES `tbl_book` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_lender` FOREIGN KEY (`lender`) REFERENCES `tbl_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lend_record
-- ----------------------------

-- ----------------------------
-- Table structure for major
-- ----------------------------
DROP TABLE IF EXISTS `major`;
CREATE TABLE `major`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '专业大类的id序号',
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '专业大类名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of major
-- ----------------------------
INSERT INTO `major` VALUES (1, '哲学');
INSERT INTO `major` VALUES (2, '经济学');
INSERT INTO `major` VALUES (3, '法学');
INSERT INTO `major` VALUES (4, '教育学');

-- ----------------------------
-- Table structure for reserve_record
-- ----------------------------
DROP TABLE IF EXISTS `reserve_record`;
CREATE TABLE `reserve_record`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '预约座位的id',
  `reservation` int NOT NULL COMMENT '预约人',
  `reserve_time` datetime NOT NULL COMMENT '预约时间',
  `leave_time` datetime NOT NULL COMMENT '离开时间',
  `state` int NOT NULL COMMENT '预约的状态（1预约成功  0 预约超时）',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX ` fk_reserver`(`reservation`) USING BTREE,
  CONSTRAINT ` fk_reserver` FOREIGN KEY (`reservation`) REFERENCES `tbl_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reserve_record
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_book
-- ----------------------------
DROP TABLE IF EXISTS `tbl_book`;
CREATE TABLE `tbl_book`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '图书的id',
  `ISBN` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '图书的专属标识',
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '书名',
  `author` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '作者',
  `pulish` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '出版社',
  `image_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '图书图片名',
  `state` int UNSIGNED NOT NULL COMMENT '图书是否有剩余（“1”表示有，“2”表示全部借出）',
  `count` int UNSIGNED NOT NULL COMMENT '同一ISBN的书籍数量',
  `localtion` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '图书位置描述',
  `describe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '图书的内容介绍（描述）',
  `classfy_major` int NOT NULL COMMENT '按照专业分类',
  `classfy_type` int NOT NULL COMMENT '按照图书类型分类',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_type`(`classfy_type`) USING BTREE,
  INDEX `fk_book_major`(`classfy_major`) USING BTREE,
  CONSTRAINT `fk_book_major` FOREIGN KEY (`classfy_major`) REFERENCES `major` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_type` FOREIGN KEY (`classfy_type`) REFERENCES `book_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_book
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_purchase_book
-- ----------------------------
DROP TABLE IF EXISTS `tbl_purchase_book`;
CREATE TABLE `tbl_purchase_book`  (
  `id` int NOT NULL COMMENT '购书单的id',
  `book` int NOT NULL COMMENT '图书id（确定图书信息）',
  `amount` int NOT NULL COMMENT '购买书籍数量',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_purchase_book`(`book`) USING BTREE,
  CONSTRAINT `fk_purchase_book` FOREIGN KEY (`book`) REFERENCES `tbl_book` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_purchase_book
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '用户的id',
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户密码',
  `major` int NOT NULL COMMENT '用户的专业',
  `lend_amount` int NOT NULL COMMENT '允许借阅图书的数量（默认值为5）',
  `lent_amount` int NOT NULL COMMENT '用户已经借出图书的数量（总的 - 已经借的 == 剩余借阅量）',
  `state` int NOT NULL COMMENT '用户的当前状态（1 表示在线， 0 表示离线）',
  `seat_state` int NOT NULL COMMENT '座位预约状态（1 表示已预约， 0 表示未预约）-- 一个人只能预约一次',
  `lent_record` int NOT NULL COMMENT '图书借阅历史记录（外键）',
  `seat_record` int NOT NULL COMMENT '座位预约/归还记录（外键）',
  `authority` int NOT NULL COMMENT '用户权限（1 表示管理员， 0 表示普通用户）',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_user_major`(`major`) USING BTREE,
  CONSTRAINT `fk_user_major` FOREIGN KEY (`major`) REFERENCES `major` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
