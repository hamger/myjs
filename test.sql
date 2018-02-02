/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50633
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50633
File Encoding         : 65001

Date: 2018-02-02 21:17:37
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
INSERT INTO `monthhot` VALUES ('爱琴', '发光的羽毛', '9天前', '2345', '234', '243', '32', 'url(../../static/vue-demo-new.jpg)');
INSERT INTO `monthhot` VALUES ('阿俊', '这是你的益达', '3天前', '43332', '241', '134', '23', 'url(../../static/vue-demo-daily.jpg)');
INSERT INTO `monthhot` VALUES ('紫蓓', '如果当初那样做的话', '7天前', '1234', '123', '123', '123', 'url(../../static/vue-demo-daily.jpg)');
INSERT INTO `monthhot` VALUES ('慕容晓晓', '岁月的魔力', '9天前', '2345', '234', '243', '32', 'url(../../static/vue-demo-daily.jpg)');
INSERT INTO `monthhot` VALUES ('暗示法撒', '地方的知识', '4天前', '4333', '123', '134', '23', 'url(../../static/vue-demo-hot.jpg)');
INSERT INTO `monthhot` VALUES ('保险宣传', '千万人群中的艺术', '7天前', '1234', '123', '123', '123', 'url(../../static/vue-demo-hot.jpg)');
INSERT INTO `monthhot` VALUES ('华盛顿周报', '富兰克林赚钱的秘密', '2天前', '2345', '234', '243', '32', 'url(../../static/vue-demo-hot.jpg)');
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
INSERT INTO `new` VALUES ('阿俊', '这是你的益达', '3天前', '43332', '241', '134', '23', 'url(../../static/vue-demo-daily.jpg)');
INSERT INTO `new` VALUES ('紫蓓', '如果当初那样做的话', '7天前', '1234', '123', '123', '123', 'url(../../static/vue-demo-daily.jpg)');
INSERT INTO `new` VALUES ('慕容晓晓', '岁月的魔力', '9天前', '2345', '234', '243', '32', 'url(../../static/vue-demo-daily.jpg)');
INSERT INTO `new` VALUES ('暗示法撒', '地方的知识', '4天前', '4333', '123', '134', '23', 'url(../../static/vue-demo-hot.jpg)');
INSERT INTO `new` VALUES ('保险宣传', '千万人群中的艺术', '7天前', '1234', '123', '123', '123', 'url(../../static/vue-demo-hot.jpg)');
INSERT INTO `new` VALUES ('华盛顿周报', '富兰克林赚钱的秘密', '2天前', '2345', '234', '243', '32', 'url(../../static/vue-demo-hot.jpg)');
INSERT INTO `new` VALUES ('键盘大师', '跪键盘去', '3天前', '4333', '1234', '1234', '234', 'url(../../static/vue-demo-new.jpg)');
INSERT INTO `new` VALUES ('大明湖', '跨域请求的方式', '7天前', '1234', '123', '123', '123', 'url(../../static/vue-demo-new.jpg)');
INSERT INTO `new` VALUES ('爱琴', '发光的羽毛', '9天前', '2345', '234', '243', '32', 'url(../../static/vue-demo-new.jpg)');
INSERT INTO `new` VALUES ('阿俊', '这是你的益达', '3天前', '43332', '241', '134', '23', 'url(../../static/vue-demo-daily.jpg)');
INSERT INTO `new` VALUES ('紫蓓', '如果当初那样做的话', '7天前', '1234', '123', '123', '123', 'url(../../static/vue-demo-daily.jpg)');
INSERT INTO `new` VALUES ('慕容晓晓', '岁月的魔力', '9天前', '2345', '234', '243', '32', 'url(../../static/vue-demo-daily.jpg)');
INSERT INTO `new` VALUES ('暗示法撒', '地方的知识', '4天前', '4333', '123', '134', '23', 'url(../../static/vue-demo-hot.jpg)');
INSERT INTO `new` VALUES ('保险宣传', '千万人群中的艺术', '7天前', '1234', '123', '123', '123', 'url(../../static/vue-demo-hot.jpg)');
INSERT INTO `new` VALUES ('华盛顿周报', '富兰克林赚钱的秘密', '2天前', '2345', '234', '243', '32', 'url(../../static/vue-demo-hot.jpg)');
INSERT INTO `new` VALUES ('键盘大师', '跪键盘去', '3天前', '4333', '1234', '1234', '234', 'url(../../static/vue-demo-new.jpg)');
INSERT INTO `new` VALUES ('大明湖', '跨域请求的方式', '7天前', '1234', '123', '123', '123', 'url(../../static/vue-demo-new.jpg)');
INSERT INTO `new` VALUES ('爱琴', '发光的羽毛', '9天前', '2345', '234', '243', '32', 'url(../../static/vue-demo-new.jpg)');
INSERT INTO `new` VALUES ('阿俊', '这是你的益达', '3天前', '43332', '241', '134', '23', 'url(../../static/vue-demo-daily.jpg)');
INSERT INTO `new` VALUES ('紫蓓', '如果当初那样做的话', '7天前', '1234', '123', '123', '123', 'url(../../static/vue-demo-daily.jpg)');
INSERT INTO `new` VALUES ('慕容晓晓', '岁月的魔力', '9天前', '2345', '234', '243', '32', 'url(../../static/vue-demo-daily.jpg)');
INSERT INTO `new` VALUES ('暗示法撒', '地方的知识', '4天前', '4333', '123', '134', '23', 'url(../../static/vue-demo-hot.jpg)');
INSERT INTO `new` VALUES ('保险宣传', '千万人群中的艺术', '7天前', '1234', '123', '123', '123', 'url(../../static/vue-demo-hot.jpg)');
INSERT INTO `new` VALUES ('华盛顿周报', '富兰克林赚钱的秘密', '2天前', '2345', '234', '243', '32', 'url(../../static/vue-demo-hot.jpg)');
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
-- Table structure for topic
-- ----------------------------
DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic` (
  `title` varchar(255) NOT NULL,
  `info` varchar(255) NOT NULL,
  `articles` int(11) NOT NULL,
  `concern` int(11) NOT NULL,
  `keys` varchar(255) NOT NULL,
  `time` datetime NOT NULL COMMENT 'YYYY-MM-DD HH:MM:SS',
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of topic
-- ----------------------------
INSERT INTO `topic` VALUES ('游戏', '玩转简书的第一步，从这个专题开始。\\\r\n				  想上首页热门榜么？好内容想被更多人看到么？来投稿吧！\\\r\n				  如果被拒也不要灰心哦～入选文章会进一个队列挨个上首页，请耐心等待。\\\r\n				  投稿必须原创。如果发现有非...', '10233', '1217', '故事、连载', '2017-12-04 16:00:50', '../../static/topic_1.jpg');
INSERT INTO `topic` VALUES ('诗歌', '诗，让你感受自己的心灵。\\\r\n				 专题主编：苏锦年 投稿须知：\\\r\n				 1.本专题收录古诗、词、现代诗以及诗词点评及指导。\\\r\n                 2.内容必须为原创，切勿用其他诗人的诗句。\\\r\n                 3.文章排版整洁，注意...', '3542', '1463', '诗歌', '2018-01-22 16:02:19', '../../static/topic_3.jpg');
INSERT INTO `topic` VALUES ('互联网', '@IT 专题 由 IT大分类，转定位于IT·互联网行业观察与思考，数码产品极客体验。          主编：向右奔跑 http://www.jianshu.com/users/54b5900965ea...', '8654', '1118', '互联网、产品、科技', '2018-02-01 16:03:42', '../../static/topic_2.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('123@qq.com', 'Hanger', '123', '1');
INSERT INTO `users` VALUES ('1234@qq.com', 'Tom', '1234', '2');
INSERT INTO `users` VALUES ('1234@163.com', 'Alice', 'ddd', '4');
INSERT INTO `users` VALUES ('666@tmail.com', 'Alsanda', '123', '17');
INSERT INTO `users` VALUES ('zxcv', 'zxcvz', '58d17e8b3add72032cf54a2f865e3dc4', '18');
INSERT INTO `users` VALUES ('cvbn', 'cvbn', '665bc340f8bf7f568bbdb291867120b5', '19');
INSERT INTO `users` VALUES ('gdhj', 'fghj', '1b2b4c6643b5c96a07abdf16fb2220fe', '20');

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
INSERT INTO `weekhot` VALUES ('暗示法撒', '地方的知识', '4天前', '4333', '123', '134', '23', 'url(../../static/vue-demo-hot.jpg)');
INSERT INTO `weekhot` VALUES ('保险宣传', '千万人群中的艺术', '7天前', '1234', '123', '123', '123', 'url(../../static/vue-demo-hot.jpg)');
INSERT INTO `weekhot` VALUES ('华盛顿周报', '富兰克林赚钱的秘密', '2天前', '2345', '234', '243', '32', 'url(../../static/vue-demo-hot.jpg)');
INSERT INTO `weekhot` VALUES ('键盘大师', '跪键盘去', '3天前', '4333', '1234', '1234', '234', 'url(../../static/vue-demo-new.jpg)');
INSERT INTO `weekhot` VALUES ('大明湖', '跨域请求的方式', '7天前', '1234', '123', '123', '123', 'url(../../static/vue-demo-new.jpg)');
INSERT INTO `weekhot` VALUES ('爱琴', '发光的羽毛', '9天前', '2345', '234', '243', '32', 'url(../../static/vue-demo-new.jpg)');
INSERT INTO `weekhot` VALUES ('阿俊', '这是你的益达', '3天前', '43332', '241', '134', '23', 'url(../../static/vue-demo-daily.jpg)');
INSERT INTO `weekhot` VALUES ('紫蓓', '如果当初那样做的话', '7天前', '1234', '123', '123', '123', 'url(../../static/vue-demo-daily.jpg)');
INSERT INTO `weekhot` VALUES ('慕容晓晓', '岁月的魔力', '9天前', '2345', '234', '243', '32', 'url(../../static/vue-demo-daily.jpg)');
