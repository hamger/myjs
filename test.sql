/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50633
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50633
File Encoding         : 65001

Date: 2018-01-23 21:21:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for intro
-- ----------------------------
DROP TABLE IF EXISTS `intro`;
CREATE TABLE `intro` (
  `id` int(11) NOT NULL,
  `intro` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of intro
-- ----------------------------
INSERT INTO `intro` VALUES ('0', 'fasfasfaf');
INSERT INTO `intro` VALUES ('1', 'xcbxcbxcb');

-- ----------------------------
-- Table structure for monthhot
-- ----------------------------
DROP TABLE IF EXISTS `monthhot`;
CREATE TABLE `monthhot` (
  `author` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `title` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `time` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `read` int(11) NOT NULL,
  `comment` int(11) NOT NULL,
  `like` int(11) NOT NULL,
  `pay` int(11) NOT NULL,
  `src` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of monthhot
-- ----------------------------
INSERT INTO `monthhot` VALUES ('沉默的钢管', '怎么老是你', '8天前', '4333', '123', '134', '23', 'url(../../static/vue-demo-hot.jpg)');
INSERT INTO `monthhot` VALUES ('翻起裙摆', '实践出老衲', '7天前', '1234', '123', '123', '123', 'url(../../static/vue-demo-hot.jpg)');
INSERT INTO `monthhot` VALUES ('文化如玉', '他说你是笨蛋', '9天前', '2345', '234', '243', '32', 'url(../../static/vue-demo-hot.jpg)');
INSERT INTO `monthhot` VALUES ('键盘大师', '跪键盘去', '3天前', '4333', '1234', '1234', '234', 'url(../../static/vue-demo-new.jpg)');
INSERT INTO `monthhot` VALUES ('大明湖', '跨域请求的方式', '7天前', '1234', '123', '123', '123', 'url(../../static/vue-demo-new.jpg)');
INSERT INTO `monthhot` VALUES ('爱琴', '发光的羽毛', '9天前', '2345', '234', '243', '32', 'url(../../static/vue-demo-new.jpg)');
INSERT INTO `monthhot` VALUES ('阿俊', '这是你的益达', '3天前', '43332', '241', '134', '23', 'url(../../static/vue-demo-daily.jpg)');
INSERT INTO `monthhot` VALUES ('紫蓓', '如果当初那样做的话', '7天前', '1234', '123', '123', '123', 'url(../../static/vue-demo-daily.jpg)');
INSERT INTO `monthhot` VALUES ('慕容晓晓', '岁月的魔力', '9天前', '2345', '234', '243', '32', 'url(../../static/vue-demo-daily.jpg)');

-- ----------------------------
-- Table structure for new
-- ----------------------------
DROP TABLE IF EXISTS `new`;
CREATE TABLE `new` (
  `author` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `title` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `time` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `read` int(11) NOT NULL,
  `comment` int(11) NOT NULL,
  `like` int(11) NOT NULL,
  `pay` int(11) NOT NULL,
  `src` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of new
-- ----------------------------
INSERT INTO `new` VALUES ('开始的微笑', '灯光下的小樊', '3天前', '4333', '1234', '1234', '234', 'url(../../static/vue-demo-hot.jpg)');
INSERT INTO `new` VALUES ('晓得', '我不会输的', '7天前', '1234', '123', '123', '123', 'url(../../static/vue-demo-hot.jpg)');
INSERT INTO `new` VALUES ('舍得', '放下你的包袱', '9天前', '2345', '234', '243', '32', 'url(../../static/vue-demo-hot.jpg)');
INSERT INTO `new` VALUES ('键盘大师', '跪键盘去', '3天前', '4333', '1234', '1234', '234', 'url(../../static/vue-demo-new.jpg)');
INSERT INTO `new` VALUES ('大明湖', '跨域请求的方式', '7天前', '1234', '123', '123', '123', 'url(../../static/vue-demo-new.jpg)');
INSERT INTO `new` VALUES ('爱琴', '发光的羽毛', '9天前', '2345', '234', '243', '32', 'url(../../static/vue-demo-new.jpg)');
INSERT INTO `new` VALUES ('阿俊', '这是你的益达', '3天前', '43332', '241', '134', '23', 'url(../../static/vue-demo-daily.jpg)');
INSERT INTO `new` VALUES ('紫蓓', '如果当初那样做的话', '7天前', '1234', '123', '123', '123', 'url(../../static/vue-demo-daily.jpg)');
INSERT INTO `new` VALUES ('慕容晓晓', '岁月的魔力', '9天前', '2345', '234', '243', '32', 'url(../../static/vue-demo-daily.jpg)');

-- ----------------------------
-- Table structure for publish
-- ----------------------------
DROP TABLE IF EXISTS `publish`;
CREATE TABLE `publish` (
  `author` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `title` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `time` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `read` int(11) NOT NULL,
  `comment` int(11) NOT NULL,
  `like` int(11) NOT NULL,
  `pay` int(11) NOT NULL,
  `src` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of publish
-- ----------------------------
INSERT INTO `publish` VALUES ('暗示法撒', '地方的知识', '4天前', '4333', '123', '134', '23', 'url(../../static/vue-demo-hot.jpg)');
INSERT INTO `publish` VALUES ('保险宣传', '千万人群中的艺术', '7天前', '1234', '123', '123', '123', 'url(../../static/vue-demo-hot.jpg)');
INSERT INTO `publish` VALUES ('华盛顿周报', '富兰克林赚钱的秘密', '2天前', '2345', '234', '243', '32', 'url(../../static/vue-demo-hot.jpg)');
INSERT INTO `publish` VALUES ('键盘大师', '跪键盘去', '3天前', '4333', '1234', '1234', '234', 'url(../../static/vue-demo-new.jpg)');
INSERT INTO `publish` VALUES ('大明湖', '跨域请求的方式', '7天前', '1234', '123', '123', '123', 'url(../../static/vue-demo-new.jpg)');
INSERT INTO `publish` VALUES ('爱琴', '发光的羽毛', '9天前', '2345', '234', '243', '32', 'url(../../static/vue-demo-new.jpg)');
INSERT INTO `publish` VALUES ('阿俊', '这是你的益达', '3天前', '43332', '241', '134', '23', 'url(../../static/vue-demo-daily.jpg)');
INSERT INTO `publish` VALUES ('紫蓓', '如果当初那样做的话', '7天前', '1234', '123', '123', '123', 'url(../../static/vue-demo-daily.jpg)');
INSERT INTO `publish` VALUES ('慕容晓晓', '岁月的魔力', '9天前', '2345', '234', '243', '32', 'url(../../static/vue-demo-daily.jpg)');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户名ID',
  `account` varchar(255) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('3', 'asdf', 'asdf', 'asdf');
INSERT INTO `user` VALUES ('4', 'dfgh', 'dfgh', 'dfgh');
INSERT INTO `user` VALUES ('5', 'hanger@163.com', 'hanger', '163');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `account` varchar(255) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `id` int(255) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('123@qq.com', 'Hanger', '123', '1');
INSERT INTO `users` VALUES ('1234@qq.com', 'Tom', '1234', '2');
INSERT INTO `users` VALUES ('8290@qq.com', '8290', '8290', '3');
INSERT INTO `users` VALUES ('1234@163.com', 'Alice', 'ddd', '4');
INSERT INTO `users` VALUES ('520@qq.com', 'Hanger520', '520', '5');
INSERT INTO `users` VALUES ('123mmm@qq.com', 'css', 'css', '6');
INSERT INTO `users` VALUES ('q34q', 'qwerqwer', 'wqerqr', '7');
INSERT INTO `users` VALUES ('123m@qq.com', 'css2', 'css2', '8');
INSERT INTO `users` VALUES ('sfa', 'sfsg', 'sdfg', '9');
INSERT INTO `users` VALUES ('hanger@163.com', 'hanger163', 'hanger163', '10');
INSERT INTO `users` VALUES ('hanger@1633.com', 'hanger1633', 'hanger1633', '11');
INSERT INTO `users` VALUES ('hanger@16334.com', 'hanger16334', 'hanger16334', '12');
INSERT INTO `users` VALUES ('hanger@1.com', 'hanger1', 'hanger1', '13');
INSERT INTO `users` VALUES ('hanger@21.com', 'hanger21', 'hanger21', '14');
INSERT INTO `users` VALUES ('hanger@211.com', 'hanger211', 'hanger211', '15');

-- ----------------------------
-- Table structure for weekhot
-- ----------------------------
DROP TABLE IF EXISTS `weekhot`;
CREATE TABLE `weekhot` (
  `author` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `title` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `time` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `read` int(11) NOT NULL,
  `comment` int(11) NOT NULL,
  `like` int(11) NOT NULL,
  `pay` int(11) NOT NULL,
  `src` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of weekhot
-- ----------------------------
INSERT INTO `weekhot` VALUES ('小凡', '君子之交淡如水', '8天前', '4333', '123', '134', '23', 'url(../../static/vue-demo-hot.jpg)');
INSERT INTO `weekhot` VALUES ('小法', '金子会发光', '7天前', '1234', '123', '123', '123', 'url(../../static/vue-demo-hot.jpg)');
INSERT INTO `weekhot` VALUES ('小范', '班花的故事', '9天前', '2345', '234', '243', '32', 'url(../../static/vue-demo-hot.jpg)');
INSERT INTO `weekhot` VALUES ('键盘大师', '跪键盘去', '3天前', '4333', '1234', '1234', '234', 'url(../../static/vue-demo-new.jpg)');
INSERT INTO `weekhot` VALUES ('大明湖', '跨域请求的方式', '7天前', '1234', '123', '123', '123', 'url(../../static/vue-demo-new.jpg)');
INSERT INTO `weekhot` VALUES ('爱琴', '发光的羽毛', '9天前', '2345', '234', '243', '32', 'url(../../static/vue-demo-new.jpg)');
INSERT INTO `weekhot` VALUES ('阿俊', '这是你的益达', '3天前', '43332', '241', '134', '23', 'url(../../static/vue-demo-daily.jpg)');
INSERT INTO `weekhot` VALUES ('紫蓓', '如果当初那样做的话', '7天前', '1234', '123', '123', '123', 'url(../../static/vue-demo-daily.jpg)');
INSERT INTO `weekhot` VALUES ('慕容晓晓', '岁月的魔力', '9天前', '2345', '234', '243', '32', 'url(../../static/vue-demo-daily.jpg)');
