/*
 Navicat MySQL Data Transfer

 Source Server         : Hanger
 Source Server Version : 50717
 Source Host           : localhost
 Source Database       : test

 Target Server Version : 50717
 File Encoding         : utf-8

 Date: 02/25/2018 18:37:59 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `articles`
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `publish_time` datetime NOT NULL,
  `read_num` int(11) DEFAULT NULL,
  `like_num` int(11) DEFAULT NULL,
  `comment_num` int(11) DEFAULT NULL,
  `cover` varchar(255) DEFAULT '',
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `articles`
-- ----------------------------
BEGIN;
INSERT INTO `articles` VALUES ('1', '灯光下的小樊', '你开心就好', '这今天，大范围的降温和雨雪冰冻天气，早已让大半个国度陷入了冷冻模式，今晚，坐在电脑前，再一次看那位我曾经认为德高望重的老者的信，心中更加寒冷，甚至有点不寒而栗。我在想，这封信，该寒了多少人的心啊！如果一切按那封信设想，那些嫁给或者娶了陆军官兵的人，真是倒了八辈子霉。这封信，我看到了军队改革的艰难！这封信不像是一封慰问信， 倒是向上世纪六十七年代的政治教育提纲，说理论水平吧，基本没有，倒都是一些大实话，看似朴素，其实是与大趋势背道而驰，与军队建设的大方向相向而行。\n\n以前陆军有个称号叫土八路，广大陆军官兵普遍表示不服，但是从这封信后，我终于明白了原因。当前，我们的军队正向着职业化迈进，而职业化的前提是专业化，专业化必然带来的是精英化！而我们从这封信中来看，上层对基层军人军属的定义仍然是土老帽。对军人配偶的描绘依然是农村种地的无知妇女。\n\n作者：扫地僧兵\n链接：https://www.jianshu.com/p/ae9852a9b718\n來源：简书\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。', '2017-12-11 20:01:09', '312', '122', '12', '../../static/article_1.jpg', '0'), ('2', '阿俊', '发光的羽毛', '在国家危急存亡之秋，在人民水深火热之时，“富家子弟”沈光耀经过层层选拔，顺利通过招飞的严格测试，立志参军入伍，报效祖国。\n\n当沈母听到这个消息时，日夜兼程，第一时间赶到沈光耀身边，对他说下了这样一番话：当初你离家千里，来到这个地方读书，你父亲和我都没有反对过，因为，我们想你能享受到人生的乐趣，比如读万卷书行万里路，比如同你喜欢的女孩子结婚生子。注意不是给我增添子孙，而是你自己，能够享受为人父母的乐趣，你一生所要追求的功名利禄，没有什么是你的祖上没经历过的，那些只不过是人生的幻光。我怕，你还没想好怎么过这一生，你的命就没了啊！\n\n一位母亲对儿子的深切希望、呵护、关爱、担心，真情流露，溢于言表，令人动容。\n\n如果可以，也许每一位母亲都未必希望自己的孩子当飞行员，与翱翔蓝天、叱咤风云相比，生命显然更加珍贵。可是，当熊熊的战火燃烧到自己的家园时，当面对炮火连天、惨绝人寰、生灵涂炭的残酷现实时，在国家和人民利益的面前，无数热血青年，奋不顾身，义不容辞地选择了冲到战争的最前线。\n\n沈光耀决意投笔从戎，成为了一名光荣的空军飞行员，自愿参与了最残酷的战争。“奔赴一场劫难，却像去赴一场盛宴”。\n\n战争是残酷的，飞行是危险的，严守操作规程，服从指挥，听从命令，严格执行作战方案是完成任务、确保安全的必要条件。沈光耀多次违背指令，从同一条航线返回，只是为了能给村庄里饥饿的孩子们投递救命的食物。后续，越来越多的飞行员加入了拯救行动。沈光耀的战机遭到了拦截，经过激烈的空战后，弹尽粮绝的沈光耀驾机突破火力网，冲向敌舰，同归于尽。享年二十七岁。\n\n作者：似水明月\n链接：https://www.jianshu.com/p/720fae1e296d\n來源：简书\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。', '2018-02-04 20:09:26', '23', '23', '23', '../../static/article_2.jpg', '0'), ('3', '慕容晓晓', '这是你的益达', '标哥退伍到家后，发了一条朋友圈：感谢兄弟！\n\n照片上是他好朋友拉的横幅：军人本色永恒，让奋斗继续，欢迎挚友某某标同志光荣退伍回乡！\n\n别人都说他是因为情商高，处事圆滑，才有这么多好朋友。\n\n我觉得他够真，从不掩饰自己的情感，跟他相处不用猜测和防备，轻松舒心。\n\n在礼堂举行退伍老兵欢送仪式的时候，标哥哭的像个泪人。\n\n作者：兵小蟹\n链接：https://www.jianshu.com/p/3eade596c9e6\n來源：简书\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。真正把标哥当朋友，是半年前，标哥一次善意的举动，温暖到我。\n\n休息间隙，不知道谁挑起话题，两个同年兵洗刷我：“你看你，吃喝嫖赌抽一样没占，傻了吧唧的，活着还有什么意思？女朋友也没有，还是老处男吧，下次请假带你去浪。”\n\n我并没有回应他们，三观不同，扯不清。\n\n在一旁的标哥看不过去，说：“你们活的好有意思啊，不知廉耻。”\n\n标哥边拉我走到台阶上坐着，边跟我说：“人和人是不一样的，尽量不要和他们一起玩，免得被带坏，有事和我说。”\n\n我叹了口气：“我有女朋友的，只是谈了一年多还没见过面，也没有视频，是不是很傻？\n\n作者：兵小蟹\n链接：https://www.jianshu.com/p/3eade596c9e6\n來源：简书\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。真正把标哥当朋友，是半年前，标哥一次善意的举动，温暖到我。\n\n休息间隙，不知道谁挑起话题，两个同年兵洗刷我：“你看你，吃喝嫖赌抽一样没占，傻了吧唧的，活着还有什么意思？女朋友也没有，还是老处男吧，下次请假带你去浪。”\n\n我并没有回应他们，三观不同，扯不清。\n\n在一旁的标哥看不过去，说：“你们活的好有意思啊，不知廉耻。”\n\n标哥边拉我走到台阶上坐着，边跟我说：“人和人是不一样的，尽量不要和他们一起玩，免得被带坏，有事和我说。”\n\n我叹了口气：“我有女朋友的，只是谈了一年多还没见过面，也没有视频，是不是很傻？\n\n作者：兵小蟹\n链接：https://www.jianshu.com/p/3eade596c9e6\n來源：简书\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。真正把标哥当朋友，是半年前，标哥一次善意的举动，温暖到我。\n\n休息间隙，不知道谁挑起话题，两个同年兵洗刷我：“你看你，吃喝嫖赌抽一样没占，傻了吧唧的，活着还有什么意思？女朋友也没有，还是老处男吧，下次请假带你去浪。”\n\n我并没有回应他们，三观不同，扯不清。\n\n在一旁的标哥看不过去，说：“你们活的好有意思啊，不知廉耻。”\n\n标哥边拉我走到台阶上坐着，边跟我说：“人和人是不一样的，尽量不要和他们一起玩，免得被带坏，有事和我说。”\n\n我叹了口气：“我有女朋友的，只是谈了一年多还没见过面，也没有视频，是不是很傻？\n\n作者：兵小蟹\n链接：https://www.jianshu.com/p/3eade596c9e6\n來源：简书\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。', '2018-01-07 20:11:09', '78', '78', '78', '../../static/article_3.jpg', '0'), ('4', '键盘大师', '那时麦香', '春风吹过田野，万物便开始了新的气息，麦芽钻破土壤，探出了嫩绿的细芽儿，对着阳光，吮吸着氧气和土壤中的水分，伴随着风儿一起摇摆。', '2017-12-17 20:01:45', '45', '123', '45', '../../static/article_1.jpg', '0'), ('5', '紫蓓', '千万人群中的艺术', '春风吹过田野，万物便开始了新的气息，麦芽钻破土壤，探出了嫩绿的细芽儿，对着阳光，吮吸着氧气和土壤中的水分，伴随着风儿一起摇摆。', '2017-11-09 20:01:45', '234', '45', '71', '../../static/article_2.jpg', '0'), ('6', '华盛顿周报', '富兰克林赚钱的秘密', '春风吹过田野，万物便开始了新的气息，麦芽钻破土壤，探出了嫩绿的细芽儿，对着阳光，吮吸着氧气和土壤中的水分，伴随着风儿一起摇摆。', '2017-10-16 20:01:45', '1345', '450', '36', '../../static/article_1.jpg', '0'), ('7', '大明湖', '跨域请求的方式', '春风吹过田野，万物便开始了新的气息，麦芽钻破土壤，探出了嫩绿的细芽儿，对着阳光，吮吸着氧气和土壤中的水分，伴随着风儿一起摇摆。', '2017-10-23 20:01:45', '2345', '88', '8', '../../static/article_1.jpg', '0'), ('8', '是的反复', '按时发达是', '啊实打实俺的沙发上', '2018-02-07 09:58:02', '0', '0', '0', '../../static/article_1.jpg', '0'), ('10', 'hanger', '修改后的文字', '特热情OK真的噶扣工资，从，康复卡', '2018-02-06 11:16:41', '234', '55', '88', '../../static/article_1.jpg', '1'), ('11', 'hanger', '天道酬勤', '去二期热情而切尔掐死的看法就好的附件哈德否记住计划表v创建者不v在V字形从v在在八方达发啊', '2018-02-05 17:31:59', '66', '66', '66', '../../static/article_3.jpg', '1'), ('12', 'hanger', '添加文章！', '特热情OK真的噶扣工资，从，康复卡', '2018-02-06 11:00:58', '69', '34', '76', '../../static/article_1.jpg', '1'), ('14', 'hanger', 'hello world', 'This is a start of my writing life, I hope you can support.', '2018-02-10 17:19:28', '0', '0', '0', '../../static/article_1.jpg', '1');
COMMIT;

-- ----------------------------
--  Table structure for `topics`
-- ----------------------------
DROP TABLE IF EXISTS `topics`;
CREATE TABLE `topics` (
  `title` varchar(255) NOT NULL,
  `info` varchar(255) NOT NULL,
  `articles` int(11) NOT NULL,
  `concern` int(11) NOT NULL,
  `keys` varchar(255) NOT NULL,
  `time` datetime NOT NULL COMMENT 'YYYY-MM-DD HH:MM:SS',
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `topics`
-- ----------------------------
BEGIN;
INSERT INTO `topics` VALUES ('游戏', '玩转简书的第一步，从这个专题开始。\\\r\n				  想上首页热门榜么？好内容想被更多人看到么？来投稿吧！\\\r\n				  如果被拒也不要灰心哦～入选文章会进一个队列挨个上首页，请耐心等待。\\\r\n				  投稿必须原创。如果发现有非...', '10233', '1217', '故事、连载', '2017-12-04 16:00:50', '../../static/topic_1.jpg'), ('诗歌', '诗，让你感受自己的心灵。\\\r\n				 专题主编：苏锦年 投稿须知：\\\r\n				 1.本专题收录古诗、词、现代诗以及诗词点评及指导。\\\r\n                 2.内容必须为原创，切勿用其他诗人的诗句。\\\r\n                 3.文章排版整洁，注意...', '3542', '1463', '诗歌', '2018-01-22 16:02:19', '../../static/topic_3.jpg'), ('互联网', '@IT 专题 由 IT大分类，转定位于IT·互联网行业观察与思考，数码产品极客体验。          主编：向右奔跑 http://www.jianshu.com/users/54b5900965ea...', '8654', '1118', '互联网、产品、科技', '2018-02-01 16:03:42', '../../static/topic_2.jpg');
COMMIT;

-- ----------------------------
--  Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `account` varchar(255) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `headimg` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `users`
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES ('123@qq.com', 'hange23', '202cb962ac59075b964b07152d234b70', '1', 'uploads/1-headimg.jpg'), ('234@qq.com', 'Alice', '289dff07669d7a23de0ef88d2f7129e7', '2', '');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
