/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : elevator

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2020-04-17 09:22:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for elevator
-- ----------------------------
DROP TABLE IF EXISTS `elevator`;
CREATE TABLE `elevator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `use_unit` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  `addtime` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `add_id` int(11) DEFAULT NULL,
  `uuid` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cycle` int(11) DEFAULT NULL,
  `zone` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '区域',
  `phone` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  `brand` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '品牌',
  `person` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '联系人姓名',
  PRIMARY KEY (`id`),
  KEY `add` (`add_id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of elevator
-- ----------------------------
INSERT INTO `elevator` VALUES ('8', '客运dada', 'dada', '清华大学', '北京市', '2020-03-04 02:05:21', '1', '1', '211111', '', '11111111', '', '');
INSERT INTO `elevator` VALUES ('9', '乘客da', 'www32', '北京大学', '‍北京市', '2020-03-04 02:05:34', '1', '213', '1', '', null, null, null);
INSERT INTO `elevator` VALUES ('14', '观光电梯11211', 'TOEC—901', '1', '南极', '2020-03-04 15:03:31', '2', '313', '22', null, null, null, null);
INSERT INTO `elevator` VALUES ('13', '杂物电梯', 'pp888', '位置', '北极', '2020-03-04 15:03:12', '2', '13131', '11', null, null, null, null);
INSERT INTO `elevator` VALUES ('19', '11111', '111', '111', '哒哒哒哒', '2020-03-05 14:55:11', '2', '2c0cbf4a794945cf8ab8c907383cdb4b', '30', null, null, null, null);
INSERT INTO `elevator` VALUES ('20', '不知道什么类型', 'pppp', '111', '曲阜师范大学', '2020-03-05 14:57:33', '2', '8e79031a6663437481df968914c5349d', '30', null, null, null, null);
INSERT INTO `elevator` VALUES ('21', '111', '11', '111', '才', '2020-03-05 15:16:50', '2', 'e9b149e2e47f4901baf08327ebc6513b', '3', null, null, null, null);
INSERT INTO `elevator` VALUES ('22', 'dadq1', '111', '111', 'dhjaifjpp1', '2020-03-07 16:13:37', '2', 'c3706777b0694079abdc43563fca98a9', '30', null, null, null, null);
INSERT INTO `elevator` VALUES ('23', '111', '11', '11', '哒哒', '2020-03-21 21:44:48', '2', '9b26d6b69a084796bdded73866795b66', '10', '广东省深圳市龙岗区', '11111', null, null);
INSERT INTO `elevator` VALUES ('24', '11', '11', '11', '大亲爱的', '2020-03-23 16:43:54', '2', '4411b5d82e074b6c880bf1dc8da24381', '11', '广东省深圳市龙岗区', '111', null, null);
INSERT INTO `elevator` VALUES ('25', '杂物电梯', '111', '131', '发顺丰', '2020-04-16 11:23:21', '2', '553ce9e267614b889df95a4f1b2975a1', '11', '天津市天津市和平区', null, null, null);
INSERT INTO `elevator` VALUES ('26', '载货电梯', '1111', '11', '1111', '2020-04-16 12:12:05', '2', '238ba09405984226be4bba19bea622bf', '111', '天津市天津市河东区', '11111', null, null);
INSERT INTO `elevator` VALUES ('27', '客运电梯', 'dada', 'dada', 'dada', '2020-04-16 12:22:09', '2', 'fa9cb014d292485595bef994c322361d', '13131', '北京市北京市东城区', 'dada', 'dada', 'dada');

-- ----------------------------
-- Table structure for fault
-- ----------------------------
DROP TABLE IF EXISTS `fault`;
CREATE TABLE `fault` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `add_id` int(11) DEFAULT NULL,
  `describe` text COLLATE utf8_unicode_ci,
  `submit` int(1) unsigned zerofill DEFAULT '0',
  `repair` int(1) unsigned zerofill DEFAULT '0' COMMENT '0 维修中，1 维修完成 ，2已结单',
  `addtime` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `add_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of fault
-- ----------------------------
INSERT INTO `fault` VALUES ('1', '大北区', '2', '不知道咋回事，电梯就不动了', '1', '0', '2020-03-04 15:05:16', null, null, null);
INSERT INTO `fault` VALUES ('2', '大东区', '2', '老化了', '1', '0', '2020-03-04 15:05:16', null, null, null);
INSERT INTO `fault` VALUES ('3', '自由美利坚', '2', '被美国人炸了', '0', '0', '2020-03-04 15:05:48', null, null, null);
INSERT INTO `fault` VALUES ('4', '韩国', '2', '？？？', '1', '1', '2020-03-04 15:06:36', null, null, null);
INSERT INTO `fault` VALUES ('5', '西班牙', '2', '无', '1', '1', '2020-03-04 15:10:30', null, null, null);
INSERT INTO `fault` VALUES ('64', '西亚如', '1', '无', '0', '1', '2020-03-04 21:29:55', null, null, null);
INSERT INTO `fault` VALUES ('65', '哒哒', '1', '12138', '0', '1', '2020-03-04 21:31:04', null, null, null);
INSERT INTO `fault` VALUES ('66', '额尔尼亚', '1', 'da.d.ad;a.11', '1', '1', '2020-03-04 21:36:27', null, null, null);
INSERT INTO `fault` VALUES ('69', '就是不知道咋就坏了', '1', '22222222', '1', '2', '2020-03-04 23:53:52', '广东省深圳市龙岗区', null, null);
INSERT INTO `fault` VALUES ('68', '细节', '2', '电梯炸了', '1', '2', '2020-03-04 23:28:04', '广东省深圳市龙岗区', null, null);
INSERT INTO `fault` VALUES ('73', 'ha嗲嗲', '2', '1111', '1', '2', '2020-03-21 16:26:40', '广东省深圳市龙岗区', null, null);
INSERT INTO `fault` VALUES ('74', '11', '1', '重启', '1', '0', '2020-03-27 20:47:29', '广东省深圳市龙岗区', null, null);
INSERT INTO `fault` VALUES ('75', '11', '1', '11', '0', '2', '2020-03-27 20:47:38', '广东省深圳市龙岗区', null, null);
INSERT INTO `fault` VALUES ('76', '大', '2', '11', '1', '0', '2020-04-16 11:17:26', '北京市北京市东城区', null, null);
INSERT INTO `fault` VALUES ('77', 'da', '2', '哒哒', '1', '0', '2020-04-16 21:08:49', '北京市北京市西城区', null, null);
INSERT INTO `fault` VALUES ('78', 'qqe', '2', 'eqeq', '1', '0', '2020-04-16 21:10:32', '天津市天津市河东区', 'eqeq', null);
INSERT INTO `fault` VALUES ('79', 'dasa', '1', '哒哒', '1', '0', '2020-04-16 21:12:16', '天津市天津市河东区', 'dada', null);
INSERT INTO `fault` VALUES ('80', 'ad', '2', 'dadas', '1', '0', '2020-04-17 01:20:42', '北京市', 'dasd', null);
INSERT INTO `fault` VALUES ('81', 'da', '2', 'dasdas', '1', '0', '2020-04-17 01:25:08', '北京市北京市东城区', 'dad', 'admin');

-- ----------------------------
-- Table structure for maintenance
-- ----------------------------
DROP TABLE IF EXISTS `maintenance`;
CREATE TABLE `maintenance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `eid` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `result` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `add_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of maintenance
-- ----------------------------
INSERT INTO `maintenance` VALUES ('17', '8', '奥特曼', '2020-03-10 00:00', '你好歹', null, null);
INSERT INTO `maintenance` VALUES ('18', '8', 'jack', '2020-03-18 00:00', '哒哒', null, null);
INSERT INTO `maintenance` VALUES ('19', '8', 'jack', '2020-03-18 00:00', '哒哒', null, null);
INSERT INTO `maintenance` VALUES ('20', '8', '哒哒哒', '2020-03-11 00:00', '111', null, null);
INSERT INTO `maintenance` VALUES ('21', '14', '嗯嗯', '2020-03-09 00:00', '11', null, null);
INSERT INTO `maintenance` VALUES ('22', '9', '11', '2020-03-10 00:00', '11', null, null);
INSERT INTO `maintenance` VALUES ('23', '9', '1111', '2020-03-03 00:00', '期待期待', null, null);
INSERT INTO `maintenance` VALUES ('24', '8', '你报', '2020-03-10 00:00', '11', null, null);
INSERT INTO `maintenance` VALUES ('25', '13', '卓越', '2020-03-02 00:00', '我吃完', null, null);
INSERT INTO `maintenance` VALUES ('26', '14', 'cad', '2020-03-09 00:00', '111', null, null);
INSERT INTO `maintenance` VALUES ('27', '8', '1', '', '', null, null);
INSERT INTO `maintenance` VALUES ('28', '8', '111', '', '', null, null);
INSERT INTO `maintenance` VALUES ('29', '23', '11', '2020-03-11 00:00', '', null, null);
INSERT INTO `maintenance` VALUES ('30', '23', '发', '2020-03-10 00:00', '313', null, null);
INSERT INTO `maintenance` VALUES ('31', '23', '大', '2020-04-06 00:00', '11313', '11111', null);
INSERT INTO `maintenance` VALUES ('32', '9', 'ad', '2020-04-07 00:00', '大东区', null, '‍北京市');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(32) DEFAULT NULL,
  `menu` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', 'ROLE_USER', '{\r\n  \"clearInfo\": {\r\n    \"clearUrl\": \"#\"\r\n  },\r\n  \"homeInfo\": {\r\n    \"title\": \"首页\",\r\n    \"icon\": \"fa fa-home\",\r\n    \"href\": \"welcome.html\"\r\n  },\r\n  \"logoInfo\": {\r\n    \"title\": \"电梯管理\",\r\n    \"image\": \"../images/logo.png\",\r\n    \"href\": \"\"\r\n  },\r\n  \"menuInfo\": {\r\n    \"currency\": {\r\n      \"title\": \"基本管理\",\r\n      \"icon\": \"fa fa-home\",\r\n      \"child\": [\r\n        {\r\n          \"title\": \"首页\",\r\n          \"href\": \"welcome.html\",\r\n          \"icon\": \"fa fa-home\",\r\n          \"target\": \"_self\"\r\n        },\r\n        {\r\n          \"title\": \"损坏管理\",\r\n          \"href\": \"\",\r\n          \"icon\": \"fa fa-bolt\",\r\n          \"target\": \"_self\",\r\n          \"child\": [\r\n            {\r\n              \"title\": \"提交损坏\",\r\n              \"href\": \"add_fault.html\",\r\n              \"icon\": \"fa fa-edit\",\r\n              \"target\": \"_self\"\r\n            },\r\n {\r\n              \"title\": \"查看提交\",\r\n              \"href\": \"nfault.html\",\r\n              \"icon\": \"fa fa-reorder\",\r\n              \"target\": \"_self\"\r\n            }\r\n          ]\r\n        },\r\n        {\r\n          \"title\": \"个人信息\",\r\n          \"href\": \"userinfo.html\",\r\n          \"icon\": \"fa fa-child\",\r\n          \"target\": \"_self\"\r\n        },\r\n{\r\n          \"title\": \"维保记录\",\r\n          \"href\": \"Maintenance.html\",\r\n          \"icon\": \"fa fa-key\",\r\n          \"target\": \"_self\"\r\n        },\r\n       {\r\n                    \"title\": \"记录单管理\",\r\n                    \"href\": \"record.html\",\r\n                    \"icon\": \"fa fa-gavel\",\r\n                    \"target\": \"_self\"\r\n\r\n                },\r\n        {\r\n          \"title\": \"日志管理\",\r\n          \"href\": \"Journal.html\",\r\n          \"icon\": \"fa fa-inbox\",\r\n          \"target\": \"_self\"\r\n        }\r\n      ]\r\n    }\r\n  }\r\n}');
INSERT INTO `menu` VALUES ('3', 'ROLE_REP', '{\r\n    \"clearInfo\": {\r\n        \"clearUrl\": \"#\"\r\n    },\r\n    \"homeInfo\": {\r\n        \"title\": \"首页\",\r\n        \"icon\": \"fa fa-home\",\r\n        \"href\": \"rwelcome.html\"\r\n    },\r\n    \"logoInfo\": {\r\n        \"title\": \"电梯管理\",\r\n        \"image\": \"../images/logo.png\",\r\n        \"href\": \"\"\r\n    },\r\n    \"menuInfo\": {\r\n        \"currency\": {\r\n            \"title\": \"基本管理\",\r\n            \"icon\": \"fa fa-home\",\r\n            \"child\": [{\r\n                    \"title\": \"首页\",\r\n                    \"href\": \"rwelcome.html\",\r\n                    \"icon\": \"fa fa-home\",\r\n                    \"target\": \"_self\"\r\n                },\r\n                {\r\n                    \"title\": \"故障管理\",\r\n                    \"href\": \"repfault.html\",\r\n                    \"icon\": \"fa fa-reorder\",\r\n                    \"target\": \"_self\"\r\n\r\n                },\r\n {\r\n                    \"title\": \"记录单管理\",\r\n                    \"href\": \"record.html\",\r\n                    \"icon\": \"fa fa-gavel\",\r\n                    \"target\": \"_self\"\r\n\r\n                },\r\n                {\r\n                    \"title\": \"电梯查看\",\r\n                    \"href\": \"repinf.html\",\r\n                    \"icon\": \"fa fa-bolt\",\r\n                    \"target\": \"_self\"\r\n                },\r\n                {\r\n                    \"title\": \"维保记录\",\r\n                    \"href\": \"Maintenance.html\",\r\n                    \"icon\": \"fa fa-key\",\r\n                    \"target\": \"_self\"\r\n                },\r\n                {\r\n                    \"title\": \"个人信息\",\r\n                    \"href\": \"userinfo.html\",\r\n                    \"icon\": \"fa fa-child\",\r\n                    \"target\": \"_self\"\r\n                },\r\n                {\r\n                    \"title\": \"日志管理\",\r\n                    \"href\": \"Journal.html\",\r\n                    \"icon\": \"fa fa-inbox\",\r\n                    \"target\": \"_self\"\r\n                }\r\n            ]\r\n        }\r\n    }\r\n}');
INSERT INTO `menu` VALUES ('2', 'ROLE_ADMIN', '{\r\n  \"clearInfo\": {\r\n    \"clearUrl\": \"#\"\r\n  },\r\n  \"homeInfo\": {\r\n    \"title\": \"首页\",\r\n    \"icon\": \"fa fa-home\",\r\n    \"href\": \"swelcome.html\"\r\n  },\r\n  \"logoInfo\": {\r\n    \"title\": \"电梯管理\",\r\n    \"image\": \"../images/logo.png\",\r\n    \"href\": \"\"\r\n  },\r\n  \r\n  \"menuInfo\": {\r\n    \"currency\": {\r\n      \"title\": \"常规管理\",\r\n      \"icon\": \"fa fa-address-book\",\r\n      \"child\": [\r\n        {\r\n          \"title\": \"首页\",\r\n          \"href\": \"swelcome.html\",\r\n          \"icon\": \"fa fa-home\",\r\n          \"target\": \"_self\"\r\n        },\r\n \r\n        {\r\n          \"title\": \"用户管理\",\r\n          \"href\": \"\",\r\n          \"icon\": \"fa fa-child\",\r\n          \"target\": \"_self\",\r\n          \"child\": [\r\n            {\r\n              \"title\": \"用户添加\",\r\n              \"href\": \"useradd.html\",\r\n              \"icon\": \"fa fa-leaf\",\r\n              \"target\": \"_self\"\r\n            },\r\n            {\r\n              \"title\": \"用户列表\",\r\n              \"href\": \"user.html\",\r\n              \"icon\": \"fa fa-street-view\",\r\n              \"target\": \"_self\"\r\n            }\r\n          ]\r\n        },\r\n       {\r\n          \"title\": \"电梯管理\",\r\n          \"href\": \"\",\r\n          \"icon\": \"fa fa-bolt\",\r\n          \"target\": \"_self\",\r\n          \"child\": [\r\n            {\r\n              \"title\": \"信息管理\",\r\n              \"href\": \"information.html\",\r\n              \"icon\": \"fa fa-reorder\",\r\n              \"target\": \"_self\",\r\n              \"child\": [\r\n                    {\r\n                      \"title\": \"添加电梯信息\",\r\n                      \"href\": \"add_lift.html\",\r\n                      \"icon\": \"fa fa-pencil\",\r\n                      \"target\": \"_self\"\r\n                    },\r\n                    {\r\n                      \"title\": \"查看电梯信息\",\r\n                      \"href\": \"information.html\",\r\n                      \"icon\": \"fa fa-sign-in\",\r\n                      \"target\": \"_self\"\r\n                    }\r\n                  ]\r\n                },\r\n            {\r\n              \"title\": \"故障管理\",\r\n              \"href\": \"plist.html\",\r\n              \"icon\": \"fa fa-close\",\r\n              \"target\": \"_self\",\r\n            \"child\": [\r\n                    {\r\n                      \"title\": \"记录故障信息\",\r\n                      \"href\": \"add_fault.html\",\r\n                      \"icon\": \"fa fa-pencil\",\r\n                      \"target\": \"_self\"\r\n                    },\r\n                    {\r\n                      \"title\": \"查看故障信息\",\r\n                      \"href\": \"fault.html\",\r\n                      \"icon\": \"fa fa-sign-in\",\r\n                      \"target\": \"_self\"\r\n                    }\r\n                  ]\r\n            },\r\n        \r\n   {\r\n              \"title\": \"零件管理\",\r\n              \"href\": \"\",\r\n              \"icon\": \"fa fa-plus\",\r\n              \"target\": \"_self\",\r\n       \"child\": [\r\n                    {\r\n                      \"title\": \"新增零件\",\r\n                      \"href\": \"add_part.html\",\r\n                      \"icon\": \"fa fa-pencil\",\r\n                      \"target\": \"_self\"\r\n                    },\r\n                    {\r\n                      \"title\": \"查看零件\",\r\n                      \"href\": \"part.html\",\r\n                      \"icon\": \"fa fa-sign-in\",\r\n                      \"target\": \"_self\"\r\n                    }\r\n                  ]\r\n            }\r\n          ]\r\n        },\r\n              {\r\n                    \"title\": \"记录单管理\",\r\n                    \"href\": \"srecord.html\",\r\n                    \"icon\": \"fa fa-gavel\",\r\n                    \"target\": \"_self\"\r\n\r\n                },\r\n        {\r\n          \"title\": \"日志管理\",\r\n          \"href\": \"\",\r\n          \"icon\": \"fa fa-inbox\",\r\n          \"target\": \"_self\",\r\n          \"child\": [\r\n            {\r\n              \"title\": \"日志查看\",\r\n              \"href\": \"slog.html\",\r\n              \"icon\": \"fa fa-clock-o\",\r\n              \"target\": \"_self\"\r\n            }\r\n          ]\r\n        }\r\n      ]\r\n    }\r\n  }\r\n}');

-- ----------------------------
-- Table structure for part
-- ----------------------------
DROP TABLE IF EXISTS `part`;
CREATE TABLE `part` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `purchase_price` int(11) DEFAULT NULL COMMENT '进价',
  `price` int(11) DEFAULT NULL COMMENT '售价',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of part
-- ----------------------------
INSERT INTO `part` VALUES ('6', '控制柜', '1213', null, null);
INSERT INTO `part` VALUES ('5', '曳引机', '323', null, null);
INSERT INTO `part` VALUES ('7', '限速器', '99999', null, null);
INSERT INTO `part` VALUES ('8', '轿箱门机', '11330', '22', '22');
INSERT INTO `part` VALUES ('14', 'sddsa', '10', '11', '212');

-- ----------------------------
-- Table structure for persistent_logins
-- ----------------------------
DROP TABLE IF EXISTS `persistent_logins`;
CREATE TABLE `persistent_logins` (
  `username` varchar(64) NOT NULL,
  `series` varchar(64) NOT NULL,
  `token` varchar(64) NOT NULL,
  `last_used` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`series`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of persistent_logins
-- ----------------------------
INSERT INTO `persistent_logins` VALUES ('维修员', 'tXusqxbEkltbcP2p6pAS1A==', 'jwXos0cfAECqaD2fFaQ+wA==', '2020-04-17 09:18:22');

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '报修组织',
  `sperson` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '报修人',
  `stime` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '报修时间',
  `maintenance` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '维修员',
  `arrival_time` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '到场时间',
  `fault_description` text COLLATE utf8_unicode_ci COMMENT '故障现象描述',
  `repair_time` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '维修完成时间',
  `reason` text COLLATE utf8_unicode_ci COMMENT '故障原因',
  `processed` text COLLATE utf8_unicode_ci COMMENT '处理经过',
  `result` text COLLATE utf8_unicode_ci COMMENT '处理结果',
  `replace` int(11) DEFAULT NULL COMMENT '需要更换的零件',
  `parts` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '使用的零件',
  `phone` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `spend` int(11) DEFAULT NULL COMMENT '花费',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES ('42', '细节', 'admin', '2020-03-04 23:28:04', '维修员', '2020-03-03 00:00', '当前', '2020-03-24 00:00', '1额', '11', '11哒哒哒哒', null, '曳引机 轿箱门机 ', '111', '11');
INSERT INTO `record` VALUES ('44', '11', 'user', '2020-03-27 20:47:29', '维修员', '2020-04-08 00:00', 'dads', '2020-04-09 00:00', 'dasdas', 'dadasd', 'dadasd', '234', '限速器 轿箱门机 sddsa ', '11', '534');
INSERT INTO `record` VALUES ('45', '11', 'user', '2020-03-27 20:47:38', '维修员', '2020-04-21 00:00', 'fasf', '2020-04-07 00:00', 'fas', 'fas', 'fas', '234', 'sddsa 轿箱门机 ', '111', '534');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) DEFAULT NULL,
  `sex` varchar(11) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `address` varchar(32) DEFAULT NULL,
  `lasttime` varchar(32) DEFAULT NULL,
  `role` varchar(32) DEFAULT 'ROLE_USER',
  `isEnabled` int(1) DEFAULT '0',
  `age` int(11) DEFAULT NULL,
  `level` varchar(32) DEFAULT NULL,
  `zone` varchar(32) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'user', '0', '$2a$10$VkK2rJEvZzovaq8PHPQYfubVai80kzWqISjunj2RbXv/uOSF8JO5S', '127.0.0.1', '2020-04-17 09:06:24', 'ROLE_USER', '0', null, null, null, null);
INSERT INTO `sys_user` VALUES ('2', 'admin', null, '$2a$10$VkK2rJEvZzovaq8PHPQYfubVai80kzWqISjunj2RbXv/uOSF8JO5S', '127.0.0.1', '2020-04-17 09:04:29', 'ROLE_ADMIN', '0', null, null, null, null);
INSERT INTO `sys_user` VALUES ('3', '维修员', '男', '$2a$10$yQfVAAZY4xGiUKYbd7os3eu0rvqI.CCRTzkkKkDTLbnThcD7.x6KG', '127.0.0.1', '2020-04-17 09:18:22', 'ROLE_REP', '0', '2', '1', '广东省深圳市龙岗区', '15762323401');
INSERT INTO `sys_user` VALUES ('4', '阿凡达', '女', '$2a$10$8TVvkNC6ofT9bcN4ne.FGOlMvx38eWfJ210P4QcByrHlU8O5dE0ne', null, null, 'ROLE_ADMIN', '0', '11', '1', '广东省深圳市龙岗区', null);
INSERT INTO `sys_user` VALUES ('5', '下', '女', '$2a$10$ccXK/l0DcwRnmtpi3F/ayuZdcet.qjNnRDfkjEWjoeT3eYWy.Ua2u', null, null, 'ROLE_ADMIN', '0', '23', '1', '广东省深圳市龙岗区', null);
INSERT INTO `sys_user` VALUES ('6', '111', '男', '$2a$10$.OYsxTwXmIhSaZYe29SH1ufhXo9LVyWNqjigaaXMeveNNYVI5CTfm', null, null, 'ROLE_ADMIN', '0', '111', '1', '广东省深圳市龙岗区', null);
INSERT INTO `sys_user` VALUES ('7', '11', '男', '$2a$10$flM/WDQek7dL4/i0gzTr7e.MKLmXfd7kLLIWXpLwW8cfmUoSL8Kxm', null, null, 'ROLE_ADMIN', '0', '12', '1', '广东省深圳市龙岗区', null);
INSERT INTO `sys_user` VALUES ('8', '清热群', '男', '$2a$10$I4RLHYA/CCqzzVP.EGYmyOUv0jaSaZztJpwjgi.wX40A/O/H/GOiK', null, null, 'ROLE_ADMIN', '0', '11', '1', '湖南省长沙市芙蓉区', null);
INSERT INTO `sys_user` VALUES ('9', '维修工2号', '男', '$2a$10$OL9tCqlR342mAluuxZLt/eyy2QA9TE24Qk5ac0C7C3QiZQ/g13ygu', null, null, 'ROLE_ADMIN', '0', '1', '1', '广东省深圳市龙岗区', '122');

-- ----------------------------
-- Table structure for user_log
-- ----------------------------
DROP TABLE IF EXISTS `user_log`;
CREATE TABLE `user_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addid` int(11) DEFAULT NULL,
  `name` varchar(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `url` varchar(32) DEFAULT NULL,
  `requestType` varchar(32) DEFAULT NULL,
  `requestParam` text,
  `user` varchar(32) DEFAULT NULL,
  `ip` varchar(32) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`addid`),
  CONSTRAINT `uid` FOREIGN KEY (`addid`) REFERENCES `sys_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2582 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_log
-- ----------------------------
INSERT INTO `user_log` VALUES ('1579', '2', '查看所有用户', '0', '/user', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '28', '2020-03-04 23:26:51');
INSERT INTO `user_log` VALUES ('1580', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '19', '2020-03-04 23:27:39');
INSERT INTO `user_log` VALUES ('1581', '2', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '18', '2020-03-04 23:27:48');
INSERT INTO `user_log` VALUES ('1582', '2', '添加故障信息', '0', '/fault', 'POST', '{\"address\":\"细节\",\"submit\":\"1\",\"describe\":\"电梯炸了\"}', 'admin', '127.0.0.1', '22', '2020-03-04 23:28:05');
INSERT INTO `user_log` VALUES ('1583', '2', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '17', '2020-03-04 23:28:11');
INSERT INTO `user_log` VALUES ('1584', '2', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '20', '2020-03-04 23:31:28');
INSERT INTO `user_log` VALUES ('1585', '2', '删除电梯信息', '0', '/fault', 'DELETE', '{\"ids[]\":\"67\"}', 'admin', '127.0.0.1', '9', '2020-03-04 23:31:40');
INSERT INTO `user_log` VALUES ('1586', '2', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '13', '2020-03-04 23:31:41');
INSERT INTO `user_log` VALUES ('1587', '2', '查询零件信息', '0', '/part', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '13', '2020-03-04 23:31:45');
INSERT INTO `user_log` VALUES ('1588', '2', '删除零件信息', '0', '/part', 'DELETE', '{\"ids[]\":\"2\"}', 'admin', '127.0.0.1', '18', '2020-03-04 23:32:48');
INSERT INTO `user_log` VALUES ('1589', '2', '查询零件信息', '0', '/part', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '6', '2020-03-04 23:32:50');
INSERT INTO `user_log` VALUES ('1590', '2', '添加零件信息', '0', '/part', 'POST', '{\"number\":\"323\",\"name\":\"曳引机\"}', 'admin', '127.0.0.1', '10', '2020-03-04 23:32:55');
INSERT INTO `user_log` VALUES ('1591', '2', '添加零件信息', '0', '/part', 'POST', '{\"number\":\"1213\",\"name\":\"控制柜\"}', 'admin', '127.0.0.1', '6', '2020-03-04 23:33:14');
INSERT INTO `user_log` VALUES ('1592', '2', '添加零件信息', '0', '/part', 'POST', '{\"number\":\"99999\",\"name\":\"限速器\"}', 'admin', '127.0.0.1', '8', '2020-03-04 23:33:29');
INSERT INTO `user_log` VALUES ('1593', '2', '添加零件信息', '0', '/part', 'POST', '{\"number\":\"11331\",\"name\":\"轿箱门机\"}', 'admin', '127.0.0.1', '7', '2020-03-04 23:33:42');
INSERT INTO `user_log` VALUES ('1594', '2', '添加零件信息', '0', '/part', 'POST', '{\"number\":\"1\",\"name\":\"安全钳\"}', 'admin', '127.0.0.1', '5', '2020-03-04 23:33:51');
INSERT INTO `user_log` VALUES ('1595', '2', '查询零件信息', '0', '/part', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '6', '2020-03-04 23:33:56');
INSERT INTO `user_log` VALUES ('1596', '2', '超管查询日志', '0', '/log/all', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '16', '2020-03-04 23:34:01');
INSERT INTO `user_log` VALUES ('1597', '2', '超管查询日志', '0', '/log/all', 'GET', '{\"limit\":\"15\",\"page\":\"2\"}', 'admin', '127.0.0.1', '9', '2020-03-04 23:34:04');
INSERT INTO `user_log` VALUES ('1598', '2', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"cat5\",\"remember-me\":\"true\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '124', '2020-03-04 23:51:30');
INSERT INTO `user_log` VALUES ('1599', '2', '查看所有用户', '0', '/user', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '73', '2020-03-04 23:51:38');
INSERT INTO `user_log` VALUES ('1600', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '33', '2020-03-04 23:51:47');
INSERT INTO `user_log` VALUES ('1601', '2', '添加电梯信息', '0', '/elevator', 'POST', '{\"address\":\"曲阜市\",\"useUnit\":\"飞抵\",\"model\":\"pm250\",\"type\":\"未知\"}', 'admin', '127.0.0.1', '25', '2020-03-04 23:52:17');
INSERT INTO `user_log` VALUES ('1602', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '15', '2020-03-04 23:52:21');
INSERT INTO `user_log` VALUES ('1603', '2', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '24', '2020-03-04 23:52:25');
INSERT INTO `user_log` VALUES ('1604', '2', '修改电梯信息', '0', '/fault', 'PUT', '{\"submit\":\"1\",\"id\":\"64\"}', 'admin', '127.0.0.1', '27', '2020-03-04 23:52:26');
INSERT INTO `user_log` VALUES ('1605', '2', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '33', '2020-03-04 23:52:28');
INSERT INTO `user_log` VALUES ('1606', '2', '修改电梯信息', '0', '/fault', 'PUT', '{\"submit\":\"0\",\"id\":\"3\"}', 'admin', '127.0.0.1', '12', '2020-03-04 23:52:31');
INSERT INTO `user_log` VALUES ('1607', '2', '修改电梯信息', '0', '/fault', 'PUT', '{\"repair\":\"1\",\"id\":\"1\"}', 'admin', '127.0.0.1', '11', '2020-03-04 23:52:32');
INSERT INTO `user_log` VALUES ('1608', '2', '修改电梯信息', '0', '/fault', 'PUT', '{\"repair\":\"1\",\"id\":\"2\"}', 'admin', '127.0.0.1', '12', '2020-03-04 23:52:32');
INSERT INTO `user_log` VALUES ('1609', '2', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '21', '2020-03-04 23:52:33');
INSERT INTO `user_log` VALUES ('1610', '2', '添加零件信息', '0', '/part', 'POST', '{\"number\":\"32\",\"name\":\"不知道\"}', 'admin', '127.0.0.1', '22', '2020-03-04 23:52:41');
INSERT INTO `user_log` VALUES ('1611', '2', '超管查询日志', '0', '/log/all', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '19', '2020-03-04 23:52:44');
INSERT INTO `user_log` VALUES ('1612', '2', '删除所选日志', '0', '/log', 'DELETE', '{\"ids[]\":\"1578\"}', 'admin', '127.0.0.1', '38', '2020-03-04 23:52:46');
INSERT INTO `user_log` VALUES ('1613', '2', '超管查询日志', '0', '/log/all', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '14', '2020-03-04 23:52:48');
INSERT INTO `user_log` VALUES ('1614', '2', '查询零件信息', '0', '/part', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '8', '2020-03-04 23:52:48');
INSERT INTO `user_log` VALUES ('1615', '2', '删除零件信息', '0', '/part', 'DELETE', '{\"ids[]\":\"10\"}', 'admin', '127.0.0.1', '7', '2020-03-04 23:52:51');
INSERT INTO `user_log` VALUES ('1616', '2', '查询零件信息', '0', '/part', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '8', '2020-03-04 23:52:52');
INSERT INTO `user_log` VALUES ('1617', '2', '删除电梯信息', '0', '/elevator', 'DELETE', '{\"ids[]\":\"15\"}', 'admin', '127.0.0.1', '11', '2020-03-04 23:52:57');
INSERT INTO `user_log` VALUES ('1618', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '13', '2020-03-04 23:52:59');
INSERT INTO `user_log` VALUES ('1619', '1', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"5yca\",\"username\":\"user\"}', 'user', '127.0.0.1', '19', '2020-03-04 23:53:29');
INSERT INTO `user_log` VALUES ('1620', '1', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '17', '2020-03-04 23:53:36');
INSERT INTO `user_log` VALUES ('1621', '1', '添加故障信息', '0', '/fault', 'POST', '{\"address\":\"就是不知道咋就坏了\",\"submit\":\"1\",\"describe\":\"22222222\"}', 'user', '127.0.0.1', '20', '2020-03-04 23:53:53');
INSERT INTO `user_log` VALUES ('1622', '1', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '19', '2020-03-04 23:53:59');
INSERT INTO `user_log` VALUES ('1623', '2', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"wcwr\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '40', '2020-03-05 00:00:25');
INSERT INTO `user_log` VALUES ('1624', '2', '查看所有用户', '0', '/user', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '25', '2020-03-05 00:00:32');
INSERT INTO `user_log` VALUES ('1625', '2', '查看所有用户', '0', '/user', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '13', '2020-03-05 00:01:17');
INSERT INTO `user_log` VALUES ('1626', '1', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"v6un\",\"username\":\"user\"}', 'user', '127.0.0.1', '31', '2020-03-05 00:03:38');
INSERT INTO `user_log` VALUES ('1627', '1', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '11', '2020-03-05 00:03:44');
INSERT INTO `user_log` VALUES ('1628', '1', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"aaxd\",\"remember-me\":\"true\",\"username\":\"user\"}', 'user', '127.0.0.1', '104', '2020-03-05 00:12:50');
INSERT INTO `user_log` VALUES ('1629', '2', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"je3x\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '51', '2020-03-05 00:13:26');
INSERT INTO `user_log` VALUES ('1630', '2', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '33', '2020-03-05 00:13:43');
INSERT INTO `user_log` VALUES ('1631', '2', '查看所有用户', '0', '/user', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '28', '2020-03-05 00:13:47');
INSERT INTO `user_log` VALUES ('1632', '2', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"5yum\",\"remember-me\":\"true\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '19', '2020-03-05 00:24:27');
INSERT INTO `user_log` VALUES ('1633', '2', '更新用户信息', '0', '/user/isHave', 'GET', '{\"username\":\"测试\"}', 'admin', '127.0.0.1', '12', '2020-03-05 00:24:37');
INSERT INTO `user_log` VALUES ('1634', '2', '查看所有用户', '0', '/user', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '20', '2020-03-05 00:24:50');
INSERT INTO `user_log` VALUES ('1635', '2', '查看所有用户', '0', '/user', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '15', '2020-03-05 00:24:54');
INSERT INTO `user_log` VALUES ('1636', '2', '查看所有用户', '0', '/user', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '17', '2020-03-05 00:24:57');
INSERT INTO `user_log` VALUES ('1637', '2', '查看所有用户', '0', '/user', 'GET', '{\"search\":\"admin\",\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '27', '2020-03-05 00:25:02');
INSERT INTO `user_log` VALUES ('1638', '2', '查看所有用户', '0', '/user', 'GET', '{\"search\":\"\",\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '12', '2020-03-05 00:25:05');
INSERT INTO `user_log` VALUES ('1639', '2', '添加电梯信息', '0', '/elevator', 'POST', '{\"address\":\"山东省曲阜市\",\"useUnit\":\"公务机\",\"model\":\"p2323\",\"type\":\"乘客电梯\"}', 'admin', '127.0.0.1', '32', '2020-03-05 00:25:32');
INSERT INTO `user_log` VALUES ('1640', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '27', '2020-03-05 00:25:34');
INSERT INTO `user_log` VALUES ('1641', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '18', '2020-03-05 00:25:36');
INSERT INTO `user_log` VALUES ('1642', '2', '删除电梯信息', '0', '/elevator', 'DELETE', '{\"ids[]\":\"16\"}', 'admin', '127.0.0.1', '12', '2020-03-05 00:25:42');
INSERT INTO `user_log` VALUES ('1643', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '10', '2020-03-05 00:25:43');
INSERT INTO `user_log` VALUES ('1644', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"search\":\"南极\",\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '14', '2020-03-05 00:25:48');
INSERT INTO `user_log` VALUES ('1645', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"search\":\"\",\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '23', '2020-03-05 00:25:51');
INSERT INTO `user_log` VALUES ('1646', '2', '修改电梯信息', '0', '/elevator', 'PUT', '{\"address\":\"南极\",\"useUnit\":\"皇宫\",\"addtime\":\"2020-03-04 15:03:31\",\"addId\":\"2\",\"model\":\"TOEC—90\",\"id\":\"14\",\"addName\":\"admin\",\"type\":\"观光电梯111\"}', 'admin', '127.0.0.1', '6', '2020-03-05 00:25:57');
INSERT INTO `user_log` VALUES ('1647', '2', '修改电梯信息', '0', '/elevator', 'PUT', '{\"address\":\"南极\",\"useUnit\":\"皇宫\",\"addtime\":\"2020-03-04 15:03:31\",\"addId\":\"2\",\"model\":\"TOEC—901\",\"id\":\"14\",\"addName\":\"admin\",\"type\":\"观光电梯111\"}', 'admin', '127.0.0.1', '5', '2020-03-05 00:25:59');
INSERT INTO `user_log` VALUES ('1648', '2', '修改电梯信息', '0', '/elevator', 'PUT', '{\"address\":\"南极\",\"useUnit\":\"1\",\"addtime\":\"2020-03-04 15:03:31\",\"addId\":\"2\",\"model\":\"TOEC—901\",\"id\":\"14\",\"addName\":\"admin\",\"type\":\"观光电梯111\"}', 'admin', '127.0.0.1', '6', '2020-03-05 00:26:01');
INSERT INTO `user_log` VALUES ('1649', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '26', '2020-03-05 00:26:03');
INSERT INTO `user_log` VALUES ('1650', '2', '添加故障信息', '0', '/fault', 'POST', '{\"address\":\"曲阜\",\"submit\":\"1\",\"describe\":\"113111\"}', 'admin', '127.0.0.1', '25', '2020-03-05 00:26:13');
INSERT INTO `user_log` VALUES ('1651', '2', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '25', '2020-03-05 00:26:15');
INSERT INTO `user_log` VALUES ('1652', '2', '修改电梯信息', '0', '/fault', 'PUT', '{\"submit\":\"0\",\"id\":\"70\"}', 'admin', '127.0.0.1', '27', '2020-03-05 00:26:18');
INSERT INTO `user_log` VALUES ('1653', '2', '修改电梯信息', '0', '/fault', 'PUT', '{\"repair\":\"1\",\"id\":\"70\"}', 'admin', '127.0.0.1', '12', '2020-03-05 00:26:18');
INSERT INTO `user_log` VALUES ('1654', '2', '修改电梯信息', '0', '/fault', 'PUT', '{\"repair\":\"1\",\"id\":\"68\"}', 'admin', '127.0.0.1', '9', '2020-03-05 00:26:19');
INSERT INTO `user_log` VALUES ('1655', '2', '修改电梯信息', '0', '/fault', 'PUT', '{\"repair\":\"1\",\"id\":\"69\"}', 'admin', '127.0.0.1', '17', '2020-03-05 00:26:19');
INSERT INTO `user_log` VALUES ('1656', '2', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '17', '2020-03-05 00:26:20');
INSERT INTO `user_log` VALUES ('1657', '2', '添加零件信息', '0', '/part', 'POST', '{\"number\":\"222\",\"name\":\"》》》》\"}', 'admin', '127.0.0.1', '16', '2020-03-05 00:26:32');
INSERT INTO `user_log` VALUES ('1658', '2', '查询零件信息', '0', '/part', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '13', '2020-03-05 00:26:34');
INSERT INTO `user_log` VALUES ('1659', '2', '删除零件信息', '0', '/part', 'DELETE', '{\"ids[]\":\"9\"}', 'admin', '127.0.0.1', '8', '2020-03-05 00:26:39');
INSERT INTO `user_log` VALUES ('1660', '2', '查询零件信息', '0', '/part', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '4', '2020-03-05 00:26:40');
INSERT INTO `user_log` VALUES ('1661', '2', '超管查询日志', '0', '/log/all', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '21', '2020-03-05 00:26:42');
INSERT INTO `user_log` VALUES ('1662', '2', '超管查询日志', '0', '/log/all', 'GET', '{\"limit\":\"15\",\"page\":\"6\"}', 'admin', '127.0.0.1', '8', '2020-03-05 00:26:46');
INSERT INTO `user_log` VALUES ('1663', '1', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"5f4w\",\"username\":\"user\"}', 'user', '127.0.0.1', '54', '2020-03-05 00:27:08');
INSERT INTO `user_log` VALUES ('1664', '1', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '11', '2020-03-05 00:27:14');
INSERT INTO `user_log` VALUES ('1665', '2', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"a6bl\",\"remember-me\":\"true\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '44', '2020-03-05 11:28:33');
INSERT INTO `user_log` VALUES ('1666', '2', '用户登录', '0', '/isLife', 'GET', '{}', 'admin', '127.0.0.1', '137', '2020-03-05 11:29:02');
INSERT INTO `user_log` VALUES ('1667', '2', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"rsrc\",\"remember-me\":\"true\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '50', '2020-03-05 11:29:32');
INSERT INTO `user_log` VALUES ('1668', '2', '更新用户信息', '0', '/user/isHave', 'GET', '{\"username\":\"你害怕\"}', 'admin', '127.0.0.1', '13', '2020-03-05 11:29:48');
INSERT INTO `user_log` VALUES ('1669', '2', '查看所有用户', '0', '/user', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '133', '2020-03-05 11:29:54');
INSERT INTO `user_log` VALUES ('1670', '2', '添加电梯信息', '0', '/elevator', 'POST', '{\"address\":\"我的·\",\"useUnit\":\"日照\",\"model\":\"p250\",\"type\":\"乘客\"}', 'admin', '127.0.0.1', '22', '2020-03-05 11:30:16');
INSERT INTO `user_log` VALUES ('1671', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '31', '2020-03-05 11:30:18');
INSERT INTO `user_log` VALUES ('1672', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '17', '2020-03-05 11:30:21');
INSERT INTO `user_log` VALUES ('1673', '2', '删除电梯信息', '0', '/elevator', 'DELETE', '{\"ids[]\":\"17\"}', 'admin', '127.0.0.1', '14', '2020-03-05 11:30:25');
INSERT INTO `user_log` VALUES ('1674', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '17', '2020-03-05 11:30:26');
INSERT INTO `user_log` VALUES ('1675', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"search\":\"南极\",\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '15', '2020-03-05 11:30:33');
INSERT INTO `user_log` VALUES ('1676', '2', '修改电梯信息', '0', '/elevator', 'PUT', '{\"address\":\"南极\",\"useUnit\":\"1\",\"addtime\":\"2020-03-04 15:03:31\",\"addId\":\"2\",\"model\":\"TOEC—901\",\"id\":\"14\",\"addName\":\"admin\",\"type\":\"观光电梯11211\"}', 'admin', '127.0.0.1', '16', '2020-03-05 11:30:39');
INSERT INTO `user_log` VALUES ('1677', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '16', '2020-03-05 11:30:40');
INSERT INTO `user_log` VALUES ('1678', '2', '添加故障信息', '0', '/fault', 'POST', '{\"address\":\"曲阜\",\"submit\":\"0\",\"describe\":\"凄凄切切\"}', 'admin', '127.0.0.1', '11', '2020-03-05 11:30:48');
INSERT INTO `user_log` VALUES ('1679', '2', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '47', '2020-03-05 11:30:50');
INSERT INTO `user_log` VALUES ('1680', '2', '删除电梯信息', '0', '/fault', 'DELETE', '{\"ids[]\":\"70\"}', 'admin', '127.0.0.1', '17', '2020-03-05 11:30:56');
INSERT INTO `user_log` VALUES ('1681', '2', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '17', '2020-03-05 11:30:57');
INSERT INTO `user_log` VALUES ('1682', '2', '修改电梯信息', '0', '/fault', 'PUT', '{\"submit\":\"0\",\"id\":\"4\"}', 'admin', '127.0.0.1', '13', '2020-03-05 11:30:58');
INSERT INTO `user_log` VALUES ('1683', '2', '修改电梯信息', '0', '/fault', 'PUT', '{\"submit\":\"0\",\"id\":\"5\"}', 'admin', '127.0.0.1', '13', '2020-03-05 11:30:59');
INSERT INTO `user_log` VALUES ('1684', '2', '修改电梯信息', '0', '/fault', 'PUT', '{\"submit\":\"0\",\"id\":\"64\"}', 'admin', '127.0.0.1', '35', '2020-03-05 11:30:59');
INSERT INTO `user_log` VALUES ('1685', '2', '修改电梯信息', '0', '/fault', 'PUT', '{\"repair\":\"1\",\"id\":\"64\"}', 'admin', '127.0.0.1', '25', '2020-03-05 11:30:59');
INSERT INTO `user_log` VALUES ('1686', '2', '修改电梯信息', '0', '/fault', 'PUT', '{\"repair\":\"1\",\"id\":\"65\"}', 'admin', '127.0.0.1', '23', '2020-03-05 11:31:00');
INSERT INTO `user_log` VALUES ('1687', '2', '添加零件信息', '0', '/part', 'POST', '{\"number\":\"122111\",\"name\":\"不知道\"}', 'admin', '127.0.0.1', '59', '2020-03-05 11:31:09');
INSERT INTO `user_log` VALUES ('1688', '2', '查询零件信息', '0', '/part', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '16', '2020-03-05 11:31:11');
INSERT INTO `user_log` VALUES ('1689', '2', '超管查询日志', '0', '/log/all', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '24', '2020-03-05 11:31:16');
INSERT INTO `user_log` VALUES ('1690', '1', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"2d88\",\"username\":\"user\"}', 'user', '127.0.0.1', '37', '2020-03-05 11:31:39');
INSERT INTO `user_log` VALUES ('1691', '1', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '34', '2020-03-05 11:31:45');
INSERT INTO `user_log` VALUES ('1692', '1', '修改电梯信息', '0', '/fault', 'PUT', '{\"submit\":\"0\",\"id\":\"65\"}', 'user', '127.0.0.1', '17', '2020-03-05 11:31:50');
INSERT INTO `user_log` VALUES ('1693', '2', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"qc4q\",\"remember-me\":\"true\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '43', '2020-03-05 11:33:29');
INSERT INTO `user_log` VALUES ('1694', '2', '更新用户信息', '0', '/user/isHave', 'GET', '{\"username\":\"3131\"}', 'admin', '127.0.0.1', '11', '2020-03-05 11:33:40');
INSERT INTO `user_log` VALUES ('1695', '2', '查看所有用户', '0', '/user', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '25', '2020-03-05 11:33:45');
INSERT INTO `user_log` VALUES ('1696', '2', '添加电梯信息', '0', '/elevator', 'POST', '{\"address\":\"111111\",\"useUnit\":\"你好\",\"model\":\"p250\",\"type\":\"乘客电梯\"}', 'admin', '127.0.0.1', '19', '2020-03-05 11:34:07');
INSERT INTO `user_log` VALUES ('1697', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '20', '2020-03-05 11:34:09');
INSERT INTO `user_log` VALUES ('1698', '2', '删除电梯信息', '0', '/elevator', 'DELETE', '{\"ids[]\":\"18\"}', 'admin', '127.0.0.1', '23', '2020-03-05 11:34:13');
INSERT INTO `user_log` VALUES ('1699', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '13', '2020-03-05 11:34:15');
INSERT INTO `user_log` VALUES ('1700', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"search\":\"北京\",\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '21', '2020-03-05 11:34:20');
INSERT INTO `user_log` VALUES ('1701', '2', '添加故障信息', '0', '/fault', 'POST', '{\"address\":\"非正常\",\"submit\":\"0\",\"describe\":\"111111\"}', 'admin', '127.0.0.1', '17', '2020-03-05 11:34:29');
INSERT INTO `user_log` VALUES ('1702', '2', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '26', '2020-03-05 11:34:31');
INSERT INTO `user_log` VALUES ('1703', '2', '修改电梯信息', '0', '/fault', 'PUT', '{\"submit\":\"1\",\"id\":\"4\"}', 'admin', '127.0.0.1', '19', '2020-03-05 11:34:33');
INSERT INTO `user_log` VALUES ('1704', '2', '修改电梯信息', '0', '/fault', 'PUT', '{\"submit\":\"1\",\"id\":\"5\"}', 'admin', '127.0.0.1', '15', '2020-03-05 11:34:34');
INSERT INTO `user_log` VALUES ('1705', '2', '修改电梯信息', '0', '/fault', 'PUT', '{\"repair\":\"1\",\"id\":\"3\"}', 'admin', '127.0.0.1', '14', '2020-03-05 11:34:35');
INSERT INTO `user_log` VALUES ('1706', '2', '修改电梯信息', '0', '/fault', 'PUT', '{\"submit\":\"1\",\"id\":\"66\"}', 'admin', '127.0.0.1', '13', '2020-03-05 11:34:36');
INSERT INTO `user_log` VALUES ('1707', '2', '删除电梯信息', '0', '/fault', 'DELETE', '{\"ids[]\":\"72\"}', 'admin', '127.0.0.1', '11', '2020-03-05 11:34:39');
INSERT INTO `user_log` VALUES ('1708', '2', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '15', '2020-03-05 11:34:41');
INSERT INTO `user_log` VALUES ('1709', '2', '添加零件信息', '0', '/part', 'POST', '{\"number\":\"1111\",\"name\":\"哒哒哒哒\"}', 'admin', '127.0.0.1', '9', '2020-03-05 11:34:49');
INSERT INTO `user_log` VALUES ('1710', '2', '查询零件信息', '0', '/part', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '17', '2020-03-05 11:34:52');
INSERT INTO `user_log` VALUES ('1711', '2', '删除零件信息', '0', '/part', 'DELETE', '{\"ids[]\":\"13\"}', 'admin', '127.0.0.1', '15', '2020-03-05 11:34:55');
INSERT INTO `user_log` VALUES ('1712', '2', '查询零件信息', '0', '/part', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '5', '2020-03-05 11:34:57');
INSERT INTO `user_log` VALUES ('1713', '2', '超管查询日志', '0', '/log/all', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '28', '2020-03-05 11:34:59');
INSERT INTO `user_log` VALUES ('1714', '2', '超管查询日志', '0', '/log/all', 'GET', '{\"limit\":\"15\",\"page\":\"9\"}', 'admin', '127.0.0.1', '19', '2020-03-05 11:35:01');
INSERT INTO `user_log` VALUES ('1715', '1', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"xp6j\",\"username\":\"user\"}', 'user', '127.0.0.1', '39', '2020-03-05 11:35:21');
INSERT INTO `user_log` VALUES ('1716', '1', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '24', '2020-03-05 11:35:28');
INSERT INTO `user_log` VALUES ('1717', '2', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"c97n\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '22', '2020-03-05 11:36:29');
INSERT INTO `user_log` VALUES ('1718', '1', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"jdd2\",\"remember-me\":\"true\",\"username\":\"user\"}', 'user', '127.0.0.1', '40', '2020-03-05 12:19:35');
INSERT INTO `user_log` VALUES ('1719', '2', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"9gqn\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '17', '2020-03-05 12:19:57');
INSERT INTO `user_log` VALUES ('1720', '2', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '14', '2020-03-05 12:20:07');
INSERT INTO `user_log` VALUES ('1721', '2', '修改电梯信息', '0', '/fault', 'PUT', '{\"repair\":\"0\",\"id\":\"1\"}', 'admin', '127.0.0.1', '26', '2020-03-05 12:20:10');
INSERT INTO `user_log` VALUES ('1722', '2', '修改电梯信息', '0', '/fault', 'PUT', '{\"repair\":\"0\",\"id\":\"2\"}', 'admin', '127.0.0.1', '12', '2020-03-05 12:20:10');
INSERT INTO `user_log` VALUES ('1723', '2', '修改电梯信息', '0', '/fault', 'PUT', '{\"repair\":\"0\",\"id\":\"3\"}', 'admin', '127.0.0.1', '12', '2020-03-05 12:20:10');
INSERT INTO `user_log` VALUES ('1724', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '10', '2020-03-05 12:21:28');
INSERT INTO `user_log` VALUES ('1725', '2', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"ceqg\",\"remember-me\":\"true\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '183', '2020-03-05 14:51:49');
INSERT INTO `user_log` VALUES ('1726', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '134', '2020-03-05 14:52:00');
INSERT INTO `user_log` VALUES ('1727', '2', '添加电梯信息', '0', '/elevator', 'POST', '{\"address\":\"曲阜\",\"useUnit\":\"11\",\"model\":\"哒哒哒\",\"type\":\"p250\",\"cycle\":\"10\"}', 'admin', '127.0.0.1', '19', '2020-03-05 14:52:14');
INSERT INTO `user_log` VALUES ('1728', '2', '添加电梯信息', '0', '/elevator', 'POST', '{\"address\":\"曲阜\",\"useUnit\":\"11\",\"model\":\"哒哒哒\",\"type\":\"p250\",\"cycle\":\"10\"}', 'admin', '127.0.0.1', '57690', '2020-03-05 14:52:35');
INSERT INTO `user_log` VALUES ('1729', '2', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"jx7u\",\"remember-me\":\"true\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '245', '2020-03-05 14:54:28');
INSERT INTO `user_log` VALUES ('1730', '2', '添加电梯信息', '0', '/elevator', 'POST', '{\"address\":\"哒哒哒哒\",\"useUnit\":\"111\",\"model\":\"111\",\"type\":\"11111\",\"cycle\":\"10\"}', 'admin', '127.0.0.1', '183', '2020-03-05 14:54:44');
INSERT INTO `user_log` VALUES ('1731', '2', '添加电梯信息', '0', '/elevator', 'POST', '{\"address\":\"哒哒哒哒\",\"useUnit\":\"111\",\"model\":\"111\",\"type\":\"11111\",\"cycle\":\"10\"}', 'admin', '127.0.0.1', '29', '2020-03-05 14:55:12');
INSERT INTO `user_log` VALUES ('1732', '2', '添加电梯信息', '0', '/elevator', 'POST', '{\"address\":\"曲阜师范大学\",\"useUnit\":\"111\",\"model\":\"pppp\",\"type\":\"不知道什么类型\",\"cycle\":\"30\"}', 'admin', '127.0.0.1', '22', '2020-03-05 14:57:34');
INSERT INTO `user_log` VALUES ('1733', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '99', '2020-03-05 14:57:48');
INSERT INTO `user_log` VALUES ('1734', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '54', '2020-03-05 15:12:11');
INSERT INTO `user_log` VALUES ('1735', '2', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"kb99\",\"remember-me\":\"true\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '179', '2020-03-05 15:13:22');
INSERT INTO `user_log` VALUES ('1736', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '101', '2020-03-05 15:13:31');
INSERT INTO `user_log` VALUES ('1737', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '30', '2020-03-05 15:14:58');
INSERT INTO `user_log` VALUES ('1738', '2', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"m565\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '91', '2020-03-05 15:15:47');
INSERT INTO `user_log` VALUES ('1739', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '69', '2020-03-05 15:15:53');
INSERT INTO `user_log` VALUES ('1740', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '22', '2020-03-05 15:15:59');
INSERT INTO `user_log` VALUES ('1741', '2', '添加电梯信息', '0', '/elevator', 'POST', '{\"address\":\"才\",\"useUnit\":\"111\",\"model\":\"11\",\"type\":\"111\",\"cycle\":\"3\"}', 'admin', '127.0.0.1', '21', '2020-03-05 15:16:50');
INSERT INTO `user_log` VALUES ('1742', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '30', '2020-03-05 15:16:59');
INSERT INTO `user_log` VALUES ('1743', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '63', '2020-03-05 15:20:05');
INSERT INTO `user_log` VALUES ('1744', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '18', '2020-03-05 15:21:12');
INSERT INTO `user_log` VALUES ('1745', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '18', '2020-03-05 15:21:28');
INSERT INTO `user_log` VALUES ('1746', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '24', '2020-03-05 15:21:42');
INSERT INTO `user_log` VALUES ('1747', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '18', '2020-03-05 15:22:05');
INSERT INTO `user_log` VALUES ('1748', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '18', '2020-03-05 15:23:41');
INSERT INTO `user_log` VALUES ('1749', '2', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '20', '2020-03-05 15:24:30');
INSERT INTO `user_log` VALUES ('1750', '2', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"xvqc\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '160', '2020-03-05 16:01:18');
INSERT INTO `user_log` VALUES ('1751', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '93', '2020-03-05 16:02:02');
INSERT INTO `user_log` VALUES ('1752', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '25', '2020-03-05 16:07:56');
INSERT INTO `user_log` VALUES ('1753', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '33', '2020-03-05 16:09:02');
INSERT INTO `user_log` VALUES ('1754', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '27', '2020-03-05 16:09:34');
INSERT INTO `user_log` VALUES ('1755', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '21', '2020-03-05 16:09:47');
INSERT INTO `user_log` VALUES ('1756', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '25', '2020-03-05 16:09:57');
INSERT INTO `user_log` VALUES ('1757', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '25', '2020-03-05 16:10:10');
INSERT INTO `user_log` VALUES ('1758', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '33', '2020-03-05 16:10:29');
INSERT INTO `user_log` VALUES ('1759', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '32', '2020-03-05 16:11:35');
INSERT INTO `user_log` VALUES ('1760', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '25', '2020-03-05 16:11:46');
INSERT INTO `user_log` VALUES ('1761', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '30', '2020-03-05 16:13:24');
INSERT INTO `user_log` VALUES ('1762', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '30', '2020-03-05 16:14:08');
INSERT INTO `user_log` VALUES ('1763', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '32', '2020-03-05 16:14:28');
INSERT INTO `user_log` VALUES ('1764', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '29', '2020-03-05 16:15:34');
INSERT INTO `user_log` VALUES ('1765', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '21', '2020-03-05 16:15:35');
INSERT INTO `user_log` VALUES ('1766', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '20', '2020-03-05 16:17:00');
INSERT INTO `user_log` VALUES ('1767', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '24', '2020-03-05 16:18:40');
INSERT INTO `user_log` VALUES ('1768', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '24', '2020-03-05 16:20:23');
INSERT INTO `user_log` VALUES ('1769', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '24', '2020-03-05 16:20:46');
INSERT INTO `user_log` VALUES ('1770', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '19', '2020-03-05 16:21:11');
INSERT INTO `user_log` VALUES ('1771', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '20', '2020-03-05 16:21:20');
INSERT INTO `user_log` VALUES ('1772', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '24', '2020-03-05 16:22:33');
INSERT INTO `user_log` VALUES ('1773', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '18', '2020-03-05 16:24:31');
INSERT INTO `user_log` VALUES ('1774', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '17', '2020-03-05 16:25:11');
INSERT INTO `user_log` VALUES ('1775', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '22', '2020-03-05 16:25:32');
INSERT INTO `user_log` VALUES ('1776', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '21', '2020-03-05 16:26:44');
INSERT INTO `user_log` VALUES ('1777', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '23', '2020-03-05 16:27:57');
INSERT INTO `user_log` VALUES ('1778', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '18', '2020-03-05 16:28:21');
INSERT INTO `user_log` VALUES ('1779', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '20', '2020-03-05 16:29:43');
INSERT INTO `user_log` VALUES ('1780', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '21', '2020-03-05 16:30:17');
INSERT INTO `user_log` VALUES ('1781', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '18', '2020-03-05 16:30:52');
INSERT INTO `user_log` VALUES ('1782', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '18', '2020-03-05 16:31:06');
INSERT INTO `user_log` VALUES ('1783', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '52', '2020-03-05 16:45:20');
INSERT INTO `user_log` VALUES ('1784', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '37', '2020-03-05 16:47:33');
INSERT INTO `user_log` VALUES ('1785', '2', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"crcu\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '125', '2020-03-05 16:49:12');
INSERT INTO `user_log` VALUES ('1786', '2', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '33', '2020-03-05 16:49:18');
INSERT INTO `user_log` VALUES ('1787', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '63', '2020-03-05 16:49:20');
INSERT INTO `user_log` VALUES ('1788', '2', '添加维保信息', '0', '/maintenanceService', 'POST', '{}', 'admin', '127.0.0.1', '18', '2020-03-05 16:49:29');
INSERT INTO `user_log` VALUES ('1789', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '21', '2020-03-05 16:49:30');
INSERT INTO `user_log` VALUES ('1790', '2', '添加维保信息', '0', '/maintenanceService', 'POST', '{}', 'admin', '127.0.0.1', '10', '2020-03-05 16:50:12');
INSERT INTO `user_log` VALUES ('1791', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '22', '2020-03-05 16:50:13');
INSERT INTO `user_log` VALUES ('1792', '2', '添加维保信息', '0', '/maintenanceService', 'POST', '{}', 'admin', '127.0.0.1', '79958', '2020-03-05 16:50:33');
INSERT INTO `user_log` VALUES ('1793', '2', '添加维保信息', '0', '/maintenanceService', 'POST', '{}', 'admin', '127.0.0.1', '1047', '2020-03-05 16:51:53');
INSERT INTO `user_log` VALUES ('1794', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '19', '2020-03-05 16:51:54');
INSERT INTO `user_log` VALUES ('1795', '2', '添加维保信息', '0', '/maintenanceService', 'POST', '{}', 'admin', '127.0.0.1', '9263', '2020-03-05 16:52:02');
INSERT INTO `user_log` VALUES ('1796', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '19', '2020-03-05 16:52:13');
INSERT INTO `user_log` VALUES ('1797', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '25', '2020-03-05 16:52:33');
INSERT INTO `user_log` VALUES ('1798', '2', '添加维保信息', '0', '/maintenanceService', 'POST', '{\"result\":\"31\",\"eid\":\"\",\"name\":\"的\",\"time\":\"2020-03-09 00:00\"}', 'admin', '127.0.0.1', '23098', '2020-03-05 16:52:40');
INSERT INTO `user_log` VALUES ('1799', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '19', '2020-03-05 16:53:05');
INSERT INTO `user_log` VALUES ('1800', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '25', '2020-03-05 16:54:29');
INSERT INTO `user_log` VALUES ('1801', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '16', '2020-03-05 16:55:15');
INSERT INTO `user_log` VALUES ('1802', '2', '添加维保信息', '0', '/maintenanceService', 'POST', '{\"result\":\"1\",\"eid\":\"\",\"name\":\"哒哒\",\"time\":\"2020-03-05 00:00\"}', 'admin', '127.0.0.1', '8', '2020-03-05 16:55:28');
INSERT INTO `user_log` VALUES ('1803', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '22', '2020-03-05 16:55:30');
INSERT INTO `user_log` VALUES ('1804', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '21', '2020-03-05 16:56:25');
INSERT INTO `user_log` VALUES ('1805', '2', '添加维保信息', '0', '/maintenanceService', 'POST', '{\"result\":\"111\",\"eid\":\"\",\"name\":\"11\",\"time\":\"2020-03-09 00:00\"}', 'admin', '127.0.0.1', '10', '2020-03-05 16:56:29');
INSERT INTO `user_log` VALUES ('1806', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '20', '2020-03-05 16:56:31');
INSERT INTO `user_log` VALUES ('1807', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '16', '2020-03-05 16:57:39');
INSERT INTO `user_log` VALUES ('1808', '2', '添加维保信息', '0', '/maintenanceService', 'POST', '{}', 'admin', '127.0.0.1', '10', '2020-03-05 16:57:44');
INSERT INTO `user_log` VALUES ('1809', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '14', '2020-03-05 16:57:45');
INSERT INTO `user_log` VALUES ('1810', '2', '添加维保信息', '0', '/maintenanceService', 'POST', '{}', 'admin', '127.0.0.1', '7', '2020-03-05 16:58:03');
INSERT INTO `user_log` VALUES ('1811', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '17', '2020-03-05 16:58:05');
INSERT INTO `user_log` VALUES ('1812', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '18', '2020-03-05 16:59:18');
INSERT INTO `user_log` VALUES ('1813', '2', '添加维保信息', '0', '/maintenanceService', 'POST', '{}', 'admin', '127.0.0.1', '8', '2020-03-05 16:59:21');
INSERT INTO `user_log` VALUES ('1814', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '16', '2020-03-05 16:59:23');
INSERT INTO `user_log` VALUES ('1815', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '15', '2020-03-05 16:59:48');
INSERT INTO `user_log` VALUES ('1816', '2', '添加维保信息', '0', '/maintenanceService', 'POST', '{}', 'admin', '127.0.0.1', '7', '2020-03-05 16:59:56');
INSERT INTO `user_log` VALUES ('1817', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '14', '2020-03-05 16:59:58');
INSERT INTO `user_log` VALUES ('1818', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '15', '2020-03-05 17:00:53');
INSERT INTO `user_log` VALUES ('1819', '2', '添加维保信息', '0', '/maintenanceService', 'POST', '{\"result\":\"1\",\"eid\":\"\",\"name\":\"1\",\"time\":\"\"}', 'admin', '127.0.0.1', '9', '2020-03-05 17:00:57');
INSERT INTO `user_log` VALUES ('1820', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '11', '2020-03-05 17:00:59');
INSERT INTO `user_log` VALUES ('1821', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '14', '2020-03-05 17:01:54');
INSERT INTO `user_log` VALUES ('1822', '2', '添加维保信息', '0', '/maintenanceService', 'POST', '{\"result\":\"1\",\"eid\":\"\",\"name\":\"31\",\"time\":\"\"}', 'admin', '127.0.0.1', '9', '2020-03-05 17:02:01');
INSERT INTO `user_log` VALUES ('1823', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '11', '2020-03-05 17:02:02');
INSERT INTO `user_log` VALUES ('1824', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '13', '2020-03-05 17:03:44');
INSERT INTO `user_log` VALUES ('1825', '2', '添加维保信息', '0', '/maintenanceService', 'POST', '{}', 'admin', '127.0.0.1', '5', '2020-03-05 17:03:54');
INSERT INTO `user_log` VALUES ('1826', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '12', '2020-03-05 17:03:56');
INSERT INTO `user_log` VALUES ('1827', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '16', '2020-03-05 17:04:21');
INSERT INTO `user_log` VALUES ('1828', '2', '添加维保信息', '0', '/maintenanceService', 'POST', '{\"result\":\"\",\"eid\":\"8\",\"name\":\"1\",\"time\":\"\"}', 'admin', '127.0.0.1', '6', '2020-03-05 17:04:24');
INSERT INTO `user_log` VALUES ('1829', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '101', '2020-03-05 17:04:25');
INSERT INTO `user_log` VALUES ('1830', '2', '添加维保信息', '0', '/maintenanceService', 'POST', '{\"result\":\"你好歹\",\"eid\":\"8\",\"name\":\"奥特曼\",\"time\":\"2020-03-10 00:00\"}', 'admin', '127.0.0.1', '8', '2020-03-05 17:05:34');
INSERT INTO `user_log` VALUES ('1831', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '15', '2020-03-05 17:05:35');
INSERT INTO `user_log` VALUES ('1832', '1', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"458y\",\"username\":\"user\"}', 'user', '127.0.0.1', '19', '2020-03-05 17:06:12');
INSERT INTO `user_log` VALUES ('1833', '1', '查询零件信息', '0', '/part', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '13', '2020-03-05 17:09:30');
INSERT INTO `user_log` VALUES ('1834', '2', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"c5g4\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '126', '2020-03-05 17:19:01');
INSERT INTO `user_log` VALUES ('1835', '1', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"c7jb\",\"username\":\"user\"}', 'user', '127.0.0.1', '27', '2020-03-05 17:19:31');
INSERT INTO `user_log` VALUES ('1836', '1', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '55', '2020-03-05 17:19:36');
INSERT INTO `user_log` VALUES ('1837', '1', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"28qg\",\"remember-me\":\"true\",\"username\":\"user\"}', 'user', '127.0.0.1', '119', '2020-03-05 17:24:26');
INSERT INTO `user_log` VALUES ('1838', '1', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '59', '2020-03-05 17:24:38');
INSERT INTO `user_log` VALUES ('1839', '1', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '17', '2020-03-05 17:26:23');
INSERT INTO `user_log` VALUES ('1840', '1', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '16', '2020-03-05 17:26:35');
INSERT INTO `user_log` VALUES ('1841', '1', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '13', '2020-03-05 17:27:34');
INSERT INTO `user_log` VALUES ('1842', '1', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '17', '2020-03-05 17:27:44');
INSERT INTO `user_log` VALUES ('1843', '1', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '15', '2020-03-05 17:28:10');
INSERT INTO `user_log` VALUES ('1844', '1', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '61207', '2020-03-05 17:29:23');
INSERT INTO `user_log` VALUES ('1845', '1', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"nqs7\",\"username\":\"user\"}', 'user', '127.0.0.1', '182', '2020-03-05 17:31:12');
INSERT INTO `user_log` VALUES ('1846', '1', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '18469', '2020-03-05 17:31:17');
INSERT INTO `user_log` VALUES ('1847', '1', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '3513', '2020-03-05 17:31:38');
INSERT INTO `user_log` VALUES ('1848', '1', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"recy\",\"remember-me\":\"true\",\"username\":\"user\"}', 'user', '127.0.0.1', '116', '2020-03-05 17:36:56');
INSERT INTO `user_log` VALUES ('1849', '1', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '63', '2020-03-05 17:37:00');
INSERT INTO `user_log` VALUES ('1850', '2', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"yxut\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '22', '2020-03-05 17:37:14');
INSERT INTO `user_log` VALUES ('1851', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '27', '2020-03-05 17:37:34');
INSERT INTO `user_log` VALUES ('1852', '2', '添加维保信息', '0', '/maintenanceService', 'POST', '{\"result\":\"11111\",\"eid\":\"8\",\"name\":\"我不种地\",\"time\":\"2020-03-18 00:00\"}', 'admin', '127.0.0.1', '89', '2020-03-05 17:38:17');
INSERT INTO `user_log` VALUES ('1853', '2', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"qr5t\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '127', '2020-03-05 18:27:28');
INSERT INTO `user_log` VALUES ('1854', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '62', '2020-03-05 18:27:39');
INSERT INTO `user_log` VALUES ('1855', '2', '添加维保信息', '0', '/maintenanceService', 'POST', '{\"result\":\"哒哒\",\"eid\":\"8\",\"name\":\"jack\",\"time\":\"2020-03-18 00:00\"}', 'admin', '127.0.0.1', '57', '2020-03-05 18:27:49');
INSERT INTO `user_log` VALUES ('1856', '2', '添加维保信息', '0', '/maintenanceService', 'POST', '{\"result\":\"哒哒\",\"eid\":\"8\",\"name\":\"jack\",\"time\":\"2020-03-18 00:00\"}', 'admin', '127.0.0.1', '40454', '2020-03-05 18:28:06');
INSERT INTO `user_log` VALUES ('1857', '2', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"hk5b\",\"remember-me\":\"true\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '147', '2020-03-05 18:32:03');
INSERT INTO `user_log` VALUES ('1858', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '64', '2020-03-05 18:32:08');
INSERT INTO `user_log` VALUES ('1859', '2', '添加维保信息', '0', '/maintenanceService', 'POST', '{\"result\":\"111\",\"eid\":\"8\",\"name\":\"哒哒哒\",\"time\":\"2020-03-11 00:00\"}', 'admin', '127.0.0.1', '43767', '2020-03-05 18:32:16');
INSERT INTO `user_log` VALUES ('1860', '2', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"kae7\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '116', '2020-03-05 18:33:24');
INSERT INTO `user_log` VALUES ('1861', '2', '查看所有用户', '0', '/user', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '63', '2020-03-05 18:33:29');
INSERT INTO `user_log` VALUES ('1862', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '28', '2020-03-05 18:33:32');
INSERT INTO `user_log` VALUES ('1863', '2', '添加维保信息', '0', '/maintenanceService', 'POST', '{\"result\":\"11\",\"eid\":\"14\",\"name\":\"嗯嗯\",\"time\":\"2020-03-09 00:00\"}', 'admin', '127.0.0.1', '3578', '2020-03-05 18:33:40');
INSERT INTO `user_log` VALUES ('1864', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '30', '2020-03-05 18:33:45');
INSERT INTO `user_log` VALUES ('1865', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '29', '2020-03-05 18:33:55');
INSERT INTO `user_log` VALUES ('1866', '2', '添加维保信息', '0', '/maintenanceService', 'POST', '{\"result\":\"11\",\"eid\":\"9\",\"name\":\"11\",\"time\":\"2020-03-10 00:00\"}', 'admin', '127.0.0.1', '3413', '2020-03-05 18:34:03');
INSERT INTO `user_log` VALUES ('1867', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '29', '2020-03-05 18:34:07');
INSERT INTO `user_log` VALUES ('1868', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '25', '2020-03-05 18:34:10');
INSERT INTO `user_log` VALUES ('1869', '2', '添加维保信息', '0', '/maintenanceService', 'POST', '{\"result\":\"期待期待\",\"eid\":\"9\",\"name\":\"1111\",\"time\":\"2020-03-03 00:00\"}', 'admin', '127.0.0.1', '21', '2020-03-05 18:34:21');
INSERT INTO `user_log` VALUES ('1870', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '24', '2020-03-05 18:34:22');
INSERT INTO `user_log` VALUES ('1871', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '27', '2020-03-05 18:34:24');
INSERT INTO `user_log` VALUES ('1872', '2', '添加维保信息', '0', '/maintenanceService', 'POST', '{\"result\":\"11\",\"eid\":\"8\",\"name\":\"你报\",\"time\":\"2020-03-10 00:00\"}', 'admin', '127.0.0.1', '54', '2020-03-05 18:34:59');
INSERT INTO `user_log` VALUES ('1873', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '16', '2020-03-05 18:35:00');
INSERT INTO `user_log` VALUES ('1874', '2', '添加维保信息', '0', '/maintenanceService', 'POST', '{\"result\":\"我吃完\",\"eid\":\"13\",\"name\":\"卓越\",\"time\":\"2020-03-02 00:00\"}', 'admin', '127.0.0.1', '14', '2020-03-05 18:35:15');
INSERT INTO `user_log` VALUES ('1875', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '25', '2020-03-05 18:35:16');
INSERT INTO `user_log` VALUES ('1876', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '20', '2020-03-05 18:36:00');
INSERT INTO `user_log` VALUES ('1877', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '82', '2020-03-05 18:38:58');
INSERT INTO `user_log` VALUES ('1878', '2', '添加维保信息', '0', '/maintenanceService', 'POST', '{\"result\":\"111\",\"eid\":\"14\",\"name\":\"cad\",\"time\":\"2020-03-09 00:00\"}', 'admin', '127.0.0.1', '14', '2020-03-05 18:39:06');
INSERT INTO `user_log` VALUES ('1879', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '20', '2020-03-05 18:39:07');
INSERT INTO `user_log` VALUES ('1880', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '20', '2020-03-05 18:39:46');
INSERT INTO `user_log` VALUES ('1881', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '20', '2020-03-05 18:40:00');
INSERT INTO `user_log` VALUES ('1882', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '19', '2020-03-05 18:40:15');
INSERT INTO `user_log` VALUES ('1883', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '17', '2020-03-05 18:40:40');
INSERT INTO `user_log` VALUES ('1884', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '20', '2020-03-05 18:41:02');
INSERT INTO `user_log` VALUES ('1885', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '19', '2020-03-05 18:41:12');
INSERT INTO `user_log` VALUES ('1886', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '22', '2020-03-05 18:41:23');
INSERT INTO `user_log` VALUES ('1887', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '13', '2020-03-05 18:41:30');
INSERT INTO `user_log` VALUES ('1888', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '18', '2020-03-05 18:41:38');
INSERT INTO `user_log` VALUES ('1889', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '19', '2020-03-05 18:42:02');
INSERT INTO `user_log` VALUES ('1890', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '35', '2020-03-05 18:44:43');
INSERT INTO `user_log` VALUES ('1891', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '23', '2020-03-05 18:44:59');
INSERT INTO `user_log` VALUES ('1892', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '14', '2020-03-05 18:45:09');
INSERT INTO `user_log` VALUES ('1893', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '30', '2020-03-05 18:45:22');
INSERT INTO `user_log` VALUES ('1894', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '19', '2020-03-05 18:45:32');
INSERT INTO `user_log` VALUES ('1895', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '22', '2020-03-05 18:46:50');
INSERT INTO `user_log` VALUES ('1896', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '15', '2020-03-05 18:47:14');
INSERT INTO `user_log` VALUES ('1897', '2', '修改电梯信息', '0', '/elevator', 'PUT', '{\"address\":\"北京市\",\"useUnit\":\"清华大学\",\"addtime\":\"2020-03-04 02:05:21\",\"addId\":\"1\",\"model\":\"p250\",\"id\":\"8\",\"addName\":\"user\",\"type\":\"载货电梯\",\"cycletime\":\"20\",\"uuid\":\"1\",\"cycle\":\"2111\"}', 'admin', '127.0.0.1', '11', '2020-03-05 18:47:16');
INSERT INTO `user_log` VALUES ('1898', '2', '修改电梯信息', '0', '/elevator', 'PUT', '{\"address\":\"北京市\",\"useUnit\":\"清华大学\",\"addtime\":\"2020-03-04 02:05:21\",\"addId\":\"1\",\"model\":\"p250\",\"id\":\"8\",\"addName\":\"user\",\"type\":\"载货电梯\",\"cycletime\":\"20\",\"uuid\":\"1\",\"cycle\":\"2111\"}', 'admin', '127.0.0.1', '9', '2020-03-05 18:47:34');
INSERT INTO `user_log` VALUES ('1899', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '25', '2020-03-05 18:47:36');
INSERT INTO `user_log` VALUES ('1900', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '14', '2020-03-05 18:47:39');
INSERT INTO `user_log` VALUES ('1901', '2', '添加维保信息', '0', '/maintenanceService', 'POST', '{\"result\":\"\",\"eid\":\"8\",\"name\":\"1\",\"time\":\"\"}', 'admin', '127.0.0.1', '13', '2020-03-05 18:47:42');
INSERT INTO `user_log` VALUES ('1902', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '18', '2020-03-05 18:47:44');
INSERT INTO `user_log` VALUES ('1903', '2', '修改电梯信息', '0', '/elevator', 'PUT', '{\"address\":\"北京市\",\"useUnit\":\"清华大学\",\"addtime\":\"2020-03-04 02:05:21\",\"addId\":\"1\",\"model\":\"p250\",\"id\":\"8\",\"addName\":\"user\",\"type\":\"载货电梯\",\"cycletime\":\"2110\",\"uuid\":\"1\",\"cycle\":\"211111\"}', 'admin', '127.0.0.1', '7', '2020-03-05 18:47:46');
INSERT INTO `user_log` VALUES ('1904', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '20', '2020-03-05 18:47:47');
INSERT INTO `user_log` VALUES ('1905', '2', '添加维保信息', '0', '/maintenanceService', 'POST', '{\"result\":\"\",\"eid\":\"8\",\"name\":\"111\",\"time\":\"\"}', 'admin', '127.0.0.1', '11', '2020-03-05 18:47:50');
INSERT INTO `user_log` VALUES ('1906', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '21', '2020-03-05 18:47:51');
INSERT INTO `user_log` VALUES ('1907', '1', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"xpcy\",\"username\":\"user\"}', 'user', '127.0.0.1', '35', '2020-03-05 18:48:56');
INSERT INTO `user_log` VALUES ('1908', '1', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '17', '2020-03-05 18:48:59');
INSERT INTO `user_log` VALUES ('1909', '2', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"r2gu\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '120', '2020-03-07 16:05:11');
INSERT INTO `user_log` VALUES ('1910', '2', '用户登录', '0', '/isLife', 'GET', '{}', 'admin', '127.0.0.1', '159', '2020-03-07 16:12:29');
INSERT INTO `user_log` VALUES ('1911', '2', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"4tpx\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '54', '2020-03-07 16:13:16');
INSERT INTO `user_log` VALUES ('1912', '2', '添加电梯信息', '0', '/elevator', 'POST', '{\"address\":\"dhjaifjpp1\",\"useUnit\":\"111\",\"model\":\"111\",\"type\":\"dadq1\",\"cycle\":\"30\"}', 'admin', '127.0.0.1', '25', '2020-03-07 16:13:38');
INSERT INTO `user_log` VALUES ('1913', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '92', '2020-03-07 16:13:51');
INSERT INTO `user_log` VALUES ('1914', '2', '用户登录', '0', '/log/all', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '129', '2020-03-12 17:54:35');
INSERT INTO `user_log` VALUES ('1915', '2', '超管查询日志', '0', '/log/all', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '58', '2020-03-12 17:54:43');
INSERT INTO `user_log` VALUES ('1916', '2', '查看所有用户', '0', '/user', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '75', '2020-03-12 18:07:12');
INSERT INTO `user_log` VALUES ('1917', '2', '查看所有用户', '0', '/user', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '52', '2020-03-12 18:09:17');
INSERT INTO `user_log` VALUES ('1918', '2', '查看所有用户', '0', '/user', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '14', '2020-03-12 18:10:41');
INSERT INTO `user_log` VALUES ('1919', '2', '查看所有用户', '0', '/user', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '14', '2020-03-12 18:11:53');
INSERT INTO `user_log` VALUES ('1920', '2', '查看所有用户', '0', '/user', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '23', '2020-03-12 18:12:54');
INSERT INTO `user_log` VALUES ('1921', '2', '查看所有用户', '0', '/user', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '13', '2020-03-12 18:14:02');
INSERT INTO `user_log` VALUES ('1922', '1', '用户登录', '0', '/isLife', 'GET', '{}', 'user', '127.0.0.1', '229', '2020-03-18 19:50:30');
INSERT INTO `user_log` VALUES ('1923', '1', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '100', '2020-03-18 19:50:41');
INSERT INTO `user_log` VALUES ('1924', '2', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"gknr\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '33', '2020-03-18 19:50:50');
INSERT INTO `user_log` VALUES ('1925', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '36', '2020-03-18 19:50:58');
INSERT INTO `user_log` VALUES ('1926', '2', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"jtvt\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '125', '2020-03-19 13:05:18');
INSERT INTO `user_log` VALUES ('1927', '2', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '39', '2020-03-19 13:05:25');
INSERT INTO `user_log` VALUES ('1928', '2', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"47ma\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '137', '2020-03-20 08:33:12');
INSERT INTO `user_log` VALUES ('1929', '2', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '43', '2020-03-20 08:33:32');
INSERT INTO `user_log` VALUES ('1930', '2', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '46', '2020-03-20 08:38:29');
INSERT INTO `user_log` VALUES ('1931', '2', '修改电梯信息', '0', '/fault', 'PUT', '{\"repair\":\"1\",\"id\":\"1\"}', 'admin', '127.0.0.1', '29', '2020-03-20 08:38:35');
INSERT INTO `user_log` VALUES ('1932', '2', '修改电梯信息', '0', '/fault', 'PUT', '{\"repair\":\"0\",\"id\":\"1\"}', 'admin', '127.0.0.1', '25', '2020-03-20 08:38:36');
INSERT INTO `user_log` VALUES ('1933', '2', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '59', '2020-03-20 08:43:31');
INSERT INTO `user_log` VALUES ('1934', '1', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"wskq\",\"username\":\"user\"}', 'user', '127.0.0.1', '24', '2020-03-20 08:44:09');
INSERT INTO `user_log` VALUES ('1935', '1', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '79', '2020-03-20 08:44:18');
INSERT INTO `user_log` VALUES ('1936', '1', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '16', '2020-03-20 08:44:20');
INSERT INTO `user_log` VALUES ('1937', '2', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"x9dj\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '139', '2020-03-20 08:44:30');
INSERT INTO `user_log` VALUES ('1938', '2', '查看所有用户', '0', '/user', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '30', '2020-03-20 08:44:39');
INSERT INTO `user_log` VALUES ('1939', '2', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"g8ur\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '141', '2020-03-20 10:32:13');
INSERT INTO `user_log` VALUES ('1940', '2', '查看所有用户', '0', '/user', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '107', '2020-03-20 10:36:11');
INSERT INTO `user_log` VALUES ('1941', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '38', '2020-03-20 10:36:15');
INSERT INTO `user_log` VALUES ('1942', '2', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '28', '2020-03-20 10:36:17');
INSERT INTO `user_log` VALUES ('1943', '2', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"8hq5\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '122', '2020-03-20 11:43:29');
INSERT INTO `user_log` VALUES ('1944', '2', '更新用户信息', '0', '/user/isHave', 'GET', '{\"username\":\"维修员\"}', 'admin', '127.0.0.1', '22', '2020-03-20 11:43:40');
INSERT INTO `user_log` VALUES ('1945', '2', '新建用户', '0', '/user', 'POST', '{\"password\":\"密码不可见\",\"role\":\"ROLE_REP\",\"province\":\"广东省\",\"city\":\"深圳市\",\"zone\":\"\",\"level\":\"1\",\"sex\":\"男\",\"county\":\"龙岗区\",\"password2\":\"lx1793786487\",\"age\":\"2\",\"username\":\"维修员\"}', 'admin', '127.0.0.1', '138', '2020-03-20 11:44:01');
INSERT INTO `user_log` VALUES ('1946', '2', '更新用户信息', '0', '/user/isHave', 'GET', '{\"username\":\"飒飒\"}', 'admin', '127.0.0.1', '13', '2020-03-20 11:50:01');
INSERT INTO `user_log` VALUES ('1947', '2', '更新用户信息', '0', '/user/isHave', 'GET', '{\"username\":\"阿凡达\"}', 'admin', '127.0.0.1', '12', '2020-03-20 11:51:27');
INSERT INTO `user_log` VALUES ('1948', '2', '新建用户', '0', '/user', 'POST', '{\"password\":\"密码不可见\",\"role\":\"ROLE_ADMIN\",\"province\":\"广东省\",\"city\":\"深圳市\",\"zone\":\"广东省深圳市龙岗区\",\"level\":\"1\",\"sex\":\"女\",\"county\":\"龙岗区\",\"password2\":\"lx1793786487\",\"age\":\"11\",\"username\":\"阿凡达\"}', 'admin', '127.0.0.1', '152', '2020-03-20 11:51:40');
INSERT INTO `user_log` VALUES ('1949', '2', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"8gr5\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '126', '2020-03-20 11:54:51');
INSERT INTO `user_log` VALUES ('1950', '2', '查看用户是否存在', '0', '/user/isHave', 'GET', '{\"username\":\"下\"}', 'admin', '127.0.0.1', '26', '2020-03-20 11:55:04');
INSERT INTO `user_log` VALUES ('1951', '2', '新建用户', '0', '/user', 'POST', '{\"password\":\"密码不可见\",\"role\":\"ROLE_ADMIN\",\"province\":\"广东省\",\"city\":\"深圳市\",\"zone\":\"广东省深圳市龙岗区\",\"level\":\"1\",\"sex\":\"女\",\"county\":\"龙岗区\",\"password2\":\"111\",\"age\":\"23\",\"username\":\"下\"}', 'admin', '127.0.0.1', '138', '2020-03-20 11:55:12');
INSERT INTO `user_log` VALUES ('1952', '2', '查看用户是否存在', '0', '/user/isHave', 'GET', '{\"username\":\"111\"}', 'admin', '127.0.0.1', '11', '2020-03-20 11:55:32');
INSERT INTO `user_log` VALUES ('1953', '2', '新建用户', '0', '/user', 'POST', '{\"password\":\"密码不可见\",\"role\":\"ROLE_ADMIN\",\"province\":\"山东省\",\"city\":\"济南市\",\"zone\":\"广东省深圳市龙岗区\",\"level\":\"1\",\"sex\":\"男\",\"county\":\"市中区\",\"password2\":\"11\",\"age\":\"111\",\"username\":\"111\"}', 'admin', '127.0.0.1', '153', '2020-03-20 11:55:41');
INSERT INTO `user_log` VALUES ('1954', '2', '查看用户是否存在', '0', '/user/isHave', 'GET', '{\"username\":\"111\"}', 'admin', '127.0.0.1', '25', '2020-03-20 12:00:31');
INSERT INTO `user_log` VALUES ('1955', '2', '查看用户是否存在', '0', '/user/isHave', 'GET', '{\"username\":\"11\"}', 'admin', '127.0.0.1', '17', '2020-03-20 12:01:30');
INSERT INTO `user_log` VALUES ('1956', '2', '新建用户', '0', '/user', 'POST', '{\"password\":\"密码不可见\",\"role\":\"ROLE_ADMIN\",\"province\":\"广东省\",\"city\":\"深圳市\",\"zone\":\"广东省深圳市龙岗区\",\"level\":\"1\",\"sex\":\"男\",\"county\":\"龙岗区\",\"password2\":\"111\",\"age\":\"12\",\"username\":\"11\"}', 'admin', '127.0.0.1', '137', '2020-03-20 12:02:08');
INSERT INTO `user_log` VALUES ('1957', '2', '查看用户是否存在', '0', '/user/isHave', 'GET', '{\"username\":\"清热群\"}', 'admin', '127.0.0.1', '13', '2020-03-20 12:02:24');
INSERT INTO `user_log` VALUES ('1958', '2', '新建用户', '0', '/user', 'POST', '{\"password\":\"密码不可见\",\"role\":\"ROLE_ADMIN\",\"province\":\"湖南省\",\"city\":\"长沙市\",\"zone\":\"湖南省长沙市芙蓉区\",\"level\":\"1\",\"sex\":\"男\",\"county\":\"芙蓉区\",\"password2\":\"123\",\"age\":\"11\",\"username\":\"清热群\"}', 'admin', '127.0.0.1', '134', '2020-03-20 12:02:37');
INSERT INTO `user_log` VALUES ('1959', '2', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"qj42\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '103', '2020-03-21 15:10:31');
INSERT INTO `user_log` VALUES ('1960', '2', '查看所有用户', '0', '/user', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '77', '2020-03-21 15:11:39');
INSERT INTO `user_log` VALUES ('1961', '2', '查看所有用户', '0', '/user', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '29', '2020-03-21 15:18:16');
INSERT INTO `user_log` VALUES ('1962', '2', '查看所有用户', '0', '/user', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '29', '2020-03-21 15:19:03');
INSERT INTO `user_log` VALUES ('1963', '2', '查看所有用户', '0', '/user', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '19', '2020-03-21 15:19:40');
INSERT INTO `user_log` VALUES ('1964', '2', '查看所有用户', '0', '/user', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '51', '2020-03-21 15:21:53');
INSERT INTO `user_log` VALUES ('1965', '2', '查看所有用户', '0', '/user', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '59', '2020-03-21 15:24:10');
INSERT INTO `user_log` VALUES ('1966', '2', '查看所有用户', '0', '/user', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '27', '2020-03-21 15:26:04');
INSERT INTO `user_log` VALUES ('1967', '2', '查询零件信息', '0', '/part', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '46', '2020-03-21 15:28:58');
INSERT INTO `user_log` VALUES ('1968', '2', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"475c\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '117', '2020-03-21 16:08:52');
INSERT INTO `user_log` VALUES ('1969', '2', '添加零件信息', '0', '/part', 'POST', '{\"number\":\"11\",\"price\":\"212\",\"name\":\"sddsa\",\"purchasePrice\":\"11\"}', 'admin', '127.0.0.1', '16', '2020-03-21 16:09:06');
INSERT INTO `user_log` VALUES ('1970', '2', '查询零件信息', '0', '/part', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '22', '2020-03-21 16:09:15');
INSERT INTO `user_log` VALUES ('1971', '2', '查询零件信息', '0', '/part', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '10', '2020-03-21 16:11:09');
INSERT INTO `user_log` VALUES ('1972', '2', '查询零件信息', '0', '/part', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '11', '2020-03-21 16:11:13');
INSERT INTO `user_log` VALUES ('1973', '2', '查询零件信息', '0', '/part', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '13', '2020-03-21 16:11:44');
INSERT INTO `user_log` VALUES ('1974', '2', '查询零件信息', '0', '/part', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '11', '2020-03-21 16:11:57');
INSERT INTO `user_log` VALUES ('1975', '2', '查询零件信息', '0', '/part', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '14', '2020-03-21 16:12:15');
INSERT INTO `user_log` VALUES ('1976', '2', '查询零件信息', '0', '/part', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '7', '2020-03-21 16:12:24');
INSERT INTO `user_log` VALUES ('1977', '2', '查询零件信息', '0', '/part', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '13', '2020-03-21 16:12:32');
INSERT INTO `user_log` VALUES ('1978', '2', '查询零件信息', '0', '/part', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '15', '2020-03-21 16:12:39');
INSERT INTO `user_log` VALUES ('1979', '2', '查询零件信息', '0', '/part', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '8', '2020-03-21 16:12:47');
INSERT INTO `user_log` VALUES ('1980', '2', '修改零件信息', '0', '/part', 'PUT', '{\"number\":\"11331\",\"price\":\"\",\"name\":\"轿箱门机\",\"id\":\"8\",\"purchasePrice\":\"22\"}', 'admin', '127.0.0.1', '10', '2020-03-21 16:12:55');
INSERT INTO `user_log` VALUES ('1981', '2', '修改零件信息', '0', '/part', 'PUT', '{\"number\":\"11331\",\"price\":\"22\",\"name\":\"轿箱门机\",\"id\":\"8\",\"purchasePrice\":\"22\"}', 'admin', '127.0.0.1', '10', '2020-03-21 16:12:56');
INSERT INTO `user_log` VALUES ('1982', '2', '查询零件信息', '0', '/part', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '11', '2020-03-21 16:12:57');
INSERT INTO `user_log` VALUES ('1983', '2', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '32', '2020-03-21 16:13:46');
INSERT INTO `user_log` VALUES ('1984', '2', '查看所有用户', '0', '/user', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '91', '2020-03-21 16:14:41');
INSERT INTO `user_log` VALUES ('1985', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '66', '2020-03-21 16:17:36');
INSERT INTO `user_log` VALUES ('1986', '2', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"sy9g\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '120', '2020-03-21 16:26:21');
INSERT INTO `user_log` VALUES ('1987', '2', '添加故障信息', '0', '/fault', 'POST', '{\"address\":\"ha嗲嗲\",\"province\":\"山东省\",\"submit\":\"1\",\"city\":\"淄博市\",\"zone\":\"山东省淄博市张店区\",\"county\":\"张店区\",\"describe\":\"1111\"}', 'admin', '127.0.0.1', '26', '2020-03-21 16:26:40');
INSERT INTO `user_log` VALUES ('1988', '2', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"bbsa\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '229', '2020-03-21 21:43:09');
INSERT INTO `user_log` VALUES ('1989', '2', '查看所有用户', '0', '/user', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '60', '2020-03-21 21:43:17');
INSERT INTO `user_log` VALUES ('1990', '2', '添加电梯信息', '0', '/elevator', 'POST', '{\"address\":\"哒哒\",\"province\":\"广东省\",\"city\":\"深圳市\",\"zone\":\"广东省深圳市龙岗区\",\"useUnit\":\"11\",\"county\":\"龙岗区\",\"model\":\"11\",\"type\":\"111\",\"cycle\":\"1\"}', 'admin', '127.0.0.1', '32', '2020-03-21 21:44:49');
INSERT INTO `user_log` VALUES ('1991', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '42', '2020-03-21 21:46:23');
INSERT INTO `user_log` VALUES ('1992', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '27', '2020-03-21 21:47:57');
INSERT INTO `user_log` VALUES ('1993', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '30', '2020-03-21 21:48:22');
INSERT INTO `user_log` VALUES ('1994', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '29', '2020-03-21 21:48:37');
INSERT INTO `user_log` VALUES ('1995', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '24', '2020-03-21 21:48:52');
INSERT INTO `user_log` VALUES ('1996', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '35', '2020-03-21 21:49:08');
INSERT INTO `user_log` VALUES ('1997', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '37', '2020-03-21 21:49:25');
INSERT INTO `user_log` VALUES ('1998', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '27', '2020-03-21 21:49:36');
INSERT INTO `user_log` VALUES ('1999', '2', '修改电梯信息', '0', '/elevator', 'PUT', '{\"address\":\"哒哒\",\"zone\":\"广东省深圳市龙岗区\",\"useUnit\":\"11\",\"addtime\":\"2020-03-21 21:44:48\",\"addId\":\"2\",\"model\":\"11\",\"id\":\"23\",\"addName\":\"admin\",\"type\":\"111\",\"cycletime\":\"0\",\"uuid\":\"9b26d6b69a084796bdded73866795b66\",\"cycle\":\"10\"}', 'admin', '127.0.0.1', '9', '2020-03-21 21:49:56');
INSERT INTO `user_log` VALUES ('2000', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '25', '2020-03-21 21:49:57');
INSERT INTO `user_log` VALUES ('2001', '2', '添加维保信息', '0', '/maintenanceService', 'POST', '{\"result\":\"\",\"eid\":\"23\",\"name\":\"11\",\"time\":\"2020-03-11 00:00\"}', 'admin', '127.0.0.1', '20', '2020-03-21 21:50:02');
INSERT INTO `user_log` VALUES ('2002', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '26', '2020-03-21 21:50:03');
INSERT INTO `user_log` VALUES ('2003', '2', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '32', '2020-03-21 21:50:13');
INSERT INTO `user_log` VALUES ('2004', '2', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '27', '2020-03-21 21:50:48');
INSERT INTO `user_log` VALUES ('2005', '2', '查询零件信息', '0', '/part', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '18', '2020-03-21 21:50:55');
INSERT INTO `user_log` VALUES ('2006', '3', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"lvav\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '40', '2020-03-21 22:04:59');
INSERT INTO `user_log` VALUES ('2007', '3', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"38qx\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '88', '2020-03-21 22:11:16');
INSERT INTO `user_log` VALUES ('2008', '3', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"jttn\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '43', '2020-03-21 22:12:58');
INSERT INTO `user_log` VALUES ('2009', '3', '用户登录', '0', '/isLife', 'GET', '{}', '维修员', '127.0.0.1', '142', '2020-03-21 22:28:03');
INSERT INTO `user_log` VALUES ('2010', '3', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"jyba\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '49', '2020-03-21 22:40:38');
INSERT INTO `user_log` VALUES ('2011', '2', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"3cj2\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '92', '2020-03-21 22:49:27');
INSERT INTO `user_log` VALUES ('2012', '2', '查看用户是否存在', '0', '/user/isHave', 'GET', '{\"username\":\"维修工2号\"}', 'admin', '127.0.0.1', '15', '2020-03-21 22:50:59');
INSERT INTO `user_log` VALUES ('2013', '2', '新建用户', '0', '/user', 'POST', '{\"password\":\"密码不可见\",\"role\":\"ROLE_ADMIN\",\"province\":\"广东省\",\"phone\":\"122\",\"city\":\"深圳市\",\"zone\":\"广东省深圳市龙岗区\",\"level\":\"1\",\"sex\":\"男\",\"county\":\"龙岗区\",\"password2\":\"11\",\"age\":\"1\",\"username\":\"维修工2号\"}', 'admin', '127.0.0.1', '150', '2020-03-21 22:51:04');
INSERT INTO `user_log` VALUES ('2014', '2', '查看所有用户', '0', '/user', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '115', '2020-03-21 22:51:45');
INSERT INTO `user_log` VALUES ('2015', '3', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"dyh3\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '45', '2020-03-21 22:52:05');
INSERT INTO `user_log` VALUES ('2016', '3', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '31', '2020-03-21 22:54:42');
INSERT INTO `user_log` VALUES ('2017', '3', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"h2rc\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '192', '2020-03-21 23:52:18');
INSERT INTO `user_log` VALUES ('2018', '3', '更新用户信息', '0', '/user', 'PUT', '{\"phone\":\"15762323410\",\"sex\":\"男\",\"id\":\"3\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '32', '2020-03-22 00:01:56');
INSERT INTO `user_log` VALUES ('2019', '3', '更新用户信息', '0', '/user', 'PUT', '{\"phone\":\"15762323401\",\"sex\":\"男\",\"id\":\"3\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '34', '2020-03-22 00:02:38');
INSERT INTO `user_log` VALUES ('2020', '3', '更新用户信息', '0', '/user', 'PUT', '{\"phone\":\"15762323401\",\"sex\":\"男\",\"id\":\"3\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '29', '2020-03-22 00:03:33');
INSERT INTO `user_log` VALUES ('2021', '3', '更新用户信息', '0', '/user', 'PUT', '{\"phone\":\"15762323401\",\"sex\":\"男\",\"id\":\"3\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '25341', '2020-03-22 00:04:54');
INSERT INTO `user_log` VALUES ('2022', '3', '更新用户信息', '0', '/user', 'PUT', '{\"phone\":\"15762323401\",\"sex\":\"男\",\"id\":\"3\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '22226', '2020-03-22 00:06:22');
INSERT INTO `user_log` VALUES ('2023', '3', '更新用户信息', '0', '/user', 'PUT', '{\"phone\":\"15762323401\",\"sex\":\"男\",\"id\":\"3\",\"age\":\"2\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '4276', '2020-03-22 00:06:51');
INSERT INTO `user_log` VALUES ('2024', '3', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '30', '2020-03-22 00:08:43');
INSERT INTO `user_log` VALUES ('2025', '1', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"f6b4\",\"username\":\"user\"}', 'user', '127.0.0.1', '23', '2020-03-22 00:31:27');
INSERT INTO `user_log` VALUES ('2026', '1', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '23', '2020-03-22 00:31:31');
INSERT INTO `user_log` VALUES ('2027', '1', '用户登录', '0', '/isLife', 'GET', '{}', 'user', '127.0.0.1', '100', '2020-03-23 16:08:04');
INSERT INTO `user_log` VALUES ('2028', '1', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '78', '2020-03-23 16:08:10');
INSERT INTO `user_log` VALUES ('2029', '1', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '33', '2020-03-23 16:08:34');
INSERT INTO `user_log` VALUES ('2030', '3', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"auk7\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '22', '2020-03-23 16:08:59');
INSERT INTO `user_log` VALUES ('2031', '3', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '28', '2020-03-23 16:09:03');
INSERT INTO `user_log` VALUES ('2032', '2', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"8vcm\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '148', '2020-03-23 16:43:34');
INSERT INTO `user_log` VALUES ('2033', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '79', '2020-03-23 16:43:41');
INSERT INTO `user_log` VALUES ('2034', '2', '添加电梯信息', '0', '/elevator', 'POST', '{\"address\":\"大亲爱的\",\"province\":\"广东省\",\"city\":\"深圳市\",\"zone\":\"广东省深圳市龙岗区\",\"useUnit\":\"11\",\"county\":\"龙岗区\",\"model\":\"11\",\"type\":\"11\",\"cycle\":\"11\"}', 'admin', '127.0.0.1', '29', '2020-03-23 16:43:55');
INSERT INTO `user_log` VALUES ('2035', '3', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"t5pg\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '37', '2020-03-23 16:44:06');
INSERT INTO `user_log` VALUES ('2036', '3', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '26', '2020-03-23 16:44:12');
INSERT INTO `user_log` VALUES ('2037', '2', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"kugf\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '32', '2020-03-23 16:45:37');
INSERT INTO `user_log` VALUES ('2038', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '38', '2020-03-23 16:45:45');
INSERT INTO `user_log` VALUES ('2039', '3', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"mqsf\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '34', '2020-03-23 16:45:59');
INSERT INTO `user_log` VALUES ('2040', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '24', '2020-03-23 16:46:46');
INSERT INTO `user_log` VALUES ('2041', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '28', '2020-03-23 16:46:49');
INSERT INTO `user_log` VALUES ('2042', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '48059', '2020-03-23 16:47:01');
INSERT INTO `user_log` VALUES ('2043', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '33165', '2020-03-23 16:47:58');
INSERT INTO `user_log` VALUES ('2044', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '506519', '2020-03-23 16:49:24');
INSERT INTO `user_log` VALUES ('2045', '3', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"dfks\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '93', '2020-03-23 17:00:32');
INSERT INTO `user_log` VALUES ('2046', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '65', '2020-03-23 17:00:47');
INSERT INTO `user_log` VALUES ('2047', '3', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"wgvt\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '112', '2020-03-23 17:02:34');
INSERT INTO `user_log` VALUES ('2048', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '6472', '2020-03-23 17:02:45');
INSERT INTO `user_log` VALUES ('2049', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '39', '2020-03-23 17:09:21');
INSERT INTO `user_log` VALUES ('2050', '3', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '35', '2020-03-23 17:09:46');
INSERT INTO `user_log` VALUES ('2051', '3', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '25', '2020-03-23 17:12:06');
INSERT INTO `user_log` VALUES ('2052', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '36', '2020-03-23 17:12:07');
INSERT INTO `user_log` VALUES ('2053', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '83', '2020-03-23 17:19:56');
INSERT INTO `user_log` VALUES ('2054', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '23', '2020-03-23 17:21:42');
INSERT INTO `user_log` VALUES ('2055', '3', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"767t\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '118', '2020-03-23 17:24:26');
INSERT INTO `user_log` VALUES ('2056', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '44', '2020-03-23 17:24:30');
INSERT INTO `user_log` VALUES ('2057', '3', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"7lgf\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '116', '2020-03-23 17:30:20');
INSERT INTO `user_log` VALUES ('2058', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '29', '2020-03-23 17:30:24');
INSERT INTO `user_log` VALUES ('2059', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '22', '2020-03-23 17:30:26');
INSERT INTO `user_log` VALUES ('2060', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '22', '2020-03-23 17:30:47');
INSERT INTO `user_log` VALUES ('2061', '3', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"7sja\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '106', '2020-03-24 02:23:11');
INSERT INTO `user_log` VALUES ('2062', '3', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '68', '2020-03-24 02:23:16');
INSERT INTO `user_log` VALUES ('2063', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '38', '2020-03-24 02:23:19');
INSERT INTO `user_log` VALUES ('2064', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '38', '2020-03-24 02:23:25');
INSERT INTO `user_log` VALUES ('2065', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '21', '2020-03-24 02:23:43');
INSERT INTO `user_log` VALUES ('2066', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '19', '2020-03-24 02:23:51');
INSERT INTO `user_log` VALUES ('2067', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '30', '2020-03-24 02:24:02');
INSERT INTO `user_log` VALUES ('2068', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '30', '2020-03-24 02:24:09');
INSERT INTO `user_log` VALUES ('2069', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '31', '2020-03-24 02:25:15');
INSERT INTO `user_log` VALUES ('2070', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '133', '2020-03-24 02:28:17');
INSERT INTO `user_log` VALUES ('2071', '3', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"vskm\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '57', '2020-03-24 03:10:11');
INSERT INTO `user_log` VALUES ('2072', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '27', '2020-03-24 03:10:21');
INSERT INTO `user_log` VALUES ('2073', '3', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"rp4b\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '96', '2020-03-25 06:07:28');
INSERT INTO `user_log` VALUES ('2074', '3', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '63', '2020-03-25 06:07:32');
INSERT INTO `user_log` VALUES ('2075', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '37', '2020-03-25 06:07:34');
INSERT INTO `user_log` VALUES ('2076', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '29', '2020-03-25 06:07:35');
INSERT INTO `user_log` VALUES ('2077', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '47', '2020-03-25 06:10:46');
INSERT INTO `user_log` VALUES ('2078', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '29', '2020-03-25 06:11:00');
INSERT INTO `user_log` VALUES ('2079', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '30', '2020-03-25 06:11:47');
INSERT INTO `user_log` VALUES ('2080', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '20', '2020-03-25 06:12:01');
INSERT INTO `user_log` VALUES ('2081', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '20', '2020-03-25 06:12:25');
INSERT INTO `user_log` VALUES ('2082', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '14', '2020-03-25 06:12:48');
INSERT INTO `user_log` VALUES ('2083', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '21', '2020-03-25 06:12:49');
INSERT INTO `user_log` VALUES ('2084', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '22', '2020-03-25 06:13:11');
INSERT INTO `user_log` VALUES ('2085', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '17', '2020-03-25 06:14:05');
INSERT INTO `user_log` VALUES ('2086', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '23', '2020-03-25 06:14:30');
INSERT INTO `user_log` VALUES ('2087', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '20', '2020-03-25 06:15:46');
INSERT INTO `user_log` VALUES ('2088', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '20', '2020-03-25 06:16:21');
INSERT INTO `user_log` VALUES ('2089', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '13', '2020-03-25 06:16:43');
INSERT INTO `user_log` VALUES ('2090', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '16', '2020-03-25 06:17:02');
INSERT INTO `user_log` VALUES ('2091', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '14', '2020-03-25 06:17:35');
INSERT INTO `user_log` VALUES ('2092', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '13', '2020-03-25 06:18:12');
INSERT INTO `user_log` VALUES ('2093', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '73', '2020-03-25 06:20:43');
INSERT INTO `user_log` VALUES ('2094', '3', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '22', '2020-03-25 06:21:03');
INSERT INTO `user_log` VALUES ('2095', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '18', '2020-03-25 06:21:05');
INSERT INTO `user_log` VALUES ('2096', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '19', '2020-03-25 06:22:16');
INSERT INTO `user_log` VALUES ('2097', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '12', '2020-03-25 06:22:42');
INSERT INTO `user_log` VALUES ('2098', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '12', '2020-03-25 06:23:23');
INSERT INTO `user_log` VALUES ('2099', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '14', '2020-03-25 06:23:38');
INSERT INTO `user_log` VALUES ('2100', '3', '用户登录', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '137', '2020-03-25 06:28:19');
INSERT INTO `user_log` VALUES ('2101', '3', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"v959\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '41', '2020-03-25 06:28:34');
INSERT INTO `user_log` VALUES ('2102', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '28', '2020-03-25 06:28:38');
INSERT INTO `user_log` VALUES ('2103', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '19', '2020-03-25 06:30:12');
INSERT INTO `user_log` VALUES ('2104', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '20', '2020-03-25 06:30:40');
INSERT INTO `user_log` VALUES ('2105', '3', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"cdhq\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '91', '2020-03-25 06:40:24');
INSERT INTO `user_log` VALUES ('2106', '3', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '97', '2020-03-25 06:40:51');
INSERT INTO `user_log` VALUES ('2107', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '45', '2020-03-25 06:40:51');
INSERT INTO `user_log` VALUES ('2108', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '28', '2020-03-25 06:41:29');
INSERT INTO `user_log` VALUES ('2109', '3', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"5b8g\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '107', '2020-03-25 06:44:33');
INSERT INTO `user_log` VALUES ('2110', '3', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '61', '2020-03-25 06:44:37');
INSERT INTO `user_log` VALUES ('2111', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '37', '2020-03-25 06:44:39');
INSERT INTO `user_log` VALUES ('2112', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '29', '2020-03-25 06:44:39');
INSERT INTO `user_log` VALUES ('2113', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '20', '2020-03-25 06:46:01');
INSERT INTO `user_log` VALUES ('2114', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '25', '2020-03-25 06:46:22');
INSERT INTO `user_log` VALUES ('2115', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '42', '2020-03-25 06:46:38');
INSERT INTO `user_log` VALUES ('2116', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '19', '2020-03-25 06:46:54');
INSERT INTO `user_log` VALUES ('2117', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '31', '2020-03-25 06:47:21');
INSERT INTO `user_log` VALUES ('2118', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '16', '2020-03-25 06:48:05');
INSERT INTO `user_log` VALUES ('2119', '3', '添加故障信息', '0', '/fault', 'POST', '{\"result\":\"是是\",\"reason\":\"1131\",\"processed\":\"3131\",\"repairTime\":\"2020-03-23 00:00\",\"arrivalTime\":\"2020-03-18 00:00\",\"org \":\"就是不知道咋就坏了\",\"sperson\":\"111\",\"replace\":\"11\",\"faultDescription\":\"啊啊啊\",\"stime\":\"2020-03-04 23:53:52\"}', '维修员', '127.0.0.1', '12', '2020-03-25 06:48:23');
INSERT INTO `user_log` VALUES ('2120', '3', '添加故障信息', '0', '/fault', 'POST', '{\"result\":\"是是\",\"reason\":\"1131\",\"processed\":\"3131\",\"repairTime\":\"2020-03-23 00:00\",\"arrivalTime\":\"2020-03-18 00:00\",\"org \":\"就是不知道咋就坏了\",\"sperson\":\"111\",\"replace\":\"11\",\"faultDescription\":\"啊啊啊\",\"stime\":\"2020-03-04 23:53:52\"}', '维修员', '127.0.0.1', '6', '2020-03-25 06:48:34');
INSERT INTO `user_log` VALUES ('2121', '3', '添加故障信息', '0', '/fault', 'POST', '{\"result\":\"是是\",\"reason\":\"1131\",\"processed\":\"3131\",\"repairTime\":\"2020-03-23 00:00\",\"arrivalTime\":\"2020-03-18 00:00\",\"org \":\"就是不知道咋就坏了\",\"sperson\":\"111\",\"replace\":\"11\",\"faultDescription\":\"啊啊啊\",\"stime\":\"2020-03-04 23:53:52\"}', '维修员', '127.0.0.1', '7', '2020-03-25 06:48:42');
INSERT INTO `user_log` VALUES ('2122', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '18', '2020-03-25 06:50:25');
INSERT INTO `user_log` VALUES ('2123', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '18', '2020-03-25 06:52:20');
INSERT INTO `user_log` VALUES ('2124', '3', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"7n5d\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '99', '2020-03-25 06:53:06');
INSERT INTO `user_log` VALUES ('2125', '3', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"7n5d\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '101', '2020-03-25 06:53:06');
INSERT INTO `user_log` VALUES ('2126', '3', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '63', '2020-03-25 06:53:09');
INSERT INTO `user_log` VALUES ('2127', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '29', '2020-03-25 06:53:09');
INSERT INTO `user_log` VALUES ('2128', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '34', '2020-03-25 06:53:09');
INSERT INTO `user_log` VALUES ('2129', '3', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"ntay\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '106', '2020-03-25 06:56:03');
INSERT INTO `user_log` VALUES ('2130', '3', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '68', '2020-03-25 06:56:06');
INSERT INTO `user_log` VALUES ('2131', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '28', '2020-03-25 06:56:07');
INSERT INTO `user_log` VALUES ('2132', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '23', '2020-03-25 06:56:39');
INSERT INTO `user_log` VALUES ('2133', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '67', '2020-03-25 07:04:34');
INSERT INTO `user_log` VALUES ('2134', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '89', '2020-03-25 07:07:38');
INSERT INTO `user_log` VALUES ('2135', '3', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"ewy6\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '112', '2020-03-25 07:31:52');
INSERT INTO `user_log` VALUES ('2136', '3', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '67', '2020-03-25 07:31:56');
INSERT INTO `user_log` VALUES ('2137', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '25', '2020-03-25 07:31:56');
INSERT INTO `user_log` VALUES ('2138', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '27', '2020-03-25 07:32:35');
INSERT INTO `user_log` VALUES ('2139', '3', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"4mkq\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '109', '2020-03-25 07:42:03');
INSERT INTO `user_log` VALUES ('2140', '3', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '68', '2020-03-25 07:42:08');
INSERT INTO `user_log` VALUES ('2141', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '34', '2020-03-25 07:42:08');
INSERT INTO `user_log` VALUES ('2142', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '31', '2020-03-25 07:42:08');
INSERT INTO `user_log` VALUES ('2143', '3', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"nkp2\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '114', '2020-03-25 07:50:54');
INSERT INTO `user_log` VALUES ('2144', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '69', '2020-03-25 07:50:59');
INSERT INTO `user_log` VALUES ('2145', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '23', '2020-03-25 07:50:59');
INSERT INTO `user_log` VALUES ('2146', '3', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"tp8j\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '99', '2020-03-25 07:57:33');
INSERT INTO `user_log` VALUES ('2147', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '38', '2020-03-25 07:57:37');
INSERT INTO `user_log` VALUES ('2148', '3', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"hymd\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '122', '2020-03-25 08:02:05');
INSERT INTO `user_log` VALUES ('2149', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '34', '2020-03-25 08:02:09');
INSERT INTO `user_log` VALUES ('2150', '3', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"wy3b\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '113', '2020-03-25 08:03:33');
INSERT INTO `user_log` VALUES ('2151', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '29', '2020-03-25 08:03:37');
INSERT INTO `user_log` VALUES ('2152', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '19', '2020-03-25 08:04:09');
INSERT INTO `user_log` VALUES ('2153', '3', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"8w62\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '117', '2020-03-25 08:08:40');
INSERT INTO `user_log` VALUES ('2154', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '84', '2020-03-25 08:08:45');
INSERT INTO `user_log` VALUES ('2155', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '28', '2020-03-25 08:08:45');
INSERT INTO `user_log` VALUES ('2156', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '53', '2020-03-25 08:10:55');
INSERT INTO `user_log` VALUES ('2157', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '156', '2020-03-25 08:13:44');
INSERT INTO `user_log` VALUES ('2158', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '26', '2020-03-25 08:13:57');
INSERT INTO `user_log` VALUES ('2159', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '23', '2020-03-25 08:14:26');
INSERT INTO `user_log` VALUES ('2160', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '18', '2020-03-25 08:15:07');
INSERT INTO `user_log` VALUES ('2161', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '46', '2020-03-25 08:18:00');
INSERT INTO `user_log` VALUES ('2162', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '46', '2020-03-25 08:22:03');
INSERT INTO `user_log` VALUES ('2163', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '16', '2020-03-25 08:22:30');
INSERT INTO `user_log` VALUES ('2164', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '21', '2020-03-25 08:23:10');
INSERT INTO `user_log` VALUES ('2165', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '46', '2020-03-25 08:28:10');
INSERT INTO `user_log` VALUES ('2166', '3', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"smph\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '341', '2020-03-25 08:28:59');
INSERT INTO `user_log` VALUES ('2167', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '32', '2020-03-25 08:29:04');
INSERT INTO `user_log` VALUES ('2168', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '71', '2020-03-25 08:29:05');
INSERT INTO `user_log` VALUES ('2169', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '25', '2020-03-25 08:29:37');
INSERT INTO `user_log` VALUES ('2170', '3', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"9mgp\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '101', '2020-03-25 08:32:28');
INSERT INTO `user_log` VALUES ('2171', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '71', '2020-03-25 08:32:34');
INSERT INTO `user_log` VALUES ('2172', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '31', '2020-03-25 08:32:34');
INSERT INTO `user_log` VALUES ('2173', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '59', '2020-03-25 08:37:29');
INSERT INTO `user_log` VALUES ('2174', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '22', '2020-03-25 08:38:01');
INSERT INTO `user_log` VALUES ('2175', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '20', '2020-03-25 08:41:05');
INSERT INTO `user_log` VALUES ('2176', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '21', '2020-03-25 08:42:35');
INSERT INTO `user_log` VALUES ('2177', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '40', '2020-03-25 08:46:30');
INSERT INTO `user_log` VALUES ('2178', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '15', '2020-03-25 08:47:04');
INSERT INTO `user_log` VALUES ('2179', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '46', '2020-03-25 08:51:17');
INSERT INTO `user_log` VALUES ('2180', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '15', '2020-03-25 08:51:52');
INSERT INTO `user_log` VALUES ('2181', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '15', '2020-03-25 08:52:46');
INSERT INTO `user_log` VALUES ('2182', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '13', '2020-03-25 08:53:06');
INSERT INTO `user_log` VALUES ('2183', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '55', '2020-03-25 08:57:53');
INSERT INTO `user_log` VALUES ('2184', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '20', '2020-03-25 08:58:27');
INSERT INTO `user_log` VALUES ('2185', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '15', '2020-03-25 08:58:57');
INSERT INTO `user_log` VALUES ('2186', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '13', '2020-03-25 08:59:25');
INSERT INTO `user_log` VALUES ('2187', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '55', '2020-03-25 09:08:23');
INSERT INTO `user_log` VALUES ('2188', '3', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"qk25\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '133', '2020-03-25 09:11:13');
INSERT INTO `user_log` VALUES ('2189', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '125', '2020-03-25 09:11:23');
INSERT INTO `user_log` VALUES ('2190', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '35', '2020-03-25 09:11:24');
INSERT INTO `user_log` VALUES ('2191', '3', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"ekvc\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '119', '2020-03-25 09:15:04');
INSERT INTO `user_log` VALUES ('2192', '3', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"ekvc\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '119', '2020-03-25 09:15:04');
INSERT INTO `user_log` VALUES ('2193', '3', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '85', '2020-03-25 09:15:09');
INSERT INTO `user_log` VALUES ('2194', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '35', '2020-03-25 09:15:09');
INSERT INTO `user_log` VALUES ('2195', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '23', '2020-03-25 09:15:11');
INSERT INTO `user_log` VALUES ('2196', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '33', '2020-03-25 09:17:05');
INSERT INTO `user_log` VALUES ('2197', '3', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"r8qc\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '113', '2020-03-25 09:25:59');
INSERT INTO `user_log` VALUES ('2198', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '57', '2020-03-25 09:26:06');
INSERT INTO `user_log` VALUES ('2199', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '31', '2020-03-25 09:26:06');
INSERT INTO `user_log` VALUES ('2200', '3', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"srdt\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '113', '2020-03-25 09:29:04');
INSERT INTO `user_log` VALUES ('2201', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '68', '2020-03-25 09:29:10');
INSERT INTO `user_log` VALUES ('2202', '3', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '31', '2020-03-25 09:29:12');
INSERT INTO `user_log` VALUES ('2203', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '25', '2020-03-25 09:29:16');
INSERT INTO `user_log` VALUES ('2204', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '54', '2020-03-25 09:31:58');
INSERT INTO `user_log` VALUES ('2205', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '35', '2020-03-25 09:32:59');
INSERT INTO `user_log` VALUES ('2206', '3', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"wm8k\",\"remember-me\":\"true\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '111', '2020-03-25 09:34:31');
INSERT INTO `user_log` VALUES ('2207', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '95', '2020-03-25 09:34:40');
INSERT INTO `user_log` VALUES ('2208', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '42', '2020-03-25 09:34:41');
INSERT INTO `user_log` VALUES ('2209', '3', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"ryux\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '113', '2020-03-25 09:37:09');
INSERT INTO `user_log` VALUES ('2210', '3', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '105', '2020-03-25 09:37:14');
INSERT INTO `user_log` VALUES ('2211', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '52', '2020-03-25 09:37:14');
INSERT INTO `user_log` VALUES ('2212', '3', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"ln88\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '114', '2020-03-25 09:39:11');
INSERT INTO `user_log` VALUES ('2213', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '53', '2020-03-25 09:39:43');
INSERT INTO `user_log` VALUES ('2214', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '73', '2020-03-25 09:39:43');
INSERT INTO `user_log` VALUES ('2215', '3', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"ml8h\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '95', '2020-03-25 10:27:03');
INSERT INTO `user_log` VALUES ('2216', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '30', '2020-03-25 10:27:07');
INSERT INTO `user_log` VALUES ('2217', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '70', '2020-03-25 10:27:08');
INSERT INTO `user_log` VALUES ('2218', '3', '用户登录', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '124', '2020-03-25 10:29:10');
INSERT INTO `user_log` VALUES ('2219', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '45', '2020-03-25 10:29:11');
INSERT INTO `user_log` VALUES ('2220', '3', '用户登录', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '123', '2020-03-25 10:30:24');
INSERT INTO `user_log` VALUES ('2221', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '43', '2020-03-25 10:30:25');
INSERT INTO `user_log` VALUES ('2222', '3', '用户登录', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '142', '2020-03-25 10:32:58');
INSERT INTO `user_log` VALUES ('2223', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '48', '2020-03-25 10:33:00');
INSERT INTO `user_log` VALUES ('2224', '3', '用户登录', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '175', '2020-03-25 10:33:49');
INSERT INTO `user_log` VALUES ('2225', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '43', '2020-03-25 10:33:50');
INSERT INTO `user_log` VALUES ('2226', '3', '用户登录', '0', '/record', 'POST', '{\"result\":\"\",\"reason\":\"\",\"processed\":\"1313\",\"select\":\"\",\"org\":\"\",\"repairTime\":\"\",\"arrivalTime\":\"\",\"part\":\"\",\"sperson\":\"\",\"faultDescription\":\"\",\"stime\":\"\"}', '维修员', '127.0.0.1', '110', '2020-03-25 10:36:51');
INSERT INTO `user_log` VALUES ('2227', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '58', '2020-03-25 10:37:05');
INSERT INTO `user_log` VALUES ('2228', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '20', '2020-03-25 10:37:44');
INSERT INTO `user_log` VALUES ('2229', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '23', '2020-03-25 10:39:44');
INSERT INTO `user_log` VALUES ('2230', '3', '用户登录', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '136', '2020-03-25 10:41:07');
INSERT INTO `user_log` VALUES ('2231', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '39', '2020-03-25 10:41:08');
INSERT INTO `user_log` VALUES ('2232', '3', '用户登录', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '138', '2020-03-25 10:43:04');
INSERT INTO `user_log` VALUES ('2233', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '45', '2020-03-25 10:43:05');
INSERT INTO `user_log` VALUES ('2234', '3', '用户登录', '0', '/record', 'POST', '{\"result\":\"\",\"reason\":\"\",\"processed\":\"\",\"select\":\"\",\"org\":\"\",\"repairTime\":\"\",\"arrivalTime\":\"\",\"part\":\"\",\"sperson\":\"\",\"faultDescription\":\"\",\"stime\":\"\"}', '维修员', '127.0.0.1', '130', '2020-03-25 10:44:06');
INSERT INTO `user_log` VALUES ('2235', '3', '更新用户信息', '0', '/user', 'PUT', '{\"phone\":\"15762323401\",\"sex\":\"男\",\"id\":\"3\",\"age\":\"2\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '22', '2020-03-25 10:44:45');
INSERT INTO `user_log` VALUES ('2236', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '41', '2020-03-25 10:46:10');
INSERT INTO `user_log` VALUES ('2237', '3', '用户登录', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '91', '2020-03-25 17:56:14');
INSERT INTO `user_log` VALUES ('2238', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '48', '2020-03-25 17:56:16');
INSERT INTO `user_log` VALUES ('2239', '3', '用户登录', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '136', '2020-03-25 17:58:08');
INSERT INTO `user_log` VALUES ('2240', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '38', '2020-03-25 17:58:09');
INSERT INTO `user_log` VALUES ('2241', '3', '用户登录', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '120', '2020-03-25 18:02:37');
INSERT INTO `user_log` VALUES ('2242', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '39', '2020-03-25 18:02:44');
INSERT INTO `user_log` VALUES ('2243', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '74', '2020-03-25 18:05:32');
INSERT INTO `user_log` VALUES ('2244', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '25', '2020-03-25 18:07:15');
INSERT INTO `user_log` VALUES ('2245', '3', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '62', '2020-03-25 18:08:09');
INSERT INTO `user_log` VALUES ('2246', '3', '添加维保信息', '0', '/maintenanceService', 'POST', '{\"result\":\"313\",\"eid\":\"23\",\"name\":\"发\",\"time\":\"2020-03-10 00:00\"}', '维修员', '127.0.0.1', '1254', '2020-03-25 18:08:22');
INSERT INTO `user_log` VALUES ('2247', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '40', '2020-03-25 18:08:24');
INSERT INTO `user_log` VALUES ('2248', '3', '用户登录', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '126', '2020-03-25 18:10:43');
INSERT INTO `user_log` VALUES ('2249', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '1354', '2020-03-25 18:10:45');
INSERT INTO `user_log` VALUES ('2250', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '33', '2020-03-25 18:10:54');
INSERT INTO `user_log` VALUES ('2251', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '23', '2020-03-25 18:12:05');
INSERT INTO `user_log` VALUES ('2252', '3', '用户登录', '0', '/fault/69', 'GET', '{}', '维修员', '127.0.0.1', '118', '2020-03-25 18:15:15');
INSERT INTO `user_log` VALUES ('2253', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '36', '2020-03-25 18:15:25');
INSERT INTO `user_log` VALUES ('2254', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '38', '2020-03-25 18:18:00');
INSERT INTO `user_log` VALUES ('2255', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '48', '2020-03-25 18:20:33');
INSERT INTO `user_log` VALUES ('2256', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '27', '2020-03-25 18:21:02');
INSERT INTO `user_log` VALUES ('2257', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '24', '2020-03-25 18:21:43');
INSERT INTO `user_log` VALUES ('2258', '3', '用户登录', '0', '/record', 'POST', '{\"result\":\"\",\"reason\":\"\",\"processed\":\"\",\"select\":\"7,6,5,8\",\"org\":\"就是不知道咋就坏了\",\"repairTime\":\"\",\"arrivalTime\":\"\",\"part\":\"7,6,5,8\",\"sperson\":\"user\",\"faultDescription\":\"\",\"stime\":\"2020-03-04 23:53:52\"}', '维修员', '127.0.0.1', '131', '2020-03-25 18:25:16');
INSERT INTO `user_log` VALUES ('2259', '3', '用户登录', '0', '/record', 'POST', '{\"result\":\"\",\"reason\":\"\",\"processed\":\"\",\"select\":\"5,7,14\",\"org\":\"就是不知道咋就坏了\",\"repairTime\":\"\",\"arrivalTime\":\"\",\"part\":\"5,7,14\",\"sperson\":\"user\",\"faultDescription\":\"\",\"stime\":\"2020-03-04 23:53:52\"}', '维修员', '127.0.0.1', '136', '2020-03-25 18:26:05');
INSERT INTO `user_log` VALUES ('2260', '3', '用户登录', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '137', '2020-03-25 18:28:17');
INSERT INTO `user_log` VALUES ('2261', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '55', '2020-03-25 18:28:19');
INSERT INTO `user_log` VALUES ('2262', '3', '用户登录', '0', '/record', 'POST', '{\"result\":\"\",\"reason\":\"\",\"processed\":\"\",\"select\":\"7,5,14\",\"org\":\"就是不知道咋就坏了\",\"repairTime\":\"\",\"arrivalTime\":\"\",\"part\":\"7,5,14\",\"sperson\":\"user\",\"faultDescription\":\"\",\"stime\":\"2020-03-04 23:53:52\"}', '维修员', '127.0.0.1', '129', '2020-03-25 18:29:45');
INSERT INTO `user_log` VALUES ('2263', '3', '用户登录', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '135', '2020-03-25 18:32:58');
INSERT INTO `user_log` VALUES ('2264', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '50', '2020-03-25 18:33:00');
INSERT INTO `user_log` VALUES ('2265', '3', '用户登录', '0', '/record', 'POST', '{\"result\":\"额额\",\"reason\":\"1额e\",\"processed\":\"额额\",\"select\":\"6,5,7\",\"org\":\"就是不知道咋就坏了\",\"repairTime\":\"2020-03-22 00:00\",\"arrivalTime\":\"2020-03-16 00:00\",\"part\":\"6,5,7\",\"sperson\":\"user\",\"faultDescription\":\"的的\",\"stime\":\"2020-03-04 23:53:52\"}', '维修员', '127.0.0.1', '145', '2020-03-25 18:34:52');
INSERT INTO `user_log` VALUES ('2266', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '158', '2020-03-25 18:38:19');
INSERT INTO `user_log` VALUES ('2267', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '96', '2020-03-25 18:46:19');
INSERT INTO `user_log` VALUES ('2268', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '21', '2020-03-25 18:49:29');
INSERT INTO `user_log` VALUES ('2269', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '37', '2020-03-25 18:51:25');
INSERT INTO `user_log` VALUES ('2270', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '26', '2020-03-25 18:51:37');
INSERT INTO `user_log` VALUES ('2271', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '24', '2020-03-25 18:51:55');
INSERT INTO `user_log` VALUES ('2272', '3', '用户登录', '0', '/isLife', 'GET', '{}', '维修员', '127.0.0.1', '29', '2020-03-26 15:01:38');
INSERT INTO `user_log` VALUES ('2273', '3', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"a9yn\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '21', '2020-03-26 15:02:13');
INSERT INTO `user_log` VALUES ('2274', '3', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '86', '2020-03-26 15:03:01');
INSERT INTO `user_log` VALUES ('2275', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '28', '2020-03-26 15:03:02');
INSERT INTO `user_log` VALUES ('2276', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '19', '2020-03-26 15:03:03');
INSERT INTO `user_log` VALUES ('2277', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '49', '2020-03-26 15:25:35');
INSERT INTO `user_log` VALUES ('2278', '3', '修改电梯信息', '0', '/fault', 'PUT', '{\"repair\":\"1\",\"id\":\"73\"}', '维修员', '127.0.0.1', '27', '2020-03-26 15:27:40');
INSERT INTO `user_log` VALUES ('2279', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '15', '2020-03-26 15:28:27');
INSERT INTO `user_log` VALUES ('2280', '3', '修改电梯信息', '0', '/fault', 'PUT', '{\"repair\":\"1\",\"id\":\"73\"}', '维修员', '127.0.0.1', '17', '2020-03-26 15:32:02');
INSERT INTO `user_log` VALUES ('2281', '3', '用户登录', '0', '/isLife', 'GET', '{}', '维修员', '127.0.0.1', '118', '2020-03-26 15:35:24');
INSERT INTO `user_log` VALUES ('2282', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '118', '2020-03-26 15:35:28');
INSERT INTO `user_log` VALUES ('2283', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '27', '2020-03-26 15:35:29');
INSERT INTO `user_log` VALUES ('2284', '3', '修改故障信息', '0', '/fault', 'PUT', '{\"repair\":\"1\",\"id\":\"73\"}', '维修员', '127.0.0.1', '19', '2020-03-26 15:37:13');
INSERT INTO `user_log` VALUES ('2285', '3', '用户登录', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '161', '2020-03-26 15:38:37');
INSERT INTO `user_log` VALUES ('2286', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '63', '2020-03-26 15:38:39');
INSERT INTO `user_log` VALUES ('2287', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '31', '2020-03-26 15:38:39');
INSERT INTO `user_log` VALUES ('2288', '3', '修改故障信息', '0', '/fault', 'PUT', '{\"repair\":\"1\",\"id\":\"73\"}', '维修员', '127.0.0.1', '31', '2020-03-26 15:38:58');
INSERT INTO `user_log` VALUES ('2289', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '107', '2020-03-26 15:42:00');
INSERT INTO `user_log` VALUES ('2290', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '29', '2020-03-26 15:42:22');
INSERT INTO `user_log` VALUES ('2291', '3', '修改故障信息', '0', '/fault', 'PUT', '{\"repair\":\"2\",\"id\":\"68\"}', '维修员', '127.0.0.1', '23', '2020-03-26 15:42:46');
INSERT INTO `user_log` VALUES ('2292', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '24', '2020-03-26 15:42:51');
INSERT INTO `user_log` VALUES ('2293', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '79', '2020-03-26 15:44:52');
INSERT INTO `user_log` VALUES ('2294', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '78', '2020-03-26 15:47:03');
INSERT INTO `user_log` VALUES ('2295', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '23', '2020-03-26 15:47:26');
INSERT INTO `user_log` VALUES ('2296', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '20', '2020-03-26 15:48:09');
INSERT INTO `user_log` VALUES ('2297', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '27', '2020-03-26 15:48:48');
INSERT INTO `user_log` VALUES ('2298', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '16', '2020-03-26 15:49:42');
INSERT INTO `user_log` VALUES ('2299', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '21', '2020-03-26 15:50:04');
INSERT INTO `user_log` VALUES ('2300', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '14', '2020-03-26 15:50:21');
INSERT INTO `user_log` VALUES ('2301', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '21', '2020-03-26 15:50:43');
INSERT INTO `user_log` VALUES ('2302', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '43', '2020-03-26 15:53:21');
INSERT INTO `user_log` VALUES ('2303', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '15', '2020-03-26 15:53:34');
INSERT INTO `user_log` VALUES ('2304', '3', '用户登录', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '41', '2020-03-26 20:12:32');
INSERT INTO `user_log` VALUES ('2305', '3', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '68', '2020-03-26 20:12:36');
INSERT INTO `user_log` VALUES ('2306', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '16', '2020-03-26 20:21:19');
INSERT INTO `user_log` VALUES ('2307', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '18', '2020-03-26 20:21:57');
INSERT INTO `user_log` VALUES ('2308', '3', '用户登录', '0', '/record', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '211', '2020-03-26 20:31:03');
INSERT INTO `user_log` VALUES ('2309', '3', '用户登录', '0', '/record', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '51', '2020-03-27 00:02:32');
INSERT INTO `user_log` VALUES ('2310', '3', '用户登录', '0', '/record', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '126', '2020-03-27 00:08:45');
INSERT INTO `user_log` VALUES ('2311', '3', '用户登录', '0', '/isLife', 'GET', '{}', '维修员', '127.0.0.1', '143', '2020-03-27 00:14:07');
INSERT INTO `user_log` VALUES ('2312', '3', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '93', '2020-03-27 00:14:14');
INSERT INTO `user_log` VALUES ('2313', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '95', '2020-03-27 00:33:05');
INSERT INTO `user_log` VALUES ('2314', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '35', '2020-03-27 00:33:13');
INSERT INTO `user_log` VALUES ('2315', '3', '用户登录', '0', '/record/common', 'GET', '{}', '维修员', '127.0.0.1', '62', '2020-03-27 10:37:29');
INSERT INTO `user_log` VALUES ('2316', '3', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"4vsg\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '99', '2020-03-27 10:40:54');
INSERT INTO `user_log` VALUES ('2317', '3', '用户登录', '0', '/record/common', 'GET', '{}', '维修员', '127.0.0.1', '117', '2020-03-27 10:50:53');
INSERT INTO `user_log` VALUES ('2318', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '77', '2020-03-27 10:58:24');
INSERT INTO `user_log` VALUES ('2319', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '40', '2020-03-27 10:58:25');
INSERT INTO `user_log` VALUES ('2320', '3', '用户登录', '0', '/isLife', 'GET', '{}', '维修员', '127.0.0.1', '100', '2020-03-27 20:45:25');
INSERT INTO `user_log` VALUES ('2321', '1', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"xh26\",\"username\":\"user\"}', 'user', '127.0.0.1', '45', '2020-03-27 20:46:38');
INSERT INTO `user_log` VALUES ('2322', '1', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '32', '2020-03-27 20:47:03');
INSERT INTO `user_log` VALUES ('2323', '1', '添加故障信息', '0', '/fault', 'POST', '{\"address\":\"11\",\"province\":\"广东省\",\"submit\":\"1\",\"city\":\"深圳市\",\"zone\":\"广东省深圳市龙岗区\",\"county\":\"龙岗区\",\"describe\":\"重启\"}', 'user', '127.0.0.1', '31', '2020-03-27 20:47:30');
INSERT INTO `user_log` VALUES ('2324', '1', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '19', '2020-03-27 20:47:33');
INSERT INTO `user_log` VALUES ('2325', '1', '添加故障信息', '0', '/fault', 'POST', '{\"address\":\"11\",\"province\":\"广东省\",\"submit\":\"0\",\"city\":\"深圳市\",\"zone\":\"广东省深圳市龙岗区\",\"county\":\"龙岗区\",\"describe\":\"11\"}', 'user', '127.0.0.1', '22', '2020-03-27 20:47:38');
INSERT INTO `user_log` VALUES ('2326', '1', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '23', '2020-03-27 20:47:42');
INSERT INTO `user_log` VALUES ('2327', '1', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '114', '2020-03-27 20:48:33');
INSERT INTO `user_log` VALUES ('2328', '3', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"bbr8\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '19', '2020-03-27 21:49:20');
INSERT INTO `user_log` VALUES ('2329', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '59', '2020-03-27 21:49:26');
INSERT INTO `user_log` VALUES ('2330', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '21', '2020-03-27 21:49:36');
INSERT INTO `user_log` VALUES ('2331', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '53', '2020-03-27 22:17:57');
INSERT INTO `user_log` VALUES ('2332', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '19', '2020-03-27 22:18:13');
INSERT INTO `user_log` VALUES ('2333', '3', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"jfrv\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '122', '2020-03-29 17:37:39');
INSERT INTO `user_log` VALUES ('2334', '3', '用户登录', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '158', '2020-03-29 18:27:38');
INSERT INTO `user_log` VALUES ('2335', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '42', '2020-03-29 18:27:42');
INSERT INTO `user_log` VALUES ('2336', '3', '修改故障信息', '0', '/fault', 'PUT', '{\"repair\":\"2\",\"id\":\"69\"}', '维修员', '127.0.0.1', '18', '2020-03-29 18:28:01');
INSERT INTO `user_log` VALUES ('2337', '3', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"m5qu\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '107', '2020-03-29 18:32:39');
INSERT INTO `user_log` VALUES ('2338', '3', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '64', '2020-03-29 18:32:44');
INSERT INTO `user_log` VALUES ('2339', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '51', '2020-03-29 18:32:45');
INSERT INTO `user_log` VALUES ('2340', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '25', '2020-03-29 18:32:48');
INSERT INTO `user_log` VALUES ('2341', '3', '修改故障信息', '0', '/fault', 'PUT', '{\"repair\":\"2\",\"id\":\"68\"}', '维修员', '127.0.0.1', '19', '2020-03-29 18:33:08');
INSERT INTO `user_log` VALUES ('2342', '3', '用户登录', '0', '/record', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '162', '2020-03-29 18:35:55');
INSERT INTO `user_log` VALUES ('2343', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '79', '2020-03-29 18:47:58');
INSERT INTO `user_log` VALUES ('2344', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '18', '2020-03-29 18:48:35');
INSERT INTO `user_log` VALUES ('2345', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '19', '2020-03-29 18:49:33');
INSERT INTO `user_log` VALUES ('2346', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '63', '2020-03-29 19:15:38');
INSERT INTO `user_log` VALUES ('2347', '3', '修改故障信息', '0', '/fault', 'PUT', '{\"repair\":\"1\",\"id\":\"73\"}', '维修员', '127.0.0.1', '19', '2020-03-29 19:16:33');
INSERT INTO `user_log` VALUES ('2348', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '20', '2020-03-29 19:16:41');
INSERT INTO `user_log` VALUES ('2349', '3', '用户登录', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '33', '2020-03-29 19:47:35');
INSERT INTO `user_log` VALUES ('2350', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '23', '2020-03-29 19:47:39');
INSERT INTO `user_log` VALUES ('2351', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '16', '2020-03-29 19:48:08');
INSERT INTO `user_log` VALUES ('2352', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '20', '2020-03-29 19:49:02');
INSERT INTO `user_log` VALUES ('2353', '3', '修改故障信息', '0', '/fault', 'PUT', '{\"repair\":\"2\",\"id\":\"73\"}', '维修员', '127.0.0.1', '13', '2020-03-29 19:49:04');
INSERT INTO `user_log` VALUES ('2354', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '20', '2020-03-29 19:49:06');
INSERT INTO `user_log` VALUES ('2355', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '20', '2020-03-29 19:50:20');
INSERT INTO `user_log` VALUES ('2356', '3', '用户登录', '0', '/isLife', 'GET', '{}', '维修员', '127.0.0.1', '119', '2020-03-30 16:02:14');
INSERT INTO `user_log` VALUES ('2357', '1', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"6pvs\",\"username\":\"user\"}', 'user', '127.0.0.1', '49', '2020-03-30 16:02:34');
INSERT INTO `user_log` VALUES ('2358', '2', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"7y7q\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '49', '2020-03-30 16:09:30');
INSERT INTO `user_log` VALUES ('2359', '3', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"x2m6\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '43', '2020-03-30 16:09:59');
INSERT INTO `user_log` VALUES ('2360', '2', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"fsg4\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '37', '2020-03-30 16:27:32');
INSERT INTO `user_log` VALUES ('2361', '2', '删除故障信息', '0', '/fault', 'DELETE', '{\"ids[]\":\"43\"}', 'admin', '127.0.0.1', '26', '2020-03-30 16:57:34');
INSERT INTO `user_log` VALUES ('2362', '2', '用户登录', '0', '/record', 'DELETE', '{\"ids[]\":\"43\"}', 'admin', '127.0.0.1', '209', '2020-03-30 17:00:14');
INSERT INTO `user_log` VALUES ('2363', '2', '超管查询日志', '0', '/log/all', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '36', '2020-03-30 17:00:31');
INSERT INTO `user_log` VALUES ('2364', '2', '用户登录', '0', '/record', 'PUT', '{\"result\":\"11哒哒111额\",\"reason\":\"1额\",\"processed\":\"11\",\"org\":\"细节\",\"repairTime\":\"2020-03-24 00:00\",\"arrivalTime\":\"2020-03-03 00:00\",\"spend\":\"11元\",\"sperson\":\"admin\",\"parts\":\"曳引机 轿箱门机 \",\"faultDescription\":\"当前\",\"stime\":\"2020-03-04 23:28:04\",\"maintenance\":\"维修员\"}', 'admin', '127.0.0.1', '160', '2020-03-30 17:19:53');
INSERT INTO `user_log` VALUES ('2365', '2', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"k5qv\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '92', '2020-04-16 11:15:59');
INSERT INTO `user_log` VALUES ('2366', '2', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '35', '2020-04-16 11:17:09');
INSERT INTO `user_log` VALUES ('2367', '2', '添加故障信息', '0', '/fault', 'POST', '{\"address\":\"大\",\"province\":\"北京市\",\"submit\":\"1\",\"city\":\"北京市\",\"zone\":\"北京市北京市东城区\",\"county\":\"东城区\",\"describe\":\"11\"}', 'admin', '127.0.0.1', '24', '2020-04-16 11:17:27');
INSERT INTO `user_log` VALUES ('2368', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '74', '2020-04-16 11:21:30');
INSERT INTO `user_log` VALUES ('2369', '2', '添加电梯信息', '0', '/elevator', 'POST', '{\"address\":\"发顺丰\",\"province\":\"天津市\",\"city\":\"天津市\",\"zone\":\"天津市天津市和平区\",\"useUnit\":\"131\",\"county\":\"和平区\",\"model\":\"111\",\"type\":\"杂物电梯\",\"cycle\":\"11\"}', 'admin', '127.0.0.1', '16', '2020-04-16 11:23:22');
INSERT INTO `user_log` VALUES ('2370', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '27', '2020-04-16 11:23:27');
INSERT INTO `user_log` VALUES ('2371', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '64', '2020-04-16 11:26:13');
INSERT INTO `user_log` VALUES ('2372', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '37', '2020-04-16 11:26:44');
INSERT INTO `user_log` VALUES ('2373', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '28', '2020-04-16 11:27:25');
INSERT INTO `user_log` VALUES ('2374', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '25', '2020-04-16 11:28:56');
INSERT INTO `user_log` VALUES ('2375', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '71', '2020-04-16 11:37:52');
INSERT INTO `user_log` VALUES ('2376', '2', '修改电梯信息', '0', '/elevator', 'PUT', '{\"address\":\"北京市\",\"zone\":\"\",\"useUnit\":\"清华大学\",\"addtime\":\"2020-03-04 02:05:21\",\"addId\":\"1\",\"model\":\"p250\",\"id\":\"8\",\"addName\":\"user\",\"type\":\"载货电\",\"cycletime\":\"-2\",\"uuid\":\"1\",\"cycle\":\"211111\"}', 'admin', '127.0.0.1', '15', '2020-04-16 11:38:00');
INSERT INTO `user_log` VALUES ('2377', '2', '修改电梯信息', '0', '/elevator', 'PUT', '{\"address\":\"北京市\",\"zone\":\"\",\"useUnit\":\"清华大学\",\"addtime\":\"2020-03-04 02:05:21\",\"addId\":\"1\",\"model\":\"p250\",\"id\":\"8\",\"addName\":\"user\",\"type\":\"载货sa\",\"cycletime\":\"-2\",\"uuid\":\"1\",\"cycle\":\"211111\"}', 'admin', '127.0.0.1', '9', '2020-04-16 11:38:15');
INSERT INTO `user_log` VALUES ('2378', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '27', '2020-04-16 11:38:32');
INSERT INTO `user_log` VALUES ('2379', '2', '修改电梯信息', '0', '/elevator', 'PUT', '{\"address\":\"‍北京市\",\"zone\":\"\",\"useUnit\":\"北京大学\",\"addtime\":\"2020-03-04 02:05:34\",\"addId\":\"1\",\"model\":\"www32\",\"id\":\"9\",\"addName\":\"user\",\"type\":\"乘客da\",\"cycletime\":\"-2\",\"uuid\":\"213\",\"cycle\":\"1\"}', 'admin', '127.0.0.1', '9', '2020-04-16 11:38:35');
INSERT INTO `user_log` VALUES ('2380', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '29', '2020-04-16 11:38:55');
INSERT INTO `user_log` VALUES ('2381', '2', '修改电梯信息', '0', '/elevator', 'PUT', '{\"address\":\"北京市\",\"zone\":\"\",\"useUnit\":\"清华大学\",\"addtime\":\"2020-03-04 02:05:21\",\"addId\":\"1\",\"model\":\"p250\",\"id\":\"8\",\"addName\":\"user\",\"type\":\"载货da\",\"cycletime\":\"-2\",\"uuid\":\"1\",\"cycle\":\"211111\"}', 'admin', '127.0.0.1', '10', '2020-04-16 11:38:57');
INSERT INTO `user_log` VALUES ('2382', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '22', '2020-04-16 11:39:15');
INSERT INTO `user_log` VALUES ('2383', '2', '修改电梯信息', '0', '/elevator', 'PUT', '{\"address\":\"北京市\",\"zone\":\"\",\"useUnit\":\"清华大学\",\"addtime\":\"2020-03-04 02:05:21\",\"addId\":\"1\",\"model\":\"p250\",\"id\":\"8\",\"addName\":\"user\",\"type\":\"载货dada\",\"cycletime\":\"-2\",\"uuid\":\"1\",\"cycle\":\"211111\"}', 'admin', '127.0.0.1', '6', '2020-04-16 11:39:18');
INSERT INTO `user_log` VALUES ('2384', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '37', '2020-04-16 11:39:32');
INSERT INTO `user_log` VALUES ('2385', '2', '修改电梯信息', '0', '/elevator', 'PUT', '{\"address\":\"北京市\",\"zone\":\"\",\"useUnit\":\"清华大学\",\"addtime\":\"2020-03-04 02:05:21\",\"addId\":\"1\",\"model\":\"p250\",\"id\":\"8\",\"addName\":\"user\",\"type\":\"载货dadadadadadada\",\"cycletime\":\"-2\",\"uuid\":\"1\",\"cycle\":\"211111\"}', 'admin', '127.0.0.1', '8', '2020-04-16 11:39:38');
INSERT INTO `user_log` VALUES ('2386', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '20', '2020-04-16 11:40:13');
INSERT INTO `user_log` VALUES ('2387', '2', '修改电梯信息', '0', '/elevator', 'PUT', '{\"address\":\"北京市\",\"zone\":\"\",\"useUnit\":\"清华大学\",\"addtime\":\"2020-03-04 02:05:21\",\"addId\":\"1\",\"model\":\"p250\",\"id\":\"8\",\"addName\":\"user\",\"type\":\"载货dada\",\"cycletime\":\"-2\",\"uuid\":\"1\",\"cycle\":\"211111\"}', 'admin', '127.0.0.1', '5', '2020-04-16 11:40:14');
INSERT INTO `user_log` VALUES ('2388', '2', '修改电梯信息', '0', '/elevator', 'PUT', '{\"address\":\"北京市\",\"zone\":\"\",\"useUnit\":\"清华大学\",\"addtime\":\"2020-03-04 02:05:21\",\"addId\":\"1\",\"model\":\"p250\",\"id\":\"8\",\"addName\":\"user\",\"type\":\"载货asadada\",\"cycletime\":\"-2\",\"uuid\":\"1\",\"cycle\":\"211111\"}', 'admin', '127.0.0.1', '6', '2020-04-16 11:40:17');
INSERT INTO `user_log` VALUES ('2389', '2', '修改电梯信息', '0', '/elevator', 'PUT', '{\"address\":\"北京市\",\"zone\":\"\",\"useUnit\":\"清华大学\",\"addtime\":\"2020-03-04 02:05:21\",\"addId\":\"1\",\"model\":\"p250\",\"id\":\"8\",\"addName\":\"user\",\"type\":\"载货zxZXzxzX\",\"cycletime\":\"-2\",\"uuid\":\"1\",\"cycle\":\"211111\"}', 'admin', '127.0.0.1', '9', '2020-04-16 11:40:21');
INSERT INTO `user_log` VALUES ('2390', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '32', '2020-04-16 11:40:53');
INSERT INTO `user_log` VALUES ('2391', '2', '修改电梯信息', '0', '/elevator', 'PUT', '{\"address\":\"北京市\",\"zone\":\"\",\"useUnit\":\"清华大学\",\"addtime\":\"2020-03-04 02:05:21\",\"addId\":\"1\",\"model\":\"p250\",\"id\":\"8\",\"addName\":\"user\",\"type\":\"载货dasdas\",\"cycletime\":\"-2\",\"uuid\":\"1\",\"cycle\":\"211111\"}', 'admin', '127.0.0.1', '5', '2020-04-16 11:40:55');
INSERT INTO `user_log` VALUES ('2392', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '19', '2020-04-16 11:41:33');
INSERT INTO `user_log` VALUES ('2393', '2', '修改电梯信息', '0', '/elevator', 'PUT', '{\"address\":\"北京市\",\"zone\":\"\",\"useUnit\":\"清华大学\",\"addtime\":\"2020-03-04 02:05:21\",\"addId\":\"1\",\"model\":\"p250\",\"id\":\"8\",\"addName\":\"user\",\"type\":\"载货dadas\",\"cycletime\":\"-2\",\"uuid\":\"1\",\"cycle\":\"211111\"}', 'admin', '127.0.0.1', '5', '2020-04-16 11:41:35');
INSERT INTO `user_log` VALUES ('2394', '2', '修改电梯信息', '0', '/elevator', 'PUT', '{\"address\":\"北京市\",\"zone\":\"\",\"useUnit\":\"清华大学\",\"addtime\":\"2020-03-04 02:05:21\",\"addId\":\"1\",\"model\":\"p250\",\"id\":\"8\",\"addName\":\"user\",\"type\":\"载货d\",\"cycletime\":\"-2\",\"uuid\":\"1\",\"cycle\":\"211111\"}', 'admin', '127.0.0.1', '4', '2020-04-16 11:41:40');
INSERT INTO `user_log` VALUES ('2395', '2', '修改电梯信息', '0', '/elevator', 'PUT', '{\"address\":\"北京市\",\"zone\":\"\",\"useUnit\":\"清华大学\",\"addtime\":\"2020-03-04 02:05:21\",\"addId\":\"1\",\"model\":\"p250\",\"id\":\"8\",\"addName\":\"user\",\"type\":\"载货dadadasd\",\"cycletime\":\"-2\",\"uuid\":\"1\",\"cycle\":\"211111\"}', 'admin', '127.0.0.1', '10', '2020-04-16 11:41:42');
INSERT INTO `user_log` VALUES ('2396', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '39', '2020-04-16 11:42:58');
INSERT INTO `user_log` VALUES ('2397', '2', '修改电梯信息', '0', '/elevator', 'PUT', '{\"address\":\"北京市\",\"zone\":\"\",\"useUnit\":\"清华大学\",\"addtime\":\"2020-03-04 02:05:21\",\"addId\":\"1\",\"model\":\"p250\",\"id\":\"8\",\"addName\":\"user\",\"type\":\"载货dada\",\"cycletime\":\"-2\",\"uuid\":\"1\",\"cycle\":\"211111\"}', 'admin', '127.0.0.1', '8', '2020-04-16 11:43:02');
INSERT INTO `user_log` VALUES ('2398', '2', '修改电梯信息', '0', '/elevator', 'PUT', '{\"address\":\"北京市\",\"zone\":\"\",\"useUnit\":\"清华大学\",\"addtime\":\"2020-03-04 02:05:21\",\"addId\":\"1\",\"model\":\"p250\",\"id\":\"8\",\"addName\":\"user\",\"type\":\"载货dasd\",\"cycletime\":\"-2\",\"uuid\":\"1\",\"cycle\":\"211111\"}', 'admin', '127.0.0.1', '14', '2020-04-16 11:44:13');
INSERT INTO `user_log` VALUES ('2399', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '24', '2020-04-16 11:44:40');
INSERT INTO `user_log` VALUES ('2400', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '21', '2020-04-16 11:44:52');
INSERT INTO `user_log` VALUES ('2401', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '19', '2020-04-16 11:46:37');
INSERT INTO `user_log` VALUES ('2402', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '19', '2020-04-16 11:46:55');
INSERT INTO `user_log` VALUES ('2403', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '24', '2020-04-16 11:47:26');
INSERT INTO `user_log` VALUES ('2404', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '20', '2020-04-16 11:48:10');
INSERT INTO `user_log` VALUES ('2405', '2', '修改电梯信息', '0', '/elevator', 'PUT', '{\"address\":\"北京市\",\"zone\":\"\",\"useUnit\":\"清华大学\",\"addtime\":\"2020-03-04 02:05:21\",\"addId\":\"1\",\"model\":\"p250\",\"id\":\"8\",\"addName\":\"user\",\"type\":\"客运电梯\",\"cycletime\":\"-2\",\"uuid\":\"1\",\"cycle\":\"211111\"}', 'admin', '127.0.0.1', '7', '2020-04-16 11:48:22');
INSERT INTO `user_log` VALUES ('2406', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '22', '2020-04-16 11:48:25');
INSERT INTO `user_log` VALUES ('2407', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '24', '2020-04-16 11:48:30');
INSERT INTO `user_log` VALUES ('2408', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '65', '2020-04-16 12:08:56');
INSERT INTO `user_log` VALUES ('2409', '2', '用户登录', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '174', '2020-04-16 12:09:56');
INSERT INTO `user_log` VALUES ('2410', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '1718', '2020-04-16 12:09:59');
INSERT INTO `user_log` VALUES ('2411', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '59', '2020-04-16 12:10:25');
INSERT INTO `user_log` VALUES ('2412', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '49', '2020-04-16 12:10:36');
INSERT INTO `user_log` VALUES ('2413', '2', '添加电梯信息', '0', '/elevator', 'POST', '{\"address\":\"1111\",\"province\":\"天津市\",\"city\":\"天津市\",\"zone\":\"天津市天津市河东区\",\"phone\":\"11111\",\"useUnit\":\"11\",\"county\":\"河东区\",\"model\":\"1111\",\"type\":\"载货电梯\",\"cycle\":\"111\"}', 'admin', '127.0.0.1', '36', '2020-04-16 12:12:05');
INSERT INTO `user_log` VALUES ('2414', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '51', '2020-04-16 12:12:10');
INSERT INTO `user_log` VALUES ('2415', '2', '用户登录', '0', '/elevator', 'POST', '{\"address\":\"czcz\",\"province\":\"河北省\",\"city\":\"唐山市\",\"zone\":\"河北省唐山市路北区\",\"phone\":\"2142421\",\"useUnit\":\"dada\",\"person\":\"dada\",\"county\":\"路北区\",\"model\":\"dada\",\"type\":\"客运电梯\",\"brand\":\"dada\",\"cycle\":\"424\"}', 'admin', '127.0.0.1', '158', '2020-04-16 12:21:52');
INSERT INTO `user_log` VALUES ('2416', '2', '添加电梯信息', '0', '/elevator', 'POST', '{\"address\":\"dada\",\"province\":\"北京市\",\"city\":\"北京市\",\"zone\":\"北京市北京市东城区\",\"phone\":\"dada\",\"useUnit\":\"dada\",\"person\":\"dada\",\"county\":\"东城区\",\"model\":\"dada\",\"type\":\"客运电梯\",\"brand\":\"dada\",\"cycle\":\"13131\"}', 'admin', '127.0.0.1', '1244', '2020-04-16 12:22:09');
INSERT INTO `user_log` VALUES ('2417', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '131', '2020-04-16 12:24:14');
INSERT INTO `user_log` VALUES ('2418', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '50', '2020-04-16 12:24:23');
INSERT INTO `user_log` VALUES ('2419', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '53', '2020-04-16 12:25:13');
INSERT INTO `user_log` VALUES ('2420', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '53', '2020-04-16 12:26:50');
INSERT INTO `user_log` VALUES ('2421', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '35', '2020-04-16 12:27:28');
INSERT INTO `user_log` VALUES ('2422', '2', '修改电梯信息', '0', '/elevator', 'PUT', '{\"address\":\"北京市\",\"useUnit\":\"清华大学\",\"addName\":\"user\",\"type\":\"客运dada\",\"cycletime\":\"-2\",\"uuid\":\"1\",\"cycle\":\"211111\",\"zone\":\"\",\"phone\":\"11111111\",\"addtime\":\"2020-03-04 02:05:21\",\"person\":\"\",\"addId\":\"1\",\"model\":\"dada\",\"id\":\"8\",\"brand\":\"\"}', 'admin', '127.0.0.1', '10', '2020-04-16 12:27:33');
INSERT INTO `user_log` VALUES ('2423', '3', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"8sn5\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '138', '2020-04-16 18:51:18');
INSERT INTO `user_log` VALUES ('2424', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '95', '2020-04-16 18:51:23');
INSERT INTO `user_log` VALUES ('2425', '3', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '66', '2020-04-16 18:51:24');
INSERT INTO `user_log` VALUES ('2426', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '22', '2020-04-16 18:51:34');
INSERT INTO `user_log` VALUES ('2427', '3', '用户登录', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '161', '2020-04-16 18:56:03');
INSERT INTO `user_log` VALUES ('2428', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '52', '2020-04-16 18:56:05');
INSERT INTO `user_log` VALUES ('2429', '3', '修改故障信息', '0', '/fault', 'PUT', '{\"repair\":\"2\",\"id\":\"75\"}', '维修员', '127.0.0.1', '20', '2020-04-16 18:56:35');
INSERT INTO `user_log` VALUES ('2430', '2', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"h2kq\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '41', '2020-04-16 19:06:50');
INSERT INTO `user_log` VALUES ('2431', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '86', '2020-04-16 19:07:06');
INSERT INTO `user_log` VALUES ('2432', '2', '用户登录', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '126', '2020-04-16 20:52:33');
INSERT INTO `user_log` VALUES ('2433', '2', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '51', '2020-04-16 20:52:34');
INSERT INTO `user_log` VALUES ('2434', '2', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '69', '2020-04-16 21:08:32');
INSERT INTO `user_log` VALUES ('2435', '2', '添加故障信息', '0', '/fault', 'POST', '{\"address\":\"da\",\"province\":\"北京市\",\"submit\":\"1\",\"city\":\"北京市\",\"zone\":\"北京市北京市西城区\",\"phone\":\"1576232323410\",\"county\":\"西城区\",\"describe\":\"哒哒\"}', 'admin', '127.0.0.1', '22', '2020-04-16 21:08:49');
INSERT INTO `user_log` VALUES ('2436', '2', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '31', '2020-04-16 21:08:53');
INSERT INTO `user_log` VALUES ('2437', '2', '用户登录', '0', '/fault', 'POST', '{\"address\":\"eq\",\"province\":\"北京市\",\"submit\":\"1\",\"city\":\"北京市\",\"zone\":\"北京市北京市西城区\",\"phone\":\"qqeq\",\"county\":\"西城区\",\"describe\":\"eqeq\"}', 'admin', '127.0.0.1', '137', '2020-04-16 21:10:18');
INSERT INTO `user_log` VALUES ('2438', '2', '添加故障信息', '0', '/fault', 'POST', '{\"address\":\"qqe\",\"province\":\"天津市\",\"submit\":\"1\",\"city\":\"天津市\",\"zone\":\"天津市天津市河东区\",\"phone\":\"eqeq\",\"county\":\"河东区\",\"describe\":\"eqeq\"}', 'admin', '127.0.0.1', '36', '2020-04-16 21:10:32');
INSERT INTO `user_log` VALUES ('2439', '2', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '44', '2020-04-16 21:10:38');
INSERT INTO `user_log` VALUES ('2440', '1', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"hkrg\",\"username\":\"user\"}', 'user', '127.0.0.1', '41', '2020-04-16 21:11:23');
INSERT INTO `user_log` VALUES ('2441', '1', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '19', '2020-04-16 21:11:33');
INSERT INTO `user_log` VALUES ('2442', '1', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '21', '2020-04-16 21:12:06');
INSERT INTO `user_log` VALUES ('2443', '1', '添加故障信息', '0', '/fault', 'POST', '{\"address\":\"dasa\",\"province\":\"天津市\",\"submit\":\"1\",\"city\":\"天津市\",\"zone\":\"天津市天津市河东区\",\"phone\":\"dada\",\"county\":\"河东区\",\"describe\":\"哒哒\"}', 'user', '127.0.0.1', '25', '2020-04-16 21:12:16');
INSERT INTO `user_log` VALUES ('2444', '1', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '23', '2020-04-16 21:12:19');
INSERT INTO `user_log` VALUES ('2445', '1', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '21', '2020-04-16 21:12:29');
INSERT INTO `user_log` VALUES ('2446', '3', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"xum3\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '71', '2020-04-16 21:13:17');
INSERT INTO `user_log` VALUES ('2447', '3', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '18', '2020-04-16 21:13:28');
INSERT INTO `user_log` VALUES ('2448', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '26', '2020-04-16 21:13:35');
INSERT INTO `user_log` VALUES ('2449', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '26', '2020-04-16 21:13:39');
INSERT INTO `user_log` VALUES ('2450', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '18', '2020-04-16 21:14:22');
INSERT INTO `user_log` VALUES ('2451', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '25', '2020-04-16 21:16:36');
INSERT INTO `user_log` VALUES ('2452', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '93', '2020-04-16 21:26:52');
INSERT INTO `user_log` VALUES ('2453', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '20', '2020-04-16 21:27:08');
INSERT INTO `user_log` VALUES ('2454', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '16', '2020-04-16 21:28:42');
INSERT INTO `user_log` VALUES ('2455', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '15', '2020-04-16 21:29:28');
INSERT INTO `user_log` VALUES ('2456', '3', '用户登录', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '146', '2020-04-16 21:36:16');
INSERT INTO `user_log` VALUES ('2457', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '47', '2020-04-16 21:36:18');
INSERT INTO `user_log` VALUES ('2458', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '35', '2020-04-16 21:36:33');
INSERT INTO `user_log` VALUES ('2459', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '61', '2020-04-16 21:40:05');
INSERT INTO `user_log` VALUES ('2460', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '20', '2020-04-16 21:41:37');
INSERT INTO `user_log` VALUES ('2461', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '23', '2020-04-16 21:41:57');
INSERT INTO `user_log` VALUES ('2462', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '18', '2020-04-16 21:42:15');
INSERT INTO `user_log` VALUES ('2463', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '1373', '2020-04-16 21:44:06');
INSERT INTO `user_log` VALUES ('2464', '3', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '59', '2020-04-16 21:44:44');
INSERT INTO `user_log` VALUES ('2465', '3', '用户登录', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '126', '2020-04-16 21:48:44');
INSERT INTO `user_log` VALUES ('2466', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '1433', '2020-04-16 21:48:54');
INSERT INTO `user_log` VALUES ('2467', '3', '添加维保信息', '0', '/maintenanceService', 'POST', '{\"result\":\"11313\",\"eid\":\"23\",\"phone\":\"11111\",\"name\":\"大\",\"time\":\"2020-04-06 00:00\"}', '维修员', '127.0.0.1', '37', '2020-04-16 21:49:05');
INSERT INTO `user_log` VALUES ('2468', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '30', '2020-04-16 21:49:06');
INSERT INTO `user_log` VALUES ('2469', '3', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '18', '2020-04-16 21:49:41');
INSERT INTO `user_log` VALUES ('2470', '1', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"kvmg\",\"username\":\"user\"}', 'user', '127.0.0.1', '36', '2020-04-16 21:52:06');
INSERT INTO `user_log` VALUES ('2471', '1', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '31', '2020-04-16 21:52:32');
INSERT INTO `user_log` VALUES ('2472', '1', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '25', '2020-04-16 21:52:36');
INSERT INTO `user_log` VALUES ('2473', '2', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"h366\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '20', '2020-04-16 21:55:52');
INSERT INTO `user_log` VALUES ('2474', '2', '查看所有用户', '0', '/user', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '96', '2020-04-16 22:13:29');
INSERT INTO `user_log` VALUES ('2475', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '55', '2020-04-16 22:13:37');
INSERT INTO `user_log` VALUES ('2476', '2', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '28', '2020-04-16 22:13:45');
INSERT INTO `user_log` VALUES ('2477', '2', '用户登录', '0', '/user', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '131', '2020-04-16 22:54:02');
INSERT INTO `user_log` VALUES ('2478', '2', '查看所有用户', '0', '/user', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '72', '2020-04-16 22:54:04');
INSERT INTO `user_log` VALUES ('2479', '2', '查看所有用户', '0', '/user', 'GET', '{\"search\":\"广东省\",\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '39', '2020-04-16 22:54:10');
INSERT INTO `user_log` VALUES ('2480', '2', '用户登录', '0', '/user', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '134', '2020-04-16 22:58:39');
INSERT INTO `user_log` VALUES ('2481', '2', '查看所有用户', '0', '/user', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '67', '2020-04-16 22:58:40');
INSERT INTO `user_log` VALUES ('2482', '2', '查看所有用户', '0', '/user', 'GET', '{\"search\":\"广东省\",\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '26', '2020-04-16 22:58:50');
INSERT INTO `user_log` VALUES ('2483', '2', '查看所有用户', '0', '/user', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '24', '2020-04-16 22:59:03');
INSERT INTO `user_log` VALUES ('2484', '1', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"berg\",\"username\":\"user\"}', 'user', '127.0.0.1', '44', '2020-04-16 23:27:16');
INSERT INTO `user_log` VALUES ('2485', '1', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '48', '2020-04-16 23:27:24');
INSERT INTO `user_log` VALUES ('2486', '2', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"5d9q\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '65', '2020-04-16 23:28:24');
INSERT INTO `user_log` VALUES ('2487', '2', '用户登录', '0', '/log/all', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '43', '2020-04-17 00:16:50');
INSERT INTO `user_log` VALUES ('2488', '2', '超管查询日志', '0', '/log/all', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '18', '2020-04-17 00:16:51');
INSERT INTO `user_log` VALUES ('2489', '2', '用户登录', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '166', '2020-04-17 00:49:07');
INSERT INTO `user_log` VALUES ('2490', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '1257', '2020-04-17 00:49:09');
INSERT INTO `user_log` VALUES ('2491', '2', '用户登录', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '168', '2020-04-17 01:20:33');
INSERT INTO `user_log` VALUES ('2492', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '1914', '2020-04-17 01:20:34');
INSERT INTO `user_log` VALUES ('2493', '2', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '72', '2020-04-17 01:20:36');
INSERT INTO `user_log` VALUES ('2494', '2', '添加故障信息', '0', '/fault', 'POST', '{\"address\":\"ad\",\"province\":\"北京市\",\"submit\":\"1\",\"city\":\"\",\"zone\":\"北京市\",\"phone\":\"dasd\",\"county\":\"\",\"describe\":\"dadas\"}', 'admin', '127.0.0.1', '26', '2020-04-17 01:20:43');
INSERT INTO `user_log` VALUES ('2495', '2', '用户登录', '0', '/fault', 'POST', '{\"address\":\"ddaad\",\"province\":\"北京市\",\"submit\":\"1\",\"city\":\"北京市\",\"zone\":\"北京市北京市西城区\",\"phone\":\"dada\",\"county\":\"西城区\",\"describe\":\"dadada\"}', 'admin', '127.0.0.1', '147', '2020-04-17 01:25:00');
INSERT INTO `user_log` VALUES ('2496', '2', '添加故障信息', '0', '/fault', 'POST', '{\"address\":\"da\",\"province\":\"北京市\",\"submit\":\"1\",\"city\":\"北京市\",\"zone\":\"北京市北京市东城区\",\"phone\":\"dad\",\"county\":\"东城区\",\"describe\":\"dasdas\"}', 'admin', '127.0.0.1', '46', '2020-04-17 01:25:08');
INSERT INTO `user_log` VALUES ('2497', '2', '用户登录', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '131', '2020-04-17 01:28:26');
INSERT INTO `user_log` VALUES ('2498', '2', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '49', '2020-04-17 01:28:28');
INSERT INTO `user_log` VALUES ('2499', '2', '查询故障信息', '0', '/fault', 'GET', '{\"search\":\"admin\",\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '20', '2020-04-17 01:28:36');
INSERT INTO `user_log` VALUES ('2500', '2', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '25', '2020-04-17 01:28:46');
INSERT INTO `user_log` VALUES ('2501', '2', '用户登录', '0', '/isLife', 'GET', '{}', 'admin', '127.0.0.1', '152', '2020-04-17 08:14:00');
INSERT INTO `user_log` VALUES ('2502', '2', '查看所有用户', '0', '/user', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '73', '2020-04-17 08:15:17');
INSERT INTO `user_log` VALUES ('2503', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '61', '2020-04-17 08:15:25');
INSERT INTO `user_log` VALUES ('2504', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"search\":\"电梯类型\",\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '29', '2020-04-17 08:15:33');
INSERT INTO `user_log` VALUES ('2505', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"search\":\"电梯类型\",\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '21', '2020-04-17 08:15:40');
INSERT INTO `user_log` VALUES ('2506', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"search\":\"电梯类型\",\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '23', '2020-04-17 08:16:58');
INSERT INTO `user_log` VALUES ('2507', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '35', '2020-04-17 08:17:34');
INSERT INTO `user_log` VALUES ('2508', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"search\":\"乘客\",\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '33', '2020-04-17 08:17:44');
INSERT INTO `user_log` VALUES ('2509', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"search\":\"电梯\",\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '26', '2020-04-17 08:17:53');
INSERT INTO `user_log` VALUES ('2510', '2', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '31', '2020-04-17 08:18:07');
INSERT INTO `user_log` VALUES ('2511', '2', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '14', '2020-04-17 08:18:34');
INSERT INTO `user_log` VALUES ('2512', '2', '查询故障信息', '0', '/fault', 'GET', '{\"search\":\"广东省深圳市\",\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '18', '2020-04-17 08:18:42');
INSERT INTO `user_log` VALUES ('2513', '2', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '16', '2020-04-17 08:18:46');
INSERT INTO `user_log` VALUES ('2514', '2', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '17', '2020-04-17 08:18:57');
INSERT INTO `user_log` VALUES ('2515', '2', '用户登录', '0', '/fault', 'GET', '{\"search\":\"广东省深圳市\",\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '110', '2020-04-17 08:22:12');
INSERT INTO `user_log` VALUES ('2516', '2', '查询故障信息', '0', '/fault', 'GET', '{\"search\":\"广东省深圳市\",\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '128', '2020-04-17 08:22:13');
INSERT INTO `user_log` VALUES ('2517', '2', '查询故障信息', '0', '/fault', 'GET', '{\"search\":\"广东省深圳市\",\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '26', '2020-04-17 08:22:14');
INSERT INTO `user_log` VALUES ('2518', '2', '查询故障信息', '0', '/fault', 'GET', '{\"search\":\"广东省深圳市\",\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '21', '2020-04-17 08:22:15');
INSERT INTO `user_log` VALUES ('2519', '2', '查询故障信息', '0', '/fault', 'GET', '{\"search\":\"广东省深圳市\",\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '21', '2020-04-17 08:22:16');
INSERT INTO `user_log` VALUES ('2520', '2', '查询故障信息', '0', '/fault', 'GET', '{\"search\":\"广东省深圳市\",\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '18', '2020-04-17 08:22:16');
INSERT INTO `user_log` VALUES ('2521', '2', '查询故障信息', '0', '/fault', 'GET', '{\"search\":\"广东省深圳市\",\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '19', '2020-04-17 08:22:16');
INSERT INTO `user_log` VALUES ('2522', '2', '用户登录', '0', '/fault', 'GET', '{\"search\":\"广东省深圳市\",\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '274', '2020-04-17 08:23:38');
INSERT INTO `user_log` VALUES ('2523', '2', '查询故障信息', '0', '/fault', 'GET', '{\"search\":\"广东省深圳市\",\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '46', '2020-04-17 08:23:39');
INSERT INTO `user_log` VALUES ('2524', '2', '查询故障信息', '0', '/fault', 'GET', '{\"search\":\"细节\",\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '20', '2020-04-17 08:23:45');
INSERT INTO `user_log` VALUES ('2525', '2', '查询零件信息', '0', '/part', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '14', '2020-04-17 08:23:53');
INSERT INTO `user_log` VALUES ('2526', '2', '查询零件信息', '0', '/part', 'GET', '{\"search\":\"控制柜\",\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '12', '2020-04-17 08:24:00');
INSERT INTO `user_log` VALUES ('2527', '2', '查询零件信息', '0', '/part', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '13', '2020-04-17 08:24:21');
INSERT INTO `user_log` VALUES ('2528', '2', '查询零件信息', '0', '/part', 'GET', '{\"search\":\"控制柜\",\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '12', '2020-04-17 08:24:26');
INSERT INTO `user_log` VALUES ('2529', '2', '用户登录', '0', '/record', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '264', '2020-04-17 08:26:56');
INSERT INTO `user_log` VALUES ('2530', '2', '用户登录', '0', '/record', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '147', '2020-04-17 08:29:17');
INSERT INTO `user_log` VALUES ('2531', '2', '超管查询日志', '0', '/log/all', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '31', '2020-04-17 08:29:29');
INSERT INTO `user_log` VALUES ('2532', '2', '超管查询日志', '0', '/log/all', 'GET', '{\"serch\":\"查询故障信息\",\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '30', '2020-04-17 08:29:41');
INSERT INTO `user_log` VALUES ('2533', '1', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"e3sl\",\"username\":\"user\"}', 'user', '127.0.0.1', '182', '2020-04-17 08:30:10');
INSERT INTO `user_log` VALUES ('2534', '1', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '39', '2020-04-17 08:30:17');
INSERT INTO `user_log` VALUES ('2535', '1', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '17', '2020-04-17 08:30:36');
INSERT INTO `user_log` VALUES ('2536', '1', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '26', '2020-04-17 08:32:02');
INSERT INTO `user_log` VALUES ('2537', '1', '查询故障信息', '0', '/fault', 'GET', '{\"search\":\"大东区\",\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '17', '2020-04-17 08:32:05');
INSERT INTO `user_log` VALUES ('2538', '1', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '29', '2020-04-17 08:32:08');
INSERT INTO `user_log` VALUES ('2539', '1', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '21', '2020-04-17 08:32:29');
INSERT INTO `user_log` VALUES ('2540', '1', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"search\":\"北京市\",\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '19', '2020-04-17 08:32:32');
INSERT INTO `user_log` VALUES ('2541', '1', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"search\":\"北京市\",\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '12', '2020-04-17 08:32:43');
INSERT INTO `user_log` VALUES ('2542', '1', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '20', '2020-04-17 08:32:55');
INSERT INTO `user_log` VALUES ('2543', '1', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"search\":\"南极\",\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '16', '2020-04-17 08:33:00');
INSERT INTO `user_log` VALUES ('2544', '1', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"search\":\"南极\",\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '12', '2020-04-17 08:33:09');
INSERT INTO `user_log` VALUES ('2545', '1', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '19', '2020-04-17 08:34:12');
INSERT INTO `user_log` VALUES ('2546', '1', '用户登录', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '185', '2020-04-17 09:00:46');
INSERT INTO `user_log` VALUES ('2547', '1', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '73', '2020-04-17 09:00:48');
INSERT INTO `user_log` VALUES ('2548', '2', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"pdey\",\"username\":\"admin\"}', 'admin', '127.0.0.1', '48', '2020-04-17 09:04:30');
INSERT INTO `user_log` VALUES ('2549', '2', '查询零件信息', '0', '/part', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '17', '2020-04-17 09:04:48');
INSERT INTO `user_log` VALUES ('2550', '2', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '37', '2020-04-17 09:04:51');
INSERT INTO `user_log` VALUES ('2551', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '93', '2020-04-17 09:04:54');
INSERT INTO `user_log` VALUES ('2552', '2', '添加维保信息', '0', '/maintenanceService', 'POST', '{\"result\":\"大东区\",\"eid\":\"9\",\"name\":\"ad\",\"time\":\"2020-04-07 00:00\"}', 'admin', '127.0.0.1', '18', '2020-04-17 09:05:33');
INSERT INTO `user_log` VALUES ('2553', '2', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'admin', '127.0.0.1', '36', '2020-04-17 09:05:34');
INSERT INTO `user_log` VALUES ('2554', '1', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"2uv8\",\"username\":\"user\"}', 'user', '127.0.0.1', '42', '2020-04-17 09:06:25');
INSERT INTO `user_log` VALUES ('2555', '1', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '22', '2020-04-17 09:06:30');
INSERT INTO `user_log` VALUES ('2556', '1', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"2\"}', 'user', '127.0.0.1', '9', '2020-04-17 09:06:33');
INSERT INTO `user_log` VALUES ('2557', '1', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '13', '2020-04-17 09:06:37');
INSERT INTO `user_log` VALUES ('2558', '1', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '18', '2020-04-17 09:07:55');
INSERT INTO `user_log` VALUES ('2559', '1', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"2\"}', 'user', '127.0.0.1', '5', '2020-04-17 09:07:57');
INSERT INTO `user_log` VALUES ('2560', '1', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"search\":\"北京\",\"limit\":\"15\",\"page\":\"1\"}', 'user', '127.0.0.1', '23', '2020-04-17 09:08:10');
INSERT INTO `user_log` VALUES ('2561', '3', '用户登录', '0', '/login', 'POST', '{\"password\":\"密码不可见\",\"captcha\":\"7hpg\",\"username\":\"维修员\"}', '维修员', '127.0.0.1', '20', '2020-04-17 09:08:29');
INSERT INTO `user_log` VALUES ('2562', '3', '查询维保信息', '0', '/maintenanceService', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '14', '2020-04-17 09:08:37');
INSERT INTO `user_log` VALUES ('2563', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '26', '2020-04-17 09:08:38');
INSERT INTO `user_log` VALUES ('2564', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '18', '2020-04-17 09:08:41');
INSERT INTO `user_log` VALUES ('2565', '3', '查询故障信息', '0', '/fault', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '11', '2020-04-17 09:09:03');
INSERT INTO `user_log` VALUES ('2566', '3', '查询故障信息', '0', '/fault', 'GET', '{\"search\":\"大北区\",\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '11', '2020-04-17 09:09:12');
INSERT INTO `user_log` VALUES ('2567', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"search\":\"111\",\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '31', '2020-04-17 09:09:52');
INSERT INTO `user_log` VALUES ('2568', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"search\":\"11111的撒的撒\",\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '27', '2020-04-17 09:09:57');
INSERT INTO `user_log` VALUES ('2569', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '20', '2020-04-17 09:10:04');
INSERT INTO `user_log` VALUES ('2570', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"search\":\"大师傅才发1\",\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '12', '2020-04-17 09:10:06');
INSERT INTO `user_log` VALUES ('2571', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"search\":\"大师傅才发1\",\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '24', '2020-04-17 09:10:14');
INSERT INTO `user_log` VALUES ('2572', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"search\":\"大师傅才发1\",\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '28', '2020-04-17 09:10:28');
INSERT INTO `user_log` VALUES ('2573', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '15', '2020-04-17 09:10:51');
INSERT INTO `user_log` VALUES ('2574', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"search\":\"dadas\",\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '26', '2020-04-17 09:10:58');
INSERT INTO `user_log` VALUES ('2575', '3', '用户登录', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '147', '2020-04-17 09:17:02');
INSERT INTO `user_log` VALUES ('2576', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '1650', '2020-04-17 09:17:05');
INSERT INTO `user_log` VALUES ('2577', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"search\":\"111\",\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '102', '2020-04-17 09:17:14');
INSERT INTO `user_log` VALUES ('2578', '3', '用户登录', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '136', '2020-04-17 09:18:23');
INSERT INTO `user_log` VALUES ('2579', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '1754', '2020-04-17 09:18:24');
INSERT INTO `user_log` VALUES ('2580', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"search\":\"111\",\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '38', '2020-04-17 09:18:28');
INSERT INTO `user_log` VALUES ('2581', '3', '查询电梯信息', '0', '/elevator', 'GET', '{\"search\":\"111大大发\",\"limit\":\"15\",\"page\":\"1\"}', '维修员', '127.0.0.1', '21', '2020-04-17 09:18:31');
