/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50612
Source Host           : localhost:3306
Source Database       : roland_new

Target Server Type    : MYSQL
Target Server Version : 50612
File Encoding         : 65001

Date: 2013-09-16 09:59:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `activity_detail`
-- ----------------------------
DROP TABLE IF EXISTS `activity_detail`;
CREATE TABLE `activity_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `introduce` varchar(255) DEFAULT NULL COMMENT '介绍',
  `address` varchar(255) DEFAULT NULL,
  `end_time` varchar(100) DEFAULT NULL,
  `start_time` varchar(100) DEFAULT NULL,
  `remarker` varchar(255) DEFAULT NULL,
  `channel_type_id` int(11) DEFAULT NULL COMMENT '渠道ID',
  `status_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='活动';

-- ----------------------------
-- Records of activity_detail
-- ----------------------------
INSERT INTO `activity_detail` VALUES ('1', '1', '1', '1', '1', '1', '1', '1', '1', '22');
INSERT INTO `activity_detail` VALUES ('2', '2', '16', '2', '2', '2', '2', '2', '2', '22');
INSERT INTO `activity_detail` VALUES ('3', '3', '24', '3', '3', '3', '3', '3', '3', '22');
INSERT INTO `activity_detail` VALUES ('4', '大槐树', '1', '<font color=\"FF0000\"><i><b>担待点</b></i></font>11111111111<br>', '三元桥', '13年08月31日', '13年08月14日', '', '4', '22');
INSERT INTO `activity_detail` VALUES ('5', '嘎嘎', '1', '滚滚滚滚滚滚滚滚滚滚滚滚滚滚滚滚滚滚滚滚滚滚滚滚滚滚', '1111', '13年08月13日', '13年08月13日', '滚滚滚', '3', '22');
INSERT INTO `activity_detail` VALUES ('6', '3', '1', '33333333333333', '2222', '13年08月30日', '13年08月06日', '333333333', '3', '21');
INSERT INTO `activity_detail` VALUES ('7', '555', '1', '55555555555555555555555555555555555', '55', '13年08月31日', '13年08月14日', '5555555555', '3', '21');
INSERT INTO `activity_detail` VALUES ('8', '22', '1', '22', '2222', '13年08月22日', '13年08月22日', '22', '3', '22');
INSERT INTO `activity_detail` VALUES ('9', '22', '1', '22', '222', '13年08月08日', '13年07月31日', '222', '3', '22');

-- ----------------------------
-- Table structure for `attendance`
-- ----------------------------
DROP TABLE IF EXISTS `attendance`;
CREATE TABLE `attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_internal_id` int(11) DEFAULT NULL,
  `create_date` varchar(30) DEFAULT NULL,
  `today_is_attendance` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='出勤表';

-- ----------------------------
-- Records of attendance
-- ----------------------------

-- ----------------------------
-- Table structure for `channel_type`
-- ----------------------------
DROP TABLE IF EXISTS `channel_type`;
CREATE TABLE `channel_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `parent_id` int(11) DEFAULT '0',
  `create_date` varchar(30) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='渠道类别';

-- ----------------------------
-- Records of channel_type
-- ----------------------------
INSERT INTO `channel_type` VALUES ('1', '网络', '0', '2013-08-28 15:51:26', '1');
INSERT INTO `channel_type` VALUES ('2', '市场', '0', '2013-08-28 16:12:09', '1');
INSERT INTO `channel_type` VALUES ('3', '渠道合作', '2', null, null);
INSERT INTO `channel_type` VALUES ('4', '地推', '2', null, null);

-- ----------------------------
-- Table structure for `class`
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `progress_rate` int(11) DEFAULT NULL COMMENT '进度',
  `start_time` varchar(30) DEFAULT NULL,
  `end_time` varchar(30) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `limit` int(11) DEFAULT NULL COMMENT '最多人数',
  `lesson_date_id` int(11) DEFAULT NULL COMMENT '课程计划表',
  PRIMARY KEY (`id`),
  KEY `PK_LESSON_DATE_ID_AND_CLASS` (`lesson_date_id`),
  CONSTRAINT `PK_LESSON_DATE_ID_AND_CLASS` FOREIGN KEY (`lesson_date_id`) REFERENCES `lesson_date` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='班级';

-- ----------------------------
-- Records of class
-- ----------------------------

-- ----------------------------
-- Table structure for `class_date`
-- ----------------------------
DROP TABLE IF EXISTS `class_date`;
CREATE TABLE `class_date` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_time` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class_date
-- ----------------------------
INSERT INTO `class_date` VALUES ('1', '9:00');
INSERT INTO `class_date` VALUES ('2', '9:20');
INSERT INTO `class_date` VALUES ('3', '9:40');
INSERT INTO `class_date` VALUES ('4', '10:00');
INSERT INTO `class_date` VALUES ('5', '10:20');
INSERT INTO `class_date` VALUES ('6', '10:40');
INSERT INTO `class_date` VALUES ('7', '11:00');
INSERT INTO `class_date` VALUES ('8', '11:20');
INSERT INTO `class_date` VALUES ('9', '11:40');
INSERT INTO `class_date` VALUES ('10', '13:00');
INSERT INTO `class_date` VALUES ('11', '13:20');
INSERT INTO `class_date` VALUES ('12', '13:40');
INSERT INTO `class_date` VALUES ('13', '14:00');
INSERT INTO `class_date` VALUES ('14', '14:20');
INSERT INTO `class_date` VALUES ('15', '14:40');
INSERT INTO `class_date` VALUES ('16', '15:00');
INSERT INTO `class_date` VALUES ('17', '15:20');
INSERT INTO `class_date` VALUES ('18', '15:40');
INSERT INTO `class_date` VALUES ('19', '16:00');
INSERT INTO `class_date` VALUES ('20', '16:20');
INSERT INTO `class_date` VALUES ('21', '16:40');
INSERT INTO `class_date` VALUES ('22', '17:00');
INSERT INTO `class_date` VALUES ('23', '17:20');
INSERT INTO `class_date` VALUES ('24', '17:40');
INSERT INTO `class_date` VALUES ('25', '18:00');
INSERT INTO `class_date` VALUES ('26', '18:20');
INSERT INTO `class_date` VALUES ('27', '18:40');
INSERT INTO `class_date` VALUES ('28', '19:00');
INSERT INTO `class_date` VALUES ('29', '19:20');
INSERT INTO `class_date` VALUES ('30', '19:40');
INSERT INTO `class_date` VALUES ('31', '20:00');
INSERT INTO `class_date` VALUES ('32', '20:20');
INSERT INTO `class_date` VALUES ('33', '20:40');
INSERT INTO `class_date` VALUES ('34', '21:00');
INSERT INTO `class_date` VALUES ('35', '21:20');
INSERT INTO `class_date` VALUES ('36', '21:40');
INSERT INTO `class_date` VALUES ('37', '22:00');
INSERT INTO `class_date` VALUES ('38', '22:20');
INSERT INTO `class_date` VALUES ('39', '22:40');
INSERT INTO `class_date` VALUES ('40', '23:00');
INSERT INTO `class_date` VALUES ('41', '23:20');
INSERT INTO `class_date` VALUES ('42', '23:40');

-- ----------------------------
-- Table structure for `class_log`
-- ----------------------------
DROP TABLE IF EXISTS `class_log`;
CREATE TABLE `class_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `remarker` varchar(255) DEFAULT NULL,
  `log_date` varchar(30) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='上课记录';

-- ----------------------------
-- Records of class_log
-- ----------------------------

-- ----------------------------
-- Table structure for `class_room`
-- ----------------------------
DROP TABLE IF EXISTS `class_room`;
CREATE TABLE `class_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `create_date` varchar(30) DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='教室';

-- ----------------------------
-- Records of class_room
-- ----------------------------

-- ----------------------------
-- Table structure for `class_room_date`
-- ----------------------------
DROP TABLE IF EXISTS `class_room_date`;
CREATE TABLE `class_room_date` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_class_date_id` int(30) DEFAULT NULL COMMENT '开始的时间段',
  `create_date` varchar(30) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='占课时间安排';

-- ----------------------------
-- Records of class_room_date
-- ----------------------------

-- ----------------------------
-- Table structure for `class_student`
-- ----------------------------
DROP TABLE IF EXISTS `class_student`;
CREATE TABLE `class_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_member_id` int(11) DEFAULT NULL COMMENT '学生',
  `class_id` int(11) DEFAULT NULL,
  `progress_rate` int(11) DEFAULT NULL COMMENT '进度',
  `create_date` varchar(30) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='班级和学生';

-- ----------------------------
-- Records of class_student
-- ----------------------------

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `create_date` varchar(30) DEFAULT NULL,
  `comment_id` int(11) DEFAULT NULL COMMENT '评论啥的ID',
  `type` int(11) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评论';

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for `competence`
-- ----------------------------
DROP TABLE IF EXISTS `competence`;
CREATE TABLE `competence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `ioc` varchar(255) DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `isOperation` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=317 DEFAULT CHARSET=utf8 COMMENT='权限';

-- ----------------------------
-- Records of competence
-- ----------------------------
INSERT INTO `competence` VALUES ('36', '权限管理', '0', 'compet', '/null', '0');
INSERT INTO `competence` VALUES ('38', '添加权限', '36', 'drive', '/competence/to_compet_index', '0');
INSERT INTO `competence` VALUES ('43', '学校管理', '0', '/', '/null', '0');
INSERT INTO `competence` VALUES ('44', '学校信息', '43', 'school', '/school/toSchool', '0');
INSERT INTO `competence` VALUES ('48', '课程管理', '43', '/', '/course/toCourse', '0');
INSERT INTO `competence` VALUES ('54', '班级管理', '43', '/', '/null', '0');
INSERT INTO `competence` VALUES ('63', '教学管理', '0', '/', '/null', '0');
INSERT INTO `competence` VALUES ('64', '课表管理', '63', '/', '/null', '0');
INSERT INTO `competence` VALUES ('65', '补课管理', '63', '/', '/null', '0');
INSERT INTO `competence` VALUES ('66', '出勤管理', '63', '/', '/null', '0');
INSERT INTO `competence` VALUES ('67', '教学进度', '63', '/', '/null', '0');
INSERT INTO `competence` VALUES ('70', '教学检查', '63', '/', '/null', '0');
INSERT INTO `competence` VALUES ('73', '学生管理', '43', '/', '/null', '0');
INSERT INTO `competence` VALUES ('85', '数据管理', '0', '/', '/null', '0');
INSERT INTO `competence` VALUES ('87', '市场管理', '0', '/', '/null', '0');
INSERT INTO `competence` VALUES ('88', '内容管理', '0', '/', '/null', '0');
INSERT INTO `competence` VALUES ('89', '人事管理', '0', '/', '/null', '0');
INSERT INTO `competence` VALUES ('90', '招生管理', '0', '/', '/null', '0');
INSERT INTO `competence` VALUES ('91', '签约列表', '90', '/', '/null', '0');
INSERT INTO `competence` VALUES ('93', '潜在用户', '90', '/', '/student', '0');
INSERT INTO `competence` VALUES ('94', '校务总览', '90', '/', '/null', '0');
INSERT INTO `competence` VALUES ('124', '冻结列表', '90', '/', '/null', '0');
INSERT INTO `competence` VALUES ('128', '权限组', '89', '/', '/competence/to_compet_group', '0');
INSERT INTO `competence` VALUES ('129', '职员管理', '89', '/', '/user/toManageAdmin', '0');
INSERT INTO `competence` VALUES ('130', '权限分配', '89', '/', '/null', '0');
INSERT INTO `competence` VALUES ('142', '家园管理', '88', '/', '/null', '0');
INSERT INTO `competence` VALUES ('143', '视频管理', '88', '/', '/null', '0');
INSERT INTO `competence` VALUES ('144', '下载管理', '88', '/', '/null', '0');
INSERT INTO `competence` VALUES ('145', '照片墙', '88', '/', '/null', '0');
INSERT INTO `competence` VALUES ('155', '渠道数据管理', '87', '/', '/null', '0');
INSERT INTO `competence` VALUES ('157', '加盟申请管理', '87', '/', '/null', '0');
INSERT INTO `competence` VALUES ('158', '器材/教材销售', '87', '/', '/null', '0');
INSERT INTO `competence` VALUES ('159', '合作收入', '87', '/', '/null', '0');
INSERT INTO `competence` VALUES ('160', '内部通知', '0', '/', '/null', '0');
INSERT INTO `competence` VALUES ('161', '发件箱', '160', '/', '/null', '0');
INSERT INTO `competence` VALUES ('162', '收件箱', '160', '/', '/null', '0');
INSERT INTO `competence` VALUES ('164', '数据统计', '85', '/', '/null', '0');
INSERT INTO `competence` VALUES ('165', '退费管理', '85', '/', '/null', '0');
INSERT INTO `competence` VALUES ('166', '缴费管理', '85', '/', '/null', '0');
INSERT INTO `competence` VALUES ('167', '删除管理', '85', '/', '/null', '0');
INSERT INTO `competence` VALUES ('168', '删除记录', '85', '/', '/null', '0');
INSERT INTO `competence` VALUES ('180', '编辑', '44', 'school_go', 'edit_school', null);
INSERT INTO `competence` VALUES ('181', '保存', '44', 'save_ioc', 'save_school', null);
INSERT INTO `competence` VALUES ('182', '添加学校', '44', 'school_add', 'add_school', null);
INSERT INTO `competence` VALUES ('183', '编辑', '48', '/', 'edit_course', null);
INSERT INTO `competence` VALUES ('184', '添加', '48', '/', 'add_course', null);
INSERT INTO `competence` VALUES ('185', ' 暂停', '48', '/', 'stop_course', null);
INSERT INTO `competence` VALUES ('186', '删除', '48', '/', 'delete_course', null);
INSERT INTO `competence` VALUES ('187', '启用', '48', '/', 'start_course', null);
INSERT INTO `competence` VALUES ('188', '启用', '54', '/', 'start_class', null);
INSERT INTO `competence` VALUES ('189', ' 编辑', '54', '/', 'edic_class', null);
INSERT INTO `competence` VALUES ('190', '导出当页', '54', '/', 'exprot_page_class', null);
INSERT INTO `competence` VALUES ('191', '导出全部', '54', '/', 'export_all_class', null);
INSERT INTO `competence` VALUES ('192', '删除申请', '54', '/', 'del_class', null);
INSERT INTO `competence` VALUES ('193', '解除冻结', '54', '/', 'del_free_class', null);
INSERT INTO `competence` VALUES ('194', '冻结', '54', '/', 'free_class', null);
INSERT INTO `competence` VALUES ('195', '添加', '54', '/', 'add_class', null);
INSERT INTO `competence` VALUES ('196', '日期调停', '64', '/', 'date_change', null);
INSERT INTO `competence` VALUES ('197', '教师变更', '64', '/', 'teacher_change', null);
INSERT INTO `competence` VALUES ('236', '补课安排  ', '65', '/', 'fill_lession_arrange', null);
INSERT INTO `competence` VALUES ('237', '补课记录查询', '65', '/', 'fill_lession_query', null);
INSERT INTO `competence` VALUES ('238', '编辑', '73', '/', 'edit_student', null);
INSERT INTO `competence` VALUES ('239', ' 重置密码', '73', '/', 'reset_password', null);
INSERT INTO `competence` VALUES ('240', '可否登入软件', '73', '/', 'software_is_login', null);
INSERT INTO `competence` VALUES ('241', '导出当页', '73', '/', 'export_page_student', null);
INSERT INTO `competence` VALUES ('242', '导出全部', '73', '/', 'export_all_student', null);
INSERT INTO `competence` VALUES ('243', '取消推荐', '73', '/', 'recommended_to_cancel', null);
INSERT INTO `competence` VALUES ('244', '推荐', '73', '/', 'recommended', null);
INSERT INTO `competence` VALUES ('245', '解除删除', '73', '/', 'apply_delete_student_remover', null);
INSERT INTO `competence` VALUES ('246', '删除申请', '73', '/', 'apply_delete_student', null);
INSERT INTO `competence` VALUES ('247', '解除冻结', '73', '/', 'free_student_remover', null);
INSERT INTO `competence` VALUES ('248', '冻结', '73', '/', 'free_student', null);
INSERT INTO `competence` VALUES ('249', '教务', '94', '/', '/null', null);
INSERT INTO `competence` VALUES ('250', '市场', '94', '/', '/null', null);
INSERT INTO `competence` VALUES ('251', '业务', '94', '/', '/null', null);
INSERT INTO `competence` VALUES ('253', '编辑', '93', '/', 'edit_student', null);
INSERT INTO `competence` VALUES ('254', '指派学校', '93', '/', 'appoin_school', null);
INSERT INTO `competence` VALUES ('255', '指派顾问', '93', '/', 'appoin_user_internal', null);
INSERT INTO `competence` VALUES ('256', '导入学生', '93', '/', 'import_student', null);
INSERT INTO `competence` VALUES ('257', '导出学生', '93', '/', 'export_student', null);
INSERT INTO `competence` VALUES ('258', '撤销删除', '93', '/', 'apply_delete_student_remover', null);
INSERT INTO `competence` VALUES ('259', '删除申请', '93', '/', 'apply_delete_student', null);
INSERT INTO `competence` VALUES ('260', '撤销冻结', '93', '/', 'free_student_remover', null);
INSERT INTO `competence` VALUES ('261', '冻结', '93', '/', 'free_student', null);
INSERT INTO `competence` VALUES ('262', '用户添加', '93', '/', 'add_student', null);
INSERT INTO `competence` VALUES ('263', '保存', '128', '/', 'save_user_group', null);
INSERT INTO `competence` VALUES ('264', '删除', '128', '/', 'delete_user_group', null);
INSERT INTO `competence` VALUES ('265', '添加', '128', '/', 'add_user_group', null);
INSERT INTO `competence` VALUES ('266', '编辑', '129', '/', 'edit_user_internal', null);
INSERT INTO `competence` VALUES ('267', '重置密码 ', '129', '/', 'reset_password', null);
INSERT INTO `competence` VALUES ('268', '撤销删除申请', '129', '/', 'apply_delete_user_internal_remover', null);
INSERT INTO `competence` VALUES ('269', '删除申请', '129', '/', 'apply_delete_user_inernal', null);
INSERT INTO `competence` VALUES ('270', '解除冻结', '129', '/', 'free_user_internal_remover', null);
INSERT INTO `competence` VALUES ('271', '冻结', '129', '/', 'free_user_internal', null);
INSERT INTO `competence` VALUES ('272', '添加', '129', '/', 'add_user_internal', null);
INSERT INTO `competence` VALUES ('273', '删除', '145', '/', 'delete_imgwall', null);
INSERT INTO `competence` VALUES ('274', '添加', '145', '/', 'add_imgwall', null);
INSERT INTO `competence` VALUES ('275', '删除', '144', '/', 'delete_down_file', null);
INSERT INTO `competence` VALUES ('276', '编辑', '144', '/', 'edit_down_file', null);
INSERT INTO `competence` VALUES ('277', '添加', '144', '/', 'add_down_file', null);
INSERT INTO `competence` VALUES ('278', '撤销推荐', '143', '/', 'cancel_apply_video', null);
INSERT INTO `competence` VALUES ('279', '推荐到集团 ', '143', '/', 'apply_group_video', null);
INSERT INTO `competence` VALUES ('280', '取消发布', '143', '/', 'cancel_release_video', null);
INSERT INTO `competence` VALUES ('281', '发布', '143', '/', 'release_video', null);
INSERT INTO `competence` VALUES ('282', '删除', '143', '/', 'delete_video', null);
INSERT INTO `competence` VALUES ('283', '编辑 ', '143', '/', 'edit_video', null);
INSERT INTO `competence` VALUES ('284', '添加', '143', '/', 'add_video', null);
INSERT INTO `competence` VALUES ('285', '撤销推荐', '142', '/', 'cancel_apply_group_home', null);
INSERT INTO `competence` VALUES ('286', '推荐到集团', '142', '/', 'apply_group_home', null);
INSERT INTO `competence` VALUES ('287', '取消发布', '142', '/', 'cancel_release', null);
INSERT INTO `competence` VALUES ('288', '发布', '142', '/', 'release_home', null);
INSERT INTO `competence` VALUES ('289', '删除', '142', '/', 'delete_home', null);
INSERT INTO `competence` VALUES ('290', '添加 ', '142', '/', 'add_home', null);
INSERT INTO `competence` VALUES ('291', '查看', '157', '/', '/null', null);
INSERT INTO `competence` VALUES ('292', '删除 ', '157', '/', '/null', null);
INSERT INTO `competence` VALUES ('297', '编辑', '155', '/', '/null', null);
INSERT INTO `competence` VALUES ('298', '导入', '155', '/', '/null', null);
INSERT INTO `competence` VALUES ('299', '添加', '155', '/', '/null', null);
INSERT INTO `competence` VALUES ('300', '删除', '155', '/', '/null', null);
INSERT INTO `competence` VALUES ('301', '活动管理', '87', '/', '/activity/to_activity', null);
INSERT INTO `competence` VALUES ('302', '编辑', '301', '/', 'edit_activity', null);
INSERT INTO `competence` VALUES ('303', '添加', '301', '/', 'insert_activity', null);
INSERT INTO `competence` VALUES ('305', '导出', '155', '/', '/null', null);
INSERT INTO `competence` VALUES ('306', '编辑', '142', '/', 'edit_home', null);
INSERT INTO `competence` VALUES ('307', '续费', '73', '/', 'renewal', null);
INSERT INTO `competence` VALUES ('308', '报班', '73', '/', 'the_class', null);
INSERT INTO `competence` VALUES ('309', '转班', '73', '/', 'turn_class', null);
INSERT INTO `competence` VALUES ('315', '管理', '36', '/', '/all_util', null);
INSERT INTO `competence` VALUES ('316', '保存', '301', '/', 'save_activity', null);

-- ----------------------------
-- Table structure for `competence_and_group`
-- ----------------------------
DROP TABLE IF EXISTS `competence_and_group`;
CREATE TABLE `competence_and_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `compe_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=318 DEFAULT CHARSET=utf8 COMMENT='权限和权限组';

-- ----------------------------
-- Records of competence_and_group
-- ----------------------------
INSERT INTO `competence_and_group` VALUES ('37', '36', '1');
INSERT INTO `competence_and_group` VALUES ('39', '38', '1');
INSERT INTO `competence_and_group` VALUES ('44', '43', '1');
INSERT INTO `competence_and_group` VALUES ('45', '44', '1');
INSERT INTO `competence_and_group` VALUES ('49', '48', '1');
INSERT INTO `competence_and_group` VALUES ('55', '54', '1');
INSERT INTO `competence_and_group` VALUES ('64', '63', '1');
INSERT INTO `competence_and_group` VALUES ('65', '64', '1');
INSERT INTO `competence_and_group` VALUES ('66', '65', '1');
INSERT INTO `competence_and_group` VALUES ('67', '66', '1');
INSERT INTO `competence_and_group` VALUES ('68', '67', '1');
INSERT INTO `competence_and_group` VALUES ('71', '70', '1');
INSERT INTO `competence_and_group` VALUES ('74', '73', '1');
INSERT INTO `competence_and_group` VALUES ('86', '85', '1');
INSERT INTO `competence_and_group` VALUES ('88', '87', '1');
INSERT INTO `competence_and_group` VALUES ('89', '88', '1');
INSERT INTO `competence_and_group` VALUES ('90', '89', '1');
INSERT INTO `competence_and_group` VALUES ('91', '90', '1');
INSERT INTO `competence_and_group` VALUES ('92', '91', '1');
INSERT INTO `competence_and_group` VALUES ('94', '93', '1');
INSERT INTO `competence_and_group` VALUES ('95', '94', '1');
INSERT INTO `competence_and_group` VALUES ('125', '124', '1');
INSERT INTO `competence_and_group` VALUES ('129', '128', '1');
INSERT INTO `competence_and_group` VALUES ('130', '129', '1');
INSERT INTO `competence_and_group` VALUES ('131', '130', '1');
INSERT INTO `competence_and_group` VALUES ('143', '142', '1');
INSERT INTO `competence_and_group` VALUES ('144', '143', '1');
INSERT INTO `competence_and_group` VALUES ('145', '144', '1');
INSERT INTO `competence_and_group` VALUES ('146', '145', '1');
INSERT INTO `competence_and_group` VALUES ('156', '155', '1');
INSERT INTO `competence_and_group` VALUES ('158', '157', '1');
INSERT INTO `competence_and_group` VALUES ('159', '158', '1');
INSERT INTO `competence_and_group` VALUES ('160', '159', '1');
INSERT INTO `competence_and_group` VALUES ('161', '160', '1');
INSERT INTO `competence_and_group` VALUES ('162', '161', '1');
INSERT INTO `competence_and_group` VALUES ('163', '162', '1');
INSERT INTO `competence_and_group` VALUES ('165', '164', '1');
INSERT INTO `competence_and_group` VALUES ('166', '165', '1');
INSERT INTO `competence_and_group` VALUES ('167', '166', '1');
INSERT INTO `competence_and_group` VALUES ('168', '167', '1');
INSERT INTO `competence_and_group` VALUES ('169', '168', '1');
INSERT INTO `competence_and_group` VALUES ('181', '180', '1');
INSERT INTO `competence_and_group` VALUES ('182', '181', '1');
INSERT INTO `competence_and_group` VALUES ('183', '182', '1');
INSERT INTO `competence_and_group` VALUES ('184', '183', '1');
INSERT INTO `competence_and_group` VALUES ('185', '184', '1');
INSERT INTO `competence_and_group` VALUES ('186', '185', '1');
INSERT INTO `competence_and_group` VALUES ('187', '186', '1');
INSERT INTO `competence_and_group` VALUES ('188', '187', '1');
INSERT INTO `competence_and_group` VALUES ('189', '188', '1');
INSERT INTO `competence_and_group` VALUES ('190', '189', '1');
INSERT INTO `competence_and_group` VALUES ('191', '190', '1');
INSERT INTO `competence_and_group` VALUES ('192', '191', '1');
INSERT INTO `competence_and_group` VALUES ('193', '192', '1');
INSERT INTO `competence_and_group` VALUES ('194', '193', '1');
INSERT INTO `competence_and_group` VALUES ('195', '194', '1');
INSERT INTO `competence_and_group` VALUES ('196', '195', '1');
INSERT INTO `competence_and_group` VALUES ('197', '196', '1');
INSERT INTO `competence_and_group` VALUES ('198', '197', '1');
INSERT INTO `competence_and_group` VALUES ('237', '236', '1');
INSERT INTO `competence_and_group` VALUES ('238', '237', '1');
INSERT INTO `competence_and_group` VALUES ('239', '238', '1');
INSERT INTO `competence_and_group` VALUES ('240', '239', '1');
INSERT INTO `competence_and_group` VALUES ('241', '240', '1');
INSERT INTO `competence_and_group` VALUES ('242', '241', '1');
INSERT INTO `competence_and_group` VALUES ('243', '242', '1');
INSERT INTO `competence_and_group` VALUES ('244', '243', '1');
INSERT INTO `competence_and_group` VALUES ('245', '244', '1');
INSERT INTO `competence_and_group` VALUES ('246', '245', '1');
INSERT INTO `competence_and_group` VALUES ('247', '246', '1');
INSERT INTO `competence_and_group` VALUES ('248', '247', '1');
INSERT INTO `competence_and_group` VALUES ('249', '248', '1');
INSERT INTO `competence_and_group` VALUES ('250', '249', '1');
INSERT INTO `competence_and_group` VALUES ('251', '250', '1');
INSERT INTO `competence_and_group` VALUES ('252', '251', '1');
INSERT INTO `competence_and_group` VALUES ('254', '253', '1');
INSERT INTO `competence_and_group` VALUES ('255', '254', '1');
INSERT INTO `competence_and_group` VALUES ('256', '255', '1');
INSERT INTO `competence_and_group` VALUES ('257', '256', '1');
INSERT INTO `competence_and_group` VALUES ('258', '257', '1');
INSERT INTO `competence_and_group` VALUES ('259', '258', '1');
INSERT INTO `competence_and_group` VALUES ('260', '259', '1');
INSERT INTO `competence_and_group` VALUES ('261', '260', '1');
INSERT INTO `competence_and_group` VALUES ('262', '261', '1');
INSERT INTO `competence_and_group` VALUES ('263', '262', '1');
INSERT INTO `competence_and_group` VALUES ('264', '263', '1');
INSERT INTO `competence_and_group` VALUES ('265', '264', '1');
INSERT INTO `competence_and_group` VALUES ('266', '265', '1');
INSERT INTO `competence_and_group` VALUES ('267', '266', '1');
INSERT INTO `competence_and_group` VALUES ('268', '267', '1');
INSERT INTO `competence_and_group` VALUES ('269', '268', '1');
INSERT INTO `competence_and_group` VALUES ('270', '269', '1');
INSERT INTO `competence_and_group` VALUES ('271', '270', '1');
INSERT INTO `competence_and_group` VALUES ('272', '271', '1');
INSERT INTO `competence_and_group` VALUES ('273', '272', '1');
INSERT INTO `competence_and_group` VALUES ('274', '273', '1');
INSERT INTO `competence_and_group` VALUES ('275', '274', '1');
INSERT INTO `competence_and_group` VALUES ('276', '275', '1');
INSERT INTO `competence_and_group` VALUES ('277', '276', '1');
INSERT INTO `competence_and_group` VALUES ('278', '277', '1');
INSERT INTO `competence_and_group` VALUES ('279', '278', '1');
INSERT INTO `competence_and_group` VALUES ('280', '279', '1');
INSERT INTO `competence_and_group` VALUES ('281', '280', '1');
INSERT INTO `competence_and_group` VALUES ('282', '281', '1');
INSERT INTO `competence_and_group` VALUES ('283', '282', '1');
INSERT INTO `competence_and_group` VALUES ('284', '283', '1');
INSERT INTO `competence_and_group` VALUES ('285', '284', '1');
INSERT INTO `competence_and_group` VALUES ('286', '285', '1');
INSERT INTO `competence_and_group` VALUES ('287', '286', '1');
INSERT INTO `competence_and_group` VALUES ('288', '287', '1');
INSERT INTO `competence_and_group` VALUES ('289', '288', '1');
INSERT INTO `competence_and_group` VALUES ('290', '289', '1');
INSERT INTO `competence_and_group` VALUES ('291', '290', '1');
INSERT INTO `competence_and_group` VALUES ('292', '291', '1');
INSERT INTO `competence_and_group` VALUES ('293', '292', '1');
INSERT INTO `competence_and_group` VALUES ('298', '297', '1');
INSERT INTO `competence_and_group` VALUES ('299', '298', '1');
INSERT INTO `competence_and_group` VALUES ('300', '299', '1');
INSERT INTO `competence_and_group` VALUES ('301', '300', '1');
INSERT INTO `competence_and_group` VALUES ('302', '301', '1');
INSERT INTO `competence_and_group` VALUES ('303', '302', '1');
INSERT INTO `competence_and_group` VALUES ('304', '303', '1');
INSERT INTO `competence_and_group` VALUES ('306', '305', '1');
INSERT INTO `competence_and_group` VALUES ('307', '306', '1');
INSERT INTO `competence_and_group` VALUES ('308', '307', '1');
INSERT INTO `competence_and_group` VALUES ('309', '308', '1');
INSERT INTO `competence_and_group` VALUES ('310', '309', '1');
INSERT INTO `competence_and_group` VALUES ('316', '315', '1');
INSERT INTO `competence_and_group` VALUES ('317', '316', '1');

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `recruit_object` varchar(50) DEFAULT NULL COMMENT '适合年龄',
  `class_long_time` int(11) DEFAULT NULL COMMENT '课程时长',
  `class_standard` int(11) DEFAULT NULL COMMENT '课时',
  `tuition` double(50,0) DEFAULT NULL COMMENT '学费',
  `create_time` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8 COMMENT='课程表';

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', 'ism幼儿电鼓2.0（一）', '6', '4-5岁', '50', '20', '5000', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('2', 'ism幼儿电鼓2.0（二）', '6', '4-5岁', '50', '20', '5000', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('3', 'ism幼儿电鼓2.0（三）', '6', '5-6岁', '50', '20', '5000', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('4', 'ism幼儿电鼓2.0（四）', '6', '5-6岁', '50', '20', '5000', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('5', 'ism少儿电鼓初级（一）', '6', '6-7岁', '50', '20', '5000', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('6', 'ism少儿电鼓初级（二）', '6', '6-7岁', '50', '20', '5000', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('7', 'ism少儿电鼓初级（三）', '6', '7-8岁', '50', '20', '5000', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('8', 'ism少儿电鼓初级（四）', '6', '7-8岁', '50', '20', '5000', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('9', 'ism罗兰电鼓中级（一）', '6', '8-9岁', '50', '20', '5000', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('10', 'ism罗兰电鼓中级（二）', '6', '8-9岁', '50', '20', '5000', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('11', 'ism罗兰电鼓中级（三）', '6', '9-10岁', '50', '20', '5000', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('12', 'ism罗兰电鼓中级（四）', '6', '9-10岁', '50', '20', '5000', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('13', 'ism数码钢琴启蒙（一）', '3', '4-5岁', '50', '20', '5000', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('14', 'ism数码钢琴启蒙（二）', '3', '4-5岁', '50', '20', '5000', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('15', 'ism数码钢琴初级（一）', '3', '5-6岁', '50', '20', '5000', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('16', 'ism数码钢琴初级（二）', '3', '5-6岁', '50', '20', '5000', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('17', 'ism数码钢琴中级（一）', '3', '6-7岁', '50', '20', '4800', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('18', 'ism数码钢琴中级（二）', '3', '6-7岁', '50', '20', '4800', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('19', 'ism数码钢琴中级（三）', '3', '7-8岁', '50', '20', '4800', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('20', 'ism数码钢琴中级（四）', '3', '7-8岁', '50', '20', '4800', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('21', 'Res音乐启蒙（一）', '1', '2-3岁', '50', '24', '3600', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('22', 'Res电鼓课程初级（一）', '6', '4岁以上', '50', '18', '2160', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('23', 'Res电鼓课程初级（二）', '6', '4岁以上', '50', '18', '2160', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('24', 'Res电鼓课程初级（一）', '6', '6岁以上', '50', '18', '2160', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('25', 'Res电鼓课程初级（二）', '6', '6岁以上', '50', '18', '2160', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('26', 'Res电鼓课程初级（三）', '6', '6岁以上', '50', '18', '2160', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('27', 'Res电鼓课程中级（一）', '6', '10岁以上', '50', '18', '2700', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('28', 'Res电鼓课程中级（二）', '6', '10岁以上', '50', '18', '2700', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('29', 'Res电鼓课程中级（三）', '6', '10岁以上', '50', '18', '2700', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('30', 'Res电鼓课程高级（一）', '6', '10岁以上', '60', '18', '3240', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('31', 'Res电吉他课程初级（一）', '2', '6岁以上', '50', '18', '2350', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('32', 'Res电吉他课程初级（二）', '2', '6岁以上', '50', '18', '2350', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('33', 'Res电吉他课程初级（三）', '2', '6岁以上', '50', '18', '2350', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('34', 'Res电吉他课程中级（一）', '2', '6岁以上', '50', '18', '2620', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('35', 'Res电吉他课程中级（二）', '2', '6岁以上', '50', '18', '2620', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('36', 'Res电吉他课程中级（三）', '2', '6岁以上', '50', '18', '2620', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('37', 'Res电贝司课程初级（一）', '5', '6岁以上', '50', '18', '2700', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('38', 'Res电贝司课程初级（二）', '5', '6岁以上', '50', '18', '2700', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('39', 'Res电贝司课程初级（三）', '5', '6岁以上', '50', '18', '2700', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('40', 'Res电贝司课程中级（一）', '5', '6岁以上', '50', '18', '3000', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('41', 'Res电贝司课程中级（二）', '5', '6岁以上', '50', '18', '3000', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('42', 'Res电贝司课程中级（三）', '5', '6岁以上', '50', '18', '3000', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('43', '心理学', null, '高中毕业生', '100', '30', '3000', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('44', '电爵士鼓幼儿课程-1年', '6', '4-5岁', '50', '40', '9800', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('45', '电爵士鼓幼儿课程-2年', '6', '4-5岁', '50', '80', '19600', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('46', '电爵士鼓青少年课程（初级）-1年', '6', '', '50', '40', '9800', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('47', '电爵士鼓青少年课程（初级）-2年', '6', '', '50', '80', '19600', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('48', '电爵士鼓青少年课程（高级）-1年', '6', '', '50', '40', '10800', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('49', '电爵士鼓青少年课程（高级）-2年', '6', '', '50', '80', '21600', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('50', '数码钢琴幼儿课程-1年', '3', '4-5岁', '50', '40', '9800', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('51', '数码钢琴幼儿课程-2年', '3', '4-5岁', '50', '80', '19600', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('52', '数码钢琴青少年课程（初级）-1年', '3', '', '50', '40', '9800', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('53', '数码钢琴青少年课程（初级）-2年', '3', '', '50', '80', '19600', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('54', '数码钢琴青少年课程（高级）-1年', '3', '', '50', '40', '10800', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('55', '数码钢琴青少年课程（高级）-2年', '1', '', '50', '80', '21600', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('56', '幼儿音乐启蒙-1年', '1', '', '50', '40', '9800', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('57', '幼儿音乐启蒙-2年', '1', '', '50', '80', '19600', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('58', '电声乐队课（入门）第1年', '4', '', '50', '40', '10800', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('59', '电声乐队课（初级）第1年', '4', '', '50', '40', '11800', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('60', '电声乐队课（中级）第1年', '1', '', '50', '40', '12800', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('61', '电声乐队课（高级）第1年', '1', '', '50', '40', '13800', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('62', 'ism少儿电鼓初级（五）', '6', '9岁以上', '50', '20', '5200', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('63', 'ism少儿电鼓初级（六）', '6', '9岁以上', '50', '20', '5200', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('64', 'ism少儿电鼓教程（七）', '6', '9岁以上', '50', '20', '5200', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('65', 'ism少儿电鼓教程（八）', '6', '9岁以上', '50', '20', '5200', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('66', 'ism少儿电鼓教程（九）', '6', '11岁以上', '50', '20', '6000', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('67', 'ism少儿电鼓教程（十）', '6', '11岁以上', '50', '20', '6000', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('68', 'ism少儿电鼓教程（十一）', '6', '11岁以上', '50', '20', '6000', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('69', 'ism少儿电鼓教程（十二）', '6', '11岁以上', '50', '20', '6000', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('70', 'Res电鼓课程高级（二）', '6', '10岁以上', '60', '18', '3240', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('71', 'Res电鼓课程高级（三）', '6', '10岁以上', '60', '18', '3240', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('72', 'Res电鼓VIP课程', '6', '10岁以上', '50', '20', '6000', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('73', 'Res电吉他课程高级（一）', '2', '12岁以上', '50', '18', '3200', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('74', 'Res电吉他课程高级（二）', '2', '12岁以上', '50', '18', '3200', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('75', 'Res电吉他课程高级（三）', '2', '12岁以上', '50', '18', '3200', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('76', 'Res电吉他VIP课程', '2', '7岁以上', '50', '18', '5400', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('77', 'ism数码钢琴初级（三）', '3', '7岁以上', '50', '20', '5000', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('78', 'ism数码钢琴初级（四）', '3', '7岁以上', '50', '20', '5000', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('79', 'ism数码钢琴高级（一）', '3', '7岁以上', '50', '20', '5600', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('80', 'ism数码钢琴高级（二）', '3', '7岁以上', '50', '20', '5600', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('81', 'ism数码钢琴高级（三）', '3', '7岁以上', '50', '20', '5600', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('82', 'ism数码钢琴高级（四）', '3', '7岁以上', '50', '20', '5600', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('83', 'Res数码钢琴初级（一）', '3', '4岁以上', '45', '20', '2500', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('84', 'Res数码钢琴初级（二）', '3', '4岁以上', '45', '20', '2500', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('85', 'Res数码钢琴初级（三）', '3', '4岁以上', '45', '20', '2500', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('86', 'Res数码钢琴初级（四）', '3', '4岁以上', '45', '20', '2500', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('87', 'Res数码钢琴中级（一）', '3', '7岁以上', '45', '20', '3000', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('88', 'Res数码钢琴中级（二）', '3', '7岁以上', '45', '20', '3000', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('89', 'Res数码钢琴中级（三）', '3', '7岁以上', '45', '20', '3000', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('90', 'Res数码钢琴中级（四）', '3', '7岁以上', '45', '20', '3000', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('91', 'Res数码钢琴高级（一）', '3', '10岁以上', '60', '20', '3500', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('92', 'Res数码钢琴高级（二）', '3', '10岁以上', '60', '20', '3500', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('93', 'Res数码钢琴高级（三）', '3', '10岁以上', '60', '20', '3500', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('94', 'Res数码钢琴高级（四）', '3', '10岁以上', '60', '20', '3500', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('95', 'Res电贝司课程高级（一）', '5', '12岁以上', '50', '18', '3200', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('96', 'Res电贝司课程高级（二）', '5', '12岁以上', '50', '18', '3200', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('97', 'Res电贝司课程高级（三）', '5', '12岁以上', '50', '18', '3200', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('98', 'Res电贝司VIP课程', '5', '7岁以上', '50', '18', '5400', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('99', 'Res音乐启蒙（二）', '1', '3---4岁', '50', '24', '3600', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('100', 'Res音乐启蒙（三）', '1', '3---4岁', '50', '24', '3600', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('101', 'Res音乐启蒙（四）', '1', '3---4岁', '50', '24', '3600', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('102', 'Res电声小乐队初级（一）', '4', '有初级单项乐器基础', '90', '20', '3000', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('103', 'Res电声小乐队初级（二）', '4', '有初级单项乐器基础', '90', '20', '3000', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('104', 'Res电声小乐队中级（一）', '4', '有中级单项乐器基础', '90', '20', '4000', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('105', 'Res电声小乐队中级（二）', '4', '有中级单项乐器基础', '90', '20', '4000', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('106', 'Res电声小乐队高级（一）', '4', '有高级单项乐器基础', '90', '20', '5000', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('107', 'Res电声小乐队高级（二）', '4', '有高级单项乐器基础', '90', '20', '5000', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('108', '幼儿尤克里里初级', '2', '4岁以上', '50', '40', '9800', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('109', '少儿尤克里里初级', '2', '6岁以上', '50', '40', '9800', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('110', '少儿声乐初级（一）', '4', '7岁以上 一对一', '45', '20', '2500', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('111', '少儿声乐初级（二）', '4', '7岁以上 一对一', '45', '20', '2500', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('112', '少儿声乐初级（三）', '4', '7岁以上 一对一', '45', '20', '2500', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('113', '少儿声乐中级（四）', '4', '7岁以上 一对一', '45', '20', '3000', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('114', '少儿声乐中级（五）', '4', '7岁以上 一对一', '45', '20', '3000', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('115', '少儿声乐中级（六）', '4', '7岁以上 一对一', '45', '20', '3000', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('116', '少儿声乐高级（七）', '4', '10岁以上 一对一', '45', '20', '3500', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('117', '少儿声乐高级（八）', '4', '10岁以上 一对一', '45', '20', '3500', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('118', '少儿声乐高级（九）', '4', '10岁以上 一对一', '45', '20', '3500', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('119', '少儿声乐初级（一）', '4', '7岁以上 一对二', '45', '20', '2350', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('120', '少儿声乐初级（二）', '4', '7岁以上 一对二', '45', '20', '2350', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('121', '少儿声乐初级（三）', '4', '7岁以上 一对二', '45', '20', '2350', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('122', '少儿声乐中级（四）', '4', '7岁以上 一对二', '45', '20', '2850', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('123', '少儿声乐中级（五）', '4', '7岁以上 一对二', '45', '20', '2850', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('124', '少儿声乐中级（六）', '4', '7岁以上 一对二', '45', '20', '2850', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('125', '少儿声乐高级（七）', '4', '10岁以上 一对二', '45', '20', '3350', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('126', '少儿声乐高级（八）', '4', '10岁以上 一对二', '45', '20', '3350', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('127', '少儿声乐高级（九）', '4', '10岁以上 一对二', '45', '20', '3350', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('128', '创造性舞动', '4', '年龄4-14', '50', '40', '8000', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('129', 'CC幼儿电爵士鼓课程第1学年', '6', '', '50', '40', '7200', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('130', 'CC幼儿电爵士鼓课程第2学年', '6', '', '50', '40', '7200', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('131', 'CC少儿电爵士鼓课程第1学年', '6', '', '50', '40', '7200', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('132', 'CC少儿电爵士鼓课程第2学年', '6', '', '50', '40', '7200', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('133', 'CC幼儿数码钢琴课程第1学年', '3', '', '50', '40', '7200', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('134', 'CC幼儿数码钢琴课程第2学年', '3', '', '50', '40', '7200', '2013-08-05 10:45:30');
INSERT INTO `course` VALUES ('135', '成人吉他课程（初级）', '2', '', '50', '40', '9800', '2013-08-05 10:45:30');

-- ----------------------------
-- Table structure for `course_type`
-- ----------------------------
DROP TABLE IF EXISTS `course_type`;
CREATE TABLE `course_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_type
-- ----------------------------
INSERT INTO `course_type` VALUES ('1', '罗兰启蒙教育');
INSERT INTO `course_type` VALUES ('2', '电吉他课程');
INSERT INTO `course_type` VALUES ('3', '数码钢琴课程');
INSERT INTO `course_type` VALUES ('4', '电声队乐课程');
INSERT INTO `course_type` VALUES ('5', '电贝司课程');
INSERT INTO `course_type` VALUES ('6', '电爵士鼓课程');
INSERT INTO `course_type` VALUES ('7', '电子风琴课程');

-- ----------------------------
-- Table structure for `degrees`
-- ----------------------------
DROP TABLE IF EXISTS `degrees`;
CREATE TABLE `degrees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of degrees
-- ----------------------------

-- ----------------------------
-- Table structure for `discount`
-- ----------------------------
DROP TABLE IF EXISTS `discount`;
CREATE TABLE `discount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_internal_id` int(11) DEFAULT NULL,
  `create_date` varchar(30) DEFAULT NULL,
  `number` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='折扣';

-- ----------------------------
-- Records of discount
-- ----------------------------

-- ----------------------------
-- Table structure for `dynamic`
-- ----------------------------
DROP TABLE IF EXISTS `dynamic`;
CREATE TABLE `dynamic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `create_date` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='动态';

-- ----------------------------
-- Records of dynamic
-- ----------------------------

-- ----------------------------
-- Table structure for `email`
-- ----------------------------
DROP TABLE IF EXISTS `email`;
CREATE TABLE `email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='邮箱设置';

-- ----------------------------
-- Records of email
-- ----------------------------

-- ----------------------------
-- Table structure for `friends`
-- ----------------------------
DROP TABLE IF EXISTS `friends`;
CREATE TABLE `friends` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_m_id` int(11) DEFAULT NULL,
  `user_y_id` int(11) DEFAULT NULL,
  `create_date` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='朋友';

-- ----------------------------
-- Records of friends
-- ----------------------------

-- ----------------------------
-- Table structure for `home_work`
-- ----------------------------
DROP TABLE IF EXISTS `home_work`;
CREATE TABLE `home_work` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lesson_date_id` int(11) DEFAULT NULL COMMENT '课程',
  `end_date` varchar(30) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL COMMENT '内容',
  `remarker` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='家庭作业';

-- ----------------------------
-- Records of home_work
-- ----------------------------

-- ----------------------------
-- Table structure for `home_work_complete`
-- ----------------------------
DROP TABLE IF EXISTS `home_work_complete`;
CREATE TABLE `home_work_complete` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` varchar(30) DEFAULT NULL,
  `submit_content` varchar(255) DEFAULT NULL COMMENT '提交的内容',
  `user_member_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学生提交的作业';

-- ----------------------------
-- Records of home_work_complete
-- ----------------------------

-- ----------------------------
-- Table structure for `image_wall`
-- ----------------------------
DROP TABLE IF EXISTS `image_wall`;
CREATE TABLE `image_wall` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `url_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='照片墙';

-- ----------------------------
-- Records of image_wall
-- ----------------------------

-- ----------------------------
-- Table structure for `lesson_class_date`
-- ----------------------------
DROP TABLE IF EXISTS `lesson_class_date`;
CREATE TABLE `lesson_class_date` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lesson_date_id` int(11) DEFAULT NULL,
  `class_date_id` int(11) DEFAULT NULL,
  `lesson_date` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='占课时间与教学计划表';

-- ----------------------------
-- Records of lesson_class_date
-- ----------------------------

-- ----------------------------
-- Table structure for `lesson_date`
-- ----------------------------
DROP TABLE IF EXISTS `lesson_date`;
CREATE TABLE `lesson_date` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) DEFAULT NULL COMMENT '班级ID',
  `lesson_class_date_id` int(11) DEFAULT NULL COMMENT '上课时间',
  `class_room_id` int(11) DEFAULT NULL COMMENT '教室',
  `remark` varchar(255) DEFAULT NULL,
  `lesson_number` int(11) DEFAULT NULL COMMENT '课时数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='课程时间安排';

-- ----------------------------
-- Records of lesson_date
-- ----------------------------

-- ----------------------------
-- Table structure for `lesson_experience`
-- ----------------------------
DROP TABLE IF EXISTS `lesson_experience`;
CREATE TABLE `lesson_experience` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0:需要跟进，2：拒接，3：缺席',
  `create_date` varchar(30) DEFAULT NULL,
  `remarker` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='体验课记录';

-- ----------------------------
-- Records of lesson_experience
-- ----------------------------

-- ----------------------------
-- Table structure for `l_user`
-- ----------------------------
DROP TABLE IF EXISTS `l_user`;
CREATE TABLE `l_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '用户名',
  `us_code` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '用户编号',
  `passwd` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '密码',
  `realname` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '姓名',
  `telephone` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '电话',
  `nickname` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '昵称',
  `birthday` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `cardno` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '身份证',
  `age` varchar(11) COLLATE utf8_bin DEFAULT NULL COMMENT '年龄',
  `country` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '国籍',
  `sex` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '性别',
  `address` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '地址',
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT 'email',
  `contactway` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '联系方式contact',
  `time` datetime DEFAULT NULL COMMENT '册注时间',
  `maxcode` int(11) DEFAULT NULL,
  `major` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '专业',
  `degree` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '学历',
  `graduate` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '毕业学校',
  `level` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '等级',
  `headportrait` varchar(255) COLLATE utf8_bin DEFAULT 'head.jpg' COMMENT '头像',
  `introduction` varchar(300) COLLATE utf8_bin DEFAULT NULL COMMENT '简介',
  `personal_space_used` int(11) DEFAULT '0',
  `freezing` varchar(10) COLLATE utf8_bin DEFAULT 'no',
  `isdelete` varchar(10) COLLATE utf8_bin DEFAULT 'no',
  `job_comments` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=234 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of l_user
-- ----------------------------
INSERT INTO `l_user` VALUES ('1', 'wangluobu', 'B0000-00-2011-2066', 'Roland2013admin', '王宇', '12321323', ' ', ' ', '123456789012345678', null, null, '男', 'asdasdasda', 'asdadadd', null, '2012-01-08 18:14:28', '0', null, null, null, null, 'head.jpg', null, '909', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('54', 'gongxusheng', 'A0010-01-2012-0001', 'gongxusheng', '宫旭生（大望路中心）', '/', '', '', '000000000000000000', null, null, '男', '/', '/', null, '2012-06-06 11:31:04', '1', null, null, null, null, 'head.jpg', null, '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('55', 'lianghua', 'A0021-01-2012-0001', 'lianghua', '梁华（海上海）', '/', '', '', '000000000000000000', null, null, '女', '/', '/', null, '2012-06-06 11:32:49', '1', null, null, null, null, 'head.jpg', null, '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('56', 'feihonglu568', 'A0021-01-2012-0002', 'roland300', '龚裴英（海上海）', '/', '', '', '000000000000000000', null, null, '女', '/', '/', null, '2012-06-06 11:33:20', '2', null, null, null, null, 'head.jpg', null, '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('57', 'beiyuanlu300', 'A0021-02-2012-0001', 'roland300', '浦东北园路学校1', '/', '李敏骥', '1978-04-26', '000000000000000000', null, null, '男', '/', '、', null, '2012-06-06 11:36:23', '1', null, null, null, null, 'head.jpg', null, '0', 'no', 'no', 'null');
INSERT INTO `l_user` VALUES ('68', 'admin01', 'A0010-01-2012-0002', 'roland640203', '管理员（大望路中心）', '01059600991', '', '', '000000000000000000', null, null, '男', '朝阳区西大望路63号阳光财富大厦', 'liuhaijiang@roland.com.cn', null, '2012-07-30 12:09:27', '2', null, null, null, null, '0x1.3d7169af58b3ep40.png', null, '0', 'no', 'no', 'null');
INSERT INTO `l_user` VALUES ('69', 'kunlun', 'T0010-01-2012-0001', '123456', '张昆仑', '13811549521', null, 'null', '000000000000000000', null, null, '男', '/', 'zhangkunlun@roland.com.cn', null, '2012-08-01 10:26:04', '1', '/', '本科', '/', '高级', '0x1.3cfbb8110c77dp40.jpg', '/', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('70', '18610332902', 'T0010-01-2012-0002', '090909', '王雅娟', '18610332902', '王老师', '2011-03-10', '000000000000000000', null, null, '男', '西大望路63号阳光财富大厦1105', 'wangyajuan@roland.com.cn', null, '2012-08-01 10:26:51', '2', '/', '本科', '/', '中级', '0x1.3d42c3534be8bp40.jpg', '/', '0', 'no', 'no', 'null');
INSERT INTO `l_user` VALUES ('71', '13811359402', 'T0010-01-2012-0003', '123456', '赵九龙', '13811359402', '', '', '000000000000000000', null, null, '男', '', 'zhaojiulong@roland.com.cn', null, '2012-08-01 10:38:31', '3', '/', '本科', '/', '中级', '0x1.3a4f20042681bp40.jpg', '/', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('72', '13240735177', 'T0010-01-2012-0004', '890619', '杨赫然', '13240735177', '', '', '000000000000000000', null, null, '男', '/', 'yangheran@roland.com.cn', null, '2012-08-01 10:38:52', '4', '/', '本科', '/', '中级', '0x1.39e7fd40b3948p40.png', '/', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('73', 'T0010-01-2012-0005', 'T0010-01-2012-0005', 'T0010-01-2012-0005', '许岩', '15801462208', 'The Prodigy', '1990-09-22', '000000000000000000', null, null, '男', '/', 'xuyan@roland.com.cn', null, '2012-08-01 11:18:36', '5', '/', '本科', '/', '初级', '0x1.3a4f1c773900dp40.jpg', '/', '0', 'yes', 'no', null);
INSERT INTO `l_user` VALUES ('74', '18600532775', 'T0010-01-2012-0006', '123456', '张峰赫', '18600532775', null, 'null', '000000000000000000', null, null, '男', '/', '/', null, '2012-08-01 11:18:59', '6', '/', '本科', '/', '高级', 'head.jpg', '/', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('75', 'T0010-01-2012-0007', 'T0010-01-2012-0007', 'T0010-01-2012-0007', '王辰雨', '15110235305', null, null, '000000000000000000', null, null, '女', '/', '/', null, '2012-08-01 11:19:41', '7', '/', '本科', '/', '初级', 'head.jpg', '/', '0', 'yes', 'no', null);
INSERT INTO `l_user` VALUES ('76', '13241667166', 'T0010-01-2012-0008', '982693', '袁野', '13241667166', null, 'null', '000000000000000000', null, null, '女', '/', '/', null, '2012-08-01 11:19:58', '8', '/', '本科', '/', '初级', '0x1.3ea649b568397p40.jpg', '/', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('77', 'T0010-01-2012-0009', 'T0010-01-2012-0009', 'T0010-01-2012-0009', '谷旭', '0', null, null, '000000000000000000', null, null, '男', '/', '/', null, '2012-08-01 11:20:11', '9', '/', '本科', '/', '初级', 'head.jpg', '/', '0', 'yes', 'no', null);
INSERT INTO `l_user` VALUES ('78', 'T0010-01-2012-0010', 'T0010-01-2012-0010', 'T0010-01-2012-0010', '刘雪辰', '0', null, 'null', '000000000000000000', null, null, '男', '/', '/', null, '2012-08-01 11:20:40', '10', '/', '本科', '/', '初级', 'head.jpg', '/', '0', 'no', 'no', 'null');
INSERT INTO `l_user` VALUES ('79', 'yanjun', 'Y0010-01-2012-0011', 'yanjun0819', '闫俊', '13522219966', null, 'null', '000000000000000000', null, null, '女', '/', 'yanjun@roland.com.cn', null, '2012-08-01 11:21:11', '11', null, '本科', '/', null, 'head.jpg', '/', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('80', 'Y0010-01-2012-0012', 'Y0010-01-2012-0012', 'Y0010-01-2012-0012', '李红艳', '15010630911', null, null, '000000000000000000', null, null, '女', '/', 'lihongyan@roland.com.cn', null, '2012-08-01 11:21:33', '12', null, '本科', '/', null, 'head.jpg', '/', '0', 'yes', 'no', null);
INSERT INTO `l_user` VALUES ('81', 'yuanye', 'Y0010-01-2012-0013', '982693', '袁野', '13241667166', '', '1988-11-16', '000000000000000000', null, null, '女', '', 'yuanye@roland.com.cn', null, '2012-08-01 11:21:46', '13', null, '本科', '/', null, '0x1.3ea645128abe5p40.jpg', '/', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('82', 'Y0010-01-2012-0014', 'Y0010-01-2012-0014', 'Y0010-01-2012-0014', 'z04', '0', null, null, '000000000000000000', null, null, '男', '/', '/', null, '2012-08-01 11:22:11', '14', null, '本科', '/', null, 'head.jpg', '/', '0', 'yes', 'no', null);
INSERT INTO `l_user` VALUES ('83', 'T0021-01-2012-0001', 'T0021-01-2012-0001', 'T0021-01-2012-0001', '袁映映', '18602114022', null, null, '310110198311222081', null, null, '女', '杨浦', 'yuanyingying@rolandmusic.com.cn', null, '2012-08-01 11:23:30', '1', '钢琴', '本科', '上海师范大学音乐学院', '初级', 'head.jpg', '  05年“月之源”苏河艺术专场音乐会。\r\n  05年至04年卡地亚高级珠宝展。\r\n  04年香港地区新年倒计时晚会。\r\n  05年起应邀上海电视台体育频道，音乐频道担任现场音效。\r\n 08年7月“奥运群英会”\r\n 08年6月“欧战24”\r\n10年世界杯特别节目 东张西汪\r\n 06年至07年每晚“哈皮七点档”\r\n 期间还被邀请多个节综艺节目“闪电星感动”，“我们的校园行”，“非常有戏”，“超级音乐通”，“非常娱乐””光阴的歌”等。\r\n自10年起在上海各大星级酒店担任钢琴师，演奏爵士和爵士弹唱，瑞士宏安，浦东利兹卡尔顿，普尔曼士格维，巴黎春天以及拨特曼。', '0', 'no', 'no', '教师');
INSERT INTO `l_user` VALUES ('84', 'cuiliyuan', 'T0021-02-2012-0001', 'cuiliyuan', '崔丽媛', '0', null, 'null', '000000000000000000', null, null, '男', '/', '/', null, '2012-08-01 11:24:57', '1', '/', '本科', '/', '初级', 'head.jpg', '/', '0', 'yes', 'no', '');
INSERT INTO `l_user` VALUES ('85', '15902127523', 'T0021-02-2012-0002', '13362003330', '王伟浩', '0', null, 'null', '                  000000000000000000', null, null, '男', '/', '/wangweihao@rolandmusic.com.cn', null, '2012-08-01 13:08:00', '2', '/', '本科', '/', '初级', '0x1.40811e8425ab2p40.png', '/', '0', 'no', 'no', 'null');
INSERT INTO `l_user` VALUES ('86', '15021074593', 'T0021-02-2012-0003', '15021074593', '夏景研', '0', null, '1986-02-14', '000000000000000000', null, null, '女', '/', '/', null, '2012-08-01 13:08:41', '3', '/', '本科', '/', '初级', 'head.jpg', '/', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('87', '15921976279', 'T0021-01-2012-0002', '15921976279', '全志翔', '15921976279', '', '', '350781198802070012', null, null, '男', '杨浦', 'quanzhixiang@rolandmusic.com.cn', null, '2012-08-01 13:11:58', '2', '电爵士鼓', '本科', '福建师范大学', '中级', 'head.jpg', '毕业于福建师范大学音乐教育系打击乐专业\r\n2006年参加厦门电子音乐节演出。\r\n2007年参加彩虹糖乐队专辑录制。\r\n2008年参加奥运小使者上海地区流行音乐巡演。参加沈阳音乐学院打击乐小组培训课程、并参与棍棒游戏打击乐全国巡演。\r\n2008年参加百事乐队大赛团体组第二名，并获得最佳鼓手称号。\r\n2009年加入中国鼓手联盟会员、参加上海师范大学音乐学院电子打击乐课程进修，同年加入罗兰数字音乐学校任电鼓教师职位至今。\r\n2010年参加各项罗兰数字教育组织的大型演出活动、电视台节目录制活动。\r\n2011年在第7届全国打击乐比赛中活动青年组电爵士鼓二等奖。', '7', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('88', 'crazygrad', 'T0021-02-2012-0004', 'asdf1987', '李锐', '15021303747', null, 'null', '000000000000000000', null, null, '男', '周家嘴路460号', '/lirui@rolandmusic.com.cn', null, '2012-08-01 17:29:12', '4', '电吉他 电贝司', '大专', '上海电影艺术学院', '初级', 'head.jpg', '/', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('89', '13918901142', 'T0021-02-2012-0005', '3335543', '吴文博', '13918901142', null, '1978-10-19', '000000000000000000', null, null, '男', '/浦东新区北园路300号3楼', '/44409056@qq.com', null, '2012-08-01 17:30:26', '5', '/', '本科', '/', '特级', '0x1.4080deb9e9466p40.jpg', '/', '0', 'no', 'no', '教学主管');
INSERT INTO `l_user` VALUES ('90', '18721843105', 'T0021-02-2012-0006', '123456', '王众民', '0', null, 'null', '000000000000000000', null, null, '男', '/', '/', null, '2012-08-01 17:30:45', '6', '/', '本科', '/', '初级', '0x1.407aa63050a2dp40.jpg', '/', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('91', 'T0021-02-2012-0007', 'T0021-02-2012-0007', 'T0021-02-2012-0007', '葛丽婷', '0', null, null, '000000000000000000', null, null, '女', '/', '/', null, '2012-08-01 17:31:03', '7', '/', '本科', '/', '初级', 'head.jpg', '/', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('92', 'T0021-02-2012-0008', 'T0021-02-2012-0008', 'T0021-02-2012-0008', '马钢', '0', null, null, '000000000000000000', null, null, '男', '/', '/', null, '2012-08-01 17:31:23', '8', '/', '本科', '/', '初级', 'head.jpg', '/', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('93', 'T0021-02-2012-0009', 'T0021-02-2012-0009', 'T0021-02-2012-0009', '09', '0', null, null, '000000000000000000', null, null, '男', '/', '/', null, '2012-08-01 17:31:37', '9', '/', '本科', '/', '初级', 'head.jpg', '/', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('94', 'T0021-02-2012-0010', 'T0021-02-2012-0010', 'T0021-02-2012-0010', '10', '0', null, null, '000000000000000000', null, null, '男', '/', '/', null, '2012-08-01 17:31:57', '10', '/', '本科', '/', '初级', 'head.jpg', '/', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('95', 'T0021-01-2012-0003', 'T0021-01-2012-0003', 'T0021-01-2012-0003', '恽老师', '12345456', null, null, '000000000000000000', null, null, '男', '/', '/', null, '2012-08-08 12:08:32', '3', '/', '其他', '/', '高级', 'head.jpg', '/', '0', 'yes', 'yes', null);
INSERT INTO `l_user` VALUES ('96', '15618911935', 'T0021-01-2012-0004', '312696', '刘秉男', '15618911935', null, 'null', '121212121212121212', null, null, '男', '/', '/', null, '2012-08-08 12:08:47', '4', '电鼓', '本科', '沈阳音乐学院', '高级', '0x1.3e11fe3497c26p40.gif', '教学总监，担任杨浦校区付校长', '0', 'no', 'no', '教学总监');
INSERT INTO `l_user` VALUES ('97', '13472851016', 'T0021-01-2012-0005', '19880606', '陆晨麟', '13472851016', '', '', '000000000000000000', null, null, '男', '/', 'luchenling@rolandmusic.com.cn', null, '2012-08-08 12:09:01', '5', '电鼓贝斯乐队', '本科', '/', '中级', '0x1.3cfb832f12904p40.jpg', '教学主管，授课：电鼓，贝斯，乐队', '0', 'no', 'no', '教学主管');
INSERT INTO `l_user` VALUES ('98', '13761253330', 'T0021-01-2012-0006', 'a6374515qi', '恽嘉琦', '13761253330', null, 'null', '000000000000000000', null, null, '男', '杨浦', '/', null, '2012-08-08 12:09:18', '6', '电吉他', '本科', '/', '中级', 'head.jpg', '电吉他教学及课程研发', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('99', '18602114022', 'T0021-01-2012-0007', '112256497767', '袁映映', '18602114022', null, '1983-11-22', '000000000000000000', null, null, '男', '/', 'yuanyingying@rolandmusic.com.cn', null, '2012-08-08 12:09:33', '7', '钢琴', '本科', '/', '中级', '0x1.3d1a3e6cea554p40.jpg', '数码钢琴和流行键盘老师，兼数码钢琴课程研发', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('100', '123456', 'T0021-01-2012-0008', '666888', '马杰', '13818907912', '', '2005-09-16', '000000000000000000', null, null, '男', '宝山区三门路485-37-1', '/', null, '2012-08-08 12:09:50', '8', '/', '本科', '/', '中级', 'head.jpg', '/', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('101', '18964912538', 'T0021-01-2012-0009', '870412', '陈岑豪', '18964912538', null, 'null', '000000000000000000', null, null, '男', '杨浦', '/', null, '2012-08-08 12:10:06', '9', '电鼓', '本科', '/', '初级', 'head.jpg', '上海师范大学音教系', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('102', 'T0021-01-2012-0010', 'T0021-01-2012-0010', 'T0021-01-2012-0010', '教务', '0', null, null, '000000000000000000', null, null, '女', '/', '/', null, '2012-08-08 12:10:22', '10', '/', '本科', '/', '初级', 'head.jpg', '/', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('103', 'Y0021-01-2012-0011', 'Y0021-01-2012-0011', 'Y0021-01-2012-0011', '杜佳斐', '13585581721', null, null, '000000000000000000', null, null, '男', '/', '/', null, '2012-08-08 13:34:15', '11', null, '本科', '/', null, 'head.jpg', '/', '0', 'no', 'no', 'null');
INSERT INTO `l_user` VALUES ('104', 'Y0021-01-2012-0012', 'Y0021-01-2012-0012', 'Y0021-01-2012-0012', '陈东月', '13916159731', null, null, '000000000000000000', null, null, '女', '/', 'chendongyue@rolandmusic.com.cn', null, '2012-08-08 13:34:29', '12', null, '大专', '/', null, 'head.jpg', '课程顾问', '0', 'no', 'no', 'null');
INSERT INTO `l_user` VALUES ('105', 'Y0021-01-2012-0013', 'Y0021-01-2012-0013', 'Y0021-01-2012-0013', 'z03', '0', null, null, '000000000000000000', null, null, '男', '/', '/', null, '2012-08-08 13:34:45', '13', null, '本科', '/', null, 'head.jpg', '/', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('106', 'Y0021-01-2012-0014', 'Y0021-01-2012-0014', 'Y0021-01-2012-0014', 'z04', '0', '', '', '000000000000000000', null, null, '男', '/', '/', null, '2012-08-08 13:34:59', '14', null, '本科', '/', null, 'head.jpg', '/', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('107', '13795353336', 'Y0021-02-2012-0011', 'nicole0302', '饶婧', '13795353336', null, '2013-04-16', '000000000000000000', null, null, '男', '/', '/', null, '2012-08-08 13:35:41', '11', null, '本科', '/', null, 'head.jpg', '/', '0', 'no', 'no', 'null');
INSERT INTO `l_user` VALUES ('108', 'ShenQing', 'Y0021-02-2012-0012', 'Y0021-02-2012-0012', '沈清', '0', null, 'null', '000000000000000000', null, null, '女', '/', '/', null, '2012-08-08 13:35:52', '12', null, '本科', '/', null, 'head.jpg', '/', '0', 'no', 'no', 'null');
INSERT INTO `l_user` VALUES ('109', 'DuJiafei', 'Y0021-02-2012-0013', 'Y0021-02-2012-0013', '杜佳斐', '0', null, 'null', '000000000000000000', null, null, '女', '/', '/', null, '2012-08-08 13:36:04', '13', null, '本科', '/', null, 'head.jpg', '/', '0', 'no', 'no', 'null');
INSERT INTO `l_user` VALUES ('110', 'ChenDongyue', 'Y0021-02-2012-0014', 'Y0021-02-2012-0014', '陈东月', '0', null, 'null', '000000000000000000', null, null, '女', '/', '/', null, '2012-08-08 13:36:16', '14', null, '本科', '/', null, 'head.jpg', '/', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('113', 'T0010-01-2012-0016', 'T0010-01-2012-0016', 'T0010-01-2012-0016', '1111', '1', null, null, '111111111111111111', null, null, '男', '1', '1@!.1', null, '2012-09-06 11:39:31', '16', '1', '本科', '1', '初级', 'head.jpg', '\r\n', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('115', 'P0010-01-2012-0017', 'P0010-01-2012-0017', 'P0010-01-2012-0017', '222', '1', null, null, '111111111111111111', null, null, '男', '1', '1@1.1', null, '2012-09-06 11:47:27', '17', '1', '高中', '1', null, 'head.jpg', '1', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('118', 'jiaoshi1', 'T0010-02-2012-0003', '111111', '教师1', '0', '', '2012-12-06', '000000000000000000', null, null, '男', '/', 'qq@qq.com', null, '2012-09-10 13:31:28', '3', '/', '本科', '/', '初级', '0x1.3b74fe679461ap40.jpg', '/', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('119', 'jiaoshi2', 'T0010-02-2012-0004', '111111', '教师2', '0', '', '', '000000000000000000', null, null, '男', '/', '/', null, '2012-09-10 13:31:59', '4', '/', '本科', '/', '初级', 'head.jpg', '/', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('120', 'jiaoshi3', 'T0010-02-2012-0005', 'T0010-02-2012-0005', '教师3', '0', '', '', '000000000000000000', null, null, '男', '/', '/', null, '2012-09-10 13:38:18', '5', '/', '本科', '/', '初级', 'head.jpg', '/', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('121', 'T0021-01-2012-0015', 'T0021-01-2012-0015', 'T0021-01-2012-0015', '张定国', '15921478134', null, 'null', '000000000000000000', null, null, '男', '/', '8216292@qq.com', null, '2012-09-10 20:17:35', '15', '/', '本科', '/', '中级', '0x1.3cfc2d76ed8e1p40.jpg', '/', '0', 'yes', 'no', null);
INSERT INTO `l_user` VALUES ('122', '13524612380', 'T0021-01-2012-0016', '13524612380', '张磊', '13524612380', null, 'null', '000000000000000000', null, null, '男', '/', 'zhanglei@rolandmusic.com.cn', null, '2012-09-10 20:18:35', '16', '声乐', '本科', '/', '初级', 'head.jpg', '电鼓和声乐老师', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('123', 'T0021-01-2012-0017', 'T0021-01-2012-0017', 'T0021-01-2012-0017', '黄立伟', '13641783687', null, null, '000000000000000000', null, null, '男', '/', '/', null, '2012-09-10 20:19:56', '17', '音乐制作', '本科', '上海音乐学院', '高级', 'head.jpg', '乐队课程授课，音乐制作', '0', 'yes', 'no', null);
INSERT INTO `l_user` VALUES ('125', 'Y0010-02-2012-0007', 'Y0010-02-2012-0007', 'Y0010-02-2012-0007', '咨询师1', '0', null, null, '000000000000000000', null, null, '男', '/', '/', null, '2012-09-11 17:15:32', '7', null, '本科', '/', null, 'head.jpg', '/', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('126', 'jiaoshi4', 'T0010-02-2012-0008', '111111', '教师4', '0', '', '1990-01-01', '000000000000000000', null, null, '男', '北京CBD', '/', null, '2012-09-21 10:24:13', '8', '/', '本科', '/', '初级', '0x1.3b7496f4e2b9dp40.jpg', '/', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('127', 'zixun2', 'Y0010-02-2012-0009', '111111', '咨询师2', '0', '', '2012-12-07', '000000000000000000', null, null, '男', '/', '/', null, '2012-10-15 14:46:50', '9', null, '初中', '/', null, '0x1.3b74a0925436cp40.png', '/', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('128', 'cheng1', 'T0010-02-2012-0010', '111111', '社长专用', '0', '', '', '000000000000000000', null, null, '男', '/', '/', null, '2012-10-26 18:13:51', '10', '/', '本科', '/', '初级', 'head.jpg', '/', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('129', 'zhuanjia1', 'P0010-02-2012-0011', '111111', 'zhuanjia1', '0', '', '', '000000000000000000', null, null, '男', '/', '1@1.1', null, '2012-11-12 15:32:31', '11', '/', '本科', '/', null, 'head.jpg', '/', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('130', 'shezhang', 'P0000-00-2012-0001', '111111', 'shezhang', ' ', ' ', ' ', '000000000000000000', null, null, '男', '/', '/', null, '2012-06-25 11:07:43', '0', null, null, null, null, 'head.jpg', null, '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('148', 'Y0010-02-2012-0012', 'Y0010-02-2012-0012', 'Y0010-02-2012-0012', '肖华', '11111111111', null, '1976-01-04', 'ssssssssssssssssss', null, null, '男', 's', 'a@1', null, '2012-12-04 10:48:55', '12', null, '本科', 'a', null, 'head.jpg', 's', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('151', 'A0010-02-2013-0002', 'A0010-02-2013-0002', 'A0010-02-2013-0002', '望京教辅中心（测试）', '1', null, null, '111111111111111111', null, null, '男', '1', '1', null, '2013-01-07 15:36:15', '2', null, null, null, null, '0x1.3c1416a897af2p40.jpg', null, '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('152', '5283117', 'T0010-02-2013-0003', '5283117', '许岩', '15801462208', null, '2001-01-07', '152527199009010014', null, null, '男', '内蒙古锡林浩特市', '252330162', null, '2013-01-07 16:24:59', '3', '架子鼓', '大专', '北京迷笛音乐学院', '高级', 'head.jpg', '专业架子鼓，经验丰富', '0', 'no', 'no', '');
INSERT INTO `l_user` VALUES ('168', 'A0010-02-2013-0003', 'A0010-02-2013-0003', 'A0010-02-2013-0003', '孙仟晓', '/', null, null, '111111111111111111', null, null, '女', '/', '/', null, '2013-02-21 11:09:16', '3', null, null, null, null, '0x1.3de80c02afaf3p40.png', null, '162', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('169', 'jiangrui', 'A0000-01-2013-0014', 'jiangrui2013', '蒋蕊', '/', null, 'null', '000000000000000000', null, null, '女', '/', 'jiangrui@roland.com.cn', null, '2013-02-26 13:48:50', '14', null, null, null, null, 'head.jpg', null, '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('170', '13917501116', 'T0021-02-2013-0001', '118716', '徐志清', '0000', null, '1987-11-16', '330225179465352520', null, null, '男', '无', '94295764@qq.com', null, '2013-02-26 15:02:00', '1', '电鼓', '本科', '**********', '高级', 'head.jpg', '。。。。。。。。。。。。。。。。', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('171', '13811549521', 'T0010-01-2013-0001', '123456', '张昆仑', '13811549521', null, 'null', '111111111111111111', null, null, '男', '阳光财富大厦', 'zhangkunlun@roland.com.cn', null, '2013-03-16 12:50:37', '1', '音乐教育', '本科', '沈阳音乐学院', '高级', 'head.jpg', '毕业于沈阳音乐学院音乐教育专业，长期从事电鼓的教学与研究，具有较高的教学水平和专业能录。', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('172', 'lizheng', 'T0010-01-2013-0002', 'lz888888', '李铮', '15810071008', null, 'null', '111111111111111111', null, null, '男', '阳光财富大厦', 'lizhen@roland.com.cn', null, '2013-03-16 12:52:39', '2', '幼教', '本科', '北京师范大学', '中级', 'head.jpg', '长期从事幼儿教育及幼儿艺术教育，经验丰富', '0', 'no', 'no', 'null');
INSERT INTO `l_user` VALUES ('173', '13124734007', 'T0010-01-2013-0003', '123456', '张金龙', '13124734007', null, 'null', '111111111111111111', null, null, '男', '阳光财富大厦', 'zhangjinlong@roland.com.cn', null, '2013-03-16 12:55:22', '3', '音乐表演', '本科', '北京现代音乐学院', '中级', 'head.jpg', '专业基本功扎实，具有较强的教学能力和专业技能，教学经验丰富。', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('174', 'T0010-01-2013-0004', 'T0010-01-2013-0004', 'T0010-01-2013-0004', '候维潇', '15801288137', null, null, '111111111111111111', null, null, '女', '阳光财富大厦', 'houweixiao@roland.com.cn', null, '2013-03-17 12:05:45', '4', '汉语言', '本科', '西北大学', '中级', 'head.jpg', '行政能力强', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('175', 'Y0010-02-2013-0001', 'Y0010-02-2013-0001', '13911365622', '石明月', '13911365622', null, '1983-02-10', '340321198302103164', null, null, '女', '安徽省怀远县', 'shixiaoxue1314@163.com', null, '2013-03-21 15:31:04', '1', null, '大专', '安徽工商行政管理学院', null, '0x1.3de944867c669p40.jpg', '旅游管理专业', '0', 'no', 'no', '');
INSERT INTO `l_user` VALUES ('176', 'Y0010-02-2013-0002', 'Y0010-02-2013-0002', 'Y0010-02-2013-0002', '闫俊', '11111111111', null, null, '111111111111111111', null, null, '男', '北京市管庄', '1@q.com', null, '2013-03-21 16:07:46', '2', null, '大专', '1', null, 'head.jpg', '1', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('177', 'T0010-02-2013-0004', 'T0010-02-2013-0004', '112233', '张孟良', '18101097296', null, null, '430626197906183914', null, null, '男', '望京中心', '1@q.com', null, '2013-03-22 09:14:29', '4', '电子鼓', '大专', '1', '初级', 'head.jpg', '1', '0', 'yes', 'no', null);
INSERT INTO `l_user` VALUES ('178', 'diangu1', 'T0010-01-2013-0005', 'diangu1', 'diangu1', '59600991', null, 'null', '111111111111111111', null, null, '男', '西大望路63号', 'bjdwl@roland.com.cn', null, '2013-03-23 14:15:13', '5', '数字音乐教育', '本科', '罗兰', '初级', 'head.jpg', '电鼓一教室', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('179', 'diangu2', 'T0010-01-2013-0006', 'diangu2', 'diangu2', '59600991', null, 'null', '111111111111111111', null, null, '男', '西大望路63号', 'bjdwl@roland.com.cn', null, '2013-03-23 14:16:16', '6', '数字音乐教育', '本科', '罗兰', '初级', 'head.jpg', '电鼓二教室', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('180', 'diangu3', 'T0010-01-2013-0007', 'diangu3', 'diangu3', '59600991', null, 'null', '111111111111111111', null, null, '男', '西大望路63号', 'bjdwl@roland.com.cn', null, '2013-03-23 14:16:56', '7', '数字音乐教育', '本科', '罗兰', '初级', 'head.jpg', '电鼓三教室', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('181', 'diangang1', 'T0010-01-2013-0008', 'diangang1', 'diangang1', '59600991', null, 'null', '111111111111111111', null, null, '男', '西大望路63号', 'bjdwl@roland.com.cn', null, '2013-03-23 14:17:38', '8', '数字音乐教育', '本科', '罗兰', '初级', 'head.jpg', '电钢一教室', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('182', 'diangang2', 'T0010-01-2013-0009', 'diangang2', 'diangang2', '59600991', null, 'null', '111111111111111111', null, null, '男', '西大望路63号', 'bjdwl@roland.com.cn', null, '2013-03-23 14:18:20', '9', '数字音乐教育', '大专', '罗兰', '中级', 'head.jpg', '电钢二教室', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('183', 'Y0010-02-2013-0003', 'Y0010-02-2013-0003', 'Y0010-02-2013-0003', '孙仟晓', '1', null, null, '123456789011111111', null, null, '女', '1', '356858613@163.com', null, '2013-03-26 13:55:25', '3', null, '本科', '1', null, 'head.jpg', '1', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('184', 'T0010-02-2013-0005', 'T0010-02-2013-0005', 'T0010-02-2013-0005', '杨西西', '18310309716', null, null, '411421198907184029', null, null, '女', '望京中心', '1@163.com', null, '2013-03-27 18:22:54', '5', '111', '大专', '海南琼海师范 ', '初级', 'head.jpg', '1', '0', 'yes', 'yes', null);
INSERT INTO `l_user` VALUES ('185', 'T0010-02-2013-0006', 'T0010-02-2013-0006', 'fanhui1989', '樊慧', '18610558265', null, null, '372928198903017661', null, null, '男', '罗兰数字音乐教育望京中心', 'fanhui@roland.com.cn', null, '2013-03-28 16:45:25', '6', '教育学', '大专', '聊城大学', '初级', 'head.jpg', '教务', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('186', 'Y0010-02-2013-0004', 'Y0010-02-2013-0004', 'Y0010-02-2013-0004', '孙佰雨', '15810398571', null, null, '371329198710150629', null, null, '女', '山东省临沂市', 'sunbaiyu@yahoo.cn', null, '2013-03-29 14:11:12', '4', null, '本科', '内蒙古民族大学', null, 'head.jpg', '音乐学专业', '0', 'yes', 'yes', null);
INSERT INTO `l_user` VALUES ('187', 'T0021-01-2013-0001', 'T0021-01-2013-0001', 'T0021-01-2013-0001', '李辰希', '15000782883', null, null, '111111111111111111', null, null, '女', '杨浦', '111', null, '2013-04-15 21:31:59', '1', '幼儿音乐启蒙', '本科', '上海音乐学院', '中级', 'head.jpg', '擅长幼儿音乐教育', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('188', 'T0021-01-2013-0002', 'T0021-01-2013-0002', 'T0021-01-2013-0002', '陈甲', '18301752987', null, null, '111111111111111111', null, null, '男', '杨浦', '111', null, '2013-04-16 10:40:35', '2', '钢琴', '本科', '沈阳音乐学院', '高级', 'head.jpg', '兼职钢琴老师', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('189', '18602183972', 'T0021-01-2013-0003', 'wenmingzhihui', '柳慧雯', '18602183972', null, 'null', '111111111111111111', null, null, '女', '杨浦', 'sinead_lhw@163.com', null, '2013-04-16 10:41:55', '3', '钢琴', '本科', '上海师范大学', '高级', 'head.jpg', '钢琴教师', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('190', 'duogongnnengtting', 'T0010-01-2013-0010', 'T0010-01-2013-0010', 'dgnt', '59600991', null, 'null', '111111111111111111', null, null, '男', '西大望路63号', 'bjdwl@roland.com.cn', null, '2013-04-17 12:01:26', '10', '数字音乐教育', '本科', '罗兰', '中级', 'head.jpg', '多功能厅', '0', 'yes', 'yes', null);
INSERT INTO `l_user` VALUES ('191', '18601792963', 'T0021-02-2013-0002', '123456', '刘海洋', '50491881', null, 'null', '310108198604282042', null, null, '男', '北园路300号', 'liuhaiyang@roland.com', null, '2013-04-19 13:04:12', '2', '专科', '本科', '上海大学', '初级', 'head.jpg', '很好', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('192', '15911019265', 'T0010-02-2013-0007', '15911019265', '纪念', '15911019265', null, '1987-10-18', '110106198710204821', null, null, '男', '朝阳区高碑店', 'jinian1018@126.com', null, '2013-05-02 12:22:30', '7', '1', '本科', '1', '初级', '0x1.3ef415ea3969fp40.jpg', '1', '0', 'no', 'no', '');
INSERT INTO `l_user` VALUES ('193', 'null', 'T0010-02-2013-0008', '18210253494', '樊慧', '13810877537', null, '1988-08-03', '372928198903017661', null, null, '女', '北京市朝阳区农展馆北路', 'yuanlizhuzhao@sina.cn', null, '2013-05-02 14:34:07', '8', '教育学', '大专', '聊城大学', '中级', '0x1.3e64a250b5944p40.jpg', '教务', '0', 'no', 'no', 'null');
INSERT INTO `l_user` VALUES ('194', 'A0000-01-2013-0015', 'A0000-01-2013-0015', 'A0000-01-2013-0015', 'rdec1', '59600777', null, null, '111111111111111111', null, null, '男', '阳光财富', 'tei@roland.com.cn', null, '2013-05-05 15:26:43', '15', null, null, null, null, 'head.jpg', null, '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('195', 'Y0010-02-2013-0005', 'Y0010-02-2013-0005', 'rolandzhuzhu', '赵缘骊珠', '1', null, null, '120103198808032928', null, null, '女', '天津市河西区', 'yuanlizhuzhao@sina.cn', null, '2013-05-15 18:58:15', '5', null, '大专', '黑龙江林业职业技术学院', null, 'head.jpg', '课程顾问', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('196', '18501160134', 'T0010-02-2013-0009', '123456', '胡凯', '18501160134', null, 'null', '21090219890402103x', null, null, '男', '辽宁省阜新市', '372875458@qq.com', null, '2013-05-15 19:08:02', '9', '架子鼓', '大专', '1', '初级', 'head.jpg', '鼓教师', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('197', 'pudongstone', 'A0021-02-2013-0001', 'pudongstone', 'pudongdmin', '1', null, 'null', '                  ', null, null, '男', '、', '、', null, '2013-05-17 20:57:01', '1', null, null, null, null, 'head.jpg', null, '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('198', 'changchunroland', 'A0431-01-2013-0001', '0431admin2013', '张忠艳', '13620787005', null, 'null', '                  ', null, null, '女', '二道区东盛大街和岭东路交汇2366号', '1029641747@qq.com', null, '2013-05-24 11:30:02', '1', null, null, null, null, '0x1.3ed4987d2e7d9p40.jpg', null, '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('199', 'T0021-01-2013-0004', 'T0021-01-2013-0004', 'T0021-01-2013-0004', '刘海阳', '18601792963', null, null, '310102223256232562', null, null, '男', '浦东', 'liuhaiyang@rolandmusic.comc.n', null, '2013-05-24 13:17:34', '4', '电爵士鼓', '本科', '**', '中级', 'head.jpg', '**', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('200', 'T0021-01-2013-0005', 'T0021-01-2013-0005', 'T0021-01-2013-0005', '张立军', '13987989898', null, null, '310102564112154515', null, null, '男', '**', 'zhanglijun@rolandmusic.com.cn', null, '2013-05-24 13:18:57', '5', '**', '本科', '**', '中级', 'head.jpg', '**', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('201', '18943917000', 'T0431-01-2013-0001', '1234567', '林小雅', '18943917000', null, '1987-07-31', '210105198707312247', null, null, '女', '长春市南关区东岭南街', 'linxiaoya731@qq.com', null, '2013-05-26 11:55:32', '1', '电爵士鼓', '本科', '沈阳音乐学院', '初级', '0x1.3ef36255b1f36p40.png', '活泼开朗，具有亲和力，上课得到家长及小朋友的一直认可', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('202', '13756906005', 'T0431-01-2013-0002', '12345678', '李禹宁', '13756906005', null, 'null', '220602199103030323', null, null, '女', '长春市二道区亚太桃花源', '309307139@qq.com', null, '2013-05-26 11:59:18', '2', '钢琴', '本科', '沈阳音乐学院', '初级', 'head.jpg', '活泼开朗，具有亲和力，上课得到家长和孩子的一致好评', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('203', 'T0431-01-2013-0003', 'T0431-01-2013-0003', 'T0431-01-2013-0003', '李禹宁', '13756906005', null, null, '220602199103030323', null, null, '女', '长春市二道区亚太桃花源', '309307139@qq.com', null, '2013-05-26 11:59:19', '3', '钢琴', '本科', '沈阳音乐学院', '初级', 'head.jpg', '活泼开朗，具有亲和力，上课得到家长和孩子的一致好评', '0', 'yes', 'yes', null);
INSERT INTO `l_user` VALUES ('204', '18604413876', 'T0431-01-2013-0004', '123456', '张一帆', '18604413876', null, 'null', '140502199111180510', null, null, '男', '长春市师范大学9舍', '465531244@qq.com', null, '2013-05-26 12:05:26', '4', '钢琴', '本科', '长春师范大学', '初级', 'head.jpg', '活泼开朗，具有亲和力，上课得到广大家长及小朋友的高度认可！', '0', 'no', 'no', '教师&顾问');
INSERT INTO `l_user` VALUES ('205', 'zhangyifan', 'Y0431-01-2013-0001', '911013', '张一帆', '18604413876', null, '1991-11-18', '140502199111180510', null, null, '男', '长春师范大学', '465531244@qq.com', null, '2013-05-26 12:09:25', '1', null, '本科', '长春师范大学', null, '0x1.3edf3d42f24c5p40.jpg', '为人诚恳，真诚！业务能力强，善于与人沟通！', '0', 'yes', 'no', null);
INSERT INTO `l_user` VALUES ('206', 'Y0431-01-2013-0002', 'Y0431-01-2013-0002', 'ysxyyy', '崔善玉', '18088689129', null, null, '220103198507200629', null, null, '女', '长春市宽城区吴中印象', '77547440@qq.com', null, '2013-05-26 13:04:05', '2', null, '本科', '中央名族大学', null, 'head.jpg', '个人能力强，有责任心，为人真诚', '0', 'yes', 'no', '教学主管');
INSERT INTO `l_user` VALUES ('208', '13843047324', 'Y0431-01-2013-0003', '111222', '范宇', '13843047324', null, 'null', '220105198908221028', null, null, '女', '长春市二道区经纬南路', '344327115@qq.com', null, '2013-05-28 10:09:22', '3', null, '本科', '吉林动画学院', null, 'head.jpg', '开朗热情', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('209', 'T0010-02-2013-0010', 'T0010-02-2013-0010', 'T0010-02-2013-0010', '刘牧', '11111111111', null, null, '111111111111111111', null, null, '男', '111', '111', null, '2013-05-31 17:22:16', '10', '111', '本科', '111', '高级', 'head.jpg', '1飞', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('210', 'Y0010-02-2013-0006', 'Y0010-02-2013-0006', 'Y0010-02-2013-0006', '蔡小云', '15001239546', null, null, '110228199002083828', null, null, '女', '-', '1-11111', null, '2013-06-05 12:51:56', '6', null, '高中', '北京电子城职业技术学院', null, 'head.jpg', '市场专员', '0', 'yes', 'no', null);
INSERT INTO `l_user` VALUES ('211', 'dgnt2013', 'T0010-01-2013-0011', 'dgnt2013', 'dgnt', '59600991', null, 'null', '111111111111111111', null, null, '男', '西大望路63号', '1@1', null, '2013-06-07 16:01:37', '11', '数字音乐教育', '大专', '罗兰', '中级', 'head.jpg', 'duogongnengting', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('213', 'yongjialu36', 'A0021-03-2013-0001', 'roland300', '黄浦校级管理员', '/', null, 'null', '                  ', null, null, '男', '/上海市文化广场4号门演职人员入口（茂名南路近永嘉路）', '/', null, '2013-06-26 09:58:00', '1', null, null, null, null, 'head.jpg', null, '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('215', '666666', null, '666666', '体验帐号', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'head.jpg', null, '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('216', '15801649567', 'T0010-01-2013-0012', '123456', '白天客', '15801649567', null, 'null', '                  ', null, null, '男', '、', '、', null, '2013-06-28 10:16:45', '12', '、', '大专', '、', '初级', 'head.jpg', '、', '0', 'no', 'no', 'null');
INSERT INTO `l_user` VALUES ('217', 'T0010-01-2013-0013', 'T0010-01-2013-0013', 'T0010-01-2013-0013', 'chengtei', '13211116666', null, null, '                  ', null, null, '男', '/', '/', null, '2013-06-28 18:08:25', '13', '/', '本科', '/', '高级', 'head.jpg', '/', '0', 'yes', 'no', null);
INSERT INTO `l_user` VALUES ('218', 'chengtei', 'T0010-01-2013-0014', '111222', '集团测试帐号勿删', '13678787878', null, 'null', '                  ', null, null, '男', '/', '/', null, '2013-06-28 18:10:24', '14', '/', '本科', '/', '高级', 'head.jpg', '/', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('219', 'T0431-01-2013-0005', 'T0431-01-2013-0005', 'T0431-01-2013-0005', '张太宸', '11111111111', null, null, '                  ', null, null, '男', '/', '/', null, '2013-06-29 10:52:08', '5', '/', '大专', '/', '初级', 'head.jpg', '/', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('220', 'Y0021-03-2013-0001', 'Y0021-03-2013-0001', 'Y0021-03-2013-0001', '王斌', '5465656', null, null, '314454646464879679', null, null, '男', '464640', '111111@2222.com', null, '2013-07-23 17:16:31', '1', null, '硕士', '52431313', null, 'head.jpg', 'dsafsa', '0', 'no', 'no', 'null');
INSERT INTO `l_user` VALUES ('221', 'liuyinglu763', 'A0021-04-2013-0001', 'roland300', '闸北校级管理员', '400-685-989', null, 'null', '                  ', null, null, '男', '闸北区柳营路763-789号盛源生活广场五层', '1@s.com', null, '2013-07-24 13:26:27', '1', null, null, null, null, 'head.jpg', null, '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('222', 'Y0021-03-2013-0002', 'Y0021-03-2013-0002', 'Y0021-03-2013-0002', '朱琳', '12345678', null, null, '310115198804200622', null, null, '女', '-', 'zhulin@rolandmusic.com.cn', null, '2013-08-09 19:00:50', '2', null, '本科', '-', null, 'head.jpg', '-', '0', 'no', 'no', 'null');
INSERT INTO `l_user` VALUES ('223', 'T0021-03-2013-0001', 'T0021-03-2013-0001', 'T0021-03-2013-0001', '恽嘉琦', '12345678', null, null, '310103198304275155', null, null, '男', '-', 'yunjiaqi@rolandmusic.com.cn', null, '2013-08-14 11:01:55', '1', '电吉他', '本科', '-', '中级', 'head.jpg', '    擅长电吉他与原声吉他的演奏与教学。演出经历丰富，音乐风格多样化，曾与国内外众多知名音乐人合作同台献艺，其中包括意大利著名爵士手风琴大师Renzo Ruggieri，台湾创作型歌手陈修侃等。从事音乐教研与创作演出工作多年，独立撰写过电吉他入门与进阶等多套教材。教学思路清晰，严谨认真，因材施教，善于从各方面发现了解学生的兴趣所在，从而能很好的发掘出其潜能。', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('224', '15010368372', 'T0010-01-2013-0015', '123456', '李超（研发测试勿删）', '15010368372', null, 'null', '                  ', null, null, '男', '/', '1@1.com', null, '2013-08-14 11:02:19', '15', '/', '大专', '/', '中级', 'head.jpg', '/', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('225', 'T0021-03-2013-0002', 'T0021-03-2013-0002', 'T0021-03-2013-0002', '孙军', '12345678', null, null, '140103197304190016', null, null, '男', '-', 'sunjun@rolandmusic.com.cn', null, '2013-08-14 11:08:37', '2', '电鼓 电贝司', '本科', '-', '中级', 'head.jpg', '    自幼学习音乐，曾先后参加脉搏乐队，地平线乐队并分别发行专辑。与国内外众多知名大师合作举办专业音乐会至今。1990-1994年服兵役期间担任北京军区石家庄部队文工团鼓手一职。九九年参加上海乐坛惊雷比赛荣获最佳乐手奖。几十年来一直从事教学与专业演出工作，擅长鼓和电贝司的演奏与教学，尤其对孩子有丰富的教学经验。', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('226', 'T0021-03-2013-0003', 'T0021-03-2013-0003', 'T0021-03-2013-0003', '柳慧雯', '12345678', null, null, '310108198212043324', null, null, '男', '-', 'liuhuiwen@rolandmusic.com.cn', null, '2013-08-14 11:10:23', '3', '钢琴', '本科', '-', '中级', 'head.jpg', '    从小学习钢琴，有扎实的钢琴演奏基础以及音乐理论知识，尤其对儿童的钢琴学习经验丰富。2006年毕业于上海师范大学音乐学院钢琴表演专业，之后一直从事钢琴教学工作，并且有相关的演出经验。对钢琴教育事业充满热忱，相信学习音乐是一种能力的培养，每个人都能成为音乐的主宰者。', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('227', 'Y0021-03-2013-0003', 'Y0021-03-2013-0003', 'Y0021-03-2013-0003', '夏晓洁', '13764545411', null, null, '111111111111111111', null, null, '女', '/', 'xiaxiaojie@rolandmusic.com.cn', null, '2013-08-14 11:31:35', '3', null, '大专', '11111', null, 'head.jpg', '/', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('228', '18918031093', 'Y0021-04-2013-0001', '18918031093', '李想', '18918031093', null, 'null', '111111111111111111', null, null, '女', '柳营路650弄34号601室', 'lixiang@rolandmusic.com.cn', null, '2013-08-14 15:18:09', '1', null, '本科', '/', null, 'head.jpg', '/', '0', 'no', 'no', '客服主管');
INSERT INTO `l_user` VALUES ('229', '13472858216', 'T0021-01-2013-0006', '13472858216', '陆富源', '13472858216', null, 'null', '310110198910051518', null, null, '男', '大连路飞鸿路', 'Disrayker@hotmail.com', null, '2013-08-16 15:16:49', '6', '电鼓', '本科', '上海交大', '特级', 'head.jpg', '有多年儿童音乐教育经验。师从上海音乐学院褚伟明与薛宝伦老师。参加过众多文艺演出活动。', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('230', '13651848182', 'T0021-04-2013-0001', '1970215', '瞿海东', '13651848182', null, '1970-02-15', '620105197002151019', null, null, '男', '上海市宝山区泗溏三村12号104室', 'quhaidong@rolandmusic.com.cn', null, '2013-08-17 16:58:37', '1', '电吉他', '大专', '甘肃省艺校', '特级', 'head.jpg', '吉他老师  89年学习古典吉他，92就读于甘肃省艺校，曾就职于甘肃省艺术团主音吉他兼乐队队长。95年来到广东组乐队，期间从事MIDI制作和吉他教学，03年一起组建FEELING乐团。05至07在深圳本色酒吧签约驻场 。、07至09在厦门从事演出经济，成功策划执行“厦门两届海峡两岸沙滩文化艺术节”，国内外‘小邓丽君’巡演主音吉他手，与国内多位歌星同台演出。喜爱JAZZ，BLUES  .  自主开发专利产品，“吉他和弦转转通”，学习和弦实用工具  “吉他和弦转转通”,发表于北京”现代乐手”杂志60期，2011-年上海东方娱乐新智力大冲浪吉他手。', '0', 'no', 'no', '教师主管');
INSERT INTO `l_user` VALUES ('231', '13564421147', 'T0021-04-2013-0002', 'T0021-04-2013-0002', '徐金伟', '13564421147', null, 'null', '36220119690822103x', null, null, '男', '浦东新区东方路8号', 'xujinwei@rolandmusic.com.cn', null, '2013-08-18 09:37:20', '2', '爵士电鼓', '本科', '中央音乐学院', '特级', 'head.jpg', '担任罗兰数字音乐学校电爵士鼓老师。\r\n毕业于中央音乐学院打击乐系，品学兼优，为人热情,曾参与儿童爵士鼓教材乐谱编配，儿童音乐动画音乐编曲，参加潘美辰，苏永康等明星现场伴奏\r\n积累了丰富的演出教学经验和实践经验。', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('232', 'Y0021-04-2013-0002', 'Y0021-04-2013-0002', 'Y0021-04-2013-0002', '咨询师1', '13000000000', null, null, '                  ', null, null, '男', '/', '1@', null, '2013-08-21 12:49:23', '2', null, '大专', '/', null, 'head.jpg', '/', '0', 'no', 'no', null);
INSERT INTO `l_user` VALUES ('233', 'Y0021-04-2013-0003', 'Y0021-04-2013-0003', 'Y0021-04-2013-0003', '咨询师2', '13311116666', null, null, '                  ', null, null, '男', '/', '/', null, '2013-08-21 12:49:51', '3', null, '本科', '/', null, 'head.jpg', '/', '0', 'no', 'no', null);

-- ----------------------------
-- Table structure for `l_user_group`
-- ----------------------------
DROP TABLE IF EXISTS `l_user_group`;
CREATE TABLE `l_user_group` (
  `ug_gr_id` int(255) NOT NULL DEFAULT '0',
  `ug_user_id` int(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ug_gr_id`,`ug_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of l_user_group
-- ----------------------------
INSERT INTO `l_user_group` VALUES ('1', '0');
INSERT INTO `l_user_group` VALUES ('10', '1');
INSERT INTO `l_user_group` VALUES ('20', '54');
INSERT INTO `l_user_group` VALUES ('20', '55');
INSERT INTO `l_user_group` VALUES ('20', '56');
INSERT INTO `l_user_group` VALUES ('20', '57');
INSERT INTO `l_user_group` VALUES ('20', '68');
INSERT INTO `l_user_group` VALUES ('20', '151');
INSERT INTO `l_user_group` VALUES ('20', '168');
INSERT INTO `l_user_group` VALUES ('20', '169');
INSERT INTO `l_user_group` VALUES ('20', '194');
INSERT INTO `l_user_group` VALUES ('20', '197');
INSERT INTO `l_user_group` VALUES ('20', '198');
INSERT INTO `l_user_group` VALUES ('20', '213');
INSERT INTO `l_user_group` VALUES ('20', '221');
INSERT INTO `l_user_group` VALUES ('30', '69');
INSERT INTO `l_user_group` VALUES ('30', '70');
INSERT INTO `l_user_group` VALUES ('30', '71');
INSERT INTO `l_user_group` VALUES ('30', '72');
INSERT INTO `l_user_group` VALUES ('30', '73');
INSERT INTO `l_user_group` VALUES ('30', '74');
INSERT INTO `l_user_group` VALUES ('30', '75');
INSERT INTO `l_user_group` VALUES ('30', '76');
INSERT INTO `l_user_group` VALUES ('30', '77');
INSERT INTO `l_user_group` VALUES ('30', '84');
INSERT INTO `l_user_group` VALUES ('30', '85');
INSERT INTO `l_user_group` VALUES ('30', '86');
INSERT INTO `l_user_group` VALUES ('30', '87');
INSERT INTO `l_user_group` VALUES ('30', '88');
INSERT INTO `l_user_group` VALUES ('30', '89');
INSERT INTO `l_user_group` VALUES ('30', '90');
INSERT INTO `l_user_group` VALUES ('30', '91');
INSERT INTO `l_user_group` VALUES ('30', '92');
INSERT INTO `l_user_group` VALUES ('30', '93');
INSERT INTO `l_user_group` VALUES ('30', '94');
INSERT INTO `l_user_group` VALUES ('30', '96');
INSERT INTO `l_user_group` VALUES ('30', '97');
INSERT INTO `l_user_group` VALUES ('30', '98');
INSERT INTO `l_user_group` VALUES ('30', '99');
INSERT INTO `l_user_group` VALUES ('30', '100');
INSERT INTO `l_user_group` VALUES ('30', '101');
INSERT INTO `l_user_group` VALUES ('30', '118');
INSERT INTO `l_user_group` VALUES ('30', '119');
INSERT INTO `l_user_group` VALUES ('30', '120');
INSERT INTO `l_user_group` VALUES ('30', '121');
INSERT INTO `l_user_group` VALUES ('30', '122');
INSERT INTO `l_user_group` VALUES ('30', '123');
INSERT INTO `l_user_group` VALUES ('30', '126');
INSERT INTO `l_user_group` VALUES ('30', '128');
INSERT INTO `l_user_group` VALUES ('30', '152');
INSERT INTO `l_user_group` VALUES ('30', '170');
INSERT INTO `l_user_group` VALUES ('30', '171');
INSERT INTO `l_user_group` VALUES ('30', '173');
INSERT INTO `l_user_group` VALUES ('30', '177');
INSERT INTO `l_user_group` VALUES ('30', '178');
INSERT INTO `l_user_group` VALUES ('30', '179');
INSERT INTO `l_user_group` VALUES ('30', '180');
INSERT INTO `l_user_group` VALUES ('30', '181');
INSERT INTO `l_user_group` VALUES ('30', '182');
INSERT INTO `l_user_group` VALUES ('30', '187');
INSERT INTO `l_user_group` VALUES ('30', '188');
INSERT INTO `l_user_group` VALUES ('30', '189');
INSERT INTO `l_user_group` VALUES ('30', '190');
INSERT INTO `l_user_group` VALUES ('30', '191');
INSERT INTO `l_user_group` VALUES ('30', '192');
INSERT INTO `l_user_group` VALUES ('30', '196');
INSERT INTO `l_user_group` VALUES ('30', '199');
INSERT INTO `l_user_group` VALUES ('30', '200');
INSERT INTO `l_user_group` VALUES ('30', '201');
INSERT INTO `l_user_group` VALUES ('30', '202');
INSERT INTO `l_user_group` VALUES ('30', '204');
INSERT INTO `l_user_group` VALUES ('30', '209');
INSERT INTO `l_user_group` VALUES ('30', '211');
INSERT INTO `l_user_group` VALUES ('30', '216');
INSERT INTO `l_user_group` VALUES ('30', '217');
INSERT INTO `l_user_group` VALUES ('30', '218');
INSERT INTO `l_user_group` VALUES ('30', '219');
INSERT INTO `l_user_group` VALUES ('30', '224');
INSERT INTO `l_user_group` VALUES ('30', '225');
INSERT INTO `l_user_group` VALUES ('30', '226');
INSERT INTO `l_user_group` VALUES ('30', '229');
INSERT INTO `l_user_group` VALUES ('30', '230');
INSERT INTO `l_user_group` VALUES ('30', '231');
INSERT INTO `l_user_group` VALUES ('40', '115');
INSERT INTO `l_user_group` VALUES ('40', '129');
INSERT INTO `l_user_group` VALUES ('60', '79');
INSERT INTO `l_user_group` VALUES ('60', '80');
INSERT INTO `l_user_group` VALUES ('60', '81');
INSERT INTO `l_user_group` VALUES ('60', '82');
INSERT INTO `l_user_group` VALUES ('60', '103');
INSERT INTO `l_user_group` VALUES ('60', '104');
INSERT INTO `l_user_group` VALUES ('60', '105');
INSERT INTO `l_user_group` VALUES ('60', '106');
INSERT INTO `l_user_group` VALUES ('60', '107');
INSERT INTO `l_user_group` VALUES ('60', '108');
INSERT INTO `l_user_group` VALUES ('60', '109');
INSERT INTO `l_user_group` VALUES ('60', '110');
INSERT INTO `l_user_group` VALUES ('60', '125');
INSERT INTO `l_user_group` VALUES ('60', '127');
INSERT INTO `l_user_group` VALUES ('60', '148');
INSERT INTO `l_user_group` VALUES ('60', '175');
INSERT INTO `l_user_group` VALUES ('60', '176');
INSERT INTO `l_user_group` VALUES ('60', '183');
INSERT INTO `l_user_group` VALUES ('60', '195');
INSERT INTO `l_user_group` VALUES ('60', '205');
INSERT INTO `l_user_group` VALUES ('60', '206');
INSERT INTO `l_user_group` VALUES ('60', '208');
INSERT INTO `l_user_group` VALUES ('60', '210');
INSERT INTO `l_user_group` VALUES ('60', '220');
INSERT INTO `l_user_group` VALUES ('60', '222');
INSERT INTO `l_user_group` VALUES ('60', '232');
INSERT INTO `l_user_group` VALUES ('60', '233');
INSERT INTO `l_user_group` VALUES ('71', '113');
INSERT INTO `l_user_group` VALUES ('72', '83');
INSERT INTO `l_user_group` VALUES ('75', '102');
INSERT INTO `l_user_group` VALUES ('82', '172');
INSERT INTO `l_user_group` VALUES ('83', '174');
INSERT INTO `l_user_group` VALUES ('84', '185');
INSERT INTO `l_user_group` VALUES ('86', '78');
INSERT INTO `l_user_group` VALUES ('90', '193');
INSERT INTO `l_user_group` VALUES ('93', '223');
INSERT INTO `l_user_group` VALUES ('94', '227');
INSERT INTO `l_user_group` VALUES ('95', '228');

-- ----------------------------
-- Table structure for `make_up_missed_lesson`
-- ----------------------------
DROP TABLE IF EXISTS `make_up_missed_lesson`;
CREATE TABLE `make_up_missed_lesson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` varchar(30) DEFAULT NULL,
  `lesson_date_id` int(11) DEFAULT NULL COMMENT '课程记录',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='补课记录';

-- ----------------------------
-- Records of make_up_missed_lesson
-- ----------------------------

-- ----------------------------
-- Table structure for `market`
-- ----------------------------
DROP TABLE IF EXISTS `market`;
CREATE TABLE `market` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='周边销售';

-- ----------------------------
-- Records of market
-- ----------------------------

-- ----------------------------
-- Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_m_id` int(11) DEFAULT NULL,
  `user_y_id` int(11) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `create_date` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='消息';

-- ----------------------------
-- Records of message
-- ----------------------------

-- ----------------------------
-- Table structure for `payment`
-- ----------------------------
DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` varchar(30) DEFAULT NULL,
  `user_interal_id` int(11) DEFAULT NULL,
  `user_member_id` int(11) DEFAULT NULL,
  `pay_money` double(100,0) DEFAULT NULL,
  `pay_type` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `discount_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='缴费';

-- ----------------------------
-- Records of payment
-- ----------------------------

-- ----------------------------
-- Table structure for `rdec_compet_type`
-- ----------------------------
DROP TABLE IF EXISTS `rdec_compet_type`;
CREATE TABLE `rdec_compet_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rdec_compet_type
-- ----------------------------
INSERT INTO `rdec_compet_type` VALUES ('1', '集团');
INSERT INTO `rdec_compet_type` VALUES ('2', '区域');
INSERT INTO `rdec_compet_type` VALUES ('3', '学校');
INSERT INTO `rdec_compet_type` VALUES ('4', '个人');

-- ----------------------------
-- Table structure for `rdec_status`
-- ----------------------------
DROP TABLE IF EXISTS `rdec_status`;
CREATE TABLE `rdec_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COMMENT='状态表';

-- ----------------------------
-- Records of rdec_status
-- ----------------------------
INSERT INTO `rdec_status` VALUES ('1', '定金', '1');
INSERT INTO `rdec_status` VALUES ('2', '续费', '1');
INSERT INTO `rdec_status` VALUES ('3', '退费', '1');
INSERT INTO `rdec_status` VALUES ('4', '正常', '1');
INSERT INTO `rdec_status` VALUES ('5', '课程延迟', '2');
INSERT INTO `rdec_status` VALUES ('6', '学生缺课', '2');
INSERT INTO `rdec_status` VALUES ('7', '更换教室', '2');
INSERT INTO `rdec_status` VALUES ('8', '更换教师', '2');
INSERT INTO `rdec_status` VALUES ('9', '本科', '3');
INSERT INTO `rdec_status` VALUES ('10', '专科', '3');
INSERT INTO `rdec_status` VALUES ('11', '其他', '3');
INSERT INTO `rdec_status` VALUES ('12', '初级', '4');
INSERT INTO `rdec_status` VALUES ('13', '中级', '4');
INSERT INTO `rdec_status` VALUES ('14', '高级', '4');
INSERT INTO `rdec_status` VALUES ('15', '特级', '4');
INSERT INTO `rdec_status` VALUES ('16', '正常', '5');
INSERT INTO `rdec_status` VALUES ('17', '隐藏', '5');
INSERT INTO `rdec_status` VALUES ('18', '冻结', '5');
INSERT INTO `rdec_status` VALUES ('19', '正常', '6');
INSERT INTO `rdec_status` VALUES ('20', '冻结', '6');
INSERT INTO `rdec_status` VALUES ('21', '正常', '7');
INSERT INTO `rdec_status` VALUES ('22', '无效', '7');
INSERT INTO `rdec_status` VALUES ('23', '未联系', '8');
INSERT INTO `rdec_status` VALUES ('24', '已联系', '8');
INSERT INTO `rdec_status` VALUES ('25', '优先跟进', '8');
INSERT INTO `rdec_status` VALUES ('26', '待跟进', '8');
INSERT INTO `rdec_status` VALUES ('27', '无意向', '8');
INSERT INTO `rdec_status` VALUES ('28', '未试听', '8');
INSERT INTO `rdec_status` VALUES ('29', '已试听', '8');
INSERT INTO `rdec_status` VALUES ('30', '定金', '8');
INSERT INTO `rdec_status` VALUES ('31', '申请缴费', '8');
INSERT INTO `rdec_status` VALUES ('32', '报名完成', '8');
INSERT INTO `rdec_status` VALUES ('33', '无效数据', '8');

-- ----------------------------
-- Table structure for `rdec_type`
-- ----------------------------
DROP TABLE IF EXISTS `rdec_type`;
CREATE TABLE `rdec_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rdec_type
-- ----------------------------
INSERT INTO `rdec_type` VALUES ('1', '缴费');
INSERT INTO `rdec_type` VALUES ('2', '上课记录');
INSERT INTO `rdec_type` VALUES ('3', '学历');
INSERT INTO `rdec_type` VALUES ('4', '职称等级');
INSERT INTO `rdec_type` VALUES ('5', '学校');
INSERT INTO `rdec_type` VALUES ('6', '职员');
INSERT INTO `rdec_type` VALUES ('7', '活动');
INSERT INTO `rdec_type` VALUES ('8', '潜在用户');

-- ----------------------------
-- Table structure for `resources`
-- ----------------------------
DROP TABLE IF EXISTS `resources`;
CREATE TABLE `resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `path_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源文件';

-- ----------------------------
-- Records of resources
-- ----------------------------

-- ----------------------------
-- Table structure for `schools`
-- ----------------------------
DROP TABLE IF EXISTS `schools`;
CREATE TABLE `schools` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `school_master` int(11) DEFAULT NULL COMMENT '校长',
  `type_id` int(11) DEFAULT '0' COMMENT '0:直营，1：加盟',
  `city_sheng` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `status_id` int(11) DEFAULT '1',
  `user_mobile` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `qq` int(20) DEFAULT NULL,
  `weibo` varchar(255) DEFAULT NULL,
  `qqzone` varchar(255) DEFAULT NULL,
  `blog` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `map` varchar(255) DEFAULT NULL,
  `create_date` varchar(100) DEFAULT NULL,
  `worktime` varchar(255) DEFAULT NULL,
  `user_internal_id` int(11) DEFAULT NULL,
  `start_time` varchar(30) DEFAULT NULL COMMENT '开始日期',
  `end_time` varchar(30) DEFAULT NULL COMMENT '结束日期',
  PRIMARY KEY (`id`),
  KEY `PK_SCHOOL_CITY_ID` (`city_id`),
  KEY `PK_SCHOOL_STATUS_ID` (`status_id`),
  CONSTRAINT `PK_SCHOOL_CITY_ID` FOREIGN KEY (`city_id`) REFERENCES `t_city` (`id`),
  CONSTRAINT `PK_SCHOOL_STATUS_ID` FOREIGN KEY (`status_id`) REFERENCES `rdec_status` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='学校表';

-- ----------------------------
-- Records of schools
-- ----------------------------
INSERT INTO `schools` VALUES ('1', '北京教育集团教研中心', '1', '0', '1', null, null, '17', '400-000-0000', 'school@sina.com', '78765411', '', null, null, null, null, null, '周一 至 周五 09:00 - 18:00', '1', null, null);
INSERT INTO `schools` VALUES ('2', '罗兰西大望路中心', '16', '0', '110000', '110105', '西大望路63号阳光财富大厦1105室', '16', '4000-800-272', '133227223@qq.com', '133227223', 'http://www.weibo.com/3075698180', 'http://user.qzone.qq.com/133227223/infocenter', 'http://blog.sina.com.cn/rolandschool', null, null, null, '周三 至 周日 09:00 - 18:00', '1', null, null);
INSERT INTO `schools` VALUES ('3', '罗兰望京中心', '18', '0', '110000', '110105', '花家地西里113号望京教辅中心', '16', '010-5703 2958', 'sqx@roland.com.cn', '2015588604', 'http://weibo.com/u/3197834780', null, null, null, null, null, '', '1', null, null);
INSERT INTO `schools` VALUES ('4', '上海罗兰数字音乐学校杨浦校区', '17', '0', '310000', '310110', '飞虹路568弄海上海弘基休闲广场E8座', '17', '400-685-9895', 'shanghai@rolandmusic.com.cn', '78765498', 'http://e.weibo.com/rolandmusicschool', null, 'http://blog.sina.com.cn/rolandmusic', null, null, null, '周二 至 周日 09:00 - 20:00', '1', null, null);
INSERT INTO `schools` VALUES ('5', '上海罗兰数字音乐学校浦东校区', '105', '0', '310000', '310115', '北园路300号三楼', '16', '400-685-9895', 'shanghai@rolandmusic.com.cn', '1137785305', 'http://e.weibo.com/rolandmusicschool', null, 'http://blog.sina.com.cn/u/1828986852', null, null, null, '周二 至 周日 09:00 - 18:00', '1', null, null);
INSERT INTO `schools` VALUES ('6', '罗兰长春东盛中心', '107', '1', '220000', '220105', '东盛大街和岭东路交汇2366号（国美电器三楼）', '16', '0431—8812 1111', '2842526826@qq.com', '77547440', 'http://e.weibo.com/u/3186424943', null, '', null, null, null, '周二------周日（9：30------19:00）', '1', null, null);
INSERT INTO `schools` VALUES ('7', '上海罗兰数字音乐学校黄浦校区', '145', '0', '310000', '310101', '文化广场4号门演职人员入口（茂名南路近永嘉路）', '16', '4006859895', 'shanghai@rolandmusic.com.cn', '1137785305', 'http://e.weibo.com/rolandmusicschool', null, 'http://blog.sina.com.cn/u/1828986852', null, null, null, '周二 至 周日 09:00 - 18:00', '1', null, null);
INSERT INTO `schools` VALUES ('8', '上海罗兰数字音乐学校闸北校区', '16', '0', '310000', '310108', '柳营路777号盛源生活广场五层', '18', '400-685-9895', 'shanghai@rolandmusic.com.cn', '78765498', 'http://e.weibo.com/rolandmusicschool', null, 'http://blog.sina.com.cn/rolandmusic', null, null, null, '周二-----周日 早8：30----晚6：00', '1', null, null);

-- ----------------------------
-- Table structure for `school_course`
-- ----------------------------
DROP TABLE IF EXISTS `school_course`;
CREATE TABLE `school_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `school_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `create_date` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学校课程';

-- ----------------------------
-- Records of school_course
-- ----------------------------

-- ----------------------------
-- Table structure for `school_user_internal`
-- ----------------------------
DROP TABLE IF EXISTS `school_user_internal`;
CREATE TABLE `school_user_internal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_internal_id` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=333 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of school_user_internal
-- ----------------------------
INSERT INTO `school_user_internal` VALUES ('1', '1', '1');
INSERT INTO `school_user_internal` VALUES ('256', '16', '2');
INSERT INTO `school_user_internal` VALUES ('257', '17', '4');
INSERT INTO `school_user_internal` VALUES ('258', '18', '4');
INSERT INTO `school_user_internal` VALUES ('259', '24', '2');
INSERT INTO `school_user_internal` VALUES ('260', '25', '2');
INSERT INTO `school_user_internal` VALUES ('261', '26', '2');
INSERT INTO `school_user_internal` VALUES ('262', '27', '2');
INSERT INTO `school_user_internal` VALUES ('263', '28', '2');
INSERT INTO `school_user_internal` VALUES ('264', '29', '2');
INSERT INTO `school_user_internal` VALUES ('265', '30', '2');
INSERT INTO `school_user_internal` VALUES ('266', '31', '2');
INSERT INTO `school_user_internal` VALUES ('267', '32', '2');
INSERT INTO `school_user_internal` VALUES ('268', '33', '2');
INSERT INTO `school_user_internal` VALUES ('269', '35', '2');
INSERT INTO `school_user_internal` VALUES ('270', '36', '2');
INSERT INTO `school_user_internal` VALUES ('271', '38', '4');
INSERT INTO `school_user_internal` VALUES ('272', '39', '5');
INSERT INTO `school_user_internal` VALUES ('273', '40', '5');
INSERT INTO `school_user_internal` VALUES ('274', '41', '5');
INSERT INTO `school_user_internal` VALUES ('275', '42', '4');
INSERT INTO `school_user_internal` VALUES ('276', '43', '5');
INSERT INTO `school_user_internal` VALUES ('277', '44', '5');
INSERT INTO `school_user_internal` VALUES ('278', '47', '5');
INSERT INTO `school_user_internal` VALUES ('279', '48', '5');
INSERT INTO `school_user_internal` VALUES ('280', '49', '5');
INSERT INTO `school_user_internal` VALUES ('281', '52', '4');
INSERT INTO `school_user_internal` VALUES ('282', '53', '4');
INSERT INTO `school_user_internal` VALUES ('283', '54', '4');
INSERT INTO `school_user_internal` VALUES ('284', '55', '4');
INSERT INTO `school_user_internal` VALUES ('285', '56', '4');
INSERT INTO `school_user_internal` VALUES ('286', '59', '4');
INSERT INTO `school_user_internal` VALUES ('287', '60', '4');
INSERT INTO `school_user_internal` VALUES ('288', '61', '4');
INSERT INTO `school_user_internal` VALUES ('289', '62', '4');
INSERT INTO `school_user_internal` VALUES ('290', '68', '4');
INSERT INTO `school_user_internal` VALUES ('291', '77', '5');
INSERT INTO `school_user_internal` VALUES ('292', '79', '5');
INSERT INTO `school_user_internal` VALUES ('293', '80', '5');
INSERT INTO `school_user_internal` VALUES ('294', '81', '5');
INSERT INTO `school_user_internal` VALUES ('295', '87', '4');
INSERT INTO `school_user_internal` VALUES ('296', '88', '4');
INSERT INTO `school_user_internal` VALUES ('297', '89', '4');
INSERT INTO `school_user_internal` VALUES ('298', '104', '3');
INSERT INTO `school_user_internal` VALUES ('299', '105', '3');
INSERT INTO `school_user_internal` VALUES ('300', '108', '5');
INSERT INTO `school_user_internal` VALUES ('301', '110', '2');
INSERT INTO `school_user_internal` VALUES ('302', '111', '2');
INSERT INTO `school_user_internal` VALUES ('303', '112', '2');
INSERT INTO `school_user_internal` VALUES ('304', '113', '2');
INSERT INTO `school_user_internal` VALUES ('305', '114', '3');
INSERT INTO `school_user_internal` VALUES ('306', '117', '3');
INSERT INTO `school_user_internal` VALUES ('307', '118', '3');
INSERT INTO `school_user_internal` VALUES ('308', '129', '3');
INSERT INTO `school_user_internal` VALUES ('309', '131', '3');
INSERT INTO `school_user_internal` VALUES ('310', '132', '3');
INSERT INTO `school_user_internal` VALUES ('311', '133', '3');
INSERT INTO `school_user_internal` VALUES ('312', '134', '4');
INSERT INTO `school_user_internal` VALUES ('313', '135', '4');
INSERT INTO `school_user_internal` VALUES ('314', '136', '4');
INSERT INTO `school_user_internal` VALUES ('315', '137', '2');
INSERT INTO `school_user_internal` VALUES ('316', '138', '5');
INSERT INTO `school_user_internal` VALUES ('317', '139', '3');
INSERT INTO `school_user_internal` VALUES ('318', '142', '3');
INSERT INTO `school_user_internal` VALUES ('319', '143', '3');
INSERT INTO `school_user_internal` VALUES ('320', '145', '6');
INSERT INTO `school_user_internal` VALUES ('321', '146', '4');
INSERT INTO `school_user_internal` VALUES ('322', '147', '4');
INSERT INTO `school_user_internal` VALUES ('323', '148', '6');
INSERT INTO `school_user_internal` VALUES ('324', '149', '6');
INSERT INTO `school_user_internal` VALUES ('325', '151', '6');
INSERT INTO `school_user_internal` VALUES ('326', '153', '6');
INSERT INTO `school_user_internal` VALUES ('327', '154', '6');
INSERT INTO `school_user_internal` VALUES ('328', '155', '3');
INSERT INTO `school_user_internal` VALUES ('329', '156', '3');
INSERT INTO `school_user_internal` VALUES ('330', '160', '2');
INSERT INTO `school_user_internal` VALUES ('331', '163', '6');
INSERT INTO `school_user_internal` VALUES ('332', '164', '7');

-- ----------------------------
-- Table structure for `t_city`
-- ----------------------------
DROP TABLE IF EXISTS `t_city`;
CREATE TABLE `t_city` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `pinyin` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_city
-- ----------------------------
INSERT INTO `t_city` VALUES ('110000', '北京', '1', 'bei jing');
INSERT INTO `t_city` VALUES ('110100', '北京市', '110000', 'bei jing shi');
INSERT INTO `t_city` VALUES ('110101', '东城区', '110100', 'dong cheng qu');
INSERT INTO `t_city` VALUES ('110102', '西城区', '110100', 'xi cheng qu');
INSERT INTO `t_city` VALUES ('110103', '崇文区', '110100', 'chong wen qu');
INSERT INTO `t_city` VALUES ('110104', '宣武区', '110100', 'xuan wu qu');
INSERT INTO `t_city` VALUES ('110105', '朝阳区', '110100', 'chao yang qu');
INSERT INTO `t_city` VALUES ('110106', '丰台区', '110100', 'feng tai qu');
INSERT INTO `t_city` VALUES ('110107', '石景山区', '110100', 'shi jing shan qu');
INSERT INTO `t_city` VALUES ('110108', '海淀区', '110100', 'hai dian qu');
INSERT INTO `t_city` VALUES ('110109', '门头沟区', '110100', 'men tou gou qu');
INSERT INTO `t_city` VALUES ('110111', '房山区', '110100', 'fang shan qu');
INSERT INTO `t_city` VALUES ('110112', '通州区', '110100', 'tong zhou qu');
INSERT INTO `t_city` VALUES ('110113', '顺义区', '110100', 'shun yi qu');
INSERT INTO `t_city` VALUES ('110114', '昌平区', '110100', 'chang ping qu');
INSERT INTO `t_city` VALUES ('110115', '大兴区', '110100', 'da xing qu');
INSERT INTO `t_city` VALUES ('110116', '怀柔区', '110100', 'huai rou qu');
INSERT INTO `t_city` VALUES ('110117', '平谷区', '110100', 'ping gu qu');
INSERT INTO `t_city` VALUES ('110228', '密云县', '110100', 'mi yun xian');
INSERT INTO `t_city` VALUES ('110229', '延庆县', '110100', 'yan qing xian');
INSERT INTO `t_city` VALUES ('110230', '其它区', '110100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('120000', '天津', '1', 'tian jin');
INSERT INTO `t_city` VALUES ('120100', '天津市', '120000', 'tian jin shi');
INSERT INTO `t_city` VALUES ('120101', '和平区', '120100', 'he ping qu');
INSERT INTO `t_city` VALUES ('120102', '河东区', '120100', 'he dong qu');
INSERT INTO `t_city` VALUES ('120103', '河西区', '120100', 'he xi qu');
INSERT INTO `t_city` VALUES ('120104', '南开区', '120100', 'nan kai qu');
INSERT INTO `t_city` VALUES ('120105', '河北区', '120100', 'he bei qu');
INSERT INTO `t_city` VALUES ('120106', '红桥区', '120100', 'hong qiao qu');
INSERT INTO `t_city` VALUES ('120107', '塘沽区', '120100', 'tang gu qu');
INSERT INTO `t_city` VALUES ('120108', '汉沽区', '120100', 'han gu qu');
INSERT INTO `t_city` VALUES ('120109', '大港区', '120100', 'da gang qu');
INSERT INTO `t_city` VALUES ('120110', '东丽区', '120100', 'dong li qu');
INSERT INTO `t_city` VALUES ('120111', '西青区', '120100', 'xi qing qu');
INSERT INTO `t_city` VALUES ('120112', '津南区', '120100', 'jin nan qu');
INSERT INTO `t_city` VALUES ('120113', '北辰区', '120100', 'bei chen qu');
INSERT INTO `t_city` VALUES ('120114', '武清区', '120100', 'wu qing qu');
INSERT INTO `t_city` VALUES ('120115', '宝坻区', '120100', 'bao di qu');
INSERT INTO `t_city` VALUES ('120116', '滨海新区', '120100', 'bin hai xin qu');
INSERT INTO `t_city` VALUES ('120221', '宁河县', '120100', 'ning he xian');
INSERT INTO `t_city` VALUES ('120223', '静海县', '120100', 'jing hai xian');
INSERT INTO `t_city` VALUES ('120225', '蓟县', '120100', 'ji xian');
INSERT INTO `t_city` VALUES ('120226', '其它区', '120100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('130000', '河北省', '1', 'he bei sheng');
INSERT INTO `t_city` VALUES ('130100', '石家庄市', '130000', 'shi jia zhuang shi');
INSERT INTO `t_city` VALUES ('130102', '长安区', '130100', 'chang an qu');
INSERT INTO `t_city` VALUES ('130103', '桥东区', '130100', 'qiao dong qu');
INSERT INTO `t_city` VALUES ('130104', '桥西区', '130100', 'qiao xi qu');
INSERT INTO `t_city` VALUES ('130105', '新华区', '130100', 'xin hua qu');
INSERT INTO `t_city` VALUES ('130107', '井陉矿区', '130100', 'jing xing kuang qu');
INSERT INTO `t_city` VALUES ('130108', '裕华区', '130100', 'yu hua qu');
INSERT INTO `t_city` VALUES ('130121', '井陉县', '130100', 'jing xing xian');
INSERT INTO `t_city` VALUES ('130123', '正定县', '130100', 'zheng ding xian');
INSERT INTO `t_city` VALUES ('130124', '栾城县', '130100', 'luan cheng xian');
INSERT INTO `t_city` VALUES ('130125', '行唐县', '130100', 'xing tang xian');
INSERT INTO `t_city` VALUES ('130126', '灵寿县', '130100', 'ling shou xian');
INSERT INTO `t_city` VALUES ('130127', '高邑县', '130100', 'gao yi xian');
INSERT INTO `t_city` VALUES ('130128', '深泽县', '130100', 'shen ze xian');
INSERT INTO `t_city` VALUES ('130129', '赞皇县', '130100', 'zan huang xian');
INSERT INTO `t_city` VALUES ('130130', '无极县', '130100', 'wu ji xian');
INSERT INTO `t_city` VALUES ('130131', '平山县', '130100', 'ping shan xian');
INSERT INTO `t_city` VALUES ('130132', '元氏县', '130100', 'yuan shi xian');
INSERT INTO `t_city` VALUES ('130133', '赵县', '130100', 'zhao xian');
INSERT INTO `t_city` VALUES ('130181', '辛集市', '130100', 'xin ji shi');
INSERT INTO `t_city` VALUES ('130182', '藁城市', '130100', 'gao cheng shi');
INSERT INTO `t_city` VALUES ('130183', '晋州市', '130100', 'jin zhou shi');
INSERT INTO `t_city` VALUES ('130184', '新乐市', '130100', 'xin le shi');
INSERT INTO `t_city` VALUES ('130185', '鹿泉市', '130100', 'lu quan shi');
INSERT INTO `t_city` VALUES ('130186', '其它区', '130100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('130200', '唐山市', '130000', 'tang shan shi');
INSERT INTO `t_city` VALUES ('130202', '路南区', '130200', 'lu nan qu');
INSERT INTO `t_city` VALUES ('130203', '路北区', '130200', 'lu bei qu');
INSERT INTO `t_city` VALUES ('130204', '古冶区', '130200', 'gu ye qu');
INSERT INTO `t_city` VALUES ('130205', '开平区', '130200', 'kai ping qu');
INSERT INTO `t_city` VALUES ('130207', '丰南区', '130200', 'feng nan qu');
INSERT INTO `t_city` VALUES ('130208', '丰润区', '130200', 'feng run qu');
INSERT INTO `t_city` VALUES ('130223', '滦县', '130200', 'luan xian');
INSERT INTO `t_city` VALUES ('130224', '滦南县', '130200', 'luan nan xian');
INSERT INTO `t_city` VALUES ('130225', '乐亭县', '130200', 'le ting xian');
INSERT INTO `t_city` VALUES ('130227', '迁西县', '130200', 'qian xi xian');
INSERT INTO `t_city` VALUES ('130229', '玉田县', '130200', 'yu tian xian');
INSERT INTO `t_city` VALUES ('130230', '唐海县', '130200', 'tang hai xian');
INSERT INTO `t_city` VALUES ('130281', '遵化市', '130200', 'zun hua shi');
INSERT INTO `t_city` VALUES ('130283', '迁安市', '130200', 'qian an shi');
INSERT INTO `t_city` VALUES ('130284', '其它区', '130200', 'qi ta qu');
INSERT INTO `t_city` VALUES ('130300', '秦皇岛市', '130000', 'qin huang dao shi');
INSERT INTO `t_city` VALUES ('130302', '海港区', '130300', 'hai gang qu');
INSERT INTO `t_city` VALUES ('130303', '山海关区', '130300', 'shan hai guan qu');
INSERT INTO `t_city` VALUES ('130304', '北戴河区', '130300', 'bei dai he qu');
INSERT INTO `t_city` VALUES ('130321', '青龙满族自治县', '130300', 'qing long man zu zi zhi xian');
INSERT INTO `t_city` VALUES ('130322', '昌黎县', '130300', 'chang li xian');
INSERT INTO `t_city` VALUES ('130323', '抚宁县', '130300', 'fu ning xian');
INSERT INTO `t_city` VALUES ('130324', '卢龙县', '130300', 'lu long xian');
INSERT INTO `t_city` VALUES ('130398', '其它区', '130300', 'qi ta qu');
INSERT INTO `t_city` VALUES ('130399', '经济技术开发区', '130300', 'jing ji ji shu kai fa qu');
INSERT INTO `t_city` VALUES ('130400', '邯郸市', '130000', 'han dan shi');
INSERT INTO `t_city` VALUES ('130402', '邯山区', '130400', 'han shan qu');
INSERT INTO `t_city` VALUES ('130403', '丛台区', '130400', 'cong tai qu');
INSERT INTO `t_city` VALUES ('130404', '复兴区', '130400', 'fu xing qu');
INSERT INTO `t_city` VALUES ('130406', '峰峰矿区', '130400', 'feng feng kuang qu');
INSERT INTO `t_city` VALUES ('130421', '邯郸县', '130400', 'han dan xian');
INSERT INTO `t_city` VALUES ('130423', '临漳县', '130400', 'lin zhang xian');
INSERT INTO `t_city` VALUES ('130424', '成安县', '130400', 'cheng an xian');
INSERT INTO `t_city` VALUES ('130425', '大名县', '130400', 'da ming xian');
INSERT INTO `t_city` VALUES ('130426', '涉县', '130400', 'she xian');
INSERT INTO `t_city` VALUES ('130427', '磁县', '130400', 'ci xian');
INSERT INTO `t_city` VALUES ('130428', '肥乡县', '130400', 'fei xiang xian');
INSERT INTO `t_city` VALUES ('130429', '永年县', '130400', 'yong nian xian');
INSERT INTO `t_city` VALUES ('130430', '邱县', '130400', 'qiu xian');
INSERT INTO `t_city` VALUES ('130431', '鸡泽县', '130400', 'ji ze xian');
INSERT INTO `t_city` VALUES ('130432', '广平县', '130400', 'guang ping xian');
INSERT INTO `t_city` VALUES ('130433', '馆陶县', '130400', 'guan tao xian');
INSERT INTO `t_city` VALUES ('130434', '魏县', '130400', 'wei xian');
INSERT INTO `t_city` VALUES ('130435', '曲周县', '130400', 'qu zhou xian');
INSERT INTO `t_city` VALUES ('130481', '武安市', '130400', 'wu an shi');
INSERT INTO `t_city` VALUES ('130482', '其它区', '130400', 'qi ta qu');
INSERT INTO `t_city` VALUES ('130500', '邢台市', '130000', 'xing tai shi');
INSERT INTO `t_city` VALUES ('130502', '桥东区', '130500', 'qiao dong qu');
INSERT INTO `t_city` VALUES ('130503', '桥西区', '130500', 'qiao xi qu');
INSERT INTO `t_city` VALUES ('130521', '邢台县', '130500', 'xing tai xian');
INSERT INTO `t_city` VALUES ('130522', '临城县', '130500', 'lin cheng xian');
INSERT INTO `t_city` VALUES ('130523', '内丘县', '130500', 'nei qiu xian');
INSERT INTO `t_city` VALUES ('130524', '柏乡县', '130500', 'bai xiang xian');
INSERT INTO `t_city` VALUES ('130525', '隆尧县', '130500', 'long yao xian');
INSERT INTO `t_city` VALUES ('130526', '任县', '130500', 'ren xian');
INSERT INTO `t_city` VALUES ('130527', '南和县', '130500', 'nan he xian');
INSERT INTO `t_city` VALUES ('130528', '宁晋县', '130500', 'ning jin xian');
INSERT INTO `t_city` VALUES ('130529', '巨鹿县', '130500', 'ju lu xian');
INSERT INTO `t_city` VALUES ('130530', '新河县', '130500', 'xin he xian');
INSERT INTO `t_city` VALUES ('130531', '广宗县', '130500', 'guang zong xian');
INSERT INTO `t_city` VALUES ('130532', '平乡县', '130500', 'ping xiang xian');
INSERT INTO `t_city` VALUES ('130533', '威县', '130500', 'wei xian');
INSERT INTO `t_city` VALUES ('130534', '清河县', '130500', 'qing he xian');
INSERT INTO `t_city` VALUES ('130535', '临西县', '130500', 'lin xi xian');
INSERT INTO `t_city` VALUES ('130581', '南宫市', '130500', 'nan gong shi');
INSERT INTO `t_city` VALUES ('130582', '沙河市', '130500', 'sha he shi');
INSERT INTO `t_city` VALUES ('130583', '其它区', '130500', 'qi ta qu');
INSERT INTO `t_city` VALUES ('130600', '保定市', '130000', 'bao ding shi');
INSERT INTO `t_city` VALUES ('130602', '新市区', '130600', 'xin shi qu');
INSERT INTO `t_city` VALUES ('130603', '北市区', '130600', 'bei shi qu');
INSERT INTO `t_city` VALUES ('130604', '南市区', '130600', 'nan shi qu');
INSERT INTO `t_city` VALUES ('130621', '满城县', '130600', 'man cheng xian');
INSERT INTO `t_city` VALUES ('130622', '清苑县', '130600', 'qing yuan xian');
INSERT INTO `t_city` VALUES ('130623', '涞水县', '130600', 'lai shui xian');
INSERT INTO `t_city` VALUES ('130624', '阜平县', '130600', 'fu ping xian');
INSERT INTO `t_city` VALUES ('130625', '徐水县', '130600', 'xu shui xian');
INSERT INTO `t_city` VALUES ('130626', '定兴县', '130600', 'ding xing xian');
INSERT INTO `t_city` VALUES ('130627', '唐县', '130600', 'tang xian');
INSERT INTO `t_city` VALUES ('130628', '高阳县', '130600', 'gao yang xian');
INSERT INTO `t_city` VALUES ('130629', '容城县', '130600', 'rong cheng xian');
INSERT INTO `t_city` VALUES ('130630', '涞源县', '130600', 'lai yuan xian');
INSERT INTO `t_city` VALUES ('130631', '望都县', '130600', 'wang du xian');
INSERT INTO `t_city` VALUES ('130632', '安新县', '130600', 'an xin xian');
INSERT INTO `t_city` VALUES ('130633', '易县', '130600', 'yi xian');
INSERT INTO `t_city` VALUES ('130634', '曲阳县', '130600', 'qu yang xian');
INSERT INTO `t_city` VALUES ('130635', '蠡县', '130600', 'li xian');
INSERT INTO `t_city` VALUES ('130636', '顺平县', '130600', 'shun ping xian');
INSERT INTO `t_city` VALUES ('130637', '博野县', '130600', 'bo ye xian');
INSERT INTO `t_city` VALUES ('130638', '雄县', '130600', 'xiong xian');
INSERT INTO `t_city` VALUES ('130681', '涿州市', '130600', 'zhuo zhou shi');
INSERT INTO `t_city` VALUES ('130682', '定州市', '130600', 'ding zhou shi');
INSERT INTO `t_city` VALUES ('130683', '安国市', '130600', 'an guo shi');
INSERT INTO `t_city` VALUES ('130684', '高碑店市', '130600', 'gao bei dian shi');
INSERT INTO `t_city` VALUES ('130698', '高开区', '130600', 'gao kai qu');
INSERT INTO `t_city` VALUES ('130699', '其它区', '130600', 'qi ta qu');
INSERT INTO `t_city` VALUES ('130700', '张家口市', '130000', 'zhang jia kou shi');
INSERT INTO `t_city` VALUES ('130702', '桥东区', '130700', 'qiao dong qu');
INSERT INTO `t_city` VALUES ('130703', '桥西区', '130700', 'qiao xi qu');
INSERT INTO `t_city` VALUES ('130705', '宣化区', '130700', 'xuan hua qu');
INSERT INTO `t_city` VALUES ('130706', '下花园区', '130700', 'xia hua yuan qu');
INSERT INTO `t_city` VALUES ('130721', '宣化县', '130700', 'xuan hua xian');
INSERT INTO `t_city` VALUES ('130722', '张北县', '130700', 'zhang bei xian');
INSERT INTO `t_city` VALUES ('130723', '康保县', '130700', 'kang bao xian');
INSERT INTO `t_city` VALUES ('130724', '沽源县', '130700', 'gu yuan xian');
INSERT INTO `t_city` VALUES ('130725', '尚义县', '130700', 'shang yi xian');
INSERT INTO `t_city` VALUES ('130726', '蔚县', '130700', 'yu xian');
INSERT INTO `t_city` VALUES ('130727', '阳原县', '130700', 'yang yuan xian');
INSERT INTO `t_city` VALUES ('130728', '怀安县', '130700', 'huai an xian');
INSERT INTO `t_city` VALUES ('130729', '万全县', '130700', 'wan quan xian');
INSERT INTO `t_city` VALUES ('130730', '怀来县', '130700', 'huai lai xian');
INSERT INTO `t_city` VALUES ('130731', '涿鹿县', '130700', 'zhuo lu xian');
INSERT INTO `t_city` VALUES ('130732', '赤城县', '130700', 'chi cheng xian');
INSERT INTO `t_city` VALUES ('130733', '崇礼县', '130700', 'chong li xian');
INSERT INTO `t_city` VALUES ('130734', '其它区', '130700', 'qi ta qu');
INSERT INTO `t_city` VALUES ('130800', '承德市', '130000', 'cheng de shi');
INSERT INTO `t_city` VALUES ('130802', '双桥区', '130800', 'shuang qiao qu');
INSERT INTO `t_city` VALUES ('130803', '双滦区', '130800', 'shuang luan qu');
INSERT INTO `t_city` VALUES ('130804', '鹰手营子矿区', '130800', 'ying shou ying zi kuang qu');
INSERT INTO `t_city` VALUES ('130821', '承德县', '130800', 'cheng de xian');
INSERT INTO `t_city` VALUES ('130822', '兴隆县', '130800', 'xing long xian');
INSERT INTO `t_city` VALUES ('130823', '平泉县', '130800', 'ping quan xian');
INSERT INTO `t_city` VALUES ('130824', '滦平县', '130800', 'luan ping xian');
INSERT INTO `t_city` VALUES ('130825', '隆化县', '130800', 'long hua xian');
INSERT INTO `t_city` VALUES ('130826', '丰宁满族自治县', '130800', 'feng ning man zu zi zhi xian');
INSERT INTO `t_city` VALUES ('130827', '宽城满族自治县', '130800', 'kuan cheng man zu zi zhi xian');
INSERT INTO `t_city` VALUES ('130828', '围场满族蒙古族自治县', '130800', 'wei chang man zu meng gu zu zi zhi xian');
INSERT INTO `t_city` VALUES ('130829', '其它区', '130800', 'qi ta qu');
INSERT INTO `t_city` VALUES ('130900', '沧州市', '130000', 'cang zhou shi');
INSERT INTO `t_city` VALUES ('130902', '新华区', '130900', 'xin hua qu');
INSERT INTO `t_city` VALUES ('130903', '运河区', '130900', 'yun he qu');
INSERT INTO `t_city` VALUES ('130921', '沧县', '130900', 'cang xian');
INSERT INTO `t_city` VALUES ('130922', '青县', '130900', 'qing xian');
INSERT INTO `t_city` VALUES ('130923', '东光县', '130900', 'dong guang xian');
INSERT INTO `t_city` VALUES ('130924', '海兴县', '130900', 'hai xing xian');
INSERT INTO `t_city` VALUES ('130925', '盐山县', '130900', 'yan shan xian');
INSERT INTO `t_city` VALUES ('130926', '肃宁县', '130900', 'su ning xian');
INSERT INTO `t_city` VALUES ('130927', '南皮县', '130900', 'nan pi xian');
INSERT INTO `t_city` VALUES ('130928', '吴桥县', '130900', 'wu qiao xian');
INSERT INTO `t_city` VALUES ('130929', '献县', '130900', 'xian xian');
INSERT INTO `t_city` VALUES ('130930', '孟村回族自治县', '130900', 'meng cun hui zu zi zhi xian');
INSERT INTO `t_city` VALUES ('130981', '泊头市', '130900', 'bo tou shi');
INSERT INTO `t_city` VALUES ('130982', '任丘市', '130900', 'ren qiu shi');
INSERT INTO `t_city` VALUES ('130983', '黄骅市', '130900', 'huang hua shi');
INSERT INTO `t_city` VALUES ('130984', '河间市', '130900', 'he jian shi');
INSERT INTO `t_city` VALUES ('130985', '其它区', '130900', 'qi ta qu');
INSERT INTO `t_city` VALUES ('131000', '廊坊市', '130000', 'lang fang shi');
INSERT INTO `t_city` VALUES ('131002', '安次区', '131000', 'an ci qu');
INSERT INTO `t_city` VALUES ('131003', '广阳区', '131000', 'guang yang qu');
INSERT INTO `t_city` VALUES ('131022', '固安县', '131000', 'gu an xian');
INSERT INTO `t_city` VALUES ('131023', '永清县', '131000', 'yong qing xian');
INSERT INTO `t_city` VALUES ('131024', '香河县', '131000', 'xiang he xian');
INSERT INTO `t_city` VALUES ('131025', '大城县', '131000', 'da cheng xian');
INSERT INTO `t_city` VALUES ('131026', '文安县', '131000', 'wen an xian');
INSERT INTO `t_city` VALUES ('131028', '大厂回族自治县', '131000', 'da chang hui zu zi zhi xian');
INSERT INTO `t_city` VALUES ('131051', '开发区', '131000', 'kai fa qu');
INSERT INTO `t_city` VALUES ('131052', '燕郊经济技术开发区', '131000', 'yan jiao jing ji ji shu kai fa qu');
INSERT INTO `t_city` VALUES ('131081', '霸州市', '131000', 'ba zhou shi');
INSERT INTO `t_city` VALUES ('131082', '三河市', '131000', 'san he shi');
INSERT INTO `t_city` VALUES ('131083', '其它区', '131000', 'qi ta qu');
INSERT INTO `t_city` VALUES ('131100', '衡水市', '130000', 'heng shui shi');
INSERT INTO `t_city` VALUES ('131102', '桃城区', '131100', 'tao cheng qu');
INSERT INTO `t_city` VALUES ('131121', '枣强县', '131100', 'zao qiang xian');
INSERT INTO `t_city` VALUES ('131122', '武邑县', '131100', 'wu yi xian');
INSERT INTO `t_city` VALUES ('131123', '武强县', '131100', 'wu qiang xian');
INSERT INTO `t_city` VALUES ('131124', '饶阳县', '131100', 'rao yang xian');
INSERT INTO `t_city` VALUES ('131125', '安平县', '131100', 'an ping xian');
INSERT INTO `t_city` VALUES ('131126', '故城县', '131100', 'gu cheng xian');
INSERT INTO `t_city` VALUES ('131127', '景县', '131100', 'jing xian');
INSERT INTO `t_city` VALUES ('131128', '阜城县', '131100', 'fu cheng xian');
INSERT INTO `t_city` VALUES ('131181', '冀州市', '131100', 'ji zhou shi');
INSERT INTO `t_city` VALUES ('131182', '深州市', '131100', 'shen zhou shi');
INSERT INTO `t_city` VALUES ('131183', '其它区', '131100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('140000', '山西省', '1', 'shan xi sheng');
INSERT INTO `t_city` VALUES ('140100', '太原市', '140000', 'tai yuan shi');
INSERT INTO `t_city` VALUES ('140105', '小店区', '140100', 'xiao dian qu');
INSERT INTO `t_city` VALUES ('140106', '迎泽区', '140100', 'ying ze qu');
INSERT INTO `t_city` VALUES ('140107', '杏花岭区', '140100', 'xing hua ling qu');
INSERT INTO `t_city` VALUES ('140108', '尖草坪区', '140100', 'jian cao ping qu');
INSERT INTO `t_city` VALUES ('140109', '万柏林区', '140100', 'wan bai lin qu');
INSERT INTO `t_city` VALUES ('140110', '晋源区', '140100', 'jin yuan qu');
INSERT INTO `t_city` VALUES ('140121', '清徐县', '140100', 'qing xu xian');
INSERT INTO `t_city` VALUES ('140122', '阳曲县', '140100', 'yang qu xian');
INSERT INTO `t_city` VALUES ('140123', '娄烦县', '140100', 'lou fan xian');
INSERT INTO `t_city` VALUES ('140181', '古交市', '140100', 'gu jiao shi');
INSERT INTO `t_city` VALUES ('140182', '其它区', '140100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('140200', '大同市', '140000', 'da tong shi');
INSERT INTO `t_city` VALUES ('140202', '城区', '140200', 'cheng qu');
INSERT INTO `t_city` VALUES ('140203', '矿区', '140200', 'kuang qu');
INSERT INTO `t_city` VALUES ('140211', '南郊区', '140200', 'nan jiao qu');
INSERT INTO `t_city` VALUES ('140212', '新荣区', '140200', 'xin rong qu');
INSERT INTO `t_city` VALUES ('140221', '阳高县', '140200', 'yang gao xian');
INSERT INTO `t_city` VALUES ('140222', '天镇县', '140200', 'tian zhen xian');
INSERT INTO `t_city` VALUES ('140223', '广灵县', '140200', 'guang ling xian');
INSERT INTO `t_city` VALUES ('140224', '灵丘县', '140200', 'ling qiu xian');
INSERT INTO `t_city` VALUES ('140225', '浑源县', '140200', 'hun yuan xian');
INSERT INTO `t_city` VALUES ('140226', '左云县', '140200', 'zuo yun xian');
INSERT INTO `t_city` VALUES ('140227', '大同县', '140200', 'da tong xian');
INSERT INTO `t_city` VALUES ('140228', '其它区', '140200', 'qi ta qu');
INSERT INTO `t_city` VALUES ('140300', '阳泉市', '140000', 'yang quan shi');
INSERT INTO `t_city` VALUES ('140302', '城区', '140300', 'cheng qu');
INSERT INTO `t_city` VALUES ('140303', '矿区', '140300', 'kuang qu');
INSERT INTO `t_city` VALUES ('140311', '郊区', '140300', 'jiao qu');
INSERT INTO `t_city` VALUES ('140321', '平定县', '140300', 'ping ding xian');
INSERT INTO `t_city` VALUES ('140322', '盂县', '140300', 'yu xian');
INSERT INTO `t_city` VALUES ('140323', '其它区', '140300', 'qi ta qu');
INSERT INTO `t_city` VALUES ('140400', '长治市', '140000', 'chang zhi shi');
INSERT INTO `t_city` VALUES ('140421', '长治县', '140400', 'chang zhi xian');
INSERT INTO `t_city` VALUES ('140423', '襄垣县', '140400', 'xiang yuan xian');
INSERT INTO `t_city` VALUES ('140424', '屯留县', '140400', 'tun liu xian');
INSERT INTO `t_city` VALUES ('140425', '平顺县', '140400', 'ping shun xian');
INSERT INTO `t_city` VALUES ('140426', '黎城县', '140400', 'li cheng xian');
INSERT INTO `t_city` VALUES ('140427', '壶关县', '140400', 'hu guan xian');
INSERT INTO `t_city` VALUES ('140428', '长子县', '140400', 'zhang zi xian');
INSERT INTO `t_city` VALUES ('140429', '武乡县', '140400', 'wu xiang xian');
INSERT INTO `t_city` VALUES ('140430', '沁县', '140400', 'qin xian');
INSERT INTO `t_city` VALUES ('140431', '沁源县', '140400', 'qin yuan xian');
INSERT INTO `t_city` VALUES ('140481', '潞城市', '140400', 'lu cheng shi');
INSERT INTO `t_city` VALUES ('140482', '城区', '140400', 'cheng qu');
INSERT INTO `t_city` VALUES ('140483', '郊区', '140400', 'jiao qu');
INSERT INTO `t_city` VALUES ('140484', '高新区', '140400', 'gao xin qu');
INSERT INTO `t_city` VALUES ('140485', '其它区', '140400', 'qi ta qu');
INSERT INTO `t_city` VALUES ('140500', '晋城市', '140000', 'jin cheng shi');
INSERT INTO `t_city` VALUES ('140502', '城区', '140500', 'cheng qu');
INSERT INTO `t_city` VALUES ('140521', '沁水县', '140500', 'qin shui xian');
INSERT INTO `t_city` VALUES ('140522', '阳城县', '140500', 'yang cheng xian');
INSERT INTO `t_city` VALUES ('140524', '陵川县', '140500', 'ling chuan xian');
INSERT INTO `t_city` VALUES ('140525', '泽州县', '140500', 'ze zhou xian');
INSERT INTO `t_city` VALUES ('140581', '高平市', '140500', 'gao ping shi');
INSERT INTO `t_city` VALUES ('140582', '其它区', '140500', 'qi ta qu');
INSERT INTO `t_city` VALUES ('140600', '朔州市', '140000', 'shuo zhou shi');
INSERT INTO `t_city` VALUES ('140602', '朔城区', '140600', 'shuo cheng qu');
INSERT INTO `t_city` VALUES ('140603', '平鲁区', '140600', 'ping lu qu');
INSERT INTO `t_city` VALUES ('140621', '山阴县', '140600', 'shan yin xian');
INSERT INTO `t_city` VALUES ('140622', '应县', '140600', 'ying xian');
INSERT INTO `t_city` VALUES ('140623', '右玉县', '140600', 'you yu xian');
INSERT INTO `t_city` VALUES ('140624', '怀仁县', '140600', 'huai ren xian');
INSERT INTO `t_city` VALUES ('140625', '其它区', '140600', 'qi ta qu');
INSERT INTO `t_city` VALUES ('140700', '晋中市', '140000', 'jin zhong shi');
INSERT INTO `t_city` VALUES ('140702', '榆次区', '140700', 'yu ci qu');
INSERT INTO `t_city` VALUES ('140721', '榆社县', '140700', 'yu she xian');
INSERT INTO `t_city` VALUES ('140722', '左权县', '140700', 'zuo quan xian');
INSERT INTO `t_city` VALUES ('140723', '和顺县', '140700', 'he shun xian');
INSERT INTO `t_city` VALUES ('140724', '昔阳县', '140700', 'xi yang xian');
INSERT INTO `t_city` VALUES ('140725', '寿阳县', '140700', 'shou yang xian');
INSERT INTO `t_city` VALUES ('140726', '太谷县', '140700', 'tai gu xian');
INSERT INTO `t_city` VALUES ('140727', '祁县', '140700', 'qi xian');
INSERT INTO `t_city` VALUES ('140728', '平遥县', '140700', 'ping yao xian');
INSERT INTO `t_city` VALUES ('140729', '灵石县', '140700', 'ling shi xian');
INSERT INTO `t_city` VALUES ('140781', '介休市', '140700', 'jie xiu shi');
INSERT INTO `t_city` VALUES ('140782', '其它区', '140700', 'qi ta qu');
INSERT INTO `t_city` VALUES ('140800', '运城市', '140000', 'yun cheng shi');
INSERT INTO `t_city` VALUES ('140802', '盐湖区', '140800', 'yan hu qu');
INSERT INTO `t_city` VALUES ('140821', '临猗县', '140800', 'lin yi xian');
INSERT INTO `t_city` VALUES ('140822', '万荣县', '140800', 'wan rong xian');
INSERT INTO `t_city` VALUES ('140823', '闻喜县', '140800', 'wen xi xian');
INSERT INTO `t_city` VALUES ('140824', '稷山县', '140800', 'ji shan xian');
INSERT INTO `t_city` VALUES ('140825', '新绛县', '140800', 'xin jiang xian');
INSERT INTO `t_city` VALUES ('140826', '绛县', '140800', 'jiang xian');
INSERT INTO `t_city` VALUES ('140827', '垣曲县', '140800', 'yuan qu xian');
INSERT INTO `t_city` VALUES ('140828', '夏县', '140800', 'xia xian');
INSERT INTO `t_city` VALUES ('140829', '平陆县', '140800', 'ping lu xian');
INSERT INTO `t_city` VALUES ('140830', '芮城县', '140800', 'rui cheng xian');
INSERT INTO `t_city` VALUES ('140881', '永济市', '140800', 'yong ji shi');
INSERT INTO `t_city` VALUES ('140882', '河津市', '140800', 'he jin shi');
INSERT INTO `t_city` VALUES ('140883', '其它区', '140800', 'qi ta qu');
INSERT INTO `t_city` VALUES ('140900', '忻州市', '140000', 'xin zhou shi');
INSERT INTO `t_city` VALUES ('140902', '忻府区', '140900', 'xin fu qu');
INSERT INTO `t_city` VALUES ('140921', '定襄县', '140900', 'ding xiang xian');
INSERT INTO `t_city` VALUES ('140922', '五台县', '140900', 'wu tai xian');
INSERT INTO `t_city` VALUES ('140923', '代县', '140900', 'dai xian');
INSERT INTO `t_city` VALUES ('140924', '繁峙县', '140900', 'fan shi xian');
INSERT INTO `t_city` VALUES ('140925', '宁武县', '140900', 'ning wu xian');
INSERT INTO `t_city` VALUES ('140926', '静乐县', '140900', 'jing le xian');
INSERT INTO `t_city` VALUES ('140927', '神池县', '140900', 'shen chi xian');
INSERT INTO `t_city` VALUES ('140928', '五寨县', '140900', 'wu zhai xian');
INSERT INTO `t_city` VALUES ('140929', '岢岚县', '140900', 'ke lan xian');
INSERT INTO `t_city` VALUES ('140930', '河曲县', '140900', 'he qu xian');
INSERT INTO `t_city` VALUES ('140931', '保德县', '140900', 'bao de xian');
INSERT INTO `t_city` VALUES ('140932', '偏关县', '140900', 'pian guan xian');
INSERT INTO `t_city` VALUES ('140981', '原平市', '140900', 'yuan ping shi');
INSERT INTO `t_city` VALUES ('140982', '其它区', '140900', 'qi ta qu');
INSERT INTO `t_city` VALUES ('141000', '临汾市', '140000', 'lin fen shi');
INSERT INTO `t_city` VALUES ('141002', '尧都区', '141000', 'yao du qu');
INSERT INTO `t_city` VALUES ('141021', '曲沃县', '141000', 'qu wo xian');
INSERT INTO `t_city` VALUES ('141022', '翼城县', '141000', 'yi cheng xian');
INSERT INTO `t_city` VALUES ('141023', '襄汾县', '141000', 'xiang fen xian');
INSERT INTO `t_city` VALUES ('141024', '洪洞县', '141000', 'hong dong xian');
INSERT INTO `t_city` VALUES ('141025', '古县', '141000', 'gu xian');
INSERT INTO `t_city` VALUES ('141026', '安泽县', '141000', 'an ze xian');
INSERT INTO `t_city` VALUES ('141027', '浮山县', '141000', 'fu shan xian');
INSERT INTO `t_city` VALUES ('141028', '吉县', '141000', 'ji xian');
INSERT INTO `t_city` VALUES ('141029', '乡宁县', '141000', 'xiang ning xian');
INSERT INTO `t_city` VALUES ('141030', '大宁县', '141000', 'da ning xian');
INSERT INTO `t_city` VALUES ('141031', '隰县', '141000', 'xi xian');
INSERT INTO `t_city` VALUES ('141032', '永和县', '141000', 'yong he xian');
INSERT INTO `t_city` VALUES ('141033', '蒲县', '141000', 'pu xian');
INSERT INTO `t_city` VALUES ('141034', '汾西县', '141000', 'fen xi xian');
INSERT INTO `t_city` VALUES ('141081', '侯马市', '141000', 'hou ma shi');
INSERT INTO `t_city` VALUES ('141082', '霍州市', '141000', 'huo zhou shi');
INSERT INTO `t_city` VALUES ('141083', '其它区', '141000', 'qi ta qu');
INSERT INTO `t_city` VALUES ('141100', '吕梁市', '140000', 'lv liang shi');
INSERT INTO `t_city` VALUES ('141102', '离石区', '141100', 'li shi qu');
INSERT INTO `t_city` VALUES ('141121', '文水县', '141100', 'wen shui xian');
INSERT INTO `t_city` VALUES ('141122', '交城县', '141100', 'jiao cheng xian');
INSERT INTO `t_city` VALUES ('141123', '兴县', '141100', 'xing xian');
INSERT INTO `t_city` VALUES ('141124', '临县', '141100', 'lin xian');
INSERT INTO `t_city` VALUES ('141125', '柳林县', '141100', 'liu lin xian');
INSERT INTO `t_city` VALUES ('141126', '石楼县', '141100', 'shi lou xian');
INSERT INTO `t_city` VALUES ('141127', '岚县', '141100', 'lan xian');
INSERT INTO `t_city` VALUES ('141128', '方山县', '141100', 'fang shan xian');
INSERT INTO `t_city` VALUES ('141129', '中阳县', '141100', 'zhong yang xian');
INSERT INTO `t_city` VALUES ('141130', '交口县', '141100', 'jiao kou xian');
INSERT INTO `t_city` VALUES ('141181', '孝义市', '141100', 'xiao yi shi');
INSERT INTO `t_city` VALUES ('141182', '汾阳市', '141100', 'fen yang shi');
INSERT INTO `t_city` VALUES ('141183', '其它区', '141100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('150000', '内蒙古自治区', '1', 'nei meng gu zi zhi qu');
INSERT INTO `t_city` VALUES ('150100', '呼和浩特市', '150000', 'hu he hao te shi');
INSERT INTO `t_city` VALUES ('150102', '新城区', '150100', 'xin cheng qu');
INSERT INTO `t_city` VALUES ('150103', '回民区', '150100', 'hui min qu');
INSERT INTO `t_city` VALUES ('150104', '玉泉区', '150100', 'yu quan qu');
INSERT INTO `t_city` VALUES ('150105', '赛罕区', '150100', 'sai han qu');
INSERT INTO `t_city` VALUES ('150121', '土默特左旗', '150100', 'tu mo te zuo qi');
INSERT INTO `t_city` VALUES ('150122', '托克托县', '150100', 'tuo ke tuo xian');
INSERT INTO `t_city` VALUES ('150123', '和林格尔县', '150100', 'he lin ge er xian');
INSERT INTO `t_city` VALUES ('150124', '清水河县', '150100', 'qing shui he xian');
INSERT INTO `t_city` VALUES ('150125', '武川县', '150100', 'wu chuan xian');
INSERT INTO `t_city` VALUES ('150126', '其它区', '150100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('150200', '包头市', '150000', 'bao tou shi');
INSERT INTO `t_city` VALUES ('150202', '东河区', '150200', 'dong he qu');
INSERT INTO `t_city` VALUES ('150203', '昆都仑区', '150200', 'kun du lun qu');
INSERT INTO `t_city` VALUES ('150204', '青山区', '150200', 'qing shan qu');
INSERT INTO `t_city` VALUES ('150205', '石拐区', '150200', 'shi guai qu');
INSERT INTO `t_city` VALUES ('150206', '白云矿区', '150200', 'bai yun kuang qu');
INSERT INTO `t_city` VALUES ('150207', '九原区', '150200', 'jiu yuan qu');
INSERT INTO `t_city` VALUES ('150221', '土默特右旗', '150200', 'tu mo te you qi');
INSERT INTO `t_city` VALUES ('150222', '固阳县', '150200', 'gu yang xian');
INSERT INTO `t_city` VALUES ('150223', '达尔罕茂明安联合旗', '150200', 'da er han mao ming an lian he qi');
INSERT INTO `t_city` VALUES ('150224', '其它区', '150200', 'qi ta qu');
INSERT INTO `t_city` VALUES ('150300', '乌海市', '150000', 'wu hai shi');
INSERT INTO `t_city` VALUES ('150302', '海勃湾区', '150300', 'hai bo wan qu');
INSERT INTO `t_city` VALUES ('150303', '海南区', '150300', 'hai nan qu');
INSERT INTO `t_city` VALUES ('150304', '乌达区', '150300', 'wu da qu');
INSERT INTO `t_city` VALUES ('150305', '其它区', '150300', 'qi ta qu');
INSERT INTO `t_city` VALUES ('150400', '赤峰市', '150000', 'chi feng shi');
INSERT INTO `t_city` VALUES ('150402', '红山区', '150400', 'hong shan qu');
INSERT INTO `t_city` VALUES ('150403', '元宝山区', '150400', 'yuan bao shan qu');
INSERT INTO `t_city` VALUES ('150404', '松山区', '150400', 'song shan qu');
INSERT INTO `t_city` VALUES ('150421', '阿鲁科尔沁旗', '150400', 'a lu ke er qin qi');
INSERT INTO `t_city` VALUES ('150422', '巴林左旗', '150400', 'ba lin zuo qi');
INSERT INTO `t_city` VALUES ('150423', '巴林右旗', '150400', 'ba lin you qi');
INSERT INTO `t_city` VALUES ('150424', '林西县', '150400', 'lin xi xian');
INSERT INTO `t_city` VALUES ('150425', '克什克腾旗', '150400', 'ke shi ke teng qi');
INSERT INTO `t_city` VALUES ('150426', '翁牛特旗', '150400', 'weng niu te qi');
INSERT INTO `t_city` VALUES ('150428', '喀喇沁旗', '150400', 'ka la qin qi');
INSERT INTO `t_city` VALUES ('150429', '宁城县', '150400', 'ning cheng xian');
INSERT INTO `t_city` VALUES ('150430', '敖汉旗', '150400', 'ao han qi');
INSERT INTO `t_city` VALUES ('150431', '其它区', '150400', 'qi ta qu');
INSERT INTO `t_city` VALUES ('150500', '通辽市', '150000', 'tong liao shi');
INSERT INTO `t_city` VALUES ('150502', '科尔沁区', '150500', 'ke er qin qu');
INSERT INTO `t_city` VALUES ('150521', '科尔沁左翼中旗', '150500', 'ke er qin zuo yi zhong qi');
INSERT INTO `t_city` VALUES ('150522', '科尔沁左翼后旗', '150500', 'ke er qin zuo yi hou qi');
INSERT INTO `t_city` VALUES ('150523', '开鲁县', '150500', 'kai lu xian');
INSERT INTO `t_city` VALUES ('150524', '库伦旗', '150500', 'ku lun qi');
INSERT INTO `t_city` VALUES ('150525', '奈曼旗', '150500', 'nai man qi');
INSERT INTO `t_city` VALUES ('150526', '扎鲁特旗', '150500', 'zha lu te qi');
INSERT INTO `t_city` VALUES ('150581', '霍林郭勒市', '150500', 'huo lin guo le shi');
INSERT INTO `t_city` VALUES ('150582', '其它区', '150500', 'qi ta qu');
INSERT INTO `t_city` VALUES ('150600', '鄂尔多斯市', '150000', 'e er duo si shi');
INSERT INTO `t_city` VALUES ('150602', '东胜区', '150600', 'dong sheng qu');
INSERT INTO `t_city` VALUES ('150621', '达拉特旗', '150600', 'da la te qi');
INSERT INTO `t_city` VALUES ('150622', '准格尔旗', '150600', 'zhun ge er qi');
INSERT INTO `t_city` VALUES ('150623', '鄂托克前旗', '150600', 'e tuo ke qian qi');
INSERT INTO `t_city` VALUES ('150624', '鄂托克旗', '150600', 'e tuo ke qi');
INSERT INTO `t_city` VALUES ('150625', '杭锦旗', '150600', 'hang jin qi');
INSERT INTO `t_city` VALUES ('150626', '乌审旗', '150600', 'wu shen qi');
INSERT INTO `t_city` VALUES ('150627', '伊金霍洛旗', '150600', 'yi jin huo luo qi');
INSERT INTO `t_city` VALUES ('150628', '其它区', '150600', 'qi ta qu');
INSERT INTO `t_city` VALUES ('150700', '呼伦贝尔市', '150000', 'hu lun bei er shi');
INSERT INTO `t_city` VALUES ('150702', '海拉尔区', '150700', 'hai la er qu');
INSERT INTO `t_city` VALUES ('150721', '阿荣旗', '150700', 'a rong qi');
INSERT INTO `t_city` VALUES ('150722', '莫力达瓦达斡尔族自治旗', '150700', 'mo li da wa da wo er zu zi zhi qi');
INSERT INTO `t_city` VALUES ('150723', '鄂伦春自治旗', '150700', 'e lun chun zi zhi qi');
INSERT INTO `t_city` VALUES ('150724', '鄂温克族自治旗', '150700', 'e wen ke zu zi zhi qi');
INSERT INTO `t_city` VALUES ('150725', '陈巴尔虎旗', '150700', 'chen ba er hu qi');
INSERT INTO `t_city` VALUES ('150726', '新巴尔虎左旗', '150700', 'xin ba er hu zuo qi');
INSERT INTO `t_city` VALUES ('150727', '新巴尔虎右旗', '150700', 'xin ba er hu you qi');
INSERT INTO `t_city` VALUES ('150781', '满洲里市', '150700', 'man zhou li shi');
INSERT INTO `t_city` VALUES ('150782', '牙克石市', '150700', 'ya ke shi shi');
INSERT INTO `t_city` VALUES ('150783', '扎兰屯市', '150700', 'zha lan tun shi');
INSERT INTO `t_city` VALUES ('150784', '额尔古纳市', '150700', 'e er gu na shi');
INSERT INTO `t_city` VALUES ('150785', '根河市', '150700', 'gen he shi');
INSERT INTO `t_city` VALUES ('150786', '其它区', '150700', 'qi ta qu');
INSERT INTO `t_city` VALUES ('150800', '巴彦淖尔市', '150000', 'ba yan nao er shi');
INSERT INTO `t_city` VALUES ('150802', '临河区', '150800', 'lin he qu');
INSERT INTO `t_city` VALUES ('150821', '五原县', '150800', 'wu yuan xian');
INSERT INTO `t_city` VALUES ('150822', '磴口县', '150800', 'deng kou xian');
INSERT INTO `t_city` VALUES ('150823', '乌拉特前旗', '150800', 'wu la te qian qi');
INSERT INTO `t_city` VALUES ('150824', '乌拉特中旗', '150800', 'wu la te zhong qi');
INSERT INTO `t_city` VALUES ('150825', '乌拉特后旗', '150800', 'wu la te hou qi');
INSERT INTO `t_city` VALUES ('150826', '杭锦后旗', '150800', 'hang jin hou qi');
INSERT INTO `t_city` VALUES ('150827', '其它区', '150800', 'qi ta qu');
INSERT INTO `t_city` VALUES ('150900', '乌兰察布市', '150000', 'wu lan cha bu shi');
INSERT INTO `t_city` VALUES ('150902', '集宁区', '150900', 'ji ning qu');
INSERT INTO `t_city` VALUES ('150921', '卓资县', '150900', 'zhuo zi xian');
INSERT INTO `t_city` VALUES ('150922', '化德县', '150900', 'hua de xian');
INSERT INTO `t_city` VALUES ('150923', '商都县', '150900', 'shang du xian');
INSERT INTO `t_city` VALUES ('150924', '兴和县', '150900', 'xing he xian');
INSERT INTO `t_city` VALUES ('150925', '凉城县', '150900', 'liang cheng xian');
INSERT INTO `t_city` VALUES ('150926', '察哈尔右翼前旗', '150900', 'cha ha er you yi qian qi');
INSERT INTO `t_city` VALUES ('150927', '察哈尔右翼中旗', '150900', 'cha ha er you yi zhong qi');
INSERT INTO `t_city` VALUES ('150928', '察哈尔右翼后旗', '150900', 'cha ha er you yi hou qi');
INSERT INTO `t_city` VALUES ('150929', '四子王旗', '150900', 'si zi wang qi');
INSERT INTO `t_city` VALUES ('150981', '丰镇市', '150900', 'feng zhen shi');
INSERT INTO `t_city` VALUES ('150982', '其它区', '150900', 'qi ta qu');
INSERT INTO `t_city` VALUES ('152200', '兴安盟', '150000', 'xing an meng');
INSERT INTO `t_city` VALUES ('152201', '乌兰浩特市', '152200', 'wu lan hao te shi');
INSERT INTO `t_city` VALUES ('152202', '阿尔山市', '152200', 'a er shan shi');
INSERT INTO `t_city` VALUES ('152221', '科尔沁右翼前旗', '152200', 'ke er qin you yi qian qi');
INSERT INTO `t_city` VALUES ('152222', '科尔沁右翼中旗', '152200', 'ke er qin you yi zhong qi');
INSERT INTO `t_city` VALUES ('152223', '扎赉特旗', '152200', 'zha lai te qi');
INSERT INTO `t_city` VALUES ('152224', '突泉县', '152200', 'tu quan xian');
INSERT INTO `t_city` VALUES ('152225', '其它区', '152200', 'qi ta qu');
INSERT INTO `t_city` VALUES ('152500', '锡林郭勒盟', '150000', 'xi lin guo le meng');
INSERT INTO `t_city` VALUES ('152501', '二连浩特市', '152500', 'er lian hao te shi');
INSERT INTO `t_city` VALUES ('152502', '锡林浩特市', '152500', 'xi lin hao te shi');
INSERT INTO `t_city` VALUES ('152522', '阿巴嘎旗', '152500', 'a ba ga qi');
INSERT INTO `t_city` VALUES ('152523', '苏尼特左旗', '152500', 'su ni te zuo qi');
INSERT INTO `t_city` VALUES ('152524', '苏尼特右旗', '152500', 'su ni te you qi');
INSERT INTO `t_city` VALUES ('152525', '东乌珠穆沁旗', '152500', 'dong wu zhu mu qin qi');
INSERT INTO `t_city` VALUES ('152526', '西乌珠穆沁旗', '152500', 'xi wu zhu mu qin qi');
INSERT INTO `t_city` VALUES ('152527', '太仆寺旗', '152500', 'tai pu si qi');
INSERT INTO `t_city` VALUES ('152528', '镶黄旗', '152500', 'xiang huang qi');
INSERT INTO `t_city` VALUES ('152529', '正镶白旗', '152500', 'zheng xiang bai qi');
INSERT INTO `t_city` VALUES ('152530', '正蓝旗', '152500', 'zheng lan qi');
INSERT INTO `t_city` VALUES ('152531', '多伦县', '152500', 'duo lun xian');
INSERT INTO `t_city` VALUES ('152532', '其它区', '152500', 'qi ta qu');
INSERT INTO `t_city` VALUES ('152900', '阿拉善盟', '150000', 'a la shan meng');
INSERT INTO `t_city` VALUES ('152921', '阿拉善左旗', '152900', 'a la shan zuo qi');
INSERT INTO `t_city` VALUES ('152922', '阿拉善右旗', '152900', 'a la shan you qi');
INSERT INTO `t_city` VALUES ('152923', '额济纳旗', '152900', 'e ji na qi');
INSERT INTO `t_city` VALUES ('152924', '其它区', '152900', 'qi ta qu');
INSERT INTO `t_city` VALUES ('210000', '辽宁省', '1', 'liao ning sheng');
INSERT INTO `t_city` VALUES ('210100', '沈阳市', '210000', 'shen yang shi');
INSERT INTO `t_city` VALUES ('210102', '和平区', '210100', 'he ping qu');
INSERT INTO `t_city` VALUES ('210103', '沈河区', '210100', 'shen he qu');
INSERT INTO `t_city` VALUES ('210104', '大东区', '210100', 'da dong qu');
INSERT INTO `t_city` VALUES ('210105', '皇姑区', '210100', 'huang gu qu');
INSERT INTO `t_city` VALUES ('210106', '铁西区', '210100', 'tie xi qu');
INSERT INTO `t_city` VALUES ('210111', '苏家屯区', '210100', 'su jia tun qu');
INSERT INTO `t_city` VALUES ('210112', '东陵区', '210100', 'dong ling qu');
INSERT INTO `t_city` VALUES ('210113', '新城子区', '210100', 'xin cheng zi qu');
INSERT INTO `t_city` VALUES ('210114', '于洪区', '210100', 'yu hong qu');
INSERT INTO `t_city` VALUES ('210122', '辽中县', '210100', 'liao zhong xian');
INSERT INTO `t_city` VALUES ('210123', '康平县', '210100', 'kang ping xian');
INSERT INTO `t_city` VALUES ('210124', '法库县', '210100', 'fa ku xian');
INSERT INTO `t_city` VALUES ('210181', '新民市', '210100', 'xin min shi');
INSERT INTO `t_city` VALUES ('210182', '浑南新区', '210100', 'hun nan xin qu');
INSERT INTO `t_city` VALUES ('210183', '张士开发区', '210100', 'zhang shi kai fa qu');
INSERT INTO `t_city` VALUES ('210184', '沈北新区', '210100', 'shen bei xin qu');
INSERT INTO `t_city` VALUES ('210185', '其它区', '210100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('210200', '大连市', '210000', 'da lian shi');
INSERT INTO `t_city` VALUES ('210202', '中山区', '210200', 'zhong shan qu');
INSERT INTO `t_city` VALUES ('210203', '西岗区', '210200', 'xi gang qu');
INSERT INTO `t_city` VALUES ('210204', '沙河口区', '210200', 'sha he kou qu');
INSERT INTO `t_city` VALUES ('210211', '甘井子区', '210200', 'gan jing zi qu');
INSERT INTO `t_city` VALUES ('210212', '旅顺口区', '210200', 'lv shun kou qu');
INSERT INTO `t_city` VALUES ('210213', '金州区', '210200', 'jin zhou qu');
INSERT INTO `t_city` VALUES ('210224', '长海县', '210200', 'chang hai xian');
INSERT INTO `t_city` VALUES ('210251', '开发区', '210200', 'kai fa qu');
INSERT INTO `t_city` VALUES ('210281', '瓦房店市', '210200', 'wa fang dian shi');
INSERT INTO `t_city` VALUES ('210282', '普兰店市', '210200', 'pu lan dian shi');
INSERT INTO `t_city` VALUES ('210283', '庄河市', '210200', 'zhuang he shi');
INSERT INTO `t_city` VALUES ('210297', '岭前区', '210200', 'ling qian qu');
INSERT INTO `t_city` VALUES ('210298', '其它区', '210200', 'qi ta qu');
INSERT INTO `t_city` VALUES ('210300', '鞍山市', '210000', 'an shan shi');
INSERT INTO `t_city` VALUES ('210302', '铁东区', '210300', 'tie dong qu');
INSERT INTO `t_city` VALUES ('210303', '铁西区', '210300', 'tie xi qu');
INSERT INTO `t_city` VALUES ('210304', '立山区', '210300', 'li shan qu');
INSERT INTO `t_city` VALUES ('210311', '千山区', '210300', 'qian shan qu');
INSERT INTO `t_city` VALUES ('210321', '台安县', '210300', 'tai an xian');
INSERT INTO `t_city` VALUES ('210323', '岫岩满族自治县', '210300', 'xiu yan man zu zi zhi xian');
INSERT INTO `t_city` VALUES ('210351', '高新区', '210300', 'gao xin qu');
INSERT INTO `t_city` VALUES ('210381', '海城市', '210300', 'hai cheng shi');
INSERT INTO `t_city` VALUES ('210382', '其它区', '210300', 'qi ta qu');
INSERT INTO `t_city` VALUES ('210400', '抚顺市', '210000', 'fu shun shi');
INSERT INTO `t_city` VALUES ('210402', '新抚区', '210400', 'xin fu qu');
INSERT INTO `t_city` VALUES ('210403', '东洲区', '210400', 'dong zhou qu');
INSERT INTO `t_city` VALUES ('210404', '望花区', '210400', 'wang hua qu');
INSERT INTO `t_city` VALUES ('210411', '顺城区', '210400', 'shun cheng qu');
INSERT INTO `t_city` VALUES ('210421', '抚顺县', '210400', 'fu shun xian');
INSERT INTO `t_city` VALUES ('210422', '新宾满族自治县', '210400', 'xin bin man zu zi zhi xian');
INSERT INTO `t_city` VALUES ('210423', '清原满族自治县', '210400', 'qing yuan man zu zi zhi xian');
INSERT INTO `t_city` VALUES ('210424', '其它区', '210400', 'qi ta qu');
INSERT INTO `t_city` VALUES ('210500', '本溪市', '210000', 'ben xi shi');
INSERT INTO `t_city` VALUES ('210502', '平山区', '210500', 'ping shan qu');
INSERT INTO `t_city` VALUES ('210503', '溪湖区', '210500', 'xi hu qu');
INSERT INTO `t_city` VALUES ('210504', '明山区', '210500', 'ming shan qu');
INSERT INTO `t_city` VALUES ('210505', '南芬区', '210500', 'nan fen qu');
INSERT INTO `t_city` VALUES ('210521', '本溪满族自治县', '210500', 'ben xi man zu zi zhi xian');
INSERT INTO `t_city` VALUES ('210522', '桓仁满族自治县', '210500', 'huan ren man zu zi zhi xian');
INSERT INTO `t_city` VALUES ('210523', '其它区', '210500', 'qi ta qu');
INSERT INTO `t_city` VALUES ('210600', '丹东市', '210000', 'dan dong shi');
INSERT INTO `t_city` VALUES ('210602', '元宝区', '210600', 'yuan bao qu');
INSERT INTO `t_city` VALUES ('210603', '振兴区', '210600', 'zhen xing qu');
INSERT INTO `t_city` VALUES ('210604', '振安区', '210600', 'zhen an qu');
INSERT INTO `t_city` VALUES ('210624', '宽甸满族自治县', '210600', 'kuan dian man zu zi zhi xian');
INSERT INTO `t_city` VALUES ('210681', '东港市', '210600', 'dong gang shi');
INSERT INTO `t_city` VALUES ('210682', '凤城市', '210600', 'feng cheng shi');
INSERT INTO `t_city` VALUES ('210683', '其它区', '210600', 'qi ta qu');
INSERT INTO `t_city` VALUES ('210700', '锦州市', '210000', 'jin zhou shi');
INSERT INTO `t_city` VALUES ('210702', '古塔区', '210700', 'gu ta qu');
INSERT INTO `t_city` VALUES ('210703', '凌河区', '210700', 'ling he qu');
INSERT INTO `t_city` VALUES ('210711', '太和区', '210700', 'tai he qu');
INSERT INTO `t_city` VALUES ('210726', '黑山县', '210700', 'hei shan xian');
INSERT INTO `t_city` VALUES ('210727', '义县', '210700', 'yi xian');
INSERT INTO `t_city` VALUES ('210781', '凌海市', '210700', 'ling hai shi');
INSERT INTO `t_city` VALUES ('210782', '北镇市', '210700', 'bei zhen shi');
INSERT INTO `t_city` VALUES ('210783', '其它区', '210700', 'qi ta qu');
INSERT INTO `t_city` VALUES ('210800', '营口市', '210000', 'ying kou shi');
INSERT INTO `t_city` VALUES ('210802', '站前区', '210800', 'zhan qian qu');
INSERT INTO `t_city` VALUES ('210803', '西市区', '210800', 'xi shi qu');
INSERT INTO `t_city` VALUES ('210804', '鲅鱼圈区', '210800', 'ba yu juan qu');
INSERT INTO `t_city` VALUES ('210811', '老边区', '210800', 'lao bian qu');
INSERT INTO `t_city` VALUES ('210881', '盖州市', '210800', 'gai zhou shi');
INSERT INTO `t_city` VALUES ('210882', '大石桥市', '210800', 'da shi qiao shi');
INSERT INTO `t_city` VALUES ('210883', '其它区', '210800', 'qi ta qu');
INSERT INTO `t_city` VALUES ('210900', '阜新市', '210000', 'fu xin shi');
INSERT INTO `t_city` VALUES ('210902', '海州区', '210900', 'hai zhou qu');
INSERT INTO `t_city` VALUES ('210903', '新邱区', '210900', 'xin qiu qu');
INSERT INTO `t_city` VALUES ('210904', '太平区', '210900', 'tai ping qu');
INSERT INTO `t_city` VALUES ('210905', '清河门区', '210900', 'qing he men qu');
INSERT INTO `t_city` VALUES ('210911', '细河区', '210900', 'xi he qu');
INSERT INTO `t_city` VALUES ('210921', '阜新蒙古族自治县', '210900', 'fu xin meng gu zu zi zhi xian');
INSERT INTO `t_city` VALUES ('210922', '彰武县', '210900', 'zhang wu xian');
INSERT INTO `t_city` VALUES ('210923', '其它区', '210900', 'qi ta qu');
INSERT INTO `t_city` VALUES ('211000', '辽阳市', '210000', 'liao yang shi');
INSERT INTO `t_city` VALUES ('211002', '白塔区', '211000', 'bai ta qu');
INSERT INTO `t_city` VALUES ('211003', '文圣区', '211000', 'wen sheng qu');
INSERT INTO `t_city` VALUES ('211004', '宏伟区', '211000', 'hong wei qu');
INSERT INTO `t_city` VALUES ('211005', '弓长岭区', '211000', 'gong chang ling qu');
INSERT INTO `t_city` VALUES ('211011', '太子河区', '211000', 'tai zi he qu');
INSERT INTO `t_city` VALUES ('211021', '辽阳县', '211000', 'liao yang xian');
INSERT INTO `t_city` VALUES ('211081', '灯塔市', '211000', 'deng ta shi');
INSERT INTO `t_city` VALUES ('211082', '其它区', '211000', 'qi ta qu');
INSERT INTO `t_city` VALUES ('211100', '盘锦市', '210000', 'pan jin shi');
INSERT INTO `t_city` VALUES ('211102', '双台子区', '211100', 'shuang tai zi qu');
INSERT INTO `t_city` VALUES ('211103', '兴隆台区', '211100', 'xing long tai qu');
INSERT INTO `t_city` VALUES ('211121', '大洼县', '211100', 'da wa xian');
INSERT INTO `t_city` VALUES ('211122', '盘山县', '211100', 'pan shan xian');
INSERT INTO `t_city` VALUES ('211123', '其它区', '211100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('211200', '铁岭市', '210000', 'tie ling shi');
INSERT INTO `t_city` VALUES ('211202', '银州区', '211200', 'yin zhou qu');
INSERT INTO `t_city` VALUES ('211204', '清河区', '211200', 'qing he qu');
INSERT INTO `t_city` VALUES ('211221', '铁岭县', '211200', 'tie ling xian');
INSERT INTO `t_city` VALUES ('211223', '西丰县', '211200', 'xi feng xian');
INSERT INTO `t_city` VALUES ('211224', '昌图县', '211200', 'chang tu xian');
INSERT INTO `t_city` VALUES ('211281', '调兵山市', '211200', 'diao bing shan shi');
INSERT INTO `t_city` VALUES ('211282', '开原市', '211200', 'kai yuan shi');
INSERT INTO `t_city` VALUES ('211283', '其它区', '211200', 'qi ta qu');
INSERT INTO `t_city` VALUES ('211300', '朝阳市', '210000', 'chao yang shi');
INSERT INTO `t_city` VALUES ('211302', '双塔区', '211300', 'shuang ta qu');
INSERT INTO `t_city` VALUES ('211303', '龙城区', '211300', 'long cheng qu');
INSERT INTO `t_city` VALUES ('211321', '朝阳县', '211300', 'chao yang xian');
INSERT INTO `t_city` VALUES ('211322', '建平县', '211300', 'jian ping xian');
INSERT INTO `t_city` VALUES ('211324', '喀喇沁左翼蒙古族自治县', '211300', 'ka la qin zuo yi meng gu zu zi zhi xian');
INSERT INTO `t_city` VALUES ('211381', '北票市', '211300', 'bei piao shi');
INSERT INTO `t_city` VALUES ('211382', '凌源市', '211300', 'ling yuan shi');
INSERT INTO `t_city` VALUES ('211383', '其它区', '211300', 'qi ta qu');
INSERT INTO `t_city` VALUES ('211400', '葫芦岛市', '210000', 'hu lu dao shi');
INSERT INTO `t_city` VALUES ('211402', '连山区', '211400', 'lian shan qu');
INSERT INTO `t_city` VALUES ('211403', '龙港区', '211400', 'long gang qu');
INSERT INTO `t_city` VALUES ('211404', '南票区', '211400', 'nan piao qu');
INSERT INTO `t_city` VALUES ('211421', '绥中县', '211400', 'sui zhong xian');
INSERT INTO `t_city` VALUES ('211422', '建昌县', '211400', 'jian chang xian');
INSERT INTO `t_city` VALUES ('211481', '兴城市', '211400', 'xing cheng shi');
INSERT INTO `t_city` VALUES ('211482', '其它区', '211400', 'qi ta qu');
INSERT INTO `t_city` VALUES ('220000', '吉林省', '1', 'ji lin sheng');
INSERT INTO `t_city` VALUES ('220100', '长春市', '220000', 'chang chun shi');
INSERT INTO `t_city` VALUES ('220102', '南关区', '220100', 'nan guan qu');
INSERT INTO `t_city` VALUES ('220103', '宽城区', '220100', 'kuan cheng qu');
INSERT INTO `t_city` VALUES ('220104', '朝阳区', '220100', 'chao yang qu');
INSERT INTO `t_city` VALUES ('220105', '二道区', '220100', 'er dao qu');
INSERT INTO `t_city` VALUES ('220106', '绿园区', '220100', 'lv yuan qu');
INSERT INTO `t_city` VALUES ('220112', '双阳区', '220100', 'shuang yang qu');
INSERT INTO `t_city` VALUES ('220122', '农安县', '220100', 'nong an xian');
INSERT INTO `t_city` VALUES ('220181', '九台市', '220100', 'jiu tai shi');
INSERT INTO `t_city` VALUES ('220182', '榆树市', '220100', 'yu shu shi');
INSERT INTO `t_city` VALUES ('220183', '德惠市', '220100', 'de hui shi');
INSERT INTO `t_city` VALUES ('220184', '高新技术产业开发区', '220100', 'gao xin ji shu chan ye kai fa qu');
INSERT INTO `t_city` VALUES ('220185', '汽车产业开发区', '220100', 'qi che chan ye kai fa qu');
INSERT INTO `t_city` VALUES ('220186', '经济技术开发区', '220100', 'jing ji ji shu kai fa qu');
INSERT INTO `t_city` VALUES ('220187', '净月旅游开发区', '220100', 'jing yue lv you kai fa qu');
INSERT INTO `t_city` VALUES ('220188', '其它区', '220100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('220200', '吉林市', '220000', 'ji lin shi');
INSERT INTO `t_city` VALUES ('220202', '昌邑区', '220200', 'chang yi qu');
INSERT INTO `t_city` VALUES ('220203', '龙潭区', '220200', 'long tan qu');
INSERT INTO `t_city` VALUES ('220204', '船营区', '220200', 'chuan ying qu');
INSERT INTO `t_city` VALUES ('220211', '丰满区', '220200', 'feng man qu');
INSERT INTO `t_city` VALUES ('220221', '永吉县', '220200', 'yong ji xian');
INSERT INTO `t_city` VALUES ('220281', '蛟河市', '220200', 'jiao he shi');
INSERT INTO `t_city` VALUES ('220282', '桦甸市', '220200', 'hua dian shi');
INSERT INTO `t_city` VALUES ('220283', '舒兰市', '220200', 'shu lan shi');
INSERT INTO `t_city` VALUES ('220284', '磐石市', '220200', 'pan shi shi');
INSERT INTO `t_city` VALUES ('220285', '其它区', '220200', 'qi ta qu');
INSERT INTO `t_city` VALUES ('220300', '四平市', '220000', 'si ping shi');
INSERT INTO `t_city` VALUES ('220302', '铁西区', '220300', 'tie xi qu');
INSERT INTO `t_city` VALUES ('220303', '铁东区', '220300', 'tie dong qu');
INSERT INTO `t_city` VALUES ('220322', '梨树县', '220300', 'li shu xian');
INSERT INTO `t_city` VALUES ('220323', '伊通满族自治县', '220300', 'yi tong man zu zi zhi xian');
INSERT INTO `t_city` VALUES ('220381', '公主岭市', '220300', 'gong zhu ling shi');
INSERT INTO `t_city` VALUES ('220382', '双辽市', '220300', 'shuang liao shi');
INSERT INTO `t_city` VALUES ('220383', '其它区', '220300', 'qi ta qu');
INSERT INTO `t_city` VALUES ('220400', '辽源市', '220000', 'liao yuan shi');
INSERT INTO `t_city` VALUES ('220402', '龙山区', '220400', 'long shan qu');
INSERT INTO `t_city` VALUES ('220403', '西安区', '220400', 'xi an qu');
INSERT INTO `t_city` VALUES ('220421', '东丰县', '220400', 'dong feng xian');
INSERT INTO `t_city` VALUES ('220422', '东辽县', '220400', 'dong liao xian');
INSERT INTO `t_city` VALUES ('220423', '其它区', '220400', 'qi ta qu');
INSERT INTO `t_city` VALUES ('220500', '通化市', '220000', 'tong hua shi');
INSERT INTO `t_city` VALUES ('220502', '东昌区', '220500', 'dong chang qu');
INSERT INTO `t_city` VALUES ('220503', '二道江区', '220500', 'er dao jiang qu');
INSERT INTO `t_city` VALUES ('220521', '通化县', '220500', 'tong hua xian');
INSERT INTO `t_city` VALUES ('220523', '辉南县', '220500', 'hui nan xian');
INSERT INTO `t_city` VALUES ('220524', '柳河县', '220500', 'liu he xian');
INSERT INTO `t_city` VALUES ('220581', '梅河口市', '220500', 'mei he kou shi');
INSERT INTO `t_city` VALUES ('220582', '集安市', '220500', 'ji an shi');
INSERT INTO `t_city` VALUES ('220583', '其它区', '220500', 'qi ta qu');
INSERT INTO `t_city` VALUES ('220600', '白山市', '220000', 'bai shan shi');
INSERT INTO `t_city` VALUES ('220602', '八道江区', '220600', 'ba dao jiang qu');
INSERT INTO `t_city` VALUES ('220621', '抚松县', '220600', 'fu song xian');
INSERT INTO `t_city` VALUES ('220622', '靖宇县', '220600', 'jing yu xian');
INSERT INTO `t_city` VALUES ('220623', '长白朝鲜族自治县', '220600', 'chang bai chao xian zu zi zhi xian');
INSERT INTO `t_city` VALUES ('220625', '江源县', '220600', 'jiang yuan xian');
INSERT INTO `t_city` VALUES ('220681', '临江市', '220600', 'lin jiang shi');
INSERT INTO `t_city` VALUES ('220682', '其它区', '220600', 'qi ta qu');
INSERT INTO `t_city` VALUES ('220700', '松原市', '220000', 'song yuan shi');
INSERT INTO `t_city` VALUES ('220702', '宁江区', '220700', 'ning jiang qu');
INSERT INTO `t_city` VALUES ('220721', '前郭尔罗斯蒙古族自治县', '220700', 'qian guo er luo si meng gu zu zi zhi xian');
INSERT INTO `t_city` VALUES ('220722', '长岭县', '220700', 'chang ling xian');
INSERT INTO `t_city` VALUES ('220723', '乾安县', '220700', 'qian an xian');
INSERT INTO `t_city` VALUES ('220724', '扶余县', '220700', 'fu yu xian');
INSERT INTO `t_city` VALUES ('220725', '其它区', '220700', 'qi ta qu');
INSERT INTO `t_city` VALUES ('220800', '白城市', '220000', 'bai cheng shi');
INSERT INTO `t_city` VALUES ('220802', '洮北区', '220800', 'tao bei qu');
INSERT INTO `t_city` VALUES ('220821', '镇赉县', '220800', 'zhen lai xian');
INSERT INTO `t_city` VALUES ('220822', '通榆县', '220800', 'tong yu xian');
INSERT INTO `t_city` VALUES ('220881', '洮南市', '220800', 'tao nan shi');
INSERT INTO `t_city` VALUES ('220882', '大安市', '220800', 'da an shi');
INSERT INTO `t_city` VALUES ('220883', '其它区', '220800', 'qi ta qu');
INSERT INTO `t_city` VALUES ('222400', '延边朝鲜族自治州', '220000', 'yan bian chao xian zu zi zhi zhou');
INSERT INTO `t_city` VALUES ('222401', '延吉市', '222400', 'yan ji shi');
INSERT INTO `t_city` VALUES ('222402', '图们市', '222400', 'tu men shi');
INSERT INTO `t_city` VALUES ('222403', '敦化市', '222400', 'dun hua shi');
INSERT INTO `t_city` VALUES ('222404', '珲春市', '222400', 'hun chun shi');
INSERT INTO `t_city` VALUES ('222405', '龙井市', '222400', 'long jing shi');
INSERT INTO `t_city` VALUES ('222406', '和龙市', '222400', 'he long shi');
INSERT INTO `t_city` VALUES ('222424', '汪清县', '222400', 'wang qing xian');
INSERT INTO `t_city` VALUES ('222426', '安图县', '222400', 'an tu xian');
INSERT INTO `t_city` VALUES ('222427', '其它区', '222400', 'qi ta qu');
INSERT INTO `t_city` VALUES ('230000', '黑龙江省', '1', 'hei long jiang sheng');
INSERT INTO `t_city` VALUES ('230100', '哈尔滨市', '230000', 'ha er bin shi');
INSERT INTO `t_city` VALUES ('230102', '道里区', '230100', 'dao li qu');
INSERT INTO `t_city` VALUES ('230103', '南岗区', '230100', 'nan gang qu');
INSERT INTO `t_city` VALUES ('230104', '道外区', '230100', 'dao wai qu');
INSERT INTO `t_city` VALUES ('230106', '香坊区', '230100', 'xiang fang qu');
INSERT INTO `t_city` VALUES ('230107', '动力区', '230100', 'dong li qu');
INSERT INTO `t_city` VALUES ('230108', '平房区', '230100', 'ping fang qu');
INSERT INTO `t_city` VALUES ('230109', '松北区', '230100', 'song bei qu');
INSERT INTO `t_city` VALUES ('230111', '呼兰区', '230100', 'hu lan qu');
INSERT INTO `t_city` VALUES ('230123', '依兰县', '230100', 'yi lan xian');
INSERT INTO `t_city` VALUES ('230124', '方正县', '230100', 'fang zheng xian');
INSERT INTO `t_city` VALUES ('230125', '宾县', '230100', 'bin xian');
INSERT INTO `t_city` VALUES ('230126', '巴彦县', '230100', 'ba yan xian');
INSERT INTO `t_city` VALUES ('230127', '木兰县', '230100', 'mu lan xian');
INSERT INTO `t_city` VALUES ('230128', '通河县', '230100', 'tong he xian');
INSERT INTO `t_city` VALUES ('230129', '延寿县', '230100', 'yan shou xian');
INSERT INTO `t_city` VALUES ('230181', '阿城市', '230100', 'a cheng shi');
INSERT INTO `t_city` VALUES ('230182', '双城市', '230100', 'shuang cheng shi');
INSERT INTO `t_city` VALUES ('230183', '尚志市', '230100', 'shang zhi shi');
INSERT INTO `t_city` VALUES ('230184', '五常市', '230100', 'wu chang shi');
INSERT INTO `t_city` VALUES ('230185', '阿城市', '230100', 'a cheng shi');
INSERT INTO `t_city` VALUES ('230186', '其它区', '230100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('230200', '齐齐哈尔市', '230000', 'qi qi ha er shi');
INSERT INTO `t_city` VALUES ('230202', '龙沙区', '230200', 'long sha qu');
INSERT INTO `t_city` VALUES ('230203', '建华区', '230200', 'jian hua qu');
INSERT INTO `t_city` VALUES ('230204', '铁锋区', '230200', 'tie feng qu');
INSERT INTO `t_city` VALUES ('230205', '昂昂溪区', '230200', 'ang ang xi qu');
INSERT INTO `t_city` VALUES ('230206', '富拉尔基区', '230200', 'fu la er ji qu');
INSERT INTO `t_city` VALUES ('230207', '碾子山区', '230200', 'nian zi shan qu');
INSERT INTO `t_city` VALUES ('230208', '梅里斯达斡尔族区', '230200', 'mei li si da wo er zu qu');
INSERT INTO `t_city` VALUES ('230221', '龙江县', '230200', 'long jiang xian');
INSERT INTO `t_city` VALUES ('230223', '依安县', '230200', 'yi an xian');
INSERT INTO `t_city` VALUES ('230224', '泰来县', '230200', 'tai lai xian');
INSERT INTO `t_city` VALUES ('230225', '甘南县', '230200', 'gan nan xian');
INSERT INTO `t_city` VALUES ('230227', '富裕县', '230200', 'fu yu xian');
INSERT INTO `t_city` VALUES ('230229', '克山县', '230200', 'ke shan xian');
INSERT INTO `t_city` VALUES ('230230', '克东县', '230200', 'ke dong xian');
INSERT INTO `t_city` VALUES ('230231', '拜泉县', '230200', 'bai quan xian');
INSERT INTO `t_city` VALUES ('230281', '讷河市', '230200', 'ne he shi');
INSERT INTO `t_city` VALUES ('230282', '其它区', '230200', 'qi ta qu');
INSERT INTO `t_city` VALUES ('230300', '鸡西市', '230000', 'ji xi shi');
INSERT INTO `t_city` VALUES ('230302', '鸡冠区', '230300', 'ji guan qu');
INSERT INTO `t_city` VALUES ('230303', '恒山区', '230300', 'heng shan qu');
INSERT INTO `t_city` VALUES ('230304', '滴道区', '230300', 'di dao qu');
INSERT INTO `t_city` VALUES ('230305', '梨树区', '230300', 'li shu qu');
INSERT INTO `t_city` VALUES ('230306', '城子河区', '230300', 'cheng zi he qu');
INSERT INTO `t_city` VALUES ('230307', '麻山区', '230300', 'ma shan qu');
INSERT INTO `t_city` VALUES ('230321', '鸡东县', '230300', 'ji dong xian');
INSERT INTO `t_city` VALUES ('230381', '虎林市', '230300', 'hu lin shi');
INSERT INTO `t_city` VALUES ('230382', '密山市', '230300', 'mi shan shi');
INSERT INTO `t_city` VALUES ('230383', '其它区', '230300', 'qi ta qu');
INSERT INTO `t_city` VALUES ('230400', '鹤岗市', '230000', 'he gang shi');
INSERT INTO `t_city` VALUES ('230402', '向阳区', '230400', 'xiang yang qu');
INSERT INTO `t_city` VALUES ('230403', '工农区', '230400', 'gong nong qu');
INSERT INTO `t_city` VALUES ('230404', '南山区', '230400', 'nan shan qu');
INSERT INTO `t_city` VALUES ('230405', '兴安区', '230400', 'xing an qu');
INSERT INTO `t_city` VALUES ('230406', '东山区', '230400', 'dong shan qu');
INSERT INTO `t_city` VALUES ('230407', '兴山区', '230400', 'xing shan qu');
INSERT INTO `t_city` VALUES ('230421', '萝北县', '230400', 'luo bei xian');
INSERT INTO `t_city` VALUES ('230422', '绥滨县', '230400', 'sui bin xian');
INSERT INTO `t_city` VALUES ('230423', '其它区', '230400', 'qi ta qu');
INSERT INTO `t_city` VALUES ('230500', '双鸭山市', '230000', 'shuang ya shan shi');
INSERT INTO `t_city` VALUES ('230502', '尖山区', '230500', 'jian shan qu');
INSERT INTO `t_city` VALUES ('230503', '岭东区', '230500', 'ling dong qu');
INSERT INTO `t_city` VALUES ('230505', '四方台区', '230500', 'si fang tai qu');
INSERT INTO `t_city` VALUES ('230506', '宝山区', '230500', 'bao shan qu');
INSERT INTO `t_city` VALUES ('230521', '集贤县', '230500', 'ji xian xian');
INSERT INTO `t_city` VALUES ('230522', '友谊县', '230500', 'you yi xian');
INSERT INTO `t_city` VALUES ('230523', '宝清县', '230500', 'bao qing xian');
INSERT INTO `t_city` VALUES ('230524', '饶河县', '230500', 'rao he xian');
INSERT INTO `t_city` VALUES ('230525', '其它区', '230500', 'qi ta qu');
INSERT INTO `t_city` VALUES ('230600', '大庆市', '230000', 'da qing shi');
INSERT INTO `t_city` VALUES ('230602', '萨尔图区', '230600', 'sa er tu qu');
INSERT INTO `t_city` VALUES ('230603', '龙凤区', '230600', 'long feng qu');
INSERT INTO `t_city` VALUES ('230604', '让胡路区', '230600', 'rang hu lu qu');
INSERT INTO `t_city` VALUES ('230605', '红岗区', '230600', 'hong gang qu');
INSERT INTO `t_city` VALUES ('230606', '大同区', '230600', 'da tong qu');
INSERT INTO `t_city` VALUES ('230621', '肇州县', '230600', 'zhao zhou xian');
INSERT INTO `t_city` VALUES ('230622', '肇源县', '230600', 'zhao yuan xian');
INSERT INTO `t_city` VALUES ('230623', '林甸县', '230600', 'lin dian xian');
INSERT INTO `t_city` VALUES ('230624', '杜尔伯特蒙古族自治县', '230600', 'du er bo te meng gu zu zi zhi xian');
INSERT INTO `t_city` VALUES ('230625', '其它区', '230600', 'qi ta qu');
INSERT INTO `t_city` VALUES ('230700', '伊春市', '230000', 'yi chun shi');
INSERT INTO `t_city` VALUES ('230702', '伊春区', '230700', 'yi chun qu');
INSERT INTO `t_city` VALUES ('230703', '南岔区', '230700', 'nan cha qu');
INSERT INTO `t_city` VALUES ('230704', '友好区', '230700', 'you hao qu');
INSERT INTO `t_city` VALUES ('230705', '西林区', '230700', 'xi lin qu');
INSERT INTO `t_city` VALUES ('230706', '翠峦区', '230700', 'cui luan qu');
INSERT INTO `t_city` VALUES ('230707', '新青区', '230700', 'xin qing qu');
INSERT INTO `t_city` VALUES ('230708', '美溪区', '230700', 'mei xi qu');
INSERT INTO `t_city` VALUES ('230709', '金山屯区', '230700', 'jin shan tun qu');
INSERT INTO `t_city` VALUES ('230710', '五营区', '230700', 'wu ying qu');
INSERT INTO `t_city` VALUES ('230711', '乌马河区', '230700', 'wu ma he qu');
INSERT INTO `t_city` VALUES ('230712', '汤旺河区', '230700', 'tang wang he qu');
INSERT INTO `t_city` VALUES ('230713', '带岭区', '230700', 'dai ling qu');
INSERT INTO `t_city` VALUES ('230714', '乌伊岭区', '230700', 'wu yi ling qu');
INSERT INTO `t_city` VALUES ('230715', '红星区', '230700', 'hong xing qu');
INSERT INTO `t_city` VALUES ('230716', '上甘岭区', '230700', 'shang gan ling qu');
INSERT INTO `t_city` VALUES ('230722', '嘉荫县', '230700', 'jia yin xian');
INSERT INTO `t_city` VALUES ('230781', '铁力市', '230700', 'tie li shi');
INSERT INTO `t_city` VALUES ('230782', '其它区', '230700', 'qi ta qu');
INSERT INTO `t_city` VALUES ('230800', '佳木斯市', '230000', 'jia mu si shi');
INSERT INTO `t_city` VALUES ('230802', '永红区', '230800', 'yong hong qu');
INSERT INTO `t_city` VALUES ('230803', '向阳区', '230800', 'xiang yang qu');
INSERT INTO `t_city` VALUES ('230804', '前进区', '230800', 'qian jin qu');
INSERT INTO `t_city` VALUES ('230805', '东风区', '230800', 'dong feng qu');
INSERT INTO `t_city` VALUES ('230811', '郊区', '230800', 'jiao qu');
INSERT INTO `t_city` VALUES ('230822', '桦南县', '230800', 'hua nan xian');
INSERT INTO `t_city` VALUES ('230826', '桦川县', '230800', 'hua chuan xian');
INSERT INTO `t_city` VALUES ('230828', '汤原县', '230800', 'tang yuan xian');
INSERT INTO `t_city` VALUES ('230833', '抚远县', '230800', 'fu yuan xian');
INSERT INTO `t_city` VALUES ('230881', '同江市', '230800', 'tong jiang shi');
INSERT INTO `t_city` VALUES ('230882', '富锦市', '230800', 'fu jin shi');
INSERT INTO `t_city` VALUES ('230883', '其它区', '230800', 'qi ta qu');
INSERT INTO `t_city` VALUES ('230900', '七台河市', '230000', 'qi tai he shi');
INSERT INTO `t_city` VALUES ('230902', '新兴区', '230900', 'xin xing qu');
INSERT INTO `t_city` VALUES ('230903', '桃山区', '230900', 'tao shan qu');
INSERT INTO `t_city` VALUES ('230904', '茄子河区', '230900', 'qie zi he qu');
INSERT INTO `t_city` VALUES ('230921', '勃利县', '230900', 'bo li xian');
INSERT INTO `t_city` VALUES ('230922', '其它区', '230900', 'qi ta qu');
INSERT INTO `t_city` VALUES ('231000', '牡丹江市', '230000', 'mu dan jiang shi');
INSERT INTO `t_city` VALUES ('231002', '东安区', '231000', 'dong an qu');
INSERT INTO `t_city` VALUES ('231003', '阳明区', '231000', 'yang ming qu');
INSERT INTO `t_city` VALUES ('231004', '爱民区', '231000', 'ai min qu');
INSERT INTO `t_city` VALUES ('231005', '西安区', '231000', 'xi an qu');
INSERT INTO `t_city` VALUES ('231024', '东宁县', '231000', 'dong ning xian');
INSERT INTO `t_city` VALUES ('231025', '林口县', '231000', 'lin kou xian');
INSERT INTO `t_city` VALUES ('231081', '绥芬河市', '231000', 'sui fen he shi');
INSERT INTO `t_city` VALUES ('231083', '海林市', '231000', 'hai lin shi');
INSERT INTO `t_city` VALUES ('231084', '宁安市', '231000', 'ning an shi');
INSERT INTO `t_city` VALUES ('231085', '穆棱市', '231000', 'mu ling shi');
INSERT INTO `t_city` VALUES ('231086', '其它区', '231000', 'qi ta qu');
INSERT INTO `t_city` VALUES ('231100', '黑河市', '230000', 'hei he shi');
INSERT INTO `t_city` VALUES ('231102', '爱辉区', '231100', 'ai hui qu');
INSERT INTO `t_city` VALUES ('231121', '嫩江县', '231100', 'nen jiang xian');
INSERT INTO `t_city` VALUES ('231123', '逊克县', '231100', 'xun ke xian');
INSERT INTO `t_city` VALUES ('231124', '孙吴县', '231100', 'sun wu xian');
INSERT INTO `t_city` VALUES ('231181', '北安市', '231100', 'bei an shi');
INSERT INTO `t_city` VALUES ('231182', '五大连池市', '231100', 'wu da lian chi shi');
INSERT INTO `t_city` VALUES ('231183', '其它区', '231100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('231200', '绥化市', '230000', 'sui hua shi');
INSERT INTO `t_city` VALUES ('231202', '北林区', '231200', 'bei lin qu');
INSERT INTO `t_city` VALUES ('231221', '望奎县', '231200', 'wang kui xian');
INSERT INTO `t_city` VALUES ('231222', '兰西县', '231200', 'lan xi xian');
INSERT INTO `t_city` VALUES ('231223', '青冈县', '231200', 'qing gang xian');
INSERT INTO `t_city` VALUES ('231224', '庆安县', '231200', 'qing an xian');
INSERT INTO `t_city` VALUES ('231225', '明水县', '231200', 'ming shui xian');
INSERT INTO `t_city` VALUES ('231226', '绥棱县', '231200', 'sui ling xian');
INSERT INTO `t_city` VALUES ('231281', '安达市', '231200', 'an da shi');
INSERT INTO `t_city` VALUES ('231282', '肇东市', '231200', 'zhao dong shi');
INSERT INTO `t_city` VALUES ('231283', '海伦市', '231200', 'hai lun shi');
INSERT INTO `t_city` VALUES ('231284', '其它区', '231200', 'qi ta qu');
INSERT INTO `t_city` VALUES ('232700', '大兴安岭地区', '230000', 'da xing an ling di qu');
INSERT INTO `t_city` VALUES ('232721', '呼玛县', '232700', 'hu ma xian');
INSERT INTO `t_city` VALUES ('232722', '塔河县', '232700', 'ta he xian');
INSERT INTO `t_city` VALUES ('232723', '漠河县', '232700', 'mo he xian');
INSERT INTO `t_city` VALUES ('232724', '加格达奇区', '232700', 'jia ge da qi qu');
INSERT INTO `t_city` VALUES ('232725', '其它区', '232700', 'qi ta qu');
INSERT INTO `t_city` VALUES ('310000', '上海', '1', 'shang hai');
INSERT INTO `t_city` VALUES ('310100', '上海市', '310000', 'shang hai shi');
INSERT INTO `t_city` VALUES ('310101', '黄浦区', '310100', 'huang pu qu');
INSERT INTO `t_city` VALUES ('310103', '卢湾区', '310100', 'lu wan qu');
INSERT INTO `t_city` VALUES ('310104', '徐汇区', '310100', 'xu hui qu');
INSERT INTO `t_city` VALUES ('310105', '长宁区', '310100', 'chang ning qu');
INSERT INTO `t_city` VALUES ('310106', '静安区', '310100', 'jing an qu');
INSERT INTO `t_city` VALUES ('310107', '普陀区', '310100', 'pu tuo qu');
INSERT INTO `t_city` VALUES ('310108', '闸北区', '310100', 'zha bei qu');
INSERT INTO `t_city` VALUES ('310109', '虹口区', '310100', 'hong kou qu');
INSERT INTO `t_city` VALUES ('310110', '杨浦区', '310100', 'yang pu qu');
INSERT INTO `t_city` VALUES ('310112', '闵行区', '310100', 'min hang qu');
INSERT INTO `t_city` VALUES ('310113', '宝山区', '310100', 'bao shan qu');
INSERT INTO `t_city` VALUES ('310114', '嘉定区', '310100', 'jia ding qu');
INSERT INTO `t_city` VALUES ('310115', '浦东新区', '310100', 'pu dong xin qu');
INSERT INTO `t_city` VALUES ('310116', '金山区', '310100', 'jin shan qu');
INSERT INTO `t_city` VALUES ('310117', '松江区', '310100', 'song jiang qu');
INSERT INTO `t_city` VALUES ('310118', '青浦区', '310100', 'qing pu qu');
INSERT INTO `t_city` VALUES ('310119', '南汇区', '310100', 'nan hui qu');
INSERT INTO `t_city` VALUES ('310120', '奉贤区', '310100', 'feng xian qu');
INSERT INTO `t_city` VALUES ('310152', '川沙区', '310100', 'chuan sha qu');
INSERT INTO `t_city` VALUES ('310230', '崇明县', '310100', 'chong ming xian');
INSERT INTO `t_city` VALUES ('310231', '其它区', '310100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('320000', '江苏省', '1', 'jiang su sheng');
INSERT INTO `t_city` VALUES ('320100', '南京市', '320000', 'nan jing shi');
INSERT INTO `t_city` VALUES ('320102', '玄武区', '320100', 'xuan wu qu');
INSERT INTO `t_city` VALUES ('320103', '白下区', '320100', 'bai xia qu');
INSERT INTO `t_city` VALUES ('320104', '秦淮区', '320100', 'qin huai qu');
INSERT INTO `t_city` VALUES ('320105', '建邺区', '320100', 'jian ye qu');
INSERT INTO `t_city` VALUES ('320106', '鼓楼区', '320100', 'gu lou qu');
INSERT INTO `t_city` VALUES ('320107', '下关区', '320100', 'xia guan qu');
INSERT INTO `t_city` VALUES ('320111', '浦口区', '320100', 'pu kou qu');
INSERT INTO `t_city` VALUES ('320113', '栖霞区', '320100', 'qi xia qu');
INSERT INTO `t_city` VALUES ('320114', '雨花台区', '320100', 'yu hua tai qu');
INSERT INTO `t_city` VALUES ('320115', '江宁区', '320100', 'jiang ning qu');
INSERT INTO `t_city` VALUES ('320116', '六合区', '320100', 'liu he qu');
INSERT INTO `t_city` VALUES ('320124', '溧水县', '320100', 'li shui xian');
INSERT INTO `t_city` VALUES ('320125', '高淳县', '320100', 'gao chun xian');
INSERT INTO `t_city` VALUES ('320126', '其它区', '320100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('320200', '无锡市', '320000', 'wu xi shi');
INSERT INTO `t_city` VALUES ('320202', '崇安区', '320200', 'chong an qu');
INSERT INTO `t_city` VALUES ('320203', '南长区', '320200', 'nan chang qu');
INSERT INTO `t_city` VALUES ('320204', '北塘区', '320200', 'bei tang qu');
INSERT INTO `t_city` VALUES ('320205', '锡山区', '320200', 'xi shan qu');
INSERT INTO `t_city` VALUES ('320206', '惠山区', '320200', 'hui shan qu');
INSERT INTO `t_city` VALUES ('320211', '滨湖区', '320200', 'bin hu qu');
INSERT INTO `t_city` VALUES ('320281', '江阴市', '320200', 'jiang yin shi');
INSERT INTO `t_city` VALUES ('320282', '宜兴市', '320200', 'yi xing shi');
INSERT INTO `t_city` VALUES ('320296', '新区', '320200', 'xin qu');
INSERT INTO `t_city` VALUES ('320297', '其它区', '320200', 'qi ta qu');
INSERT INTO `t_city` VALUES ('320300', '徐州市', '320000', 'xu zhou shi');
INSERT INTO `t_city` VALUES ('320302', '鼓楼区', '320300', 'gu lou qu');
INSERT INTO `t_city` VALUES ('320303', '云龙区', '320300', 'yun long qu');
INSERT INTO `t_city` VALUES ('320304', '九里区', '320300', 'jiu li qu');
INSERT INTO `t_city` VALUES ('320305', '贾汪区', '320300', 'jia wang qu');
INSERT INTO `t_city` VALUES ('320311', '泉山区', '320300', 'quan shan qu');
INSERT INTO `t_city` VALUES ('320321', '丰县', '320300', 'feng xian');
INSERT INTO `t_city` VALUES ('320322', '沛县', '320300', 'pei xian');
INSERT INTO `t_city` VALUES ('320323', '铜山县', '320300', 'tong shan xian');
INSERT INTO `t_city` VALUES ('320324', '睢宁县', '320300', 'sui ning xian');
INSERT INTO `t_city` VALUES ('320381', '新沂市', '320300', 'xin yi shi');
INSERT INTO `t_city` VALUES ('320382', '邳州市', '320300', 'pi zhou shi');
INSERT INTO `t_city` VALUES ('320383', '其它区', '320300', 'qi ta qu');
INSERT INTO `t_city` VALUES ('320400', '常州市', '320000', 'chang zhou shi');
INSERT INTO `t_city` VALUES ('320402', '天宁区', '320400', 'tian ning qu');
INSERT INTO `t_city` VALUES ('320404', '钟楼区', '320400', 'zhong lou qu');
INSERT INTO `t_city` VALUES ('320405', '戚墅堰区', '320400', 'qi shu yan qu');
INSERT INTO `t_city` VALUES ('320411', '新北区', '320400', 'xin bei qu');
INSERT INTO `t_city` VALUES ('320412', '武进区', '320400', 'wu jin qu');
INSERT INTO `t_city` VALUES ('320481', '溧阳市', '320400', 'li yang shi');
INSERT INTO `t_city` VALUES ('320482', '金坛市', '320400', 'jin tan shi');
INSERT INTO `t_city` VALUES ('320483', '其它区', '320400', 'qi ta qu');
INSERT INTO `t_city` VALUES ('320500', '苏州市', '320000', 'su zhou shi');
INSERT INTO `t_city` VALUES ('320502', '沧浪区', '320500', 'cang lang qu');
INSERT INTO `t_city` VALUES ('320503', '平江区', '320500', 'ping jiang qu');
INSERT INTO `t_city` VALUES ('320504', '金阊区', '320500', 'jin chang qu');
INSERT INTO `t_city` VALUES ('320505', '虎丘区', '320500', 'hu qiu qu');
INSERT INTO `t_city` VALUES ('320506', '吴中区', '320500', 'wu zhong qu');
INSERT INTO `t_city` VALUES ('320507', '相城区', '320500', 'xiang cheng qu');
INSERT INTO `t_city` VALUES ('320581', '常熟市', '320500', 'chang shu shi');
INSERT INTO `t_city` VALUES ('320582', '张家港市', '320500', 'zhang jia gang shi');
INSERT INTO `t_city` VALUES ('320583', '昆山市', '320500', 'kun shan shi');
INSERT INTO `t_city` VALUES ('320584', '吴江市', '320500', 'wu jiang shi');
INSERT INTO `t_city` VALUES ('320585', '太仓市', '320500', 'tai cang shi');
INSERT INTO `t_city` VALUES ('320594', '新区', '320500', 'xin qu');
INSERT INTO `t_city` VALUES ('320595', '园区', '320500', 'yuan qu');
INSERT INTO `t_city` VALUES ('320596', '其它区', '320500', 'qi ta qu');
INSERT INTO `t_city` VALUES ('320600', '南通市', '320000', 'nan tong shi');
INSERT INTO `t_city` VALUES ('320602', '崇川区', '320600', 'chong chuan qu');
INSERT INTO `t_city` VALUES ('320611', '港闸区', '320600', 'gang zha qu');
INSERT INTO `t_city` VALUES ('320612', '通州区', '320600', 'tong zhou qu');
INSERT INTO `t_city` VALUES ('320621', '海安县', '320600', 'hai an xian');
INSERT INTO `t_city` VALUES ('320623', '如东县', '320600', 'ru dong xian');
INSERT INTO `t_city` VALUES ('320681', '启东市', '320600', 'qi dong shi');
INSERT INTO `t_city` VALUES ('320682', '如皋市', '320600', 'ru gao shi');
INSERT INTO `t_city` VALUES ('320683', '通州市', '320600', 'tong zhou shi');
INSERT INTO `t_city` VALUES ('320684', '海门市', '320600', 'hai men shi');
INSERT INTO `t_city` VALUES ('320693', '开发区', '320600', 'kai fa qu');
INSERT INTO `t_city` VALUES ('320694', '其它区', '320600', 'qi ta qu');
INSERT INTO `t_city` VALUES ('320700', '连云港市', '320000', 'lian yun gang shi');
INSERT INTO `t_city` VALUES ('320703', '连云区', '320700', 'lian yun qu');
INSERT INTO `t_city` VALUES ('320705', '新浦区', '320700', 'xin pu qu');
INSERT INTO `t_city` VALUES ('320706', '海州区', '320700', 'hai zhou qu');
INSERT INTO `t_city` VALUES ('320721', '赣榆县', '320700', 'gan yu xian');
INSERT INTO `t_city` VALUES ('320722', '东海县', '320700', 'dong hai xian');
INSERT INTO `t_city` VALUES ('320723', '灌云县', '320700', 'guan yun xian');
INSERT INTO `t_city` VALUES ('320724', '灌南县', '320700', 'guan nan xian');
INSERT INTO `t_city` VALUES ('320725', '其它区', '320700', 'qi ta qu');
INSERT INTO `t_city` VALUES ('320800', '淮安市', '320000', 'huai an shi');
INSERT INTO `t_city` VALUES ('320802', '清河区', '320800', 'qing he qu');
INSERT INTO `t_city` VALUES ('320803', '楚州区', '320800', 'chu zhou qu');
INSERT INTO `t_city` VALUES ('320804', '淮阴区', '320800', 'huai yin qu');
INSERT INTO `t_city` VALUES ('320811', '清浦区', '320800', 'qing pu qu');
INSERT INTO `t_city` VALUES ('320826', '涟水县', '320800', 'lian shui xian');
INSERT INTO `t_city` VALUES ('320829', '洪泽县', '320800', 'hong ze xian');
INSERT INTO `t_city` VALUES ('320830', '盱眙县', '320800', 'xu yi xian');
INSERT INTO `t_city` VALUES ('320831', '金湖县', '320800', 'jin hu xian');
INSERT INTO `t_city` VALUES ('320832', '其它区', '320800', 'qi ta qu');
INSERT INTO `t_city` VALUES ('320900', '盐城市', '320000', 'yan cheng shi');
INSERT INTO `t_city` VALUES ('320902', '亭湖区', '320900', 'ting hu qu');
INSERT INTO `t_city` VALUES ('320903', '盐都区', '320900', 'yan du qu');
INSERT INTO `t_city` VALUES ('320921', '响水县', '320900', 'xiang shui xian');
INSERT INTO `t_city` VALUES ('320922', '滨海县', '320900', 'bin hai xian');
INSERT INTO `t_city` VALUES ('320923', '阜宁县', '320900', 'fu ning xian');
INSERT INTO `t_city` VALUES ('320924', '射阳县', '320900', 'she yang xian');
INSERT INTO `t_city` VALUES ('320925', '建湖县', '320900', 'jian hu xian');
INSERT INTO `t_city` VALUES ('320981', '东台市', '320900', 'dong tai shi');
INSERT INTO `t_city` VALUES ('320982', '大丰市', '320900', 'da feng shi');
INSERT INTO `t_city` VALUES ('320983', '其它区', '320900', 'qi ta qu');
INSERT INTO `t_city` VALUES ('321000', '扬州市', '320000', 'yang zhou shi');
INSERT INTO `t_city` VALUES ('321002', '广陵区', '321000', 'guang ling qu');
INSERT INTO `t_city` VALUES ('321003', '邗江区', '321000', 'han jiang qu');
INSERT INTO `t_city` VALUES ('321011', '维扬区', '321000', 'wei yang qu');
INSERT INTO `t_city` VALUES ('321023', '宝应县', '321000', 'bao ying xian');
INSERT INTO `t_city` VALUES ('321081', '仪征市', '321000', 'yi zheng shi');
INSERT INTO `t_city` VALUES ('321084', '高邮市', '321000', 'gao you shi');
INSERT INTO `t_city` VALUES ('321088', '江都市', '321000', 'jiang du shi');
INSERT INTO `t_city` VALUES ('321092', '经济开发区', '321000', 'jing ji kai fa qu');
INSERT INTO `t_city` VALUES ('321093', '其它区', '321000', 'qi ta qu');
INSERT INTO `t_city` VALUES ('321100', '镇江市', '320000', 'zhen jiang shi');
INSERT INTO `t_city` VALUES ('321102', '京口区', '321100', 'jing kou qu');
INSERT INTO `t_city` VALUES ('321111', '润州区', '321100', 'run zhou qu');
INSERT INTO `t_city` VALUES ('321112', '丹徒区', '321100', 'dan tu qu');
INSERT INTO `t_city` VALUES ('321181', '丹阳市', '321100', 'dan yang shi');
INSERT INTO `t_city` VALUES ('321182', '扬中市', '321100', 'yang zhong shi');
INSERT INTO `t_city` VALUES ('321183', '句容市', '321100', 'ju rong shi');
INSERT INTO `t_city` VALUES ('321184', '其它区', '321100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('321200', '泰州市', '320000', 'tai zhou shi');
INSERT INTO `t_city` VALUES ('321202', '海陵区', '321200', 'hai ling qu');
INSERT INTO `t_city` VALUES ('321203', '高港区', '321200', 'gao gang qu');
INSERT INTO `t_city` VALUES ('321281', '兴化市', '321200', 'xing hua shi');
INSERT INTO `t_city` VALUES ('321282', '靖江市', '321200', 'jing jiang shi');
INSERT INTO `t_city` VALUES ('321283', '泰兴市', '321200', 'tai xing shi');
INSERT INTO `t_city` VALUES ('321284', '姜堰市', '321200', 'jiang yan shi');
INSERT INTO `t_city` VALUES ('321285', '其它区', '321200', 'qi ta qu');
INSERT INTO `t_city` VALUES ('321300', '宿迁市', '320000', 'su qian shi');
INSERT INTO `t_city` VALUES ('321302', '宿城区', '321300', 'su cheng qu');
INSERT INTO `t_city` VALUES ('321311', '宿豫区', '321300', 'su yu qu');
INSERT INTO `t_city` VALUES ('321322', '沭阳县', '321300', 'shu yang xian');
INSERT INTO `t_city` VALUES ('321323', '泗阳县', '321300', 'si yang xian');
INSERT INTO `t_city` VALUES ('321324', '泗洪县', '321300', 'si hong xian');
INSERT INTO `t_city` VALUES ('321325', '其它区', '321300', 'qi ta qu');
INSERT INTO `t_city` VALUES ('330000', '浙江省', '1', 'zhe jiang sheng');
INSERT INTO `t_city` VALUES ('330100', '杭州市', '330000', 'hang zhou shi');
INSERT INTO `t_city` VALUES ('330102', '上城区', '330100', 'shang cheng qu');
INSERT INTO `t_city` VALUES ('330103', '下城区', '330100', 'xia cheng qu');
INSERT INTO `t_city` VALUES ('330104', '江干区', '330100', 'jiang gan qu');
INSERT INTO `t_city` VALUES ('330105', '拱墅区', '330100', 'gong shu qu');
INSERT INTO `t_city` VALUES ('330106', '西湖区', '330100', 'xi hu qu');
INSERT INTO `t_city` VALUES ('330108', '滨江区', '330100', 'bin jiang qu');
INSERT INTO `t_city` VALUES ('330109', '萧山区', '330100', 'xiao shan qu');
INSERT INTO `t_city` VALUES ('330110', '余杭区', '330100', 'yu hang qu');
INSERT INTO `t_city` VALUES ('330122', '桐庐县', '330100', 'tong lu xian');
INSERT INTO `t_city` VALUES ('330127', '淳安县', '330100', 'chun an xian');
INSERT INTO `t_city` VALUES ('330182', '建德市', '330100', 'jian de shi');
INSERT INTO `t_city` VALUES ('330183', '富阳市', '330100', 'fu yang shi');
INSERT INTO `t_city` VALUES ('330185', '临安市', '330100', 'lin an shi');
INSERT INTO `t_city` VALUES ('330186', '其它区', '330100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('330200', '宁波市', '330000', 'ning bo shi');
INSERT INTO `t_city` VALUES ('330203', '海曙区', '330200', 'hai shu qu');
INSERT INTO `t_city` VALUES ('330204', '江东区', '330200', 'jiang dong qu');
INSERT INTO `t_city` VALUES ('330205', '江北区', '330200', 'jiang bei qu');
INSERT INTO `t_city` VALUES ('330206', '北仑区', '330200', 'bei lun qu');
INSERT INTO `t_city` VALUES ('330211', '镇海区', '330200', 'zhen hai qu');
INSERT INTO `t_city` VALUES ('330212', '鄞州区', '330200', 'yin zhou qu');
INSERT INTO `t_city` VALUES ('330225', '象山县', '330200', 'xiang shan xian');
INSERT INTO `t_city` VALUES ('330226', '宁海县', '330200', 'ning hai xian');
INSERT INTO `t_city` VALUES ('330281', '余姚市', '330200', 'yu yao shi');
INSERT INTO `t_city` VALUES ('330282', '慈溪市', '330200', 'ci xi shi');
INSERT INTO `t_city` VALUES ('330283', '奉化市', '330200', 'feng hua shi');
INSERT INTO `t_city` VALUES ('330284', '其它区', '330200', 'qi ta qu');
INSERT INTO `t_city` VALUES ('330300', '温州市', '330000', 'wen zhou shi');
INSERT INTO `t_city` VALUES ('330302', '鹿城区', '330300', 'lu cheng qu');
INSERT INTO `t_city` VALUES ('330303', '龙湾区', '330300', 'long wan qu');
INSERT INTO `t_city` VALUES ('330304', '瓯海区', '330300', 'ou hai qu');
INSERT INTO `t_city` VALUES ('330322', '洞头县', '330300', 'dong tou xian');
INSERT INTO `t_city` VALUES ('330324', '永嘉县', '330300', 'yong jia xian');
INSERT INTO `t_city` VALUES ('330326', '平阳县', '330300', 'ping yang xian');
INSERT INTO `t_city` VALUES ('330327', '苍南县', '330300', 'cang nan xian');
INSERT INTO `t_city` VALUES ('330328', '文成县', '330300', 'wen cheng xian');
INSERT INTO `t_city` VALUES ('330329', '泰顺县', '330300', 'tai shun xian');
INSERT INTO `t_city` VALUES ('330381', '瑞安市', '330300', 'rui an shi');
INSERT INTO `t_city` VALUES ('330382', '乐清市', '330300', 'yue qing shi');
INSERT INTO `t_city` VALUES ('330383', '其它区', '330300', 'qi ta qu');
INSERT INTO `t_city` VALUES ('330400', '嘉兴市', '330000', 'jia xing shi');
INSERT INTO `t_city` VALUES ('330402', '南湖区', '330400', 'nan hu qu');
INSERT INTO `t_city` VALUES ('330411', '秀洲区', '330400', 'xiu zhou qu');
INSERT INTO `t_city` VALUES ('330421', '嘉善县', '330400', 'jia shan xian');
INSERT INTO `t_city` VALUES ('330424', '海盐县', '330400', 'hai yan xian');
INSERT INTO `t_city` VALUES ('330481', '海宁市', '330400', 'hai ning shi');
INSERT INTO `t_city` VALUES ('330482', '平湖市', '330400', 'ping hu shi');
INSERT INTO `t_city` VALUES ('330483', '桐乡市', '330400', 'tong xiang shi');
INSERT INTO `t_city` VALUES ('330484', '其它区', '330400', 'qi ta qu');
INSERT INTO `t_city` VALUES ('330500', '湖州市', '330000', 'hu zhou shi');
INSERT INTO `t_city` VALUES ('330502', '吴兴区', '330500', 'wu xing qu');
INSERT INTO `t_city` VALUES ('330503', '南浔区', '330500', 'nan xun qu');
INSERT INTO `t_city` VALUES ('330521', '德清县', '330500', 'de qing xian');
INSERT INTO `t_city` VALUES ('330522', '长兴县', '330500', 'chang xing xian');
INSERT INTO `t_city` VALUES ('330523', '安吉县', '330500', 'an ji xian');
INSERT INTO `t_city` VALUES ('330524', '其它区', '330500', 'qi ta qu');
INSERT INTO `t_city` VALUES ('330600', '绍兴市', '330000', 'shao xing shi');
INSERT INTO `t_city` VALUES ('330602', '越城区', '330600', 'yue cheng qu');
INSERT INTO `t_city` VALUES ('330621', '绍兴县', '330600', 'shao xing xian');
INSERT INTO `t_city` VALUES ('330624', '新昌县', '330600', 'xin chang xian');
INSERT INTO `t_city` VALUES ('330681', '诸暨市', '330600', 'zhu ji shi');
INSERT INTO `t_city` VALUES ('330682', '上虞市', '330600', 'shang yu shi');
INSERT INTO `t_city` VALUES ('330683', '嵊州市', '330600', 'sheng zhou shi');
INSERT INTO `t_city` VALUES ('330684', '其它区', '330600', 'qi ta qu');
INSERT INTO `t_city` VALUES ('330700', '金华市', '330000', 'jin hua shi');
INSERT INTO `t_city` VALUES ('330702', '婺城区', '330700', 'wu cheng qu');
INSERT INTO `t_city` VALUES ('330703', '金东区', '330700', 'jin dong qu');
INSERT INTO `t_city` VALUES ('330723', '武义县', '330700', 'wu yi xian');
INSERT INTO `t_city` VALUES ('330726', '浦江县', '330700', 'pu jiang xian');
INSERT INTO `t_city` VALUES ('330727', '磐安县', '330700', 'pan an xian');
INSERT INTO `t_city` VALUES ('330781', '兰溪市', '330700', 'lan xi shi');
INSERT INTO `t_city` VALUES ('330782', '义乌市', '330700', 'yi wu shi');
INSERT INTO `t_city` VALUES ('330783', '东阳市', '330700', 'dong yang shi');
INSERT INTO `t_city` VALUES ('330784', '永康市', '330700', 'yong kang shi');
INSERT INTO `t_city` VALUES ('330785', '其它区', '330700', 'qi ta qu');
INSERT INTO `t_city` VALUES ('330800', '衢州市', '330000', 'qu zhou shi');
INSERT INTO `t_city` VALUES ('330802', '柯城区', '330800', 'ke cheng qu');
INSERT INTO `t_city` VALUES ('330803', '衢江区', '330800', 'qu jiang qu');
INSERT INTO `t_city` VALUES ('330822', '常山县', '330800', 'chang shan xian');
INSERT INTO `t_city` VALUES ('330824', '开化县', '330800', 'kai hua xian');
INSERT INTO `t_city` VALUES ('330825', '龙游县', '330800', 'long you xian');
INSERT INTO `t_city` VALUES ('330881', '江山市', '330800', 'jiang shan shi');
INSERT INTO `t_city` VALUES ('330882', '其它区', '330800', 'qi ta qu');
INSERT INTO `t_city` VALUES ('330900', '舟山市', '330000', 'zhou shan shi');
INSERT INTO `t_city` VALUES ('330902', '定海区', '330900', 'ding hai qu');
INSERT INTO `t_city` VALUES ('330903', '普陀区', '330900', 'pu tuo qu');
INSERT INTO `t_city` VALUES ('330921', '岱山县', '330900', 'dai shan xian');
INSERT INTO `t_city` VALUES ('330922', '嵊泗县', '330900', 'sheng si xian');
INSERT INTO `t_city` VALUES ('330923', '其它区', '330900', 'qi ta qu');
INSERT INTO `t_city` VALUES ('331000', '台州市', '330000', 'tai zhou shi');
INSERT INTO `t_city` VALUES ('331002', '椒江区', '331000', 'jiao jiang qu');
INSERT INTO `t_city` VALUES ('331003', '黄岩区', '331000', 'huang yan qu');
INSERT INTO `t_city` VALUES ('331004', '路桥区', '331000', 'lu qiao qu');
INSERT INTO `t_city` VALUES ('331021', '玉环县', '331000', 'yu huan xian');
INSERT INTO `t_city` VALUES ('331022', '三门县', '331000', 'san men xian');
INSERT INTO `t_city` VALUES ('331023', '天台县', '331000', 'tian tai xian');
INSERT INTO `t_city` VALUES ('331024', '仙居县', '331000', 'xian ju xian');
INSERT INTO `t_city` VALUES ('331081', '温岭市', '331000', 'wen ling shi');
INSERT INTO `t_city` VALUES ('331082', '临海市', '331000', 'lin hai shi');
INSERT INTO `t_city` VALUES ('331083', '其它区', '331000', 'qi ta qu');
INSERT INTO `t_city` VALUES ('331100', '丽水市', '330000', 'li shui shi');
INSERT INTO `t_city` VALUES ('331102', '莲都区', '331100', 'lian du qu');
INSERT INTO `t_city` VALUES ('331121', '青田县', '331100', 'qing tian xian');
INSERT INTO `t_city` VALUES ('331122', '缙云县', '331100', 'jin yun xian');
INSERT INTO `t_city` VALUES ('331123', '遂昌县', '331100', 'sui chang xian');
INSERT INTO `t_city` VALUES ('331124', '松阳县', '331100', 'song yang xian');
INSERT INTO `t_city` VALUES ('331125', '云和县', '331100', 'yun he xian');
INSERT INTO `t_city` VALUES ('331126', '庆元县', '331100', 'qing yuan xian');
INSERT INTO `t_city` VALUES ('331127', '景宁畲族自治县', '331100', 'jing ning she zu zi zhi xian');
INSERT INTO `t_city` VALUES ('331181', '龙泉市', '331100', 'long quan shi');
INSERT INTO `t_city` VALUES ('331182', '其它区', '331100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('340000', '安徽省', '1', 'an hui sheng');
INSERT INTO `t_city` VALUES ('340100', '合肥市', '340000', 'he fei shi');
INSERT INTO `t_city` VALUES ('340102', '瑶海区', '340100', 'yao hai qu');
INSERT INTO `t_city` VALUES ('340103', '庐阳区', '340100', 'lu yang qu');
INSERT INTO `t_city` VALUES ('340104', '蜀山区', '340100', 'shu shan qu');
INSERT INTO `t_city` VALUES ('340111', '包河区', '340100', 'bao he qu');
INSERT INTO `t_city` VALUES ('340121', '长丰县', '340100', 'chang feng xian');
INSERT INTO `t_city` VALUES ('340122', '肥东县', '340100', 'fei dong xian');
INSERT INTO `t_city` VALUES ('340123', '肥西县', '340100', 'fei xi xian');
INSERT INTO `t_city` VALUES ('340151', '高新区', '340100', 'gao xin qu');
INSERT INTO `t_city` VALUES ('340191', '中区', '340100', 'zhong qu');
INSERT INTO `t_city` VALUES ('340192', '其它区', '340100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('340200', '芜湖市', '340000', 'wu hu shi');
INSERT INTO `t_city` VALUES ('340202', '镜湖区', '340200', 'jing hu qu');
INSERT INTO `t_city` VALUES ('340203', '弋江区', '340200', 'yi jiang qu');
INSERT INTO `t_city` VALUES ('340207', '鸠江区', '340200', 'jiu jiang qu');
INSERT INTO `t_city` VALUES ('340208', '三山区', '340200', 'san shan qu');
INSERT INTO `t_city` VALUES ('340221', '芜湖县', '340200', 'wu hu xian');
INSERT INTO `t_city` VALUES ('340222', '繁昌县', '340200', 'fan chang xian');
INSERT INTO `t_city` VALUES ('340223', '南陵县', '340200', 'nan ling xian');
INSERT INTO `t_city` VALUES ('340224', '其它区', '340200', 'qi ta qu');
INSERT INTO `t_city` VALUES ('340300', '蚌埠市', '340000', 'beng bu shi');
INSERT INTO `t_city` VALUES ('340302', '龙子湖区', '340300', 'long zi hu qu');
INSERT INTO `t_city` VALUES ('340303', '蚌山区', '340300', 'beng shan qu');
INSERT INTO `t_city` VALUES ('340304', '禹会区', '340300', 'yu hui qu');
INSERT INTO `t_city` VALUES ('340311', '淮上区', '340300', 'huai shang qu');
INSERT INTO `t_city` VALUES ('340321', '怀远县', '340300', 'huai yuan xian');
INSERT INTO `t_city` VALUES ('340322', '五河县', '340300', 'wu he xian');
INSERT INTO `t_city` VALUES ('340323', '固镇县', '340300', 'gu zhen xian');
INSERT INTO `t_city` VALUES ('340324', '其它区', '340300', 'qi ta qu');
INSERT INTO `t_city` VALUES ('340400', '淮南市', '340000', 'huai nan shi');
INSERT INTO `t_city` VALUES ('340402', '大通区', '340400', 'da tong qu');
INSERT INTO `t_city` VALUES ('340403', '田家庵区', '340400', 'tian jia an qu');
INSERT INTO `t_city` VALUES ('340404', '谢家集区', '340400', 'xie jia ji qu');
INSERT INTO `t_city` VALUES ('340405', '八公山区', '340400', 'ba gong shan qu');
INSERT INTO `t_city` VALUES ('340406', '潘集区', '340400', 'pan ji qu');
INSERT INTO `t_city` VALUES ('340421', '凤台县', '340400', 'feng tai xian');
INSERT INTO `t_city` VALUES ('340422', '其它区', '340400', 'qi ta qu');
INSERT INTO `t_city` VALUES ('340500', '马鞍山市', '340000', 'ma an shan shi');
INSERT INTO `t_city` VALUES ('340502', '金家庄区', '340500', 'jin jia zhuang qu');
INSERT INTO `t_city` VALUES ('340503', '花山区', '340500', 'hua shan qu');
INSERT INTO `t_city` VALUES ('340504', '雨山区', '340500', 'yu shan qu');
INSERT INTO `t_city` VALUES ('340521', '当涂县', '340500', 'dang tu xian');
INSERT INTO `t_city` VALUES ('340522', '其它区', '340500', 'qi ta qu');
INSERT INTO `t_city` VALUES ('340600', '淮北市', '340000', 'huai bei shi');
INSERT INTO `t_city` VALUES ('340602', '杜集区', '340600', 'du ji qu');
INSERT INTO `t_city` VALUES ('340603', '相山区', '340600', 'xiang shan qu');
INSERT INTO `t_city` VALUES ('340604', '烈山区', '340600', 'lie shan qu');
INSERT INTO `t_city` VALUES ('340621', '濉溪县', '340600', 'sui xi xian');
INSERT INTO `t_city` VALUES ('340622', '其它区', '340600', 'qi ta qu');
INSERT INTO `t_city` VALUES ('340700', '铜陵市', '340000', 'tong ling shi');
INSERT INTO `t_city` VALUES ('340702', '铜官山区', '340700', 'tong guan shan qu');
INSERT INTO `t_city` VALUES ('340703', '狮子山区', '340700', 'shi zi shan qu');
INSERT INTO `t_city` VALUES ('340711', '郊区', '340700', 'jiao qu');
INSERT INTO `t_city` VALUES ('340721', '铜陵县', '340700', 'tong ling xian');
INSERT INTO `t_city` VALUES ('340722', '其它区', '340700', 'qi ta qu');
INSERT INTO `t_city` VALUES ('340800', '安庆市', '340000', 'an qing shi');
INSERT INTO `t_city` VALUES ('340802', '迎江区', '340800', 'ying jiang qu');
INSERT INTO `t_city` VALUES ('340803', '大观区', '340800', 'da guan qu');
INSERT INTO `t_city` VALUES ('340811', '宜秀区', '340800', 'yi xiu qu');
INSERT INTO `t_city` VALUES ('340822', '怀宁县', '340800', 'huai ning xian');
INSERT INTO `t_city` VALUES ('340823', '枞阳县', '340800', 'zong yang xian');
INSERT INTO `t_city` VALUES ('340824', '潜山县', '340800', 'qian shan xian');
INSERT INTO `t_city` VALUES ('340825', '太湖县', '340800', 'tai hu xian');
INSERT INTO `t_city` VALUES ('340826', '宿松县', '340800', 'su song xian');
INSERT INTO `t_city` VALUES ('340827', '望江县', '340800', 'wang jiang xian');
INSERT INTO `t_city` VALUES ('340828', '岳西县', '340800', 'yue xi xian');
INSERT INTO `t_city` VALUES ('340881', '桐城市', '340800', 'tong cheng shi');
INSERT INTO `t_city` VALUES ('340882', '其它区', '340800', 'qi ta qu');
INSERT INTO `t_city` VALUES ('341000', '黄山市', '340000', 'huang shan shi');
INSERT INTO `t_city` VALUES ('341002', '屯溪区', '341000', 'tun xi qu');
INSERT INTO `t_city` VALUES ('341003', '黄山区', '341000', 'huang shan qu');
INSERT INTO `t_city` VALUES ('341004', '徽州区', '341000', 'hui zhou qu');
INSERT INTO `t_city` VALUES ('341021', '歙县', '341000', 'she xian');
INSERT INTO `t_city` VALUES ('341022', '休宁县', '341000', 'xiu ning xian');
INSERT INTO `t_city` VALUES ('341023', '黟县', '341000', 'yi xian');
INSERT INTO `t_city` VALUES ('341024', '祁门县', '341000', 'qi men xian');
INSERT INTO `t_city` VALUES ('341025', '其它区', '341000', 'qi ta qu');
INSERT INTO `t_city` VALUES ('341100', '滁州市', '340000', 'chu zhou shi');
INSERT INTO `t_city` VALUES ('341102', '琅琊区', '341100', 'lang ya qu');
INSERT INTO `t_city` VALUES ('341103', '南谯区', '341100', 'nan qiao qu');
INSERT INTO `t_city` VALUES ('341122', '来安县', '341100', 'lai an xian');
INSERT INTO `t_city` VALUES ('341124', '全椒县', '341100', 'quan jiao xian');
INSERT INTO `t_city` VALUES ('341125', '定远县', '341100', 'ding yuan xian');
INSERT INTO `t_city` VALUES ('341126', '凤阳县', '341100', 'feng yang xian');
INSERT INTO `t_city` VALUES ('341181', '天长市', '341100', 'tian chang shi');
INSERT INTO `t_city` VALUES ('341182', '明光市', '341100', 'ming guang shi');
INSERT INTO `t_city` VALUES ('341183', '其它区', '341100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('341200', '阜阳市', '340000', 'fu yang shi');
INSERT INTO `t_city` VALUES ('341202', '颍州区', '341200', 'ying zhou qu');
INSERT INTO `t_city` VALUES ('341203', '颍东区', '341200', 'ying dong qu');
INSERT INTO `t_city` VALUES ('341204', '颍泉区', '341200', 'ying quan qu');
INSERT INTO `t_city` VALUES ('341221', '临泉县', '341200', 'lin quan xian');
INSERT INTO `t_city` VALUES ('341222', '太和县', '341200', 'tai he xian');
INSERT INTO `t_city` VALUES ('341225', '阜南县', '341200', 'fu nan xian');
INSERT INTO `t_city` VALUES ('341226', '颍上县', '341200', 'ying shang xian');
INSERT INTO `t_city` VALUES ('341282', '界首市', '341200', 'jie shou shi');
INSERT INTO `t_city` VALUES ('341283', '其它区', '341200', 'qi ta qu');
INSERT INTO `t_city` VALUES ('341300', '宿州市', '340000', 'su zhou shi');
INSERT INTO `t_city` VALUES ('341302', '埇桥区', '341300', 'yong qiao qu');
INSERT INTO `t_city` VALUES ('341321', '砀山县', '341300', 'dang shan xian');
INSERT INTO `t_city` VALUES ('341322', '萧县', '341300', 'xiao xian');
INSERT INTO `t_city` VALUES ('341323', '灵璧县', '341300', 'ling bi xian');
INSERT INTO `t_city` VALUES ('341324', '泗县', '341300', 'si xian');
INSERT INTO `t_city` VALUES ('341325', '其它区', '341300', 'qi ta qu');
INSERT INTO `t_city` VALUES ('341400', '巢湖市', '340100', 'chao hu shi');
INSERT INTO `t_city` VALUES ('341402', '居巢区', '340100', 'ju chao qu');
INSERT INTO `t_city` VALUES ('341421', '庐江县', '340100', 'lu jiang xian');
INSERT INTO `t_city` VALUES ('341422', '无为县', '340200', 'wu wei xian');
INSERT INTO `t_city` VALUES ('341423', '含山县', '340500', 'han shan xian');
INSERT INTO `t_city` VALUES ('341424', '和县', '340500', 'he xian');
INSERT INTO `t_city` VALUES ('341500', '六安市', '340000', 'lu an shi');
INSERT INTO `t_city` VALUES ('341502', '金安区', '341500', 'jin an qu');
INSERT INTO `t_city` VALUES ('341503', '裕安区', '341500', 'yu an qu');
INSERT INTO `t_city` VALUES ('341521', '寿县', '341500', 'shou xian');
INSERT INTO `t_city` VALUES ('341522', '霍邱县', '341500', 'huo qiu xian');
INSERT INTO `t_city` VALUES ('341523', '舒城县', '341500', 'shu cheng xian');
INSERT INTO `t_city` VALUES ('341524', '金寨县', '341500', 'jin zhai xian');
INSERT INTO `t_city` VALUES ('341525', '霍山县', '341500', 'huo shan xian');
INSERT INTO `t_city` VALUES ('341526', '其它区', '341500', 'qi ta qu');
INSERT INTO `t_city` VALUES ('341600', '亳州市', '340000', 'bo zhou shi');
INSERT INTO `t_city` VALUES ('341602', '谯城区', '341600', 'qiao cheng qu');
INSERT INTO `t_city` VALUES ('341621', '涡阳县', '341600', 'guo yang xian');
INSERT INTO `t_city` VALUES ('341622', '蒙城县', '341600', 'meng cheng xian');
INSERT INTO `t_city` VALUES ('341623', '利辛县', '341600', 'li xin xian');
INSERT INTO `t_city` VALUES ('341624', '其它区', '341600', 'qi ta qu');
INSERT INTO `t_city` VALUES ('341700', '池州市', '340000', 'chi zhou shi');
INSERT INTO `t_city` VALUES ('341702', '贵池区', '341700', 'gui chi qu');
INSERT INTO `t_city` VALUES ('341721', '东至县', '341700', 'dong zhi xian');
INSERT INTO `t_city` VALUES ('341722', '石台县', '341700', 'shi tai xian');
INSERT INTO `t_city` VALUES ('341723', '青阳县', '341700', 'qing yang xian');
INSERT INTO `t_city` VALUES ('341724', '其它区', '341700', 'qi ta qu');
INSERT INTO `t_city` VALUES ('341800', '宣城市', '340000', 'xuan cheng shi');
INSERT INTO `t_city` VALUES ('341802', '宣州区', '341800', 'xuan zhou qu');
INSERT INTO `t_city` VALUES ('341821', '郎溪县', '341800', 'lang xi xian');
INSERT INTO `t_city` VALUES ('341822', '广德县', '341800', 'guang de xian');
INSERT INTO `t_city` VALUES ('341823', '泾县', '341800', 'jing xian');
INSERT INTO `t_city` VALUES ('341824', '绩溪县', '341800', 'ji xi xian');
INSERT INTO `t_city` VALUES ('341825', '旌德县', '341800', 'jing de xian');
INSERT INTO `t_city` VALUES ('341881', '宁国市', '341800', 'ning guo shi');
INSERT INTO `t_city` VALUES ('341882', '其它区', '341800', 'qi ta qu');
INSERT INTO `t_city` VALUES ('350000', '福建省', '1', 'fu jian sheng');
INSERT INTO `t_city` VALUES ('350100', '福州市', '350000', 'fu zhou shi');
INSERT INTO `t_city` VALUES ('350102', '鼓楼区', '350100', 'gu lou qu');
INSERT INTO `t_city` VALUES ('350103', '台江区', '350100', 'tai jiang qu');
INSERT INTO `t_city` VALUES ('350104', '仓山区', '350100', 'cang shan qu');
INSERT INTO `t_city` VALUES ('350105', '马尾区', '350100', 'ma wei qu');
INSERT INTO `t_city` VALUES ('350111', '晋安区', '350100', 'jin an qu');
INSERT INTO `t_city` VALUES ('350121', '闽侯县', '350100', 'min hou xian');
INSERT INTO `t_city` VALUES ('350122', '连江县', '350100', 'lian jiang xian');
INSERT INTO `t_city` VALUES ('350123', '罗源县', '350100', 'luo yuan xian');
INSERT INTO `t_city` VALUES ('350124', '闽清县', '350100', 'min qing xian');
INSERT INTO `t_city` VALUES ('350125', '永泰县', '350100', 'yong tai xian');
INSERT INTO `t_city` VALUES ('350128', '平潭县', '350100', 'ping tan xian');
INSERT INTO `t_city` VALUES ('350181', '福清市', '350100', 'fu qing shi');
INSERT INTO `t_city` VALUES ('350182', '长乐市', '350100', 'chang le shi');
INSERT INTO `t_city` VALUES ('350183', '其它区', '350100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('350200', '厦门市', '350000', 'xia men shi');
INSERT INTO `t_city` VALUES ('350203', '思明区', '350200', 'si ming qu');
INSERT INTO `t_city` VALUES ('350205', '海沧区', '350200', 'hai cang qu');
INSERT INTO `t_city` VALUES ('350206', '湖里区', '350200', 'hu li qu');
INSERT INTO `t_city` VALUES ('350211', '集美区', '350200', 'ji mei qu');
INSERT INTO `t_city` VALUES ('350212', '同安区', '350200', 'tong an qu');
INSERT INTO `t_city` VALUES ('350213', '翔安区', '350200', 'xiang an qu');
INSERT INTO `t_city` VALUES ('350214', '其它区', '350200', 'qi ta qu');
INSERT INTO `t_city` VALUES ('350300', '莆田市', '350000', 'pu tian shi');
INSERT INTO `t_city` VALUES ('350302', '城厢区', '350300', 'cheng xiang qu');
INSERT INTO `t_city` VALUES ('350303', '涵江区', '350300', 'han jiang qu');
INSERT INTO `t_city` VALUES ('350304', '荔城区', '350300', 'li cheng qu');
INSERT INTO `t_city` VALUES ('350305', '秀屿区', '350300', 'xiu yu qu');
INSERT INTO `t_city` VALUES ('350322', '仙游县', '350300', 'xian you xian');
INSERT INTO `t_city` VALUES ('350323', '其它区', '350300', 'qi ta qu');
INSERT INTO `t_city` VALUES ('350400', '三明市', '350000', 'san ming shi');
INSERT INTO `t_city` VALUES ('350402', '梅列区', '350400', 'mei lie qu');
INSERT INTO `t_city` VALUES ('350403', '三元区', '350400', 'san yuan qu');
INSERT INTO `t_city` VALUES ('350421', '明溪县', '350400', 'ming xi xian');
INSERT INTO `t_city` VALUES ('350423', '清流县', '350400', 'qing liu xian');
INSERT INTO `t_city` VALUES ('350424', '宁化县', '350400', 'ning hua xian');
INSERT INTO `t_city` VALUES ('350425', '大田县', '350400', 'da tian xian');
INSERT INTO `t_city` VALUES ('350426', '尤溪县', '350400', 'you xi xian');
INSERT INTO `t_city` VALUES ('350427', '沙县', '350400', 'sha xian');
INSERT INTO `t_city` VALUES ('350428', '将乐县', '350400', 'jiang le xian');
INSERT INTO `t_city` VALUES ('350429', '泰宁县', '350400', 'tai ning xian');
INSERT INTO `t_city` VALUES ('350430', '建宁县', '350400', 'jian ning xian');
INSERT INTO `t_city` VALUES ('350481', '永安市', '350400', 'yong an shi');
INSERT INTO `t_city` VALUES ('350482', '其它区', '350400', 'qi ta qu');
INSERT INTO `t_city` VALUES ('350500', '泉州市', '350000', 'quan zhou shi');
INSERT INTO `t_city` VALUES ('350502', '鲤城区', '350500', 'li cheng qu');
INSERT INTO `t_city` VALUES ('350503', '丰泽区', '350500', 'feng ze qu');
INSERT INTO `t_city` VALUES ('350504', '洛江区', '350500', 'luo jiang qu');
INSERT INTO `t_city` VALUES ('350505', '泉港区', '350500', 'quan gang qu');
INSERT INTO `t_city` VALUES ('350521', '惠安县', '350500', 'hui an xian');
INSERT INTO `t_city` VALUES ('350524', '安溪县', '350500', 'an xi xian');
INSERT INTO `t_city` VALUES ('350525', '永春县', '350500', 'yong chun xian');
INSERT INTO `t_city` VALUES ('350526', '德化县', '350500', 'de hua xian');
INSERT INTO `t_city` VALUES ('350527', '金门县', '350500', 'jin men xian');
INSERT INTO `t_city` VALUES ('350581', '石狮市', '350500', 'shi shi shi');
INSERT INTO `t_city` VALUES ('350582', '晋江市', '350500', 'jin jiang shi');
INSERT INTO `t_city` VALUES ('350583', '南安市', '350500', 'nan an shi');
INSERT INTO `t_city` VALUES ('350584', '其它区', '350500', 'qi ta qu');
INSERT INTO `t_city` VALUES ('350600', '漳州市', '350000', 'zhang zhou shi');
INSERT INTO `t_city` VALUES ('350602', '芗城区', '350600', 'xiang cheng qu');
INSERT INTO `t_city` VALUES ('350603', '龙文区', '350600', 'long wen qu');
INSERT INTO `t_city` VALUES ('350622', '云霄县', '350600', 'yun xiao xian');
INSERT INTO `t_city` VALUES ('350623', '漳浦县', '350600', 'zhang pu xian');
INSERT INTO `t_city` VALUES ('350624', '诏安县', '350600', 'zhao an xian');
INSERT INTO `t_city` VALUES ('350625', '长泰县', '350600', 'chang tai xian');
INSERT INTO `t_city` VALUES ('350626', '东山县', '350600', 'dong shan xian');
INSERT INTO `t_city` VALUES ('350627', '南靖县', '350600', 'nan jing xian');
INSERT INTO `t_city` VALUES ('350628', '平和县', '350600', 'ping he xian');
INSERT INTO `t_city` VALUES ('350629', '华安县', '350600', 'hua an xian');
INSERT INTO `t_city` VALUES ('350681', '龙海市', '350600', 'long hai shi');
INSERT INTO `t_city` VALUES ('350682', '其它区', '350600', 'qi ta qu');
INSERT INTO `t_city` VALUES ('350700', '南平市', '350000', 'nan ping shi');
INSERT INTO `t_city` VALUES ('350702', '延平区', '350700', 'yan ping qu');
INSERT INTO `t_city` VALUES ('350721', '顺昌县', '350700', 'shun chang xian');
INSERT INTO `t_city` VALUES ('350722', '浦城县', '350700', 'pu cheng xian');
INSERT INTO `t_city` VALUES ('350723', '光泽县', '350700', 'guang ze xian');
INSERT INTO `t_city` VALUES ('350724', '松溪县', '350700', 'song xi xian');
INSERT INTO `t_city` VALUES ('350725', '政和县', '350700', 'zheng he xian');
INSERT INTO `t_city` VALUES ('350781', '邵武市', '350700', 'shao wu shi');
INSERT INTO `t_city` VALUES ('350782', '武夷山市', '350700', 'wu yi shan shi');
INSERT INTO `t_city` VALUES ('350783', '建瓯市', '350700', 'jian ou shi');
INSERT INTO `t_city` VALUES ('350784', '建阳市', '350700', 'jian yang shi');
INSERT INTO `t_city` VALUES ('350785', '其它区', '350700', 'qi ta qu');
INSERT INTO `t_city` VALUES ('350800', '龙岩市', '350000', 'long yan shi');
INSERT INTO `t_city` VALUES ('350802', '新罗区', '350800', 'xin luo qu');
INSERT INTO `t_city` VALUES ('350821', '长汀县', '350800', 'chang ting xian');
INSERT INTO `t_city` VALUES ('350822', '永定县', '350800', 'yong ding xian');
INSERT INTO `t_city` VALUES ('350823', '上杭县', '350800', 'shang hang xian');
INSERT INTO `t_city` VALUES ('350824', '武平县', '350800', 'wu ping xian');
INSERT INTO `t_city` VALUES ('350825', '连城县', '350800', 'lian cheng xian');
INSERT INTO `t_city` VALUES ('350881', '漳平市', '350800', 'zhang ping shi');
INSERT INTO `t_city` VALUES ('350882', '其它区', '350800', 'qi ta qu');
INSERT INTO `t_city` VALUES ('350900', '宁德市', '350000', 'ning de shi');
INSERT INTO `t_city` VALUES ('350902', '蕉城区', '350900', 'jiao cheng qu');
INSERT INTO `t_city` VALUES ('350921', '霞浦县', '350900', 'xia pu xian');
INSERT INTO `t_city` VALUES ('350922', '古田县', '350900', 'gu tian xian');
INSERT INTO `t_city` VALUES ('350923', '屏南县', '350900', 'ping nan xian');
INSERT INTO `t_city` VALUES ('350924', '寿宁县', '350900', 'shou ning xian');
INSERT INTO `t_city` VALUES ('350925', '周宁县', '350900', 'zhou ning xian');
INSERT INTO `t_city` VALUES ('350926', '柘荣县', '350900', 'zhe rong xian');
INSERT INTO `t_city` VALUES ('350981', '福安市', '350900', 'fu an shi');
INSERT INTO `t_city` VALUES ('350982', '福鼎市', '350900', 'fu ding shi');
INSERT INTO `t_city` VALUES ('350983', '其它区', '350900', 'qi ta qu');
INSERT INTO `t_city` VALUES ('360000', '江西省', '1', 'jiang xi sheng');
INSERT INTO `t_city` VALUES ('360100', '南昌市', '360000', 'nan chang shi');
INSERT INTO `t_city` VALUES ('360102', '东湖区', '360100', 'dong hu qu');
INSERT INTO `t_city` VALUES ('360103', '西湖区', '360100', 'xi hu qu');
INSERT INTO `t_city` VALUES ('360104', '青云谱区', '360100', 'qing yun pu qu');
INSERT INTO `t_city` VALUES ('360105', '湾里区', '360100', 'wan li qu');
INSERT INTO `t_city` VALUES ('360111', '青山湖区', '360100', 'qing shan hu qu');
INSERT INTO `t_city` VALUES ('360121', '南昌县', '360100', 'nan chang xian');
INSERT INTO `t_city` VALUES ('360122', '新建县', '360100', 'xin jian xian');
INSERT INTO `t_city` VALUES ('360123', '安义县', '360100', 'an yi xian');
INSERT INTO `t_city` VALUES ('360124', '进贤县', '360100', 'jin xian xian');
INSERT INTO `t_city` VALUES ('360125', '红谷滩新区', '360100', 'hong gu tan xin qu');
INSERT INTO `t_city` VALUES ('360126', '经济技术开发区', '360100', 'jing ji ji shu kai fa qu');
INSERT INTO `t_city` VALUES ('360127', '昌北区', '360100', 'chang bei qu');
INSERT INTO `t_city` VALUES ('360128', '其它区', '360100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('360200', '景德镇市', '360000', 'jing de zhen shi');
INSERT INTO `t_city` VALUES ('360202', '昌江区', '360200', 'chang jiang qu');
INSERT INTO `t_city` VALUES ('360203', '珠山区', '360200', 'zhu shan qu');
INSERT INTO `t_city` VALUES ('360222', '浮梁县', '360200', 'fu liang xian');
INSERT INTO `t_city` VALUES ('360281', '乐平市', '360200', 'le ping shi');
INSERT INTO `t_city` VALUES ('360282', '其它区', '360200', 'qi ta qu');
INSERT INTO `t_city` VALUES ('360300', '萍乡市', '360000', 'ping xiang shi');
INSERT INTO `t_city` VALUES ('360302', '安源区', '360300', 'an yuan qu');
INSERT INTO `t_city` VALUES ('360313', '湘东区', '360300', 'xiang dong qu');
INSERT INTO `t_city` VALUES ('360321', '莲花县', '360300', 'lian hua xian');
INSERT INTO `t_city` VALUES ('360322', '上栗县', '360300', 'shang li xian');
INSERT INTO `t_city` VALUES ('360323', '芦溪县', '360300', 'lu xi xian');
INSERT INTO `t_city` VALUES ('360324', '其它区', '360300', 'qi ta qu');
INSERT INTO `t_city` VALUES ('360400', '九江市', '360000', 'jiu jiang shi');
INSERT INTO `t_city` VALUES ('360402', '庐山区', '360400', 'lu shan qu');
INSERT INTO `t_city` VALUES ('360403', '浔阳区', '360400', 'xun yang qu');
INSERT INTO `t_city` VALUES ('360421', '九江县', '360400', 'jiu jiang xian');
INSERT INTO `t_city` VALUES ('360423', '武宁县', '360400', 'wu ning xian');
INSERT INTO `t_city` VALUES ('360424', '修水县', '360400', 'xiu shui xian');
INSERT INTO `t_city` VALUES ('360425', '永修县', '360400', 'yong xiu xian');
INSERT INTO `t_city` VALUES ('360426', '德安县', '360400', 'de an xian');
INSERT INTO `t_city` VALUES ('360427', '星子县', '360400', 'xing zi xian');
INSERT INTO `t_city` VALUES ('360428', '都昌县', '360400', 'du chang xian');
INSERT INTO `t_city` VALUES ('360429', '湖口县', '360400', 'hu kou xian');
INSERT INTO `t_city` VALUES ('360430', '彭泽县', '360400', 'peng ze xian');
INSERT INTO `t_city` VALUES ('360481', '瑞昌市', '360400', 'rui chang shi');
INSERT INTO `t_city` VALUES ('360482', '其它区', '360400', 'qi ta qu');
INSERT INTO `t_city` VALUES ('360500', '新余市', '360000', 'xin yu shi');
INSERT INTO `t_city` VALUES ('360502', '渝水区', '360500', 'yu shui qu');
INSERT INTO `t_city` VALUES ('360521', '分宜县', '360500', 'fen yi xian');
INSERT INTO `t_city` VALUES ('360522', '其它区', '360500', 'qi ta qu');
INSERT INTO `t_city` VALUES ('360600', '鹰潭市', '360000', 'ying tan shi');
INSERT INTO `t_city` VALUES ('360602', '月湖区', '360600', 'yue hu qu');
INSERT INTO `t_city` VALUES ('360622', '余江县', '360600', 'yu jiang xian');
INSERT INTO `t_city` VALUES ('360681', '贵溪市', '360600', 'gui xi shi');
INSERT INTO `t_city` VALUES ('360682', '其它区', '360600', 'qi ta qu');
INSERT INTO `t_city` VALUES ('360700', '赣州市', '360000', 'gan zhou shi');
INSERT INTO `t_city` VALUES ('360702', '章贡区', '360700', 'zhang gong qu');
INSERT INTO `t_city` VALUES ('360721', '赣县', '360700', 'gan xian');
INSERT INTO `t_city` VALUES ('360722', '信丰县', '360700', 'shen feng xian');
INSERT INTO `t_city` VALUES ('360723', '大余县', '360700', 'da yu xian');
INSERT INTO `t_city` VALUES ('360724', '上犹县', '360700', 'shang you xian');
INSERT INTO `t_city` VALUES ('360725', '崇义县', '360700', 'chong yi xian');
INSERT INTO `t_city` VALUES ('360726', '安远县', '360700', 'an yuan xian');
INSERT INTO `t_city` VALUES ('360727', '龙南县', '360700', 'long nan xian');
INSERT INTO `t_city` VALUES ('360728', '定南县', '360700', 'ding nan xian');
INSERT INTO `t_city` VALUES ('360729', '全南县', '360700', 'quan nan xian');
INSERT INTO `t_city` VALUES ('360730', '宁都县', '360700', 'ning du xian');
INSERT INTO `t_city` VALUES ('360731', '于都县', '360700', 'yu du xian');
INSERT INTO `t_city` VALUES ('360732', '兴国县', '360700', 'xing guo xian');
INSERT INTO `t_city` VALUES ('360733', '会昌县', '360700', 'hui chang xian');
INSERT INTO `t_city` VALUES ('360734', '寻乌县', '360700', 'xun wu xian');
INSERT INTO `t_city` VALUES ('360735', '石城县', '360700', 'shi cheng xian');
INSERT INTO `t_city` VALUES ('360751', '黄金区', '360700', 'huang jin qu');
INSERT INTO `t_city` VALUES ('360781', '瑞金市', '360700', 'rui jin shi');
INSERT INTO `t_city` VALUES ('360782', '南康市', '360700', 'nan kang shi');
INSERT INTO `t_city` VALUES ('360783', '其它区', '360700', 'qi ta qu');
INSERT INTO `t_city` VALUES ('360800', '吉安市', '360000', 'ji an shi');
INSERT INTO `t_city` VALUES ('360802', '吉州区', '360800', 'ji zhou qu');
INSERT INTO `t_city` VALUES ('360803', '青原区', '360800', 'qing yuan qu');
INSERT INTO `t_city` VALUES ('360821', '吉安县', '360800', 'ji an xian');
INSERT INTO `t_city` VALUES ('360822', '吉水县', '360800', 'ji shui xian');
INSERT INTO `t_city` VALUES ('360823', '峡江县', '360800', 'xia jiang xian');
INSERT INTO `t_city` VALUES ('360824', '新干县', '360800', 'xin gan xian');
INSERT INTO `t_city` VALUES ('360825', '永丰县', '360800', 'yong feng xian');
INSERT INTO `t_city` VALUES ('360826', '泰和县', '360800', 'tai he xian');
INSERT INTO `t_city` VALUES ('360827', '遂川县', '360800', 'sui chuan xian');
INSERT INTO `t_city` VALUES ('360828', '万安县', '360800', 'wan an xian');
INSERT INTO `t_city` VALUES ('360829', '安福县', '360800', 'an fu xian');
INSERT INTO `t_city` VALUES ('360830', '永新县', '360800', 'yong xin xian');
INSERT INTO `t_city` VALUES ('360881', '井冈山市', '360800', 'jing gang shan shi');
INSERT INTO `t_city` VALUES ('360882', '其它区', '360800', 'qi ta qu');
INSERT INTO `t_city` VALUES ('360900', '宜春市', '360000', 'yi chun shi');
INSERT INTO `t_city` VALUES ('360902', '袁州区', '360900', 'yuan zhou qu');
INSERT INTO `t_city` VALUES ('360921', '奉新县', '360900', 'feng xin xian');
INSERT INTO `t_city` VALUES ('360922', '万载县', '360900', 'wan zai xian');
INSERT INTO `t_city` VALUES ('360923', '上高县', '360900', 'shang gao xian');
INSERT INTO `t_city` VALUES ('360924', '宜丰县', '360900', 'yi feng xian');
INSERT INTO `t_city` VALUES ('360925', '靖安县', '360900', 'jing an xian');
INSERT INTO `t_city` VALUES ('360926', '铜鼓县', '360900', 'tong gu xian');
INSERT INTO `t_city` VALUES ('360981', '丰城市', '360900', 'feng cheng shi');
INSERT INTO `t_city` VALUES ('360982', '樟树市', '360900', 'zhang shu shi');
INSERT INTO `t_city` VALUES ('360983', '高安市', '360900', 'gao an shi');
INSERT INTO `t_city` VALUES ('360984', '其它区', '360900', 'qi ta qu');
INSERT INTO `t_city` VALUES ('361000', '抚州市', '360000', 'fu zhou shi');
INSERT INTO `t_city` VALUES ('361002', '临川区', '361000', 'lin chuan qu');
INSERT INTO `t_city` VALUES ('361021', '南城县', '361000', 'nan cheng xian');
INSERT INTO `t_city` VALUES ('361022', '黎川县', '361000', 'li chuan xian');
INSERT INTO `t_city` VALUES ('361023', '南丰县', '361000', 'nan feng xian');
INSERT INTO `t_city` VALUES ('361024', '崇仁县', '361000', 'chong ren xian');
INSERT INTO `t_city` VALUES ('361025', '乐安县', '361000', 'le an xian');
INSERT INTO `t_city` VALUES ('361026', '宜黄县', '361000', 'yi huang xian');
INSERT INTO `t_city` VALUES ('361027', '金溪县', '361000', 'jin xi xian');
INSERT INTO `t_city` VALUES ('361028', '资溪县', '361000', 'zi xi xian');
INSERT INTO `t_city` VALUES ('361029', '东乡县', '361000', 'dong xiang xian');
INSERT INTO `t_city` VALUES ('361030', '广昌县', '361000', 'guang chang xian');
INSERT INTO `t_city` VALUES ('361031', '其它区', '361000', 'qi ta qu');
INSERT INTO `t_city` VALUES ('361100', '上饶市', '360000', 'shang rao shi');
INSERT INTO `t_city` VALUES ('361102', '信州区', '361100', 'shen zhou qu');
INSERT INTO `t_city` VALUES ('361121', '上饶县', '361100', 'shang rao xian');
INSERT INTO `t_city` VALUES ('361122', '广丰县', '361100', 'guang feng xian');
INSERT INTO `t_city` VALUES ('361123', '玉山县', '361100', 'yu shan xian');
INSERT INTO `t_city` VALUES ('361124', '铅山县', '361100', 'yan shan xian');
INSERT INTO `t_city` VALUES ('361125', '横峰县', '361100', 'heng feng xian');
INSERT INTO `t_city` VALUES ('361126', '弋阳县', '361100', 'yi yang xian');
INSERT INTO `t_city` VALUES ('361127', '余干县', '361100', 'yu gan xian');
INSERT INTO `t_city` VALUES ('361128', '鄱阳县', '361100', 'po yang xian');
INSERT INTO `t_city` VALUES ('361129', '万年县', '361100', 'wan nian xian');
INSERT INTO `t_city` VALUES ('361130', '婺源县', '361100', 'wu yuan xian');
INSERT INTO `t_city` VALUES ('361181', '德兴市', '361100', 'de xing shi');
INSERT INTO `t_city` VALUES ('361182', '其它区', '361100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('370000', '山东省', '1', 'shan dong sheng');
INSERT INTO `t_city` VALUES ('370100', '济南市', '370000', 'ji nan shi');
INSERT INTO `t_city` VALUES ('370102', '历下区', '370100', 'li xia qu');
INSERT INTO `t_city` VALUES ('370103', '市中区', '370100', 'shi zhong qu');
INSERT INTO `t_city` VALUES ('370104', '槐荫区', '370100', 'huai yin qu');
INSERT INTO `t_city` VALUES ('370105', '天桥区', '370100', 'tian qiao qu');
INSERT INTO `t_city` VALUES ('370112', '历城区', '370100', 'li cheng qu');
INSERT INTO `t_city` VALUES ('370113', '长清区', '370100', 'chang qing qu');
INSERT INTO `t_city` VALUES ('370124', '平阴县', '370100', 'ping yin xian');
INSERT INTO `t_city` VALUES ('370125', '济阳县', '370100', 'ji yang xian');
INSERT INTO `t_city` VALUES ('370126', '商河县', '370100', 'shang he xian');
INSERT INTO `t_city` VALUES ('370181', '章丘市', '370100', 'zhang qiu shi');
INSERT INTO `t_city` VALUES ('370182', '其它区', '370100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('370200', '青岛市', '370000', 'qing dao shi');
INSERT INTO `t_city` VALUES ('370202', '市南区', '370200', 'shi nan qu');
INSERT INTO `t_city` VALUES ('370203', '市北区', '370200', 'shi bei qu');
INSERT INTO `t_city` VALUES ('370205', '四方区', '370200', 'si fang qu');
INSERT INTO `t_city` VALUES ('370211', '黄岛区', '370200', 'huang dao qu');
INSERT INTO `t_city` VALUES ('370212', '崂山区', '370200', 'lao shan qu');
INSERT INTO `t_city` VALUES ('370213', '李沧区', '370200', 'li cang qu');
INSERT INTO `t_city` VALUES ('370214', '城阳区', '370200', 'cheng yang qu');
INSERT INTO `t_city` VALUES ('370251', '开发区', '370200', 'kai fa qu');
INSERT INTO `t_city` VALUES ('370281', '胶州市', '370200', 'jiao zhou shi');
INSERT INTO `t_city` VALUES ('370282', '即墨市', '370200', 'ji mo shi');
INSERT INTO `t_city` VALUES ('370283', '平度市', '370200', 'ping du shi');
INSERT INTO `t_city` VALUES ('370284', '胶南市', '370200', 'jiao nan shi');
INSERT INTO `t_city` VALUES ('370285', '莱西市', '370200', 'lai xi shi');
INSERT INTO `t_city` VALUES ('370286', '其它区', '370200', 'qi ta qu');
INSERT INTO `t_city` VALUES ('370300', '淄博市', '370000', 'zi bo shi');
INSERT INTO `t_city` VALUES ('370302', '淄川区', '370300', 'zi chuan qu');
INSERT INTO `t_city` VALUES ('370303', '张店区', '370300', 'zhang dian qu');
INSERT INTO `t_city` VALUES ('370304', '博山区', '370300', 'bo shan qu');
INSERT INTO `t_city` VALUES ('370305', '临淄区', '370300', 'lin zi qu');
INSERT INTO `t_city` VALUES ('370306', '周村区', '370300', 'zhou cun qu');
INSERT INTO `t_city` VALUES ('370321', '桓台县', '370300', 'huan tai xian');
INSERT INTO `t_city` VALUES ('370322', '高青县', '370300', 'gao qing xian');
INSERT INTO `t_city` VALUES ('370323', '沂源县', '370300', 'yi yuan xian');
INSERT INTO `t_city` VALUES ('370324', '其它区', '370300', 'qi ta qu');
INSERT INTO `t_city` VALUES ('370400', '枣庄市', '370000', 'zao zhuang shi');
INSERT INTO `t_city` VALUES ('370402', '市中区', '370400', 'shi zhong qu');
INSERT INTO `t_city` VALUES ('370403', '薛城区', '370400', 'xue cheng qu');
INSERT INTO `t_city` VALUES ('370404', '峄城区', '370400', 'yi cheng qu');
INSERT INTO `t_city` VALUES ('370405', '台儿庄区', '370400', 'tai er zhuang qu');
INSERT INTO `t_city` VALUES ('370406', '山亭区', '370400', 'shan ting qu');
INSERT INTO `t_city` VALUES ('370481', '滕州市', '370400', 'teng zhou shi');
INSERT INTO `t_city` VALUES ('370482', '其它区', '370400', 'qi ta qu');
INSERT INTO `t_city` VALUES ('370500', '东营市', '370000', 'dong ying shi');
INSERT INTO `t_city` VALUES ('370502', '东营区', '370500', 'dong ying qu');
INSERT INTO `t_city` VALUES ('370503', '河口区', '370500', 'he kou qu');
INSERT INTO `t_city` VALUES ('370521', '垦利县', '370500', 'ken li xian');
INSERT INTO `t_city` VALUES ('370522', '利津县', '370500', 'li jin xian');
INSERT INTO `t_city` VALUES ('370523', '广饶县', '370500', 'guang rao xian');
INSERT INTO `t_city` VALUES ('370589', '西城区', '370500', 'xi cheng qu');
INSERT INTO `t_city` VALUES ('370590', '东城区', '370500', 'dong cheng qu');
INSERT INTO `t_city` VALUES ('370591', '其它区', '370500', 'qi ta qu');
INSERT INTO `t_city` VALUES ('370600', '烟台市', '370000', 'yan tai shi');
INSERT INTO `t_city` VALUES ('370602', '芝罘区', '370600', 'zhi fu qu');
INSERT INTO `t_city` VALUES ('370611', '福山区', '370600', 'fu shan qu');
INSERT INTO `t_city` VALUES ('370612', '牟平区', '370600', 'mu ping qu');
INSERT INTO `t_city` VALUES ('370613', '莱山区', '370600', 'lai shan qu');
INSERT INTO `t_city` VALUES ('370634', '长岛县', '370600', 'chang dao xian');
INSERT INTO `t_city` VALUES ('370681', '龙口市', '370600', 'long kou shi');
INSERT INTO `t_city` VALUES ('370682', '莱阳市', '370600', 'lai yang shi');
INSERT INTO `t_city` VALUES ('370683', '莱州市', '370600', 'lai zhou shi');
INSERT INTO `t_city` VALUES ('370684', '蓬莱市', '370600', 'peng lai shi');
INSERT INTO `t_city` VALUES ('370685', '招远市', '370600', 'zhao yuan shi');
INSERT INTO `t_city` VALUES ('370686', '栖霞市', '370600', 'qi xia shi');
INSERT INTO `t_city` VALUES ('370687', '海阳市', '370600', 'hai yang shi');
INSERT INTO `t_city` VALUES ('370688', '其它区', '370600', 'qi ta qu');
INSERT INTO `t_city` VALUES ('370700', '潍坊市', '370000', 'wei fang shi');
INSERT INTO `t_city` VALUES ('370702', '潍城区', '370700', 'wei cheng qu');
INSERT INTO `t_city` VALUES ('370703', '寒亭区', '370700', 'han ting qu');
INSERT INTO `t_city` VALUES ('370704', '坊子区', '370700', 'fang zi qu');
INSERT INTO `t_city` VALUES ('370705', '奎文区', '370700', 'kui wen qu');
INSERT INTO `t_city` VALUES ('370724', '临朐县', '370700', 'lin qu xian');
INSERT INTO `t_city` VALUES ('370725', '昌乐县', '370700', 'chang le xian');
INSERT INTO `t_city` VALUES ('370751', '开发区', '370700', 'kai fa qu');
INSERT INTO `t_city` VALUES ('370781', '青州市', '370700', 'qing zhou shi');
INSERT INTO `t_city` VALUES ('370782', '诸城市', '370700', 'zhu cheng shi');
INSERT INTO `t_city` VALUES ('370783', '寿光市', '370700', 'shou guang shi');
INSERT INTO `t_city` VALUES ('370784', '安丘市', '370700', 'an qiu shi');
INSERT INTO `t_city` VALUES ('370785', '高密市', '370700', 'gao mi shi');
INSERT INTO `t_city` VALUES ('370786', '昌邑市', '370700', 'chang yi shi');
INSERT INTO `t_city` VALUES ('370787', '其它区', '370700', 'qi ta qu');
INSERT INTO `t_city` VALUES ('370800', '济宁市', '370000', 'ji ning shi');
INSERT INTO `t_city` VALUES ('370802', '市中区', '370800', 'shi zhong qu');
INSERT INTO `t_city` VALUES ('370811', '任城区', '370800', 'ren cheng qu');
INSERT INTO `t_city` VALUES ('370826', '微山县', '370800', 'wei shan xian');
INSERT INTO `t_city` VALUES ('370827', '鱼台县', '370800', 'yu tai xian');
INSERT INTO `t_city` VALUES ('370828', '金乡县', '370800', 'jin xiang xian');
INSERT INTO `t_city` VALUES ('370829', '嘉祥县', '370800', 'jia xiang xian');
INSERT INTO `t_city` VALUES ('370830', '汶上县', '370800', 'wen shang xian');
INSERT INTO `t_city` VALUES ('370831', '泗水县', '370800', 'si shui xian');
INSERT INTO `t_city` VALUES ('370832', '梁山县', '370800', 'liang shan xian');
INSERT INTO `t_city` VALUES ('370881', '曲阜市', '370800', 'qu fu shi');
INSERT INTO `t_city` VALUES ('370882', '兖州市', '370800', 'yan zhou shi');
INSERT INTO `t_city` VALUES ('370883', '邹城市', '370800', 'zou cheng shi');
INSERT INTO `t_city` VALUES ('370884', '其它区', '370800', 'qi ta qu');
INSERT INTO `t_city` VALUES ('370900', '泰安市', '370000', 'tai an shi');
INSERT INTO `t_city` VALUES ('370902', '泰山区', '370900', 'tai shan qu');
INSERT INTO `t_city` VALUES ('370903', '岱岳区', '370900', 'dai yue qu');
INSERT INTO `t_city` VALUES ('370921', '宁阳县', '370900', 'ning yang xian');
INSERT INTO `t_city` VALUES ('370923', '东平县', '370900', 'dong ping xian');
INSERT INTO `t_city` VALUES ('370982', '新泰市', '370900', 'xin tai shi');
INSERT INTO `t_city` VALUES ('370983', '肥城市', '370900', 'fei cheng shi');
INSERT INTO `t_city` VALUES ('370984', '其它区', '370900', 'qi ta qu');
INSERT INTO `t_city` VALUES ('371000', '威海市', '370000', 'wei hai shi');
INSERT INTO `t_city` VALUES ('371002', '环翠区', '371000', 'huan cui qu');
INSERT INTO `t_city` VALUES ('371081', '文登市', '371000', 'wen deng shi');
INSERT INTO `t_city` VALUES ('371082', '荣成市', '371000', 'rong cheng shi');
INSERT INTO `t_city` VALUES ('371083', '乳山市', '371000', 'ru shan shi');
INSERT INTO `t_city` VALUES ('371084', '其它区', '371000', 'qi ta qu');
INSERT INTO `t_city` VALUES ('371100', '日照市', '370000', 'ri zhao shi');
INSERT INTO `t_city` VALUES ('371102', '东港区', '371100', 'dong gang qu');
INSERT INTO `t_city` VALUES ('371103', '岚山区', '371100', 'lan shan qu');
INSERT INTO `t_city` VALUES ('371121', '五莲县', '371100', 'wu lian xian');
INSERT INTO `t_city` VALUES ('371122', '莒县', '371100', 'ju xian');
INSERT INTO `t_city` VALUES ('371123', '其它区', '371100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('371200', '莱芜市', '370000', 'lai wu shi');
INSERT INTO `t_city` VALUES ('371202', '莱城区', '371200', 'lai cheng qu');
INSERT INTO `t_city` VALUES ('371203', '钢城区', '371200', 'gang cheng qu');
INSERT INTO `t_city` VALUES ('371204', '其它区', '371200', 'qi ta qu');
INSERT INTO `t_city` VALUES ('371300', '临沂市', '370000', 'lin yi shi');
INSERT INTO `t_city` VALUES ('371302', '兰山区', '371300', 'lan shan qu');
INSERT INTO `t_city` VALUES ('371311', '罗庄区', '371300', 'luo zhuang qu');
INSERT INTO `t_city` VALUES ('371312', '河东区', '371300', 'he dong qu');
INSERT INTO `t_city` VALUES ('371321', '沂南县', '371300', 'yi nan xian');
INSERT INTO `t_city` VALUES ('371322', '郯城县', '371300', 'tan cheng xian');
INSERT INTO `t_city` VALUES ('371323', '沂水县', '371300', 'yi shui xian');
INSERT INTO `t_city` VALUES ('371324', '苍山县', '371300', 'cang shan xian');
INSERT INTO `t_city` VALUES ('371325', '费县', '371300', 'fei xian');
INSERT INTO `t_city` VALUES ('371326', '平邑县', '371300', 'ping yi xian');
INSERT INTO `t_city` VALUES ('371327', '莒南县', '371300', 'ju nan xian');
INSERT INTO `t_city` VALUES ('371328', '蒙阴县', '371300', 'meng yin xian');
INSERT INTO `t_city` VALUES ('371329', '临沭县', '371300', 'lin shu xian');
INSERT INTO `t_city` VALUES ('371330', '其它区', '371300', 'qi ta qu');
INSERT INTO `t_city` VALUES ('371400', '德州市', '370000', 'de zhou shi');
INSERT INTO `t_city` VALUES ('371402', '德城区', '371400', 'de cheng qu');
INSERT INTO `t_city` VALUES ('371421', '陵县', '371400', 'ling xian');
INSERT INTO `t_city` VALUES ('371422', '宁津县', '371400', 'ning jin xian');
INSERT INTO `t_city` VALUES ('371423', '庆云县', '371400', 'qing yun xian');
INSERT INTO `t_city` VALUES ('371424', '临邑县', '371400', 'lin yi xian');
INSERT INTO `t_city` VALUES ('371425', '齐河县', '371400', 'qi he xian');
INSERT INTO `t_city` VALUES ('371426', '平原县', '371400', 'ping yuan xian');
INSERT INTO `t_city` VALUES ('371427', '夏津县', '371400', 'xia jin xian');
INSERT INTO `t_city` VALUES ('371428', '武城县', '371400', 'wu cheng xian');
INSERT INTO `t_city` VALUES ('371451', '开发区', '371400', 'kai fa qu');
INSERT INTO `t_city` VALUES ('371481', '乐陵市', '371400', 'le ling shi');
INSERT INTO `t_city` VALUES ('371482', '禹城市', '371400', 'yu cheng shi');
INSERT INTO `t_city` VALUES ('371483', '其它区', '371400', 'qi ta qu');
INSERT INTO `t_city` VALUES ('371500', '聊城市', '370000', 'liao cheng shi');
INSERT INTO `t_city` VALUES ('371502', '东昌府区', '371500', 'dong chang fu qu');
INSERT INTO `t_city` VALUES ('371521', '阳谷县', '371500', 'yang gu xian');
INSERT INTO `t_city` VALUES ('371522', '莘县', '371500', 'shen xian');
INSERT INTO `t_city` VALUES ('371523', '茌平县', '371500', 'chi ping xian');
INSERT INTO `t_city` VALUES ('371524', '东阿县', '371500', 'dong e xian');
INSERT INTO `t_city` VALUES ('371525', '冠县', '371500', 'guan xian');
INSERT INTO `t_city` VALUES ('371526', '高唐县', '371500', 'gao tang xian');
INSERT INTO `t_city` VALUES ('371581', '临清市', '371500', 'lin qing shi');
INSERT INTO `t_city` VALUES ('371582', '其它区', '371500', 'qi ta qu');
INSERT INTO `t_city` VALUES ('371600', '滨州市', '370000', 'bin zhou shi');
INSERT INTO `t_city` VALUES ('371602', '滨城区', '371600', 'bin cheng qu');
INSERT INTO `t_city` VALUES ('371621', '惠民县', '371600', 'hui min xian');
INSERT INTO `t_city` VALUES ('371622', '阳信县', '371600', 'yang shen xian');
INSERT INTO `t_city` VALUES ('371623', '无棣县', '371600', 'wu di xian');
INSERT INTO `t_city` VALUES ('371624', '沾化县', '371600', 'zhan hua xian');
INSERT INTO `t_city` VALUES ('371625', '博兴县', '371600', 'bo xing xian');
INSERT INTO `t_city` VALUES ('371626', '邹平县', '371600', 'zou ping xian');
INSERT INTO `t_city` VALUES ('371627', '其它区', '371600', 'qi ta qu');
INSERT INTO `t_city` VALUES ('371700', '菏泽市', '370000', 'he ze shi');
INSERT INTO `t_city` VALUES ('371702', '牡丹区', '371700', 'mu dan qu');
INSERT INTO `t_city` VALUES ('371721', '曹县', '371700', 'cao xian');
INSERT INTO `t_city` VALUES ('371722', '单县', '371700', 'shan xian');
INSERT INTO `t_city` VALUES ('371723', '成武县', '371700', 'cheng wu xian');
INSERT INTO `t_city` VALUES ('371724', '巨野县', '371700', 'ju ye xian');
INSERT INTO `t_city` VALUES ('371725', '郓城县', '371700', 'yun cheng xian');
INSERT INTO `t_city` VALUES ('371726', '鄄城县', '371700', 'juan cheng xian');
INSERT INTO `t_city` VALUES ('371727', '定陶县', '371700', 'ding tao xian');
INSERT INTO `t_city` VALUES ('371728', '东明县', '371700', 'dong ming xian');
INSERT INTO `t_city` VALUES ('371729', '其它区', '371700', 'qi ta qu');
INSERT INTO `t_city` VALUES ('410000', '河南省', '1', 'he nan sheng');
INSERT INTO `t_city` VALUES ('410100', '郑州市', '410000', 'zheng zhou shi');
INSERT INTO `t_city` VALUES ('410102', '中原区', '410100', 'zhong yuan qu');
INSERT INTO `t_city` VALUES ('410103', '二七区', '410100', 'er qi qu');
INSERT INTO `t_city` VALUES ('410104', '管城回族区', '410100', 'guan cheng hui zu qu');
INSERT INTO `t_city` VALUES ('410105', '金水区', '410100', 'jin shui qu');
INSERT INTO `t_city` VALUES ('410106', '上街区', '410100', 'shang jie qu');
INSERT INTO `t_city` VALUES ('410108', '惠济区', '410100', 'hui ji qu');
INSERT INTO `t_city` VALUES ('410122', '中牟县', '410100', 'zhong mu xian');
INSERT INTO `t_city` VALUES ('410181', '巩义市', '410100', 'gong yi shi');
INSERT INTO `t_city` VALUES ('410182', '荥阳市', '410100', 'xing yang shi');
INSERT INTO `t_city` VALUES ('410183', '新密市', '410100', 'xin mi shi');
INSERT INTO `t_city` VALUES ('410184', '新郑市', '410100', 'xin zheng shi');
INSERT INTO `t_city` VALUES ('410185', '登封市', '410100', 'deng feng shi');
INSERT INTO `t_city` VALUES ('410186', '郑东新区', '410100', 'zheng dong xin qu');
INSERT INTO `t_city` VALUES ('410187', '高新区', '410100', 'gao xin qu');
INSERT INTO `t_city` VALUES ('410188', '其它区', '410100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('410200', '开封市', '410000', 'kai feng shi');
INSERT INTO `t_city` VALUES ('410202', '龙亭区', '410200', 'long ting qu');
INSERT INTO `t_city` VALUES ('410203', '顺河回族区', '410200', 'shun he hui zu qu');
INSERT INTO `t_city` VALUES ('410204', '鼓楼区', '410200', 'gu lou qu');
INSERT INTO `t_city` VALUES ('410205', '禹王台区', '410200', 'yu wang tai qu');
INSERT INTO `t_city` VALUES ('410211', '金明区', '410200', 'jin ming qu');
INSERT INTO `t_city` VALUES ('410221', '杞县', '410200', 'qi xian');
INSERT INTO `t_city` VALUES ('410222', '通许县', '410200', 'tong xu xian');
INSERT INTO `t_city` VALUES ('410223', '尉氏县', '410200', 'wei shi xian');
INSERT INTO `t_city` VALUES ('410224', '开封县', '410200', 'kai feng xian');
INSERT INTO `t_city` VALUES ('410225', '兰考县', '410200', 'lan kao xian');
INSERT INTO `t_city` VALUES ('410226', '其它区', '410200', 'qi ta qu');
INSERT INTO `t_city` VALUES ('410300', '洛阳市', '410000', 'luo yang shi');
INSERT INTO `t_city` VALUES ('410302', '老城区', '410300', 'lao cheng qu');
INSERT INTO `t_city` VALUES ('410303', '西工区', '410300', 'xi gong qu');
INSERT INTO `t_city` VALUES ('410304', '廛河回族区', '410300', 'chan he hui zu qu');
INSERT INTO `t_city` VALUES ('410305', '涧西区', '410300', 'jian xi qu');
INSERT INTO `t_city` VALUES ('410306', '吉利区', '410300', 'ji li qu');
INSERT INTO `t_city` VALUES ('410307', '洛龙区', '410300', 'luo long qu');
INSERT INTO `t_city` VALUES ('410322', '孟津县', '410300', 'meng jin xian');
INSERT INTO `t_city` VALUES ('410323', '新安县', '410300', 'xin an xian');
INSERT INTO `t_city` VALUES ('410324', '栾川县', '410300', 'luan chuan xian');
INSERT INTO `t_city` VALUES ('410325', '嵩县', '410300', 'song xian');
INSERT INTO `t_city` VALUES ('410326', '汝阳县', '410300', 'ru yang xian');
INSERT INTO `t_city` VALUES ('410327', '宜阳县', '410300', 'yi yang xian');
INSERT INTO `t_city` VALUES ('410328', '洛宁县', '410300', 'luo ning xian');
INSERT INTO `t_city` VALUES ('410329', '伊川县', '410300', 'yi chuan xian');
INSERT INTO `t_city` VALUES ('410381', '偃师市', '410300', 'yan shi shi');
INSERT INTO `t_city` VALUES ('410400', '平顶山市', '410000', 'ping ding shan shi');
INSERT INTO `t_city` VALUES ('410402', '新华区', '410400', 'xin hua qu');
INSERT INTO `t_city` VALUES ('410403', '卫东区', '410400', 'wei dong qu');
INSERT INTO `t_city` VALUES ('410404', '石龙区', '410400', 'shi long qu');
INSERT INTO `t_city` VALUES ('410411', '湛河区', '410400', 'zhan he qu');
INSERT INTO `t_city` VALUES ('410421', '宝丰县', '410400', 'bao feng xian');
INSERT INTO `t_city` VALUES ('410422', '叶县', '410400', 'ye xian');
INSERT INTO `t_city` VALUES ('410423', '鲁山县', '410400', 'lu shan xian');
INSERT INTO `t_city` VALUES ('410425', '郏县', '410400', 'jia xian');
INSERT INTO `t_city` VALUES ('410481', '舞钢市', '410400', 'wu gang shi');
INSERT INTO `t_city` VALUES ('410482', '汝州市', '410400', 'ru zhou shi');
INSERT INTO `t_city` VALUES ('410483', '其它区', '410400', 'qi ta qu');
INSERT INTO `t_city` VALUES ('410500', '安阳市', '410000', 'an yang shi');
INSERT INTO `t_city` VALUES ('410502', '文峰区', '410500', 'wen feng qu');
INSERT INTO `t_city` VALUES ('410503', '北关区', '410500', 'bei guan qu');
INSERT INTO `t_city` VALUES ('410505', '殷都区', '410500', 'yin du qu');
INSERT INTO `t_city` VALUES ('410506', '龙安区', '410500', 'long an qu');
INSERT INTO `t_city` VALUES ('410522', '安阳县', '410500', 'an yang xian');
INSERT INTO `t_city` VALUES ('410523', '汤阴县', '410500', 'tang yin xian');
INSERT INTO `t_city` VALUES ('410526', '滑县', '410500', 'hua xian');
INSERT INTO `t_city` VALUES ('410527', '内黄县', '410500', 'nei huang xian');
INSERT INTO `t_city` VALUES ('410581', '林州市', '410500', 'lin zhou shi');
INSERT INTO `t_city` VALUES ('410582', '其它区', '410500', 'qi ta qu');
INSERT INTO `t_city` VALUES ('410600', '鹤壁市', '410000', 'he bi shi');
INSERT INTO `t_city` VALUES ('410602', '鹤山区', '410600', 'he shan qu');
INSERT INTO `t_city` VALUES ('410603', '山城区', '410600', 'shan cheng qu');
INSERT INTO `t_city` VALUES ('410611', '淇滨区', '410600', 'qi bin qu');
INSERT INTO `t_city` VALUES ('410621', '浚县', '410600', 'xun xian');
INSERT INTO `t_city` VALUES ('410622', '淇县', '410600', 'qi xian');
INSERT INTO `t_city` VALUES ('410623', '其它区', '410600', 'qi ta qu');
INSERT INTO `t_city` VALUES ('410700', '新乡市', '410000', 'xin xiang shi');
INSERT INTO `t_city` VALUES ('410702', '红旗区', '410700', 'hong qi qu');
INSERT INTO `t_city` VALUES ('410703', '卫滨区', '410700', 'wei bin qu');
INSERT INTO `t_city` VALUES ('410704', '凤泉区', '410700', 'feng quan qu');
INSERT INTO `t_city` VALUES ('410711', '牧野区', '410700', 'mu ye qu');
INSERT INTO `t_city` VALUES ('410721', '新乡县', '410700', 'xin xiang xian');
INSERT INTO `t_city` VALUES ('410724', '获嘉县', '410700', 'huo jia xian');
INSERT INTO `t_city` VALUES ('410725', '原阳县', '410700', 'yuan yang xian');
INSERT INTO `t_city` VALUES ('410726', '延津县', '410700', 'yan jin xian');
INSERT INTO `t_city` VALUES ('410727', '封丘县', '410700', 'feng qiu xian');
INSERT INTO `t_city` VALUES ('410728', '长垣县', '410700', 'chang yuan xian');
INSERT INTO `t_city` VALUES ('410781', '卫辉市', '410700', 'wei hui shi');
INSERT INTO `t_city` VALUES ('410782', '辉县市', '410700', 'hui xian shi');
INSERT INTO `t_city` VALUES ('410783', '其它区', '410700', 'qi ta qu');
INSERT INTO `t_city` VALUES ('410800', '焦作市', '410000', 'jiao zuo shi');
INSERT INTO `t_city` VALUES ('410802', '解放区', '410800', 'jie fang qu');
INSERT INTO `t_city` VALUES ('410803', '中站区', '410800', 'zhong zhan qu');
INSERT INTO `t_city` VALUES ('410804', '马村区', '410800', 'ma cun qu');
INSERT INTO `t_city` VALUES ('410811', '山阳区', '410800', 'shan yang qu');
INSERT INTO `t_city` VALUES ('410821', '修武县', '410800', 'xiu wu xian');
INSERT INTO `t_city` VALUES ('410822', '博爱县', '410800', 'bo ai xian');
INSERT INTO `t_city` VALUES ('410823', '武陟县', '410800', 'wu zhi xian');
INSERT INTO `t_city` VALUES ('410825', '温县', '410800', 'wen xian');
INSERT INTO `t_city` VALUES ('410881', '济源市', '410000', 'ji yuan shi');
INSERT INTO `t_city` VALUES ('410882', '沁阳市', '410800', 'qin yang shi');
INSERT INTO `t_city` VALUES ('410883', '孟州市', '410800', 'meng zhou shi');
INSERT INTO `t_city` VALUES ('410884', '其它区', '410800', 'qi ta qu');
INSERT INTO `t_city` VALUES ('410900', '濮阳市', '410000', 'pu yang shi');
INSERT INTO `t_city` VALUES ('410902', '华龙区', '410900', 'hua long qu');
INSERT INTO `t_city` VALUES ('410922', '清丰县', '410900', 'qing feng xian');
INSERT INTO `t_city` VALUES ('410923', '南乐县', '410900', 'nan le xian');
INSERT INTO `t_city` VALUES ('410926', '范县', '410900', 'fan xian');
INSERT INTO `t_city` VALUES ('410927', '台前县', '410900', 'tai qian xian');
INSERT INTO `t_city` VALUES ('410928', '濮阳县', '410900', 'pu yang xian');
INSERT INTO `t_city` VALUES ('410929', '其它区', '410900', 'qi ta qu');
INSERT INTO `t_city` VALUES ('411000', '许昌市', '410000', 'xu chang shi');
INSERT INTO `t_city` VALUES ('411002', '魏都区', '411000', 'wei du qu');
INSERT INTO `t_city` VALUES ('411023', '许昌县', '411000', 'xu chang xian');
INSERT INTO `t_city` VALUES ('411024', '鄢陵县', '411000', 'yan ling xian');
INSERT INTO `t_city` VALUES ('411025', '襄城县', '411000', 'xiang cheng xian');
INSERT INTO `t_city` VALUES ('411081', '禹州市', '411000', 'yu zhou shi');
INSERT INTO `t_city` VALUES ('411082', '长葛市', '411000', 'chang ge shi');
INSERT INTO `t_city` VALUES ('411083', '其它区', '411000', 'qi ta qu');
INSERT INTO `t_city` VALUES ('411100', '漯河市', '410000', 'luo he shi');
INSERT INTO `t_city` VALUES ('411102', '源汇区', '411100', 'yuan hui qu');
INSERT INTO `t_city` VALUES ('411103', '郾城区', '411100', 'yan cheng qu');
INSERT INTO `t_city` VALUES ('411104', '召陵区', '411100', 'zhao ling qu');
INSERT INTO `t_city` VALUES ('411121', '舞阳县', '411100', 'wu yang xian');
INSERT INTO `t_city` VALUES ('411122', '临颍县', '411100', 'lin ying xian');
INSERT INTO `t_city` VALUES ('411123', '其它区', '411100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('411200', '三门峡市', '410000', 'san men xia shi');
INSERT INTO `t_city` VALUES ('411202', '湖滨区', '411200', 'hu bin qu');
INSERT INTO `t_city` VALUES ('411221', '渑池县', '411200', 'mian chi xian');
INSERT INTO `t_city` VALUES ('411222', '陕县', '411200', 'shan xian');
INSERT INTO `t_city` VALUES ('411224', '卢氏县', '411200', 'lu shi xian');
INSERT INTO `t_city` VALUES ('411281', '义马市', '411200', 'yi ma shi');
INSERT INTO `t_city` VALUES ('411282', '灵宝市', '411200', 'ling bao shi');
INSERT INTO `t_city` VALUES ('411283', '其它区', '411200', 'qi ta qu');
INSERT INTO `t_city` VALUES ('411300', '南阳市', '410000', 'nan yang shi');
INSERT INTO `t_city` VALUES ('411302', '宛城区', '411300', 'wan cheng qu');
INSERT INTO `t_city` VALUES ('411303', '卧龙区', '411300', 'wo long qu');
INSERT INTO `t_city` VALUES ('411321', '南召县', '411300', 'nan zhao xian');
INSERT INTO `t_city` VALUES ('411322', '方城县', '411300', 'fang cheng xian');
INSERT INTO `t_city` VALUES ('411323', '西峡县', '411300', 'xi xia xian');
INSERT INTO `t_city` VALUES ('411324', '镇平县', '411300', 'zhen ping xian');
INSERT INTO `t_city` VALUES ('411325', '内乡县', '411300', 'nei xiang xian');
INSERT INTO `t_city` VALUES ('411326', '淅川县', '411300', 'xi chuan xian');
INSERT INTO `t_city` VALUES ('411327', '社旗县', '411300', 'she qi xian');
INSERT INTO `t_city` VALUES ('411328', '唐河县', '411300', 'tang he xian');
INSERT INTO `t_city` VALUES ('411329', '新野县', '411300', 'xin ye xian');
INSERT INTO `t_city` VALUES ('411330', '桐柏县', '411300', 'tong bai xian');
INSERT INTO `t_city` VALUES ('411381', '邓州市', '411300', 'deng zhou shi');
INSERT INTO `t_city` VALUES ('411382', '其它区', '411300', 'qi ta qu');
INSERT INTO `t_city` VALUES ('411400', '商丘市', '410000', 'shang qiu shi');
INSERT INTO `t_city` VALUES ('411402', '梁园区', '411400', 'liang yuan qu');
INSERT INTO `t_city` VALUES ('411403', '睢阳区', '411400', 'sui yang qu');
INSERT INTO `t_city` VALUES ('411421', '民权县', '411400', 'min quan xian');
INSERT INTO `t_city` VALUES ('411422', '睢县', '411400', 'sui xian');
INSERT INTO `t_city` VALUES ('411423', '宁陵县', '411400', 'ning ling xian');
INSERT INTO `t_city` VALUES ('411424', '柘城县', '411400', 'zhe cheng xian');
INSERT INTO `t_city` VALUES ('411425', '虞城县', '411400', 'yu cheng xian');
INSERT INTO `t_city` VALUES ('411426', '夏邑县', '411400', 'xia yi xian');
INSERT INTO `t_city` VALUES ('411481', '永城市', '411400', 'yong cheng shi');
INSERT INTO `t_city` VALUES ('411482', '其它区', '411400', 'qi ta qu');
INSERT INTO `t_city` VALUES ('411500', '信阳市', '410000', 'shen yang shi');
INSERT INTO `t_city` VALUES ('411502', '浉河区', '411500', 'shi he qu');
INSERT INTO `t_city` VALUES ('411503', '平桥区', '411500', 'ping qiao qu');
INSERT INTO `t_city` VALUES ('411521', '罗山县', '411500', 'luo shan xian');
INSERT INTO `t_city` VALUES ('411522', '光山县', '411500', 'guang shan xian');
INSERT INTO `t_city` VALUES ('411523', '新县', '411500', 'xin xian');
INSERT INTO `t_city` VALUES ('411524', '商城县', '411500', 'shang cheng xian');
INSERT INTO `t_city` VALUES ('411525', '固始县', '411500', 'gu shi xian');
INSERT INTO `t_city` VALUES ('411526', '潢川县', '411500', 'huang chuan xian');
INSERT INTO `t_city` VALUES ('411527', '淮滨县', '411500', 'huai bin xian');
INSERT INTO `t_city` VALUES ('411528', '息县', '411500', 'xi xian');
INSERT INTO `t_city` VALUES ('411529', '其它区', '411500', 'qi ta qu');
INSERT INTO `t_city` VALUES ('411600', '周口市', '410000', 'zhou kou shi');
INSERT INTO `t_city` VALUES ('411602', '川汇区', '411600', 'chuan hui qu');
INSERT INTO `t_city` VALUES ('411621', '扶沟县', '411600', 'fu gou xian');
INSERT INTO `t_city` VALUES ('411622', '西华县', '411600', 'xi hua xian');
INSERT INTO `t_city` VALUES ('411623', '商水县', '411600', 'shang shui xian');
INSERT INTO `t_city` VALUES ('411624', '沈丘县', '411600', 'shen qiu xian');
INSERT INTO `t_city` VALUES ('411625', '郸城县', '411600', 'dan cheng xian');
INSERT INTO `t_city` VALUES ('411626', '淮阳县', '411600', 'huai yang xian');
INSERT INTO `t_city` VALUES ('411627', '太康县', '411600', 'tai kang xian');
INSERT INTO `t_city` VALUES ('411628', '鹿邑县', '411600', 'lu yi xian');
INSERT INTO `t_city` VALUES ('411681', '项城市', '411600', 'xiang cheng shi');
INSERT INTO `t_city` VALUES ('411682', '其它区', '411600', 'qi ta qu');
INSERT INTO `t_city` VALUES ('411700', '驻马店市', '410000', 'zhu ma dian shi');
INSERT INTO `t_city` VALUES ('411702', '驿城区', '411700', 'yi cheng qu');
INSERT INTO `t_city` VALUES ('411721', '西平县', '411700', 'xi ping xian');
INSERT INTO `t_city` VALUES ('411722', '上蔡县', '411700', 'shang cai xian');
INSERT INTO `t_city` VALUES ('411723', '平舆县', '411700', 'ping yu xian');
INSERT INTO `t_city` VALUES ('411724', '正阳县', '411700', 'zheng yang xian');
INSERT INTO `t_city` VALUES ('411725', '确山县', '411700', 'que shan xian');
INSERT INTO `t_city` VALUES ('411726', '泌阳县', '411700', 'bi yang xian');
INSERT INTO `t_city` VALUES ('411727', '汝南县', '411700', 'ru nan xian');
INSERT INTO `t_city` VALUES ('411728', '遂平县', '411700', 'sui ping xian');
INSERT INTO `t_city` VALUES ('411729', '新蔡县', '411700', 'xin cai xian');
INSERT INTO `t_city` VALUES ('411730', '其它区', '411700', 'qi ta qu');
INSERT INTO `t_city` VALUES ('420000', '湖北省', '1', 'hu bei sheng');
INSERT INTO `t_city` VALUES ('420100', '武汉市', '420000', 'wu han shi');
INSERT INTO `t_city` VALUES ('420102', '江岸区', '420100', 'jiang an qu');
INSERT INTO `t_city` VALUES ('420103', '江汉区', '420100', 'jiang han qu');
INSERT INTO `t_city` VALUES ('420104', '硚口区', '420100', 'qiao kou qu');
INSERT INTO `t_city` VALUES ('420105', '汉阳区', '420100', 'han yang qu');
INSERT INTO `t_city` VALUES ('420106', '武昌区', '420100', 'wu chang qu');
INSERT INTO `t_city` VALUES ('420107', '青山区', '420100', 'qing shan qu');
INSERT INTO `t_city` VALUES ('420111', '洪山区', '420100', 'hong shan qu');
INSERT INTO `t_city` VALUES ('420112', '东西湖区', '420100', 'dong xi hu qu');
INSERT INTO `t_city` VALUES ('420113', '汉南区', '420100', 'han nan qu');
INSERT INTO `t_city` VALUES ('420114', '蔡甸区', '420100', 'cai dian qu');
INSERT INTO `t_city` VALUES ('420115', '江夏区', '420100', 'jiang xia qu');
INSERT INTO `t_city` VALUES ('420116', '黄陂区', '420100', 'huang pi qu');
INSERT INTO `t_city` VALUES ('420117', '新洲区', '420100', 'xin zhou qu');
INSERT INTO `t_city` VALUES ('420118', '其它区', '420100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('420200', '黄石市', '420000', 'huang shi shi');
INSERT INTO `t_city` VALUES ('420202', '黄石港区', '420200', 'huang shi gang qu');
INSERT INTO `t_city` VALUES ('420203', '西塞山区', '420200', 'xi sai shan qu');
INSERT INTO `t_city` VALUES ('420204', '下陆区', '420200', 'xia lu qu');
INSERT INTO `t_city` VALUES ('420205', '铁山区', '420200', 'tie shan qu');
INSERT INTO `t_city` VALUES ('420222', '阳新县', '420200', 'yang xin xian');
INSERT INTO `t_city` VALUES ('420281', '大冶市', '420200', 'da ye shi');
INSERT INTO `t_city` VALUES ('420282', '其它区', '420200', 'qi ta qu');
INSERT INTO `t_city` VALUES ('420300', '十堰市', '420000', 'shi yan shi');
INSERT INTO `t_city` VALUES ('420302', '茅箭区', '420300', 'mao jian qu');
INSERT INTO `t_city` VALUES ('420303', '张湾区', '420300', 'zhang wan qu');
INSERT INTO `t_city` VALUES ('420321', '郧县', '420300', 'yun xian');
INSERT INTO `t_city` VALUES ('420322', '郧西县', '420300', 'yun xi xian');
INSERT INTO `t_city` VALUES ('420323', '竹山县', '420300', 'zhu shan xian');
INSERT INTO `t_city` VALUES ('420324', '竹溪县', '420300', 'zhu xi xian');
INSERT INTO `t_city` VALUES ('420325', '房县', '420300', 'fang xian');
INSERT INTO `t_city` VALUES ('420381', '丹江口市', '420300', 'dan jiang kou shi');
INSERT INTO `t_city` VALUES ('420382', '城区', '420300', 'cheng qu');
INSERT INTO `t_city` VALUES ('420383', '其它区', '420300', 'qi ta qu');
INSERT INTO `t_city` VALUES ('420500', '宜昌市', '420000', 'yi chang shi');
INSERT INTO `t_city` VALUES ('420502', '西陵区', '420500', 'xi ling qu');
INSERT INTO `t_city` VALUES ('420503', '伍家岗区', '420500', 'wu jia gang qu');
INSERT INTO `t_city` VALUES ('420504', '点军区', '420500', 'dian jun qu');
INSERT INTO `t_city` VALUES ('420505', '猇亭区', '420500', 'yao ting qu');
INSERT INTO `t_city` VALUES ('420506', '夷陵区', '420500', 'yi ling qu');
INSERT INTO `t_city` VALUES ('420525', '远安县', '420500', 'yuan an xian');
INSERT INTO `t_city` VALUES ('420526', '兴山县', '420500', 'xing shan xian');
INSERT INTO `t_city` VALUES ('420527', '秭归县', '420500', 'zi gui xian');
INSERT INTO `t_city` VALUES ('420528', '长阳土家族自治县', '420500', 'chang yang tu jia zu zi zhi xian');
INSERT INTO `t_city` VALUES ('420529', '五峰土家族自治县', '420500', 'wu feng tu jia zu zi zhi xian');
INSERT INTO `t_city` VALUES ('420551', '葛洲坝区', '420500', 'ge zhou ba qu');
INSERT INTO `t_city` VALUES ('420552', '开发区', '420500', 'kai fa qu');
INSERT INTO `t_city` VALUES ('420581', '宜都市', '420500', 'yi du shi');
INSERT INTO `t_city` VALUES ('420582', '当阳市', '420500', 'dang yang shi');
INSERT INTO `t_city` VALUES ('420583', '枝江市', '420500', 'zhi jiang shi');
INSERT INTO `t_city` VALUES ('420584', '其它区', '420500', 'qi ta qu');
INSERT INTO `t_city` VALUES ('420600', '襄阳市', '420000', 'xiang yang shi');
INSERT INTO `t_city` VALUES ('420602', '襄城区', '420600', 'xiang cheng qu');
INSERT INTO `t_city` VALUES ('420606', '樊城区', '420600', 'fan cheng qu');
INSERT INTO `t_city` VALUES ('420607', '襄州区', '420600', 'xiang zhou qu');
INSERT INTO `t_city` VALUES ('420624', '南漳县', '420600', 'nan zhang xian');
INSERT INTO `t_city` VALUES ('420625', '谷城县', '420600', 'gu cheng xian');
INSERT INTO `t_city` VALUES ('420626', '保康县', '420600', 'bao kang xian');
INSERT INTO `t_city` VALUES ('420682', '老河口市', '420600', 'lao he kou shi');
INSERT INTO `t_city` VALUES ('420683', '枣阳市', '420600', 'zao yang shi');
INSERT INTO `t_city` VALUES ('420684', '宜城市', '420600', 'yi cheng shi');
INSERT INTO `t_city` VALUES ('420685', '其它区', '420600', 'qi ta qu');
INSERT INTO `t_city` VALUES ('420700', '鄂州市', '420000', 'e zhou shi');
INSERT INTO `t_city` VALUES ('420702', '梁子湖区', '420700', 'liang zi hu qu');
INSERT INTO `t_city` VALUES ('420703', '华容区', '420700', 'hua rong qu');
INSERT INTO `t_city` VALUES ('420704', '鄂城区', '420700', 'e cheng qu');
INSERT INTO `t_city` VALUES ('420705', '其它区', '420700', 'qi ta qu');
INSERT INTO `t_city` VALUES ('420800', '荆门市', '420000', 'jing men shi');
INSERT INTO `t_city` VALUES ('420802', '东宝区', '420800', 'dong bao qu');
INSERT INTO `t_city` VALUES ('420804', '掇刀区', '420800', 'duo dao qu');
INSERT INTO `t_city` VALUES ('420821', '京山县', '420800', 'jing shan xian');
INSERT INTO `t_city` VALUES ('420822', '沙洋县', '420800', 'sha yang xian');
INSERT INTO `t_city` VALUES ('420881', '钟祥市', '420800', 'zhong xiang shi');
INSERT INTO `t_city` VALUES ('420882', '其它区', '420800', 'qi ta qu');
INSERT INTO `t_city` VALUES ('420900', '孝感市', '420000', 'xiao gan shi');
INSERT INTO `t_city` VALUES ('420902', '孝南区', '420900', 'xiao nan qu');
INSERT INTO `t_city` VALUES ('420921', '孝昌县', '420900', 'xiao chang xian');
INSERT INTO `t_city` VALUES ('420922', '大悟县', '420900', 'da wu xian');
INSERT INTO `t_city` VALUES ('420923', '云梦县', '420900', 'yun meng xian');
INSERT INTO `t_city` VALUES ('420981', '应城市', '420900', 'ying cheng shi');
INSERT INTO `t_city` VALUES ('420982', '安陆市', '420900', 'an lu shi');
INSERT INTO `t_city` VALUES ('420984', '汉川市', '420900', 'han chuan shi');
INSERT INTO `t_city` VALUES ('420985', '其它区', '420900', 'qi ta qu');
INSERT INTO `t_city` VALUES ('421000', '荆州市', '420000', 'jing zhou shi');
INSERT INTO `t_city` VALUES ('421002', '沙市区', '421000', 'sha shi qu');
INSERT INTO `t_city` VALUES ('421003', '荆州区', '421000', 'jing zhou qu');
INSERT INTO `t_city` VALUES ('421022', '公安县', '421000', 'gong an xian');
INSERT INTO `t_city` VALUES ('421023', '监利县', '421000', 'jian li xian');
INSERT INTO `t_city` VALUES ('421024', '江陵县', '421000', 'jiang ling xian');
INSERT INTO `t_city` VALUES ('421081', '石首市', '421000', 'shi shou shi');
INSERT INTO `t_city` VALUES ('421083', '洪湖市', '421000', 'hong hu shi');
INSERT INTO `t_city` VALUES ('421087', '松滋市', '421000', 'song zi shi');
INSERT INTO `t_city` VALUES ('421088', '其它区', '421000', 'qi ta qu');
INSERT INTO `t_city` VALUES ('421100', '黄冈市', '420000', 'huang gang shi');
INSERT INTO `t_city` VALUES ('421102', '黄州区', '421100', 'huang zhou qu');
INSERT INTO `t_city` VALUES ('421121', '团风县', '421100', 'tuan feng xian');
INSERT INTO `t_city` VALUES ('421122', '红安县', '421100', 'hong an xian');
INSERT INTO `t_city` VALUES ('421123', '罗田县', '421100', 'luo tian xian');
INSERT INTO `t_city` VALUES ('421124', '英山县', '421100', 'ying shan xian');
INSERT INTO `t_city` VALUES ('421125', '浠水县', '421100', 'xi shui xian');
INSERT INTO `t_city` VALUES ('421126', '蕲春县', '421100', 'qi chun xian');
INSERT INTO `t_city` VALUES ('421127', '黄梅县', '421100', 'huang mei xian');
INSERT INTO `t_city` VALUES ('421181', '麻城市', '421100', 'ma cheng shi');
INSERT INTO `t_city` VALUES ('421182', '武穴市', '421100', 'wu xue shi');
INSERT INTO `t_city` VALUES ('421183', '其它区', '421100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('421200', '咸宁市', '420000', 'xian ning shi');
INSERT INTO `t_city` VALUES ('421202', '咸安区', '421200', 'xian an qu');
INSERT INTO `t_city` VALUES ('421221', '嘉鱼县', '421200', 'jia yu xian');
INSERT INTO `t_city` VALUES ('421222', '通城县', '421200', 'tong cheng xian');
INSERT INTO `t_city` VALUES ('421223', '崇阳县', '421200', 'chong yang xian');
INSERT INTO `t_city` VALUES ('421224', '通山县', '421200', 'tong shan xian');
INSERT INTO `t_city` VALUES ('421281', '赤壁市', '421200', 'chi bi shi');
INSERT INTO `t_city` VALUES ('421282', '温泉城区', '421200', 'wen quan cheng qu');
INSERT INTO `t_city` VALUES ('421283', '其它区', '421200', 'qi ta qu');
INSERT INTO `t_city` VALUES ('421300', '随州市', '420000', 'sui zhou shi');
INSERT INTO `t_city` VALUES ('421302', '曾都区', '421300', 'zeng du qu');
INSERT INTO `t_city` VALUES ('421321', '随县', '421300', 'sui xian');
INSERT INTO `t_city` VALUES ('421381', '广水市', '421300', 'guang shui shi');
INSERT INTO `t_city` VALUES ('421382', '其它区', '421300', 'qi ta qu');
INSERT INTO `t_city` VALUES ('422800', '恩施土家族苗族自治州', '420000', 'en shi tu jia zu miao zu zi zhi zhou');
INSERT INTO `t_city` VALUES ('422801', '恩施市', '422800', 'en shi shi');
INSERT INTO `t_city` VALUES ('422802', '利川市', '422800', 'li chuan shi');
INSERT INTO `t_city` VALUES ('422822', '建始县', '422800', 'jian shi xian');
INSERT INTO `t_city` VALUES ('422823', '巴东县', '422800', 'ba dong xian');
INSERT INTO `t_city` VALUES ('422825', '宣恩县', '422800', 'xuan en xian');
INSERT INTO `t_city` VALUES ('422826', '咸丰县', '422800', 'xian feng xian');
INSERT INTO `t_city` VALUES ('422827', '来凤县', '422800', 'lai feng xian');
INSERT INTO `t_city` VALUES ('422828', '鹤峰县', '422800', 'he feng xian');
INSERT INTO `t_city` VALUES ('422829', '其它区', '422800', 'qi ta qu');
INSERT INTO `t_city` VALUES ('429004', '仙桃市', '420000', 'xian tao shi');
INSERT INTO `t_city` VALUES ('429005', '潜江市', '420000', 'qian jiang shi');
INSERT INTO `t_city` VALUES ('429006', '天门市', '420000', 'tian men shi');
INSERT INTO `t_city` VALUES ('429021', '神农架林区', '420000', 'shen nong jia lin qu');
INSERT INTO `t_city` VALUES ('430000', '湖南省', '1', 'hu nan sheng');
INSERT INTO `t_city` VALUES ('430100', '长沙市', '430000', 'chang sha shi');
INSERT INTO `t_city` VALUES ('430102', '芙蓉区', '430100', 'fu rong qu');
INSERT INTO `t_city` VALUES ('430103', '天心区', '430100', 'tian xin qu');
INSERT INTO `t_city` VALUES ('430104', '岳麓区', '430100', 'yue lu qu');
INSERT INTO `t_city` VALUES ('430105', '开福区', '430100', 'kai fu qu');
INSERT INTO `t_city` VALUES ('430111', '雨花区', '430100', 'yu hua qu');
INSERT INTO `t_city` VALUES ('430121', '长沙县', '430100', 'chang sha xian');
INSERT INTO `t_city` VALUES ('430122', '望城县', '430100', 'wang cheng xian');
INSERT INTO `t_city` VALUES ('430124', '宁乡县', '430100', 'ning xiang xian');
INSERT INTO `t_city` VALUES ('430181', '浏阳市', '430100', 'liu yang shi');
INSERT INTO `t_city` VALUES ('430182', '其它区', '430100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('430200', '株洲市', '430000', 'zhu zhou shi');
INSERT INTO `t_city` VALUES ('430202', '荷塘区', '430200', 'he tang qu');
INSERT INTO `t_city` VALUES ('430203', '芦淞区', '430200', 'lu song qu');
INSERT INTO `t_city` VALUES ('430204', '石峰区', '430200', 'shi feng qu');
INSERT INTO `t_city` VALUES ('430211', '天元区', '430200', 'tian yuan qu');
INSERT INTO `t_city` VALUES ('430221', '株洲县', '430200', 'zhu zhou xian');
INSERT INTO `t_city` VALUES ('430223', '攸县', '430200', 'you xian');
INSERT INTO `t_city` VALUES ('430224', '茶陵县', '430200', 'cha ling xian');
INSERT INTO `t_city` VALUES ('430225', '炎陵县', '430200', 'yan ling xian');
INSERT INTO `t_city` VALUES ('430281', '醴陵市', '430200', 'li ling shi');
INSERT INTO `t_city` VALUES ('430282', '其它区', '430200', 'qi ta qu');
INSERT INTO `t_city` VALUES ('430300', '湘潭市', '430000', 'xiang tan shi');
INSERT INTO `t_city` VALUES ('430302', '雨湖区', '430300', 'yu hu qu');
INSERT INTO `t_city` VALUES ('430304', '岳塘区', '430300', 'yue tang qu');
INSERT INTO `t_city` VALUES ('430321', '湘潭县', '430300', 'xiang tan xian');
INSERT INTO `t_city` VALUES ('430381', '湘乡市', '430300', 'xiang xiang shi');
INSERT INTO `t_city` VALUES ('430382', '韶山市', '430300', 'shao shan shi');
INSERT INTO `t_city` VALUES ('430383', '其它区', '430300', 'qi ta qu');
INSERT INTO `t_city` VALUES ('430400', '衡阳市', '430000', 'heng yang shi');
INSERT INTO `t_city` VALUES ('430405', '珠晖区', '430400', 'zhu hui qu');
INSERT INTO `t_city` VALUES ('430406', '雁峰区', '430400', 'yan feng qu');
INSERT INTO `t_city` VALUES ('430407', '石鼓区', '430400', 'shi gu qu');
INSERT INTO `t_city` VALUES ('430408', '蒸湘区', '430400', 'zheng xiang qu');
INSERT INTO `t_city` VALUES ('430412', '南岳区', '430400', 'nan yue qu');
INSERT INTO `t_city` VALUES ('430421', '衡阳县', '430400', 'heng yang xian');
INSERT INTO `t_city` VALUES ('430422', '衡南县', '430400', 'heng nan xian');
INSERT INTO `t_city` VALUES ('430423', '衡山县', '430400', 'heng shan xian');
INSERT INTO `t_city` VALUES ('430424', '衡东县', '430400', 'heng dong xian');
INSERT INTO `t_city` VALUES ('430426', '祁东县', '430400', 'qi dong xian');
INSERT INTO `t_city` VALUES ('430481', '耒阳市', '430400', 'lei yang shi');
INSERT INTO `t_city` VALUES ('430482', '常宁市', '430400', 'chang ning shi');
INSERT INTO `t_city` VALUES ('430483', '其它区', '430400', 'qi ta qu');
INSERT INTO `t_city` VALUES ('430500', '邵阳市', '430000', 'shao yang shi');
INSERT INTO `t_city` VALUES ('430502', '双清区', '430500', 'shuang qing qu');
INSERT INTO `t_city` VALUES ('430503', '大祥区', '430500', 'da xiang qu');
INSERT INTO `t_city` VALUES ('430511', '北塔区', '430500', 'bei ta qu');
INSERT INTO `t_city` VALUES ('430521', '邵东县', '430500', 'shao dong xian');
INSERT INTO `t_city` VALUES ('430522', '新邵县', '430500', 'xin shao xian');
INSERT INTO `t_city` VALUES ('430523', '邵阳县', '430500', 'shao yang xian');
INSERT INTO `t_city` VALUES ('430524', '隆回县', '430500', 'long hui xian');
INSERT INTO `t_city` VALUES ('430525', '洞口县', '430500', 'dong kou xian');
INSERT INTO `t_city` VALUES ('430527', '绥宁县', '430500', 'sui ning xian');
INSERT INTO `t_city` VALUES ('430528', '新宁县', '430500', 'xin ning xian');
INSERT INTO `t_city` VALUES ('430529', '城步苗族自治县', '430500', 'cheng bu miao zu zi zhi xian');
INSERT INTO `t_city` VALUES ('430581', '武冈市', '430500', 'wu gang shi');
INSERT INTO `t_city` VALUES ('430582', '其它区', '430500', 'qi ta qu');
INSERT INTO `t_city` VALUES ('430600', '岳阳市', '430000', 'yue yang shi');
INSERT INTO `t_city` VALUES ('430602', '岳阳楼区', '430600', 'yue yang lou qu');
INSERT INTO `t_city` VALUES ('430603', '云溪区', '430600', 'yun xi qu');
INSERT INTO `t_city` VALUES ('430611', '君山区', '430600', 'jun shan qu');
INSERT INTO `t_city` VALUES ('430621', '岳阳县', '430600', 'yue yang xian');
INSERT INTO `t_city` VALUES ('430623', '华容县', '430600', 'hua rong xian');
INSERT INTO `t_city` VALUES ('430624', '湘阴县', '430600', 'xiang yin xian');
INSERT INTO `t_city` VALUES ('430626', '平江县', '430600', 'ping jiang xian');
INSERT INTO `t_city` VALUES ('430681', '汨罗市', '430600', 'mi luo shi');
INSERT INTO `t_city` VALUES ('430682', '临湘市', '430600', 'lin xiang shi');
INSERT INTO `t_city` VALUES ('430683', '其它区', '430600', 'qi ta qu');
INSERT INTO `t_city` VALUES ('430700', '常德市', '430000', 'chang de shi');
INSERT INTO `t_city` VALUES ('430702', '武陵区', '430700', 'wu ling qu');
INSERT INTO `t_city` VALUES ('430703', '鼎城区', '430700', 'ding cheng qu');
INSERT INTO `t_city` VALUES ('430721', '安乡县', '430700', 'an xiang xian');
INSERT INTO `t_city` VALUES ('430722', '汉寿县', '430700', 'han shou xian');
INSERT INTO `t_city` VALUES ('430723', '澧县', '430700', 'li xian');
INSERT INTO `t_city` VALUES ('430724', '临澧县', '430700', 'lin li xian');
INSERT INTO `t_city` VALUES ('430725', '桃源县', '430700', 'tao yuan xian');
INSERT INTO `t_city` VALUES ('430726', '石门县', '430700', 'shi men xian');
INSERT INTO `t_city` VALUES ('430781', '津市市', '430700', 'jin shi shi');
INSERT INTO `t_city` VALUES ('430782', '其它区', '430700', 'qi ta qu');
INSERT INTO `t_city` VALUES ('430800', '张家界市', '430000', 'zhang jia jie shi');
INSERT INTO `t_city` VALUES ('430802', '永定区', '430800', 'yong ding qu');
INSERT INTO `t_city` VALUES ('430811', '武陵源区', '430800', 'wu ling yuan qu');
INSERT INTO `t_city` VALUES ('430821', '慈利县', '430800', 'ci li xian');
INSERT INTO `t_city` VALUES ('430822', '桑植县', '430800', 'sang zhi xian');
INSERT INTO `t_city` VALUES ('430823', '其它区', '430800', 'qi ta qu');
INSERT INTO `t_city` VALUES ('430900', '益阳市', '430000', 'yi yang shi');
INSERT INTO `t_city` VALUES ('430902', '资阳区', '430900', 'zi yang qu');
INSERT INTO `t_city` VALUES ('430903', '赫山区', '430900', 'he shan qu');
INSERT INTO `t_city` VALUES ('430921', '南县', '430900', 'nan xian');
INSERT INTO `t_city` VALUES ('430922', '桃江县', '430900', 'tao jiang xian');
INSERT INTO `t_city` VALUES ('430923', '安化县', '430900', 'an hua xian');
INSERT INTO `t_city` VALUES ('430981', '沅江市', '430900', 'yuan jiang shi');
INSERT INTO `t_city` VALUES ('430982', '其它区', '430900', 'qi ta qu');
INSERT INTO `t_city` VALUES ('431000', '郴州市', '430000', 'chen zhou shi');
INSERT INTO `t_city` VALUES ('431002', '北湖区', '431000', 'bei hu qu');
INSERT INTO `t_city` VALUES ('431003', '苏仙区', '431000', 'su xian qu');
INSERT INTO `t_city` VALUES ('431021', '桂阳县', '431000', 'gui yang xian');
INSERT INTO `t_city` VALUES ('431022', '宜章县', '431000', 'yi zhang xian');
INSERT INTO `t_city` VALUES ('431023', '永兴县', '431000', 'yong xing xian');
INSERT INTO `t_city` VALUES ('431024', '嘉禾县', '431000', 'jia he xian');
INSERT INTO `t_city` VALUES ('431025', '临武县', '431000', 'lin wu xian');
INSERT INTO `t_city` VALUES ('431026', '汝城县', '431000', 'ru cheng xian');
INSERT INTO `t_city` VALUES ('431027', '桂东县', '431000', 'gui dong xian');
INSERT INTO `t_city` VALUES ('431028', '安仁县', '431000', 'an ren xian');
INSERT INTO `t_city` VALUES ('431081', '资兴市', '431000', 'zi xing shi');
INSERT INTO `t_city` VALUES ('431082', '其它区', '431000', 'qi ta qu');
INSERT INTO `t_city` VALUES ('431100', '永州市', '430000', 'yong zhou shi');
INSERT INTO `t_city` VALUES ('431102', '零陵区', '431100', 'ling ling qu');
INSERT INTO `t_city` VALUES ('431103', '冷水滩区', '431100', 'leng shui tan qu');
INSERT INTO `t_city` VALUES ('431121', '祁阳县', '431100', 'qi yang xian');
INSERT INTO `t_city` VALUES ('431122', '东安县', '431100', 'dong an xian');
INSERT INTO `t_city` VALUES ('431123', '双牌县', '431100', 'shuang pai xian');
INSERT INTO `t_city` VALUES ('431124', '道县', '431100', 'dao xian');
INSERT INTO `t_city` VALUES ('431125', '江永县', '431100', 'jiang yong xian');
INSERT INTO `t_city` VALUES ('431126', '宁远县', '431100', 'ning yuan xian');
INSERT INTO `t_city` VALUES ('431127', '蓝山县', '431100', 'lan shan xian');
INSERT INTO `t_city` VALUES ('431128', '新田县', '431100', 'xin tian xian');
INSERT INTO `t_city` VALUES ('431129', '江华瑶族自治县', '431100', 'jiang hua yao zu zi zhi xian');
INSERT INTO `t_city` VALUES ('431130', '其它区', '431100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('431200', '怀化市', '430000', 'huai hua shi');
INSERT INTO `t_city` VALUES ('431202', '鹤城区', '431200', 'he cheng qu');
INSERT INTO `t_city` VALUES ('431221', '中方县', '431200', 'zhong fang xian');
INSERT INTO `t_city` VALUES ('431222', '沅陵县', '431200', 'yuan ling xian');
INSERT INTO `t_city` VALUES ('431223', '辰溪县', '431200', 'chen xi xian');
INSERT INTO `t_city` VALUES ('431224', '溆浦县', '431200', 'xu pu xian');
INSERT INTO `t_city` VALUES ('431225', '会同县', '431200', 'hui tong xian');
INSERT INTO `t_city` VALUES ('431226', '麻阳苗族自治县', '431200', 'ma yang miao zu zi zhi xian');
INSERT INTO `t_city` VALUES ('431227', '新晃侗族自治县', '431200', 'xin huang dong zu zi zhi xian');
INSERT INTO `t_city` VALUES ('431228', '芷江侗族自治县', '431200', 'zhi jiang dong zu zi zhi xian');
INSERT INTO `t_city` VALUES ('431229', '靖州苗族侗族自治县', '431200', 'jing zhou miao zu dong zu zi zhi xian');
INSERT INTO `t_city` VALUES ('431230', '通道侗族自治县', '431200', 'tong dao dong zu zi zhi xian');
INSERT INTO `t_city` VALUES ('431281', '洪江市', '431200', 'hong jiang shi');
INSERT INTO `t_city` VALUES ('431282', '其它区', '431200', 'qi ta qu');
INSERT INTO `t_city` VALUES ('431300', '娄底市', '430000', 'lou di shi');
INSERT INTO `t_city` VALUES ('431302', '娄星区', '431300', 'lou xing qu');
INSERT INTO `t_city` VALUES ('431321', '双峰县', '431300', 'shuang feng xian');
INSERT INTO `t_city` VALUES ('431322', '新化县', '431300', 'xin hua xian');
INSERT INTO `t_city` VALUES ('431381', '冷水江市', '431300', 'leng shui jiang shi');
INSERT INTO `t_city` VALUES ('431382', '涟源市', '431300', 'lian yuan shi');
INSERT INTO `t_city` VALUES ('431383', '其它区', '431300', 'qi ta qu');
INSERT INTO `t_city` VALUES ('433100', '湘西土家族苗族自治州', '430000', 'xiang xi tu jia zu miao zu zi zhi zhou');
INSERT INTO `t_city` VALUES ('433101', '吉首市', '433100', 'ji shou shi');
INSERT INTO `t_city` VALUES ('433122', '泸溪县', '433100', 'lu xi xian');
INSERT INTO `t_city` VALUES ('433123', '凤凰县', '433100', 'feng huang xian');
INSERT INTO `t_city` VALUES ('433124', '花垣县', '433100', 'hua yuan xian');
INSERT INTO `t_city` VALUES ('433125', '保靖县', '433100', 'bao jing xian');
INSERT INTO `t_city` VALUES ('433126', '古丈县', '433100', 'gu zhang xian');
INSERT INTO `t_city` VALUES ('433127', '永顺县', '433100', 'yong shun xian');
INSERT INTO `t_city` VALUES ('433130', '龙山县', '433100', 'long shan xian');
INSERT INTO `t_city` VALUES ('433131', '其它区', '433100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('440000', '广东省', '1', 'guang dong sheng');
INSERT INTO `t_city` VALUES ('440100', '广州市', '440000', 'guang zhou shi');
INSERT INTO `t_city` VALUES ('440103', '荔湾区', '440100', 'li wan qu');
INSERT INTO `t_city` VALUES ('440104', '越秀区', '440100', 'yue xiu qu');
INSERT INTO `t_city` VALUES ('440105', '海珠区', '440100', 'hai zhu qu');
INSERT INTO `t_city` VALUES ('440106', '天河区', '440100', 'tian he qu');
INSERT INTO `t_city` VALUES ('440111', '白云区', '440100', 'bai yun qu');
INSERT INTO `t_city` VALUES ('440112', '黄埔区', '440100', 'huang pu qu');
INSERT INTO `t_city` VALUES ('440113', '番禺区', '440100', 'pan yu qu');
INSERT INTO `t_city` VALUES ('440114', '花都区', '440100', 'hua du qu');
INSERT INTO `t_city` VALUES ('440115', '南沙区', '440100', 'nan sha qu');
INSERT INTO `t_city` VALUES ('440116', '萝岗区', '440100', 'luo gang qu');
INSERT INTO `t_city` VALUES ('440183', '增城市', '440100', 'zeng cheng shi');
INSERT INTO `t_city` VALUES ('440184', '从化市', '440100', 'cong hua shi');
INSERT INTO `t_city` VALUES ('440188', '东山区', '440100', 'dong shan qu');
INSERT INTO `t_city` VALUES ('440189', '其它区', '440100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('440200', '韶关市', '440000', 'shao guan shi');
INSERT INTO `t_city` VALUES ('440203', '武江区', '440200', 'wu jiang qu');
INSERT INTO `t_city` VALUES ('440204', '浈江区', '440200', 'zhen jiang qu');
INSERT INTO `t_city` VALUES ('440205', '曲江区', '440200', 'qu jiang qu');
INSERT INTO `t_city` VALUES ('440222', '始兴县', '440200', 'shi xing xian');
INSERT INTO `t_city` VALUES ('440224', '仁化县', '440200', 'ren hua xian');
INSERT INTO `t_city` VALUES ('440229', '翁源县', '440200', 'weng yuan xian');
INSERT INTO `t_city` VALUES ('440232', '乳源瑶族自治县', '440200', 'ru yuan yao zu zi zhi xian');
INSERT INTO `t_city` VALUES ('440233', '新丰县', '440200', 'xin feng xian');
INSERT INTO `t_city` VALUES ('440281', '乐昌市', '440200', 'le chang shi');
INSERT INTO `t_city` VALUES ('440282', '南雄市', '440200', 'nan xiong shi');
INSERT INTO `t_city` VALUES ('440283', '其它区', '440200', 'qi ta qu');
INSERT INTO `t_city` VALUES ('440300', '深圳市', '440000', 'shen zhen shi');
INSERT INTO `t_city` VALUES ('440303', '罗湖区', '440300', 'luo hu qu');
INSERT INTO `t_city` VALUES ('440304', '福田区', '440300', 'fu tian qu');
INSERT INTO `t_city` VALUES ('440305', '南山区', '440300', 'nan shan qu');
INSERT INTO `t_city` VALUES ('440306', '宝安区', '440300', 'bao an qu');
INSERT INTO `t_city` VALUES ('440307', '龙岗区', '440300', 'long gang qu');
INSERT INTO `t_city` VALUES ('440308', '盐田区', '440300', 'yan tian qu');
INSERT INTO `t_city` VALUES ('440309', '其它区', '440300', 'qi ta qu');
INSERT INTO `t_city` VALUES ('440400', '珠海市', '440000', 'zhu hai shi');
INSERT INTO `t_city` VALUES ('440402', '香洲区', '440400', 'xiang zhou qu');
INSERT INTO `t_city` VALUES ('440403', '斗门区', '440400', 'dou men qu');
INSERT INTO `t_city` VALUES ('440404', '金湾区', '440400', 'jin wan qu');
INSERT INTO `t_city` VALUES ('440486', '金唐区', '440400', 'jin tang qu');
INSERT INTO `t_city` VALUES ('440487', '南湾区', '440400', 'nan wan qu');
INSERT INTO `t_city` VALUES ('440488', '其它区', '440400', 'qi ta qu');
INSERT INTO `t_city` VALUES ('440500', '汕头市', '440000', 'shan tou shi');
INSERT INTO `t_city` VALUES ('440507', '龙湖区', '440500', 'long hu qu');
INSERT INTO `t_city` VALUES ('440511', '金平区', '440500', 'jin ping qu');
INSERT INTO `t_city` VALUES ('440512', '濠江区', '440500', 'hao jiang qu');
INSERT INTO `t_city` VALUES ('440513', '潮阳区', '440500', 'chao yang qu');
INSERT INTO `t_city` VALUES ('440514', '潮南区', '440500', 'chao nan qu');
INSERT INTO `t_city` VALUES ('440515', '澄海区', '440500', 'cheng hai qu');
INSERT INTO `t_city` VALUES ('440523', '南澳县', '440500', 'nan ao xian');
INSERT INTO `t_city` VALUES ('440524', '其它区', '440500', 'qi ta qu');
INSERT INTO `t_city` VALUES ('440600', '佛山市', '440000', 'fo shan shi');
INSERT INTO `t_city` VALUES ('440604', '禅城区', '440600', 'chan cheng qu');
INSERT INTO `t_city` VALUES ('440605', '南海区', '440600', 'nan hai qu');
INSERT INTO `t_city` VALUES ('440606', '顺德区', '440600', 'shun de qu');
INSERT INTO `t_city` VALUES ('440607', '三水区', '440600', 'san shui qu');
INSERT INTO `t_city` VALUES ('440608', '高明区', '440600', 'gao ming qu');
INSERT INTO `t_city` VALUES ('440609', '其它区', '440600', 'qi ta qu');
INSERT INTO `t_city` VALUES ('440700', '江门市', '440000', 'jiang men shi');
INSERT INTO `t_city` VALUES ('440703', '蓬江区', '440700', 'peng jiang qu');
INSERT INTO `t_city` VALUES ('440704', '江海区', '440700', 'jiang hai qu');
INSERT INTO `t_city` VALUES ('440705', '新会区', '440700', 'xin hui qu');
INSERT INTO `t_city` VALUES ('440781', '台山市', '440700', 'tai shan shi');
INSERT INTO `t_city` VALUES ('440783', '开平市', '440700', 'kai ping shi');
INSERT INTO `t_city` VALUES ('440784', '鹤山市', '440700', 'he shan shi');
INSERT INTO `t_city` VALUES ('440785', '恩平市', '440700', 'en ping shi');
INSERT INTO `t_city` VALUES ('440786', '其它区', '440700', 'qi ta qu');
INSERT INTO `t_city` VALUES ('440800', '湛江市', '440000', 'zhan jiang shi');
INSERT INTO `t_city` VALUES ('440802', '赤坎区', '440800', 'chi kan qu');
INSERT INTO `t_city` VALUES ('440803', '霞山区', '440800', 'xia shan qu');
INSERT INTO `t_city` VALUES ('440804', '坡头区', '440800', 'po tou qu');
INSERT INTO `t_city` VALUES ('440811', '麻章区', '440800', 'ma zhang qu');
INSERT INTO `t_city` VALUES ('440823', '遂溪县', '440800', 'sui xi xian');
INSERT INTO `t_city` VALUES ('440825', '徐闻县', '440800', 'xu wen xian');
INSERT INTO `t_city` VALUES ('440881', '廉江市', '440800', 'lian jiang shi');
INSERT INTO `t_city` VALUES ('440882', '雷州市', '440800', 'lei zhou shi');
INSERT INTO `t_city` VALUES ('440883', '吴川市', '440800', 'wu chuan shi');
INSERT INTO `t_city` VALUES ('440884', '其它区', '440800', 'qi ta qu');
INSERT INTO `t_city` VALUES ('440900', '茂名市', '440000', 'mao ming shi');
INSERT INTO `t_city` VALUES ('440902', '茂南区', '440900', 'mao nan qu');
INSERT INTO `t_city` VALUES ('440903', '茂港区', '440900', 'mao gang qu');
INSERT INTO `t_city` VALUES ('440923', '电白县', '440900', 'dian bai xian');
INSERT INTO `t_city` VALUES ('440981', '高州市', '440900', 'gao zhou shi');
INSERT INTO `t_city` VALUES ('440982', '化州市', '440900', 'hua zhou shi');
INSERT INTO `t_city` VALUES ('440983', '信宜市', '440900', 'shen yi shi');
INSERT INTO `t_city` VALUES ('440984', '其它区', '440900', 'qi ta qu');
INSERT INTO `t_city` VALUES ('441200', '肇庆市', '440000', 'zhao qing shi');
INSERT INTO `t_city` VALUES ('441202', '端州区', '441200', 'duan zhou qu');
INSERT INTO `t_city` VALUES ('441203', '鼎湖区', '441200', 'ding hu qu');
INSERT INTO `t_city` VALUES ('441223', '广宁县', '441200', 'guang ning xian');
INSERT INTO `t_city` VALUES ('441224', '怀集县', '441200', 'huai ji xian');
INSERT INTO `t_city` VALUES ('441225', '封开县', '441200', 'feng kai xian');
INSERT INTO `t_city` VALUES ('441226', '德庆县', '441200', 'de qing xian');
INSERT INTO `t_city` VALUES ('441283', '高要市', '441200', 'gao yao shi');
INSERT INTO `t_city` VALUES ('441284', '四会市', '441200', 'si hui shi');
INSERT INTO `t_city` VALUES ('441285', '其它区', '441200', 'qi ta qu');
INSERT INTO `t_city` VALUES ('441300', '惠州市', '440000', 'hui zhou shi');
INSERT INTO `t_city` VALUES ('441302', '惠城区', '441300', 'hui cheng qu');
INSERT INTO `t_city` VALUES ('441303', '惠阳区', '441300', 'hui yang qu');
INSERT INTO `t_city` VALUES ('441322', '博罗县', '441300', 'bo luo xian');
INSERT INTO `t_city` VALUES ('441323', '惠东县', '441300', 'hui dong xian');
INSERT INTO `t_city` VALUES ('441324', '龙门县', '441300', 'long men xian');
INSERT INTO `t_city` VALUES ('441325', '其它区', '441300', 'qi ta qu');
INSERT INTO `t_city` VALUES ('441400', '梅州市', '440000', 'mei zhou shi');
INSERT INTO `t_city` VALUES ('441402', '梅江区', '441400', 'mei jiang qu');
INSERT INTO `t_city` VALUES ('441421', '梅县', '441400', 'mei xian');
INSERT INTO `t_city` VALUES ('441422', '大埔县', '441400', 'da bu xian');
INSERT INTO `t_city` VALUES ('441423', '丰顺县', '441400', 'feng shun xian');
INSERT INTO `t_city` VALUES ('441424', '五华县', '441400', 'wu hua xian');
INSERT INTO `t_city` VALUES ('441426', '平远县', '441400', 'ping yuan xian');
INSERT INTO `t_city` VALUES ('441427', '蕉岭县', '441400', 'jiao ling xian');
INSERT INTO `t_city` VALUES ('441481', '兴宁市', '441400', 'xing ning shi');
INSERT INTO `t_city` VALUES ('441482', '其它区', '441400', 'qi ta qu');
INSERT INTO `t_city` VALUES ('441500', '汕尾市', '440000', 'shan wei shi');
INSERT INTO `t_city` VALUES ('441502', '城区', '441500', 'cheng qu');
INSERT INTO `t_city` VALUES ('441521', '海丰县', '441500', 'hai feng xian');
INSERT INTO `t_city` VALUES ('441523', '陆河县', '441500', 'lu he xian');
INSERT INTO `t_city` VALUES ('441581', '陆丰市', '441500', 'lu feng shi');
INSERT INTO `t_city` VALUES ('441582', '其它区', '441500', 'qi ta qu');
INSERT INTO `t_city` VALUES ('441600', '河源市', '440000', 'he yuan shi');
INSERT INTO `t_city` VALUES ('441602', '源城区', '441600', 'yuan cheng qu');
INSERT INTO `t_city` VALUES ('441621', '紫金县', '441600', 'zi jin xian');
INSERT INTO `t_city` VALUES ('441622', '龙川县', '441600', 'long chuan xian');
INSERT INTO `t_city` VALUES ('441623', '连平县', '441600', 'lian ping xian');
INSERT INTO `t_city` VALUES ('441624', '和平县', '441600', 'he ping xian');
INSERT INTO `t_city` VALUES ('441625', '东源县', '441600', 'dong yuan xian');
INSERT INTO `t_city` VALUES ('441626', '其它区', '441600', 'qi ta qu');
INSERT INTO `t_city` VALUES ('441700', '阳江市', '440000', 'yang jiang shi');
INSERT INTO `t_city` VALUES ('441702', '江城区', '441700', 'jiang cheng qu');
INSERT INTO `t_city` VALUES ('441721', '阳西县', '441700', 'yang xi xian');
INSERT INTO `t_city` VALUES ('441723', '阳东县', '441700', 'yang dong xian');
INSERT INTO `t_city` VALUES ('441781', '阳春市', '441700', 'yang chun shi');
INSERT INTO `t_city` VALUES ('441782', '其它区', '441700', 'qi ta qu');
INSERT INTO `t_city` VALUES ('441800', '清远市', '440000', 'qing yuan shi');
INSERT INTO `t_city` VALUES ('441802', '清城区', '441800', 'qing cheng qu');
INSERT INTO `t_city` VALUES ('441821', '佛冈县', '441800', 'fo gang xian');
INSERT INTO `t_city` VALUES ('441823', '阳山县', '441800', 'yang shan xian');
INSERT INTO `t_city` VALUES ('441825', '连山壮族瑶族自治县', '441800', 'lian shan zhuang zu yao zu zi zhi xian');
INSERT INTO `t_city` VALUES ('441826', '连南瑶族自治县', '441800', 'lian nan yao zu zi zhi xian');
INSERT INTO `t_city` VALUES ('441827', '清新县', '441800', 'qing xin xian');
INSERT INTO `t_city` VALUES ('441881', '英德市', '441800', 'ying de shi');
INSERT INTO `t_city` VALUES ('441882', '连州市', '441800', 'lian zhou shi');
INSERT INTO `t_city` VALUES ('441883', '其它区', '441800', 'qi ta qu');
INSERT INTO `t_city` VALUES ('441900', '东莞市', '440000', 'dong guan shi');
INSERT INTO `t_city` VALUES ('442000', '中山市', '440000', 'zhong shan shi');
INSERT INTO `t_city` VALUES ('445100', '潮州市', '440000', 'chao zhou shi');
INSERT INTO `t_city` VALUES ('445102', '湘桥区', '445100', 'xiang qiao qu');
INSERT INTO `t_city` VALUES ('445121', '潮安县', '445100', 'chao an xian');
INSERT INTO `t_city` VALUES ('445122', '饶平县', '445100', 'rao ping xian');
INSERT INTO `t_city` VALUES ('445185', '枫溪区', '445100', 'feng xi qu');
INSERT INTO `t_city` VALUES ('445186', '其它区', '445100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('445200', '揭阳市', '440000', 'jie yang shi');
INSERT INTO `t_city` VALUES ('445202', '榕城区', '445200', 'rong cheng qu');
INSERT INTO `t_city` VALUES ('445221', '揭东县', '445200', 'jie dong xian');
INSERT INTO `t_city` VALUES ('445222', '揭西县', '445200', 'jie xi xian');
INSERT INTO `t_city` VALUES ('445224', '惠来县', '445200', 'hui lai xian');
INSERT INTO `t_city` VALUES ('445281', '普宁市', '445200', 'pu ning shi');
INSERT INTO `t_city` VALUES ('445284', '东山区', '445200', 'dong shan qu');
INSERT INTO `t_city` VALUES ('445285', '其它区', '445200', 'qi ta qu');
INSERT INTO `t_city` VALUES ('445300', '云浮市', '440000', 'yun fu shi');
INSERT INTO `t_city` VALUES ('445302', '云城区', '445300', 'yun cheng qu');
INSERT INTO `t_city` VALUES ('445321', '新兴县', '445300', 'xin xing xian');
INSERT INTO `t_city` VALUES ('445322', '郁南县', '445300', 'yu nan xian');
INSERT INTO `t_city` VALUES ('445323', '云安县', '445300', 'yun an xian');
INSERT INTO `t_city` VALUES ('445381', '罗定市', '445300', 'luo ding shi');
INSERT INTO `t_city` VALUES ('445382', '其它区', '445300', 'qi ta qu');
INSERT INTO `t_city` VALUES ('450000', '广西壮族自治区', '1', 'guang xi zhuang zu zi zhi qu');
INSERT INTO `t_city` VALUES ('450100', '南宁市', '450000', 'nan ning shi');
INSERT INTO `t_city` VALUES ('450102', '兴宁区', '450100', 'xing ning qu');
INSERT INTO `t_city` VALUES ('450103', '青秀区', '450100', 'qing xiu qu');
INSERT INTO `t_city` VALUES ('450105', '江南区', '450100', 'jiang nan qu');
INSERT INTO `t_city` VALUES ('450107', '西乡塘区', '450100', 'xi xiang tang qu');
INSERT INTO `t_city` VALUES ('450108', '良庆区', '450100', 'liang qing qu');
INSERT INTO `t_city` VALUES ('450109', '邕宁区', '450100', 'yong ning qu');
INSERT INTO `t_city` VALUES ('450122', '武鸣县', '450100', 'wu ming xian');
INSERT INTO `t_city` VALUES ('450123', '隆安县', '450100', 'long an xian');
INSERT INTO `t_city` VALUES ('450124', '马山县', '450100', 'ma shan xian');
INSERT INTO `t_city` VALUES ('450125', '上林县', '450100', 'shang lin xian');
INSERT INTO `t_city` VALUES ('450126', '宾阳县', '450100', 'bin yang xian');
INSERT INTO `t_city` VALUES ('450127', '横县', '450100', 'heng xian');
INSERT INTO `t_city` VALUES ('450128', '其它区', '450100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('450200', '柳州市', '450000', 'liu zhou shi');
INSERT INTO `t_city` VALUES ('450202', '城中区', '450200', 'cheng zhong qu');
INSERT INTO `t_city` VALUES ('450203', '鱼峰区', '450200', 'yu feng qu');
INSERT INTO `t_city` VALUES ('450204', '柳南区', '450200', 'liu nan qu');
INSERT INTO `t_city` VALUES ('450205', '柳北区', '450200', 'liu bei qu');
INSERT INTO `t_city` VALUES ('450221', '柳江县', '450200', 'liu jiang xian');
INSERT INTO `t_city` VALUES ('450222', '柳城县', '450200', 'liu cheng xian');
INSERT INTO `t_city` VALUES ('450223', '鹿寨县', '450200', 'lu zhai xian');
INSERT INTO `t_city` VALUES ('450224', '融安县', '450200', 'rong an xian');
INSERT INTO `t_city` VALUES ('450225', '融水苗族自治县', '450200', 'rong shui miao zu zi zhi xian');
INSERT INTO `t_city` VALUES ('450226', '三江侗族自治县', '450200', 'san jiang dong zu zi zhi xian');
INSERT INTO `t_city` VALUES ('450227', '其它区', '450200', 'qi ta qu');
INSERT INTO `t_city` VALUES ('450300', '桂林市', '450000', 'gui lin shi');
INSERT INTO `t_city` VALUES ('450302', '秀峰区', '450300', 'xiu feng qu');
INSERT INTO `t_city` VALUES ('450303', '叠彩区', '450300', 'die cai qu');
INSERT INTO `t_city` VALUES ('450304', '象山区', '450300', 'xiang shan qu');
INSERT INTO `t_city` VALUES ('450305', '七星区', '450300', 'qi xing qu');
INSERT INTO `t_city` VALUES ('450311', '雁山区', '450300', 'yan shan qu');
INSERT INTO `t_city` VALUES ('450321', '阳朔县', '450300', 'yang shuo xian');
INSERT INTO `t_city` VALUES ('450322', '临桂县', '450300', 'lin gui xian');
INSERT INTO `t_city` VALUES ('450323', '灵川县', '450300', 'ling chuan xian');
INSERT INTO `t_city` VALUES ('450324', '全州县', '450300', 'quan zhou xian');
INSERT INTO `t_city` VALUES ('450325', '兴安县', '450300', 'xing an xian');
INSERT INTO `t_city` VALUES ('450326', '永福县', '450300', 'yong fu xian');
INSERT INTO `t_city` VALUES ('450327', '灌阳县', '450300', 'guan yang xian');
INSERT INTO `t_city` VALUES ('450328', '龙胜各族自治县', '450300', 'long sheng ge zu zi zhi xian');
INSERT INTO `t_city` VALUES ('450329', '资源县', '450300', 'zi yuan xian');
INSERT INTO `t_city` VALUES ('450330', '平乐县', '450300', 'ping le xian');
INSERT INTO `t_city` VALUES ('450331', '荔浦县', '450300', 'li pu xian');
INSERT INTO `t_city` VALUES ('450332', '恭城瑶族自治县', '450300', 'gong cheng yao zu zi zhi xian');
INSERT INTO `t_city` VALUES ('450333', '其它区', '450300', 'qi ta qu');
INSERT INTO `t_city` VALUES ('450400', '梧州市', '450000', 'wu zhou shi');
INSERT INTO `t_city` VALUES ('450403', '万秀区', '450400', 'wan xiu qu');
INSERT INTO `t_city` VALUES ('450404', '蝶山区', '450400', 'die shan qu');
INSERT INTO `t_city` VALUES ('450405', '长洲区', '450400', 'chang zhou qu');
INSERT INTO `t_city` VALUES ('450421', '苍梧县', '450400', 'cang wu xian');
INSERT INTO `t_city` VALUES ('450422', '藤县', '450400', 'teng xian');
INSERT INTO `t_city` VALUES ('450423', '蒙山县', '450400', 'meng shan xian');
INSERT INTO `t_city` VALUES ('450481', '岑溪市', '450400', 'cen xi shi');
INSERT INTO `t_city` VALUES ('450482', '其它区', '450400', 'qi ta qu');
INSERT INTO `t_city` VALUES ('450500', '北海市', '450000', 'bei hai shi');
INSERT INTO `t_city` VALUES ('450502', '海城区', '450500', 'hai cheng qu');
INSERT INTO `t_city` VALUES ('450503', '银海区', '450500', 'yin hai qu');
INSERT INTO `t_city` VALUES ('450512', '铁山港区', '450500', 'tie shan gang qu');
INSERT INTO `t_city` VALUES ('450521', '合浦县', '450500', 'he pu xian');
INSERT INTO `t_city` VALUES ('450522', '其它区', '450500', 'qi ta qu');
INSERT INTO `t_city` VALUES ('450600', '防城港市', '450000', 'fang cheng gang shi');
INSERT INTO `t_city` VALUES ('450602', '港口区', '450600', 'gang kou qu');
INSERT INTO `t_city` VALUES ('450603', '防城区', '450600', 'fang cheng qu');
INSERT INTO `t_city` VALUES ('450621', '上思县', '450600', 'shang si xian');
INSERT INTO `t_city` VALUES ('450681', '东兴市', '450600', 'dong xing shi');
INSERT INTO `t_city` VALUES ('450682', '其它区', '450600', 'qi ta qu');
INSERT INTO `t_city` VALUES ('450700', '钦州市', '450000', 'qin zhou shi');
INSERT INTO `t_city` VALUES ('450702', '钦南区', '450700', 'qin nan qu');
INSERT INTO `t_city` VALUES ('450703', '钦北区', '450700', 'qin bei qu');
INSERT INTO `t_city` VALUES ('450721', '灵山县', '450700', 'ling shan xian');
INSERT INTO `t_city` VALUES ('450722', '浦北县', '450700', 'pu bei xian');
INSERT INTO `t_city` VALUES ('450723', '其它区', '450700', 'qi ta qu');
INSERT INTO `t_city` VALUES ('450800', '贵港市', '450000', 'gui gang shi');
INSERT INTO `t_city` VALUES ('450802', '港北区', '450800', 'gang bei qu');
INSERT INTO `t_city` VALUES ('450803', '港南区', '450800', 'gang nan qu');
INSERT INTO `t_city` VALUES ('450804', '覃塘区', '450800', 'qin tang qu');
INSERT INTO `t_city` VALUES ('450821', '平南县', '450800', 'ping nan xian');
INSERT INTO `t_city` VALUES ('450881', '桂平市', '450800', 'gui ping shi');
INSERT INTO `t_city` VALUES ('450882', '其它区', '450800', 'qi ta qu');
INSERT INTO `t_city` VALUES ('450900', '玉林市', '450000', 'yu lin shi');
INSERT INTO `t_city` VALUES ('450902', '玉州区', '450900', 'yu zhou qu');
INSERT INTO `t_city` VALUES ('450921', '容县', '450900', 'rong xian');
INSERT INTO `t_city` VALUES ('450922', '陆川县', '450900', 'lu chuan xian');
INSERT INTO `t_city` VALUES ('450923', '博白县', '450900', 'bo bai xian');
INSERT INTO `t_city` VALUES ('450924', '兴业县', '450900', 'xing ye xian');
INSERT INTO `t_city` VALUES ('450981', '北流市', '450900', 'bei liu shi');
INSERT INTO `t_city` VALUES ('450982', '其它区', '450900', 'qi ta qu');
INSERT INTO `t_city` VALUES ('451000', '百色市', '450000', 'bo se shi');
INSERT INTO `t_city` VALUES ('451002', '右江区', '451000', 'you jiang qu');
INSERT INTO `t_city` VALUES ('451021', '田阳县', '451000', 'tian yang xian');
INSERT INTO `t_city` VALUES ('451022', '田东县', '451000', 'tian dong xian');
INSERT INTO `t_city` VALUES ('451023', '平果县', '451000', 'ping guo xian');
INSERT INTO `t_city` VALUES ('451024', '德保县', '451000', 'de bao xian');
INSERT INTO `t_city` VALUES ('451025', '靖西县', '451000', 'jing xi xian');
INSERT INTO `t_city` VALUES ('451026', '那坡县', '451000', 'na po xian');
INSERT INTO `t_city` VALUES ('451027', '凌云县', '451000', 'ling yun xian');
INSERT INTO `t_city` VALUES ('451028', '乐业县', '451000', 'le ye xian');
INSERT INTO `t_city` VALUES ('451029', '田林县', '451000', 'tian lin xian');
INSERT INTO `t_city` VALUES ('451030', '西林县', '451000', 'xi lin xian');
INSERT INTO `t_city` VALUES ('451031', '隆林各族自治县', '451000', 'long lin ge zu zi zhi xian');
INSERT INTO `t_city` VALUES ('451032', '其它区', '451000', 'qi ta qu');
INSERT INTO `t_city` VALUES ('451100', '贺州市', '450000', 'he zhou shi');
INSERT INTO `t_city` VALUES ('451102', '八步区', '451100', 'ba bu qu');
INSERT INTO `t_city` VALUES ('451121', '昭平县', '451100', 'zhao ping xian');
INSERT INTO `t_city` VALUES ('451122', '钟山县', '451100', 'zhong shan xian');
INSERT INTO `t_city` VALUES ('451123', '富川瑶族自治县', '451100', 'fu chuan yao zu zi zhi xian');
INSERT INTO `t_city` VALUES ('451124', '其它区', '451100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('451200', '河池市', '450000', 'he chi shi');
INSERT INTO `t_city` VALUES ('451202', '金城江区', '451200', 'jin cheng jiang qu');
INSERT INTO `t_city` VALUES ('451221', '南丹县', '451200', 'nan dan xian');
INSERT INTO `t_city` VALUES ('451222', '天峨县', '451200', 'tian e xian');
INSERT INTO `t_city` VALUES ('451223', '凤山县', '451200', 'feng shan xian');
INSERT INTO `t_city` VALUES ('451224', '东兰县', '451200', 'dong lan xian');
INSERT INTO `t_city` VALUES ('451225', '罗城仫佬族自治县', '451200', 'luo cheng mu lao zu zi zhi xian');
INSERT INTO `t_city` VALUES ('451226', '环江毛南族自治县', '451200', 'huan jiang mao nan zu zi zhi xian');
INSERT INTO `t_city` VALUES ('451227', '巴马瑶族自治县', '451200', 'ba ma yao zu zi zhi xian');
INSERT INTO `t_city` VALUES ('451228', '都安瑶族自治县', '451200', 'du an yao zu zi zhi xian');
INSERT INTO `t_city` VALUES ('451229', '大化瑶族自治县', '451200', 'da hua yao zu zi zhi xian');
INSERT INTO `t_city` VALUES ('451281', '宜州市', '451200', 'yi zhou shi');
INSERT INTO `t_city` VALUES ('451282', '其它区', '451200', 'qi ta qu');
INSERT INTO `t_city` VALUES ('451300', '来宾市', '450000', 'lai bin shi');
INSERT INTO `t_city` VALUES ('451302', '兴宾区', '451300', 'xing bin qu');
INSERT INTO `t_city` VALUES ('451321', '忻城县', '451300', 'xin cheng xian');
INSERT INTO `t_city` VALUES ('451322', '象州县', '451300', 'xiang zhou xian');
INSERT INTO `t_city` VALUES ('451323', '武宣县', '451300', 'wu xuan xian');
INSERT INTO `t_city` VALUES ('451324', '金秀瑶族自治县', '451300', 'jin xiu yao zu zi zhi xian');
INSERT INTO `t_city` VALUES ('451381', '合山市', '451300', 'he shan shi');
INSERT INTO `t_city` VALUES ('451382', '其它区', '451300', 'qi ta qu');
INSERT INTO `t_city` VALUES ('451400', '崇左市', '450000', 'chong zuo shi');
INSERT INTO `t_city` VALUES ('451402', '江州区', '451400', 'jiang zhou qu');
INSERT INTO `t_city` VALUES ('451421', '扶绥县', '451400', 'fu sui xian');
INSERT INTO `t_city` VALUES ('451422', '宁明县', '451400', 'ning ming xian');
INSERT INTO `t_city` VALUES ('451423', '龙州县', '451400', 'long zhou xian');
INSERT INTO `t_city` VALUES ('451424', '大新县', '451400', 'da xin xian');
INSERT INTO `t_city` VALUES ('451425', '天等县', '451400', 'tian deng xian');
INSERT INTO `t_city` VALUES ('451481', '凭祥市', '451400', 'ping xiang shi');
INSERT INTO `t_city` VALUES ('451482', '其它区', '451400', 'qi ta qu');
INSERT INTO `t_city` VALUES ('460000', '海南省', '1', 'hai nan sheng');
INSERT INTO `t_city` VALUES ('460100', '海口市', '460000', 'hai kou shi');
INSERT INTO `t_city` VALUES ('460105', '秀英区', '460100', 'xiu ying qu');
INSERT INTO `t_city` VALUES ('460106', '龙华区', '460100', 'long hua qu');
INSERT INTO `t_city` VALUES ('460107', '琼山区', '460100', 'qiong shan qu');
INSERT INTO `t_city` VALUES ('460108', '美兰区', '460100', 'mei lan qu');
INSERT INTO `t_city` VALUES ('460109', '其它区', '460100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('460200', '三亚市', '460000', 'san ya shi');
INSERT INTO `t_city` VALUES ('469001', '五指山市', '460000', 'wu zhi shan shi');
INSERT INTO `t_city` VALUES ('469002', '琼海市', '460000', 'qiong hai shi');
INSERT INTO `t_city` VALUES ('469003', '儋州市', '460000', 'dan zhou shi');
INSERT INTO `t_city` VALUES ('469005', '文昌市', '460000', 'wen chang shi');
INSERT INTO `t_city` VALUES ('469006', '万宁市', '460000', 'wan ning shi');
INSERT INTO `t_city` VALUES ('469007', '东方市', '460000', 'dong fang shi');
INSERT INTO `t_city` VALUES ('469025', '定安县', '460000', 'ding an xian');
INSERT INTO `t_city` VALUES ('469026', '屯昌县', '460000', 'tun chang xian');
INSERT INTO `t_city` VALUES ('469027', '澄迈县', '460000', 'cheng mai xian');
INSERT INTO `t_city` VALUES ('469028', '临高县', '460000', 'lin gao xian');
INSERT INTO `t_city` VALUES ('469030', '白沙黎族自治县', '460000', 'bai sha li zu zi zhi xian');
INSERT INTO `t_city` VALUES ('469031', '昌江黎族自治县', '460000', 'chang jiang li zu zi zhi xian');
INSERT INTO `t_city` VALUES ('469033', '乐东黎族自治县', '460000', 'le dong li zu zi zhi xian');
INSERT INTO `t_city` VALUES ('469034', '陵水黎族自治县', '460000', 'ling shui li zu zi zhi xian');
INSERT INTO `t_city` VALUES ('469035', '保亭黎族苗族自治县', '460000', 'bao ting li zu miao zu zi zhi xian');
INSERT INTO `t_city` VALUES ('469036', '琼中黎族苗族自治县', '460000', 'qiong zhong li zu miao zu zi zhi xian');
INSERT INTO `t_city` VALUES ('469037', '西沙群岛', '460000', 'xi sha qun dao');
INSERT INTO `t_city` VALUES ('469038', '南沙群岛', '460000', 'nan sha qun dao');
INSERT INTO `t_city` VALUES ('469039', '中沙群岛的岛礁及其海域', '460000', 'zhong sha qun dao de dao jiao ji qi hai yu');
INSERT INTO `t_city` VALUES ('471004', '高新区', '410300', 'gao xin qu');
INSERT INTO `t_city` VALUES ('471005', '其它区', '410300', 'qi ta qu');
INSERT INTO `t_city` VALUES ('500000', '重庆', '1', 'chong qing');
INSERT INTO `t_city` VALUES ('500100', '重庆市', '500000', 'chong qing shi');
INSERT INTO `t_city` VALUES ('500101', '万州区', '500100', 'wan zhou qu');
INSERT INTO `t_city` VALUES ('500102', '涪陵区', '500100', 'fu ling qu');
INSERT INTO `t_city` VALUES ('500103', '渝中区', '500100', 'yu zhong qu');
INSERT INTO `t_city` VALUES ('500104', '大渡口区', '500100', 'da du kou qu');
INSERT INTO `t_city` VALUES ('500105', '江北区', '500100', 'jiang bei qu');
INSERT INTO `t_city` VALUES ('500106', '沙坪坝区', '500100', 'sha ping ba qu');
INSERT INTO `t_city` VALUES ('500107', '九龙坡区', '500100', 'jiu long po qu');
INSERT INTO `t_city` VALUES ('500108', '南岸区', '500100', 'nan an qu');
INSERT INTO `t_city` VALUES ('500109', '北碚区', '500100', 'bei bei qu');
INSERT INTO `t_city` VALUES ('500110', '万盛区', '500100', 'wan sheng qu');
INSERT INTO `t_city` VALUES ('500111', '双桥区', '500100', 'shuang qiao qu');
INSERT INTO `t_city` VALUES ('500112', '渝北区', '500100', 'yu bei qu');
INSERT INTO `t_city` VALUES ('500113', '巴南区', '500100', 'ba nan qu');
INSERT INTO `t_city` VALUES ('500114', '黔江区', '500100', 'qian jiang qu');
INSERT INTO `t_city` VALUES ('500115', '长寿区', '500100', 'chang shou qu');
INSERT INTO `t_city` VALUES ('500222', '綦江县', '500100', 'qi jiang xian');
INSERT INTO `t_city` VALUES ('500223', '潼南县', '500100', 'tong nan xian');
INSERT INTO `t_city` VALUES ('500224', '铜梁县', '500100', 'tong liang xian');
INSERT INTO `t_city` VALUES ('500225', '大足县', '500100', 'da zu xian');
INSERT INTO `t_city` VALUES ('500226', '荣昌县', '500100', 'rong chang xian');
INSERT INTO `t_city` VALUES ('500227', '璧山县', '500100', 'bi shan xian');
INSERT INTO `t_city` VALUES ('500228', '梁平县', '500100', 'liang ping xian');
INSERT INTO `t_city` VALUES ('500229', '城口县', '500100', 'cheng kou xian');
INSERT INTO `t_city` VALUES ('500230', '丰都县', '500100', 'feng du xian');
INSERT INTO `t_city` VALUES ('500231', '垫江县', '500100', 'dian jiang xian');
INSERT INTO `t_city` VALUES ('500232', '武隆县', '500100', 'wu long xian');
INSERT INTO `t_city` VALUES ('500233', '忠县', '500100', 'zhong xian');
INSERT INTO `t_city` VALUES ('500234', '开县', '500100', 'kai xian');
INSERT INTO `t_city` VALUES ('500235', '云阳县', '500100', 'yun yang xian');
INSERT INTO `t_city` VALUES ('500236', '奉节县', '500100', 'feng jie xian');
INSERT INTO `t_city` VALUES ('500237', '巫山县', '500100', 'wu shan xian');
INSERT INTO `t_city` VALUES ('500238', '巫溪县', '500100', 'wu xi xian');
INSERT INTO `t_city` VALUES ('500240', '石柱土家族自治县', '500100', 'shi zhu tu jia zu zi zhi xian');
INSERT INTO `t_city` VALUES ('500241', '秀山土家族苗族自治县', '500100', 'xiu shan tu jia zu miao zu zi zhi xian');
INSERT INTO `t_city` VALUES ('500242', '酉阳土家族苗族自治县', '500100', 'you yang tu jia zu miao zu zi zhi xian');
INSERT INTO `t_city` VALUES ('500243', '彭水苗族土家族自治县', '500100', 'peng shui miao zu tu jia zu zi zhi xian');
INSERT INTO `t_city` VALUES ('500381', '江津区', '500100', 'jiang jin qu');
INSERT INTO `t_city` VALUES ('500382', '合川区', '500100', 'he chuan qu');
INSERT INTO `t_city` VALUES ('500383', '永川区', '500100', 'yong chuan qu');
INSERT INTO `t_city` VALUES ('500384', '南川区', '500100', 'nan chuan qu');
INSERT INTO `t_city` VALUES ('500385', '其它区', '500100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('510000', '四川省', '1', 'si chuan sheng');
INSERT INTO `t_city` VALUES ('510100', '成都市', '510000', 'cheng du shi');
INSERT INTO `t_city` VALUES ('510104', '锦江区', '510100', 'jin jiang qu');
INSERT INTO `t_city` VALUES ('510105', '青羊区', '510100', 'qing yang qu');
INSERT INTO `t_city` VALUES ('510106', '金牛区', '510100', 'jin niu qu');
INSERT INTO `t_city` VALUES ('510107', '武侯区', '510100', 'wu hou qu');
INSERT INTO `t_city` VALUES ('510108', '成华区', '510100', 'cheng hua qu');
INSERT INTO `t_city` VALUES ('510112', '龙泉驿区', '510100', 'long quan yi qu');
INSERT INTO `t_city` VALUES ('510113', '青白江区', '510100', 'qing bai jiang qu');
INSERT INTO `t_city` VALUES ('510114', '新都区', '510100', 'xin du qu');
INSERT INTO `t_city` VALUES ('510115', '温江区', '510100', 'wen jiang qu');
INSERT INTO `t_city` VALUES ('510121', '金堂县', '510100', 'jin tang xian');
INSERT INTO `t_city` VALUES ('510122', '双流县', '510100', 'shuang liu xian');
INSERT INTO `t_city` VALUES ('510124', '郫县', '510100', 'pi xian');
INSERT INTO `t_city` VALUES ('510129', '大邑县', '510100', 'da yi xian');
INSERT INTO `t_city` VALUES ('510131', '蒲江县', '510100', 'pu jiang xian');
INSERT INTO `t_city` VALUES ('510132', '新津县', '510100', 'xin jin xian');
INSERT INTO `t_city` VALUES ('510181', '都江堰市', '510100', 'du jiang yan shi');
INSERT INTO `t_city` VALUES ('510182', '彭州市', '510100', 'peng zhou shi');
INSERT INTO `t_city` VALUES ('510183', '邛崃市', '510100', 'qiong lai shi');
INSERT INTO `t_city` VALUES ('510184', '崇州市', '510100', 'chong zhou shi');
INSERT INTO `t_city` VALUES ('510185', '其它区', '510100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('510300', '自贡市', '510000', 'zi gong shi');
INSERT INTO `t_city` VALUES ('510302', '自流井区', '510300', 'zi liu jing qu');
INSERT INTO `t_city` VALUES ('510303', '贡井区', '510300', 'gong jing qu');
INSERT INTO `t_city` VALUES ('510304', '大安区', '510300', 'da an qu');
INSERT INTO `t_city` VALUES ('510311', '沿滩区', '510300', 'yan tan qu');
INSERT INTO `t_city` VALUES ('510321', '荣县', '510300', 'rong xian');
INSERT INTO `t_city` VALUES ('510322', '富顺县', '510300', 'fu shun xian');
INSERT INTO `t_city` VALUES ('510323', '其它区', '510300', 'qi ta qu');
INSERT INTO `t_city` VALUES ('510400', '攀枝花市', '510000', 'pan zhi hua shi');
INSERT INTO `t_city` VALUES ('510402', '东区', '510400', 'dong qu');
INSERT INTO `t_city` VALUES ('510403', '西区', '510400', 'xi qu');
INSERT INTO `t_city` VALUES ('510411', '仁和区', '510400', 'ren he qu');
INSERT INTO `t_city` VALUES ('510421', '米易县', '510400', 'mi yi xian');
INSERT INTO `t_city` VALUES ('510422', '盐边县', '510400', 'yan bian xian');
INSERT INTO `t_city` VALUES ('510423', '其它区', '510400', 'qi ta qu');
INSERT INTO `t_city` VALUES ('510500', '泸州市', '510000', 'lu zhou shi');
INSERT INTO `t_city` VALUES ('510502', '江阳区', '510500', 'jiang yang qu');
INSERT INTO `t_city` VALUES ('510503', '纳溪区', '510500', 'na xi qu');
INSERT INTO `t_city` VALUES ('510504', '龙马潭区', '510500', 'long ma tan qu');
INSERT INTO `t_city` VALUES ('510521', '泸县', '510500', 'lu xian');
INSERT INTO `t_city` VALUES ('510522', '合江县', '510500', 'he jiang xian');
INSERT INTO `t_city` VALUES ('510524', '叙永县', '510500', 'xu yong xian');
INSERT INTO `t_city` VALUES ('510525', '古蔺县', '510500', 'gu lin xian');
INSERT INTO `t_city` VALUES ('510526', '其它区', '510500', 'qi ta qu');
INSERT INTO `t_city` VALUES ('510600', '德阳市', '510000', 'de yang shi');
INSERT INTO `t_city` VALUES ('510603', '旌阳区', '510600', 'jing yang qu');
INSERT INTO `t_city` VALUES ('510623', '中江县', '510600', 'zhong jiang xian');
INSERT INTO `t_city` VALUES ('510626', '罗江县', '510600', 'luo jiang xian');
INSERT INTO `t_city` VALUES ('510681', '广汉市', '510600', 'guang han shi');
INSERT INTO `t_city` VALUES ('510682', '什邡市', '510600', 'shi fang shi');
INSERT INTO `t_city` VALUES ('510683', '绵竹市', '510600', 'mian zhu shi');
INSERT INTO `t_city` VALUES ('510684', '其它区', '510600', 'qi ta qu');
INSERT INTO `t_city` VALUES ('510700', '绵阳市', '510000', 'mian yang shi');
INSERT INTO `t_city` VALUES ('510703', '涪城区', '510700', 'fu cheng qu');
INSERT INTO `t_city` VALUES ('510704', '游仙区', '510700', 'you xian qu');
INSERT INTO `t_city` VALUES ('510722', '三台县', '510700', 'san tai xian');
INSERT INTO `t_city` VALUES ('510723', '盐亭县', '510700', 'yan ting xian');
INSERT INTO `t_city` VALUES ('510724', '安县', '510700', 'an xian');
INSERT INTO `t_city` VALUES ('510725', '梓潼县', '510700', 'zi tong xian');
INSERT INTO `t_city` VALUES ('510726', '北川羌族自治县', '510700', 'bei chuan qiang zu zi zhi xian');
INSERT INTO `t_city` VALUES ('510727', '平武县', '510700', 'ping wu xian');
INSERT INTO `t_city` VALUES ('510751', '高新区', '510700', 'gao xin qu');
INSERT INTO `t_city` VALUES ('510781', '江油市', '510700', 'jiang you shi');
INSERT INTO `t_city` VALUES ('510782', '其它区', '510700', 'qi ta qu');
INSERT INTO `t_city` VALUES ('510800', '广元市', '510000', 'guang yuan shi');
INSERT INTO `t_city` VALUES ('510802', '利州区', '510800', 'li zhou qu');
INSERT INTO `t_city` VALUES ('510811', '元坝区', '510800', 'yuan ba qu');
INSERT INTO `t_city` VALUES ('510812', '朝天区', '510800', 'chao tian qu');
INSERT INTO `t_city` VALUES ('510821', '旺苍县', '510800', 'wang cang xian');
INSERT INTO `t_city` VALUES ('510822', '青川县', '510800', 'qing chuan xian');
INSERT INTO `t_city` VALUES ('510823', '剑阁县', '510800', 'jian ge xian');
INSERT INTO `t_city` VALUES ('510824', '苍溪县', '510800', 'cang xi xian');
INSERT INTO `t_city` VALUES ('510825', '其它区', '510800', 'qi ta qu');
INSERT INTO `t_city` VALUES ('510900', '遂宁市', '510000', 'sui ning shi');
INSERT INTO `t_city` VALUES ('510903', '船山区', '510900', 'chuan shan qu');
INSERT INTO `t_city` VALUES ('510904', '安居区', '510900', 'an ju qu');
INSERT INTO `t_city` VALUES ('510921', '蓬溪县', '510900', 'peng xi xian');
INSERT INTO `t_city` VALUES ('510922', '射洪县', '510900', 'she hong xian');
INSERT INTO `t_city` VALUES ('510923', '大英县', '510900', 'da ying xian');
INSERT INTO `t_city` VALUES ('510924', '其它区', '510900', 'qi ta qu');
INSERT INTO `t_city` VALUES ('511000', '内江市', '510000', 'nei jiang shi');
INSERT INTO `t_city` VALUES ('511002', '市中区', '511000', 'shi zhong qu');
INSERT INTO `t_city` VALUES ('511011', '东兴区', '511000', 'dong xing qu');
INSERT INTO `t_city` VALUES ('511024', '威远县', '511000', 'wei yuan xian');
INSERT INTO `t_city` VALUES ('511025', '资中县', '511000', 'zi zhong xian');
INSERT INTO `t_city` VALUES ('511028', '隆昌县', '511000', 'long chang xian');
INSERT INTO `t_city` VALUES ('511029', '其它区', '511000', 'qi ta qu');
INSERT INTO `t_city` VALUES ('511100', '乐山市', '510000', 'le shan shi');
INSERT INTO `t_city` VALUES ('511102', '市中区', '511100', 'shi zhong qu');
INSERT INTO `t_city` VALUES ('511111', '沙湾区', '511100', 'sha wan qu');
INSERT INTO `t_city` VALUES ('511112', '五通桥区', '511100', 'wu tong qiao qu');
INSERT INTO `t_city` VALUES ('511113', '金口河区', '511100', 'jin kou he qu');
INSERT INTO `t_city` VALUES ('511123', '犍为县', '511100', 'qian wei xian');
INSERT INTO `t_city` VALUES ('511124', '井研县', '511100', 'jing yan xian');
INSERT INTO `t_city` VALUES ('511126', '夹江县', '511100', 'jia jiang xian');
INSERT INTO `t_city` VALUES ('511129', '沐川县', '511100', 'mu chuan xian');
INSERT INTO `t_city` VALUES ('511132', '峨边彝族自治县', '511100', 'e bian yi zu zi zhi xian');
INSERT INTO `t_city` VALUES ('511133', '马边彝族自治县', '511100', 'ma bian yi zu zi zhi xian');
INSERT INTO `t_city` VALUES ('511181', '峨眉山市', '511100', 'e mei shan shi');
INSERT INTO `t_city` VALUES ('511182', '其它区', '511100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('511300', '南充市', '510000', 'nan chong shi');
INSERT INTO `t_city` VALUES ('511302', '顺庆区', '511300', 'shun qing qu');
INSERT INTO `t_city` VALUES ('511303', '高坪区', '511300', 'gao ping qu');
INSERT INTO `t_city` VALUES ('511304', '嘉陵区', '511300', 'jia ling qu');
INSERT INTO `t_city` VALUES ('511321', '南部县', '511300', 'nan bu xian');
INSERT INTO `t_city` VALUES ('511322', '营山县', '511300', 'ying shan xian');
INSERT INTO `t_city` VALUES ('511323', '蓬安县', '511300', 'peng an xian');
INSERT INTO `t_city` VALUES ('511324', '仪陇县', '511300', 'yi long xian');
INSERT INTO `t_city` VALUES ('511325', '西充县', '511300', 'xi chong xian');
INSERT INTO `t_city` VALUES ('511381', '阆中市', '511300', 'lang zhong shi');
INSERT INTO `t_city` VALUES ('511382', '其它区', '511300', 'qi ta qu');
INSERT INTO `t_city` VALUES ('511400', '眉山市', '510000', 'mei shan shi');
INSERT INTO `t_city` VALUES ('511402', '东坡区', '511400', 'dong po qu');
INSERT INTO `t_city` VALUES ('511421', '仁寿县', '511400', 'ren shou xian');
INSERT INTO `t_city` VALUES ('511422', '彭山县', '511400', 'peng shan xian');
INSERT INTO `t_city` VALUES ('511423', '洪雅县', '511400', 'hong ya xian');
INSERT INTO `t_city` VALUES ('511424', '丹棱县', '511400', 'dan ling xian');
INSERT INTO `t_city` VALUES ('511425', '青神县', '511400', 'qing shen xian');
INSERT INTO `t_city` VALUES ('511426', '其它区', '511400', 'qi ta qu');
INSERT INTO `t_city` VALUES ('511500', '宜宾市', '510000', 'yi bin shi');
INSERT INTO `t_city` VALUES ('511502', '翠屏区', '511500', 'cui ping qu');
INSERT INTO `t_city` VALUES ('511521', '宜宾县', '511500', 'yi bin xian');
INSERT INTO `t_city` VALUES ('511522', '南溪县', '511500', 'nan xi xian');
INSERT INTO `t_city` VALUES ('511523', '江安县', '511500', 'jiang an xian');
INSERT INTO `t_city` VALUES ('511524', '长宁县', '511500', 'chang ning xian');
INSERT INTO `t_city` VALUES ('511525', '高县', '511500', 'gao xian');
INSERT INTO `t_city` VALUES ('511526', '珙县', '511500', 'gong xian');
INSERT INTO `t_city` VALUES ('511527', '筠连县', '511500', 'jun lian xian');
INSERT INTO `t_city` VALUES ('511528', '兴文县', '511500', 'xing wen xian');
INSERT INTO `t_city` VALUES ('511529', '屏山县', '511500', 'ping shan xian');
INSERT INTO `t_city` VALUES ('511530', '其它区', '511500', 'qi ta qu');
INSERT INTO `t_city` VALUES ('511600', '广安市', '510000', 'guang an shi');
INSERT INTO `t_city` VALUES ('511602', '广安区', '511600', 'guang an qu');
INSERT INTO `t_city` VALUES ('511621', '岳池县', '511600', 'yue chi xian');
INSERT INTO `t_city` VALUES ('511622', '武胜县', '511600', 'wu sheng xian');
INSERT INTO `t_city` VALUES ('511623', '邻水县', '511600', 'lin shui xian');
INSERT INTO `t_city` VALUES ('511681', '华蓥市', '511600', 'hua ying shi');
INSERT INTO `t_city` VALUES ('511682', '市辖区', '511600', 'shi xia qu');
INSERT INTO `t_city` VALUES ('511683', '其它区', '511600', 'qi ta qu');
INSERT INTO `t_city` VALUES ('511700', '达州市', '510000', 'da zhou shi');
INSERT INTO `t_city` VALUES ('511702', '通川区', '511700', 'tong chuan qu');
INSERT INTO `t_city` VALUES ('511721', '达县', '511700', 'da xian');
INSERT INTO `t_city` VALUES ('511722', '宣汉县', '511700', 'xuan han xian');
INSERT INTO `t_city` VALUES ('511723', '开江县', '511700', 'kai jiang xian');
INSERT INTO `t_city` VALUES ('511724', '大竹县', '511700', 'da zhu xian');
INSERT INTO `t_city` VALUES ('511725', '渠县', '511700', 'qu xian');
INSERT INTO `t_city` VALUES ('511781', '万源市', '511700', 'wan yuan shi');
INSERT INTO `t_city` VALUES ('511782', '其它区', '511700', 'qi ta qu');
INSERT INTO `t_city` VALUES ('511800', '雅安市', '510000', 'ya an shi');
INSERT INTO `t_city` VALUES ('511802', '雨城区', '511800', 'yu cheng qu');
INSERT INTO `t_city` VALUES ('511821', '名山县', '511800', 'ming shan xian');
INSERT INTO `t_city` VALUES ('511822', '荥经县', '511800', 'ying jing xian');
INSERT INTO `t_city` VALUES ('511823', '汉源县', '511800', 'han yuan xian');
INSERT INTO `t_city` VALUES ('511824', '石棉县', '511800', 'shi mian xian');
INSERT INTO `t_city` VALUES ('511825', '天全县', '511800', 'tian quan xian');
INSERT INTO `t_city` VALUES ('511826', '芦山县', '511800', 'lu shan xian');
INSERT INTO `t_city` VALUES ('511827', '宝兴县', '511800', 'bao xing xian');
INSERT INTO `t_city` VALUES ('511828', '其它区', '511800', 'qi ta qu');
INSERT INTO `t_city` VALUES ('511900', '巴中市', '510000', 'ba zhong shi');
INSERT INTO `t_city` VALUES ('511902', '巴州区', '511900', 'ba zhou qu');
INSERT INTO `t_city` VALUES ('511921', '通江县', '511900', 'tong jiang xian');
INSERT INTO `t_city` VALUES ('511922', '南江县', '511900', 'nan jiang xian');
INSERT INTO `t_city` VALUES ('511923', '平昌县', '511900', 'ping chang xian');
INSERT INTO `t_city` VALUES ('511924', '其它区', '511900', 'qi ta qu');
INSERT INTO `t_city` VALUES ('512000', '资阳市', '510000', 'zi yang shi');
INSERT INTO `t_city` VALUES ('512002', '雁江区', '512000', 'yan jiang qu');
INSERT INTO `t_city` VALUES ('512021', '安岳县', '512000', 'an yue xian');
INSERT INTO `t_city` VALUES ('512022', '乐至县', '512000', 'le zhi xian');
INSERT INTO `t_city` VALUES ('512081', '简阳市', '512000', 'jian yang shi');
INSERT INTO `t_city` VALUES ('512082', '其它区', '512000', 'qi ta qu');
INSERT INTO `t_city` VALUES ('513200', '阿坝藏族羌族自治州', '510000', 'a ba zang zu qiang zu zi zhi zhou');
INSERT INTO `t_city` VALUES ('513221', '汶川县', '513200', 'wen chuan xian');
INSERT INTO `t_city` VALUES ('513222', '理县', '513200', 'li xian');
INSERT INTO `t_city` VALUES ('513223', '茂县', '513200', 'mao xian');
INSERT INTO `t_city` VALUES ('513224', '松潘县', '513200', 'song pan xian');
INSERT INTO `t_city` VALUES ('513225', '九寨沟县', '513200', 'jiu zhai gou xian');
INSERT INTO `t_city` VALUES ('513226', '金川县', '513200', 'jin chuan xian');
INSERT INTO `t_city` VALUES ('513227', '小金县', '513200', 'xiao jin xian');
INSERT INTO `t_city` VALUES ('513228', '黑水县', '513200', 'hei shui xian');
INSERT INTO `t_city` VALUES ('513229', '马尔康县', '513200', 'ma er kang xian');
INSERT INTO `t_city` VALUES ('513230', '壤塘县', '513200', 'rang tang xian');
INSERT INTO `t_city` VALUES ('513231', '阿坝县', '513200', 'a ba xian');
INSERT INTO `t_city` VALUES ('513232', '若尔盖县', '513200', 'ruo er gai xian');
INSERT INTO `t_city` VALUES ('513233', '红原县', '513200', 'hong yuan xian');
INSERT INTO `t_city` VALUES ('513234', '其它区', '513200', 'qi ta qu');
INSERT INTO `t_city` VALUES ('513300', '甘孜藏族自治州', '510000', 'gan zi zang zu zi zhi zhou');
INSERT INTO `t_city` VALUES ('513321', '康定县', '513300', 'kang ding xian');
INSERT INTO `t_city` VALUES ('513322', '泸定县', '513300', 'lu ding xian');
INSERT INTO `t_city` VALUES ('513323', '丹巴县', '513300', 'dan ba xian');
INSERT INTO `t_city` VALUES ('513324', '九龙县', '513300', 'jiu long xian');
INSERT INTO `t_city` VALUES ('513325', '雅江县', '513300', 'ya jiang xian');
INSERT INTO `t_city` VALUES ('513326', '道孚县', '513300', 'dao fu xian');
INSERT INTO `t_city` VALUES ('513327', '炉霍县', '513300', 'lu huo xian');
INSERT INTO `t_city` VALUES ('513328', '甘孜县', '513300', 'gan zi xian');
INSERT INTO `t_city` VALUES ('513329', '新龙县', '513300', 'xin long xian');
INSERT INTO `t_city` VALUES ('513330', '德格县', '513300', 'de ge xian');
INSERT INTO `t_city` VALUES ('513331', '白玉县', '513300', 'bai yu xian');
INSERT INTO `t_city` VALUES ('513332', '石渠县', '513300', 'shi qu xian');
INSERT INTO `t_city` VALUES ('513333', '色达县', '513300', 'se da xian');
INSERT INTO `t_city` VALUES ('513334', '理塘县', '513300', 'li tang xian');
INSERT INTO `t_city` VALUES ('513335', '巴塘县', '513300', 'ba tang xian');
INSERT INTO `t_city` VALUES ('513336', '乡城县', '513300', 'xiang cheng xian');
INSERT INTO `t_city` VALUES ('513337', '稻城县', '513300', 'dao cheng xian');
INSERT INTO `t_city` VALUES ('513338', '得荣县', '513300', 'de rong xian');
INSERT INTO `t_city` VALUES ('513339', '其它区', '513300', 'qi ta qu');
INSERT INTO `t_city` VALUES ('513400', '凉山彝族自治州', '510000', 'liang shan yi zu zi zhi zhou');
INSERT INTO `t_city` VALUES ('513401', '西昌市', '513400', 'xi chang shi');
INSERT INTO `t_city` VALUES ('513422', '木里藏族自治县', '513400', 'mu li zang zu zi zhi xian');
INSERT INTO `t_city` VALUES ('513423', '盐源县', '513400', 'yan yuan xian');
INSERT INTO `t_city` VALUES ('513424', '德昌县', '513400', 'de chang xian');
INSERT INTO `t_city` VALUES ('513425', '会理县', '513400', 'hui li xian');
INSERT INTO `t_city` VALUES ('513426', '会东县', '513400', 'hui dong xian');
INSERT INTO `t_city` VALUES ('513427', '宁南县', '513400', 'ning nan xian');
INSERT INTO `t_city` VALUES ('513428', '普格县', '513400', 'pu ge xian');
INSERT INTO `t_city` VALUES ('513429', '布拖县', '513400', 'bu tuo xian');
INSERT INTO `t_city` VALUES ('513430', '金阳县', '513400', 'jin yang xian');
INSERT INTO `t_city` VALUES ('513431', '昭觉县', '513400', 'zhao jue xian');
INSERT INTO `t_city` VALUES ('513432', '喜德县', '513400', 'xi de xian');
INSERT INTO `t_city` VALUES ('513433', '冕宁县', '513400', 'mian ning xian');
INSERT INTO `t_city` VALUES ('513434', '越西县', '513400', 'yue xi xian');
INSERT INTO `t_city` VALUES ('513435', '甘洛县', '513400', 'gan luo xian');
INSERT INTO `t_city` VALUES ('513436', '美姑县', '513400', 'mei gu xian');
INSERT INTO `t_city` VALUES ('513437', '雷波县', '513400', 'lei bo xian');
INSERT INTO `t_city` VALUES ('513438', '其它区', '513400', 'qi ta qu');
INSERT INTO `t_city` VALUES ('520000', '贵州省', '1', 'gui zhou sheng');
INSERT INTO `t_city` VALUES ('520100', '贵阳市', '520000', 'gui yang shi');
INSERT INTO `t_city` VALUES ('520102', '南明区', '520100', 'nan ming qu');
INSERT INTO `t_city` VALUES ('520103', '云岩区', '520100', 'yun yan qu');
INSERT INTO `t_city` VALUES ('520111', '花溪区', '520100', 'hua xi qu');
INSERT INTO `t_city` VALUES ('520112', '乌当区', '520100', 'wu dang qu');
INSERT INTO `t_city` VALUES ('520113', '白云区', '520100', 'bai yun qu');
INSERT INTO `t_city` VALUES ('520114', '小河区', '520100', 'xiao he qu');
INSERT INTO `t_city` VALUES ('520121', '开阳县', '520100', 'kai yang xian');
INSERT INTO `t_city` VALUES ('520122', '息烽县', '520100', 'xi feng xian');
INSERT INTO `t_city` VALUES ('520123', '修文县', '520100', 'xiu wen xian');
INSERT INTO `t_city` VALUES ('520151', '金阳开发区', '520100', 'jin yang kai fa qu');
INSERT INTO `t_city` VALUES ('520181', '清镇市', '520100', 'qing zhen shi');
INSERT INTO `t_city` VALUES ('520182', '其它区', '520100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('520200', '六盘水市', '520000', 'liu pan shui shi');
INSERT INTO `t_city` VALUES ('520201', '钟山区', '520200', 'zhong shan qu');
INSERT INTO `t_city` VALUES ('520203', '六枝特区', '520200', 'liu zhi te qu');
INSERT INTO `t_city` VALUES ('520221', '水城县', '520200', 'shui cheng xian');
INSERT INTO `t_city` VALUES ('520222', '盘县', '520200', 'pan xian');
INSERT INTO `t_city` VALUES ('520223', '其它区', '520200', 'qi ta qu');
INSERT INTO `t_city` VALUES ('520300', '遵义市', '520000', 'zun yi shi');
INSERT INTO `t_city` VALUES ('520302', '红花岗区', '520300', 'hong hua gang qu');
INSERT INTO `t_city` VALUES ('520303', '汇川区', '520300', 'hui chuan qu');
INSERT INTO `t_city` VALUES ('520321', '遵义县', '520300', 'zun yi xian');
INSERT INTO `t_city` VALUES ('520322', '桐梓县', '520300', 'tong zi xian');
INSERT INTO `t_city` VALUES ('520323', '绥阳县', '520300', 'sui yang xian');
INSERT INTO `t_city` VALUES ('520324', '正安县', '520300', 'zheng an xian');
INSERT INTO `t_city` VALUES ('520325', '道真仡佬族苗族自治县', '520300', 'dao zhen ge lao zu miao zu zi zhi xian');
INSERT INTO `t_city` VALUES ('520326', '务川仡佬族苗族自治县', '520300', 'wu chuan ge lao zu miao zu zi zhi xian');
INSERT INTO `t_city` VALUES ('520327', '凤冈县', '520300', 'feng gang xian');
INSERT INTO `t_city` VALUES ('520328', '湄潭县', '520300', 'mei tan xian');
INSERT INTO `t_city` VALUES ('520329', '余庆县', '520300', 'yu qing xian');
INSERT INTO `t_city` VALUES ('520330', '习水县', '520300', 'xi shui xian');
INSERT INTO `t_city` VALUES ('520381', '赤水市', '520300', 'chi shui shi');
INSERT INTO `t_city` VALUES ('520382', '仁怀市', '520300', 'ren huai shi');
INSERT INTO `t_city` VALUES ('520383', '其它区', '520300', 'qi ta qu');
INSERT INTO `t_city` VALUES ('520400', '安顺市', '520000', 'an shun shi');
INSERT INTO `t_city` VALUES ('520402', '西秀区', '520400', 'xi xiu qu');
INSERT INTO `t_city` VALUES ('520421', '平坝县', '520400', 'ping ba xian');
INSERT INTO `t_city` VALUES ('520422', '普定县', '520400', 'pu ding xian');
INSERT INTO `t_city` VALUES ('520423', '镇宁布依族苗族自治县', '520400', 'zhen ning bu yi zu miao zu zi zhi xian');
INSERT INTO `t_city` VALUES ('520424', '关岭布依族苗族自治县', '520400', 'guan ling bu yi zu miao zu zi zhi xian');
INSERT INTO `t_city` VALUES ('520425', '紫云苗族布依族自治县', '520400', 'zi yun miao zu bu yi zu zi zhi xian');
INSERT INTO `t_city` VALUES ('520426', '其它区', '520400', 'qi ta qu');
INSERT INTO `t_city` VALUES ('522200', '铜仁地区', '520000', 'tong ren di qu');
INSERT INTO `t_city` VALUES ('522201', '铜仁市', '522200', 'tong ren shi');
INSERT INTO `t_city` VALUES ('522222', '江口县', '522200', 'jiang kou xian');
INSERT INTO `t_city` VALUES ('522223', '玉屏侗族自治县', '522200', 'yu ping dong zu zi zhi xian');
INSERT INTO `t_city` VALUES ('522224', '石阡县', '522200', 'shi qian xian');
INSERT INTO `t_city` VALUES ('522225', '思南县', '522200', 'si nan xian');
INSERT INTO `t_city` VALUES ('522226', '印江土家族苗族自治县', '522200', 'yin jiang tu jia zu miao zu zi zhi xian');
INSERT INTO `t_city` VALUES ('522227', '德江县', '522200', 'de jiang xian');
INSERT INTO `t_city` VALUES ('522228', '沿河土家族自治县', '522200', 'yan he tu jia zu zi zhi xian');
INSERT INTO `t_city` VALUES ('522229', '松桃苗族自治县', '522200', 'song tao miao zu zi zhi xian');
INSERT INTO `t_city` VALUES ('522230', '万山特区', '522200', 'wan shan te qu');
INSERT INTO `t_city` VALUES ('522231', '其它区', '522200', 'qi ta qu');
INSERT INTO `t_city` VALUES ('522300', '黔西南布依族苗族自治州', '520000', 'qian xi nan bu yi zu miao zu zi zhi zhou');
INSERT INTO `t_city` VALUES ('522301', '兴义市', '522300', 'xing yi shi');
INSERT INTO `t_city` VALUES ('522322', '兴仁县', '522300', 'xing ren xian');
INSERT INTO `t_city` VALUES ('522323', '普安县', '522300', 'pu an xian');
INSERT INTO `t_city` VALUES ('522324', '晴隆县', '522300', 'qing long xian');
INSERT INTO `t_city` VALUES ('522325', '贞丰县', '522300', 'zhen feng xian');
INSERT INTO `t_city` VALUES ('522326', '望谟县', '522300', 'wang mo xian');
INSERT INTO `t_city` VALUES ('522327', '册亨县', '522300', 'ce heng xian');
INSERT INTO `t_city` VALUES ('522328', '安龙县', '522300', 'an long xian');
INSERT INTO `t_city` VALUES ('522329', '其它区', '522300', 'qi ta qu');
INSERT INTO `t_city` VALUES ('522400', '毕节地区', '520000', 'bi jie di qu');
INSERT INTO `t_city` VALUES ('522401', '毕节市', '522400', 'bi jie shi');
INSERT INTO `t_city` VALUES ('522422', '大方县', '522400', 'da fang xian');
INSERT INTO `t_city` VALUES ('522423', '黔西县', '522400', 'qian xi xian');
INSERT INTO `t_city` VALUES ('522424', '金沙县', '522400', 'jin sha xian');
INSERT INTO `t_city` VALUES ('522425', '织金县', '522400', 'zhi jin xian');
INSERT INTO `t_city` VALUES ('522426', '纳雍县', '522400', 'na yong xian');
INSERT INTO `t_city` VALUES ('522427', '威宁彝族回族苗族自治县', '522400', 'wei ning yi zu hui zu miao zu zi zhi xian');
INSERT INTO `t_city` VALUES ('522428', '赫章县', '522400', 'he zhang xian');
INSERT INTO `t_city` VALUES ('522429', '其它区', '522400', 'qi ta qu');
INSERT INTO `t_city` VALUES ('522600', '黔东南苗族侗族自治州', '520000', 'qian dong nan miao zu dong zu zi zhi zhou');
INSERT INTO `t_city` VALUES ('522601', '凯里市', '522600', 'kai li shi');
INSERT INTO `t_city` VALUES ('522622', '黄平县', '522600', 'huang ping xian');
INSERT INTO `t_city` VALUES ('522623', '施秉县', '522600', 'shi bing xian');
INSERT INTO `t_city` VALUES ('522624', '三穗县', '522600', 'san sui xian');
INSERT INTO `t_city` VALUES ('522625', '镇远县', '522600', 'zhen yuan xian');
INSERT INTO `t_city` VALUES ('522626', '岑巩县', '522600', 'cen gong xian');
INSERT INTO `t_city` VALUES ('522627', '天柱县', '522600', 'tian zhu xian');
INSERT INTO `t_city` VALUES ('522628', '锦屏县', '522600', 'jin ping xian');
INSERT INTO `t_city` VALUES ('522629', '剑河县', '522600', 'jian he xian');
INSERT INTO `t_city` VALUES ('522630', '台江县', '522600', 'tai jiang xian');
INSERT INTO `t_city` VALUES ('522631', '黎平县', '522600', 'li ping xian');
INSERT INTO `t_city` VALUES ('522632', '榕江县', '522600', 'rong jiang xian');
INSERT INTO `t_city` VALUES ('522633', '从江县', '522600', 'cong jiang xian');
INSERT INTO `t_city` VALUES ('522634', '雷山县', '522600', 'lei shan xian');
INSERT INTO `t_city` VALUES ('522635', '麻江县', '522600', 'ma jiang xian');
INSERT INTO `t_city` VALUES ('522636', '丹寨县', '522600', 'dan zhai xian');
INSERT INTO `t_city` VALUES ('522637', '其它区', '522600', 'qi ta qu');
INSERT INTO `t_city` VALUES ('522700', '黔南布依族苗族自治州', '520000', 'qian nan bu yi zu miao zu zi zhi zhou');
INSERT INTO `t_city` VALUES ('522701', '都匀市', '522700', 'du yun shi');
INSERT INTO `t_city` VALUES ('522702', '福泉市', '522700', 'fu quan shi');
INSERT INTO `t_city` VALUES ('522722', '荔波县', '522700', 'li bo xian');
INSERT INTO `t_city` VALUES ('522723', '贵定县', '522700', 'gui ding xian');
INSERT INTO `t_city` VALUES ('522725', '瓮安县', '522700', 'weng an xian');
INSERT INTO `t_city` VALUES ('522726', '独山县', '522700', 'du shan xian');
INSERT INTO `t_city` VALUES ('522727', '平塘县', '522700', 'ping tang xian');
INSERT INTO `t_city` VALUES ('522728', '罗甸县', '522700', 'luo dian xian');
INSERT INTO `t_city` VALUES ('522729', '长顺县', '522700', 'chang shun xian');
INSERT INTO `t_city` VALUES ('522730', '龙里县', '522700', 'long li xian');
INSERT INTO `t_city` VALUES ('522731', '惠水县', '522700', 'hui shui xian');
INSERT INTO `t_city` VALUES ('522732', '三都水族自治县', '522700', 'san du shui zu zi zhi xian');
INSERT INTO `t_city` VALUES ('522733', '其它区', '522700', 'qi ta qu');
INSERT INTO `t_city` VALUES ('530000', '云南省', '1', 'yun nan sheng');
INSERT INTO `t_city` VALUES ('530100', '昆明市', '530000', 'kun ming shi');
INSERT INTO `t_city` VALUES ('530102', '五华区', '530100', 'wu hua qu');
INSERT INTO `t_city` VALUES ('530103', '盘龙区', '530100', 'pan long qu');
INSERT INTO `t_city` VALUES ('530111', '官渡区', '530100', 'guan du qu');
INSERT INTO `t_city` VALUES ('530112', '西山区', '530100', 'xi shan qu');
INSERT INTO `t_city` VALUES ('530113', '东川区', '530100', 'dong chuan qu');
INSERT INTO `t_city` VALUES ('530121', '呈贡县', '530100', 'cheng gong xian');
INSERT INTO `t_city` VALUES ('530122', '晋宁县', '530100', 'jin ning xian');
INSERT INTO `t_city` VALUES ('530124', '富民县', '530100', 'fu min xian');
INSERT INTO `t_city` VALUES ('530125', '宜良县', '530100', 'yi liang xian');
INSERT INTO `t_city` VALUES ('530126', '石林彝族自治县', '530100', 'shi lin yi zu zi zhi xian');
INSERT INTO `t_city` VALUES ('530127', '嵩明县', '530100', 'song ming xian');
INSERT INTO `t_city` VALUES ('530128', '禄劝彝族苗族自治县', '530100', 'lu quan yi zu miao zu zi zhi xian');
INSERT INTO `t_city` VALUES ('530129', '寻甸回族彝族自治县', '530100', 'xun dian hui zu yi zu zi zhi xian');
INSERT INTO `t_city` VALUES ('530181', '安宁市', '530100', 'an ning shi');
INSERT INTO `t_city` VALUES ('530182', '其它区', '530100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('530300', '曲靖市', '530000', 'qu jing shi');
INSERT INTO `t_city` VALUES ('530302', '麒麟区', '530300', 'qi lin qu');
INSERT INTO `t_city` VALUES ('530321', '马龙县', '530300', 'ma long xian');
INSERT INTO `t_city` VALUES ('530322', '陆良县', '530300', 'lu liang xian');
INSERT INTO `t_city` VALUES ('530323', '师宗县', '530300', 'shi zong xian');
INSERT INTO `t_city` VALUES ('530324', '罗平县', '530300', 'luo ping xian');
INSERT INTO `t_city` VALUES ('530325', '富源县', '530300', 'fu yuan xian');
INSERT INTO `t_city` VALUES ('530326', '会泽县', '530300', 'hui ze xian');
INSERT INTO `t_city` VALUES ('530328', '沾益县', '530300', 'zhan yi xian');
INSERT INTO `t_city` VALUES ('530381', '宣威市', '530300', 'xuan wei shi');
INSERT INTO `t_city` VALUES ('530382', '其它区', '530300', 'qi ta qu');
INSERT INTO `t_city` VALUES ('530400', '玉溪市', '530000', 'yu xi shi');
INSERT INTO `t_city` VALUES ('530402', '红塔区', '530400', 'hong ta qu');
INSERT INTO `t_city` VALUES ('530421', '江川县', '530400', 'jiang chuan xian');
INSERT INTO `t_city` VALUES ('530422', '澄江县', '530400', 'cheng jiang xian');
INSERT INTO `t_city` VALUES ('530423', '通海县', '530400', 'tong hai xian');
INSERT INTO `t_city` VALUES ('530424', '华宁县', '530400', 'hua ning xian');
INSERT INTO `t_city` VALUES ('530425', '易门县', '530400', 'yi men xian');
INSERT INTO `t_city` VALUES ('530426', '峨山彝族自治县', '530400', 'e shan yi zu zi zhi xian');
INSERT INTO `t_city` VALUES ('530427', '新平彝族傣族自治县', '530400', 'xin ping yi zu dai zu zi zhi xian');
INSERT INTO `t_city` VALUES ('530428', '元江哈尼族彝族傣族自治县', '530400', 'yuan jiang ha ni zu yi zu dai zu zi zhi xian');
INSERT INTO `t_city` VALUES ('530429', '其它区', '530400', 'qi ta qu');
INSERT INTO `t_city` VALUES ('530500', '保山市', '530000', 'bao shan shi');
INSERT INTO `t_city` VALUES ('530502', '隆阳区', '530500', 'long yang qu');
INSERT INTO `t_city` VALUES ('530521', '施甸县', '530500', 'shi dian xian');
INSERT INTO `t_city` VALUES ('530522', '腾冲县', '530500', 'teng chong xian');
INSERT INTO `t_city` VALUES ('530523', '龙陵县', '530500', 'long ling xian');
INSERT INTO `t_city` VALUES ('530524', '昌宁县', '530500', 'chang ning xian');
INSERT INTO `t_city` VALUES ('530525', '其它区', '530500', 'qi ta qu');
INSERT INTO `t_city` VALUES ('530600', '昭通市', '530000', 'zhao tong shi');
INSERT INTO `t_city` VALUES ('530602', '昭阳区', '530600', 'zhao yang qu');
INSERT INTO `t_city` VALUES ('530621', '鲁甸县', '530600', 'lu dian xian');
INSERT INTO `t_city` VALUES ('530622', '巧家县', '530600', 'qiao jia xian');
INSERT INTO `t_city` VALUES ('530623', '盐津县', '530600', 'yan jin xian');
INSERT INTO `t_city` VALUES ('530624', '大关县', '530600', 'da guan xian');
INSERT INTO `t_city` VALUES ('530625', '永善县', '530600', 'yong shan xian');
INSERT INTO `t_city` VALUES ('530626', '绥江县', '530600', 'sui jiang xian');
INSERT INTO `t_city` VALUES ('530627', '镇雄县', '530600', 'zhen xiong xian');
INSERT INTO `t_city` VALUES ('530628', '彝良县', '530600', 'yi liang xian');
INSERT INTO `t_city` VALUES ('530629', '威信县', '530600', 'wei shen xian');
INSERT INTO `t_city` VALUES ('530630', '水富县', '530600', 'shui fu xian');
INSERT INTO `t_city` VALUES ('530631', '其它区', '530600', 'qi ta qu');
INSERT INTO `t_city` VALUES ('530700', '丽江市', '530000', 'li jiang shi');
INSERT INTO `t_city` VALUES ('530702', '古城区', '530700', 'gu cheng qu');
INSERT INTO `t_city` VALUES ('530721', '玉龙纳西族自治县', '530700', 'yu long na xi zu zi zhi xian');
INSERT INTO `t_city` VALUES ('530722', '永胜县', '530700', 'yong sheng xian');
INSERT INTO `t_city` VALUES ('530723', '华坪县', '530700', 'hua ping xian');
INSERT INTO `t_city` VALUES ('530724', '宁蒗彝族自治县', '530700', 'ning lang yi zu zi zhi xian');
INSERT INTO `t_city` VALUES ('530725', '其它区', '530700', 'qi ta qu');
INSERT INTO `t_city` VALUES ('530800', '普洱市', '530000', 'pu er shi');
INSERT INTO `t_city` VALUES ('530802', '思茅区', '530800', 'si mao qu');
INSERT INTO `t_city` VALUES ('530821', '宁洱哈尼族彝族自治县', '530800', 'ning er ha ni zu yi zu zi zhi xian');
INSERT INTO `t_city` VALUES ('530822', '墨江哈尼族自治县', '530800', 'mo jiang ha ni zu zi zhi xian');
INSERT INTO `t_city` VALUES ('530823', '景东彝族自治县', '530800', 'jing dong yi zu zi zhi xian');
INSERT INTO `t_city` VALUES ('530824', '景谷傣族彝族自治县', '530800', 'jing gu dai zu yi zu zi zhi xian');
INSERT INTO `t_city` VALUES ('530825', '镇沅彝族哈尼族拉祜族自治县', '530800', 'zhen yuan yi zu ha ni zu la hu zu zi zhi xian');
INSERT INTO `t_city` VALUES ('530826', '江城哈尼族彝族自治县', '530800', 'jiang cheng ha ni zu yi zu zi zhi xian');
INSERT INTO `t_city` VALUES ('530827', '孟连傣族拉祜族佤族自治县', '530800', 'meng lian dai zu la hu zu wa zu zi zhi xian');
INSERT INTO `t_city` VALUES ('530828', '澜沧拉祜族自治县', '530800', 'lan cang la hu zu zi zhi xian');
INSERT INTO `t_city` VALUES ('530829', '西盟佤族自治县', '530800', 'xi meng wa zu zi zhi xian');
INSERT INTO `t_city` VALUES ('530830', '其它区', '530800', 'qi ta qu');
INSERT INTO `t_city` VALUES ('530900', '临沧市', '530000', 'lin cang shi');
INSERT INTO `t_city` VALUES ('530902', '临翔区', '530900', 'lin xiang qu');
INSERT INTO `t_city` VALUES ('530921', '凤庆县', '530900', 'feng qing xian');
INSERT INTO `t_city` VALUES ('530922', '云县', '530900', 'yun xian');
INSERT INTO `t_city` VALUES ('530923', '永德县', '530900', 'yong de xian');
INSERT INTO `t_city` VALUES ('530924', '镇康县', '530900', 'zhen kang xian');
INSERT INTO `t_city` VALUES ('530925', '双江拉祜族佤族布朗族傣族自治县', '530900', 'shuang jiang la hu zu wa zu bu lang zu dai zu zi zhi xian');
INSERT INTO `t_city` VALUES ('530926', '耿马傣族佤族自治县', '530900', 'geng ma dai zu wa zu zi zhi xian');
INSERT INTO `t_city` VALUES ('530927', '沧源佤族自治县', '530900', 'cang yuan wa zu zi zhi xian');
INSERT INTO `t_city` VALUES ('530928', '其它区', '530900', 'qi ta qu');
INSERT INTO `t_city` VALUES ('532300', '楚雄彝族自治州', '530000', 'chu xiong yi zu zi zhi zhou');
INSERT INTO `t_city` VALUES ('532301', '楚雄市', '532300', 'chu xiong shi');
INSERT INTO `t_city` VALUES ('532322', '双柏县', '532300', 'shuang bai xian');
INSERT INTO `t_city` VALUES ('532323', '牟定县', '532300', 'mu ding xian');
INSERT INTO `t_city` VALUES ('532324', '南华县', '532300', 'nan hua xian');
INSERT INTO `t_city` VALUES ('532325', '姚安县', '532300', 'yao an xian');
INSERT INTO `t_city` VALUES ('532326', '大姚县', '532300', 'da yao xian');
INSERT INTO `t_city` VALUES ('532327', '永仁县', '532300', 'yong ren xian');
INSERT INTO `t_city` VALUES ('532328', '元谋县', '532300', 'yuan mou xian');
INSERT INTO `t_city` VALUES ('532329', '武定县', '532300', 'wu ding xian');
INSERT INTO `t_city` VALUES ('532331', '禄丰县', '532300', 'lu feng xian');
INSERT INTO `t_city` VALUES ('532332', '其它区', '532300', 'qi ta qu');
INSERT INTO `t_city` VALUES ('532500', '红河哈尼族彝族自治州', '530000', 'hong he ha ni zu yi zu zi zhi zhou');
INSERT INTO `t_city` VALUES ('532501', '个旧市', '532500', 'ge jiu shi');
INSERT INTO `t_city` VALUES ('532502', '开远市', '532500', 'kai yuan shi');
INSERT INTO `t_city` VALUES ('532522', '蒙自县', '532500', 'meng zi xian');
INSERT INTO `t_city` VALUES ('532523', '屏边苗族自治县', '532500', 'ping bian miao zu zi zhi xian');
INSERT INTO `t_city` VALUES ('532524', '建水县', '532500', 'jian shui xian');
INSERT INTO `t_city` VALUES ('532525', '石屏县', '532500', 'shi ping xian');
INSERT INTO `t_city` VALUES ('532526', '弥勒县', '532500', 'mi le xian');
INSERT INTO `t_city` VALUES ('532527', '泸西县', '532500', 'lu xi xian');
INSERT INTO `t_city` VALUES ('532528', '元阳县', '532500', 'yuan yang xian');
INSERT INTO `t_city` VALUES ('532529', '红河县', '532500', 'hong he xian');
INSERT INTO `t_city` VALUES ('532530', '金平苗族瑶族傣族自治县', '532500', 'jin ping miao zu yao zu dai zu zi zhi xian');
INSERT INTO `t_city` VALUES ('532531', '绿春县', '532500', 'lv chun xian');
INSERT INTO `t_city` VALUES ('532532', '河口瑶族自治县', '532500', 'he kou yao zu zi zhi xian');
INSERT INTO `t_city` VALUES ('532533', '其它区', '532500', 'qi ta qu');
INSERT INTO `t_city` VALUES ('532600', '文山壮族苗族自治州', '530000', 'wen shan zhuang zu miao zu zi zhi zhou');
INSERT INTO `t_city` VALUES ('532621', '文山县', '532600', 'wen shan xian');
INSERT INTO `t_city` VALUES ('532622', '砚山县', '532600', 'yan shan xian');
INSERT INTO `t_city` VALUES ('532623', '西畴县', '532600', 'xi chou xian');
INSERT INTO `t_city` VALUES ('532624', '麻栗坡县', '532600', 'ma li po xian');
INSERT INTO `t_city` VALUES ('532625', '马关县', '532600', 'ma guan xian');
INSERT INTO `t_city` VALUES ('532626', '丘北县', '532600', 'qiu bei xian');
INSERT INTO `t_city` VALUES ('532627', '广南县', '532600', 'guang nan xian');
INSERT INTO `t_city` VALUES ('532628', '富宁县', '532600', 'fu ning xian');
INSERT INTO `t_city` VALUES ('532629', '其它区', '532600', 'qi ta qu');
INSERT INTO `t_city` VALUES ('532800', '西双版纳傣族自治州', '530000', 'xi shuang ban na dai zu zi zhi zhou');
INSERT INTO `t_city` VALUES ('532801', '景洪市', '532800', 'jing hong shi');
INSERT INTO `t_city` VALUES ('532822', '勐海县', '532800', 'meng hai xian');
INSERT INTO `t_city` VALUES ('532823', '勐腊县', '532800', 'meng la xian');
INSERT INTO `t_city` VALUES ('532824', '其它区', '532800', 'qi ta qu');
INSERT INTO `t_city` VALUES ('532900', '大理白族自治州', '530000', 'da li bai zu zi zhi zhou');
INSERT INTO `t_city` VALUES ('532901', '大理市', '532900', 'da li shi');
INSERT INTO `t_city` VALUES ('532922', '漾濞彝族自治县', '532900', 'yang bi yi zu zi zhi xian');
INSERT INTO `t_city` VALUES ('532923', '祥云县', '532900', 'xiang yun xian');
INSERT INTO `t_city` VALUES ('532924', '宾川县', '532900', 'bin chuan xian');
INSERT INTO `t_city` VALUES ('532925', '弥渡县', '532900', 'mi du xian');
INSERT INTO `t_city` VALUES ('532926', '南涧彝族自治县', '532900', 'nan jian yi zu zi zhi xian');
INSERT INTO `t_city` VALUES ('532927', '巍山彝族回族自治县', '532900', 'wei shan yi zu hui zu zi zhi xian');
INSERT INTO `t_city` VALUES ('532928', '永平县', '532900', 'yong ping xian');
INSERT INTO `t_city` VALUES ('532929', '云龙县', '532900', 'yun long xian');
INSERT INTO `t_city` VALUES ('532930', '洱源县', '532900', 'er yuan xian');
INSERT INTO `t_city` VALUES ('532931', '剑川县', '532900', 'jian chuan xian');
INSERT INTO `t_city` VALUES ('532932', '鹤庆县', '532900', 'he qing xian');
INSERT INTO `t_city` VALUES ('532933', '其它区', '532900', 'qi ta qu');
INSERT INTO `t_city` VALUES ('533100', '德宏傣族景颇族自治州', '530000', 'de hong dai zu jing po zu zi zhi zhou');
INSERT INTO `t_city` VALUES ('533102', '瑞丽市', '533100', 'rui li shi');
INSERT INTO `t_city` VALUES ('533103', '潞西市', '533100', 'lu xi shi');
INSERT INTO `t_city` VALUES ('533122', '梁河县', '533100', 'liang he xian');
INSERT INTO `t_city` VALUES ('533123', '盈江县', '533100', 'ying jiang xian');
INSERT INTO `t_city` VALUES ('533124', '陇川县', '533100', 'long chuan xian');
INSERT INTO `t_city` VALUES ('533125', '其它区', '533100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('533300', '怒江傈僳族自治州', '530000', 'nu jiang li su zu zi zhi zhou');
INSERT INTO `t_city` VALUES ('533321', '泸水县', '533300', 'lu shui xian');
INSERT INTO `t_city` VALUES ('533323', '福贡县', '533300', 'fu gong xian');
INSERT INTO `t_city` VALUES ('533324', '贡山独龙族怒族自治县', '533300', 'gong shan du long zu nu zu zi zhi xian');
INSERT INTO `t_city` VALUES ('533325', '兰坪白族普米族自治县', '533300', 'lan ping bai zu pu mi zu zi zhi xian');
INSERT INTO `t_city` VALUES ('533326', '其它区', '533300', 'qi ta qu');
INSERT INTO `t_city` VALUES ('533400', '迪庆藏族自治州', '530000', 'di qing zang zu zi zhi zhou');
INSERT INTO `t_city` VALUES ('533421', '香格里拉县', '533400', 'xiang ge li la xian');
INSERT INTO `t_city` VALUES ('533422', '德钦县', '533400', 'de qin xian');
INSERT INTO `t_city` VALUES ('533423', '维西傈僳族自治县', '533400', 'wei xi li su zu zi zhi xian');
INSERT INTO `t_city` VALUES ('533424', '其它区', '533400', 'qi ta qu');
INSERT INTO `t_city` VALUES ('540000', '西藏自治区', '1', 'xi zang zi zhi qu');
INSERT INTO `t_city` VALUES ('540100', '拉萨市', '540000', 'la sa shi');
INSERT INTO `t_city` VALUES ('540102', '城关区', '540100', 'cheng guan qu');
INSERT INTO `t_city` VALUES ('540121', '林周县', '540100', 'lin zhou xian');
INSERT INTO `t_city` VALUES ('540122', '当雄县', '540100', 'dang xiong xian');
INSERT INTO `t_city` VALUES ('540123', '尼木县', '540100', 'ni mu xian');
INSERT INTO `t_city` VALUES ('540124', '曲水县', '540100', 'qu shui xian');
INSERT INTO `t_city` VALUES ('540125', '堆龙德庆县', '540100', 'dui long de qing xian');
INSERT INTO `t_city` VALUES ('540126', '达孜县', '540100', 'da zi xian');
INSERT INTO `t_city` VALUES ('540127', '墨竹工卡县', '540100', 'mo zhu gong ka xian');
INSERT INTO `t_city` VALUES ('540128', '其它区', '540100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('542100', '昌都地区', '540000', 'chang du di qu');
INSERT INTO `t_city` VALUES ('542121', '昌都县', '542100', 'chang du xian');
INSERT INTO `t_city` VALUES ('542122', '江达县', '542100', 'jiang da xian');
INSERT INTO `t_city` VALUES ('542123', '贡觉县', '542100', 'gong jue xian');
INSERT INTO `t_city` VALUES ('542124', '类乌齐县', '542100', 'lei wu qi xian');
INSERT INTO `t_city` VALUES ('542125', '丁青县', '542100', 'ding qing xian');
INSERT INTO `t_city` VALUES ('542126', '察雅县', '542100', 'cha ya xian');
INSERT INTO `t_city` VALUES ('542127', '八宿县', '542100', 'ba su xian');
INSERT INTO `t_city` VALUES ('542128', '左贡县', '542100', 'zuo gong xian');
INSERT INTO `t_city` VALUES ('542129', '芒康县', '542100', 'mang kang xian');
INSERT INTO `t_city` VALUES ('542132', '洛隆县', '542100', 'luo long xian');
INSERT INTO `t_city` VALUES ('542133', '边坝县', '542100', 'bian ba xian');
INSERT INTO `t_city` VALUES ('542134', '其它区', '542100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('542200', '山南地区', '540000', 'shan nan di qu');
INSERT INTO `t_city` VALUES ('542221', '乃东县', '542200', 'nai dong xian');
INSERT INTO `t_city` VALUES ('542222', '扎囊县', '542200', 'zha nang xian');
INSERT INTO `t_city` VALUES ('542223', '贡嘎县', '542200', 'gong ga xian');
INSERT INTO `t_city` VALUES ('542224', '桑日县', '542200', 'sang ri xian');
INSERT INTO `t_city` VALUES ('542225', '琼结县', '542200', 'qiong jie xian');
INSERT INTO `t_city` VALUES ('542226', '曲松县', '542200', 'qu song xian');
INSERT INTO `t_city` VALUES ('542227', '措美县', '542200', 'cuo mei xian');
INSERT INTO `t_city` VALUES ('542228', '洛扎县', '542200', 'luo zha xian');
INSERT INTO `t_city` VALUES ('542229', '加查县', '542200', 'jia cha xian');
INSERT INTO `t_city` VALUES ('542231', '隆子县', '542200', 'long zi xian');
INSERT INTO `t_city` VALUES ('542232', '错那县', '542200', 'cuo na xian');
INSERT INTO `t_city` VALUES ('542233', '浪卡子县', '542200', 'lang ka zi xian');
INSERT INTO `t_city` VALUES ('542234', '其它区', '542200', 'qi ta qu');
INSERT INTO `t_city` VALUES ('542300', '日喀则地区', '540000', 'ri ka ze di qu');
INSERT INTO `t_city` VALUES ('542301', '日喀则市', '542300', 'ri ka ze shi');
INSERT INTO `t_city` VALUES ('542322', '南木林县', '542300', 'nan mu lin xian');
INSERT INTO `t_city` VALUES ('542323', '江孜县', '542300', 'jiang zi xian');
INSERT INTO `t_city` VALUES ('542324', '定日县', '542300', 'ding ri xian');
INSERT INTO `t_city` VALUES ('542325', '萨迦县', '542300', 'sa jia xian');
INSERT INTO `t_city` VALUES ('542326', '拉孜县', '542300', 'la zi xian');
INSERT INTO `t_city` VALUES ('542327', '昂仁县', '542300', 'ang ren xian');
INSERT INTO `t_city` VALUES ('542328', '谢通门县', '542300', 'xie tong men xian');
INSERT INTO `t_city` VALUES ('542329', '白朗县', '542300', 'bai lang xian');
INSERT INTO `t_city` VALUES ('542330', '仁布县', '542300', 'ren bu xian');
INSERT INTO `t_city` VALUES ('542331', '康马县', '542300', 'kang ma xian');
INSERT INTO `t_city` VALUES ('542332', '定结县', '542300', 'ding jie xian');
INSERT INTO `t_city` VALUES ('542333', '仲巴县', '542300', 'zhong ba xian');
INSERT INTO `t_city` VALUES ('542334', '亚东县', '542300', 'ya dong xian');
INSERT INTO `t_city` VALUES ('542335', '吉隆县', '542300', 'ji long xian');
INSERT INTO `t_city` VALUES ('542336', '聂拉木县', '542300', 'nie la mu xian');
INSERT INTO `t_city` VALUES ('542337', '萨嘎县', '542300', 'sa ga xian');
INSERT INTO `t_city` VALUES ('542338', '岗巴县', '542300', 'gang ba xian');
INSERT INTO `t_city` VALUES ('542339', '其它区', '542300', 'qi ta qu');
INSERT INTO `t_city` VALUES ('542400', '那曲地区', '540000', 'na qu di qu');
INSERT INTO `t_city` VALUES ('542421', '那曲县', '542400', 'na qu xian');
INSERT INTO `t_city` VALUES ('542422', '嘉黎县', '542400', 'jia li xian');
INSERT INTO `t_city` VALUES ('542423', '比如县', '542400', 'bi ru xian');
INSERT INTO `t_city` VALUES ('542424', '聂荣县', '542400', 'nie rong xian');
INSERT INTO `t_city` VALUES ('542425', '安多县', '542400', 'an duo xian');
INSERT INTO `t_city` VALUES ('542426', '申扎县', '542400', 'shen zha xian');
INSERT INTO `t_city` VALUES ('542427', '索县', '542400', 'suo xian');
INSERT INTO `t_city` VALUES ('542428', '班戈县', '542400', 'ban ge xian');
INSERT INTO `t_city` VALUES ('542429', '巴青县', '542400', 'ba qing xian');
INSERT INTO `t_city` VALUES ('542430', '尼玛县', '542400', 'ni ma xian');
INSERT INTO `t_city` VALUES ('542431', '其它区', '542400', 'qi ta qu');
INSERT INTO `t_city` VALUES ('542500', '阿里地区', '540000', 'a li di qu');
INSERT INTO `t_city` VALUES ('542521', '普兰县', '542500', 'pu lan xian');
INSERT INTO `t_city` VALUES ('542522', '札达县', '542500', 'zha da xian');
INSERT INTO `t_city` VALUES ('542523', '噶尔县', '542500', 'ga er xian');
INSERT INTO `t_city` VALUES ('542524', '日土县', '542500', 'ri tu xian');
INSERT INTO `t_city` VALUES ('542525', '革吉县', '542500', 'ge ji xian');
INSERT INTO `t_city` VALUES ('542526', '改则县', '542500', 'gai ze xian');
INSERT INTO `t_city` VALUES ('542527', '措勤县', '542500', 'cuo qin xian');
INSERT INTO `t_city` VALUES ('542528', '其它区', '542500', 'qi ta qu');
INSERT INTO `t_city` VALUES ('542600', '林芝地区', '540000', 'lin zhi di qu');
INSERT INTO `t_city` VALUES ('542621', '林芝县', '542600', 'lin zhi xian');
INSERT INTO `t_city` VALUES ('542622', '工布江达县', '542600', 'gong bu jiang da xian');
INSERT INTO `t_city` VALUES ('542623', '米林县', '542600', 'mi lin xian');
INSERT INTO `t_city` VALUES ('542624', '墨脱县', '542600', 'mo tuo xian');
INSERT INTO `t_city` VALUES ('542625', '波密县', '542600', 'bo mi xian');
INSERT INTO `t_city` VALUES ('542626', '察隅县', '542600', 'cha yu xian');
INSERT INTO `t_city` VALUES ('542627', '朗县', '542600', 'lang xian');
INSERT INTO `t_city` VALUES ('542628', '其它区', '542600', 'qi ta qu');
INSERT INTO `t_city` VALUES ('610000', '陕西省', '1', 'shan xi sheng');
INSERT INTO `t_city` VALUES ('610100', '西安市', '610000', 'xi an shi');
INSERT INTO `t_city` VALUES ('610102', '新城区', '610100', 'xin cheng qu');
INSERT INTO `t_city` VALUES ('610103', '碑林区', '610100', 'bei lin qu');
INSERT INTO `t_city` VALUES ('610104', '莲湖区', '610100', 'lian hu qu');
INSERT INTO `t_city` VALUES ('610111', '灞桥区', '610100', 'ba qiao qu');
INSERT INTO `t_city` VALUES ('610112', '未央区', '610100', 'wei yang qu');
INSERT INTO `t_city` VALUES ('610113', '雁塔区', '610100', 'yan ta qu');
INSERT INTO `t_city` VALUES ('610114', '阎良区', '610100', 'yan liang qu');
INSERT INTO `t_city` VALUES ('610115', '临潼区', '610100', 'lin tong qu');
INSERT INTO `t_city` VALUES ('610116', '长安区', '610100', 'chang an qu');
INSERT INTO `t_city` VALUES ('610122', '蓝田县', '610100', 'lan tian xian');
INSERT INTO `t_city` VALUES ('610124', '周至县', '610100', 'zhou zhi xian');
INSERT INTO `t_city` VALUES ('610125', '户县', '610100', 'hu xian');
INSERT INTO `t_city` VALUES ('610126', '高陵县', '610100', 'gao ling xian');
INSERT INTO `t_city` VALUES ('610127', '其它区', '610100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('610200', '铜川市', '610000', 'tong chuan shi');
INSERT INTO `t_city` VALUES ('610202', '王益区', '610200', 'wang yi qu');
INSERT INTO `t_city` VALUES ('610203', '印台区', '610200', 'yin tai qu');
INSERT INTO `t_city` VALUES ('610204', '耀州区', '610200', 'yao zhou qu');
INSERT INTO `t_city` VALUES ('610222', '宜君县', '610200', 'yi jun xian');
INSERT INTO `t_city` VALUES ('610223', '其它区', '610200', 'qi ta qu');
INSERT INTO `t_city` VALUES ('610300', '宝鸡市', '610000', 'bao ji shi');
INSERT INTO `t_city` VALUES ('610302', '渭滨区', '610300', 'wei bin qu');
INSERT INTO `t_city` VALUES ('610303', '金台区', '610300', 'jin tai qu');
INSERT INTO `t_city` VALUES ('610304', '陈仓区', '610300', 'chen cang qu');
INSERT INTO `t_city` VALUES ('610322', '凤翔县', '610300', 'feng xiang xian');
INSERT INTO `t_city` VALUES ('610323', '岐山县', '610300', 'qi shan xian');
INSERT INTO `t_city` VALUES ('610324', '扶风县', '610300', 'fu feng xian');
INSERT INTO `t_city` VALUES ('610326', '眉县', '610300', 'mei xian');
INSERT INTO `t_city` VALUES ('610327', '陇县', '610300', 'long xian');
INSERT INTO `t_city` VALUES ('610328', '千阳县', '610300', 'qian yang xian');
INSERT INTO `t_city` VALUES ('610329', '麟游县', '610300', 'lin you xian');
INSERT INTO `t_city` VALUES ('610330', '凤县', '610300', 'feng xian');
INSERT INTO `t_city` VALUES ('610331', '太白县', '610300', 'tai bai xian');
INSERT INTO `t_city` VALUES ('610332', '其它区', '610300', 'qi ta qu');
INSERT INTO `t_city` VALUES ('610400', '咸阳市', '610000', 'xian yang shi');
INSERT INTO `t_city` VALUES ('610402', '秦都区', '610400', 'qin du qu');
INSERT INTO `t_city` VALUES ('610403', '杨凌区', '610400', 'yang ling qu');
INSERT INTO `t_city` VALUES ('610404', '渭城区', '610400', 'wei cheng qu');
INSERT INTO `t_city` VALUES ('610422', '三原县', '610400', 'san yuan xian');
INSERT INTO `t_city` VALUES ('610423', '泾阳县', '610400', 'jing yang xian');
INSERT INTO `t_city` VALUES ('610424', '乾县', '610400', 'qian xian');
INSERT INTO `t_city` VALUES ('610425', '礼泉县', '610400', 'li quan xian');
INSERT INTO `t_city` VALUES ('610426', '永寿县', '610400', 'yong shou xian');
INSERT INTO `t_city` VALUES ('610427', '彬县', '610400', 'bin xian');
INSERT INTO `t_city` VALUES ('610428', '长武县', '610400', 'chang wu xian');
INSERT INTO `t_city` VALUES ('610429', '旬邑县', '610400', 'xun yi xian');
INSERT INTO `t_city` VALUES ('610430', '淳化县', '610400', 'chun hua xian');
INSERT INTO `t_city` VALUES ('610431', '武功县', '610400', 'wu gong xian');
INSERT INTO `t_city` VALUES ('610481', '兴平市', '610400', 'xing ping shi');
INSERT INTO `t_city` VALUES ('610482', '其它区', '610400', 'qi ta qu');
INSERT INTO `t_city` VALUES ('610500', '渭南市', '610000', 'wei nan shi');
INSERT INTO `t_city` VALUES ('610502', '临渭区', '610500', 'lin wei qu');
INSERT INTO `t_city` VALUES ('610521', '华县', '610500', 'hua xian');
INSERT INTO `t_city` VALUES ('610522', '潼关县', '610500', 'tong guan xian');
INSERT INTO `t_city` VALUES ('610523', '大荔县', '610500', 'da li xian');
INSERT INTO `t_city` VALUES ('610524', '合阳县', '610500', 'he yang xian');
INSERT INTO `t_city` VALUES ('610525', '澄城县', '610500', 'cheng cheng xian');
INSERT INTO `t_city` VALUES ('610526', '蒲城县', '610500', 'pu cheng xian');
INSERT INTO `t_city` VALUES ('610527', '白水县', '610500', 'bai shui xian');
INSERT INTO `t_city` VALUES ('610528', '富平县', '610500', 'fu ping xian');
INSERT INTO `t_city` VALUES ('610581', '韩城市', '610500', 'han cheng shi');
INSERT INTO `t_city` VALUES ('610582', '华阴市', '610500', 'hua yin shi');
INSERT INTO `t_city` VALUES ('610583', '其它区', '610500', 'qi ta qu');
INSERT INTO `t_city` VALUES ('610600', '延安市', '610000', 'yan an shi');
INSERT INTO `t_city` VALUES ('610602', '宝塔区', '610600', 'bao ta qu');
INSERT INTO `t_city` VALUES ('610621', '延长县', '610600', 'yan chang xian');
INSERT INTO `t_city` VALUES ('610622', '延川县', '610600', 'yan chuan xian');
INSERT INTO `t_city` VALUES ('610623', '子长县', '610600', 'zi chang xian');
INSERT INTO `t_city` VALUES ('610624', '安塞县', '610600', 'an sai xian');
INSERT INTO `t_city` VALUES ('610625', '志丹县', '610600', 'zhi dan xian');
INSERT INTO `t_city` VALUES ('610626', '吴起县', '610600', 'wu qi xian');
INSERT INTO `t_city` VALUES ('610627', '甘泉县', '610600', 'gan quan xian');
INSERT INTO `t_city` VALUES ('610628', '富县', '610600', 'fu xian');
INSERT INTO `t_city` VALUES ('610629', '洛川县', '610600', 'luo chuan xian');
INSERT INTO `t_city` VALUES ('610630', '宜川县', '610600', 'yi chuan xian');
INSERT INTO `t_city` VALUES ('610631', '黄龙县', '610600', 'huang long xian');
INSERT INTO `t_city` VALUES ('610632', '黄陵县', '610600', 'huang ling xian');
INSERT INTO `t_city` VALUES ('610633', '其它区', '610600', 'qi ta qu');
INSERT INTO `t_city` VALUES ('610700', '汉中市', '610000', 'han zhong shi');
INSERT INTO `t_city` VALUES ('610702', '汉台区', '610700', 'han tai qu');
INSERT INTO `t_city` VALUES ('610721', '南郑县', '610700', 'nan zheng xian');
INSERT INTO `t_city` VALUES ('610722', '城固县', '610700', 'cheng gu xian');
INSERT INTO `t_city` VALUES ('610723', '洋县', '610700', 'yang xian');
INSERT INTO `t_city` VALUES ('610724', '西乡县', '610700', 'xi xiang xian');
INSERT INTO `t_city` VALUES ('610725', '勉县', '610700', 'mian xian');
INSERT INTO `t_city` VALUES ('610726', '宁强县', '610700', 'ning qiang xian');
INSERT INTO `t_city` VALUES ('610727', '略阳县', '610700', 'lve yang xian');
INSERT INTO `t_city` VALUES ('610728', '镇巴县', '610700', 'zhen ba xian');
INSERT INTO `t_city` VALUES ('610729', '留坝县', '610700', 'liu ba xian');
INSERT INTO `t_city` VALUES ('610730', '佛坪县', '610700', 'fo ping xian');
INSERT INTO `t_city` VALUES ('610731', '其它区', '610700', 'qi ta qu');
INSERT INTO `t_city` VALUES ('610800', '榆林市', '610000', 'yu lin shi');
INSERT INTO `t_city` VALUES ('610802', '榆阳区', '610800', 'yu yang qu');
INSERT INTO `t_city` VALUES ('610821', '神木县', '610800', 'shen mu xian');
INSERT INTO `t_city` VALUES ('610822', '府谷县', '610800', 'fu gu xian');
INSERT INTO `t_city` VALUES ('610823', '横山县', '610800', 'heng shan xian');
INSERT INTO `t_city` VALUES ('610824', '靖边县', '610800', 'jing bian xian');
INSERT INTO `t_city` VALUES ('610825', '定边县', '610800', 'ding bian xian');
INSERT INTO `t_city` VALUES ('610826', '绥德县', '610800', 'sui de xian');
INSERT INTO `t_city` VALUES ('610827', '米脂县', '610800', 'mi zhi xian');
INSERT INTO `t_city` VALUES ('610828', '佳县', '610800', 'jia xian');
INSERT INTO `t_city` VALUES ('610829', '吴堡县', '610800', 'wu bao xian');
INSERT INTO `t_city` VALUES ('610830', '清涧县', '610800', 'qing jian xian');
INSERT INTO `t_city` VALUES ('610831', '子洲县', '610800', 'zi zhou xian');
INSERT INTO `t_city` VALUES ('610832', '其它区', '610800', 'qi ta qu');
INSERT INTO `t_city` VALUES ('610900', '安康市', '610000', 'an kang shi');
INSERT INTO `t_city` VALUES ('610902', '汉滨区', '610900', 'han bin qu');
INSERT INTO `t_city` VALUES ('610921', '汉阴县', '610900', 'han yin xian');
INSERT INTO `t_city` VALUES ('610922', '石泉县', '610900', 'shi quan xian');
INSERT INTO `t_city` VALUES ('610923', '宁陕县', '610900', 'ning shan xian');
INSERT INTO `t_city` VALUES ('610924', '紫阳县', '610900', 'zi yang xian');
INSERT INTO `t_city` VALUES ('610925', '岚皋县', '610900', 'lan gao xian');
INSERT INTO `t_city` VALUES ('610926', '平利县', '610900', 'ping li xian');
INSERT INTO `t_city` VALUES ('610927', '镇坪县', '610900', 'zhen ping xian');
INSERT INTO `t_city` VALUES ('610928', '旬阳县', '610900', 'xun yang xian');
INSERT INTO `t_city` VALUES ('610929', '白河县', '610900', 'bai he xian');
INSERT INTO `t_city` VALUES ('610930', '其它区', '610900', 'qi ta qu');
INSERT INTO `t_city` VALUES ('611000', '商洛市', '610000', 'shang luo shi');
INSERT INTO `t_city` VALUES ('611002', '商州区', '611000', 'shang zhou qu');
INSERT INTO `t_city` VALUES ('611021', '洛南县', '611000', 'luo nan xian');
INSERT INTO `t_city` VALUES ('611022', '丹凤县', '611000', 'dan feng xian');
INSERT INTO `t_city` VALUES ('611023', '商南县', '611000', 'shang nan xian');
INSERT INTO `t_city` VALUES ('611024', '山阳县', '611000', 'shan yang xian');
INSERT INTO `t_city` VALUES ('611025', '镇安县', '611000', 'zhen an xian');
INSERT INTO `t_city` VALUES ('611026', '柞水县', '611000', 'zha shui xian');
INSERT INTO `t_city` VALUES ('611027', '其它区', '611000', 'qi ta qu');
INSERT INTO `t_city` VALUES ('620000', '甘肃省', '1', 'gan su sheng');
INSERT INTO `t_city` VALUES ('620100', '兰州市', '620000', 'lan zhou shi');
INSERT INTO `t_city` VALUES ('620102', '城关区', '620100', 'cheng guan qu');
INSERT INTO `t_city` VALUES ('620103', '七里河区', '620100', 'qi li he qu');
INSERT INTO `t_city` VALUES ('620104', '西固区', '620100', 'xi gu qu');
INSERT INTO `t_city` VALUES ('620105', '安宁区', '620100', 'an ning qu');
INSERT INTO `t_city` VALUES ('620111', '红古区', '620100', 'hong gu qu');
INSERT INTO `t_city` VALUES ('620121', '永登县', '620100', 'yong deng xian');
INSERT INTO `t_city` VALUES ('620122', '皋兰县', '620100', 'gao lan xian');
INSERT INTO `t_city` VALUES ('620123', '榆中县', '620100', 'yu zhong xian');
INSERT INTO `t_city` VALUES ('620124', '其它区', '620100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('620200', '嘉峪关市', '620000', 'jia yu guan shi');
INSERT INTO `t_city` VALUES ('620300', '金昌市', '620000', 'jin chang shi');
INSERT INTO `t_city` VALUES ('620302', '金川区', '620300', 'jin chuan qu');
INSERT INTO `t_city` VALUES ('620321', '永昌县', '620300', 'yong chang xian');
INSERT INTO `t_city` VALUES ('620322', '其它区', '620300', 'qi ta qu');
INSERT INTO `t_city` VALUES ('620400', '白银市', '620000', 'bai yin shi');
INSERT INTO `t_city` VALUES ('620402', '白银区', '620400', 'bai yin qu');
INSERT INTO `t_city` VALUES ('620403', '平川区', '620400', 'ping chuan qu');
INSERT INTO `t_city` VALUES ('620421', '靖远县', '620400', 'jing yuan xian');
INSERT INTO `t_city` VALUES ('620422', '会宁县', '620400', 'hui ning xian');
INSERT INTO `t_city` VALUES ('620423', '景泰县', '620400', 'jing tai xian');
INSERT INTO `t_city` VALUES ('620424', '其它区', '620400', 'qi ta qu');
INSERT INTO `t_city` VALUES ('620500', '天水市', '620000', 'tian shui shi');
INSERT INTO `t_city` VALUES ('620502', '秦州区', '620500', 'qin zhou qu');
INSERT INTO `t_city` VALUES ('620503', '麦积区', '620500', 'mai ji qu');
INSERT INTO `t_city` VALUES ('620521', '清水县', '620500', 'qing shui xian');
INSERT INTO `t_city` VALUES ('620522', '秦安县', '620500', 'qin an xian');
INSERT INTO `t_city` VALUES ('620523', '甘谷县', '620500', 'gan gu xian');
INSERT INTO `t_city` VALUES ('620524', '武山县', '620500', 'wu shan xian');
INSERT INTO `t_city` VALUES ('620525', '张家川回族自治县', '620500', 'zhang jia chuan hui zu zi zhi xian');
INSERT INTO `t_city` VALUES ('620526', '其它区', '620500', 'qi ta qu');
INSERT INTO `t_city` VALUES ('620600', '武威市', '620000', 'wu wei shi');
INSERT INTO `t_city` VALUES ('620602', '凉州区', '620600', 'liang zhou qu');
INSERT INTO `t_city` VALUES ('620621', '民勤县', '620600', 'min qin xian');
INSERT INTO `t_city` VALUES ('620622', '古浪县', '620600', 'gu lang xian');
INSERT INTO `t_city` VALUES ('620623', '天祝藏族自治县', '620600', 'tian zhu zang zu zi zhi xian');
INSERT INTO `t_city` VALUES ('620624', '其它区', '620600', 'qi ta qu');
INSERT INTO `t_city` VALUES ('620700', '张掖市', '620000', 'zhang ye shi');
INSERT INTO `t_city` VALUES ('620702', '甘州区', '620700', 'gan zhou qu');
INSERT INTO `t_city` VALUES ('620721', '肃南裕固族自治县', '620700', 'su nan yu gu zu zi zhi xian');
INSERT INTO `t_city` VALUES ('620722', '民乐县', '620700', 'min le xian');
INSERT INTO `t_city` VALUES ('620723', '临泽县', '620700', 'lin ze xian');
INSERT INTO `t_city` VALUES ('620724', '高台县', '620700', 'gao tai xian');
INSERT INTO `t_city` VALUES ('620725', '山丹县', '620700', 'shan dan xian');
INSERT INTO `t_city` VALUES ('620726', '其它区', '620700', 'qi ta qu');
INSERT INTO `t_city` VALUES ('620800', '平凉市', '620000', 'ping liang shi');
INSERT INTO `t_city` VALUES ('620802', '崆峒区', '620800', 'kong tong qu');
INSERT INTO `t_city` VALUES ('620821', '泾川县', '620800', 'jing chuan xian');
INSERT INTO `t_city` VALUES ('620822', '灵台县', '620800', 'ling tai xian');
INSERT INTO `t_city` VALUES ('620823', '崇信县', '620800', 'chong shen xian');
INSERT INTO `t_city` VALUES ('620824', '华亭县', '620800', 'hua ting xian');
INSERT INTO `t_city` VALUES ('620825', '庄浪县', '620800', 'zhuang lang xian');
INSERT INTO `t_city` VALUES ('620826', '静宁县', '620800', 'jing ning xian');
INSERT INTO `t_city` VALUES ('620827', '其它区', '620800', 'qi ta qu');
INSERT INTO `t_city` VALUES ('620900', '酒泉市', '620000', 'jiu quan shi');
INSERT INTO `t_city` VALUES ('620902', '肃州区', '620900', 'su zhou qu');
INSERT INTO `t_city` VALUES ('620921', '金塔县', '620900', 'jin ta xian');
INSERT INTO `t_city` VALUES ('620922', '安西县', '620900', 'an xi xian');
INSERT INTO `t_city` VALUES ('620923', '肃北蒙古族自治县', '620900', 'su bei meng gu zu zi zhi xian');
INSERT INTO `t_city` VALUES ('620924', '阿克塞哈萨克族自治县', '620900', 'a ke sai ha sa ke zu zi zhi xian');
INSERT INTO `t_city` VALUES ('620981', '玉门市', '620900', 'yu men shi');
INSERT INTO `t_city` VALUES ('620982', '敦煌市', '620900', 'dun huang shi');
INSERT INTO `t_city` VALUES ('620983', '其它区', '620900', 'qi ta qu');
INSERT INTO `t_city` VALUES ('621000', '庆阳市', '620000', 'qing yang shi');
INSERT INTO `t_city` VALUES ('621002', '西峰区', '621000', 'xi feng qu');
INSERT INTO `t_city` VALUES ('621021', '庆城县', '621000', 'qing cheng xian');
INSERT INTO `t_city` VALUES ('621022', '环县', '621000', 'huan xian');
INSERT INTO `t_city` VALUES ('621023', '华池县', '621000', 'hua chi xian');
INSERT INTO `t_city` VALUES ('621024', '合水县', '621000', 'he shui xian');
INSERT INTO `t_city` VALUES ('621025', '正宁县', '621000', 'zheng ning xian');
INSERT INTO `t_city` VALUES ('621026', '宁县', '621000', 'ning xian');
INSERT INTO `t_city` VALUES ('621027', '镇原县', '621000', 'zhen yuan xian');
INSERT INTO `t_city` VALUES ('621028', '其它区', '621000', 'qi ta qu');
INSERT INTO `t_city` VALUES ('621100', '定西市', '620000', 'ding xi shi');
INSERT INTO `t_city` VALUES ('621102', '安定区', '621100', 'an ding qu');
INSERT INTO `t_city` VALUES ('621121', '通渭县', '621100', 'tong wei xian');
INSERT INTO `t_city` VALUES ('621122', '陇西县', '621100', 'long xi xian');
INSERT INTO `t_city` VALUES ('621123', '渭源县', '621100', 'wei yuan xian');
INSERT INTO `t_city` VALUES ('621124', '临洮县', '621100', 'lin tao xian');
INSERT INTO `t_city` VALUES ('621125', '漳县', '621100', 'zhang xian');
INSERT INTO `t_city` VALUES ('621126', '岷县', '621100', 'min xian');
INSERT INTO `t_city` VALUES ('621127', '其它区', '621100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('621200', '陇南市', '620000', 'long nan shi');
INSERT INTO `t_city` VALUES ('621202', '武都区', '621200', 'wu du qu');
INSERT INTO `t_city` VALUES ('621221', '成县', '621200', 'cheng xian');
INSERT INTO `t_city` VALUES ('621222', '文县', '621200', 'wen xian');
INSERT INTO `t_city` VALUES ('621223', '宕昌县', '621200', 'dang chang xian');
INSERT INTO `t_city` VALUES ('621224', '康县', '621200', 'kang xian');
INSERT INTO `t_city` VALUES ('621225', '西和县', '621200', 'xi he xian');
INSERT INTO `t_city` VALUES ('621226', '礼县', '621200', 'li xian');
INSERT INTO `t_city` VALUES ('621227', '徽县', '621200', 'hui xian');
INSERT INTO `t_city` VALUES ('621228', '两当县', '621200', 'liang dang xian');
INSERT INTO `t_city` VALUES ('621229', '其它区', '621200', 'qi ta qu');
INSERT INTO `t_city` VALUES ('622900', '临夏回族自治州', '620000', 'lin xia hui zu zi zhi zhou');
INSERT INTO `t_city` VALUES ('622901', '临夏市', '622900', 'lin xia shi');
INSERT INTO `t_city` VALUES ('622921', '临夏县', '622900', 'lin xia xian');
INSERT INTO `t_city` VALUES ('622922', '康乐县', '622900', 'kang le xian');
INSERT INTO `t_city` VALUES ('622923', '永靖县', '622900', 'yong jing xian');
INSERT INTO `t_city` VALUES ('622924', '广河县', '622900', 'guang he xian');
INSERT INTO `t_city` VALUES ('622925', '和政县', '622900', 'he zheng xian');
INSERT INTO `t_city` VALUES ('622926', '东乡族自治县', '622900', 'dong xiang zu zi zhi xian');
INSERT INTO `t_city` VALUES ('622927', '积石山保安族东乡族撒拉族自治县', '622900', 'ji shi shan bao an zu dong xiang zu sa la zu zi zhi xian');
INSERT INTO `t_city` VALUES ('622928', '其它区', '622900', 'qi ta qu');
INSERT INTO `t_city` VALUES ('623000', '甘南藏族自治州', '620000', 'gan nan zang zu zi zhi zhou');
INSERT INTO `t_city` VALUES ('623001', '合作市', '623000', 'he zuo shi');
INSERT INTO `t_city` VALUES ('623021', '临潭县', '623000', 'lin tan xian');
INSERT INTO `t_city` VALUES ('623022', '卓尼县', '623000', 'zhuo ni xian');
INSERT INTO `t_city` VALUES ('623023', '舟曲县', '623000', 'zhou qu xian');
INSERT INTO `t_city` VALUES ('623024', '迭部县', '623000', 'die bu xian');
INSERT INTO `t_city` VALUES ('623025', '玛曲县', '623000', 'ma qu xian');
INSERT INTO `t_city` VALUES ('623026', '碌曲县', '623000', 'liu qu xian');
INSERT INTO `t_city` VALUES ('623027', '夏河县', '623000', 'xia he xian');
INSERT INTO `t_city` VALUES ('623028', '其它区', '623000', 'qi ta qu');
INSERT INTO `t_city` VALUES ('630000', '青海省', '1', 'qing hai sheng');
INSERT INTO `t_city` VALUES ('630100', '西宁市', '630000', 'xi ning shi');
INSERT INTO `t_city` VALUES ('630102', '城东区', '630100', 'cheng dong qu');
INSERT INTO `t_city` VALUES ('630103', '城中区', '630100', 'cheng zhong qu');
INSERT INTO `t_city` VALUES ('630104', '城西区', '630100', 'cheng xi qu');
INSERT INTO `t_city` VALUES ('630105', '城北区', '630100', 'cheng bei qu');
INSERT INTO `t_city` VALUES ('630121', '大通回族土族自治县', '630100', 'da tong hui zu tu zu zi zhi xian');
INSERT INTO `t_city` VALUES ('630122', '湟中县', '630100', 'huang zhong xian');
INSERT INTO `t_city` VALUES ('630123', '湟源县', '630100', 'huang yuan xian');
INSERT INTO `t_city` VALUES ('630124', '其它区', '630100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('632100', '海东地区', '630000', 'hai dong di qu');
INSERT INTO `t_city` VALUES ('632121', '平安县', '632100', 'ping an xian');
INSERT INTO `t_city` VALUES ('632122', '民和回族土族自治县', '632100', 'min he hui zu tu zu zi zhi xian');
INSERT INTO `t_city` VALUES ('632123', '乐都县', '632100', 'le du xian');
INSERT INTO `t_city` VALUES ('632126', '互助土族自治县', '632100', 'hu zhu tu zu zi zhi xian');
INSERT INTO `t_city` VALUES ('632127', '化隆回族自治县', '632100', 'hua long hui zu zi zhi xian');
INSERT INTO `t_city` VALUES ('632128', '循化撒拉族自治县', '632100', 'xun hua sa la zu zi zhi xian');
INSERT INTO `t_city` VALUES ('632129', '其它区', '632100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('632200', '海北藏族自治州', '630000', 'hai bei zang zu zi zhi zhou');
INSERT INTO `t_city` VALUES ('632221', '门源回族自治县', '632200', 'men yuan hui zu zi zhi xian');
INSERT INTO `t_city` VALUES ('632222', '祁连县', '632200', 'qi lian xian');
INSERT INTO `t_city` VALUES ('632223', '海晏县', '632200', 'hai yan xian');
INSERT INTO `t_city` VALUES ('632224', '刚察县', '632200', 'gang cha xian');
INSERT INTO `t_city` VALUES ('632225', '其它区', '632200', 'qi ta qu');
INSERT INTO `t_city` VALUES ('632300', '黄南藏族自治州', '630000', 'huang nan zang zu zi zhi zhou');
INSERT INTO `t_city` VALUES ('632321', '同仁县', '632300', 'tong ren xian');
INSERT INTO `t_city` VALUES ('632322', '尖扎县', '632300', 'jian zha xian');
INSERT INTO `t_city` VALUES ('632323', '泽库县', '632300', 'ze ku xian');
INSERT INTO `t_city` VALUES ('632324', '河南蒙古族自治县', '632300', 'he nan meng gu zu zi zhi xian');
INSERT INTO `t_city` VALUES ('632325', '其它区', '632300', 'qi ta qu');
INSERT INTO `t_city` VALUES ('632500', '海南藏族自治州', '630000', 'hai nan zang zu zi zhi zhou');
INSERT INTO `t_city` VALUES ('632521', '共和县', '632500', 'gong he xian');
INSERT INTO `t_city` VALUES ('632522', '同德县', '632500', 'tong de xian');
INSERT INTO `t_city` VALUES ('632523', '贵德县', '632500', 'gui de xian');
INSERT INTO `t_city` VALUES ('632524', '兴海县', '632500', 'xing hai xian');
INSERT INTO `t_city` VALUES ('632525', '贵南县', '632500', 'gui nan xian');
INSERT INTO `t_city` VALUES ('632526', '其它区', '632500', 'qi ta qu');
INSERT INTO `t_city` VALUES ('632600', '果洛藏族自治州', '630000', 'guo luo zang zu zi zhi zhou');
INSERT INTO `t_city` VALUES ('632621', '玛沁县', '632600', 'ma qin xian');
INSERT INTO `t_city` VALUES ('632622', '班玛县', '632600', 'ban ma xian');
INSERT INTO `t_city` VALUES ('632623', '甘德县', '632600', 'gan de xian');
INSERT INTO `t_city` VALUES ('632624', '达日县', '632600', 'da ri xian');
INSERT INTO `t_city` VALUES ('632625', '久治县', '632600', 'jiu zhi xian');
INSERT INTO `t_city` VALUES ('632626', '玛多县', '632600', 'ma duo xian');
INSERT INTO `t_city` VALUES ('632627', '其它区', '632600', 'qi ta qu');
INSERT INTO `t_city` VALUES ('632700', '玉树藏族自治州', '630000', 'yu shu zang zu zi zhi zhou');
INSERT INTO `t_city` VALUES ('632721', '玉树县', '632700', 'yu shu xian');
INSERT INTO `t_city` VALUES ('632722', '杂多县', '632700', 'za duo xian');
INSERT INTO `t_city` VALUES ('632723', '称多县', '632700', 'cheng duo xian');
INSERT INTO `t_city` VALUES ('632724', '治多县', '632700', 'zhi duo xian');
INSERT INTO `t_city` VALUES ('632725', '囊谦县', '632700', 'nang qian xian');
INSERT INTO `t_city` VALUES ('632726', '曲麻莱县', '632700', 'qu ma lai xian');
INSERT INTO `t_city` VALUES ('632727', '其它区', '632700', 'qi ta qu');
INSERT INTO `t_city` VALUES ('632800', '海西蒙古族藏族自治州', '630000', 'hai xi meng gu zu zang zu zi zhi zhou');
INSERT INTO `t_city` VALUES ('632801', '格尔木市', '632800', 'ge er mu shi');
INSERT INTO `t_city` VALUES ('632802', '德令哈市', '632800', 'de ling ha shi');
INSERT INTO `t_city` VALUES ('632821', '乌兰县', '632800', 'wu lan xian');
INSERT INTO `t_city` VALUES ('632822', '都兰县', '632800', 'du lan xian');
INSERT INTO `t_city` VALUES ('632823', '天峻县', '632800', 'tian jun xian');
INSERT INTO `t_city` VALUES ('632824', '其它区', '632800', 'qi ta qu');
INSERT INTO `t_city` VALUES ('640000', '宁夏回族自治区', '1', 'ning xia hui zu zi zhi qu');
INSERT INTO `t_city` VALUES ('640100', '银川市', '640000', 'yin chuan shi');
INSERT INTO `t_city` VALUES ('640104', '兴庆区', '640100', 'xing qing qu');
INSERT INTO `t_city` VALUES ('640105', '西夏区', '640100', 'xi xia qu');
INSERT INTO `t_city` VALUES ('640106', '金凤区', '640100', 'jin feng qu');
INSERT INTO `t_city` VALUES ('640121', '永宁县', '640100', 'yong ning xian');
INSERT INTO `t_city` VALUES ('640122', '贺兰县', '640100', 'he lan xian');
INSERT INTO `t_city` VALUES ('640181', '灵武市', '640100', 'ling wu shi');
INSERT INTO `t_city` VALUES ('640182', '其它区', '640100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('640200', '石嘴山市', '640000', 'shi zui shan shi');
INSERT INTO `t_city` VALUES ('640202', '大武口区', '640200', 'da wu kou qu');
INSERT INTO `t_city` VALUES ('640205', '惠农区', '640200', 'hui nong qu');
INSERT INTO `t_city` VALUES ('640221', '平罗县', '640200', 'ping luo xian');
INSERT INTO `t_city` VALUES ('640222', '其它区', '640200', 'qi ta qu');
INSERT INTO `t_city` VALUES ('640300', '吴忠市', '640000', 'wu zhong shi');
INSERT INTO `t_city` VALUES ('640302', '利通区', '640300', 'li tong qu');
INSERT INTO `t_city` VALUES ('640303', '红寺堡区', '640300', 'hong si bao qu');
INSERT INTO `t_city` VALUES ('640323', '盐池县', '640300', 'yan chi xian');
INSERT INTO `t_city` VALUES ('640324', '同心县', '640300', 'tong xin xian');
INSERT INTO `t_city` VALUES ('640381', '青铜峡市', '640300', 'qing tong xia shi');
INSERT INTO `t_city` VALUES ('640382', '其它区', '640300', 'qi ta qu');
INSERT INTO `t_city` VALUES ('640400', '固原市', '640000', 'gu yuan shi');
INSERT INTO `t_city` VALUES ('640402', '原州区', '640400', 'yuan zhou qu');
INSERT INTO `t_city` VALUES ('640422', '西吉县', '640400', 'xi ji xian');
INSERT INTO `t_city` VALUES ('640423', '隆德县', '640400', 'long de xian');
INSERT INTO `t_city` VALUES ('640424', '泾源县', '640400', 'jing yuan xian');
INSERT INTO `t_city` VALUES ('640425', '彭阳县', '640400', 'peng yang xian');
INSERT INTO `t_city` VALUES ('640426', '其它区', '640400', 'qi ta qu');
INSERT INTO `t_city` VALUES ('640500', '中卫市', '640000', 'zhong wei shi');
INSERT INTO `t_city` VALUES ('640502', '沙坡头区', '640500', 'sha po tou qu');
INSERT INTO `t_city` VALUES ('640521', '中宁县', '640500', 'zhong ning xian');
INSERT INTO `t_city` VALUES ('640522', '海原县', '640500', 'hai yuan xian');
INSERT INTO `t_city` VALUES ('640523', '其它区', '640500', 'qi ta qu');
INSERT INTO `t_city` VALUES ('650000', '新疆维吾尔自治区', '1', 'xin jiang wei wu er zi zhi qu');
INSERT INTO `t_city` VALUES ('650100', '乌鲁木齐市', '650000', 'wu lu mu qi shi');
INSERT INTO `t_city` VALUES ('650102', '天山区', '650100', 'tian shan qu');
INSERT INTO `t_city` VALUES ('650103', '沙依巴克区', '650100', 'sha yi ba ke qu');
INSERT INTO `t_city` VALUES ('650104', '新市区', '650100', 'xin shi qu');
INSERT INTO `t_city` VALUES ('650105', '水磨沟区', '650100', 'shui mo gou qu');
INSERT INTO `t_city` VALUES ('650106', '头屯河区', '650100', 'tou tun he qu');
INSERT INTO `t_city` VALUES ('650107', '达坂城区', '650100', 'da ban cheng qu');
INSERT INTO `t_city` VALUES ('650108', '东山区', '650100', 'dong shan qu');
INSERT INTO `t_city` VALUES ('650109', '米东区', '650100', 'mi dong qu');
INSERT INTO `t_city` VALUES ('650121', '乌鲁木齐县', '650100', 'wu lu mu qi xian');
INSERT INTO `t_city` VALUES ('650122', '其它区', '650100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('650200', '克拉玛依市', '650000', 'ke la ma yi shi');
INSERT INTO `t_city` VALUES ('650202', '独山子区', '650200', 'du shan zi qu');
INSERT INTO `t_city` VALUES ('650203', '克拉玛依区', '650200', 'ke la ma yi qu');
INSERT INTO `t_city` VALUES ('650204', '白碱滩区', '650200', 'bai jian tan qu');
INSERT INTO `t_city` VALUES ('650205', '乌尔禾区', '650200', 'wu er he qu');
INSERT INTO `t_city` VALUES ('650206', '其它区', '650200', 'qi ta qu');
INSERT INTO `t_city` VALUES ('652100', '吐鲁番地区', '650000', 'tu lu fan di qu');
INSERT INTO `t_city` VALUES ('652101', '吐鲁番市', '652100', 'tu lu fan shi');
INSERT INTO `t_city` VALUES ('652122', '鄯善县', '652100', 'shan shan xian');
INSERT INTO `t_city` VALUES ('652123', '托克逊县', '652100', 'tuo ke xun xian');
INSERT INTO `t_city` VALUES ('652124', '其它区', '652100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('652200', '哈密地区', '650000', 'ha mi di qu');
INSERT INTO `t_city` VALUES ('652201', '哈密市', '652200', 'ha mi shi');
INSERT INTO `t_city` VALUES ('652222', '巴里坤哈萨克自治县', '652200', 'ba li kun ha sa ke zi zhi xian');
INSERT INTO `t_city` VALUES ('652223', '伊吾县', '652200', 'yi wu xian');
INSERT INTO `t_city` VALUES ('652224', '其它区', '652200', 'qi ta qu');
INSERT INTO `t_city` VALUES ('652300', '昌吉回族自治州', '650000', 'chang ji hui zu zi zhi zhou');
INSERT INTO `t_city` VALUES ('652301', '昌吉市', '652300', 'chang ji shi');
INSERT INTO `t_city` VALUES ('652302', '阜康市', '652300', 'fu kang shi');
INSERT INTO `t_city` VALUES ('652303', '米泉市', '652300', 'mi quan shi');
INSERT INTO `t_city` VALUES ('652323', '呼图壁县', '652300', 'hu tu bi xian');
INSERT INTO `t_city` VALUES ('652324', '玛纳斯县', '652300', 'ma na si xian');
INSERT INTO `t_city` VALUES ('652325', '奇台县', '652300', 'qi tai xian');
INSERT INTO `t_city` VALUES ('652327', '吉木萨尔县', '652300', 'ji mu sa er xian');
INSERT INTO `t_city` VALUES ('652328', '木垒哈萨克自治县', '652300', 'mu lei ha sa ke zi zhi xian');
INSERT INTO `t_city` VALUES ('652329', '其它区', '652300', 'qi ta qu');
INSERT INTO `t_city` VALUES ('652700', '博尔塔拉蒙古自治州', '650000', 'bo er ta la meng gu zi zhi zhou');
INSERT INTO `t_city` VALUES ('652701', '博乐市', '652700', 'bo le shi');
INSERT INTO `t_city` VALUES ('652722', '精河县', '652700', 'jing he xian');
INSERT INTO `t_city` VALUES ('652723', '温泉县', '652700', 'wen quan xian');
INSERT INTO `t_city` VALUES ('652724', '其它区', '652700', 'qi ta qu');
INSERT INTO `t_city` VALUES ('652800', '巴音郭楞蒙古自治州', '650000', 'ba yin guo leng meng gu zi zhi zhou');
INSERT INTO `t_city` VALUES ('652801', '库尔勒市', '652800', 'ku er le shi');
INSERT INTO `t_city` VALUES ('652822', '轮台县', '652800', 'lun tai xian');
INSERT INTO `t_city` VALUES ('652823', '尉犁县', '652800', 'yu li xian');
INSERT INTO `t_city` VALUES ('652824', '若羌县', '652800', 'ruo qiang xian');
INSERT INTO `t_city` VALUES ('652825', '且末县', '652800', 'ju mo xian');
INSERT INTO `t_city` VALUES ('652826', '焉耆回族自治县', '652800', 'yan qi hui zu zi zhi xian');
INSERT INTO `t_city` VALUES ('652827', '和静县', '652800', 'he jing xian');
INSERT INTO `t_city` VALUES ('652828', '和硕县', '652800', 'he shuo xian');
INSERT INTO `t_city` VALUES ('652829', '博湖县', '652800', 'bo hu xian');
INSERT INTO `t_city` VALUES ('652830', '其它区', '652800', 'qi ta qu');
INSERT INTO `t_city` VALUES ('652900', '阿克苏地区', '650000', 'a ke su di qu');
INSERT INTO `t_city` VALUES ('652901', '阿克苏市', '652900', 'a ke su shi');
INSERT INTO `t_city` VALUES ('652922', '温宿县', '652900', 'wen su xian');
INSERT INTO `t_city` VALUES ('652923', '库车县', '652900', 'ku che xian');
INSERT INTO `t_city` VALUES ('652924', '沙雅县', '652900', 'sha ya xian');
INSERT INTO `t_city` VALUES ('652925', '新和县', '652900', 'xin he xian');
INSERT INTO `t_city` VALUES ('652926', '拜城县', '652900', 'bai cheng xian');
INSERT INTO `t_city` VALUES ('652927', '乌什县', '652900', 'wu shi xian');
INSERT INTO `t_city` VALUES ('652928', '阿瓦提县', '652900', 'a wa ti xian');
INSERT INTO `t_city` VALUES ('652929', '柯坪县', '652900', 'ke ping xian');
INSERT INTO `t_city` VALUES ('652930', '其它区', '652900', 'qi ta qu');
INSERT INTO `t_city` VALUES ('653000', '克孜勒苏柯尔克孜自治州', '650000', 'ke zi le su ke er ke zi zi zhi zhou');
INSERT INTO `t_city` VALUES ('653001', '阿图什市', '653000', 'a tu shi shi');
INSERT INTO `t_city` VALUES ('653022', '阿克陶县', '653000', 'a ke tao xian');
INSERT INTO `t_city` VALUES ('653023', '阿合奇县', '653000', 'a he qi xian');
INSERT INTO `t_city` VALUES ('653024', '乌恰县', '653000', 'wu qia xian');
INSERT INTO `t_city` VALUES ('653025', '其它区', '653000', 'qi ta qu');
INSERT INTO `t_city` VALUES ('653100', '喀什地区', '650000', 'ka shi di qu');
INSERT INTO `t_city` VALUES ('653101', '喀什市', '653100', 'ka shi shi');
INSERT INTO `t_city` VALUES ('653121', '疏附县', '653100', 'shu fu xian');
INSERT INTO `t_city` VALUES ('653122', '疏勒县', '653100', 'shu le xian');
INSERT INTO `t_city` VALUES ('653123', '英吉沙县', '653100', 'ying ji sha xian');
INSERT INTO `t_city` VALUES ('653124', '泽普县', '653100', 'ze pu xian');
INSERT INTO `t_city` VALUES ('653125', '莎车县', '653100', 'shao che xian');
INSERT INTO `t_city` VALUES ('653126', '叶城县', '653100', 'ye cheng xian');
INSERT INTO `t_city` VALUES ('653127', '麦盖提县', '653100', 'mai gai ti xian');
INSERT INTO `t_city` VALUES ('653128', '岳普湖县', '653100', 'yue pu hu xian');
INSERT INTO `t_city` VALUES ('653129', '伽师县', '653100', 'jia shi xian');
INSERT INTO `t_city` VALUES ('653130', '巴楚县', '653100', 'ba chu xian');
INSERT INTO `t_city` VALUES ('653131', '塔什库尔干塔吉克自治县', '653100', 'ta shi ku er gan ta ji ke zi zhi xian');
INSERT INTO `t_city` VALUES ('653132', '其它区', '653100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('653200', '和田地区', '650000', 'he tian di qu');
INSERT INTO `t_city` VALUES ('653201', '和田市', '653200', 'he tian shi');
INSERT INTO `t_city` VALUES ('653221', '和田县', '653200', 'he tian xian');
INSERT INTO `t_city` VALUES ('653222', '墨玉县', '653200', 'mo yu xian');
INSERT INTO `t_city` VALUES ('653223', '皮山县', '653200', 'pi shan xian');
INSERT INTO `t_city` VALUES ('653224', '洛浦县', '653200', 'luo pu xian');
INSERT INTO `t_city` VALUES ('653225', '策勒县', '653200', 'ce le xian');
INSERT INTO `t_city` VALUES ('653226', '于田县', '653200', 'yu tian xian');
INSERT INTO `t_city` VALUES ('653227', '民丰县', '653200', 'min feng xian');
INSERT INTO `t_city` VALUES ('653228', '其它区', '653200', 'qi ta qu');
INSERT INTO `t_city` VALUES ('654000', '伊犁哈萨克自治州', '650000', 'yi li ha sa ke zi zhi zhou');
INSERT INTO `t_city` VALUES ('654002', '伊宁市', '654000', 'yi ning shi');
INSERT INTO `t_city` VALUES ('654003', '奎屯市', '654000', 'kui tun shi');
INSERT INTO `t_city` VALUES ('654021', '伊宁县', '654000', 'yi ning xian');
INSERT INTO `t_city` VALUES ('654022', '察布查尔锡伯自治县', '654000', 'cha bu cha er xi bo zi zhi xian');
INSERT INTO `t_city` VALUES ('654023', '霍城县', '654000', 'huo cheng xian');
INSERT INTO `t_city` VALUES ('654024', '巩留县', '654000', 'gong liu xian');
INSERT INTO `t_city` VALUES ('654025', '新源县', '654000', 'xin yuan xian');
INSERT INTO `t_city` VALUES ('654026', '昭苏县', '654000', 'zhao su xian');
INSERT INTO `t_city` VALUES ('654027', '特克斯县', '654000', 'te ke si xian');
INSERT INTO `t_city` VALUES ('654028', '尼勒克县', '654000', 'ni le ke xian');
INSERT INTO `t_city` VALUES ('654029', '其它区', '654000', 'qi ta qu');
INSERT INTO `t_city` VALUES ('654200', '塔城地区', '650000', 'ta cheng di qu');
INSERT INTO `t_city` VALUES ('654201', '塔城市', '654200', 'ta cheng shi');
INSERT INTO `t_city` VALUES ('654202', '乌苏市', '654200', 'wu su shi');
INSERT INTO `t_city` VALUES ('654221', '额敏县', '654200', 'e min xian');
INSERT INTO `t_city` VALUES ('654223', '沙湾县', '654200', 'sha wan xian');
INSERT INTO `t_city` VALUES ('654224', '托里县', '654200', 'tuo li xian');
INSERT INTO `t_city` VALUES ('654225', '裕民县', '654200', 'yu min xian');
INSERT INTO `t_city` VALUES ('654226', '和布克赛尔蒙古自治县', '654200', 'he bu ke sai er meng gu zi zhi xian');
INSERT INTO `t_city` VALUES ('654227', '其它区', '654200', 'qi ta qu');
INSERT INTO `t_city` VALUES ('654300', '阿勒泰地区', '650000', 'a le tai di qu');
INSERT INTO `t_city` VALUES ('654301', '阿勒泰市', '654300', 'a le tai shi');
INSERT INTO `t_city` VALUES ('654321', '布尔津县', '654300', 'bu er jin xian');
INSERT INTO `t_city` VALUES ('654322', '富蕴县', '654300', 'fu yun xian');
INSERT INTO `t_city` VALUES ('654323', '福海县', '654300', 'fu hai xian');
INSERT INTO `t_city` VALUES ('654324', '哈巴河县', '654300', 'ha ba he xian');
INSERT INTO `t_city` VALUES ('654325', '青河县', '654300', 'qing he xian');
INSERT INTO `t_city` VALUES ('654326', '吉木乃县', '654300', 'ji mu nai xian');
INSERT INTO `t_city` VALUES ('654327', '其它区', '654300', 'qi ta qu');
INSERT INTO `t_city` VALUES ('659001', '石河子市', '650000', 'shi he zi shi');
INSERT INTO `t_city` VALUES ('659002', '阿拉尔市', '650000', 'a la er shi');
INSERT INTO `t_city` VALUES ('659003', '图木舒克市', '650000', 'tu mu shu ke shi');
INSERT INTO `t_city` VALUES ('659004', '五家渠市', '650000', 'wu jia qu shi');
INSERT INTO `t_city` VALUES ('710000', '台湾省', '1', 'tai wan sheng');
INSERT INTO `t_city` VALUES ('710100', '台北市', '710000', 'tai bei shi');
INSERT INTO `t_city` VALUES ('710101', '中正区', '710100', 'zhong zheng qu');
INSERT INTO `t_city` VALUES ('710102', '大同区', '710100', 'da tong qu');
INSERT INTO `t_city` VALUES ('710103', '中山区', '710100', 'zhong shan qu');
INSERT INTO `t_city` VALUES ('710104', '松山区', '710100', 'song shan qu');
INSERT INTO `t_city` VALUES ('710105', '大安区', '710100', 'da an qu');
INSERT INTO `t_city` VALUES ('710106', '万华区', '710100', 'wan hua qu');
INSERT INTO `t_city` VALUES ('710107', '信义区', '710100', 'shen yi qu');
INSERT INTO `t_city` VALUES ('710108', '士林区', '710100', 'shi lin qu');
INSERT INTO `t_city` VALUES ('710109', '北投区', '710100', 'bei tou qu');
INSERT INTO `t_city` VALUES ('710110', '内湖区', '710100', 'nei hu qu');
INSERT INTO `t_city` VALUES ('710111', '南港区', '710100', 'nan gang qu');
INSERT INTO `t_city` VALUES ('710112', '文山区', '710100', 'wen shan qu');
INSERT INTO `t_city` VALUES ('710113', '其它区', '710100', 'qi ta qu');
INSERT INTO `t_city` VALUES ('710200', '高雄市', '710000', 'gao xiong shi');
INSERT INTO `t_city` VALUES ('710201', '新兴区', '710200', 'xin xing qu');
INSERT INTO `t_city` VALUES ('710202', '前金区', '710200', 'qian jin qu');
INSERT INTO `t_city` VALUES ('710203', '芩雅区', '710200', 'qin ya qu');
INSERT INTO `t_city` VALUES ('710204', '盐埕区', '710200', 'yan cheng qu');
INSERT INTO `t_city` VALUES ('710205', '鼓山区', '710200', 'gu shan qu');
INSERT INTO `t_city` VALUES ('710206', '旗津区', '710200', 'qi jin qu');
INSERT INTO `t_city` VALUES ('710207', '前镇区', '710200', 'qian zhen qu');
INSERT INTO `t_city` VALUES ('710208', '三民区', '710200', 'san min qu');
INSERT INTO `t_city` VALUES ('710209', '左营区', '710200', 'zuo ying qu');
INSERT INTO `t_city` VALUES ('710210', '楠梓区', '710200', 'nan zi qu');
INSERT INTO `t_city` VALUES ('710211', '小港区', '710200', 'xiao gang qu');
INSERT INTO `t_city` VALUES ('710212', '其它区', '710200', 'qi ta qu');
INSERT INTO `t_city` VALUES ('710300', '台南市', '710000', 'tai nan shi');
INSERT INTO `t_city` VALUES ('710301', '中西区', '710300', 'zhong xi qu');
INSERT INTO `t_city` VALUES ('710302', '东区', '710300', 'dong qu');
INSERT INTO `t_city` VALUES ('710303', '南区', '710300', 'nan qu');
INSERT INTO `t_city` VALUES ('710304', '北区', '710300', 'bei qu');
INSERT INTO `t_city` VALUES ('710305', '安平区', '710300', 'an ping qu');
INSERT INTO `t_city` VALUES ('710306', '安南区', '710300', 'an nan qu');
INSERT INTO `t_city` VALUES ('710307', '其它区', '710300', 'qi ta qu');
INSERT INTO `t_city` VALUES ('710400', '台中市', '710000', 'tai zhong shi');
INSERT INTO `t_city` VALUES ('710401', '中区', '710400', 'zhong qu');
INSERT INTO `t_city` VALUES ('710402', '东区', '710400', 'dong qu');
INSERT INTO `t_city` VALUES ('710403', '南区', '710400', 'nan qu');
INSERT INTO `t_city` VALUES ('710404', '西区', '710400', 'xi qu');
INSERT INTO `t_city` VALUES ('710405', '北区', '710400', 'bei qu');
INSERT INTO `t_city` VALUES ('710406', '北屯区', '710400', 'bei tun qu');
INSERT INTO `t_city` VALUES ('710407', '西屯区', '710400', 'xi tun qu');
INSERT INTO `t_city` VALUES ('710408', '南屯区', '710400', 'nan tun qu');
INSERT INTO `t_city` VALUES ('710409', '其它区', '710400', 'qi ta qu');
INSERT INTO `t_city` VALUES ('710500', '金门县', '710000', 'jin men xian');
INSERT INTO `t_city` VALUES ('710600', '南投县', '710000', 'nan tou xian');
INSERT INTO `t_city` VALUES ('710700', '基隆市', '710000', 'ji long shi');
INSERT INTO `t_city` VALUES ('710701', '仁爱区', '710700', 'ren ai qu');
INSERT INTO `t_city` VALUES ('710702', '信义区', '710700', 'shen yi qu');
INSERT INTO `t_city` VALUES ('710703', '中正区', '710700', 'zhong zheng qu');
INSERT INTO `t_city` VALUES ('710704', '中山区', '710700', 'zhong shan qu');
INSERT INTO `t_city` VALUES ('710705', '安乐区', '710700', 'an le qu');
INSERT INTO `t_city` VALUES ('710706', '暖暖区', '710700', 'nuan nuan qu');
INSERT INTO `t_city` VALUES ('710707', '七堵区', '710700', 'qi du qu');
INSERT INTO `t_city` VALUES ('710708', '其它区', '710700', 'qi ta qu');
INSERT INTO `t_city` VALUES ('710800', '新竹市', '710000', 'xin zhu shi');
INSERT INTO `t_city` VALUES ('710801', '东区', '710800', 'dong qu');
INSERT INTO `t_city` VALUES ('710802', '北区', '710800', 'bei qu');
INSERT INTO `t_city` VALUES ('710803', '香山区', '710800', 'xiang shan qu');
INSERT INTO `t_city` VALUES ('710804', '其它区', '710800', 'qi ta qu');
INSERT INTO `t_city` VALUES ('710900', '嘉义市', '710000', 'jia yi shi');
INSERT INTO `t_city` VALUES ('710901', '东区', '710900', 'dong qu');
INSERT INTO `t_city` VALUES ('710902', '西区', '710900', 'xi qu');
INSERT INTO `t_city` VALUES ('710903', '其它区', '710900', 'qi ta qu');
INSERT INTO `t_city` VALUES ('711100', '新北市', '710000', 'xin bei shi');
INSERT INTO `t_city` VALUES ('711200', '宜兰县', '710000', 'yi lan xian');
INSERT INTO `t_city` VALUES ('711300', '新竹县', '710000', 'xin zhu xian');
INSERT INTO `t_city` VALUES ('711400', '桃园县', '710000', 'tao yuan xian');
INSERT INTO `t_city` VALUES ('711500', '苗栗县', '710000', 'miao li xian');
INSERT INTO `t_city` VALUES ('711700', '彰化县', '710000', 'zhang hua xian');
INSERT INTO `t_city` VALUES ('711900', '嘉义县', '710000', 'jia yi xian');
INSERT INTO `t_city` VALUES ('712100', '云林县', '710000', 'yun lin xian');
INSERT INTO `t_city` VALUES ('712400', '屏东县', '710000', 'ping dong xian');
INSERT INTO `t_city` VALUES ('712500', '台东县', '710000', 'tai dong xian');
INSERT INTO `t_city` VALUES ('712600', '花莲县', '710000', 'hua lian xian');
INSERT INTO `t_city` VALUES ('712700', '澎湖县', '710000', 'peng hu xian');
INSERT INTO `t_city` VALUES ('810000', '香港特别行政区', '1', 'xiang gang te bie xing zheng qu');
INSERT INTO `t_city` VALUES ('810100', '香港岛', '810000', 'xiang gang dao');
INSERT INTO `t_city` VALUES ('810101', '中西区', '810100', 'zhong xi qu');
INSERT INTO `t_city` VALUES ('810102', '湾仔', '810100', 'wan zai');
INSERT INTO `t_city` VALUES ('810103', '东区', '810100', 'dong qu');
INSERT INTO `t_city` VALUES ('810104', '南区', '810100', 'nan qu');
INSERT INTO `t_city` VALUES ('810200', '九龙', '810000', 'jiu long');
INSERT INTO `t_city` VALUES ('810201', '九龙城区', '810200', 'jiu long cheng qu');
INSERT INTO `t_city` VALUES ('810202', '油尖旺区', '810200', 'you jian wang qu');
INSERT INTO `t_city` VALUES ('810203', '深水埗区', '810200', 'shen shui bu qu');
INSERT INTO `t_city` VALUES ('810204', '黄大仙区', '810200', 'huang da xian qu');
INSERT INTO `t_city` VALUES ('810205', '观塘区', '810200', 'guan tang qu');
INSERT INTO `t_city` VALUES ('810300', '新界', '810000', 'xin jie');
INSERT INTO `t_city` VALUES ('810301', '北区', '810300', 'bei qu');
INSERT INTO `t_city` VALUES ('810302', '大埔区', '810300', 'da bu qu');
INSERT INTO `t_city` VALUES ('810303', '沙田区', '810300', 'sha tian qu');
INSERT INTO `t_city` VALUES ('810304', '西贡区', '810300', 'xi gong qu');
INSERT INTO `t_city` VALUES ('810305', '元朗区', '810300', 'yuan lang qu');
INSERT INTO `t_city` VALUES ('810306', '屯门区', '810300', 'tun men qu');
INSERT INTO `t_city` VALUES ('810307', '荃湾区', '810300', 'quan wan qu');
INSERT INTO `t_city` VALUES ('810308', '葵青区', '810300', 'kui qing qu');
INSERT INTO `t_city` VALUES ('810309', '离岛区', '810300', 'li dao qu');
INSERT INTO `t_city` VALUES ('820000', '澳门特别行政区', '1', 'ao men te bie xing zheng qu');
INSERT INTO `t_city` VALUES ('820100', '澳门半岛', '820000', 'ao men ban dao');
INSERT INTO `t_city` VALUES ('820200', '离岛', '820000', 'li dao');
INSERT INTO `t_city` VALUES ('990000', '海外', '1', 'hai wai');
INSERT INTO `t_city` VALUES ('990100', '海外', '990000', 'hai wai');

-- ----------------------------
-- Table structure for `user_advisory_log`
-- ----------------------------
DROP TABLE IF EXISTS `user_advisory_log`;
CREATE TABLE `user_advisory_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) DEFAULT '0',
  `create_date` varchar(30) DEFAULT NULL,
  `type` int(11) DEFAULT '0' COMMENT '0:普通跟踪 1:上体验课',
  `lesson_experience_id` int(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `next_phone` varchar(30) DEFAULT NULL COMMENT '下一次打电话时间',
  `member_by_internal_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='咨询师追踪用户记录';

-- ----------------------------
-- Records of user_advisory_log
-- ----------------------------
INSERT INTO `user_advisory_log` VALUES ('1', '0', '1111', '24', '11111', 'ssss', '222', '1');
INSERT INTO `user_advisory_log` VALUES ('2', '0', '2222', '25', '33', '333', '333', '1');
INSERT INTO `user_advisory_log` VALUES ('4', '0', '111', '0', '11', null, '1', '1');
INSERT INTO `user_advisory_log` VALUES ('5', '0', '5', '0', '555', '55', '55', '2');

-- ----------------------------
-- Table structure for `user_and_group`
-- ----------------------------
DROP TABLE IF EXISTS `user_and_group`;
CREATE TABLE `user_and_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=326 DEFAULT CHARSET=utf8 COMMENT='权限组和用户';

-- ----------------------------
-- Records of user_and_group
-- ----------------------------
INSERT INTO `user_and_group` VALUES ('1', '1', '1');
INSERT INTO `user_and_group` VALUES ('257', '16', '2');
INSERT INTO `user_and_group` VALUES ('258', '17', '2');
INSERT INTO `user_and_group` VALUES ('259', '18', '2');
INSERT INTO `user_and_group` VALUES ('260', '105', '2');
INSERT INTO `user_and_group` VALUES ('261', '107', '2');
INSERT INTO `user_and_group` VALUES ('262', '145', '2');
INSERT INTO `user_and_group` VALUES ('263', '23', '3');
INSERT INTO `user_and_group` VALUES ('264', '24', '3');
INSERT INTO `user_and_group` VALUES ('265', '25', '3');
INSERT INTO `user_and_group` VALUES ('266', '26', '3');
INSERT INTO `user_and_group` VALUES ('267', '27', '3');
INSERT INTO `user_and_group` VALUES ('268', '28', '3');
INSERT INTO `user_and_group` VALUES ('269', '29', '3');
INSERT INTO `user_and_group` VALUES ('270', '30', '3');
INSERT INTO `user_and_group` VALUES ('271', '31', '3');
INSERT INTO `user_and_group` VALUES ('272', '39', '3');
INSERT INTO `user_and_group` VALUES ('273', '42', '3');
INSERT INTO `user_and_group` VALUES ('274', '44', '3');
INSERT INTO `user_and_group` VALUES ('275', '48', '3');
INSERT INTO `user_and_group` VALUES ('276', '49', '3');
INSERT INTO `user_and_group` VALUES ('277', '54', '3');
INSERT INTO `user_and_group` VALUES ('278', '55', '3');
INSERT INTO `user_and_group` VALUES ('279', '56', '3');
INSERT INTO `user_and_group` VALUES ('280', '60', '3');
INSERT INTO `user_and_group` VALUES ('281', '87', '3');
INSERT INTO `user_and_group` VALUES ('282', '88', '3');
INSERT INTO `user_and_group` VALUES ('283', '89', '3');
INSERT INTO `user_and_group` VALUES ('284', '104', '3');
INSERT INTO `user_and_group` VALUES ('285', '110', '3');
INSERT INTO `user_and_group` VALUES ('286', '112', '3');
INSERT INTO `user_and_group` VALUES ('287', '118', '3');
INSERT INTO `user_and_group` VALUES ('288', '134', '3');
INSERT INTO `user_and_group` VALUES ('289', '135', '3');
INSERT INTO `user_and_group` VALUES ('290', '136', '3');
INSERT INTO `user_and_group` VALUES ('291', '137', '3');
INSERT INTO `user_and_group` VALUES ('292', '139', '3');
INSERT INTO `user_and_group` VALUES ('293', '143', '3');
INSERT INTO `user_and_group` VALUES ('294', '146', '3');
INSERT INTO `user_and_group` VALUES ('295', '147', '3');
INSERT INTO `user_and_group` VALUES ('296', '148', '3');
INSERT INTO `user_and_group` VALUES ('297', '149', '3');
INSERT INTO `user_and_group` VALUES ('298', '151', '3');
INSERT INTO `user_and_group` VALUES ('299', '155', '3');
INSERT INTO `user_and_group` VALUES ('300', '160', '3');
INSERT INTO `user_and_group` VALUES ('301', '163', '3');
INSERT INTO `user_and_group` VALUES ('302', '33', '4');
INSERT INTO `user_and_group` VALUES ('303', '35', '4');
INSERT INTO `user_and_group` VALUES ('304', '36', '4');
INSERT INTO `user_and_group` VALUES ('305', '62', '4');
INSERT INTO `user_and_group` VALUES ('306', '68', '4');
INSERT INTO `user_and_group` VALUES ('307', '77', '4');
INSERT INTO `user_and_group` VALUES ('308', '79', '4');
INSERT INTO `user_and_group` VALUES ('309', '80', '4');
INSERT INTO `user_and_group` VALUES ('310', '81', '4');
INSERT INTO `user_and_group` VALUES ('311', '101', '4');
INSERT INTO `user_and_group` VALUES ('312', '114', '4');
INSERT INTO `user_and_group` VALUES ('313', '117', '4');
INSERT INTO `user_and_group` VALUES ('314', '129', '4');
INSERT INTO `user_and_group` VALUES ('315', '142', '4');
INSERT INTO `user_and_group` VALUES ('316', '153', '4');
INSERT INTO `user_and_group` VALUES ('317', '154', '4');
INSERT INTO `user_and_group` VALUES ('318', '156', '4');
INSERT INTO `user_and_group` VALUES ('319', '164', '4');
INSERT INTO `user_and_group` VALUES ('320', '38', '72');
INSERT INTO `user_and_group` VALUES ('321', '61', '75');
INSERT INTO `user_and_group` VALUES ('322', '111', '82');
INSERT INTO `user_and_group` VALUES ('323', '113', '83');
INSERT INTO `user_and_group` VALUES ('324', '132', '84');
INSERT INTO `user_and_group` VALUES ('325', '32', '5');

-- ----------------------------
-- Table structure for `user_group`
-- ----------------------------
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `sort_id` int(11) DEFAULT NULL,
  `states` int(11) DEFAULT '0' COMMENT '0:可见',
  `gioc` varchar(255) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='用户组';

-- ----------------------------
-- Records of user_group
-- ----------------------------
INSERT INTO `user_group` VALUES ('1', '集团管理员', '1', '0', null, null);
INSERT INTO `user_group` VALUES ('2', '区域管理员', '2', '0', null, null);
INSERT INTO `user_group` VALUES ('3', '校级管理员', '3', '0', null, null);
INSERT INTO `user_group` VALUES ('4', '教师', '4', '0', null, null);
INSERT INTO `user_group` VALUES ('5', '课程顾问', '5', '0', null, null);
INSERT INTO `user_group` VALUES ('6', '市场专员', '6', '0', null, null);

-- ----------------------------
-- Table structure for `user_internal`
-- ----------------------------
DROP TABLE IF EXISTS `user_internal`;
CREATE TABLE `user_internal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(30) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `nickname` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `user_mobile` varchar(40) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `state_permit` varchar(30) DEFAULT NULL COMMENT '身份证',
  `city_id` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `specialty` varchar(30) DEFAULT NULL COMMENT '专业',
  `status_degr_id` int(11) DEFAULT NULL COMMENT '学历ID',
  `status_level_id` int(11) DEFAULT NULL COMMENT '职业等级',
  `synopsis` varchar(255) DEFAULT NULL COMMENT '简介',
  `user_ioc` varchar(255) DEFAULT NULL,
  `birthday` varchar(30) DEFAULT NULL,
  `user_internal_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `PK_USER_CITY_ID` (`city_id`),
  CONSTRAINT `PK_USER_CITY_ID` FOREIGN KEY (`city_id`) REFERENCES `t_city` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8 COMMENT='集团职员表';

-- ----------------------------
-- Records of user_internal
-- ----------------------------
INSERT INTO `user_internal` VALUES ('1', '10000', 'admin', '系统管理员', 'ISMvKXpXpadDiUoOSoAfww==', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('16', null, 'gongxusheng', '宫旭生', 'BgRNfogb4IS3k1xDSPeVig==', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('17', null, 'lianghua', '梁华', 'e2hPj8mgBBxE95D3TZf1aw==', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('18', null, 'feihonglu568', '龚裴英', '2GddQl1nDPwDAkJNbCRIww==', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('23', null, 'kunlun', '张昆仑', '4QrcOUm6Wau+VuBX8g+IPg==', null, '0', null, '13811549521', 'zhangkunlun@roland.com.cn', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('24', null, '18610332902', '王雅娟', 'iI6THWNg7hQ98NVS+VUpmg==', null, '0', null, '18610332902', 'wangyajuan@roland.com.cn', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('25', null, '13811359402', '赵九龙', '4QrcOUm6Wau+VuBX8g+IPg==', null, '0', null, '13811359402', 'zhaojiulong@roland.com.cn', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('26', null, '13240735177', '杨赫然', 'pMgdJ+YI4O3v9lQ/Sc0ZOg==', null, '0', null, '13240735177', 'yangheran@roland.com.cn', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('27', null, 'T0010-01-2012-0005', '许岩', 'iOEQwZkBUPv2kQRrmu1lqQ==', null, '0', null, '15801462208', 'xuyan@roland.com.cn', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('28', null, '18600532775', '张峰赫', '4QrcOUm6Wau+VuBX8g+IPg==', null, '0', null, '18600532775', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('29', null, 'T0010-01-2012-0007', '王辰雨', 'a/5i4slG6cNk6guwdAz2AA==', null, '0', null, '15110235305', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('30', null, '13241667166', '袁野', 'GnpfwR0G/afcF0FucUgOag==', null, '0', null, '13241667166', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('31', null, 'T0010-01-2012-0009', '谷旭', 'AiKlrSB5SSoqdP/QUGdGog==', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('32', null, 'T0010-01-2012-0010', '刘雪辰', 'gf7Xe3uVqRyjlgY1hIc/jg==', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('33', null, 'yanjun', '闫俊', 'eN4jGXyZuj9IbAHksHmsUQ==', null, '0', null, '13522219966', 'yanjun@roland.com.cn', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('35', null, 'Y0010-01-2012-0012', '李红艳', 'J/eQcgJaA8OzsZHIC8psZQ==', null, '0', null, '15010630911', 'lihongyan@roland.com.cn', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('36', null, 'yuanye', '袁野', 'GnpfwR0G/afcF0FucUgOag==', null, '0', null, '13241667166', 'yuanye@roland.com.cn', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('38', null, 'T0021-01-2012-0001', '袁映映', '2wk4wFCd7QJUG82gheKZ9A==', null, '0', null, '18602114022', 'yuanyingying@rolandmusic.com.cn', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('39', null, 'cuiliyuan', '崔丽媛', 'GB/z5ckoHw/kkQDXmKwThA==', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('40', null, 'T0021-02-2012-0002', '王伟浩', 'jO0xaXRUYrVud2oDyutxGQ==', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('41', null, 'T0021-02-2012-0003', '夏景研', 'aH52oINPYkjmrKHMHnjwmg==', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('42', null, '15921976279', '全志翔', 'TtA8yHzKVdccz/x21xUjRA==', null, '0', null, '15921976279', 'quanzhixiang@rolandmusic.com.cn', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('43', null, 'T0021-02-2012-0004', '李锐', 'p/U3L6aLCJ4p/53lS+zadw==', null, '0', null, '15021303747', '/lirui@rolandmusic.com.cn', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('44', null, '13918901142', '吴文博', '8+P+MPGZN12eoh8BsIJ/7w==', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('47', null, 'T0021-02-2012-0006', '王众民', 'jUe/1oVOfSihkrb1xdNzEQ==', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('48', null, 'T0021-02-2012-0007', '葛丽婷', 'gsLI1tp7j4qdJ2QojSnplA==', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('49', null, 'T0021-02-2012-0008', '马钢', 'QmBZbW9StihdlXyYTnEx4w==', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('52', null, 'T0021-01-2012-0003', '恽老师', 'Pm4AGiXyBW9F4bPy0jA8tA==', null, '0', null, '12345456', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('53', null, 'liubingnan', '刘秉男', 'gcJHKz+WeQ+sqcdwWIGQbA==', null, '0', null, '15618911935', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('54', null, '13472851016', '陆晨麟', 'x2B8h8qF5HHuY+u7X4Maig==', null, '0', null, '13472851016', 'luchenling@rolandmusic.com.cn', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('55', null, '13761253330', '恽嘉琦', 'P5us3sT885dlfhoDa+CvhA==', null, '0', null, '13761253330', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('56', null, '18602114022', '袁映映', 'g77VbXy076V8FZqGL9hSNA==', null, '0', null, '18602114022', 'yuanyingying@rolandmusic.com.cn', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('59', null, '13818907912', '马杰', 'U3g4+FwxTD8ajsH6UMnHnw==', null, '0', null, '13818907912', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('60', null, '18964912538', '陈岑豪', 'hlYIUoHIUWGlgr+OuebOeQ==', null, '0', null, '18964912538', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('61', null, 'T0021-01-2012-0010', '教务', 'pvkg/+EiiJ6Zasj59QHjNg==', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('62', null, 'Y0021-01-2012-0011', '杜佳斐', 'unDjp79Zc8nGif/5d6ch0w==', null, '0', null, '13585581721', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('68', null, 'Y0021-01-2012-0012', '陈东月', 'Aft4p7dC46MScVYffQvuMg==', null, '0', null, '13916159731', 'chendongyue@rolandmusic.com.cn', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('77', null, '13795353336', '饶婧', 'QcfYA0q9FmifsVdhYZWceA==', null, '0', null, '13795353336', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('79', null, 'ShenQing', '沈清', '4GVwADhJ3xxKfny4HlxfLw==', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('80', null, 'DuJiafei', '杜佳斐', '752ZUYmg0CkeUtrvcCBk+g==', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('81', null, 'ChenDongyue', '陈东月', 'Csu2eHHSXwth5EJmkIW98w==', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('87', null, 'T0021-01-2012-0015', '张定国', 'EC98RRFdAhpD75IqcAOUIQ==', null, '0', null, '15921478134', '8216292@qq.com', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('88', null, '13524612380', '张磊', 'y7vdhRxgYntHhePs7cj/Pg==', null, '0', null, '13524612380', 'zhanglei@rolandmusic.com.cn', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('89', null, 'T0021-01-2012-0017', '黄立伟', 'WH05o8Kpatsl8tYZSe4T2g==', null, '0', null, '13641783687', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('101', null, 'Y0010-02-2012-0012', '肖华', 'LvrEUwG8cyx0WL45r8QaJg==', null, '0', null, '11111111111', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('104', null, '5283117', '许岩', '8igx9fZM5TOvpgjOOlM1hQ==', null, '0', null, '15801462208', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('105', null, 'A0010-02-2013-0003', '孙仟晓', 'PxCVCDkbwCHrQFntdlavdQ==', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('107', null, 'jiangrui', '蒋蕊', 'e+YFko6pjYy+MFa/Yzw+ng==', null, '0', null, null, 'jiangrui@roland.com.cn', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('108', null, 'T0021-02-2013-0001', '徐志清', 'THPzjB0JlaXi36bp9gB6VQ==', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('110', null, '13811549521', '张昆仑', '4QrcOUm6Wau+VuBX8g+IPg==', null, '0', null, '13811549521', 'zhangkunlun@roland.com.cn', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('111', null, 'lizheng', '李铮', 'enZehMsEWOauAlySk8Jg6A==', null, '0', null, '15810071008', 'lizhen@roland.com.cn', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('112', null, '13124734007', '张金龙', '4QrcOUm6Wau+VuBX8g+IPg==', null, '0', null, '13124734007', 'zhangjinlong@roland.com.cn', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('113', null, 'T0010-01-2013-0004', '候维潇', 'SsFchrBPpAeYrLq9sEc0Nw==', null, '0', null, '15801288137', 'houweixiao@roland.com.cn', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('114', null, 'Y0010-02-2013-0001', '石明月', 'w06Y+bjcvEtuXUP899uFmA==', null, '0', null, '13911365622', 'shixiaoxue1314@163.com', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('117', null, 'Y0010-02-2013-0002', '闫俊', 'aAoBigv4MoCM1byfi27O8A==', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('118', null, 'T0010-02-2013-0004', '张孟良', '0JcHFHV3g+bPF7JvuOIpjw==', null, '0', null, '18101097296', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('129', null, 'Y0010-02-2013-0003', '孙仟晓', 'jyzj7McnGkd20Pa1o3xVuA==', null, '0', null, null, '356858613@163.com', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('131', null, 'T0010-02-2013-0005', '杨西西', '7ja7bjtyEaO2NJtx+rLfAQ==', null, '0', null, '18310309716', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('132', null, 'T0010-02-2013-0006', '樊慧', 'pz1/Dl1y5i+2G0ucMrptQw==', null, '0', null, '18610558265', 'fanhui@roland.com.cn', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('133', null, 'Y0010-02-2013-0004', '孙佰雨', '8nRH6xeDA+t4dD/RWvMR8Q==', null, '0', null, '15810398571', 'sunbaiyu@yahoo.cn', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('134', null, 'T0021-01-2013-0001', '李辰希', 'CjRP8bnFkk6JgQ2kprXCng==', null, '0', null, '15000782883', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('135', null, 'T0021-01-2013-0002', '陈甲', 'i1UxRKo15SdLTIFaoMT1qQ==', null, '0', null, '18301752987', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('136', null, '18602183972', '柳慧雯', 'HrDKAhfRBElWctZQNOuHxQ==', null, '0', null, '18602183972', 'sinead_lhw@163.com', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('137', null, 'duogongnnengtting', 'dgnt', 'f9E0vTDtSa0uC/DGDULLtw==', null, '0', null, '59600991', 'bjdwl@roland.com.cn', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('138', null, 'T0021-02-2013-0002', '刘海洋', 'BbdVPqNC+Sd3MlXNx8ubbQ==', null, '0', null, '50491881', 'liuhaiyang@roland.com', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('139', null, '15911019265', '纪念', 'WsZ5leX2nYrbuXiGrql9pw==', null, '0', null, '15911019265', 'jinian1018@126.com', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('142', null, 'Y0010-02-2013-0005', '赵缘骊珠', 'CDWWnyX7/UkefoxJtKyhkA==', null, '0', null, null, 'yuanlizhuzhao@sina.cn', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('143', null, '18501160134', '胡凯', '4QrcOUm6Wau+VuBX8g+IPg==', null, '0', null, '18501160134', '372875458@qq.com', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('145', null, 'changchunroland', '张忠艳', 'WCebgh5fDJUdvpm73efRpA==', null, '0', null, '13620787005', '1029641747@qq.com', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('146', null, 'T0021-01-2013-0004', '刘海阳', 'H94ObNYgHhR0pgjaupkbMA==', null, '0', null, '18601792963', 'liuhaiyang@rolandmusic.comc.n', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('147', null, 'T0021-01-2013-0005', '张立军', 'wBOKcAZG1bB2VHhhK3hLxA==', null, '0', null, '13987989898', 'zhanglijun@rolandmusic.com.cn', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('148', null, '18943917000', '林小雅', '/OqSD3QStdp74M9CuMk3WQ==', null, '0', null, '18943917000', 'linxiaoya731@qq.com', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('149', null, '13756906005', '李禹宁', 'JdVa0oOqQAr0ZMdtcTwHrQ==', null, '0', null, '13756906005', '309307139@qq.com', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('151', null, '18604413876', '张一帆', '4QrcOUm6Wau+VuBX8g+IPg==', null, '0', null, '18604413876', '465531244@qq.com', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('153', null, 'Y0431-01-2013-0002', '崔善玉', 'R0crjW2KYmwucOF/hPfsFg==', null, '0', null, '18088689129', '77547440@qq.com', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('154', null, '13843047324', '范宇', 'ALdpHYbZauvSHdnhOPkIQA==', null, '0', null, '13843047324', '344327115@qq.com', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('155', null, 'T0010-02-2013-0010', '刘牧', 'bZJZR3uMSb+Ww4JtaJT7SA==', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('156', null, 'Y0010-02-2013-0006', '蔡小云', 'j0M6ufqTbjDXIRIfXgxWhg==', null, '0', null, '15001239546', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('159', null, '666666', '体验帐号', '83nq88gxsE3hU0adG+w0Xg==', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('160', null, '15801649567', '白天客', '4QrcOUm6Wau+VuBX8g+IPg==', null, '0', null, '15801649567', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('163', null, 'T0431-01-2013-0005', '张太宸', 'HffXTvQyvXF5MNjnMFQJHA==', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('164', null, 'Y0021-03-2013-0001', '王斌', 'mx/3vj00b+a4PEhkm8EyXQ==', null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_internal` VALUES ('168', null, 'zhangsan', '张三', 'Adf0B2CWDnvZRDUT8iq5rw==', '0', '19', null, '1213213', 'eee@qq.com', '44444', '110102', '西大望路5号园', '11111', '10', '13', 'ssd使得很多时候多少风骚风骚是多少是多少 多少<br>', null, '13年08月20日', '1');
INSERT INTO `user_internal` VALUES ('172', null, '111', '11', 'aY1RoZ2KEhzlgUmde3AWaA==', '0', '19', null, '11', '111', '1', '120102', '111', '111', '10', '12', '111', null, '13年08月28日', '1');
INSERT INTO `user_internal` VALUES ('173', null, '11', '111', 'ZRK9Q9nKpuAsmQsKgmUtyg==', '0', '19', null, '11', '111', '111', '120102', '11', '11', '10', '12', '111', null, '13年08月27日', '1');

-- ----------------------------
-- Table structure for `user_member`
-- ----------------------------
DROP TABLE IF EXISTS `user_member`;
CREATE TABLE `user_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `save_user_id` int(11) DEFAULT NULL,
  `from_type` int(11) DEFAULT '0',
  `password` varchar(100) DEFAULT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `sex` int(11) DEFAULT '0' COMMENT '0: 男1:女',
  `age` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `intertion_curriculum` int(11) DEFAULT NULL COMMENT '意向课程',
  `status_id` int(11) DEFAULT '0' COMMENT '0:潜在用户，1：正式学员',
  `create_date` varchar(30) DEFAULT NULL,
  `attention_level` int(11) DEFAULT '0' COMMENT '关注级别',
  `internal_advisory_id` int(11) DEFAULT NULL COMMENT '咨询师id',
  ` mobile` varchar(50) DEFAULT NULL,
  `advisory_log_id` int(11) DEFAULT NULL COMMENT '追踪记录',
  `balance` float(11,0) DEFAULT '0' COMMENT '余额',
  `remark` varchar(255) DEFAULT NULL,
  `family` varchar(30) DEFAULT NULL,
  `nick_name` varchar(100) DEFAULT NULL,
  `birthday` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of user_member
-- ----------------------------
INSERT INTO `user_member` VALUES ('1', '16', '1', 'ISMvKXpXpadDiUoOSoAfww==', '学员ONE', '333@qq.com', '0', '1', null, '西大望路', '2', '0', '2013-9-06', '0', null, '110、112', null, '0', '这个小伙伴是捡的', '张三爹', '张三', '1990-10-13');

-- ----------------------------
-- Table structure for `user_member_by_internal`
-- ----------------------------
DROP TABLE IF EXISTS `user_member_by_internal`;
CREATE TABLE `user_member_by_internal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `internal_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='分配潜在用户(如果咨询师换人状态改为-1)';

-- ----------------------------
-- Records of user_member_by_internal
-- ----------------------------
INSERT INTO `user_member_by_internal` VALUES ('1', '1', '1', '23');
