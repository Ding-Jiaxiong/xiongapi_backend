/*
 Navicat Premium Data Transfer

 Source Server         : 本机MySQL
 Source Server Type    : MySQL
 Source Server Version : 80036
 Source Host           : localhost:3306
 Source Schema         : xiongapi

 Target Server Type    : MySQL
 Target Server Version : 80036
 File Encoding         : 65001

 Date: 04/07/2024 19:42:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for interface_info
-- ----------------------------
DROP TABLE IF EXISTS `interface_info`;
CREATE TABLE `interface_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '名称',
  `description` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `url` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '接口地址',
  `requestParams` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '请求参数',
  `requestHeader` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '请求头',
  `responseHeader` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '响应头',
  `status` int NOT NULL DEFAULT 0 COMMENT '接口状态(0-关闭，1-开启)',
  `method` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '请求类型',
  `userId` bigint NOT NULL COMMENT '创建人',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `isDelete` tinyint NOT NULL DEFAULT 0 COMMENT '是否删除(0-未删，1-已删)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '接口信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of interface_info
-- ----------------------------
INSERT INTO `interface_info` VALUES (1, 'getUsernameByPost', '获取用户名', 'http://localhost:8123/api/name/user', '[\n  {\n    \"name\": \"username\",\n\"type\" : \"string\"\n  }\n]', '{\"Content-Type\": \"application/json\"}', '{\"Content-Type\": \"application/json\"}', 1, 'POST', 1, '2024-07-04 10:08:18', '2024-07-04 10:45:43', 0);
INSERT INTO `interface_info` VALUES (2, '唐智宸', '东北科技大学', 'www.barney-borer.org', '', '南充', '谢昊焱', 0, '萧熠彤', 4165, '2024-07-02 11:51:15', '2024-07-02 17:15:44', 0);
INSERT INTO `interface_info` VALUES (3, '夏昊然', '东经贸大学', 'www.mireya-lynch.co', '', '宁波', '段瑾瑜', 0, '姚烨华', 4, '2024-07-02 11:51:15', '2024-07-02 11:51:15', 0);
INSERT INTO `interface_info` VALUES (4, '贾峻熙', '东经贸大学', 'www.lazaro-hickle.io', '', '珠海', '李煜城', 0, '姚琪', 907094, '2024-07-02 11:51:15', '2024-07-02 11:51:15', 0);
INSERT INTO `interface_info` VALUES (5, '邱博文', '东杯大学', 'www.meghann-baumbach.com', '', '苏州', '王乐驹', 0, '郭子轩', 7615434, '2024-07-02 11:51:15', '2024-07-02 17:22:40', 0);
INSERT INTO `interface_info` VALUES (6, '秦文博', '北理工大学', 'www.nathalie-koch.info', '', '攀枝花', '夏烨华', 0, '沈远航', 191379877, '2024-07-02 11:51:15', '2024-07-02 11:51:15', 0);
INSERT INTO `interface_info` VALUES (7, '刘思', '西北艺术大学', 'www.del-bogisich.co', '', '荣成', '许炎彬', 0, '任伟诚', 0, '2024-07-02 11:51:15', '2024-07-02 11:51:15', 0);
INSERT INTO `interface_info` VALUES (8, '彭明辉', '南科技大学', 'www.palma-dare.com', '', '拉萨', '邹潇然', 0, '丁哲瀚', 83649, '2024-07-02 11:51:15', '2024-07-02 11:51:15', 0);
INSERT INTO `interface_info` VALUES (9, '曾修杰', '西北农业大学', 'www.kaitlyn-hermiston.biz', '', '沧州', '莫浩然', 0, '尹峻熙', 6, '2024-07-02 11:51:15', '2024-07-02 11:51:15', 0);
INSERT INTO `interface_info` VALUES (10, '萧金鑫', '山西大学', 'www.leeanne-little.co', '', '南宁', '贾聪健', 0, '薛子骞', 4539789735, '2024-07-02 11:51:15', '2024-07-02 17:23:20', 0);
INSERT INTO `interface_info` VALUES (11, '姚伟泽', '东北科技大学', 'www.normand-baumbach.name', '', '锦州', '方子骞', 0, '马潇然', 71, '2024-07-02 11:51:15', '2024-07-02 11:51:15', 0);
INSERT INTO `interface_info` VALUES (12, '曹鸿煊', '西北农业大学', 'www.noble-stark.name', '', '大庆', '邓钰轩', 0, '赵浩', 9, '2024-07-02 11:51:15', '2024-07-02 11:51:15', 0);
INSERT INTO `interface_info` VALUES (13, '曾子涵', '东北体育大学', 'www.georgia-shanahan.io', '', '昆山', '贾哲瀚', 0, '萧哲瀚', 51, '2024-07-02 11:51:15', '2024-07-02 11:51:15', 0);
INSERT INTO `interface_info` VALUES (14, '吕雨泽', '西体育大学', 'www.christian-pfeffer.com', '', '乳山', '任瑞霖', 0, '段思源', 153, '2024-07-02 11:51:15', '2024-07-02 11:51:15', 0);
INSERT INTO `interface_info` VALUES (15, '崔昊天', '中国经贸大学', 'www.kathline-feest.info', '', '肇庆', '段明', 0, '夏锦程', 6389, '2024-07-02 11:51:15', '2024-07-02 17:22:24', 1);
INSERT INTO `interface_info` VALUES (16, '韩伟泽', '西南体育大学', 'www.keiko-nitzsche.biz', '', '淮安', '王展鹏', 0, '吴天翊', 78, '2024-07-02 11:51:15', '2024-07-02 11:51:15', 0);
INSERT INTO `interface_info` VALUES (17, '曹博涛', '中国科技大学', 'www.johnathon-heathcote.biz', '', '南昌', '于嘉懿', 0, '郝晋鹏', 62380, '2024-07-02 11:51:15', '2024-07-02 11:51:15', 0);
INSERT INTO `interface_info` VALUES (18, '曹修杰', '北技术大学', 'www.juliana-mraz.co', '', '德阳', '萧钰轩', 0, '马智辉', 879, '2024-07-02 11:51:15', '2024-07-02 11:51:15', 0);
INSERT INTO `interface_info` VALUES (19, '洪昊然', '东南经贸大学', 'www.lala-christiansen.com', '', '常州', '邵志泽', 0, '田明辉', 593, '2024-07-02 11:51:15', '2024-07-02 11:51:15', 0);
INSERT INTO `interface_info` VALUES (20, '王熠彤', '东北艺术大学', 'www.kendal-franecki.info', '', '长治', '吴明杰', 0, '许昊天', 3612918898, '2024-07-02 11:51:15', '2024-07-02 11:51:15', 0);
INSERT INTO `interface_info` VALUES (21, '测试插入', '新建接口', 'www.baidu.com', '', 'requesthead', 'responsehead', 0, 'GET', 1, '2024-07-02 16:35:31', '2024-07-02 17:20:56', 1);
INSERT INTO `interface_info` VALUES (22, '雄雄测试', '测试插入接口', 'http://localhost:7259/test', '', 'head', 'head', 0, 'POST', 1, '2024-07-02 16:46:17', '2024-07-02 16:46:17', 0);
INSERT INTO `interface_info` VALUES (23, '刷新测试', '刷新测试', 'hahahah', '', 'hhh', 'www', 0, 'delete', 1, '2024-07-02 17:25:23', '2024-07-02 17:25:23', 0);
INSERT INTO `interface_info` VALUES (24, '杨风华', '东南农业大学', 'www.iva-spinka.io', '', '泉州', '覃涛', 1, '孔梓晨', 6490, '2024-07-02 11:51:15', '2024-07-04 10:09:49', 0);

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `age` int NULL DEFAULT NULL COMMENT '年龄',
  `gender` tinyint NOT NULL DEFAULT 0 COMMENT '性别（0-男, 1-女）',
  `education` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学历',
  `place` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地点',
  `job` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '职业',
  `contact` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系方式',
  `loveExp` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '感情经历',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '内容（个人介绍）',
  `photo` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '照片地址',
  `reviewStatus` int NOT NULL DEFAULT 0 COMMENT '状态（0-待审核, 1-通过, 2-拒绝）',
  `reviewMessage` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '审核信息',
  `viewNum` int NOT NULL DEFAULT 0 COMMENT '浏览数',
  `thumbNum` int NOT NULL DEFAULT 0 COMMENT '点赞数',
  `userId` bigint NOT NULL COMMENT '创建用户 id',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `isDelete` tinyint NOT NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '帖子' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of post
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `userName` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `userAccount` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '账号',
  `userAvatar` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户头像',
  `gender` tinyint NULL DEFAULT NULL COMMENT '性别',
  `userRole` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'user' COMMENT '用户角色：user / admin',
  `userPassword` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  `accessKey` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'accessKey',
  `secretKey` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'secretKey',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `isDelete` tinyint NOT NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uni_userAccount`(`userAccount` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'dingding', 'dingjiaxiong', 'https://avatars.githubusercontent.com/u/61930795?v=4', 0, 'admin', 'b0dd3697a192885d7c055db46155b26a', 'jiaxiong', 'abcdefgh', '2024-07-03 16:08:46', '2024-07-03 16:10:27', 0);
INSERT INTO `user` VALUES (2, 'haimian', 'haimianbaobao', 'https://img2.baidu.com/it/u=1377871525,3691412687&fm=253&fmt=auto&app=120&f=JPEG?w=532&h=500', 0, 'user', 'b0dd3697a192885d7c055db46155b26a', '', '', '2024-07-03 16:08:50', '2024-07-03 16:08:59', 0);
INSERT INTO `user` VALUES (3, 'jiajia', 'jiaxiong1', NULL, 0, 'user', 'b0dd3697a192885d7c055db46155b26a', '27e1f2f44e7a9e808e3650d07f16cb81', '8f6576f137851393c483d8ceacef12f3', '2024-07-04 10:02:30', '2024-07-04 18:50:35', 0);

-- ----------------------------
-- Table structure for user_interface_info
-- ----------------------------
DROP TABLE IF EXISTS `user_interface_info`;
CREATE TABLE `user_interface_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userId` bigint NOT NULL COMMENT '调用用户 id',
  `interfaceInfoId` bigint NOT NULL COMMENT '接口 id',
  `totalNum` int NOT NULL DEFAULT 0 COMMENT '总调用次数',
  `leftNum` int NOT NULL DEFAULT 0 COMMENT '剩余调用次数',
  `status` int NOT NULL DEFAULT 0 COMMENT '0-正常，1-禁用',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `isDelete` tinyint NOT NULL DEFAULT 0 COMMENT '是否删除(0-未删, 1-已删)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户调用接口关系' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_interface_info
-- ----------------------------
INSERT INTO `user_interface_info` VALUES (1, 1, 1, 9, -2, 0, '2024-07-04 11:28:51', '2024-07-04 19:10:06', 0);
INSERT INTO `user_interface_info` VALUES (2, 2, 1, 6, 0, 0, '2024-07-04 18:52:26', '2024-07-04 18:52:26', 0);
INSERT INTO `user_interface_info` VALUES (3, 1, 2, 13, 0, 0, '2024-07-04 18:52:26', '2024-07-04 18:52:26', 0);
INSERT INTO `user_interface_info` VALUES (4, 2, 2, 13, 0, 0, '2024-07-04 18:52:26', '2024-07-04 18:52:26', 0);
INSERT INTO `user_interface_info` VALUES (5, 1, 3, 1, 0, 0, '2024-07-04 18:52:26', '2024-07-04 18:52:26', 0);
INSERT INTO `user_interface_info` VALUES (6, 2, 3, 1, 0, 0, '2024-07-04 18:52:26', '2024-07-04 18:52:26', 0);
INSERT INTO `user_interface_info` VALUES (7, 1, 4, 23, 0, 0, '2024-07-04 18:52:26', '2024-07-04 18:52:26', 0);
INSERT INTO `user_interface_info` VALUES (8, 2, 4, 23, 0, 0, '2024-07-04 18:52:26', '2024-07-04 18:52:26', 0);

SET FOREIGN_KEY_CHECKS = 1;
