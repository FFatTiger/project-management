/*
 Navicat Premium Data Transfer

 Source Server         : tiger
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : rm-bp167s4f513v79369125010ym.mysql.rds.aliyuncs.com:3306
 Source Schema         : smbms

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 21/06/2021 15:35:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for project_document_info
-- ----------------------------
DROP TABLE IF EXISTS `project_document_info`;
CREATE TABLE `project_document_info` (
  `id` bigint(15) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `path_name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '相对路径',
  `title` varchar(50) NOT NULL COMMENT '名称',
  `size` double(8,2) NOT NULL COMMENT '文件大小',
  `upload_user_id` bigint(15) NOT NULL,
  `project_id` bigint(15) NOT NULL COMMENT '所属项目id',
  `downloads` int(11) NOT NULL DEFAULT '0' COMMENT '下载次数',
  `file_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '文件类型',
  `file_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '完整地址',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '逻辑删除标志 1：已删除， 0：未删除，默认0',
  `version` int(11) NOT NULL DEFAULT '1' COMMENT '版本号',
  `created_by` varchar(50) NOT NULL DEFAULT 'sys' COMMENT '创建人',
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_modified_by` varchar(50) NOT NULL DEFAULT 'sys' COMMENT '更新人',
  `last_modified_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `audit` tinyint(1) NOT NULL COMMENT '审核',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='项目管理-文件表';

-- ----------------------------
-- Records of project_document_info
-- ----------------------------
BEGIN;
INSERT INTO `project_document_info` VALUES (1, 'c://test', '项目文件', 33.00, 21, 1, 0, 'word', 'c://sss', 1, 1, 'sys', '2021-04-21 14:36:39', 'sys', '2021-04-23 15:41:56', 0);
INSERT INTO `project_document_info` VALUES (2, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/1e8ebb0f8a6043a48448374f7194ae75_QQ20210330-0.gif', 'file', 3789.00, 21, 1, 0, 'gif', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/1e8ebb0f8a6043a48448374f7194ae75_QQ20210330-0.gif', 1, 1, 'tiger', '2021-04-22 23:36:26', 'tiger', '2021-04-23 15:43:09', 0);
INSERT INTO `project_document_info` VALUES (3, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/ad2a3039f0874106ba2e486d9d211b75_5a310940ce1bcd795a6f7b02e6eb458c.jpg', 'file', 1517897.00, 21, 1, 0, 'jpg', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/ad2a3039f0874106ba2e486d9d211b75_5a310940ce1bcd795a6f7b02e6eb458c.jpg', 1, 1, 'tiger', '2021-04-23 09:24:04', 'tiger', '2021-04-23 15:43:47', 0);
INSERT INTO `project_document_info` VALUES (4, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/566c3cf0e1a34e55880a97197362d9ec_5a310940ce1bcd795a6f7b02e6eb458c.jpg', 'file', 1517897.00, 21, 1, 0, 'jpg', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/566c3cf0e1a34e55880a97197362d9ec_5a310940ce1bcd795a6f7b02e6eb458c.jpg', 1, 1, 'tiger', '2021-04-23 09:25:08', 'tiger', '2021-04-23 15:44:26', 0);
INSERT INTO `project_document_info` VALUES (5, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/dad1c43aca704baf8f3e9b937d097b77_5a310940ce1bcd795a6f7b02e6eb458c.jpg', 'file', 1517897.00, 21, 1, 0, 'jpg', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/dad1c43aca704baf8f3e9b937d097b77_5a310940ce1bcd795a6f7b02e6eb458c.jpg', 1, 1, 'tiger', '2021-04-23 09:26:55', 'tiger', '2021-04-23 15:43:02', 0);
INSERT INTO `project_document_info` VALUES (6, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/75616c51e2a54dfc810708a04aa2a6c2_5a310940ce1bcd795a6f7b02e6eb458c.jpg', 'file', 1517897.00, 21, 1, 0, 'jpg', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/75616c51e2a54dfc810708a04aa2a6c2_5a310940ce1bcd795a6f7b02e6eb458c.jpg', 1, 1, 'tiger', '2021-04-23 09:27:45', 'tiger', '2021-04-23 15:44:26', 0);
INSERT INTO `project_document_info` VALUES (7, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/8637525f53ff47078ce76c7319793080_5a310940ce1bcd795a6f7b02e6eb458c.jpg', 'file', 1517897.00, 21, 1, 0, 'jpg', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/8637525f53ff47078ce76c7319793080_5a310940ce1bcd795a6f7b02e6eb458c.jpg', 1, 1, 'tiger', '2021-04-23 09:32:51', 'tiger', '2021-04-23 15:44:25', 0);
INSERT INTO `project_document_info` VALUES (8, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/7ace4dd9ddae4cce92b8884d221b326e_5a310940ce1bcd795a6f7b02e6eb458c.jpg', 'file', 1517897.00, 21, 1, 0, 'jpg', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/7ace4dd9ddae4cce92b8884d221b326e_5a310940ce1bcd795a6f7b02e6eb458c.jpg', 1, 1, 'tiger', '2021-04-23 09:41:53', 'tiger', '2021-04-23 15:44:25', 0);
INSERT INTO `project_document_info` VALUES (9, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/ea6ded3059eb41238a1549a44447b88e_7a8286003af33a873282b841d15c10385243b53e.png', 'file', 2833578.00, 21, 1, 0, 'png', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/ea6ded3059eb41238a1549a44447b88e_7a8286003af33a873282b841d15c10385243b53e.png', 1, 1, 'tiger', '2021-04-23 09:43:34', 'tiger', '2021-04-23 15:44:24', 0);
INSERT INTO `project_document_info` VALUES (10, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/f47f2a9091e347d5948bccac585f12ca_7a8286003af33a873282b841d15c10385243b53e.png', 'file', 2833578.00, 21, 1, 0, 'png', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/f47f2a9091e347d5948bccac585f12ca_7a8286003af33a873282b841d15c10385243b53e.png', 1, 1, 'tiger', '2021-04-23 09:45:11', 'tiger', '2021-04-23 15:44:23', 0);
INSERT INTO `project_document_info` VALUES (11, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/ed53ad56c0394995ba6001c682e4a2ce_7a8286003af33a873282b841d15c10385243b53e.png', 'file', 2833578.00, 21, 1, 0, 'png', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/ed53ad56c0394995ba6001c682e4a2ce_7a8286003af33a873282b841d15c10385243b53e.png', 1, 1, 'tiger', '2021-04-23 10:11:41', 'tiger', '2021-04-23 15:44:22', 0);
INSERT INTO `project_document_info` VALUES (12, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/2b7bbbeecc274a5da244c2313e66e18c_5a310940ce1bcd795a6f7b02e6eb458c.jpg', 'file', 1517897.00, 1, 6, 0, 'jpg', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/2b7bbbeecc274a5da244c2313e66e18c_5a310940ce1bcd795a6f7b02e6eb458c.jpg', 0, 1, '张三', '2021-04-23 10:12:02', '张三', '2021-04-23 12:55:47', 0);
INSERT INTO `project_document_info` VALUES (13, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/a08cf77d73d34e61889e33706e824019_5a310940ce1bcd795a6f7b02e6eb458c.jpg', 'file', 1517897.00, 21, 6, 0, 'jpg', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/a08cf77d73d34e61889e33706e824019_5a310940ce1bcd795a6f7b02e6eb458c.jpg', 1, 1, 'tiger', '2021-04-23 10:12:32', 'tiger', '2021-04-23 15:44:28', 0);
INSERT INTO `project_document_info` VALUES (14, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/a7221fbafc194b268c5f5e87dcfe725b_5a310940ce1bcd795a6f7b02e6eb458c.jpg', 'file', 1517897.00, 21, 1, 0, 'jpg', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/a7221fbafc194b268c5f5e87dcfe725b_5a310940ce1bcd795a6f7b02e6eb458c.jpg', 1, 1, 'tiger', '2021-04-23 10:13:14', 'tiger', '2021-04-23 15:44:28', 0);
INSERT INTO `project_document_info` VALUES (15, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/6f934f3364b74c348de5eca6da405f56_5a310940ce1bcd795a6f7b02e6eb458c.jpg', 'file', 1517897.00, 21, 1, 0, 'jpg', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/6f934f3364b74c348de5eca6da405f56_5a310940ce1bcd795a6f7b02e6eb458c.jpg', 1, 1, 'tiger', '2021-04-23 10:13:51', 'tiger', '2021-04-23 15:44:29', 0);
INSERT INTO `project_document_info` VALUES (16, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/ff6b780dee014c32ae81476665f9030c_5a310940ce1bcd795a6f7b02e6eb458c.jpg', 'file', 1517897.00, 21, 6, 0, 'jpg', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/ff6b780dee014c32ae81476665f9030c_5a310940ce1bcd795a6f7b02e6eb458c.jpg', 1, 1, 'tiger', '2021-04-23 10:14:41', 'tiger', '2021-04-23 15:44:29', 0);
INSERT INTO `project_document_info` VALUES (17, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/165d424444e34f2aa3524b66bccd49bd_二维码.mp4', 'file', 4462697.00, 21, 1, 0, 'mp4', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/165d424444e34f2aa3524b66bccd49bd_二维码.mp4', 1, 1, 'tiger', '2021-04-23 10:24:33', 'tiger', '2021-04-23 15:44:29', 0);
INSERT INTO `project_document_info` VALUES (18, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/4d4c3e887ab04bb1947cd6ddd1b94ae5_二维码.mp4', '二维码', 4462697.00, 21, 1, 0, 'mp4', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/4d4c3e887ab04bb1947cd6ddd1b94ae5_二维码.mp4', 1, 1, 'tiger', '2021-04-23 10:27:06', 'tiger', '2021-04-23 15:42:14', 0);
INSERT INTO `project_document_info` VALUES (19, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/2b7bbbeecc274a5da244c2313e66e18c_5a310940ce1bcd795a6f7b02e6eb458c.jpg', 'file', 1517897.00, 21, 6, 1, 'jpg', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/2b7bbbeecc274a5da244c2313e66e18c_5a310940ce1bcd795a6f7b02e6eb458c.jpg', 1, 1, 'tiger', '2021-04-23 02:12:02', 'tiger', '2021-04-23 15:44:30', 0);
INSERT INTO `project_document_info` VALUES (20, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/4d4c3e887ab04bb1947cd6ddd1b94ae5_二维码.mp4', '二维码', 4462697.00, 21, 1, 1, 'mp4', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/4d4c3e887ab04bb1947cd6ddd1b94ae5_二维码.mp4', 1, 1, 'tiger', '2021-04-23 02:27:06', 'tiger', '2021-04-23 15:48:19', 0);
INSERT INTO `project_document_info` VALUES (21, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/2b7bbbeecc274a5da244c2313e66e18c_5a310940ce1bcd795a6f7b02e6eb458c.jpg', 'file', 1517897.00, 21, 6, 1, 'jpg', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/2b7bbbeecc274a5da244c2313e66e18c_5a310940ce1bcd795a6f7b02e6eb458c.jpg', 0, 1, 'tiger', '2021-04-23 02:12:02', 'tiger', '2021-04-23 02:12:02', 0);
INSERT INTO `project_document_info` VALUES (22, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/4d4c3e887ab04bb1947cd6ddd1b94ae5_二维码.mp4', '二维码', 4462697.00, 21, 1, 2, 'mp4', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/4d4c3e887ab04bb1947cd6ddd1b94ae5_二维码.mp4', 1, 1, 'tiger', '2021-04-22 18:27:06', 'tiger', '2021-04-23 15:48:20', 0);
INSERT INTO `project_document_info` VALUES (23, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/ad2a3039f0874106ba2e486d9d211b75_5a310940ce1bcd795a6f7b02e6eb458c.jpg', 'file', 1517897.00, 21, 1, 1, 'jpg', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/ad2a3039f0874106ba2e486d9d211b75_5a310940ce1bcd795a6f7b02e6eb458c.jpg', 1, 1, 'tiger', '2021-04-23 01:24:04', 'tiger', '2021-04-23 15:48:19', 0);
INSERT INTO `project_document_info` VALUES (24, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/b26418269fe64c25952d02f1c24219f8_5a310940ce1bcd795a6f7b02e6eb458c.jpg', '5a310940ce1bcd795a6f7b02e6eb458c', 1517897.00, 21, 6, 0, 'jpg', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/b26418269fe64c25952d02f1c24219f8_5a310940ce1bcd795a6f7b02e6eb458c.jpg', 1, 1, 'tiger', '2021-04-23 17:28:15', 'tiger', '2021-04-23 17:28:27', 0);
INSERT INTO `project_document_info` VALUES (25, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/841d96282d104bda807a19ba5fd4c37c_5a310940ce1bcd795a6f7b02e6eb458c.jpg', '5a310940ce1bcd795a6f7b02e6eb458c', 1517897.00, 21, 10, 0, 'jpg', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/841d96282d104bda807a19ba5fd4c37c_5a310940ce1bcd795a6f7b02e6eb458c.jpg', 0, 1, 'tiger', '2021-04-25 14:28:15', 'tiger', '2021-04-25 14:28:15', 0);
INSERT INTO `project_document_info` VALUES (26, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/bd6369058af240948ee19b6338af5cc7_7a8286003af33a873282b841d15c10385243b53e.png', '7a8286003af33a873282b841d15c10385243b53e', 2833578.00, 21, 10, 0, 'png', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/bd6369058af240948ee19b6338af5cc7_7a8286003af33a873282b841d15c10385243b53e.png', 0, 1, 'tiger', '2021-04-25 14:30:45', 'tiger', '2021-04-25 14:30:45', 0);
INSERT INTO `project_document_info` VALUES (27, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/e13d11f826e44c5fb967f43768d9c0ea_5a310940ce1bcd795a6f7b02e6eb458c.jpg', '5a310940ce1bcd795a6f7b02e6eb458c', 1517897.00, 21, 17, 0, 'jpg', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/e13d11f826e44c5fb967f43768d9c0ea_5a310940ce1bcd795a6f7b02e6eb458c.jpg', 1, 1, 'tiger', '2021-04-25 16:24:53', 'tiger', '2021-05-13 14:12:34', 1);
INSERT INTO `project_document_info` VALUES (28, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/e13d11f826e44c5fb967f43768d9c0ea_5a310940ce1bcd795a6f7b02e6eb458c.jpg', '5a310940ce1bcd795a6f7b02e6eb458c', 1517897.00, 21, 17, 0, 'jpg', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/e13d11f826e44c5fb967f43768d9c0ea_5a310940ce1bcd795a6f7b02e6eb458c.jpg', 1, 1, 'tiger', '2021-04-25 16:24:53', 'tiger', '2021-05-13 13:57:04', 1);
INSERT INTO `project_document_info` VALUES (29, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/e13d11f826e44c5fb967f43768d9c0ea_5a310940ce1bcd795a6f7b02e6eb458c.jpg', '5a310940ce1bcd795a6f7b02e6eb458c', 1517897.00, 21, 17, 0, 'jpg', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/e13d11f826e44c5fb967f43768d9c0ea_5a310940ce1bcd795a6f7b02e6eb458c.jpg', 1, 1, 'tiger', '2021-04-25 16:24:53', 'tiger', '2021-05-13 13:55:24', 1);
INSERT INTO `project_document_info` VALUES (30, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/e13d11f826e44c5fb967f43768d9c0ea_5a310940ce1bcd795a6f7b02e6eb458c.jpg', '5a310940ce1bcd795a6f7b02e6eb458c', 1517897.00, 21, 17, 0, 'jpg', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/e13d11f826e44c5fb967f43768d9c0ea_5a310940ce1bcd795a6f7b02e6eb458c.jpg', 1, 1, 'tiger', '2021-04-25 16:24:53', 'tiger', '2021-05-13 14:12:39', 1);
INSERT INTO `project_document_info` VALUES (31, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/e13d11f826e44c5fb967f43768d9c0ea_5a310940ce1bcd795a6f7b02e6eb458c.jpg', '5a310940ce1bcd795a6f7b02e6eb458c', 1517897.00, 21, 17, 0, 'jpg', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/e13d11f826e44c5fb967f43768d9c0ea_5a310940ce1bcd795a6f7b02e6eb458c.jpg', 1, 1, 'tiger', '2021-04-25 16:24:53', 'tiger', '2021-05-13 13:58:38', 1);
INSERT INTO `project_document_info` VALUES (32, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/e13d11f826e44c5fb967f43768d9c0ea_5a310940ce1bcd795a6f7b02e6eb458c.jpg', '5a310940ce1bcd795a6f7b02e6eb458c', 1517897.00, 21, 17, 0, 'jpg', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/e13d11f826e44c5fb967f43768d9c0ea_5a310940ce1bcd795a6f7b02e6eb458c.jpg', 1, 1, 'tiger', '2021-04-25 16:24:53', 'tiger', '2021-05-13 13:58:45', 1);
INSERT INTO `project_document_info` VALUES (33, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/e13d11f826e44c5fb967f43768d9c0ea_5a310940ce1bcd795a6f7b02e6eb458c.jpg', '5a310940ce1bcd795a6f7b02e6eb458c', 1517897.00, 21, 17, 0, 'jpg', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/e13d11f826e44c5fb967f43768d9c0ea_5a310940ce1bcd795a6f7b02e6eb458c.jpg', 1, 1, 'tiger', '2021-04-25 16:24:53', 'tiger', '2021-05-13 13:57:12', 1);
INSERT INTO `project_document_info` VALUES (34, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/e13d11f826e44c5fb967f43768d9c0ea_5a310940ce1bcd795a6f7b02e6eb458c.jpg', '5a310940ce1bcd795a6f7b02e6eb458c', 1517897.00, 21, 17, 0, 'jpg', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/e13d11f826e44c5fb967f43768d9c0ea_5a310940ce1bcd795a6f7b02e6eb458c.jpg', 1, 1, 'tiger', '2021-04-25 16:24:53', 'tiger', '2021-05-13 14:12:27', 1);
INSERT INTO `project_document_info` VALUES (35, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/e13d11f826e44c5fb967f43768d9c0ea_5a310940ce1bcd795a6f7b02e6eb458c.jpg', '5a310940ce1bcd795a6f7b02e6eb458c', 1517897.00, 21, 17, 0, 'jpg', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/e13d11f826e44c5fb967f43768d9c0ea_5a310940ce1bcd795a6f7b02e6eb458c.jpg', 1, 1, 'tiger', '2021-04-25 16:24:53', 'tiger', '2021-05-13 14:12:28', 1);
INSERT INTO `project_document_info` VALUES (36, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/e13d11f826e44c5fb967f43768d9c0ea_5a310940ce1bcd795a6f7b02e6eb458c.jpg', '5a310940ce1bcd795a6f7b02e6eb458c', 1517897.00, 21, 17, 0, 'jpg', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/e13d11f826e44c5fb967f43768d9c0ea_5a310940ce1bcd795a6f7b02e6eb458c.jpg', 0, 1, 'tiger', '2021-04-25 16:24:53', 'tiger', '2021-04-25 16:24:53', 1);
INSERT INTO `project_document_info` VALUES (37, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/e13d11f826e44c5fb967f43768d9c0ea_5a310940ce1bcd795a6f7b02e6eb458c.jpg', '5a310940ce1bcd795a6f7b02e6eb458c', 1517897.00, 21, 17, 0, 'jpg', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/e13d11f826e44c5fb967f43768d9c0ea_5a310940ce1bcd795a6f7b02e6eb458c.jpg', 1, 1, 'tiger', '2021-04-25 16:24:53', 'tiger', '2021-05-13 14:12:40', 1);
INSERT INTO `project_document_info` VALUES (38, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/e13d11f826e44c5fb967f43768d9c0ea_5a310940ce1bcd795a6f7b02e6eb458c.jpg', '5a310940ce1bcd795a6f7b02e6eb458c', 1517897.00, 21, 17, 0, 'jpg', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/e13d11f826e44c5fb967f43768d9c0ea_5a310940ce1bcd795a6f7b02e6eb458c.jpg', 0, 1, 'tiger', '2021-04-25 16:24:53', 'tiger', '2021-04-25 16:24:53', 1);
INSERT INTO `project_document_info` VALUES (39, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/e13d11f826e44c5fb967f43768d9c0ea_5a310940ce1bcd795a6f7b02e6eb458c.jpg', '5a310940ce1bcd795a6f7b02e6eb458c', 1517897.00, 21, 17, 0, 'jpg', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/e13d11f826e44c5fb967f43768d9c0ea_5a310940ce1bcd795a6f7b02e6eb458c.jpg', 1, 1, 'tiger', '2021-04-25 16:24:53', 'tiger', '2021-05-13 14:12:48', 1);
INSERT INTO `project_document_info` VALUES (40, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/e13d11f826e44c5fb967f43768d9c0ea_5a310940ce1bcd795a6f7b02e6eb458c.jpg', '5a310940ce1bcd795a6f7b02e6eb458c', 1517897.00, 21, 17, 0, 'jpg', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/e13d11f826e44c5fb967f43768d9c0ea_5a310940ce1bcd795a6f7b02e6eb458c.jpg', 1, 1, 'tiger', '2021-04-25 16:24:53', 'tiger', '2021-05-13 14:12:47', 1);
INSERT INTO `project_document_info` VALUES (41, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/e13d11f826e44c5fb967f43768d9c0ea_5a310940ce1bcd795a6f7b02e6eb458c.jpg', '5a310940ce1bcd795a6f7b02e6eb458c', 1517897.00, 21, 17, 0, 'jpg', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/e13d11f826e44c5fb967f43768d9c0ea_5a310940ce1bcd795a6f7b02e6eb458c.jpg', 1, 1, 'tiger', '2021-04-25 16:24:53', 'tiger', '2021-05-13 14:12:45', 1);
INSERT INTO `project_document_info` VALUES (42, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/e13d11f826e44c5fb967f43768d9c0ea_5a310940ce1bcd795a6f7b02e6eb458c.jpg', '5a310940ce1bcd795a6f7b02e6eb458c', 1517897.00, 21, 17, 0, 'jpg', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/e13d11f826e44c5fb967f43768d9c0ea_5a310940ce1bcd795a6f7b02e6eb458c.jpg', 1, 1, 'tiger', '2021-04-25 16:24:53', 'tiger', '2021-05-13 14:12:47', 1);
INSERT INTO `project_document_info` VALUES (43, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/e13d11f826e44c5fb967f43768d9c0ea_5a310940ce1bcd795a6f7b02e6eb458c.jpg', '5a310940ce1bcd795a6f7b02e6eb458c', 1517897.00, 21, 17, 0, 'jpg', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/e13d11f826e44c5fb967f43768d9c0ea_5a310940ce1bcd795a6f7b02e6eb458c.jpg', 1, 1, 'tiger', '2021-04-25 16:24:53', 'tiger', '2021-05-13 14:12:47', 1);
INSERT INTO `project_document_info` VALUES (44, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/e13d11f826e44c5fb967f43768d9c0ea_5a310940ce1bcd795a6f7b02e6eb458c.jpg', '5a310940ce1bcd795a6f7b02e6eb458c', 1517897.00, 21, 17, 0, 'jpg', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/e13d11f826e44c5fb967f43768d9c0ea_5a310940ce1bcd795a6f7b02e6eb458c.jpg', 1, 1, 'tiger', '2021-04-25 16:24:53', 'tiger', '2021-05-13 14:12:45', 1);
INSERT INTO `project_document_info` VALUES (45, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/e13d11f826e44c5fb967f43768d9c0ea_5a310940ce1bcd795a6f7b02e6eb458c.jpg', '5a310940ce1bcd795a6f7b02e6eb458c', 1517897.00, 21, 17, 1, 'jpg', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/e13d11f826e44c5fb967f43768d9c0ea_5a310940ce1bcd795a6f7b02e6eb458c.jpg', 1, 1, 'tiger', '2021-04-25 16:24:53', 'tiger', '2021-05-13 14:12:46', 1);
INSERT INTO `project_document_info` VALUES (46, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/e13d11f826e44c5fb967f43768d9c0ea_5a310940ce1bcd795a6f7b02e6eb458c.jpg', '5a310940ce1bcd795a6f7b02e6eb458c', 1517897.00, 21, 17, 1, 'jpg', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/e13d11f826e44c5fb967f43768d9c0ea_5a310940ce1bcd795a6f7b02e6eb458c.jpg', 1, 1, 'tiger', '2021-04-25 16:24:53', 'tiger', '2021-05-13 21:31:29', 1);
INSERT INTO `project_document_info` VALUES (47, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/1af8529e071349058c9b2a831315025f_智慧课堂4.docx', '智慧课堂4', 1998087.00, 21, 17, 0, 'docx', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/1af8529e071349058c9b2a831315025f_智慧课堂4.docx', 0, 1, 'tiger', '2021-05-13 21:36:29', 'tiger', '2021-05-13 21:36:29', 1);
INSERT INTO `project_document_info` VALUES (48, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/090d633468524ce684f7bdfc2589f42d_xiangrikui.exe', 'xiangrikui', 1760088.00, 21, 17, 0, 'exe', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/090d633468524ce684f7bdfc2589f42d_xiangrikui.exe', 0, 1, 'tiger', '2021-05-13 21:36:53', 'tiger', '2021-05-13 21:36:53', 1);
INSERT INTO `project_document_info` VALUES (49, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/1af8529e071349058c9b2a831315025f_智慧课堂4.docx', '智慧课堂4', 1998087.00, 21, 17, 1, 'docx', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/1af8529e071349058c9b2a831315025f_智慧课堂4.docx', 0, 1, 'tiger', '2021-05-13 21:36:29', 'tiger', '2021-05-13 21:36:29', 1);
INSERT INTO `project_document_info` VALUES (50, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/fada4e3294064140b07a1e2369887f21____.mp4', '___', 4462697.00, 21, 17, 0, 'mp4', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/fada4e3294064140b07a1e2369887f21____.mp4', 1, 1, 'tiger', '2021-05-13 22:53:05', 'tiger', '2021-05-13 22:54:21', 1);
INSERT INTO `project_document_info` VALUES (51, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/fada4e3294064140b07a1e2369887f21____.mp4', '___', 4462697.00, 21, 17, 4, 'mp4', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/fada4e3294064140b07a1e2369887f21____.mp4', 1, 1, 'tiger', '2021-05-13 22:53:05', 'tiger', '2021-05-13 22:54:22', 1);
INSERT INTO `project_document_info` VALUES (52, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/91aa724d8e8048dba94404dc30aaf7ae_Watchmen.2009.The.Ultimate.Cut.2160p.BluRay.REMUX.HEVC.TrueHD.5.1-FGT.mkv', 'Watchmen', 80618.00, 21, 15, 1, '2009', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/91aa724d8e8048dba94404dc30aaf7ae_Watchmen.2009.The.Ultimate.Cut.2160p.BluRay.REMUX.HEVC.TrueHD.5.1-FGT.mkv', 0, 1, 'tiger', '2021-05-13 23:23:37', 'tiger', '2021-05-13 23:23:37', 1);
INSERT INTO `project_document_info` VALUES (53, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/889c05e82b23476fa623cf330ead8d46_未命名.txt', '未命名.txt', 0.00, 21, 17, 0, 'txt', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/889c05e82b23476fa623cf330ead8d46_未命名.txt', 0, 1, 'tiger', '2021-05-13 23:54:57', 'tiger', '2021-05-13 23:54:57', 1);
INSERT INTO `project_document_info` VALUES (54, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/a561dbb3926c4272866fc1d6bdaf55ee_QQ20210330-0.gif', 'QQ20210330-0.gif', 0.00, 21, 17, 0, 'gif', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/a561dbb3926c4272866fc1d6bdaf55ee_QQ20210330-0.gif', 0, 1, 'tiger', '2021-05-13 23:55:04', 'tiger', '2021-05-13 23:55:04', 0);
INSERT INTO `project_document_info` VALUES (55, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/a9d6bab23f314bb89a1f1c15e48fd129_QQ录屏20200107142925.mp4', 'QQ录屏20200107142925.mp4', 2.00, 21, 17, 0, 'mp4', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/a9d6bab23f314bb89a1f1c15e48fd129_QQ录屏20200107142925.mp4', 0, 1, 'tiger', '2021-05-13 23:55:15', 'tiger', '2021-05-13 23:55:15', 0);
INSERT INTO `project_document_info` VALUES (56, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/7baed21b104c4f2696c61164f57551ab_二维码.mp4', '二维码.mp4', 4.26, 21, 17, 0, 'mp4', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr21/7baed21b104c4f2696c61164f57551ab_二维码.mp4', 0, 1, 'tiger', '2021-05-13 23:57:32', 'tiger', '2021-05-13 23:57:32', 0);
INSERT INTO `project_document_info` VALUES (57, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr23/29c90d784e4b4c798fdd7773d7cbb38f_IMG_2601(20200101-221515).PNG', 'IMG_2601(20200101-221515).PNG', 0.21, 23, 15, 0, 'PNG', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr23/29c90d784e4b4c798fdd7773d7cbb38f_IMG_2601(20200101-221515).PNG', 0, 1, '张三', '2021-05-15 14:53:25', '张三', '2021-05-15 14:53:25', 1);
INSERT INTO `project_document_info` VALUES (58, 'C:\\Users\\hp\\IntelliJIDEAProjects\\project-management-main\\out\\artifacts\\project_management_main_Web_exploded\\uploads\\usr21\\a38582089acc4b65b46d9a0aabfa4520_linux.docx', 'linux.docx', 0.55, 21, 33, 1, 'docx', 'C:\\Users\\hp\\IntelliJIDEAProjects\\project-management-main\\out\\artifacts\\project_management_main_Web_exploded\\uploads\\usr21\\a38582089acc4b65b46d9a0aabfa4520_linux.docx', 0, 1, 'tiger', '2021-05-18 01:12:36', 'tiger', '2021-05-18 01:12:36', 0);
INSERT INTO `project_document_info` VALUES (59, 'C:\\Users\\hp\\IntelliJIDEAProjects\\project-management-main\\out\\artifacts\\project_management_main_Web_exploded\\uploads\\usr21\\927cf54b063a42f7bd239a65dd920dce_MySQL.docx', 'MySQL.docx', 0.01, 21, 15, 0, 'docx', 'C:\\Users\\hp\\IntelliJIDEAProjects\\project-management-main\\out\\artifacts\\project_management_main_Web_exploded\\uploads\\usr21\\927cf54b063a42f7bd239a65dd920dce_MySQL.docx', 0, 1, 'tiger', '2021-05-18 01:13:39', 'tiger', '2021-05-18 01:13:39', 0);
INSERT INTO `project_document_info` VALUES (60, 'C:\\Users\\hp\\IntelliJIDEAProjects\\project-management-main\\out\\artifacts\\project_management_main_Web_exploded\\uploads\\usr33\\9d52ffe1d0214b4eb6ad1fedbf57afba_MySQL.docx', 'MySQL.docx', 0.01, 33, 35, 0, 'docx', 'C:\\Users\\hp\\IntelliJIDEAProjects\\project-management-main\\out\\artifacts\\project_management_main_Web_exploded\\uploads\\usr33\\9d52ffe1d0214b4eb6ad1fedbf57afba_MySQL.docx', 0, 1, 'duck', '2021-05-18 16:01:40', 'duck', '2021-05-18 16:01:40', 0);
INSERT INTO `project_document_info` VALUES (61, 'C:\\Users\\hp\\IntelliJIDEAProjects\\project-management-main\\out\\artifacts\\project_management_main_Web_exploded\\uploads\\usr33\\d22683bc24a04a72a718859c841964b2_linux.docx', 'linux.docx', 0.55, 33, 36, 0, 'docx', 'C:\\Users\\hp\\IntelliJIDEAProjects\\project-management-main\\out\\artifacts\\project_management_main_Web_exploded\\uploads\\usr33\\d22683bc24a04a72a718859c841964b2_linux.docx', 0, 1, 'duck', '2021-05-18 16:05:16', 'duck', '2021-05-18 16:05:16', 0);
INSERT INTO `project_document_info` VALUES (62, 'C:\\Users\\hp\\IntelliJIDEAProjects\\project-management-main\\out\\artifacts\\project_management_main_Web_exploded\\uploads\\usr21\\d54d875dcc784f9e9d54b8599bb5bb29_TCPUDPDbg.exe', 'TCPUDPDbg.exe', 0.14, 21, 17, 0, 'exe', 'C:\\Users\\hp\\IntelliJIDEAProjects\\project-management-main\\out\\artifacts\\project_management_main_Web_exploded\\uploads\\usr21\\d54d875dcc784f9e9d54b8599bb5bb29_TCPUDPDbg.exe', 0, 1, 'tiger', '2021-05-18 16:27:34', 'tiger', '2021-05-18 16:27:34', 0);
INSERT INTO `project_document_info` VALUES (63, 'C:\\Users\\hp\\IntelliJIDEAProjects\\project-management-main\\out\\artifacts\\project_management_main_Web_exploded\\uploads\\usr21\\bece8b3c3a9f44fe834fb513b86796c1_index.html', 'index.html', 0.02, 21, 37, 0, 'html', 'C:\\Users\\hp\\IntelliJIDEAProjects\\project-management-main\\out\\artifacts\\project_management_main_Web_exploded\\uploads\\usr21\\bece8b3c3a9f44fe834fb513b86796c1_index.html', 0, 1, 'tiger', '2021-05-18 16:42:41', 'tiger', '2021-05-18 16:42:41', 1);
INSERT INTO `project_document_info` VALUES (64, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr24/d20c1ba684484612b8f34d74866f33e5____.mp4', '___.mp4', 4.26, 24, 32, 0, 'mp4', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr24/d20c1ba684484612b8f34d74866f33e5____.mp4', 0, 1, '李四', '2021-05-18 16:45:56', '李四', '2021-05-18 16:45:56', 1);
INSERT INTO `project_document_info` VALUES (65, 'C:\\Users\\hp\\IntelliJIDEAProjects\\project-management-main\\out\\artifacts\\project_management_main_Web_exploded\\uploads\\usr21\\6bbdd79eecf54ac2bed30465b2634255_register.html', 'register.html', 0.00, 21, 37, 0, 'html', 'C:\\Users\\hp\\IntelliJIDEAProjects\\project-management-main\\out\\artifacts\\project_management_main_Web_exploded\\uploads\\usr21\\6bbdd79eecf54ac2bed30465b2634255_register.html', 0, 1, 'tiger', '2021-05-18 16:48:38', 'tiger', '2021-05-18 16:48:38', 1);
INSERT INTO `project_document_info` VALUES (66, 'C:\\Users\\hp\\IntelliJIDEAProjects\\project-management-main\\out\\artifacts\\project_management_main_Web_exploded\\uploads\\usr21\\88e21502f2534e05a847b109daf1e683_favicon.ico', 'favicon.ico', 0.01, 21, 37, 1, 'ico', 'C:\\Users\\hp\\IntelliJIDEAProjects\\project-management-main\\out\\artifacts\\project_management_main_Web_exploded\\uploads\\usr21\\88e21502f2534e05a847b109daf1e683_favicon.ico', 0, 1, 'tiger', '2021-05-18 16:51:51', 'tiger', '2021-05-18 16:51:51', 1);
INSERT INTO `project_document_info` VALUES (67, 'C:\\Users\\hp\\IntelliJIDEAProjects\\project-management-main\\out\\artifacts\\project_management_main_Web_exploded\\uploads\\usr21\\55a610828d2a419293924a2e8f4ecd4f_list.html', 'flie', 0.01, 21, 37, 1, 'html', 'C:\\Users\\hp\\IntelliJIDEAProjects\\project-management-main\\out\\artifacts\\project_management_main_Web_exploded\\uploads\\usr21\\55a610828d2a419293924a2e8f4ecd4f_list.html', 0, 1, 'tiger', '2021-05-18 16:54:26', 'tiger', '2021-05-20 21:02:27', 1);
INSERT INTO `project_document_info` VALUES (68, 'C:\\Users\\hp\\IntelliJIDEAProjects\\project-management-main\\out\\artifacts\\project_management_main_Web_exploded\\uploads\\usr34\\6bdf9aafed2844ff8cd9c0183c90636d_软件测试.pdf', '软件测试.pdf', 0.16, 34, 37, 0, 'pdf', 'C:\\Users\\hp\\IntelliJIDEAProjects\\project-management-main\\out\\artifacts\\project_management_main_Web_exploded\\uploads\\usr34\\6bdf9aafed2844ff8cd9c0183c90636d_软件测试.pdf', 1, 1, 'rabbit', '2021-05-18 18:00:10', 'rabbit', '2021-05-18 23:12:13', 0);
INSERT INTO `project_document_info` VALUES (69, 'C:\\Users\\hp\\IntelliJIDEAProjects\\project-management-main\\out\\artifacts\\project_management_main_Web_exploded\\uploads\\usr34\\fe059a5807e547f79d5b14c9874a4d80_软件测试.pdf', '软件测试.pdf', 0.16, 34, 37, 0, 'pdf', 'C:\\Users\\hp\\IntelliJIDEAProjects\\project-management-main\\out\\artifacts\\project_management_main_Web_exploded\\uploads\\usr34\\fe059a5807e547f79d5b14c9874a4d80_软件测试.pdf', 0, 1, 'rabbit', '2021-05-18 23:12:28', 'rabbit', '2021-05-18 23:12:28', 1);
INSERT INTO `project_document_info` VALUES (70, 'C:\\Users\\hp\\IntelliJIDEAProjects\\project-management-main\\out\\artifacts\\project_management_main_Web_exploded\\uploads\\usr34\\c0799d078d8144799ac27bcd0bcffcd2_RPReplay_Final1621351106.mp4', 'RPReplay_Final1621351106.mp4', 0.83, 34, 37, 4, 'mp4', 'C:\\Users\\hp\\IntelliJIDEAProjects\\project-management-main\\out\\artifacts\\project_management_main_Web_exploded\\uploads\\usr34\\c0799d078d8144799ac27bcd0bcffcd2_RPReplay_Final1621351106.mp4', 0, 1, 'rabbit', '2021-05-18 23:20:59', 'rabbit', '2021-05-18 23:20:59', 1);
INSERT INTO `project_document_info` VALUES (71, 'C:\\Users\\hp\\IntelliJIDEAProjects\\project-management-main\\out\\artifacts\\project_management_main_Web_exploded\\uploads\\usr34\\c1e2913b23d445468b7529446fd8a784_favicon.ico', 'favicon.ico', 0.01, 34, 37, 0, 'ico', 'C:\\Users\\hp\\IntelliJIDEAProjects\\project-management-main\\out\\artifacts\\project_management_main_Web_exploded\\uploads\\usr34\\c1e2913b23d445468b7529446fd8a784_favicon.ico', 0, 1, 'rabbit', '2021-05-19 00:12:07', 'rabbit', '2021-05-19 00:12:07', 1);
INSERT INTO `project_document_info` VALUES (72, 'C:\\Users\\hp\\IntelliJIDEAProjects\\project-management-main\\out\\artifacts\\project_management_main_Web_exploded\\uploads\\usr38\\1006d852f3ac4f9daf7df800c6b34c8e_untitled.png', 'untitled.png', 1.81, 38, 39, 0, 'png', 'C:\\Users\\hp\\IntelliJIDEAProjects\\project-management-main\\out\\artifacts\\project_management_main_Web_exploded\\uploads\\usr38\\1006d852f3ac4f9daf7df800c6b34c8e_untitled.png', 0, 1, 'pig', '2021-05-19 17:01:21', 'pig', '2021-05-19 17:01:21', 0);
INSERT INTO `project_document_info` VALUES (73, 'C:\\Users\\hp\\Desktop\\Graduate\\project-management\\out\\artifacts\\project_management_war_exploded\\uploads\\usr34\\ba4c90dd975f4d60ac7d7b8dd6e3eb91_favicon.ico', 'favicon.ico', 0.01, 34, 37, 0, 'ico', 'C:\\Users\\hp\\Desktop\\Graduate\\project-management\\out\\artifacts\\project_management_war_exploded\\uploads\\usr34\\ba4c90dd975f4d60ac7d7b8dd6e3eb91_favicon.ico', 0, 1, 'rabbit', '2021-05-19 21:42:56', 'rabbit', '2021-05-19 21:42:56', 1);
INSERT INTO `project_document_info` VALUES (74, 'C:\\Users\\hp\\Desktop\\Graduate\\project-management\\out\\artifacts\\project_management_war_exploded\\uploads\\usr34\\e0b38515cbd44d9691f5760849737453_RPReplay_Final1621351106.mp4', 'RPReplay_Final1621351106.mp4', 0.83, 34, 42, 0, 'mp4', 'C:\\Users\\hp\\Desktop\\Graduate\\project-management\\out\\artifacts\\project_management_war_exploded\\uploads\\usr34\\e0b38515cbd44d9691f5760849737453_RPReplay_Final1621351106.mp4', 0, 1, 'rabbit', '2021-05-19 21:47:27', 'rabbit', '2021-05-19 21:47:27', 0);
INSERT INTO `project_document_info` VALUES (75, 'C:\\Users\\hp\\Desktop\\Graduate\\project-management\\out\\artifacts\\project_management_war_exploded\\uploads\\usr34\\8fac693408744db49967f12c41c3fea1_RPReplay_Final1621351106.mp4', 'RPReplay_Final1621351106.mp4', 0.83, 34, 42, 0, 'mp4', 'C:\\Users\\hp\\Desktop\\Graduate\\project-management\\out\\artifacts\\project_management_war_exploded\\uploads\\usr34\\8fac693408744db49967f12c41c3fea1_RPReplay_Final1621351106.mp4', 0, 1, 'rabbit', '2021-05-19 21:48:41', 'rabbit', '2021-05-19 21:48:41', 0);
INSERT INTO `project_document_info` VALUES (76, 'C:\\Users\\hp\\Desktop\\Graduate\\project-management\\out\\artifacts\\project_management_war_exploded\\uploads\\usr34\\1f6a111344a64d43a0cd24630d4dd4f9_RPReplay_Final1621351106.mp4', 'RPReplay_Final1621351106.mp4', 0.83, 34, 17, 0, 'mp4', 'C:\\Users\\hp\\Desktop\\Graduate\\project-management\\out\\artifacts\\project_management_war_exploded\\uploads\\usr34\\1f6a111344a64d43a0cd24630d4dd4f9_RPReplay_Final1621351106.mp4', 0, 1, 'rabbit', '2021-05-19 21:51:16', 'rabbit', '2021-05-19 21:51:16', 0);
INSERT INTO `project_document_info` VALUES (77, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr40/f22b74b44fb2485ba25836f1c124c39f_三线表.doc', '三线表.doc', 0.01, 40, 43, 0, 'doc', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr40/f22b74b44fb2485ba25836f1c124c39f_三线表.doc', 0, 1, 'full', '2021-05-19 21:52:05', 'full', '2021-05-19 21:52:05', 1);
INSERT INTO `project_document_info` VALUES (78, 'C:\\Users\\hp\\Desktop\\Graduate\\project-management\\out\\artifacts\\project_management_war_exploded\\uploads\\usr34\\af676ae7d276479292c99cc87e9e9eae_RPReplay_Final1621351106.mp4', 'RPReplay_Final1621351106.mp4', 0.83, 34, 44, 0, 'mp4', 'C:\\Users\\hp\\Desktop\\Graduate\\project-management\\out\\artifacts\\project_management_war_exploded\\uploads\\usr34\\af676ae7d276479292c99cc87e9e9eae_RPReplay_Final1621351106.mp4', 0, 1, 'rabbit', '2021-05-19 21:55:48', 'rabbit', '2021-05-19 21:55:48', 0);
INSERT INTO `project_document_info` VALUES (79, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr40/4ceaf02e171548baa8a9d51ba8f1feca_三线表.doc', '三线表.doc', 0.01, 40, 46, 0, 'doc', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr40/4ceaf02e171548baa8a9d51ba8f1feca_三线表.doc', 0, 1, 'full', '2021-05-19 22:03:02', 'full', '2021-05-19 22:03:02', 0);
INSERT INTO `project_document_info` VALUES (80, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr44/51577cd1bd9f4e279731755ea85dc533_三线表.doc', '三线表.doc', 0.01, 44, 47, 0, 'doc', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr44/51577cd1bd9f4e279731755ea85dc533_三线表.doc', 0, 1, '1234', '2021-05-19 22:05:22', '1234', '2021-05-19 22:05:22', 0);
INSERT INTO `project_document_info` VALUES (81, 'C:\\Users\\hp\\Desktop\\Graduate\\project-management\\out\\artifacts\\project_management_war_exploded\\uploads\\usr46\\c4e77278730d4d4d8b485b79722daf56_RPReplay_Final1621351106.mp4', 'RPReplay_Final1621351106.mp4', 0.83, 46, 48, 0, 'mp4', 'C:\\Users\\hp\\Desktop\\Graduate\\project-management\\out\\artifacts\\project_management_war_exploded\\uploads\\usr46\\c4e77278730d4d4d8b485b79722daf56_RPReplay_Final1621351106.mp4', 0, 1, '12344', '2021-05-19 22:34:45', '12344', '2021-05-19 22:34:45', 0);
INSERT INTO `project_document_info` VALUES (82, 'C:\\Users\\hp\\Desktop\\Graduate\\project-management\\out\\artifacts\\project_management_war_exploded\\uploads\\usr46\\1b1e98b4d56c4a0dabff5d57efbdec0d_RPReplay_Final1621351106.mp4', 'RPReplay_Final1621351106.mp4', 0.83, 46, 39, 0, 'mp4', 'C:\\Users\\hp\\Desktop\\Graduate\\project-management\\out\\artifacts\\project_management_war_exploded\\uploads\\usr46\\1b1e98b4d56c4a0dabff5d57efbdec0d_RPReplay_Final1621351106.mp4', 0, 1, '12344', '2021-05-19 22:43:28', '12344', '2021-05-19 22:43:28', 0);
INSERT INTO `project_document_info` VALUES (83, 'C:\\Users\\hp\\Desktop\\Graduate\\project-management\\out\\artifacts\\project_management_war_exploded\\uploads\\usr46\\24f7a9affb274847a55acd8c3e59dd5c_软件测试.pdf', '软件测试.pdf', 0.16, 46, 39, 0, 'pdf', 'C:\\Users\\hp\\Desktop\\Graduate\\project-management\\out\\artifacts\\project_management_war_exploded\\uploads\\usr46\\24f7a9affb274847a55acd8c3e59dd5c_软件测试.pdf', 0, 1, '12344', '2021-05-19 22:44:21', '12344', '2021-05-19 22:44:21', 0);
INSERT INTO `project_document_info` VALUES (84, '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr48/6f9c4701fe5342cfbbabbed5931996fb_三线表.doc', '三线表.doc', 0.01, 48, 49, 0, 'doc', '/Users/Skaura/IdeaProjects/project-management/out/artifacts/project_management_war_exploded/uploads/usr48/6f9c4701fe5342cfbbabbed5931996fb_三线表.doc', 0, 1, 'test001', '2021-05-20 13:28:54', 'test001', '2021-05-20 13:28:54', 0);
INSERT INTO `project_document_info` VALUES (85, 'C:\\Users\\hp\\Desktop\\Graduate\\project-management\\out\\artifacts\\project_management_war_exploded\\uploads\\usr41\\5777b18f7bd44c5ea237f750596506e6_项目拓扑图.png', '项目拓扑图.png', 0.73, 41, 37, 0, 'png', 'C:\\Users\\hp\\Desktop\\Graduate\\project-management\\out\\artifacts\\project_management_war_exploded\\uploads\\usr41\\5777b18f7bd44c5ea237f750596506e6_项目拓扑图.png', 0, 1, 'giraffe', '2021-05-20 15:33:25', 'giraffe', '2021-05-20 15:33:25', 0);
INSERT INTO `project_document_info` VALUES (86, 'C:\\Users\\hp\\Desktop\\Graduate\\project-management\\out\\artifacts\\project_management_war_exploded\\uploads\\usr41\\145a12a391a24bc79b0e2f143ea9474f_RPReplay_Final1621351106.mp4', 'RPReplay_Final1621351106.mp4', 0.83, 41, 37, 0, 'mp4', 'C:\\Users\\hp\\Desktop\\Graduate\\project-management\\out\\artifacts\\project_management_war_exploded\\uploads\\usr41\\145a12a391a24bc79b0e2f143ea9474f_RPReplay_Final1621351106.mp4', 0, 1, 'giraffe', '2021-05-20 15:48:07', 'giraffe', '2021-05-20 15:48:07', 0);
INSERT INTO `project_document_info` VALUES (87, 'C:\\Users\\hp\\Desktop\\Graduate\\project-management\\out\\artifacts\\project_management_war_exploded\\uploads\\usr41\\b697de4520fe4b8eb8fa41dc805677c1_smbms.sql', 'smbms.sql', 0.05, 41, 48, 0, 'sql', 'C:\\Users\\hp\\Desktop\\Graduate\\project-management\\out\\artifacts\\project_management_war_exploded\\uploads\\usr41\\b697de4520fe4b8eb8fa41dc805677c1_smbms.sql', 0, 1, 'giraffe', '2021-05-20 16:52:58', 'giraffe', '2021-05-20 16:52:58', 0);
INSERT INTO `project_document_info` VALUES (88, 'C:\\Users\\hp\\Desktop\\Graduate\\project-management\\out\\artifacts\\project_management_war_exploded\\uploads\\usr41\\837172a6be1f4dc3a0596e2992269c0e_linux.docx', 'linux.docx', 0.55, 41, 42, 0, 'docx', 'C:\\Users\\hp\\Desktop\\Graduate\\project-management\\out\\artifacts\\project_management_war_exploded\\uploads\\usr41\\837172a6be1f4dc3a0596e2992269c0e_linux.docx', 0, 1, 'giraffe', '2021-05-20 16:55:58', 'giraffe', '2021-05-20 16:55:58', 0);
INSERT INTO `project_document_info` VALUES (89, 'C:\\Users\\hp\\Desktop\\Graduate\\project-management\\out\\artifacts\\project_management_war_exploded\\uploads\\usr41\\579ddb3808ef4d18a75e36cfef30e29c_MySQL.docx', 'MySQL.docx', 0.01, 41, 42, 0, 'docx', 'C:\\Users\\hp\\Desktop\\Graduate\\project-management\\out\\artifacts\\project_management_war_exploded\\uploads\\usr41\\579ddb3808ef4d18a75e36cfef30e29c_MySQL.docx', 0, 1, 'giraffe', '2021-05-20 17:00:19', 'giraffe', '2021-05-20 17:00:19', 0);
INSERT INTO `project_document_info` VALUES (90, '/Users/Skaura/IdeaProjects/project-management/target/project-management-1.0-SNAPSHOT/uploads/usr49/d106fb3174234e5fbfcd409c5ade8aec_吴卓英毕业设计（论文）中期报告.docx', 'test', 0.02, 49, 50, 0, 'docx', '/Users/Skaura/IdeaProjects/project-management/target/project-management-1.0-SNAPSHOT/uploads/usr49/d106fb3174234e5fbfcd409c5ade8aec_吴卓英毕业设计（论文）中期报告.docx', 0, 1, 'test002', '2021-05-20 18:49:25', 'test002', '2021-05-20 18:55:44', 0);
INSERT INTO `project_document_info` VALUES (91, '/Users/Skaura/IdeaProjects/project-management/target/project-management-1.0-SNAPSHOT/uploads/usr49/bc98adcc325d4fbbaca322431d4a013b____.mp4', 'test', 4.26, 49, 51, 0, 'mp4', '/Users/Skaura/IdeaProjects/project-management/target/project-management-1.0-SNAPSHOT/uploads/usr49/bc98adcc325d4fbbaca322431d4a013b____.mp4', 0, 1, 'test002', '2021-05-20 19:15:48', 'test002', '2021-05-20 19:15:54', 0);
INSERT INTO `project_document_info` VALUES (92, '/Users/Skaura/IdeaProjects/project-management/target/project-management-1.0-SNAPSHOT/uploads/usr49/a1d4bbf408974049b828f876b145a21a_file.jpg', 'file.jpg', 1.45, 49, 50, 0, 'jpg', '/Users/Skaura/IdeaProjects/project-management/target/project-management-1.0-SNAPSHOT/uploads/usr49/a1d4bbf408974049b828f876b145a21a_file.jpg', 0, 1, 'test002', '2021-05-20 19:17:43', 'test002', '2021-05-20 19:17:43', 0);
INSERT INTO `project_document_info` VALUES (93, '/Users/Skaura/IdeaProjects/project-management/target/project-management-1.0-SNAPSHOT/uploads/usr49/96c9a8af6d134801b570fd9faffac11d_IMG_3296.PNG', 'test1', 0.46, 49, 50, 0, 'PNG', '/Users/Skaura/IdeaProjects/project-management/target/project-management-1.0-SNAPSHOT/uploads/usr49/96c9a8af6d134801b570fd9faffac11d_IMG_3296.PNG', 0, 1, 'test002', '2021-05-20 19:19:23', 'test002', '2021-05-20 19:19:30', 0);
INSERT INTO `project_document_info` VALUES (94, '/usr/local/tomcat/webapps/project/uploads/usr51/35993878bcc343f9a2ea3f172ebf7358____.mp4', 'file', 4.26, 51, 52, 0, 'mp4', '/usr/local/tomcat/webapps/project/uploads/usr51/35993878bcc343f9a2ea3f172ebf7358____.mp4', 0, 1, 'test1024', '2021-05-20 19:51:52', 'test1024', '2021-05-20 19:51:52', 0);
INSERT INTO `project_document_info` VALUES (95, 'C:\\Users\\hp\\Desktop\\Graduate\\project-management33\\target\\project-management-1.0-SNAPSHOT\\uploads\\usr48\\e3cd37f20d104480add01c2c458096b2_MySQL.docx', 'file', 0.01, 48, 49, 0, 'docx', 'C:\\Users\\hp\\Desktop\\Graduate\\project-management33\\target\\project-management-1.0-SNAPSHOT\\uploads\\usr48\\e3cd37f20d104480add01c2c458096b2_MySQL.docx', 0, 1, 'test001', '2021-05-20 20:46:07', 'test001', '2021-05-20 20:46:07', 0);
INSERT INTO `project_document_info` VALUES (96, 'C:\\Users\\hp\\Desktop\\Graduate\\project-management33\\target\\project-management-1.0-SNAPSHOT\\uploads\\usr48\\2a768eec7e4f43dca2fcf93952a73930_linux.docx', 'file', 0.55, 48, 49, 0, 'docx', 'C:\\Users\\hp\\Desktop\\Graduate\\project-management33\\target\\project-management-1.0-SNAPSHOT\\uploads\\usr48\\2a768eec7e4f43dca2fcf93952a73930_linux.docx', 0, 1, 'test001', '2021-05-20 20:46:30', 'test001', '2021-05-20 20:46:30', 0);
INSERT INTO `project_document_info` VALUES (97, '/Users/Skaura/IdeaProjects/project-management/target/project-management-1.0-SNAPSHOT/uploads/usr21/8b0fa2ecc9c7460197c9bfd0d0807879____ (4).mp4', 'file', 4.26, 21, 33, 0, 'mp4', '/Users/Skaura/IdeaProjects/project-management/target/project-management-1.0-SNAPSHOT/uploads/usr21/8b0fa2ecc9c7460197c9bfd0d0807879____ (4).mp4', 0, 1, 'tiger', '2021-05-20 20:47:52', 'tiger', '2021-05-20 20:47:52', 0);
INSERT INTO `project_document_info` VALUES (98, '/Users/Skaura/IdeaProjects/project-management/target/project-management-1.0-SNAPSHOT/uploads/usr21/688d3057337f4fa8bcb0db66fd650841____.mp4', 'file', 4.26, 21, 33, 0, 'mp4', '/Users/Skaura/IdeaProjects/project-management/target/project-management-1.0-SNAPSHOT/uploads/usr21/688d3057337f4fa8bcb0db66fd650841____.mp4', 0, 1, 'tiger', '2021-05-20 20:50:09', 'tiger', '2021-05-20 20:50:09', 0);
INSERT INTO `project_document_info` VALUES (99, 'C:\\Users\\hp\\Desktop\\Graduate\\project-management33\\target\\project-management-1.0-SNAPSHOT\\uploads\\usr48\\e439af60208545e1921878d1f6cdcddd_RPReplay_Final1621351106.mp4', 'file', 0.83, 48, 49, 1, 'mp4', 'C:\\Users\\hp\\Desktop\\Graduate\\project-management33\\target\\project-management-1.0-SNAPSHOT\\uploads\\usr48\\e439af60208545e1921878d1f6cdcddd_RPReplay_Final1621351106.mp4', 0, 1, 'test001', '2021-05-20 20:54:31', 'test001', '2021-05-20 20:54:31', 0);
INSERT INTO `project_document_info` VALUES (100, '/Users/Skaura/IdeaProjects/project-management/target/project-management-1.0-SNAPSHOT/uploads/usr21/b2ba7102e600466295a92220e84dcabc____.mp4', '___', 4.26, 21, 16, 0, 'mp4', '/Users/Skaura/IdeaProjects/project-management/target/project-management-1.0-SNAPSHOT/uploads/usr21/b2ba7102e600466295a92220e84dcabc____.mp4', 0, 1, 'tiger', '2021-05-20 20:55:12', 'tiger', '2021-05-20 20:55:12', 0);
INSERT INTO `project_document_info` VALUES (101, '/Users/Skaura/IdeaProjects/project-management/target/project-management-1.0-SNAPSHOT/uploads/usr21/4790b36ab47e40a0b717e33fd38b9fe3____.mp4', '___', 4.26, 21, 33, 0, 'mp4', '/Users/Skaura/IdeaProjects/project-management/target/project-management-1.0-SNAPSHOT/uploads/usr21/4790b36ab47e40a0b717e33fd38b9fe3____.mp4', 0, 1, 'tiger', '2021-05-20 20:55:23', 'tiger', '2021-05-20 20:55:23', 0);
INSERT INTO `project_document_info` VALUES (102, '/Users/Skaura/IdeaProjects/project-management/target/project-management-1.0-SNAPSHOT/uploads/usr21/a2963e940ff4494ba1e95ac1ba1dbfd4_未命名.png', '未命名', 0.11, 21, 33, 0, 'png', '/Users/Skaura/IdeaProjects/project-management/target/project-management-1.0-SNAPSHOT/uploads/usr21/a2963e940ff4494ba1e95ac1ba1dbfd4_未命名.png', 0, 1, 'tiger', '2021-05-20 21:04:58', 'tiger', '2021-05-20 21:04:58', 0);
INSERT INTO `project_document_info` VALUES (103, '/Users/Skaura/IdeaProjects/project-management/target/project-management-1.0-SNAPSHOT/uploads/usr21/3e49aadc06eb438a9b81b3c2880ac9e2_1.XXX毕业设计（论文）中期报告(1).docx', '1', 0.01, 21, 33, 0, 'docx', '/Users/Skaura/IdeaProjects/project-management/target/project-management-1.0-SNAPSHOT/uploads/usr21/3e49aadc06eb438a9b81b3c2880ac9e2_1.XXX毕业设计（论文）中期报告(1).docx', 0, 1, 'tiger', '2021-05-20 21:05:43', 'tiger', '2021-05-20 21:05:43', 0);
INSERT INTO `project_document_info` VALUES (104, '/Users/Skaura/IdeaProjects/project-management/target/project-management-1.0-SNAPSHOT/uploads/usr21/10b767ab17c44e37a7797f0ee30dac3a____.mp4', '___', 4.26, 21, 33, 0, 'mp4', '/Users/Skaura/IdeaProjects/project-management/target/project-management-1.0-SNAPSHOT/uploads/usr21/10b767ab17c44e37a7797f0ee30dac3a____.mp4', 0, 1, 'tiger', '2021-05-20 21:07:31', 'tiger', '2021-05-20 21:07:31', 0);
INSERT INTO `project_document_info` VALUES (105, '/Users/Skaura/IdeaProjects/project-management/target/project-management-1.0-SNAPSHOT/uploads/usr21/141f5bf069314e50949f5c49b303520c_封面.docx', '封面', 0.04, 21, 33, 0, 'docx', '/Users/Skaura/IdeaProjects/project-management/target/project-management-1.0-SNAPSHOT/uploads/usr21/141f5bf069314e50949f5c49b303520c_封面.docx', 0, 1, 'tiger', '2021-05-20 21:07:49', 'tiger', '2021-05-20 21:07:49', 0);
INSERT INTO `project_document_info` VALUES (106, '/Users/Skaura/IdeaProjects/project-management/target/project-management-1.0-SNAPSHOT/uploads/usr21/077c40b806b54a43aff1dca20a27a447_1.XXX毕业设计（论文）中期报告(1).docx', '1', 0.01, 21, 33, 0, 'docx', '/Users/Skaura/IdeaProjects/project-management/target/project-management-1.0-SNAPSHOT/uploads/usr21/077c40b806b54a43aff1dca20a27a447_1.XXX毕业设计（论文）中期报告(1).docx', 0, 1, 'tiger', '2021-05-20 21:08:48', 'tiger', '2021-05-20 21:08:48', 0);
INSERT INTO `project_document_info` VALUES (107, '/usr/local/tomcat/webapps/project/uploads/usr57/4651b6012b004e03a626068c46569d15_三线表.doc', '三线表', 0.01, 57, 56, 0, 'doc', '/usr/local/tomcat/webapps/project/uploads/usr57/4651b6012b004e03a626068c46569d15_三线表.doc', 0, 1, '0101', '2021-05-20 22:04:31', '0101', '2021-05-20 22:04:31', 0);
INSERT INTO `project_document_info` VALUES (108, '/usr/local/tomcat/webapps/project/uploads/usr57/3ba37308ef704408938e417484a32aee_431021199911037546.png', '431021199911037546', 0.42, 57, 57, 0, 'png', '/usr/local/tomcat/webapps/project/uploads/usr57/3ba37308ef704408938e417484a32aee_431021199911037546.png', 0, 1, '0101', '2021-05-20 22:52:24', '0101', '2021-05-20 22:52:24', 0);
INSERT INTO `project_document_info` VALUES (109, 'C:\\Users\\hp\\Desktop\\Graduate\\project-management55\\target\\project-management-1.0-SNAPSHOT\\uploads\\usr34\\c7332e6bad0846de9c66aaa9db22278c_JavaSE核心类库技能考试.docx', 'JavaSE核心类库技能考试', 0.03, 34, 37, 0, 'docx', 'C:\\Users\\hp\\Desktop\\Graduate\\project-management55\\target\\project-management-1.0-SNAPSHOT\\uploads\\usr34\\c7332e6bad0846de9c66aaa9db22278c_JavaSE核心类库技能考试.docx', 0, 1, 'rabbit', '2021-05-21 09:51:46', 'rabbit', '2021-05-21 09:51:46', 0);
INSERT INTO `project_document_info` VALUES (110, 'C:\\Users\\hp\\Desktop\\Graduate\\project-management55\\target\\project-management-1.0-SNAPSHOT\\uploads\\usr63\\52b063ce54ae4f8195086f1464ac468f_JavaSE核心类库技能考试.docx', 'java核心技能考题', 0.03, 63, 59, 1, 'docx', 'C:\\Users\\hp\\Desktop\\Graduate\\project-management55\\target\\project-management-1.0-SNAPSHOT\\uploads\\usr63\\52b063ce54ae4f8195086f1464ac468f_JavaSE核心类库技能考试.docx', 0, 1, '183', '2021-05-21 12:01:20', '183', '2021-05-21 12:11:31', 0);
INSERT INTO `project_document_info` VALUES (111, 'C:\\Users\\hp\\Desktop\\Graduate\\project-management55\\target\\project-management-1.0-SNAPSHOT\\uploads\\usr63\\83f728aa7a1c442fa29478378a48391e_RPReplay_Final1621351106.mp4', '微博视频', 0.83, 63, 59, 0, 'mp4', 'C:\\Users\\hp\\Desktop\\Graduate\\project-management55\\target\\project-management-1.0-SNAPSHOT\\uploads\\usr63\\83f728aa7a1c442fa29478378a48391e_RPReplay_Final1621351106.mp4', 0, 1, '183', '2021-05-21 12:12:20', '183', '2021-05-21 12:16:08', 0);
INSERT INTO `project_document_info` VALUES (112, 'C:\\Users\\hp\\Desktop\\Graduate\\project-management55\\target\\project-management-1.0-SNAPSHOT\\uploads\\usr63\\fd213bf70ff64e43af4f2da4d9e3cae7_favicon.ico.ico', 'favicon', 0.01, 63, 59, 2, 'ico', 'C:\\Users\\hp\\Desktop\\Graduate\\project-management55\\target\\project-management-1.0-SNAPSHOT\\uploads\\usr63\\fd213bf70ff64e43af4f2da4d9e3cae7_favicon.ico.ico', 0, 1, '183', '2021-05-21 12:13:14', '183', '2021-05-21 12:13:14', 0);
INSERT INTO `project_document_info` VALUES (113, 'C:\\Users\\hp\\Desktop\\Graduate\\project-management55\\target\\project-management-1.0-SNAPSHOT\\uploads\\usr63\\118f337154ee4046bdf87372d51996cd_xjpic.jpg', 'xjpic', 0.04, 63, 59, 0, 'jpg', 'C:\\Users\\hp\\Desktop\\Graduate\\project-management55\\target\\project-management-1.0-SNAPSHOT\\uploads\\usr63\\118f337154ee4046bdf87372d51996cd_xjpic.jpg', 0, 1, '183', '2021-05-21 12:18:36', '183', '2021-05-21 12:18:36', 0);
INSERT INTO `project_document_info` VALUES (114, '/Users/Skaura/IdeaProjects/project-management/target/project-management-1.0-SNAPSHOT/uploads/usr66/b206e9c671c64ced8b7fd64f35b9416c_三线表.doc', '三线表', 0.01, 66, 60, 0, 'doc', '/Users/Skaura/IdeaProjects/project-management/target/project-management-1.0-SNAPSHOT/uploads/usr66/b206e9c671c64ced8b7fd64f35b9416c_三线表.doc', 0, 1, 'test6666', '2021-05-21 12:23:49', 'test6666', '2021-05-21 12:23:49', 0);
INSERT INTO `project_document_info` VALUES (115, '/Users/Skaura/IdeaProjects/project-management/target/project-management-1.0-SNAPSHOT/uploads/usr66/d33cfa4585b745f6856b78beaad0abf5_三线表 (1).doc', '三线表 (1)', 0.01, 66, 60, 0, 'doc', '/Users/Skaura/IdeaProjects/project-management/target/project-management-1.0-SNAPSHOT/uploads/usr66/d33cfa4585b745f6856b78beaad0abf5_三线表 (1).doc', 0, 1, 'test6666', '2021-05-21 12:25:21', 'test6666', '2021-05-21 12:25:21', 0);
INSERT INTO `project_document_info` VALUES (116, '/Users/Skaura/IdeaProjects/project-management/target/project-management-1.0-SNAPSHOT/uploads/usr66/83a556b6821d45d59555dcaf82353b63____.mp4', '___', 4.26, 66, 60, 0, 'mp4', '/Users/Skaura/IdeaProjects/project-management/target/project-management-1.0-SNAPSHOT/uploads/usr66/83a556b6821d45d59555dcaf82353b63____.mp4', 0, 1, 'test6666', '2021-05-21 12:28:28', 'test6666', '2021-05-21 12:28:28', 0);
INSERT INTO `project_document_info` VALUES (117, '/Users/Skaura/IdeaProjects/project-management/target/project-management-1.0-SNAPSHOT/uploads/usr54/22534c4e96ce4ad6a5365006d3eb9395_未命名.png', '未命名', 0.11, 54, 60, 0, 'png', '/Users/Skaura/IdeaProjects/project-management/target/project-management-1.0-SNAPSHOT/uploads/usr54/22534c4e96ce4ad6a5365006d3eb9395_未命名.png', 0, 1, 'test12345', '2021-05-21 12:28:49', 'test12345', '2021-05-21 12:28:49', 0);
INSERT INTO `project_document_info` VALUES (118, 'C:\\Users\\hp\\Desktop\\Graduate\\project-management66\\target\\project-management-1.0-SNAPSHOT\\uploads\\usr69\\cc419fbc35b2459abe6325bf88ef3666_favicon.ico', '全部', 0.01, 69, 63, 2, 'ico', 'C:\\Users\\hp\\Desktop\\Graduate\\project-management66\\target\\project-management-1.0-SNAPSHOT\\uploads\\usr69\\cc419fbc35b2459abe6325bf88ef3666_favicon.ico', 0, 1, 'test741', '2021-05-21 23:40:44', 'test741', '2021-05-21 23:42:49', 1);
INSERT INTO `project_document_info` VALUES (119, 'C:\\Users\\hp\\Desktop\\Graduate\\project-management66\\target\\project-management-1.0-SNAPSHOT\\uploads\\usr71\\c1dd065f1e4c4fc7bef5bab0cabb6726_list.html.html', 'list', 0.01, 71, 63, 2, 'html', 'C:\\Users\\hp\\Desktop\\Graduate\\project-management66\\target\\project-management-1.0-SNAPSHOT\\uploads\\usr71\\c1dd065f1e4c4fc7bef5bab0cabb6726_list.html.html', 1, 1, 'test963', '2021-05-21 23:43:50', 'test963', '2021-05-22 00:37:07', 0);
INSERT INTO `project_document_info` VALUES (120, 'C:\\Users\\hp\\Desktop\\Graduate\\project-management66\\target\\project-management-1.0-SNAPSHOT\\uploads\\usr71\\4e3d43d5fb5b45a4a572b944ca52ecb2_RPReplay_Final1621351106.mp4', 'RPReplay_Final1621351106', 0.83, 71, 63, 1, 'mp4', 'C:\\Users\\hp\\Desktop\\Graduate\\project-management66\\target\\project-management-1.0-SNAPSHOT\\uploads\\usr71\\4e3d43d5fb5b45a4a572b944ca52ecb2_RPReplay_Final1621351106.mp4', 0, 1, 'test963', '2021-05-21 23:47:51', 'test963', '2021-05-21 23:47:51', 1);
INSERT INTO `project_document_info` VALUES (121, 'C:\\Users\\hp\\Desktop\\Graduate\\project-management66\\target\\project-management-1.0-SNAPSHOT\\uploads\\usr69\\7020b98b4cd048c1888e4c58d664dd4b_timg.jpg', 'timg', 0.04, 69, 63, 1, 'jpg', 'C:\\Users\\hp\\Desktop\\Graduate\\project-management66\\target\\project-management-1.0-SNAPSHOT\\uploads\\usr69\\7020b98b4cd048c1888e4c58d664dd4b_timg.jpg', 0, 1, 'test741', '2021-05-22 07:48:06', 'test741', '2021-05-22 07:48:06', 0);
COMMIT;

-- ----------------------------
-- Table structure for project_group
-- ----------------------------
DROP TABLE IF EXISTS `project_group`;
CREATE TABLE `project_group` (
  `id` bigint(15) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `group_name` varchar(50) NOT NULL COMMENT '组织名称',
  `group_avatar` varchar(50) NOT NULL COMMENT '头像',
  `description` varchar(100) NOT NULL COMMENT '描述',
  `owner_user_id` varchar(50) NOT NULL COMMENT '拥有者',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '逻辑删除标志 1：已删除， 0：未删除，默认0',
  `version` int(11) NOT NULL DEFAULT '1' COMMENT '版本号',
  `created_by` varchar(50) NOT NULL DEFAULT 'sys' COMMENT '创建人',
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_modified_by` varchar(50) NOT NULL DEFAULT 'sys' COMMENT '更新人',
  `last_modified_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='项目管理-组织表';

-- ----------------------------
-- Records of project_group
-- ----------------------------
BEGIN;
INSERT INTO `project_group` VALUES (1, '峨眉山开发组', '0', '专注峨眉开发', '21', 0, 1, 'sys', '2021-04-22 14:28:43', 'sys', '2021-04-22 14:28:43');
INSERT INTO `project_group` VALUES (2, '光明顶开发组', '1', '专注光头开发', '21', 0, 1, 'sys', '2021-04-22 14:29:10', 'sys', '2021-04-22 14:29:10');
COMMIT;

-- ----------------------------
-- Table structure for project_group_member
-- ----------------------------
DROP TABLE IF EXISTS `project_group_member`;
CREATE TABLE `project_group_member` (
  `id` bigint(15) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `group_id` varchar(50) NOT NULL COMMENT '组织id',
  `user_id` varchar(50) NOT NULL COMMENT '成员id',
  `join_time` datetime NOT NULL COMMENT '加入时间',
  `is_owner` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1:拥有者 0:普通',
  `authorize` varchar(50) NOT NULL COMMENT '角色',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '逻辑删除标志 1：已删除， 0：未删除，默认0',
  `version` int(11) NOT NULL DEFAULT '1' COMMENT '版本号',
  `created_by` varchar(50) NOT NULL DEFAULT 'sys' COMMENT '创建人',
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_modified_by` varchar(50) NOT NULL DEFAULT 'sys' COMMENT '更新人',
  `last_modified_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='项目管理-组织-成员表';

-- ----------------------------
-- Records of project_group_member
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for project_info
-- ----------------------------
DROP TABLE IF EXISTS `project_info`;
CREATE TABLE `project_info` (
  `id` bigint(15) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) NOT NULL COMMENT '名称',
  `description` varchar(50) NOT NULL COMMENT '描述',
  `access_control_type` int(11) NOT NULL DEFAULT '2' COMMENT '访问控制类型 0:open, 1:private, 2:custom',
  `is_private` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否私有 1:是 0:否',
  `open_prefix` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否开启项目前缀 1:是 0:否',
  `archive` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否归档 1:是 0:否',
  `archive_time` datetime DEFAULT NULL COMMENT '归档时间',
  `begin_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '项目开始日期',
  `end_time` datetime NOT NULL COMMENT '项目截止日期',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '逻辑删除标志 1：已删除， 0：未删除，默认0',
  `version` int(11) NOT NULL DEFAULT '1' COMMENT '版本号',
  `created_by` varchar(50) NOT NULL DEFAULT 'sys' COMMENT '创建人',
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_modified_by` varchar(50) NOT NULL DEFAULT 'sys' COMMENT '更新人',
  `last_modified_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='文档信息';

-- ----------------------------
-- Records of project_info
-- ----------------------------
BEGIN;
INSERT INTO `project_info` VALUES (1, 'afssf', 'afsaf', 2, 1, 0, 0, NULL, '2021-03-16 11:02:44', '2021-03-10 11:03:07', 1, 1, 'sys', '2021-03-29 11:03:13', 'sys', '2021-04-25 09:50:23');
INSERT INTO `project_info` VALUES (2, 'pdd1', '123', 0, 0, 0, 0, NULL, '2021-04-22 17:50:39', '2021-04-01 00:00:00', 0, 1, 'tiger', '2021-04-22 17:50:39', 'tiger', '2021-04-22 17:50:39');
INSERT INTO `project_info` VALUES (3, 'pdd1', '123', 0, 0, 0, 0, NULL, '2021-04-22 17:58:15', '2021-04-03 00:00:00', 0, 1, 'tiger', '2021-04-22 17:58:15', 'tiger', '2021-04-22 17:58:15');
INSERT INTO `project_info` VALUES (4, '九阴白骨爪', '至阴真经', 0, 0, 0, 0, NULL, '2021-04-22 18:04:02', '2021-04-01 00:00:00', 0, 1, 'tiger', '2021-04-22 18:04:02', 'tiger', '2021-04-22 18:04:02');
INSERT INTO `project_info` VALUES (5, '李欢', '123', 0, 0, 0, 0, NULL, '2021-04-22 18:06:02', '2021-04-01 00:00:00', 0, 1, 'tiger', '2021-04-22 18:06:02', 'tiger', '2021-04-22 18:06:02');
INSERT INTO `project_info` VALUES (6, '李欢', '123', 0, 0, 0, 0, NULL, '2021-04-22 18:08:28', '2021-04-01 00:00:00', 1, 1, 'tiger', '2021-04-22 18:08:28', 'tiger', '2021-04-25 09:55:42');
INSERT INTO `project_info` VALUES (7, '1106842466', '至阴真经', 0, 0, 0, 0, NULL, '2021-04-23 17:30:24', '2021-04-01 00:00:00', 0, 1, 'tiger', '2021-04-23 17:30:24', 'tiger', '2021-04-23 17:30:24');
INSERT INTO `project_info` VALUES (8, '九阴白骨爪', '九阴真经', 0, 0, 0, 1, '2021-04-25 02:11:51', '2021-04-23 17:31:32', '2021-04-03 00:00:00', 1, 1, 'tiger', '2021-04-23 17:31:32', 'tiger', '2021-04-25 10:11:54');
INSERT INTO `project_info` VALUES (9, '天天向上', '誓死捍卫学习权利', 0, 0, 1, 0, NULL, '2021-04-25 09:56:14', '2021-04-01 00:00:00', 1, 1, 'tiger', '2021-04-25 09:56:14', 'tiger', '2021-04-25 10:20:31');
INSERT INTO `project_info` VALUES (10, '李欢', '123', 0, 0, 0, 1, '2021-04-25 06:41:29', '2021-04-25 10:14:39', '2021-04-10 00:00:00', 1, 1, 'tiger', '2021-04-25 10:14:39', 'tiger', '2021-04-25 14:46:26');
INSERT INTO `project_info` VALUES (11, '李欢', '至阴真经', 0, 0, 0, 0, NULL, '2021-04-25 10:20:38', '2021-04-09 00:00:00', 1, 1, 'tiger', '2021-04-25 10:20:38', 'tiger', '2021-04-25 10:20:41');
INSERT INTO `project_info` VALUES (12, '1106842466', '九阴真经', 0, 0, 0, 0, NULL, '2021-04-25 10:20:52', '2021-04-10 00:00:00', 1, 1, 'tiger', '2021-04-25 10:20:52', 'tiger', '2021-04-25 10:20:58');
INSERT INTO `project_info` VALUES (13, 'pdd1', '至阴真经', 0, 0, 0, 1, '2021-04-25 06:52:55', '2021-04-25 10:21:49', '2021-04-17 00:00:00', 1, 1, 'tiger', '2021-04-25 10:21:49', 'tiger', '2021-05-05 16:07:36');
INSERT INTO `project_info` VALUES (14, 'pdd1', '至阴真经', 0, 0, 0, 1, '2021-04-25 06:56:20', '2021-04-25 14:56:15', '2021-04-01 00:00:00', 1, 1, 'tiger', '2021-04-25 14:56:15', 'tiger', '2021-05-05 16:08:00');
INSERT INTO `project_info` VALUES (15, '2', '3', 0, 0, 0, 1, '2021-05-05 08:08:28', '2021-04-25 16:17:03', '2021-04-15 00:00:00', 1, 1, 'tiger', '2021-04-25 16:17:03', 'tiger', '2021-05-18 01:17:19');
INSERT INTO `project_info` VALUES (16, '2', '3', 0, 0, 0, 0, NULL, '2021-04-25 16:18:15', '2021-04-13 00:00:00', 0, 1, 'tiger', '2021-04-25 16:18:15', 'tiger', '2021-04-25 16:18:15');
INSERT INTO `project_info` VALUES (17, '如来神掌', '一招从天而降的掌法', 0, 0, 0, 1, '2021-05-05 07:57:24', '2021-04-25 16:18:50', '2021-04-01 00:00:00', 0, 1, 'tiger', '2021-04-25 16:18:50', 'tiger', '2021-05-05 15:57:23');
INSERT INTO `project_info` VALUES (18, '返老还童术', '吃脑白金', 0, 0, 0, 0, NULL, '2021-05-17 15:44:57', '2021-05-01 00:00:00', 0, 1, '李四', '2021-05-17 15:44:57', '李四', '2021-05-17 15:44:57');
INSERT INTO `project_info` VALUES (19, '无敌', '史蒂夫', 0, 0, 0, 0, NULL, '2021-05-17 16:01:35', '2021-05-01 00:00:00', 0, 1, '李四', '2021-05-17 16:01:35', '李四', '2021-05-17 16:01:35');
INSERT INTO `project_info` VALUES (20, '是发', '是', 0, 0, 0, 0, NULL, '2021-05-17 16:06:59', '2021-05-20 00:00:00', 0, 1, '李四', '2021-05-17 16:06:59', '李四', '2021-05-17 16:06:59');
INSERT INTO `project_info` VALUES (21, 'wudisaf ', 'sfdsdgdfg', 0, 0, 0, 0, NULL, '2021-05-17 21:00:02', '2021-05-01 00:00:00', 0, 1, '李四', '2021-05-17 21:00:02', '李四', '2021-05-17 21:00:02');
INSERT INTO `project_info` VALUES (22, '无敌', '如此', 0, 1, 0, 0, NULL, '2021-05-17 21:07:56', '2021-05-17 00:00:00', 0, 1, '李四', '2021-05-17 21:07:56', '李四', '2021-05-17 21:07:56');
INSERT INTO `project_info` VALUES (23, '哇算法', '我啊', 0, 0, 0, 0, NULL, '2021-05-17 21:09:18', '2021-05-27 00:00:00', 0, 1, '李四', '2021-05-17 21:09:18', '李四', '2021-05-17 21:09:18');
INSERT INTO `project_info` VALUES (24, 'ruci', 'sfs', 0, 0, 0, 0, NULL, '2021-05-17 21:16:19', '2021-04-30 00:00:00', 0, 1, '李四', '2021-05-17 21:16:19', '李四', '2021-05-17 21:16:19');
INSERT INTO `project_info` VALUES (25, 'rh hd', 'dhf ', 0, 0, 0, 0, NULL, '2021-05-17 21:19:59', '2021-05-15 00:00:00', 0, 1, '李四', '2021-05-17 21:19:59', '李四', '2021-05-17 21:19:59');
INSERT INTO `project_info` VALUES (26, '第三方', '史蒂夫', 0, 0, 0, 0, NULL, '2021-05-17 21:42:55', '2021-05-05 00:00:00', 0, 1, '李四', '2021-05-17 21:42:55', '李四', '2021-05-17 21:42:55');
INSERT INTO `project_info` VALUES (27, '的v分', '第三方', 0, 0, 0, 0, NULL, '2021-05-17 21:43:27', '2021-05-12 00:00:00', 0, 1, '李四', '2021-05-17 21:43:27', '李四', '2021-05-17 21:43:27');
INSERT INTO `project_info` VALUES (28, '史蒂夫', '但是', 0, 0, 0, 0, NULL, '2021-05-17 21:49:28', '2021-05-25 00:00:00', 0, 1, '李四', '2021-05-17 21:49:28', '李四', '2021-05-17 21:49:28');
INSERT INTO `project_info` VALUES (29, '九阴真经', '九阴白骨爪', 0, 0, 0, 0, NULL, '2021-05-17 22:09:51', '2021-05-07 00:00:00', 0, 1, '李四', '2021-05-17 22:09:51', '李四', '2021-05-17 22:09:51');
INSERT INTO `project_info` VALUES (30, '天龙八部', '九阴真经', 0, 1, 0, 0, NULL, '2021-05-17 22:11:46', '2021-05-07 00:00:00', 0, 1, '李四', '2021-05-17 22:11:46', '李四', '2021-05-17 22:11:46');
INSERT INTO `project_info` VALUES (31, '降龙十八掌', '十多个是', 0, 0, 0, 0, NULL, '2021-05-17 22:28:46', '2021-05-06 00:00:00', 0, 1, '李四', '2021-05-17 22:28:46', '李四', '2021-05-17 22:28:46');
INSERT INTO `project_info` VALUES (32, '十多个是', '十多个', 0, 0, 0, 0, NULL, '2021-05-17 22:32:22', '2021-05-15 00:00:00', 0, 1, '李四', '2021-05-17 22:32:22', '李四', '2021-05-17 22:32:22');
INSERT INTO `project_info` VALUES (33, '舒服舒服', '史蒂夫', 0, 0, 0, 1, '2021-05-17 17:12:06', '2021-05-17 22:34:19', '2021-05-14 00:00:00', 0, 1, 'tiger', '2021-05-17 22:34:19', 'tiger', '2021-05-18 01:12:06');
INSERT INTO `project_info` VALUES (34, 'sdge v', 'dg d', 0, 0, 0, 0, NULL, '2021-05-18 15:48:54', '2021-05-01 00:00:00', 0, 1, 'sdg s ', '2021-05-18 15:48:54', 'sdg s ', '2021-05-18 15:48:54');
INSERT INTO `project_info` VALUES (35, '实打实的反攻倒算', '十多个是是', 0, 0, 0, 0, NULL, '2021-05-18 15:50:34', '2021-05-19 00:00:00', 0, 1, 'duck', '2021-05-18 15:50:34', 'duck', '2021-05-18 15:50:34');
INSERT INTO `project_info` VALUES (36, '微信小程序-跳一跳', '风靡全球', 0, 0, 0, 0, NULL, '2021-05-18 16:05:03', '2021-08-19 00:00:00', 0, 1, 'duck', '2021-05-18 16:05:03', 'duck', '2021-05-18 16:05:03');
INSERT INTO `project_info` VALUES (37, '桃花手游', '休闲娱乐', 0, 0, 0, 0, NULL, '2021-05-18 16:41:52', '2023-05-18 00:00:00', 0, 1, 'rabbit', '2021-05-18 16:41:52', 'rabbit', '2021-05-18 16:41:52');
INSERT INTO `project_info` VALUES (38, '我暗示法', '萨芬', 0, 0, 0, 0, NULL, '2021-05-19 15:37:02', '2021-04-28 00:00:00', 0, 1, '柴犬', '2021-05-19 15:37:02', '柴犬', '2021-05-19 15:37:02');
INSERT INTO `project_info` VALUES (39, '求职网的设计与实现', '求职招聘', 0, 0, 0, 0, NULL, '2021-05-19 16:58:15', '2021-05-19 00:00:00', 0, 1, 'pig', '2021-05-19 16:58:15', 'pig', '2021-05-19 16:58:15');
INSERT INTO `project_info` VALUES (40, '求职网的设计与实现', '求职招聘', 0, 0, 0, 0, NULL, '2021-05-19 16:58:16', '2021-05-19 00:00:00', 0, 1, 'pig', '2021-05-19 16:58:16', 'pig', '2021-05-19 16:58:16');
INSERT INTO `project_info` VALUES (41, 'sdf sfd ', 'sdf sf ', 0, 0, 0, 0, NULL, '2021-05-19 16:59:22', '2021-05-08 00:00:00', 0, 1, '柴犬', '2021-05-19 16:59:22', '柴犬', '2021-05-19 16:59:22');
INSERT INTO `project_info` VALUES (42, '易水寒', '捏脸游戏', 0, 0, 0, 0, NULL, '2021-05-19 21:46:53', '2023-05-11 00:00:00', 0, 1, 'rabbit', '2021-05-19 21:46:53', 'rabbit', '2021-05-19 21:46:53');
INSERT INTO `project_info` VALUES (43, '史蒂夫收到', '史蒂夫', 0, 0, 0, 0, NULL, '2021-05-19 21:51:59', '2021-05-05 00:00:00', 0, 1, 'full', '2021-05-19 21:51:59', 'full', '2021-05-19 21:51:59');
INSERT INTO `project_info` VALUES (44, 'test11', '舒服的闪光点', 0, 0, 0, 0, NULL, '2021-05-19 21:55:39', '2021-05-20 00:00:00', 0, 1, 'rabbit', '2021-05-19 21:55:39', 'rabbit', '2021-05-19 21:55:39');
INSERT INTO `project_info` VALUES (45, 'test124124', '123', 0, 0, 0, 0, NULL, '2021-05-19 21:58:24', '2021-05-28 00:00:00', 0, 1, 'rabbit', '2021-05-19 21:58:24', 'rabbit', '2021-05-19 21:58:24');
INSERT INTO `project_info` VALUES (46, 'teststsetestset', 'sdgdfgd', 0, 0, 0, 0, NULL, '2021-05-19 22:02:55', '2021-05-14 00:00:00', 0, 1, 'full', '2021-05-19 22:02:55', 'full', '2021-05-19 22:02:55');
INSERT INTO `project_info` VALUES (47, 'tsedfggdfgd', 'adasf', 0, 0, 0, 0, NULL, '2021-05-19 22:05:16', '2021-05-06 00:00:00', 0, 1, '1234', '2021-05-19 22:05:16', '1234', '2021-05-19 22:05:16');
INSERT INTO `project_info` VALUES (48, '明日之后2.0', '生存', 0, 0, 0, 0, NULL, '2021-05-19 22:34:39', '2022-05-19 00:00:00', 0, 1, '12344', '2021-05-19 22:34:39', '12344', '2021-05-19 22:34:39');
INSERT INTO `project_info` VALUES (49, 'sfdsfs', 'sdfsdf', 0, 0, 0, 0, NULL, '2021-05-20 13:27:41', '2021-05-13 00:00:00', 0, 1, 'test001', '2021-05-20 13:27:41', 'test001', '2021-05-20 13:27:41');
INSERT INTO `project_info` VALUES (50, 'estst', 'setest', 0, 0, 0, 0, NULL, '2021-05-20 18:49:18', '2021-05-05 00:00:00', 0, 1, 'test002', '2021-05-20 18:49:18', 'test002', '2021-05-20 18:49:18');
INSERT INTO `project_info` VALUES (51, 'd', 'd', 0, 0, 0, 0, NULL, '2021-05-20 19:14:07', '2021-04-30 00:00:00', 0, 1, 'test002', '2021-05-20 19:14:07', 'test002', '2021-05-20 19:14:07');
INSERT INTO `project_info` VALUES (52, 'tetsdgdg', 'sdgdfg', 0, 0, 0, 0, NULL, '2021-05-20 19:48:54', '2021-04-30 00:00:00', 0, 1, 'tiger', '2021-05-20 19:48:54', 'tiger', '2021-05-20 19:48:54');
INSERT INTO `project_info` VALUES (53, 'jsdgfdfbgdifhgfkg', '6hfgh', 0, 0, 0, 0, NULL, '2021-05-20 20:42:06', '2021-05-15 00:00:00', 0, 1, 'tiger', '2021-05-20 20:42:06', 'tiger', '2021-05-20 20:42:06');
INSERT INTO `project_info` VALUES (54, 'testsgdfhdfgh', 'dfgfd', 0, 0, 0, 0, NULL, '2021-05-20 20:46:16', '2021-04-30 00:00:00', 0, 1, 'tiger', '2021-05-20 20:46:16', 'tiger', '2021-05-20 20:46:16');
INSERT INTO `project_info` VALUES (55, 'trdtdtd', 'fhgfh', 0, 0, 0, 0, NULL, '2021-05-20 20:46:39', '2021-05-14 00:00:00', 0, 1, 'tiger', '2021-05-20 20:46:39', 'tiger', '2021-05-20 20:46:39');
INSERT INTO `project_info` VALUES (56, 'pkjpjpjdopfg', 'dfigjodfg', 0, 0, 0, 0, NULL, '2021-05-20 22:04:23', '2021-05-14 08:00:00', 0, 1, '0101', '2021-05-20 22:04:23', '0101', '2021-05-20 22:04:23');
INSERT INTO `project_info` VALUES (57, 'BOSS直聘、前程无忧、智联招聘', 'liuliuliu', 0, 0, 0, 0, NULL, '2021-05-20 22:51:47', '2021-05-24 08:00:00', 0, 1, '0101', '2021-05-20 22:51:47', '0101', '2021-05-20 22:51:47');
INSERT INTO `project_info` VALUES (58, '史蒂夫对方的时光', '电饭锅的', 0, 0, 0, 0, NULL, '2021-05-21 09:51:41', '2021-05-13 08:00:00', 0, 1, '0101', '2021-05-21 09:51:41', '0101', '2021-05-21 09:51:41');
INSERT INTO `project_info` VALUES (59, '易送外卖平台2.0', '快准狠', 0, 0, 0, 0, NULL, '2021-05-21 12:00:20', '2022-07-15 08:00:00', 0, 1, '183', '2021-05-21 12:00:20', '183', '2021-05-21 12:00:20');
INSERT INTO `project_info` VALUES (60, 'sdfsf', 'sdfsf', 0, 0, 0, 0, NULL, '2021-05-21 12:23:44', '2021-05-13 08:00:00', 0, 1, 'test6666', '2021-05-21 12:23:44', 'test6666', '2021-05-21 12:23:44');
INSERT INTO `project_info` VALUES (61, '御剑红尘', '手游', 0, 0, 0, 0, NULL, '2021-05-21 23:34:22', '2024-05-21 08:00:00', 0, 1, 'test1', '2021-05-21 23:34:22', 'test1', '2021-05-21 23:34:22');
INSERT INTO `project_info` VALUES (62, '御剑红尘', '手游', 0, 0, 0, 0, NULL, '2021-05-21 23:34:23', '2024-05-21 08:00:00', 1, 1, 'test1', '2021-05-21 23:34:23', 'test1', '2021-05-21 23:36:43');
INSERT INTO `project_info` VALUES (63, '桃花手游2.0', '手游', 0, 0, 0, 0, NULL, '2021-05-21 23:40:12', '2022-05-20 08:00:00', 0, 1, 'test741', '2021-05-21 23:40:12', 'test741', '2021-05-21 23:40:12');
COMMIT;

-- ----------------------------
-- Table structure for project_member
-- ----------------------------
DROP TABLE IF EXISTS `project_member`;
CREATE TABLE `project_member` (
  `id` bigint(15) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `project_id` bigint(15) NOT NULL COMMENT '项目id',
  `user_id` bigint(15) NOT NULL COMMENT '成员id',
  `join_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '加入时间',
  `is_owner` int(11) NOT NULL DEFAULT '-1' COMMENT '拥有者',
  `authorize` varchar(50) NOT NULL COMMENT '角色',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '逻辑删除标志 1：已删除， 0：未删除，默认0',
  `version` int(11) NOT NULL DEFAULT '1' COMMENT '版本号',
  `created_by` varchar(50) NOT NULL DEFAULT 'sys' COMMENT '创建人',
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_modified_by` varchar(50) NOT NULL DEFAULT 'sys' COMMENT '更新人',
  `last_modified_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='项目管理-项目-成员表';

-- ----------------------------
-- Records of project_member
-- ----------------------------
BEGIN;
INSERT INTO `project_member` VALUES (1, 1, 21, '2021-01-01 00:00:00', -1, '1', 0, 1, 'sys', '2021-04-01 16:45:21', 'sys', '2021-04-02 11:16:15');
INSERT INTO `project_member` VALUES (2, 6, 21, '2021-04-22 18:08:28', 1, '1', 0, 1, 'sys', '2021-04-22 18:08:28', 'sys', '2021-04-22 18:08:28');
INSERT INTO `project_member` VALUES (3, 8, 21, '2021-04-23 17:31:32', 1, '1', 1, 1, 'tiger', '2021-04-23 17:31:32', 'tiger', '2021-04-25 10:11:55');
INSERT INTO `project_member` VALUES (4, 9, 21, '2021-04-25 09:56:14', 1, '1', 1, 1, 'tiger', '2021-04-25 09:56:14', 'tiger', '2021-04-25 10:20:31');
INSERT INTO `project_member` VALUES (5, 10, 21, '2021-04-25 10:14:39', 1, '1', 1, 1, 'tiger', '2021-04-25 10:14:39', 'tiger', '2021-04-25 14:46:26');
INSERT INTO `project_member` VALUES (6, 11, 21, '2021-04-25 10:20:38', 1, '1', 1, 1, 'tiger', '2021-04-25 10:20:38', 'tiger', '2021-04-25 10:20:41');
INSERT INTO `project_member` VALUES (7, 12, 21, '2021-04-25 10:20:52', 1, '1', 1, 1, 'tiger', '2021-04-25 10:20:52', 'tiger', '2021-04-25 10:20:58');
INSERT INTO `project_member` VALUES (8, 13, 21, '2021-04-25 10:21:49', 1, '1', 1, 1, 'tiger', '2021-04-25 10:21:49', 'tiger', '2021-05-05 16:07:36');
INSERT INTO `project_member` VALUES (9, 14, 21, '2021-04-25 14:56:15', 1, '1', 1, 1, 'tiger', '2021-04-25 14:56:15', 'tiger', '2021-05-05 16:08:00');
INSERT INTO `project_member` VALUES (10, 15, 21, '2021-04-25 16:17:03', 1, '1', 1, 1, 'tiger', '2021-04-25 16:17:03', 'tiger', '2021-05-18 01:17:20');
INSERT INTO `project_member` VALUES (11, 16, 21, '2021-04-25 16:18:15', 1, '1', 0, 1, 'tiger', '2021-04-25 16:18:15', 'tiger', '2021-04-25 16:18:15');
INSERT INTO `project_member` VALUES (12, 17, 21, '2021-04-25 16:18:50', 1, '1', 0, 1, 'tiger', '2021-04-25 16:18:50', 'tiger', '2021-04-25 16:18:50');
INSERT INTO `project_member` VALUES (13, 15, 22, '2021-05-14 08:24:46', 0, '3', 0, 1, 'tiger', '2021-05-14 16:24:46', 'tiger', '2021-05-14 16:24:46');
INSERT INTO `project_member` VALUES (20, 15, 23, '2021-05-15 07:38:11', 0, '2', 0, 1, 'tiger', '2021-05-15 15:38:11', 'tiger', '2021-05-15 15:38:11');
INSERT INTO `project_member` VALUES (22, 20, 24, '2021-05-17 16:06:59', 1, '1', 1, 1, '李四', '2021-05-17 16:06:59', '李四', '2021-05-17 16:08:09');
INSERT INTO `project_member` VALUES (23, 21, 24, '2021-05-17 21:01:26', 1, '1', 0, 1, '李四', '2021-05-17 21:01:26', '李四', '2021-05-17 21:01:26');
INSERT INTO `project_member` VALUES (24, 22, 24, '2021-05-17 21:07:56', 1, '1', 0, 1, '李四', '2021-05-17 21:07:56', '李四', '2021-05-17 21:07:56');
INSERT INTO `project_member` VALUES (25, 23, 24, '2021-05-17 21:09:25', 1, '1', 0, 1, '李四', '2021-05-17 21:09:25', '李四', '2021-05-17 21:09:25');
INSERT INTO `project_member` VALUES (26, 24, 24, '2021-05-17 21:16:19', 1, '1', 0, 1, '李四', '2021-05-17 21:16:19', '李四', '2021-05-17 21:16:19');
INSERT INTO `project_member` VALUES (27, 25, 24, '2021-05-17 21:19:59', 1, '1', 0, 1, '李四', '2021-05-17 21:19:59', '李四', '2021-05-17 21:19:59');
INSERT INTO `project_member` VALUES (28, 26, 24, '2021-05-17 21:42:55', 1, '1', 0, 1, '李四', '2021-05-17 21:42:55', '李四', '2021-05-17 21:42:55');
INSERT INTO `project_member` VALUES (29, 27, 24, '2021-05-17 21:43:27', 1, '1', 0, 1, '李四', '2021-05-17 21:43:27', '李四', '2021-05-17 21:43:27');
INSERT INTO `project_member` VALUES (30, 28, 24, '2021-05-17 21:49:28', 1, '1', 0, 1, '李四', '2021-05-17 21:49:28', '李四', '2021-05-17 21:49:28');
INSERT INTO `project_member` VALUES (31, 29, 24, '2021-05-17 22:09:51', 1, '1', 0, 1, '李四', '2021-05-17 22:09:51', '李四', '2021-05-17 22:09:51');
INSERT INTO `project_member` VALUES (32, 30, 24, '2021-05-17 22:11:54', 1, '1', 0, 1, '李四', '2021-05-17 22:11:54', '李四', '2021-05-17 22:11:54');
INSERT INTO `project_member` VALUES (33, 31, 24, '2021-05-17 22:28:46', 1, '1', 0, 1, '李四', '2021-05-17 22:28:46', '李四', '2021-05-17 22:28:46');
INSERT INTO `project_member` VALUES (34, 32, 24, '2021-05-17 22:32:22', 1, '1', 0, 1, '李四', '2021-05-17 22:32:22', '李四', '2021-05-17 22:32:22');
INSERT INTO `project_member` VALUES (35, 33, 21, '2021-05-17 22:34:19', 1, '1', 0, 1, 'tiger', '2021-05-17 22:34:19', 'tiger', '2021-05-17 22:34:19');
INSERT INTO `project_member` VALUES (36, 33, 23, '2021-05-17 14:35:45', 0, '2', 1, 1, 'tiger', '2021-05-17 22:35:45', 'tiger', '2021-05-22 08:46:00');
INSERT INTO `project_member` VALUES (37, 33, 24, '2021-05-17 14:37:03', 0, '3', 1, 1, 'tiger', '2021-05-17 22:37:03', 'tiger', '2021-05-17 22:44:50');
INSERT INTO `project_member` VALUES (38, 33, 25, '2021-05-17 14:38:06', 0, '3', 1, 1, 'tiger', '2021-05-17 22:38:06', 'tiger', '2021-05-17 22:42:57');
INSERT INTO `project_member` VALUES (39, 33, 24, '2021-05-17 14:50:03', 0, '3', 1, 1, '张三', '2021-05-17 22:50:03', '张三', '2021-05-17 23:19:47');
INSERT INTO `project_member` VALUES (40, 34, 32, '2021-05-18 15:48:54', 1, '1', 0, 1, 'sdg s ', '2021-05-18 15:48:54', 'sdg s ', '2021-05-18 15:48:54');
INSERT INTO `project_member` VALUES (41, 35, 33, '2021-05-18 15:50:34', 1, '1', 0, 1, 'duck', '2021-05-18 15:50:34', 'duck', '2021-05-18 15:50:34');
INSERT INTO `project_member` VALUES (42, 33, 33, '2021-05-18 07:59:03', 0, '1', 1, 1, 'tiger', '2021-05-18 15:59:02', 'tiger', '2021-05-18 16:00:26');
INSERT INTO `project_member` VALUES (43, 33, 33, '2021-05-18 08:00:44', 0, '1', 1, 1, 'tiger', '2021-05-18 16:00:43', 'tiger', '2021-05-18 16:25:13');
INSERT INTO `project_member` VALUES (44, 36, 33, '2021-05-18 16:05:03', 1, '1', 0, 1, 'duck', '2021-05-18 16:05:03', 'duck', '2021-05-18 16:05:03');
INSERT INTO `project_member` VALUES (45, 33, 33, '2021-05-18 08:25:22', 0, '2', 1, 1, 'tiger', '2021-05-18 16:25:22', 'tiger', '2021-05-22 00:30:50');
INSERT INTO `project_member` VALUES (46, 37, 34, '2021-05-18 16:41:52', 1, '1', 0, 1, 'rabbit', '2021-05-18 16:41:52', 'rabbit', '2021-05-18 16:41:52');
INSERT INTO `project_member` VALUES (47, 37, 35, '2021-05-18 09:59:10', 0, '2', 0, 1, 'rabbit', '2021-05-18 17:59:10', 'rabbit', '2021-05-19 22:57:54');
INSERT INTO `project_member` VALUES (48, 38, 37, '2021-05-19 15:37:02', 1, '1', 0, 1, '柴犬', '2021-05-19 15:37:02', '柴犬', '2021-05-19 15:37:02');
INSERT INTO `project_member` VALUES (49, 38, 22, '2021-05-19 08:12:32', 0, '2', 0, 1, '柴犬', '2021-05-19 16:12:33', '柴犬', '2021-05-19 16:12:33');
INSERT INTO `project_member` VALUES (50, 38, 29, '2021-05-19 08:14:13', 0, '2', 0, 1, '柴犬', '2021-05-19 16:14:13', '柴犬', '2021-05-19 16:14:13');
INSERT INTO `project_member` VALUES (51, 39, 38, '2021-05-19 16:58:15', 1, '1', 0, 1, 'pig', '2021-05-19 16:58:15', 'pig', '2021-05-19 16:58:15');
INSERT INTO `project_member` VALUES (52, 40, 38, '2021-05-19 16:58:16', 1, '1', 0, 1, 'pig', '2021-05-19 16:58:16', 'pig', '2021-05-19 16:58:16');
INSERT INTO `project_member` VALUES (53, 41, 37, '2021-05-19 16:59:22', 1, '1', 0, 1, '柴犬', '2021-05-19 16:59:22', '柴犬', '2021-05-19 16:59:22');
INSERT INTO `project_member` VALUES (54, 41, 25, '2021-05-19 09:24:06', 0, '1', 0, 1, '柴犬', '2021-05-19 17:24:06', '柴犬', '2021-05-19 17:24:06');
INSERT INTO `project_member` VALUES (55, 41, 29, '2021-05-19 09:36:35', 0, '1', 0, 1, '柴犬', '2021-05-19 17:36:34', '柴犬', '2021-05-19 17:36:34');
INSERT INTO `project_member` VALUES (56, 41, 30, '2021-05-19 09:41:15', 0, '3', 0, 1, '柴犬', '2021-05-19 17:41:14', '柴犬', '2021-05-19 17:42:48');
INSERT INTO `project_member` VALUES (57, 42, 34, '2021-05-19 21:46:53', 1, '1', 0, 1, 'rabbit', '2021-05-19 21:46:53', 'rabbit', '2021-05-19 21:46:53');
INSERT INTO `project_member` VALUES (58, 43, 40, '2021-05-19 21:51:59', 1, '1', 0, 1, 'full', '2021-05-19 21:51:59', 'full', '2021-05-19 21:51:59');
INSERT INTO `project_member` VALUES (59, 44, 34, '2021-05-19 21:55:40', 1, '1', 0, 1, 'rabbit', '2021-05-19 21:55:40', 'rabbit', '2021-05-19 21:55:40');
INSERT INTO `project_member` VALUES (60, 45, 34, '2021-05-19 21:58:24', 1, '1', 0, 1, 'rabbit', '2021-05-19 21:58:24', 'rabbit', '2021-05-19 21:58:24');
INSERT INTO `project_member` VALUES (61, 46, 40, '2021-05-19 22:02:55', 1, '1', 0, 1, 'full', '2021-05-19 22:02:55', 'full', '2021-05-19 22:02:55');
INSERT INTO `project_member` VALUES (62, 47, 44, '2021-05-19 22:05:16', 1, '1', 0, 1, '1234', '2021-05-19 22:05:16', '1234', '2021-05-19 22:05:16');
INSERT INTO `project_member` VALUES (63, 48, 46, '2021-05-19 22:34:39', 1, '1', 0, 1, '12344', '2021-05-19 22:34:39', '12344', '2021-05-19 22:34:39');
INSERT INTO `project_member` VALUES (64, 48, 38, '2021-05-19 14:35:06', 0, '3', 0, 1, '12344', '2021-05-19 22:35:05', '12344', '2021-05-19 22:35:05');
INSERT INTO `project_member` VALUES (65, 48, 37, '2021-05-19 14:39:28', 0, '3', 0, 1, '12344', '2021-05-19 22:39:27', '12344', '2021-05-19 22:39:27');
INSERT INTO `project_member` VALUES (66, 37, 33, '2021-05-19 14:59:52', 0, '3', 1, 1, '12344', '2021-05-19 22:59:51', '12344', '2021-05-19 22:59:54');
INSERT INTO `project_member` VALUES (67, 37, 33, '2021-05-19 15:00:07', 0, '3', 1, 1, '12344', '2021-05-19 23:00:06', '12344', '2021-05-19 23:00:09');
INSERT INTO `project_member` VALUES (68, 37, 33, '2021-05-19 15:07:01', 0, '3', 0, 1, '12344', '2021-05-19 23:07:00', '12344', '2021-05-19 23:07:00');
INSERT INTO `project_member` VALUES (69, 47, 21, '2021-05-20 05:23:02', 0, '3', 0, 1, '1234', '2021-05-20 13:23:02', '1234', '2021-05-20 13:23:06');
INSERT INTO `project_member` VALUES (70, 49, 48, '2021-05-20 13:27:41', 1, '1', 0, 1, 'test001', '2021-05-20 13:27:41', 'test001', '2021-05-20 13:27:41');
INSERT INTO `project_member` VALUES (71, 49, 49, '2021-05-20 05:28:42', 0, '3', 0, 1, 'test001', '2021-05-20 13:28:42', 'test001', '2021-05-20 13:28:42');
INSERT INTO `project_member` VALUES (72, 37, 41, '2021-05-20 07:31:04', 0, '3', 1, 1, 'rabbit', '2021-05-20 15:31:03', 'rabbit', '2021-05-22 00:29:10');
INSERT INTO `project_member` VALUES (73, 42, 45, '2021-05-20 08:54:15', 0, '3', 0, 1, 'rabbit', '2021-05-20 16:54:14', 'rabbit', '2021-05-20 16:54:14');
INSERT INTO `project_member` VALUES (74, 42, 50, '2021-05-20 08:59:31', 0, '2', 0, 1, 'rabbit', '2021-05-20 16:59:30', 'rabbit', '2021-05-20 16:59:30');
INSERT INTO `project_member` VALUES (75, 50, 49, '2021-05-20 18:49:19', 1, '1', 0, 1, 'test002', '2021-05-20 18:49:19', 'test002', '2021-05-20 18:49:19');
INSERT INTO `project_member` VALUES (76, 51, 49, '2021-05-20 19:14:07', 1, '1', 0, 1, 'test002', '2021-05-20 19:14:07', 'test002', '2021-05-20 19:14:07');
INSERT INTO `project_member` VALUES (77, 51, 21, '2021-05-20 11:14:31', 0, '2', 0, 1, 'test002', '2021-05-20 19:14:31', 'test002', '2021-05-20 19:14:31');
INSERT INTO `project_member` VALUES (78, 52, 21, '2021-05-20 19:48:54', 1, '1', 0, 1, 'tiger', '2021-05-20 19:48:54', 'tiger', '2021-05-20 19:48:54');
INSERT INTO `project_member` VALUES (79, 53, 21, '2021-05-20 20:42:06', 1, '1', 0, 1, 'tiger', '2021-05-20 20:42:06', 'tiger', '2021-05-20 20:42:06');
INSERT INTO `project_member` VALUES (80, 53, 43, '2021-05-20 12:45:15', 0, '3', 0, 1, 'tiger', '2021-05-20 20:45:15', 'tiger', '2021-05-20 20:45:15');
INSERT INTO `project_member` VALUES (81, 54, 21, '2021-05-20 20:46:16', 1, '1', 0, 1, 'tiger', '2021-05-20 20:46:16', 'tiger', '2021-05-20 20:46:16');
INSERT INTO `project_member` VALUES (82, 54, 22, '2021-05-20 12:46:23', 0, '1', 0, 1, 'tiger', '2021-05-20 20:46:22', 'tiger', '2021-05-20 20:46:22');
INSERT INTO `project_member` VALUES (83, 55, 21, '2021-05-20 20:46:39', 1, '1', 0, 1, 'tiger', '2021-05-20 20:46:39', 'tiger', '2021-05-20 20:46:39');
INSERT INTO `project_member` VALUES (84, 56, 57, '2021-05-20 22:04:23', 1, '1', 0, 1, '0101', '2021-05-20 22:04:23', '0101', '2021-05-20 22:04:23');
INSERT INTO `project_member` VALUES (85, 56, 36, '2021-05-20 22:04:42', 0, '3', 1, 1, '0101', '2021-05-20 22:04:42', '0101', '2021-05-20 22:04:44');
INSERT INTO `project_member` VALUES (86, 57, 57, '2021-05-20 22:51:47', 1, '1', 0, 1, '0101', '2021-05-20 22:51:47', '0101', '2021-05-20 22:51:47');
INSERT INTO `project_member` VALUES (87, 58, 57, '2021-05-21 09:51:41', 1, '1', 0, 1, '0101', '2021-05-21 09:51:41', '0101', '2021-05-21 09:51:41');
INSERT INTO `project_member` VALUES (88, 37, 62, '2021-05-21 10:26:28', 0, '3', 1, 1, 'rabbit', '2021-05-21 10:26:29', 'rabbit', '2021-05-21 10:26:42');
INSERT INTO `project_member` VALUES (89, 37, 62, '2021-05-21 10:26:30', 0, '3', 0, 1, 'rabbit', '2021-05-21 10:26:31', 'rabbit', '2021-05-21 10:26:31');
INSERT INTO `project_member` VALUES (90, 37, 62, '2021-05-21 10:26:31', 0, '3', 0, 1, 'rabbit', '2021-05-21 10:26:32', 'rabbit', '2021-05-21 10:26:32');
INSERT INTO `project_member` VALUES (91, 59, 63, '2021-05-21 12:00:20', 1, '1', 0, 1, '183', '2021-05-21 12:00:20', '183', '2021-05-21 12:00:20');
INSERT INTO `project_member` VALUES (92, 59, 64, '2021-05-21 12:03:42', 0, '2', 0, 1, '183', '2021-05-21 12:03:41', '183', '2021-05-21 12:03:41');
INSERT INTO `project_member` VALUES (93, 59, 65, '2021-05-21 12:07:53', 0, '3', 0, 1, '183', '2021-05-21 12:07:52', '183', '2021-05-21 12:07:52');
INSERT INTO `project_member` VALUES (94, 60, 66, '2021-05-21 12:23:44', 1, '1', 0, 1, 'test6666', '2021-05-21 12:23:44', 'test6666', '2021-05-21 12:23:44');
INSERT INTO `project_member` VALUES (95, 60, 54, '2021-05-21 12:24:07', 0, '3', 1, 1, 'test6666', '2021-05-21 12:24:06', 'test6666', '2021-05-22 00:14:49');
INSERT INTO `project_member` VALUES (96, 61, 67, '2021-05-21 23:34:22', 1, '1', 0, 1, 'test1', '2021-05-21 23:34:22', 'test1', '2021-05-21 23:34:22');
INSERT INTO `project_member` VALUES (97, 62, 67, '2021-05-21 23:34:23', 1, '1', 1, 1, 'test1', '2021-05-21 23:34:23', 'test1', '2021-05-21 23:36:44');
INSERT INTO `project_member` VALUES (98, 63, 69, '2021-05-21 23:40:12', 1, '1', 0, 1, 'test741', '2021-05-21 23:40:12', 'test741', '2021-05-21 23:40:12');
INSERT INTO `project_member` VALUES (99, 63, 70, '2021-05-21 23:41:57', 0, '2', 0, 1, 'test741', '2021-05-21 23:41:56', 'test741', '2021-05-21 23:41:56');
INSERT INTO `project_member` VALUES (100, 63, 71, '2021-05-21 23:43:08', 0, '3', 1, 1, 'test852', '2021-05-21 23:43:07', 'test852', '2021-05-22 00:04:07');
INSERT INTO `project_member` VALUES (101, 63, 71, '2021-05-22 00:04:50', 0, '3', 1, 1, 'test852', '2021-05-22 00:04:49', 'test852', '2021-05-22 00:05:14');
INSERT INTO `project_member` VALUES (102, 63, 71, '2021-05-22 00:12:00', 0, '3', 1, 1, 'test741', '2021-05-22 00:11:59', 'test741', '2021-05-22 00:12:36');
INSERT INTO `project_member` VALUES (103, 63, 71, '2021-05-22 00:14:42', 0, '3', 1, 1, 'test741', '2021-05-22 00:14:41', 'test741', '2021-05-22 00:14:59');
INSERT INTO `project_member` VALUES (104, 60, 36, '2021-05-22 00:17:11', 0, '3', 1, 1, 'test6666', '2021-05-22 00:17:10', 'test6666', '2021-05-22 00:17:19');
INSERT INTO `project_member` VALUES (105, 63, 71, '2021-05-22 00:31:27', 0, '3', 1, 1, 'test6666', '2021-05-22 00:31:26', 'test6666', '2021-05-22 07:49:05');
INSERT INTO `project_member` VALUES (106, 60, 36, '2021-05-22 00:34:11', 0, '3', 1, 1, 'test6666', '2021-05-22 00:34:11', 'test6666', '2021-05-22 00:34:40');
INSERT INTO `project_member` VALUES (107, 60, 45, '2021-05-22 00:34:14', 0, '3', 1, 1, 'test6666', '2021-05-22 00:34:14', 'test6666', '2021-05-22 00:34:15');
INSERT INTO `project_member` VALUES (108, 60, 36, '2021-05-22 00:38:30', 0, '3', 1, 1, 'test6666', '2021-05-22 00:38:30', 'test6666', '2021-05-22 00:38:33');
INSERT INTO `project_member` VALUES (109, 63, 71, '2021-05-22 07:50:38', 0, '3', 1, 1, 'test852', '2021-05-22 07:50:37', 'test852', '2021-05-22 08:16:56');
INSERT INTO `project_member` VALUES (110, 63, 71, '2021-05-22 08:54:41', 0, '3', 1, 1, 'test852', '2021-05-22 08:54:40', 'test852', '2021-05-22 08:55:27');
COMMIT;

-- ----------------------------
-- Table structure for project_permission
-- ----------------------------
DROP TABLE IF EXISTS `project_permission`;
CREATE TABLE `project_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `project_id` int(11) NOT NULL COMMENT '项目ID',
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='项目权限表';

-- ----------------------------
-- Records of project_permission
-- ----------------------------
BEGIN;
INSERT INTO `project_permission` VALUES (5, 19, 24, 1);
INSERT INTO `project_permission` VALUES (7, 21, 24, 1);
INSERT INTO `project_permission` VALUES (8, 22, 24, 1);
INSERT INTO `project_permission` VALUES (9, 23, 24, 1);
INSERT INTO `project_permission` VALUES (10, 24, 24, 1);
INSERT INTO `project_permission` VALUES (11, 25, 24, 1);
INSERT INTO `project_permission` VALUES (12, 26, 24, 1);
INSERT INTO `project_permission` VALUES (13, 27, 24, 1);
INSERT INTO `project_permission` VALUES (14, 28, 24, 1);
INSERT INTO `project_permission` VALUES (15, 29, 24, 1);
INSERT INTO `project_permission` VALUES (16, 30, 24, 1);
INSERT INTO `project_permission` VALUES (17, 31, 24, 1);
INSERT INTO `project_permission` VALUES (18, 32, 24, 1);
INSERT INTO `project_permission` VALUES (19, 33, 21, 1);
INSERT INTO `project_permission` VALUES (24, 34, 32, 1);
INSERT INTO `project_permission` VALUES (25, 35, 33, 1);
INSERT INTO `project_permission` VALUES (28, 36, 33, 1);
INSERT INTO `project_permission` VALUES (30, 37, 34, 1);
INSERT INTO `project_permission` VALUES (31, 37, 35, 2);
INSERT INTO `project_permission` VALUES (32, 38, 37, 3);
INSERT INTO `project_permission` VALUES (33, 38, 22, 2);
INSERT INTO `project_permission` VALUES (34, 38, 29, 2);
INSERT INTO `project_permission` VALUES (35, 39, 38, 1);
INSERT INTO `project_permission` VALUES (36, 40, 38, 1);
INSERT INTO `project_permission` VALUES (37, 41, 37, 1);
INSERT INTO `project_permission` VALUES (38, 41, 25, 3);
INSERT INTO `project_permission` VALUES (39, 41, 29, 3);
INSERT INTO `project_permission` VALUES (40, 41, 30, 3);
INSERT INTO `project_permission` VALUES (41, 42, 34, 1);
INSERT INTO `project_permission` VALUES (42, 43, 40, 1);
INSERT INTO `project_permission` VALUES (43, 44, 34, 1);
INSERT INTO `project_permission` VALUES (44, 45, 34, 1);
INSERT INTO `project_permission` VALUES (45, 46, 40, 1);
INSERT INTO `project_permission` VALUES (46, 47, 44, 1);
INSERT INTO `project_permission` VALUES (47, 48, 46, 1);
INSERT INTO `project_permission` VALUES (48, 48, 38, 3);
INSERT INTO `project_permission` VALUES (49, 48, 37, 3);
INSERT INTO `project_permission` VALUES (52, 37, 33, 3);
INSERT INTO `project_permission` VALUES (53, 47, 21, 3);
INSERT INTO `project_permission` VALUES (54, 49, 48, 1);
INSERT INTO `project_permission` VALUES (55, 49, 49, 3);
INSERT INTO `project_permission` VALUES (57, 42, 45, 3);
INSERT INTO `project_permission` VALUES (58, 42, 50, 2);
INSERT INTO `project_permission` VALUES (59, 50, 49, 1);
INSERT INTO `project_permission` VALUES (60, 51, 49, 1);
INSERT INTO `project_permission` VALUES (61, 51, 21, 2);
INSERT INTO `project_permission` VALUES (62, 52, 21, 1);
INSERT INTO `project_permission` VALUES (63, 53, 21, 1);
INSERT INTO `project_permission` VALUES (64, 53, 43, 3);
INSERT INTO `project_permission` VALUES (65, 54, 21, 1);
INSERT INTO `project_permission` VALUES (66, 54, 22, 1);
INSERT INTO `project_permission` VALUES (67, 55, 21, 1);
INSERT INTO `project_permission` VALUES (68, 56, 57, 1);
INSERT INTO `project_permission` VALUES (70, 57, 57, 1);
INSERT INTO `project_permission` VALUES (71, 58, 57, 1);
INSERT INTO `project_permission` VALUES (75, 59, 63, 1);
INSERT INTO `project_permission` VALUES (76, 59, 64, 2);
INSERT INTO `project_permission` VALUES (77, 59, 65, 3);
INSERT INTO `project_permission` VALUES (78, 60, 66, 1);
INSERT INTO `project_permission` VALUES (80, 61, 67, 1);
INSERT INTO `project_permission` VALUES (81, 62, 67, 1);
INSERT INTO `project_permission` VALUES (82, 63, 69, 1);
INSERT INTO `project_permission` VALUES (83, 63, 70, 2);
COMMIT;

-- ----------------------------
-- Table structure for smbms_perm_role
-- ----------------------------
DROP TABLE IF EXISTS `smbms_perm_role`;
CREATE TABLE `smbms_perm_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(50) DEFAULT NULL,
  `perm_id` int(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `smbms_perm_role_ibfk_2` (`perm_id`),
  CONSTRAINT `smbms_perm_role_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `smbms_role` (`id`),
  CONSTRAINT `smbms_perm_role_ibfk_2` FOREIGN KEY (`perm_id`) REFERENCES `smbms_permission` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of smbms_perm_role
-- ----------------------------
BEGIN;
INSERT INTO `smbms_perm_role` VALUES (1, 1, 1);
INSERT INTO `smbms_perm_role` VALUES (5, 1, 5);
INSERT INTO `smbms_perm_role` VALUES (7, 1, 7);
INSERT INTO `smbms_perm_role` VALUES (8, 1, 8);
INSERT INTO `smbms_perm_role` VALUES (16, 1, 17);
INSERT INTO `smbms_perm_role` VALUES (17, 2, 1);
INSERT INTO `smbms_perm_role` VALUES (19, 2, 4);
INSERT INTO `smbms_perm_role` VALUES (20, 2, 5);
INSERT INTO `smbms_perm_role` VALUES (22, 2, 7);
INSERT INTO `smbms_perm_role` VALUES (27, 2, 17);
INSERT INTO `smbms_perm_role` VALUES (28, 3, 1);
INSERT INTO `smbms_perm_role` VALUES (30, 3, 5);
INSERT INTO `smbms_perm_role` VALUES (32, 3, 17);
INSERT INTO `smbms_perm_role` VALUES (33, 1, 19);
INSERT INTO `smbms_perm_role` VALUES (34, 2, 19);
INSERT INTO `smbms_perm_role` VALUES (35, 3, 19);
INSERT INTO `smbms_perm_role` VALUES (39, 2, 20);
INSERT INTO `smbms_perm_role` VALUES (41, 3, 20);
INSERT INTO `smbms_perm_role` VALUES (42, 3, 7);
INSERT INTO `smbms_perm_role` VALUES (43, 1, 20);
COMMIT;

-- ----------------------------
-- Table structure for smbms_permission
-- ----------------------------
DROP TABLE IF EXISTS `smbms_permission`;
CREATE TABLE `smbms_permission` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `perm_code` int(50) DEFAULT NULL COMMENT '权限编号',
  `perm_name` varchar(50) DEFAULT NULL COMMENT '权限名称',
  `perm_url` varchar(200) DEFAULT NULL COMMENT '权限地址',
  `parent_code` int(50) DEFAULT NULL COMMENT '父权限编号(以codeId做链接)',
  `isMenu` int(11) DEFAULT NULL COMMENT '0不是菜单。1是菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of smbms_permission
-- ----------------------------
BEGIN;
INSERT INTO `smbms_permission` VALUES (1, 1000, '项目管理', NULL, 0, 0);
INSERT INTO `smbms_permission` VALUES (4, 1001, '修改', '/pro j', 1000, 1);
INSERT INTO `smbms_permission` VALUES (5, 1002, '项目详情', '/project/detail/', 1000, 0);
INSERT INTO `smbms_permission` VALUES (7, 1003, '项目文件', '/projectDocument/list', 1000, 0);
INSERT INTO `smbms_permission` VALUES (8, 2001, '修改', '/provider/update', 2000, 1);
INSERT INTO `smbms_permission` VALUES (12, 3001, '修改', '/user/update', 3000, 1);
INSERT INTO `smbms_permission` VALUES (17, 5000, '修改密码', '/password.jsp', 0, 0);
INSERT INTO `smbms_permission` VALUES (19, 4000, '退出系统', 'javascript:logout()', 0, 0);
INSERT INTO `smbms_permission` VALUES (20, 1004, '项目成员', '/projectMember/list', 1000, 0);
COMMIT;

-- ----------------------------
-- Table structure for smbms_role
-- ----------------------------
DROP TABLE IF EXISTS `smbms_role`;
CREATE TABLE `smbms_role` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `role_name` varchar(50) DEFAULT NULL COMMENT '角色名',
  `role_desc` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色描述',
  `createBy` int(20) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modifyBy` int(20) DEFAULT NULL COMMENT '修改者',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  `status` int(20) DEFAULT NULL COMMENT '0不能用.1能用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of smbms_role
-- ----------------------------
BEGIN;
INSERT INTO `smbms_role` VALUES (1, 'admin', '所有者', 1, '2019-12-03 17:36:51', NULL, NULL, 1);
INSERT INTO `smbms_role` VALUES (2, 'manager', '管理员', 1, '2019-12-03 17:37:06', NULL, NULL, 1);
INSERT INTO `smbms_role` VALUES (3, 'custom', '成员', 1, '2019-12-03 17:37:31', NULL, NULL, 1);
COMMIT;

-- ----------------------------
-- Table structure for smbms_user
-- ----------------------------
DROP TABLE IF EXISTS `smbms_user`;
CREATE TABLE `smbms_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `userCode` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户编码',
  `userName` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户名称',
  `userPassword` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户密码',
  `gender` int(10) DEFAULT NULL COMMENT '性别（1:女、 2:男）',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '手机',
  `address` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '地址',
  `userType` int(10) DEFAULT NULL COMMENT '用户类型（1：系统管理员、2：经理、3：普通员工）',
  `createdBy` bigint(20) DEFAULT NULL COMMENT '创建者（userId）',
  `creationDate` datetime DEFAULT NULL COMMENT '创建时间',
  `modifyBy` bigint(20) DEFAULT NULL COMMENT '更新者（userId）',
  `modifyDate` datetime DEFAULT NULL COMMENT '更新时间',
  `status` int(11) DEFAULT NULL COMMENT '0不能用，1能用',
  `salt` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '盐值',
  PRIMARY KEY (`id`),
  KEY `userType` (`userType`),
  CONSTRAINT `smbms_user_ibfk_1` FOREIGN KEY (`userType`) REFERENCES `smbms_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of smbms_user
-- ----------------------------
BEGIN;
INSERT INTO `smbms_user` VALUES (21, 'tiger', 'tiger', '69d3ae63dd6bc927296cf750206d3327', 2, '2021-03-08', '13624124125', '12312124', 1, NULL, '2021-03-27 23:30:24', 21, '2021-05-03 14:26:55', 1, '11c4d3953e1175913b2c4c2f9b7ecbff');
INSERT INTO `smbms_user` VALUES (22, 'wzy', 'wzy', 'a30439d9783e6976f0045dfa350d746a', 1, '2014-02-12', '15973624269', '123213123', 2, NULL, '2021-05-05 14:04:40', NULL, NULL, 1, '89fcb21ecb2bc20faa6ba918cec5c62a');
INSERT INTO `smbms_user` VALUES (23, 'zhangsan', '张三', 'bce5cad4e7af7443fccc97271ebc4ec1', 2, '2020-12-11', '1231231412', '三个', 3, NULL, '2021-05-15 14:41:27', NULL, NULL, 1, '49c9125ea9ebed29c16400d84557b796');
INSERT INTO `smbms_user` VALUES (24, 'lisi', '李四', '926659b85e71bb1aa97adb9798ce5065', 2, '2020-12-01', '123123213123', '十多个', 3, NULL, '2021-05-17 15:36:16', NULL, NULL, 1, '726cf386b241e34dcfd66644d8a0a170');
INSERT INTO `smbms_user` VALUES (25, 'chenhao', '陈浩', '6bfc4b782ce6ec9bf8f5c0efec13071d', 2, '2020-02-20', '2412512521', '撒发生', 3, NULL, '2021-05-17 22:04:03', NULL, NULL, 1, '83122f80d88050375935a96af1ed3b31');
INSERT INTO `smbms_user` VALUES (29, 'wangmazi', '王麻子', 'c5ef67744e7154302435bfb40b480d5a', 2, '2020-12-01', '12415123', '萨芬', 3, NULL, '2021-05-18 15:17:32', NULL, NULL, 1, '76f4daf79338061d4115eddadec2b0db');
INSERT INTO `smbms_user` VALUES (30, 'test', 'test', 'f85091213459456d12da12b4ada34d91', 2, '2020-02-11', '21421413', 'sdg ', 3, NULL, '2021-05-18 15:25:27', NULL, NULL, 1, 'c88d4f0d4b7313c8893f276a18fe7239');
INSERT INTO `smbms_user` VALUES (32, 'test123', 'sdg s ', 'dd7485228922d5091e5825838c400cd0', 2, '2021-05-12', '213123123', 'awfsd ', 3, NULL, '2021-05-18 15:30:05', NULL, NULL, 1, 'dead430b2b24629a799af53be5c15479');
INSERT INTO `smbms_user` VALUES (33, '2586', 'duck', 'd845ac07ead6a51e5edc9e143b7b9968', 2, '1999-10-03', '12345678977', '湖南', 3, NULL, '2021-05-18 15:30:19', NULL, NULL, 1, 'bbc6f56f184728aad549bec3635cf758');
INSERT INTO `smbms_user` VALUES (34, '0000', 'rabbit', '969d7b1406ce01dfeeb79ee5f291de1d', 2, '1998-05-15', '153124545787', '河南', 3, NULL, '2021-05-18 16:40:13', 34, '2021-05-19 21:42:41', 1, '1ecdf6692262f5ce21b4cc81f8345dd4');
INSERT INTO `smbms_user` VALUES (35, '0001', 'fish1', '2fb0e3cb2b1657222526617c8214dbd7', 1, '2002-05-12', '13874523376', '广东', 1, NULL, '2021-05-18 17:02:51', 35, '2021-05-19 17:03:54', 1, 'e574a7dee21d87cf95b637c27d9ae92b');
INSERT INTO `smbms_user` VALUES (36, '0002', 'elephant', '89c69746e2c5b04ba0cacda76e6fc0db', 1, '1996-02-04', '15173448521', '甘肃', 1, NULL, '2021-05-18 18:07:36', 36, '2021-05-18 23:51:50', 1, 'ed012a8f297bb4f9dd64798aa27844b4');
INSERT INTO `smbms_user` VALUES (37, 'doge', '柴犬', '5d01a79a0ff738443378ed2f9238ab57', 2, '2021-04-29', '13252355342', '阿瓦房', 3, NULL, '2021-05-19 15:09:43', 37, '2021-05-19 17:43:02', 1, '6bf9f360434e326f061a56782a15cbc5');
INSERT INTO `smbms_user` VALUES (38, '123', 'pig', '2cf0fc339610225de938dd53cae92a82', 2, '2021-04-20', '18373513377', '湖南', 1, NULL, '2021-05-19 16:56:51', 38, '2021-05-19 17:04:46', 1, 'ac1064b2521053f34fe46d952b302e09');
INSERT INTO `smbms_user` VALUES (39, 'root', 'root', 'a24d1eaf1980cab8593ea030fb0045ce', 2, '2021-04-28', '1231412412', 'sdg ', 3, NULL, '2021-05-19 17:43:24', NULL, NULL, 1, 'e65bc94afbe3cfd129a6a47c22370725');
INSERT INTO `smbms_user` VALUES (40, 'full', 'full', 'f6f1f74aee95321083156f2fb5886908', 2, '2021-04-29', '123123', 'sfsf', 3, NULL, '2021-05-19 21:09:52', NULL, NULL, 1, '6c90ee97437949668469eb6ba68df85d');
INSERT INTO `smbms_user` VALUES (41, '0003', 'giraffe', '474a73c15426a770c83878b1486e35dc', 1, '2004-06-03', '18367995844', '甘肃', 3, NULL, '2021-05-19 21:45:45', NULL, NULL, 1, 'd163ad30c358ba9cfd4d0bc28f7f9912');
INSERT INTO `smbms_user` VALUES (42, '1111', '1111', '9d6cae9f341a8c1574ea7554397d4219', 2, '2021-05-18', '123123', '12ad', 3, NULL, '2021-05-19 21:55:18', NULL, NULL, 1, '37277749b5d72bc3947550640eff5775');
INSERT INTO `smbms_user` VALUES (43, 'test3514151325', 'test110', 'b341544ec6d1a444bd6221e958c4551a', 2, '2021-05-12', '12312312', 'saf ', 3, NULL, '2021-05-19 22:02:39', NULL, NULL, 1, '33051792bd468515480d780ba1157825');
INSERT INTO `smbms_user` VALUES (44, '1234', '1234', '0705dd685864655ede908b87b91c4b82', 2, '2021-05-14', '123123', 'sdg ', 3, NULL, '2021-05-19 22:05:00', NULL, NULL, 1, 'bbc63bfebdb0c99f2e1f328e2a34d78c');
INSERT INTO `smbms_user` VALUES (45, '0004', 'fish2', 'ebd4b7542850d4d5e1d8f4fa293ac24e', 1, '2020-05-02', '19945617891', '上海', 3, NULL, '2021-05-19 22:11:59', NULL, NULL, 1, '27986c98bb0a0a726f490e11bbfd0563');
INSERT INTO `smbms_user` VALUES (46, '12344', '12344', '555dbfd7af8c4badb068eaeb123a40ad', 2, '2021-05-11', '12312312', '12312312', 3, NULL, '2021-05-19 22:34:02', NULL, NULL, 1, 'a0e4fd4839a3cdfeec44ae87ef298f73');
INSERT INTO `smbms_user` VALUES (47, 'shi', 'shi', 'b59e33721316d052efa9758fcaa1e90c', 2, '2021-04-29', '123', 'asfsd ', 3, NULL, '2021-05-20 13:24:05', NULL, NULL, 1, 'f0fdec1868e915d48fa5b7742e960ad3');
INSERT INTO `smbms_user` VALUES (48, 'test001', 'test001', '8345e82d6383267957aa9c75f363733b', 2, '2021-05-02', '123123123', 'fgfdg', 3, NULL, '2021-05-20 13:27:25', NULL, NULL, 1, 'c50507e7a9fe67e8ff68ca35c9281cfb');
INSERT INTO `smbms_user` VALUES (49, 'test002', 'test002', '332f4049b0a50e9be8d727754f1594e2', 2, '2021-05-12', 'reter', 'sfsd', 3, NULL, '2021-05-20 13:28:18', NULL, NULL, 1, '4196b30f65475b41cf75f9c6d0e0164a');
INSERT INTO `smbms_user` VALUES (50, '0005', 'monkey', '10f1b62e127ee9604fbdbe16c97466e5', 2, '1997-12-03', '13587664521', '贵州', 3, NULL, '2021-05-20 16:57:45', NULL, NULL, 1, '428b84835517efa0af55d1cb42c52a41');
INSERT INTO `smbms_user` VALUES (51, 'test1024', 'test1024', '67fd00553159f469454b22e0f31d0a47', 2, '2021-04-30', '123123', 'sgds', 3, NULL, '2021-05-20 19:48:33', NULL, NULL, 1, 'c41230fee190fb60a14d3eee1e04b14b');
INSERT INTO `smbms_user` VALUES (52, 'test120', 'test120', '4a87d3a41b99dc35bdc65541ddd57731', 2, '2021-05-01', '12321312', 'sdgsg', 3, NULL, '2021-05-20 19:58:58', NULL, NULL, 1, '3434adce2d59c4697c1985b7157e0bda');
INSERT INTO `smbms_user` VALUES (53, 'testssdgs', 'tsest', '6abd03939f7905f0c08998224e84bdee', 2, '2021-05-06', '123123', '1123123', 3, NULL, '2021-05-20 20:06:02', NULL, NULL, 1, 'ce65670e4d357f1d1cd066d878b33bb0');
INSERT INTO `smbms_user` VALUES (54, 'test12345', 'test12345', '42ad0ccdb0b3a0245c21790a3eff27a8', 2, '2021-05-21', '123112421', 'sdfgsg', 3, NULL, '2021-05-20 20:15:09', NULL, NULL, 1, 'b5c277f456171dd137078aea0a250c4b');
INSERT INTO `smbms_user` VALUES (55, 'test12138', 'test12138', '94d9ce81bfab01e8c884f07d82a6d5d8', 2, '2021-04-28', '21312312', 'sff', 3, NULL, '2021-05-20 20:41:50', NULL, NULL, 1, '47aea5d1ff8080ebf3afd412c7fd3fbe');
INSERT INTO `smbms_user` VALUES (56, 'wzy01', 'wzy01', '61942d53cfc21a6e6c9aff21e8aef3fb', 2, '2018-04-02', '119', '北京', 3, NULL, '2021-05-20 20:48:20', NULL, NULL, 1, '142a8390c8eb5015569a6d400eefc471');
INSERT INTO `smbms_user` VALUES (57, '0101', '0101', 'cf5a6c871749d3ba05284af840ac9215', 2, '2021-05-13', '123123', 'sdsgg', 3, NULL, '2021-05-20 22:04:09', NULL, NULL, 1, 'de815a44be8e4496a836252742847390');
INSERT INTO `smbms_user` VALUES (58, '1112', 'test01', '9811aee8134da052d9f1bd34ac9f5b6a', 1, '2021-05-17', '110', '北京', 3, NULL, '2021-05-20 22:09:30', NULL, NULL, 1, 'ed40efb6f36a805a59eba6216ad0b9f9');
INSERT INTO `smbms_user` VALUES (59, '1221', '舞舞舞', '922cdb0cf8ff4b18c5f1fb2b5c94efcd', 2, '1958-03-20', '18373513333', '湖南郴州', 3, NULL, '2021-05-20 22:47:27', NULL, NULL, 1, '635435a45f73f44dc59235eac94624a6');
INSERT INTO `smbms_user` VALUES (60, '777', 'test111', '7cd2a3b326b8db39be701abf7f71f4cf', 2, '2013-05-05', '110', '北京', 3, NULL, '2021-05-21 00:54:13', NULL, NULL, 1, 'b97d3bf94ffa9f13b2e10342a1289e0a');
INSERT INTO `smbms_user` VALUES (61, '777', 'test111', '2274cbfd1ab764efdb67a6bcf0f10197', 2, '2013-05-05', '110', '北京', 3, NULL, '2021-05-21 00:54:13', NULL, NULL, 1, '6054e52d537b58b89536f1b76296694a');
INSERT INTO `smbms_user` VALUES (62, '321', 'test6', '4aaec4094376f98b832347af0b6e4a77', 2, '2015-05-18', '111', '四川', 3, NULL, '2021-05-21 09:53:25', NULL, NULL, 1, '1a613efa4d605628052cdd5ac46bd468');
INSERT INTO `smbms_user` VALUES (63, '183', '183', 'd3ed17dbd04fafd25deaa3f511d4888c', 1, '2001-05-21', '17548262300', '上海', 3, NULL, '2021-05-21 11:58:05', NULL, NULL, 1, 'fff1a4a3bc8f910d2a6ac18343d778a6');
INSERT INTO `smbms_user` VALUES (64, '7351', '7351', '172b33c338ba5ac4f195b07786d55e38', 1, '2015-05-15', '110', '澧县', 3, NULL, '2021-05-21 12:03:00', NULL, NULL, 1, '4a838d59b485ca676ca52d5a3662c684');
INSERT INTO `smbms_user` VALUES (65, '3376', '3376', '97192cf541005b26b9b159d0afab3ba4', 1, '1996-05-21', '18374413377', '常德汉寿', 3, NULL, '2021-05-21 12:04:30', 65, '2021-05-21 12:05:31', 1, 'b05d2ddc156518f872bb88fedf35eb6d');
INSERT INTO `smbms_user` VALUES (66, 'test6666', 'test6666', 'bc9353427454b4f3100a494bf95a384a', 2, '2021-05-10', '23', '1sdf', 3, NULL, '2021-05-21 12:23:37', NULL, NULL, 1, 'f136a29f2b6f1e4804e165d6ed6382c8');
INSERT INTO `smbms_user` VALUES (67, '7777', 'test1', 'eca212728d310900c6cd76c871811fa5', 1, '2008-05-21', '18373557862', '湖南常德', 3, NULL, '2021-05-21 23:33:37', NULL, NULL, 1, '98c99bfeb946e8b599cda4670459a79e');
INSERT INTO `smbms_user` VALUES (68, '7777', 'test1', '9e46f82feaa79fca2897b87471de9bc8', 1, '2008-05-21', '18373557862', '湖南常德', 3, NULL, '2021-05-21 23:33:37', NULL, NULL, 1, '99138c331b82ae081749cb0a09bc079b');
INSERT INTO `smbms_user` VALUES (69, '741', 'test741', 'dae04fb36a1b1bc35fc4e60c2d287862', 2, '2005-08-18', '18375418857', '湖南常德', 3, NULL, '2021-05-21 23:39:34', NULL, NULL, 1, '86a4abdc77d2249b7dbf8c55f559d288');
INSERT INTO `smbms_user` VALUES (70, '852', 'test852', '9c7cf874c7d6a580e102df77d52d2643', 1, '2007-05-08', '110', '湖南', 3, NULL, '2021-05-21 23:41:21', NULL, NULL, 1, '34baa9a931300bf0ddc54b4d8f4e2652');
INSERT INTO `smbms_user` VALUES (71, '963', 'test963', 'cba83b4f882a00f598b3ee1ccf2bbcca', 1, '2018-05-16', '113', '北京', 3, NULL, '2021-05-21 23:42:24', NULL, NULL, 1, '34fc1de5ca976de7e5f4886489972ce0');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
