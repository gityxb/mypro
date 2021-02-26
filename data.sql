/*
 Navicat Premium Data Transfer

 Source Server         : yxb
 Source Server Type    : MySQL
 Source Server Version : 50714
 Source Host           : localhost:3306
 Source Schema         : bishe

 Target Server Type    : MySQL
 Target Server Version : 50714
 File Encoding         : 65001

 Date: 24/04/2020 15:32:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_activity
-- ----------------------------
DROP TABLE IF EXISTS `tb_activity`;
CREATE TABLE `tb_activity`  (
  `id` int(255) NOT NULL AUTO_INCREMENT COMMENT '活动id',
  `category_id` int(11) NOT NULL COMMENT '活动类型',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '活动简介',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '活动名称',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '活动地点',
  `count` int(11) NOT NULL COMMENT '当前人数',
  `max_count` int(11) NOT NULL COMMENT '最多人数限制',
  `min_count` int(11) NOT NULL COMMENT '最少拼团人数',
  `start_time` datetime(0) NOT NULL COMMENT '报名开始时间',
  `end_time` datetime(0) NOT NULL COMMENT '结束时间',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '联系方式',
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '审核状态',
  `cash` int(11) NOT NULL COMMENT '押金',
  `picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '活动封面图',
  `go_time` datetime(0) NULL DEFAULT NULL COMMENT '出发时间',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `collection_site` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '集合地点',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_activity
-- ----------------------------
INSERT INTO `tb_activity` VALUES (7, 3, '真人CS是各种喜欢军事及户外运动的人大家聚集在一起的一种军事模拟类真人户外竞技运动。使用模拟类游戏战术发射器（BB弹、水弹、彩弹、激光等各类对抗发射器器械）身着战术装备以及各种款式的军装、护具，进行的模拟军队作战训练的一种游戏，也是国际上风行的wargame（野战游戏）', '真人css', '广东省广州市荔湾区逢源路151号盛悦广场负一层', 4, 8, 4, '2020-04-15 08:00:00', '2020-05-20 08:00:00', '可爱', 'false', 0, 'https://qingchengdianyxb.oss-cn-shenzhen.aliyuncs.com/activityPic/4613f183-a8d9-4633-870d-abb441a7eaab', '2020-05-21 00:00:00', '2020-04-12 17:13:28', '出发当天下午5:00华软大榕树下集合');
INSERT INTO `tb_activity` VALUES (8, 2, '泰国泼水节除可游览泰国大皇宫、玉佛寺、芭堤雅等当地特色景点之外,还可在泼水节期间前往芭堤雅大象园等地方参与泼水活动,赠送水枪', '泼水party', '曼谷 曼谷最繁华的商业圈就是暹罗商区', 2, 7, 3, '2020-03-21 08:00:00', '2020-05-05 08:00:00', '可爱', 'true', 0, 'https://qingchengdianyxb.oss-cn-shenzhen.aliyuncs.com/activityPic/8e75a52e-40d5-4803-8130-f1c768d9dffc', '2020-05-06 00:00:00', '2020-04-12 17:13:29', '出发当天下午5:00华软大榕树下集合');
INSERT INTO `tb_activity` VALUES (9, 1, '“珠江新城,位居广州天河、越秀及海珠三区的交接处,是广州新城区的中心地带。也是一个国际金融、贸易、商业、文娱、外事、行政和居住区', '珠江游', '珠江新城,位居广州天河、越秀及海珠三区的交接处', 1, 4, 3, '2020-03-18 08:00:00', '2020-05-18 08:00:00', '可爱', 'true', 0, 'https://qingchengdianyxb.oss-cn-shenzhen.aliyuncs.com/activityPic/11e28585-75e6-491c-8377-9ea1f94a1728', '2020-05-18 00:00:00', '2020-04-12 17:13:29', '出发当天下午5:00华软大榕树下集合');
INSERT INTO `tb_activity` VALUES (10, 1, '提供全球各地温泉旅游及泡温泉注意事项,包括国内、国外温泉酒店、温泉度假村。最好的温泉旅游服务就在新浪旅游频道', '从化温泉', '广州市从化区温泉镇', 0, 5, 3, '2020-03-15 08:00:00', '2020-05-19 08:00:00', '可爱', 'true', 0, 'https://qingchengdianyxb.oss-cn-shenzhen.aliyuncs.com/activityPic/e46a85a4-1e84-4fbf-a40b-ec2adb38ab1a', '2020-05-20 00:00:00', '2020-04-12 17:13:30', '出发当天下午5:00华软大榕树下集合');
INSERT INTO `tb_activity` VALUES (11, 4, '长隆欢乐世界是长隆集团耗资逾10亿打造的新一代顶级游乐园,首期占地面积1000亩,仅游乐设施近70套,是目前国内设备最先进、科技含量最高、游乐设备最多', '长隆欢乐世界', '广州市番禺区长隆', 0, 8, 3, '2020-03-23 08:00:00', '2020-05-26 08:00:00', '可爱', '0', 0, 'https://qingchengdianyxb.oss-cn-shenzhen.aliyuncs.com/activityPic/25c37a69-56fd-47c6-9e3c-2d7702665e5d', '2020-05-27 00:00:00', '2020-04-12 17:13:32', '出发当天下午5:00华软大榕树下集合');
INSERT INTO `tb_activity` VALUES (12, 7, '如何搭建分布式系统，处理高并发带来的问题，整个探讨会将对分布式开发模式技术进行探讨与分享', 'java分布式探讨会', '华软', 4, 10, 3, '2020-04-12 08:00:00', '2020-05-30 08:00:00', 'admin', 'true', 0, 'https://qingchengdianyxb.oss-cn-shenzhen.aliyuncs.com/activityPic/d20eb7b6-4c83-449d-9bfb-414764aa4e53', '2020-05-31 00:00:00', '2020-04-12 18:06:14', '当晚8:00今非昔比二楼');
INSERT INTO `tb_activity` VALUES (13, 1, '从化志愿者xxxxxxxxxx', '志愿者', '从化xxxx', 1, 10, 3, '2020-04-16 08:00:00', '2020-05-14 08:00:00', 'admin', 'true', 0, 'https://qingchengdianyxb.oss-cn-shenzhen.aliyuncs.com/activityPic/a6677542-ec6c-497d-a3d7-47bc1388363a', '2020-05-20 00:00:00', '2020-04-13 20:51:31', '华软大榕树下');

-- ----------------------------
-- Table structure for tb_activity_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_activity_user`;
CREATE TABLE `tb_activity_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户活动表id',
  `activity_id` int(11) NOT NULL COMMENT '活动id',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户id',
  `is_pay` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '1' COMMENT '是否已交押金(1已交，0未交)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_activity_user
-- ----------------------------
INSERT INTO `tb_activity_user` VALUES (22, 7, 'pig', '1');
INSERT INTO `tb_activity_user` VALUES (23, 7, '可爱', '1');
INSERT INTO `tb_activity_user` VALUES (24, 8, 'pig', '1');
INSERT INTO `tb_activity_user` VALUES (26, 7, 'admin', '1');
INSERT INTO `tb_activity_user` VALUES (27, 8, 'admin', '1');
INSERT INTO `tb_activity_user` VALUES (31, 12, 'admin', '1');
INSERT INTO `tb_activity_user` VALUES (32, 9, 'admin', '1');

-- ----------------------------
-- Table structure for tb_category
-- ----------------------------
DROP TABLE IF EXISTS `tb_category`;
CREATE TABLE `tb_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pid` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_category
-- ----------------------------
INSERT INTO `tb_category` VALUES (1, '周边游', 0);
INSERT INTO `tb_category` VALUES (2, '节日活动', 0);
INSERT INTO `tb_category` VALUES (3, '刺激游玩', 0);
INSERT INTO `tb_category` VALUES (4, '一起更便宜', 0);
INSERT INTO `tb_category` VALUES (5, '竞技活动', 0);
INSERT INTO `tb_category` VALUES (7, '技术讨论', 0);

-- ----------------------------
-- Table structure for tb_comment
-- ----------------------------
DROP TABLE IF EXISTS `tb_comment`;
CREATE TABLE `tb_comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '活动评论id',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评论内容',
  `comment_pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '活动图片',
  `activity_id` int(11) NULL DEFAULT NULL COMMENT '活动id',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户id',
  `pid` int(11) NULL DEFAULT NULL COMMENT '父id',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_comment
-- ----------------------------
INSERT INTO `tb_comment` VALUES (32, 'cs真好玩', NULL, 7, '可爱', 0, '2020-03-15 23:38:27');
INSERT INTO `tb_comment` VALUES (35, '这边的泼水节还真好玩', NULL, 10, 'admin', 0, '2020-04-01 22:24:53');
INSERT INTO `tb_comment` VALUES (36, '这边的温泉还OK啊', NULL, 10, 'admin', 0, '2020-04-01 22:25:56');
INSERT INTO `tb_comment` VALUES (37, '这边的水真是爽啊', NULL, 8, 'pig', 0, '2020-04-04 14:40:23');
INSERT INTO `tb_comment` VALUES (38, '珠江这边环境可以呀', NULL, 9, 'pig', 0, '2020-04-04 14:41:17');
INSERT INTO `tb_comment` VALUES (39, '是啊', NULL, 8, 'admin', 37, '2020-04-04 14:47:00');
INSERT INTO `tb_comment` VALUES (45, '呵呵', NULL, 8, 'admin', 0, '2020-04-12 18:14:21');
INSERT INTO `tb_comment` VALUES (46, 'xxx', NULL, 9, 'admin', 38, '2020-04-13 20:46:18');
INSERT INTO `tb_comment` VALUES (47, 'xxxx', NULL, 13, 'admin', 0, '2020-04-13 20:52:14');

-- ----------------------------
-- Table structure for tb_message
-- ----------------------------
DROP TABLE IF EXISTS `tb_message`;
CREATE TABLE `tb_message`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `message` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '插入时间\r\n' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_message
-- ----------------------------
INSERT INTO `tb_message` VALUES (5, '可爱', '<p><span style=\"background-color: rgb(255, 255, 0);\">萨法</span><strong style=\"background-color: rgb(255, 255, 0);\"><em>撒的撒旦法</em></strong></p>', '2020-03-15 23:40:35', '哈啊哈', '1');
INSERT INTO `tb_message` VALUES (6, '可爱', '<p><span style=\"background-color: rgb(255, 194, 102);\">撒旦法撒旦法</span></p>', '2020-03-15 23:45:47', '萨芬的', '1');
INSERT INTO `tb_message` VALUES (7, 'admin', '<p><img src=\"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0aHBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDL/2wBDAQkJCQwLDBgNDRgyIRwhMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjL/wAARCAF3AfQDASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD32iiikIKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigA4PBrmPCOsPdyanpNy5a5025aMMx5ePJ2n8On4CunryvQL7yvi9qCofkuJZom98DI/VayqT5ZR8zvwlBVqVVdlf7v+Bc9UooorU4AooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigCG8uo7GynupmCxwxtIxPoBmvF/Ahkv8Ax/b3LZ3M007e2Qf8RXU/E/xEsNouhW75lmw9xj+FOy/Un9B71V+FGlsZb7VnX5QBbxE+vVv6VyVJc9aMV0PoMJS+r5fUrT3mrL8v1PT6KKK6z58KKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigArnfFviu38NWGRtlvpQRBBn/wAePooqv4t8a2nhyIwQ7bjUWHyw54T/AGn9B7dTXjN9e3WpXsl5eTNPcSn5mPf0AHYegrlr4hQ92O57eWZVKu1Vqq0Pz/4BLFHfa7q6oC099eS8s3dj3PoB/IV75oulQ6Jo9tp8HKwrgt/ebqT+JzXMeAPCJ0W2/tK+jxqE64VD/wAsUPb/AHj3/Ku2p4ak4LmluxZxjo15qjT+GP4v/JdAooorpPFCimrLGzsiupdfvKDkj606gAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiimTTxW0DzTyLHEilmdjgKPU0DSvoh/SvOvF3xFS3Mmn6E6yT8rJdjlU9l9T79B71heMPH0+sl7DS2eHT+jyDh5/wDBfbvXHWtrNeXEVtawvLNIdqRoOTXDWxP2aZ9Nl2TqK9tifu/z/wAvvGszyys8jPLLI2SzfMzE/wAzXqXgbwKbIx6tq8X+lfegt2/5Zf7Tf7Xt2+tX/CHgODRNl9qGyfUeqjqkP09T7/lXaVVDD296e5jmeb86dHD7dX38l5BUVxcwWkDT3MyQxKMs8jAAfjXG+JviLZaSz2mmql5eLwzZ/dRn3I6n2FefwxeIfHmq7Gle4KnLM/ywwA+w4H06mtJ4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\"></p>', '2020-04-12 18:47:11', 'xxx', '0');
INSERT INTO `tb_message` VALUES (8, 'admin', '<p>xxxx</p>', '2020-04-13 20:59:53', '留言测试', '1');

-- ----------------------------
-- Table structure for tb_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_role`;
CREATE TABLE `tb_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `power` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_role
-- ----------------------------
INSERT INTO `tb_role` VALUES (1, '管理员', 2);
INSERT INTO `tb_role` VALUES (2, '普通用户', 1);
INSERT INTO `tb_role` VALUES (3, '超级管理员', 3);

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机号码',
  `created_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `nick_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `user_level` int(11) UNSIGNED NOT NULL DEFAULT 1 COMMENT '用户等级',
  `points` int(11) UNSIGNED NOT NULL DEFAULT 1 COMMENT '积分',
  `sex` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别(1男，0女)',
  `head_pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '使用状态（1正常 0禁用）',
  `is_mobile_check` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否使用手机验证（1支持，0禁用）',
  `role_id` int(11) NULL DEFAULT 1 COMMENT '用户角色',
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES (14, '可爱', '18312329844', '2020-04-12 15:34:37', '可爱多', 1, 1, '1', 'https://qingchengdianyxb.oss-cn-shenzhen.aliyuncs.com/headPic/24dfb32c-0791-48ef-b427-f2bedba7edd9', 'e10adc3949ba59abbe56e057f20f883e', '315522069@qq.com', '1', '1', 2);
INSERT INTO `tb_user` VALUES (23, 'admin', '18312329843', '2020-04-12 19:01:30', 'SuperStar', 1, 1, '1', 'https://qingchengdianyxb.oss-cn-shenzhen.aliyuncs.com/headPic/64d282d0-2d48-405f-bf56-bcd60f4dcdc2', 'e10adc3949ba59abbe56e057f20f883e', '315522069@qq.com', '1', '1', 3);
INSERT INTO `tb_user` VALUES (24, 'clean', '18312329845', '2020-04-12 15:34:39', '卡哇伊', 1, 1, '0', 'https://qingchengdianyxb.oss-cn-shenzhen.aliyuncs.com/headPic/33413cf5-814e-400b-87cd-a303e500c4e8', 'e10adc3949ba59abbe56e057f20f883e', '315522069@qq.com', '1', '1', 1);
INSERT INTO `tb_user` VALUES (25, 'pig', '18312329846', '2020-04-12 15:34:42', '小猪', 1, 1, '1', 'https://qingchengdianyxb.oss-cn-shenzhen.aliyuncs.com/headPic/92003dab-9932-492c-b085-e50e2cb4afb2', 'e10adc3949ba59abbe56e057f20f883e', '415464646@qq.com', '1', '1', 1);
INSERT INTO `tb_user` VALUES (26, 'bird', '18312329847', '2020-04-12 15:34:45', '小鸟', 1, 1, '1', 'https://qingchengdianyxb.oss-cn-shenzhen.aliyuncs.com/headPic/7fb9acaa-64b3-4584-bf7f-6a1d0e2d1085', 'e10adc3949ba59abbe56e057f20f883e', '544a6@qq.com', '1', '1', 1);
INSERT INTO `tb_user` VALUES (27, '小星型', '18312329848', '2020-04-12 15:34:49', 'star', 1, 1, '1', 'https://qingchengdianyxb.oss-cn-shenzhen.aliyuncs.com/headPic/f01d5c9c-ed0a-44a3-aa91-4274cc38a75b', 'e10adc3949ba59abbe56e057f20f883e', '46646@qq.com', '1', '1', 1);

SET FOREIGN_KEY_CHECKS = 1;
