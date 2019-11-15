/*
Navicat MySQL Data Transfer

Source Server         : dd
Source Server Version : 80016
Source Host           : localhost:3306
Source Database       : sin

Target Server Type    : MYSQL
Target Server Version : 80016
File Encoding         : 65001

Date: 2019-11-15 08:38:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sin_admin
-- ----------------------------
DROP TABLE IF EXISTS `sin_admin`;
CREATE TABLE `sin_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `grade` varchar(255) DEFAULT NULL COMMENT '年级',
  `school` int(10) DEFAULT NULL COMMENT '性别 0男 1女',
  `sex` tinyint(1) DEFAULT NULL COMMENT '0表示‘女‘1表示’男‘',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `phone` char(11) DEFAULT NULL COMMENT '电话号码',
  `personality` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '这个人很懒，什么都没留下' COMMENT '个性',
  `head` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '头像',
  `balances` decimal(10,0) DEFAULT '0' COMMENT '余额',
  `task_num` int(11) DEFAULT '0' COMMENT '接单数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sin_admin
-- ----------------------------
INSERT INTO `sin_admin` VALUES ('1', '7777@14.com', '5f67ea9991744a45432175cac508884ddc23b1c8', 'ss', '4', '1', '5', null, '', null, '0', '0');
INSERT INTO `sin_admin` VALUES ('2', '7777@14.co', '5f67ea9991744a45432175cac508884ddc23b1c8', '16', '4', '1', '10', null, '我是英雄', null, '0', '1');
INSERT INTO `sin_admin` VALUES ('17', 'xqw_xXXsSFEWDK', 'f8da47c3b812224e0ca641acba2520bf51723785', null, '3', '0', '4', '13428052268', null, null, '100', '0');
INSERT INTO `sin_admin` VALUES ('24', 'xqw_pDbJotKDPp', '1ee801cd2a6b7b1bc99ae07f1beb7b7e6a7e485e', null, '2', '0', '5', '1320241140', null, 'http://www.xiaoqingwang.com/uploads/20190908\\32b34a6edd442ab6b6ff52a4a5492a53.jpg', '9250', '0');
INSERT INTO `sin_admin` VALUES ('25', '652121885', '3733803be032e422b1d660ab3862df7ade02dea6', '16', '1', '1', '18', '13929106426', '我是你爷爷的爷爷', 'http://www.xiaoqingwang.com/uploads/20190908\\596bb4acf95077ddf57dc8ab05ff8fad.jpg', '24300', '6');
INSERT INTO `sin_admin` VALUES ('26', '1401341824', 'a80718c73794e4f8f7e90f3ea052e732cce81ab8', '16', '2', '1', '27', '13202411404', '我是霸霸', 'http://www.xiaoqingwang.com/uploads/20191112\\13499dc0e34c60bed29c698083439164.jpg', '3800', '14');
INSERT INTO `sin_admin` VALUES ('27', '991', 'e80d37cd67e127aeec85b2b02be7de91fc4c3baf', '16', '2', '1', '27', null, '我是霸霸', null, '0', '1');
INSERT INTO `sin_admin` VALUES ('28', '009', '8acab22dad7181db220c681be9f5428d40247cc2', '18', '1', '0', '25', null, '这个人很懒，什么都没留下', null, '0', '20');
INSERT INTO `sin_admin` VALUES ('29', 'jd', 'bd1419c1606e1201a725363c14420a82d129132c', '18', '5', '1', '25', null, '这个人很懒，什么都没留下', null, '0', '0');
INSERT INTO `sin_admin` VALUES ('30', 'lgs', '06ecdfb87c578be80dd91b3de91600104861bb27', '18', '6', '1', '25', null, '这个人很懒，什么都没留下', null, '0', '5');
INSERT INTO `sin_admin` VALUES ('31', 'xqh', '7175c639f3f1f51e29240005bd3e23ddf4f83510', '18', '9', '1', '25', null, '这个人很懒，什么都没留下', null, '0', '4');
INSERT INTO `sin_admin` VALUES ('32', 'xwh', '3a3c4ee278f38744eb2d4c3554c61ac14d15157b', '18', '10', '1', '25', null, '这个人很懒，什么都没留下', null, '0', '35');
INSERT INTO `sin_admin` VALUES ('33', 'lo', 'd98c95aa4c949a76b6ea2ea4dd44a9d739af6867', '18', '11', '1', '25', null, '这个人很懒，什么都没留下', null, '0', '0');
INSERT INTO `sin_admin` VALUES ('34', 'lol', 'd8417922ddf30199c3e90d602db4191385b52327', '18', '11', '1', '25', null, '这个人很懒，什么都没留下', null, '0', '0');
INSERT INTO `sin_admin` VALUES ('38', '44044', 'a7ed77396a7c901d7010a3c1a0c63d18daf95619', '18', '2', '1', '25', null, '这个人很懒，什么都没留下', null, '0', '30');
INSERT INTO `sin_admin` VALUES ('40', 'xqw_H3sL8EkVQa', '28390d4a68d613c4c2f2120d6965bf72b9ece566', null, null, null, null, '13202411404', '这个人很懒，什么都没留下', null, '0', '0');
INSERT INTO `sin_admin` VALUES ('41', '555', '4bdc6dde27f4b3e16eee4b8636a3e6b6bc7daa3b', '18', '2', '1', '25', null, '这个人很懒，什么都没留下', null, '500', '25');
INSERT INTO `sin_admin` VALUES ('42', 'uu', '1511a7c6e1bd698c6683eea32e47d05cb514a48d', '18', '2', '1', '25', null, '这个人很懒，什么都没留下', null, '500', '0');

-- ----------------------------
-- Table structure for sin_adminuser
-- ----------------------------
DROP TABLE IF EXISTS `sin_adminuser`;
CREATE TABLE `sin_adminuser` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户账号',
  `nickname` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
  `password` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` char(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `adminuser_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of sin_adminuser
-- ----------------------------
INSERT INTO `sin_adminuser` VALUES ('1', 'pxj', '彭昕杰', '866d7158740327d1ea59112c2aa116e5ac4f85be', 'pxj@admin.com');
INSERT INTO `sin_adminuser` VALUES ('2', 'ljs', '廖建山', '3192924a66e990854f6a9b01df84727ba9f34a29', 'ljs@admin.com');
INSERT INTO `sin_adminuser` VALUES ('3', 'jjy', '鞠婧祎', '866d7158740327d1ea59112c2aa116e5ac4f85be', 'jjy@admin.com');
INSERT INTO `sin_adminuser` VALUES ('18', 'yzl', '颜卓灵', 'cea7b4640dd1b4e3c13349adbedebc8600989594', '123456.gd@163.com');
INSERT INTO `sin_adminuser` VALUES ('19', 'huge', '胡歌', '307bd8215a9141a909e1417c64b70243717878fe', '159@qq.com');
INSERT INTO `sin_adminuser` VALUES ('20', 'liqin', '李沁', 'a87fa468c4b1e375bf1af642337a26e77cabc90f', '19999.gd@163.com');

-- ----------------------------
-- Table structure for sin_admin_role
-- ----------------------------
DROP TABLE IF EXISTS `sin_admin_role`;
CREATE TABLE `sin_admin_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` tinyint(4) NOT NULL,
  `role_id` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of sin_admin_role
-- ----------------------------
INSERT INTO `sin_admin_role` VALUES ('1', '2', '2');
INSERT INTO `sin_admin_role` VALUES ('2', '1', '1');
INSERT INTO `sin_admin_role` VALUES ('3', '3', '2');
INSERT INTO `sin_admin_role` VALUES ('7', '18', '1');
INSERT INTO `sin_admin_role` VALUES ('8', '19', '1');
INSERT INTO `sin_admin_role` VALUES ('9', '20', '1');

-- ----------------------------
-- Table structure for sin_circle
-- ----------------------------
DROP TABLE IF EXISTS `sin_circle`;
CREATE TABLE `sin_circle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(255) DEFAULT NULL COMMENT '文字',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图片',
  `video` varchar(255) DEFAULT NULL COMMENT '视频',
  `is_like` varchar(255) DEFAULT NULL COMMENT '点赞',
  `exceptional` varchar(255) DEFAULT NULL COMMENT '打赏',
  `published_id` int(11) DEFAULT NULL COMMENT '发布人ID',
  `like_num` int(11) DEFAULT '0' COMMENT '点赞数',
  `img1` varchar(255) DEFAULT NULL,
  `img2` varchar(255) DEFAULT NULL,
  `img3` varchar(255) DEFAULT NULL,
  `img4` varchar(255) DEFAULT NULL,
  `img5` varchar(255) DEFAULT NULL,
  `img6` varchar(255) DEFAULT NULL,
  `img7` varchar(255) DEFAULT NULL,
  `img8` varchar(255) DEFAULT NULL,
  `createtime` int(11) unsigned DEFAULT NULL COMMENT '时间戳',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sin_circle
-- ----------------------------
INSERT INTO `sin_circle` VALUES ('1', '今天天气很差', '', '', '24', null, '26', '1', null, null, null, null, null, null, null, null, null);
INSERT INTO `sin_circle` VALUES ('2', '今天我是霸霸', '', '', '24,25,26', null, '26', '3', null, null, null, null, null, null, null, null, null);
INSERT INTO `sin_circle` VALUES ('5', '我是超级英雄', '', '', '25', null, '25', '1', null, null, null, null, null, null, null, null, null);
INSERT INTO `sin_circle` VALUES ('7', '天气不错', 'http://www.xiaoqingwang.com/uploads/20190908\\dec78a692ad90cd2c44f3593fcc72a37.jpg', null, '', null, '25', '0', null, null, null, null, null, null, null, null, null);
INSERT INTO `sin_circle` VALUES ('8', '天气很差', 'http://www.xiaoqingwang.com/uploads/20190908\\252735afc88288c7dec97c91fa448d2d.jpg', null, '', null, '25', '0', null, null, null, null, null, null, null, null, null);
INSERT INTO `sin_circle` VALUES ('9', '天气很差', 'http://www.xiaoqingwang.com/uploads/20190908\\a87a100287efab241c79c625701436d7.jpg', null, '', null, '25', '0', null, null, null, null, null, null, null, null, null);
INSERT INTO `sin_circle` VALUES ('10', '天气很差', 'http://www.xiaoqingwang.com/uploads/20190908\\057d0b567a63128d2c3d904cb07f2aea.jpg', null, '', null, '25', '0', null, null, null, null, null, null, null, null, null);
INSERT INTO `sin_circle` VALUES ('11', '天气很差', 'http://www.xiaoqingwang.com/uploads/20190908\\d00edb6e85a6fcd2294a14645ddfc26b.jpg', null, '', null, '25', '0', 'http://www.xiaoqingwang.com/uploads/20190908\\e4bb855ef9607ad9eacd3ccc80b016c9.png', 'http://www.xiaoqingwang.com/uploads/20190908\\3324533b69bd2dcf0dc0cb748de5c0f3.png', 'http://www.xiaoqingwang.com/uploads/20190908\\55462ed6b43ac9d637dd21e66d3811d6.png', 'http://www.xiaoqingwang.com/uploads/20190908\\2479c355c3f4a3e197ac3cec8b4211a0.jpg', 'http://www.xiaoqingwang.com/uploads/20190908\\e671b50a5898929d12d6a88b2a7168a3.jpg', 'http://www.xiaoqingwang.com/uploads/20190908\\820d5411ed819d3fac383752d7c792d7.png', 'http://www.xiaoqingwang.com/uploads/20190908\\d412ba4516aa829f82cf9ca24f8a61d9.jpg', 'http://www.xiaoqingwang.com/uploads/20190908\\2b15cfad2b7e66287087f5ba564ad8aa.png', null);
INSERT INTO `sin_circle` VALUES ('12', '天气很差', 'http://www.xiaoqingwang.com/uploads/20190908\\3e6727630aa1b063dfb0899dbee36f9c.jpg', null, '', null, '25', '0', null, null, null, null, null, null, null, null, null);
INSERT INTO `sin_circle` VALUES ('13', '我是超级英雄', 'http://www.xiaoqingwang.com/uploads/20190911\\8cd4553c757c1ebf3005f1e79956f1e1.png', null, '', null, '26', '0', 'http://www.xiaoqingwang.com/uploads/20190911\\ab49b1889b2d07ae25b0b1dfa85d4c20.png', 'http://www.xiaoqingwang.com/uploads/20190911\\7ec2c310edf1aeb0bf06e72a847bc668.png', 'http://www.xiaoqingwang.com/uploads/20190911\\84c347eafaeee8a942136190745da80b.jpg', 'http://www.xiaoqingwang.com/uploads/20190911\\b558a258932ae56cfee4e2b31e59f886.jpg', 'http://www.xiaoqingwang.com/uploads/20190911\\23562b56e6fbc8b2f10459b684ce3f71.png', 'http://www.xiaoqingwang.com/uploads/20190911\\5b0812dfd5baa63d51cff24d9cedfd42.png', null, null, null);
INSERT INTO `sin_circle` VALUES ('14', '我是超级英雄', 'http://www.xiaoqingwang.com/uploads/20190911\\0399047b6140a2b0f0b8ee6448607138.png', null, '', null, '26', '0', 'http://www.xiaoqingwang.com/uploads/20190911\\702ac97c244d2a0f1835dbeb3a5fe5a2.jpg', null, null, null, null, null, null, null, null);
INSERT INTO `sin_circle` VALUES ('15', '我是超级英雄2', 'http://www.xiaoqingwang.com/uploads/20190911\\a5b7d84116603c8c4a3e0c78b87e7f36.png', null, '', null, '26', '0', null, null, null, null, null, null, null, null, null);
INSERT INTO `sin_circle` VALUES ('16', '我是超级英雄2', 'http://www.xiaoqingwang.com/uploads/20190911\\f675a4eb5e26a5e861ede5f6fd1909e8.png', null, '', null, '26', '0', null, null, null, null, null, null, null, null, null);
INSERT INTO `sin_circle` VALUES ('17', '我是超级英雄3', 'http://www.xiaoqingwang.com/uploads/20190911\\7ee804aa6e421a28d8ed0be7b56db322.png', null, '', null, '26', '0', null, null, null, null, null, null, null, null, null);
INSERT INTO `sin_circle` VALUES ('18', '我是超级英雄3', 'http://www.xiaoqingwang.com/uploads/20190911\\97124fea2677ff6fbf316aaae9dadd19.png', null, '', null, '26', '0', 'http://www.xiaoqingwang.com/uploads/20190911\\208916d609dc7fa9c6bc0ccba6d4df4b.png', null, null, null, null, null, null, null, null);
INSERT INTO `sin_circle` VALUES ('19', '我是超级英雄3', 'http://www.xiaoqingwang.com/uploads/20190911\\29960f4a18e2897620017ef65fcc9765.jpg', null, '', null, '26', '0', 'http://www.xiaoqingwang.com/uploads/20190911\\8a19b317e1a132af053f75b6368506b8.png', 'http://www.xiaoqingwang.com/uploads/20190911\\2f3216cb0638ef75e745ef5e4bbf3125.png', 'http://www.xiaoqingwang.com/uploads/20190911\\272b4abc8ba76e70cd3c9d1fb46ebd4c.png', 'http://www.xiaoqingwang.com/uploads/20190911\\0a88d203011b2cf43ae2ff6f249012e7.jpg', 'http://www.xiaoqingwang.com/uploads/20190911\\71d52d1bdc2e01750b60c8acea00a4df.jpg', 'http://www.xiaoqingwang.com/uploads/20190911\\501b14f8facf42c9845a28d688049fb1.png', 'http://www.xiaoqingwang.com/uploads/20190911\\4bbc08f5f97416f12c939a78c6433e1e.jpg', 'http://www.xiaoqingwang.com/uploads/20190911\\7052be8498a679b5ff86cbc68e4f1c3e.png', null);
INSERT INTO `sin_circle` VALUES ('20', '我是超级英雄3', 'http://www.xiaoqingwang.com/uploads/20190911\\684d7a6b4be42b0d60e3c7b9d6ddbdd6.jpg', null, '', null, '26', '0', 'http://www.xiaoqingwang.com/uploads/20190911\\ff3d16f6c92577b0ff786ea5bd14588c.png', 'http://www.xiaoqingwang.com/uploads/20190911\\81793c3a5cb5cdb12af2c0361be477f0.png', 'http://www.xiaoqingwang.com/uploads/20190911\\e9a76c6c7eba676c4c087f6d8b7dd8ce.png', 'http://www.xiaoqingwang.com/uploads/20190911\\3b2a16feeda90ba51ee6da7e90fbdb9f.jpg', 'http://www.xiaoqingwang.com/uploads/20190911\\e22eda1ee28dfa89dacb849ee7b0cb27.jpg', 'http://www.xiaoqingwang.com/uploads/20190911\\c33b794de53bb1719ccabd2d6d209d16.png', 'http://www.xiaoqingwang.com/uploads/20190911\\ef89d47dbb87f9684e8e65e96ca9180d.jpg', 'http://www.xiaoqingwang.com/uploads/20190911\\e919d29f4fd6e62156b1070312f152da.png', null);
INSERT INTO `sin_circle` VALUES ('21', '我是超级英雄3', 'http://www.xiaoqingwang.com/uploads/20190911\\0fe58dba43849d6dc62b50108c0ce57d.jpg', null, '', null, '26', '0', 'http://www.xiaoqingwang.com/uploads/20190911\\16942eda7eaedcf5af44ab8c96f81300.png', 'http://www.xiaoqingwang.com/uploads/20190911\\aff2458812c5ba6bbf867e7199b7ad6f.png', 'http://www.xiaoqingwang.com/uploads/20190911\\988b34fb9375162a046494e79725211b.png', 'http://www.xiaoqingwang.com/uploads/20190911\\a78523793c4991445f88dd30ae00d547.jpg', 'http://www.xiaoqingwang.com/uploads/20190911\\21bea78b79a1f084c22517741a691681.jpg', 'http://www.xiaoqingwang.com/uploads/20190911\\9829fed19d781f0091ae20b05c28e247.png', 'http://www.xiaoqingwang.com/uploads/20190911\\6c9df379f99170c03cb82d20e34fe010.jpg', null, null);
INSERT INTO `sin_circle` VALUES ('22', '我是超级英雄3', 'http://www.xiaoqingwang.com/uploads/20190912\\bd444b91367fa60f7d14a163bef3bb6a.jpg', null, '1', null, '26', '0', 'http://www.xiaoqingwang.com/uploads/20190912\\7eb497ef1155679bd734bf4f60d1806e.png', 'http://www.xiaoqingwang.com/uploads/20190912\\711ec82ee32289e52dee2d33090f3911.png', 'http://www.xiaoqingwang.com/uploads/20190912\\ea9af72ab6048d1001513321e539a849.png', 'http://www.xiaoqingwang.com/uploads/20190912\\a3dc2f12af1a90e1926f8db4c279f7d9.jpg', 'http://www.xiaoqingwang.com/uploads/20190912\\442f1fc3400d2a8504169bcd70a34189.jpg', 'http://www.xiaoqingwang.com/uploads/20190912\\c449d8da6ea5dabd1a754b6d9e45254a.png', 'http://www.xiaoqingwang.com/uploads/20190912\\f1a78e2825496fbebee0c9b0cd1a215f.jpg', 'http://www.xiaoqingwang.com/uploads/20190912\\f4e64325f8c89a3e2c2c169e6d57dc11.png', '1568818053');
INSERT INTO `sin_circle` VALUES ('23', '我是超级英雄5', 'http://www.xiaoqingwang.com/uploads/20190914\\6209f9edbc6cc4a14f7d978bc3646cb5.jpg', null, '25,33,34,29', null, '24', '4', 'http://www.xiaoqingwang.com/uploads/20190914\\ed58ba01a94bbf1204dadb3ffa840450.png', 'http://www.xiaoqingwang.com/uploads/20190914\\28b9b98b38128e67faee61b4fd39b00d.png', 'http://www.xiaoqingwang.com/uploads/20190914\\f0658a6441eb094f501d0d2c5ac73d30.png', 'http://www.xiaoqingwang.com/uploads/20190914\\7af95c0031ac83326e45d577b5db92e0.jpg', 'http://www.xiaoqingwang.com/uploads/20190914\\302c607b0de043c116f120d1c8826b08.jpg', 'http://www.xiaoqingwang.com/uploads/20190914\\29b25356447db9e2163f80dd91e6606b.png', 'http://www.xiaoqingwang.com/uploads/20190914\\9d73922a91d0d34a2241534bcbfaa84f.jpg', 'http://www.xiaoqingwang.com/uploads/20190914\\f3880cc957444762f4a88c75fda755a5.png', '1568818053');
INSERT INTO `sin_circle` VALUES ('24', '我是成为下一个马云', 'http://www.xiaoqingwang.com/uploads/20190914\\c53e2b32d41ac7bfe2dfa62acda475eb.jpg', null, '26,24', null, '24', '2', 'http://www.xiaoqingwang.com/uploads/20190914\\4dc957b437de5b27ffcc119c861503b0.png', 'http://www.xiaoqingwang.com/uploads/20190914\\60bf03648b403b6f8d0ea5a8f66e8417.png', 'http://www.xiaoqingwang.com/uploads/20190914\\6fa7beb463b95be8fbdfd2e11ebe6409.png', 'http://www.xiaoqingwang.com/uploads/20190914\\f4ff78283146ec09f5a7217c490a5c33.jpg', 'http://www.xiaoqingwang.com/uploads/20190914\\b393a5915f7d73d748438c6996212dc4.jpg', 'http://www.xiaoqingwang.com/uploads/20190914\\263c8e99d4fa3156c5deb3727436ce42.png', 'http://www.xiaoqingwang.com/uploads/20190914\\1b209f0cd37a86a1c0c930b650839f93.jpg', 'http://www.xiaoqingwang.com/uploads/20190914\\d191525adbea758d7ddf169f8a38bff3.png', null);
INSERT INTO `sin_circle` VALUES ('25', '我要超过腾讯', 'http://www.xiaoqingwang.com/uploads/20190914\\a723cc3c6570d4e049e7b84d56bf3fab.jpg', null, null, null, '1', '0', null, null, null, null, null, null, null, null, null);
INSERT INTO `sin_circle` VALUES ('26', '我是超级英雄3', 'http://www.xiaoqingwang.com/uploads/20190916\\0b79597a1ad0c4d7cc5404381f59d174.jpg', null, null, null, '26', '0', 'http://www.xiaoqingwang.com/uploads/20190916\\b28892012c9116e5b2bc6f0963b5fed5.png', 'http://www.xiaoqingwang.com/uploads/20190916\\e1ad851fd3c5311dc1abc00d14e81cb7.png', 'http://www.xiaoqingwang.com/uploads/20190916\\9a7839252ea224c440e5428651a4d77d.png', 'http://www.xiaoqingwang.com/uploads/20190916\\56864627a9a11b955e23e048eef2dc94.jpg', 'http://www.xiaoqingwang.com/uploads/20190916\\0d9a6b9605983669c7a417e18beff14e.jpg', 'http://www.xiaoqingwang.com/uploads/20190916\\49d2ed4a0eaedfbdce8a75131b115b74.png', 'http://www.xiaoqingwang.com/uploads/20190916\\35b0a0d8c2e6570ace8cda9b98df1691.jpg', 'http://www.xiaoqingwang.com/uploads/20190916\\afe250829bb39244ed3970bd08c7fbf2.png', null);
INSERT INTO `sin_circle` VALUES ('27', '我是超级英雄3', 'http://www.xiaoqingwang.com/uploads/20190916\\8373ae115e71729b7f761eaeb51ee81d.jpg', null, null, null, '26', '0', 'http://www.xiaoqingwang.com/uploads/20190916\\4450b7d6137af2cdab3ee52b4092f7c0.png', 'http://www.xiaoqingwang.com/uploads/20190916\\d78c6df681e5b908d52f92cf00728990.png', null, null, null, null, null, null, null);
INSERT INTO `sin_circle` VALUES ('28', '我是超级英雄3', 'http://www.xiaoqingwang.com/uploads/20190916\\210bc00af83f04084fd0a0ca5803bc97.jpg', null, '26,24', null, '26', '1', 'http://www.xiaoqingwang.com/uploads/20190916\\caee6ec87862f5439093547bf91adae0.png', 'http://www.xiaoqingwang.com/uploads/20190916\\826e5bc74a48dbc5e300bec0d93c21bd.png', null, null, null, null, null, null, '1568818053');
INSERT INTO `sin_circle` VALUES ('29', '我是超级英雄3', 'http://www.xiaoqingwang.com/uploads/20190918\\ac41197279cc1c21b9fbe8796ef280cc.jpg', null, null, null, '27', '0', null, null, null, null, null, null, null, null, null);
INSERT INTO `sin_circle` VALUES ('30', '我是超级英雄60', '', null, null, null, '27', '0', null, null, null, null, null, null, null, null, null);
INSERT INTO `sin_circle` VALUES ('31', '我是超级英雄66', 'http://www.xiaoqingwang.com/uploads/20190918\\38edb4cc46d502bdde61d90547103ab2.jpg', null, null, null, '27', '0', null, null, null, null, null, null, null, null, null);
INSERT INTO `sin_circle` VALUES ('32', '我是超级英雄666', '', null, null, null, '27', '0', null, null, null, null, null, null, null, null, null);
INSERT INTO `sin_circle` VALUES ('33', '我是超级英雄6666', null, null, null, null, '27', '0', null, null, null, null, null, null, null, null, null);
INSERT INTO `sin_circle` VALUES ('34', '我是超级英雄3', null, null, null, null, '26', '0', null, null, null, null, null, null, null, null, '1568818465');

-- ----------------------------
-- Table structure for sin_column
-- ----------------------------
DROP TABLE IF EXISTS `sin_column`;
CREATE TABLE `sin_column` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `column` varchar(255) DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sin_column
-- ----------------------------
INSERT INTO `sin_column` VALUES ('1', '英雄联盟');
INSERT INTO `sin_column` VALUES ('2', 'dnf');
INSERT INTO `sin_column` VALUES ('3', '王者荣耀');

-- ----------------------------
-- Table structure for sin_comment
-- ----------------------------
DROP TABLE IF EXISTS `sin_comment`;
CREATE TABLE `sin_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) DEFAULT NULL COMMENT '评论',
  `user_id` int(11) DEFAULT NULL,
  `circle_id` int(11) DEFAULT NULL,
  `to_Id` int(11) DEFAULT NULL COMMENT '被回复的ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sin_comment
-- ----------------------------
INSERT INTO `sin_comment` VALUES ('2', '你怕不是个**', '24', '2', null);
INSERT INTO `sin_comment` VALUES ('3', '我就是马化腾', '26', '5', null);
INSERT INTO `sin_comment` VALUES ('4', '我就是马化腾', '26', '13', null);
INSERT INTO `sin_comment` VALUES ('5', '你想甘我马化腾？', '26', '13', null);
INSERT INTO `sin_comment` VALUES ('6', '你怕不是个**', '26', '2', '26');

-- ----------------------------
-- Table structure for sin_communication
-- ----------------------------
DROP TABLE IF EXISTS `sin_communication`;
CREATE TABLE `sin_communication` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fromid` int(11) DEFAULT NULL COMMENT '发送者id',
  `fromname` varchar(255) DEFAULT NULL COMMENT '发送者名称',
  `toid` int(11) DEFAULT NULL COMMENT '接收者id',
  `toname` varchar(255) DEFAULT NULL COMMENT '接收者名称',
  `content` varchar(255) DEFAULT NULL COMMENT '发送内容',
  `time` int(11) DEFAULT NULL COMMENT '发送的时间',
  `shopid` int(11) DEFAULT NULL,
  `isread` varchar(255) DEFAULT NULL COMMENT '是否已读',
  `type` varchar(255) DEFAULT NULL COMMENT '消息类型 文本为1，图片为2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sin_communication
-- ----------------------------
INSERT INTO `sin_communication` VALUES ('1', '1', '7777@14.com', '2', '7777@14.co', '我是爸爸', '15511111', null, '0', '1');

-- ----------------------------
-- Table structure for sin_follow
-- ----------------------------
DROP TABLE IF EXISTS `sin_follow`;
CREATE TABLE `sin_follow` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fans` varchar(255) DEFAULT NULL,
  `my_follow` varchar(255) DEFAULT NULL,
  `user_id` int(11) unsigned DEFAULT NULL,
  `fans_num` int(11) unsigned DEFAULT '0',
  `follow_num` int(11) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sin_follow
-- ----------------------------
INSERT INTO `sin_follow` VALUES ('4', null, '24,26', '25', '0', '2');
INSERT INTO `sin_follow` VALUES ('5', '25,26', null, '24', '2', '0');
INSERT INTO `sin_follow` VALUES ('6', '30,29,25', '29,25,31,30,24,27', '26', '1', '3');
INSERT INTO `sin_follow` VALUES ('7', null, null, '38', '0', '0');
INSERT INTO `sin_follow` VALUES ('8', null, null, '40', '0', '0');
INSERT INTO `sin_follow` VALUES ('12', '30,29,25', null, '27', '3', '0');
INSERT INTO `sin_follow` VALUES ('13', null, null, '41', '0', '0');
INSERT INTO `sin_follow` VALUES ('14', null, null, '42', '0', '0');
INSERT INTO `sin_follow` VALUES ('15', null, null, '0', '0', '0');
INSERT INTO `sin_follow` VALUES ('16', null, null, '0', '0', '0');
INSERT INTO `sin_follow` VALUES ('17', null, null, '0', '0', '0');
INSERT INTO `sin_follow` VALUES ('18', null, null, '0', '0', '0');
INSERT INTO `sin_follow` VALUES ('19', null, null, '0', '0', '0');

-- ----------------------------
-- Table structure for sin_index
-- ----------------------------
DROP TABLE IF EXISTS `sin_index`;
CREATE TABLE `sin_index` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lunbo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '轮播图路径',
  `lunbumessage` varchar(255) DEFAULT NULL COMMENT '轮播消息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sin_index
-- ----------------------------
INSERT INTO `sin_index` VALUES ('1', 'http://www.xiaoqingwang.com/uploads/20190916\\b28892012c9116e5b2bc6f0963b5fed5.png', '我是爸爸');
INSERT INTO `sin_index` VALUES ('2', 'http://www.xiaoqingwang.com/uploads/20190916\\9a7839252ea224c440e5428651a4d77d.png', '我才是爸爸');
INSERT INTO `sin_index` VALUES ('3', 'http://www.xiaoqingwang.com/uploads/20190916\\56864627a9a11b955e23e048eef2dc94.jpg', '我*');
INSERT INTO `sin_index` VALUES ('8', 'http://www.xiaoqingwang.com/uploads/4b705952abd61dffa2b8b754476ab437.jpg', '是爸爸');

-- ----------------------------
-- Table structure for sin_migrations
-- ----------------------------
DROP TABLE IF EXISTS `sin_migrations`;
CREATE TABLE `sin_migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of sin_migrations
-- ----------------------------
INSERT INTO `sin_migrations` VALUES ('10', '2019_10_26_152946_create_adminuser_table', '1');
INSERT INTO `sin_migrations` VALUES ('11', '2019_10_27_140904_create_role_table', '1');
INSERT INTO `sin_migrations` VALUES ('12', '2019_10_27_143034_create_rule_table', '1');
INSERT INTO `sin_migrations` VALUES ('13', '2019_10_27_152248_create_admin_role_table', '1');
INSERT INTO `sin_migrations` VALUES ('14', '2019_10_27_152446_create_role_rule_table', '1');

-- ----------------------------
-- Table structure for sin_recharge_record
-- ----------------------------
DROP TABLE IF EXISTS `sin_recharge_record`;
CREATE TABLE `sin_recharge_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order` varchar(255) NOT NULL COMMENT '订单号',
  `widbody` varchar(255) DEFAULT NULL COMMENT '商品描述',
  `total_amount` varchar(255) DEFAULT NULL COMMENT '金额',
  `trade_no` varchar(255) DEFAULT NULL COMMENT '充值账号',
  `status` tinyint(4) DEFAULT '0' COMMENT '0表示未付款1表示已付款',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `user_id` int(11) DEFAULT NULL COMMENT '用户',
  `subject` varchar(255) DEFAULT NULL COMMENT '订单名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sin_recharge_record
-- ----------------------------
INSERT INTO `sin_recharge_record` VALUES ('5', '20191114907241573693644', '', '200', null, '0', '1573693644', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('6', '20191114908591573693739', '', '200', null, '0', '1573693739', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('7', '20191114910111573693811', '', '200', '2019111422001422501000394664', '1', '1573693811', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('8', '20191114912401573693960', '', '500', null, '0', '1573693960', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('9', '20191114913381573694018', '', '500', null, '0', '1573694018', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('10', '20191114916371573694197', '', '500', null, '0', '1573694197', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('11', '20191114917201573694240', '', '500', null, '0', '1573694240', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('12', '20191114918111573694291', '', '500', null, '0', '1573694291', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('13', '20191114919491573694389', '', '500', null, '0', '1573694389', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('14', '20191114920171573694417', '', '500', null, '0', '1573694417', '24', '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('15', '20191114922371573694557', '', '500', null, '0', '1573694557', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('16', '20191114922471573694567', '', '500', null, '0', '1573694567', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('17', '20191114923111573694591', '', '500', null, '0', '1573694591', '42', '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('18', '20191114924061573694646', '', '500', null, '0', '1573694646', '42', '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('19', '20191114925111573694711', '', '500', '2019111422001422501000393240', '1', '1573694711', '41', '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('20', '201911141003331573697013', '', '500', '2019111422001422501000393241', '1', '1573697013', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('21', '201911141005021573697102', '', '500', null, '0', '1573697102', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('22', '201911141005381573697138', '', '500', '2019111422001422501000393243', '1', '1573697138', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('23', '201911141012121573697532', '', '500', '2019111422001422501000397091', '1', '1573697532', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('24', '201911141012121573697532', '', '500', '2019111422001422501000397091', '1', '1573697532', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('25', '201911141015041573697704', '', '500', '2019111422001422501000395677', '1', '1573697704', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('26', '201911141016581573697818', '', '500', null, '0', '1573697818', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('27', '201911141017301573697850', '', '500', null, '0', '1573697850', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('28', '201911141017311573697851', '', '500', null, '0', '1573697851', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('29', '201911141017591573697879', '', '500', '2019111422001422501000397092', '1', '1573697879', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('30', '201911141018221573697902', '', '500', null, '0', '1573697902', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('31', '201911142326161573745176', '', null, null, '0', '1573745176', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('32', '20191115007281573747648', '', null, null, '0', '1573747648', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('33', '20191115007341573747654', '', null, null, '0', '1573747654', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('34', '20191115806491573776409', '', null, null, '0', '1573776409', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('35', '20191115807261573776446', '', null, null, '0', '1573776446', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('36', '20191115813151573776795', '', null, null, '0', '1573776795', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('37', '20191115813331573776813', '', null, null, '0', '1573776813', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('38', '20191115813501573776830', '', null, null, '0', '1573776830', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('39', '20191115814031573776843', '', null, null, '0', '1573776843', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('40', '20191115814101573776850', '', null, null, '0', '1573776850', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('41', '20191115814371573776877', '', null, null, '0', '1573776877', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('42', '20191115816441573777004', '', null, null, '0', '1573777004', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('43', '20191115816491573777009', '', null, null, '0', '1573777009', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('44', '20191115816551573777015', '', null, null, '0', '1573777015', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('45', '20191115817061573777026', '', null, null, '0', '1573777026', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('46', '20191115819071573777147', '', null, null, '0', '1573777147', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('47', '20191115819241573777164', '', null, null, '0', '1573777164', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('48', '20191115819361573777176', '', null, null, '0', '1573777176', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('49', '20191115820221573777222', '', null, null, '0', '1573777222', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('50', '20191115820291573777229', '', null, null, '0', '1573777229', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('51', '20191115820361573777236', '', null, null, '0', '1573777236', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('52', '20191115820431573777243', '', null, null, '0', '1573777243', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('53', '20191115820511573777251', '', null, null, '0', '1573777251', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('54', '20191115821471573777307', '', null, null, '0', '1573777307', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('55', '20191115821581573777318', '', null, null, '0', '1573777318', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('56', '20191115822021573777322', '', null, null, '0', '1573777322', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('57', '20191115822091573777329', '', null, null, '0', '1573777329', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('58', '20191115822141573777334', '', null, null, '0', '1573777334', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('59', '20191115822291573777349', '', null, null, '0', '1573777349', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('60', '20191115822361573777356', '', null, null, '0', '1573777356', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('61', '20191115822441573777364', '', null, null, '0', '1573777364', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('62', '20191115822461573777366', '', null, null, '0', '1573777366', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('63', '20191115823531573777433', '', null, null, '0', '1573777433', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('64', '20191115824011573777441', '', null, null, '0', '1573777441', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('65', '20191115824091573777449', '', null, null, '0', '1573777449', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('66', '20191115824111573777451', '', null, null, '0', '1573777451', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('67', '20191115824121573777452', '', null, null, '0', '1573777452', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('68', '20191115824131573777453', '', null, null, '0', '1573777453', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('69', '20191115824141573777454', '', null, null, '0', '1573777454', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('70', '20191115824151573777455', '', null, null, '0', '1573777455', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('71', '20191115824161573777456', '', null, null, '0', '1573777456', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('72', '20191115824171573777457', '', null, null, '0', '1573777457', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('73', '20191115824191573777459', '', null, null, '0', '1573777459', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('74', '20191115824201573777460', '', null, null, '0', '1573777460', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('75', '20191115824211573777461', '', null, null, '0', '1573777461', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('76', '20191115824221573777462', '', null, null, '0', '1573777462', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('77', '20191115824241573777464', '', null, null, '0', '1573777464', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('78', '20191115824251573777465', '', null, null, '0', '1573777465', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('79', '20191115824251573777465', '', null, null, '0', '1573777465', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('80', '20191115824261573777466', '', null, null, '0', '1573777466', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('81', '20191115824271573777467', '', null, null, '0', '1573777467', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('82', '20191115824281573777468', '', null, null, '0', '1573777468', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('83', '20191115824311573777471', '', null, null, '0', '1573777471', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('84', '20191115824331573777473', '', null, null, '0', '1573777473', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('85', '20191115824341573777474', '', null, null, '0', '1573777474', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('86', '20191115824351573777475', '', null, null, '0', '1573777475', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('87', '20191115824361573777476', '', null, null, '0', '1573777476', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('88', '20191115824371573777477', '', null, null, '0', '1573777477', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('89', '20191115824381573777478', '', null, null, '0', '1573777478', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('90', '20191115825261573777526', '', '500', '2019111522001422501000401283', '1', '1573777526', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('91', '20191115831211573777881', '', '500', null, '0', '1573777881', null, '个人充值');
INSERT INTO `sin_recharge_record` VALUES ('92', '20191115831241573777884', '', '500', '2019111522001422501000398602', '1', '1573777884', null, '个人充值');

-- ----------------------------
-- Table structure for sin_role
-- ----------------------------
DROP TABLE IF EXISTS `sin_role`;
CREATE TABLE `sin_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '管理员类别',
  `description` text COLLATE utf8mb4_unicode_ci COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of sin_role
-- ----------------------------
INSERT INTO `sin_role` VALUES ('1', '超级管理员', '拥有至高无上的权利');
INSERT INTO `sin_role` VALUES ('2', '普通管理员', '不拥有至高无上的权利');
INSERT INTO `sin_role` VALUES ('10', '新手管理员', '新手');
INSERT INTO `sin_role` VALUES ('11', '新手2', '新手');
INSERT INTO `sin_role` VALUES ('13', '新手3', '新手');
INSERT INTO `sin_role` VALUES ('14', '新手4', '新手');
INSERT INTO `sin_role` VALUES ('15', '新手5', '新手');
INSERT INTO `sin_role` VALUES ('16', '新手6', '新手');
INSERT INTO `sin_role` VALUES ('17', '新手7', '新手');
INSERT INTO `sin_role` VALUES ('18', 'aaa', 'aa');
INSERT INTO `sin_role` VALUES ('20', '新手81', '新手');
INSERT INTO `sin_role` VALUES ('22', 'oo', 'oo');

-- ----------------------------
-- Table structure for sin_role_rule
-- ----------------------------
DROP TABLE IF EXISTS `sin_role_rule`;
CREATE TABLE `sin_role_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` tinyint(4) NOT NULL,
  `rule_id` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of sin_role_rule
-- ----------------------------
INSERT INTO `sin_role_rule` VALUES ('1', '2', '1');
INSERT INTO `sin_role_rule` VALUES ('2', '2', '2');
INSERT INTO `sin_role_rule` VALUES ('7', '10', '3');
INSERT INTO `sin_role_rule` VALUES ('8', '10', '5');
INSERT INTO `sin_role_rule` VALUES ('9', '11', '3');
INSERT INTO `sin_role_rule` VALUES ('10', '11', '4');
INSERT INTO `sin_role_rule` VALUES ('11', '11', '5');
INSERT INTO `sin_role_rule` VALUES ('15', '13', '3');
INSERT INTO `sin_role_rule` VALUES ('16', '13', '4');
INSERT INTO `sin_role_rule` VALUES ('17', '13', '5');
INSERT INTO `sin_role_rule` VALUES ('18', '13', '6');
INSERT INTO `sin_role_rule` VALUES ('19', '14', '1');
INSERT INTO `sin_role_rule` VALUES ('20', '14', '3');
INSERT INTO `sin_role_rule` VALUES ('21', '14', '2');
INSERT INTO `sin_role_rule` VALUES ('22', '14', '5');
INSERT INTO `sin_role_rule` VALUES ('23', '14', '6');
INSERT INTO `sin_role_rule` VALUES ('24', '15', '1');
INSERT INTO `sin_role_rule` VALUES ('25', '15', '2');
INSERT INTO `sin_role_rule` VALUES ('26', '16', '1');
INSERT INTO `sin_role_rule` VALUES ('27', '16', '2');
INSERT INTO `sin_role_rule` VALUES ('28', '17', '1');
INSERT INTO `sin_role_rule` VALUES ('29', '17', '2');
INSERT INTO `sin_role_rule` VALUES ('30', '18', '1');
INSERT INTO `sin_role_rule` VALUES ('31', '18', '2');
INSERT INTO `sin_role_rule` VALUES ('38', '22', '1');
INSERT INTO `sin_role_rule` VALUES ('39', '22', '2');
INSERT INTO `sin_role_rule` VALUES ('42', '20', '1');
INSERT INTO `sin_role_rule` VALUES ('43', '20', '2');

-- ----------------------------
-- Table structure for sin_rule
-- ----------------------------
DROP TABLE IF EXISTS `sin_rule`;
CREATE TABLE `sin_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '权限名称',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '请求模型',
  `controller` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '请求控制器',
  `action` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '请求方法',
  `parent_id` tinyint(4) NOT NULL COMMENT '父类ID 0是父类',
  `is_show` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否显示 1显示 0不显示',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of sin_rule
-- ----------------------------
INSERT INTO `sin_rule` VALUES ('1', '图片管理模块', 'admin', 'PictureController', '#', '0', '1');
INSERT INTO `sin_rule` VALUES ('2', '图片管理', 'admin', 'PictureController', 'picturelist', '1', '1');
INSERT INTO `sin_rule` VALUES ('3', '管理员模块', 'admin', 'RuleController', '#', '0', '1');
INSERT INTO `sin_rule` VALUES ('4', '管理员添加', 'admin', 'RuleController', 'adadd', '3', '0');
INSERT INTO `sin_rule` VALUES ('5', '管理员列表', 'admin', 'RuleController', 'adlist', '3', '1');
INSERT INTO `sin_rule` VALUES ('6', '角色列表', 'admin', 'RuleController', 'adrole', '3', '1');
INSERT INTO `sin_rule` VALUES ('7', '角色添加', 'admin', 'RuleController', 'adroleadd', '3', '0');
INSERT INTO `sin_rule` VALUES ('8', '权限列表', 'admin', 'RuleController', 'adpermission', '3', '1');
INSERT INTO `sin_rule` VALUES ('9', '管理员删除', 'admin', 'RuleController', 'admindel', '3', '0');

-- ----------------------------
-- Table structure for sin_school
-- ----------------------------
DROP TABLE IF EXISTS `sin_school`;
CREATE TABLE `sin_school` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `provinces` varchar(255) DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1201 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sin_school
-- ----------------------------
INSERT INTO `sin_school` VALUES ('1', null, '香港浸会大学');
INSERT INTO `sin_school` VALUES ('2', null, '上海戏剧学院');
INSERT INTO `sin_school` VALUES ('3', null, '武汉大学');
INSERT INTO `sin_school` VALUES ('4', null, '北京大学');
INSERT INTO `sin_school` VALUES ('5', null, '广东农工商职业技术学院');
INSERT INTO `sin_school` VALUES ('6', null, '汕头大学');
INSERT INTO `sin_school` VALUES ('9', null, '华南理工大学');
INSERT INTO `sin_school` VALUES ('10', null, '女子学院');
INSERT INTO `sin_school` VALUES ('11', null, '中山大学');
INSERT INTO `sin_school` VALUES ('12', null, '北京大学');
INSERT INTO `sin_school` VALUES ('13', null, '中国人民大学');
INSERT INTO `sin_school` VALUES ('14', null, '清华大学');
INSERT INTO `sin_school` VALUES ('15', null, '北京交通大学');
INSERT INTO `sin_school` VALUES ('16', null, '北京科技大学');
INSERT INTO `sin_school` VALUES ('17', null, '北京化工大学');
INSERT INTO `sin_school` VALUES ('18', null, '北京邮电大学');
INSERT INTO `sin_school` VALUES ('19', null, '中国农业大学');
INSERT INTO `sin_school` VALUES ('20', null, '北京林业大学');
INSERT INTO `sin_school` VALUES ('21', null, '北京中医药大学');
INSERT INTO `sin_school` VALUES ('22', null, '北京师范大学');
INSERT INTO `sin_school` VALUES ('23', null, '北京外国语大学');
INSERT INTO `sin_school` VALUES ('24', null, '北京语言大学');
INSERT INTO `sin_school` VALUES ('25', null, '中央财经大学');
INSERT INTO `sin_school` VALUES ('26', null, '对外经济贸易大学');
INSERT INTO `sin_school` VALUES ('27', null, '中国政法大学');
INSERT INTO `sin_school` VALUES ('28', null, '华北电力大学');
INSERT INTO `sin_school` VALUES ('29', null, '中国石油大学');
INSERT INTO `sin_school` VALUES ('30', null, '中央民族大学');
INSERT INTO `sin_school` VALUES ('31', null, '中国人民公安大学');
INSERT INTO `sin_school` VALUES ('32', null, '北京协和医学院');
INSERT INTO `sin_school` VALUES ('33', null, '北京体育大学');
INSERT INTO `sin_school` VALUES ('34', null, '北京航空航天大学');
INSERT INTO `sin_school` VALUES ('35', null, '北京理工大学');
INSERT INTO `sin_school` VALUES ('36', null, '中国科学院大学');
INSERT INTO `sin_school` VALUES ('37', null, '北京工业大学');
INSERT INTO `sin_school` VALUES ('38', null, '北方工业大学');
INSERT INTO `sin_school` VALUES ('39', null, '北京工商大学');
INSERT INTO `sin_school` VALUES ('40', null, '北京建筑大学');
INSERT INTO `sin_school` VALUES ('41', null, '首都医科大学');
INSERT INTO `sin_school` VALUES ('42', null, '首都师范大学');
INSERT INTO `sin_school` VALUES ('43', null, '首都经济贸易大学');
INSERT INTO `sin_school` VALUES ('44', null, '北京信息科技大学');
INSERT INTO `sin_school` VALUES ('45', null, '北京联合大学');
INSERT INTO `sin_school` VALUES ('46', null, '中国传媒大学');
INSERT INTO `sin_school` VALUES ('47', null, '国际关系学院');
INSERT INTO `sin_school` VALUES ('48', null, '中央音乐学院');
INSERT INTO `sin_school` VALUES ('49', null, '中央美术学院');
INSERT INTO `sin_school` VALUES ('50', null, '中央戏剧学院');
INSERT INTO `sin_school` VALUES ('51', null, '北京电子科技学院');
INSERT INTO `sin_school` VALUES ('52', null, '外交学院');
INSERT INTO `sin_school` VALUES ('53', null, '中国劳动关系学院');
INSERT INTO `sin_school` VALUES ('54', null, '中国青年政治学院');
INSERT INTO `sin_school` VALUES ('55', null, '中华女子学院');
INSERT INTO `sin_school` VALUES ('56', null, '北京服装学院');
INSERT INTO `sin_school` VALUES ('57', null, '北京印刷学院');
INSERT INTO `sin_school` VALUES ('58', null, '北京石油化工学院');
INSERT INTO `sin_school` VALUES ('59', null, '北京农学院');
INSERT INTO `sin_school` VALUES ('60', null, '首都体育学院');
INSERT INTO `sin_school` VALUES ('61', null, '北京第二外国语学院');
INSERT INTO `sin_school` VALUES ('62', null, '北京物资学院');
INSERT INTO `sin_school` VALUES ('63', null, '中国音乐学院');
INSERT INTO `sin_school` VALUES ('64', null, '中国戏曲学院');
INSERT INTO `sin_school` VALUES ('65', null, '北京电影学院');
INSERT INTO `sin_school` VALUES ('66', null, '北京舞蹈学院');
INSERT INTO `sin_school` VALUES ('67', null, '北京城市学院');
INSERT INTO `sin_school` VALUES ('68', null, '首钢工学院');
INSERT INTO `sin_school` VALUES ('69', null, '北京警察学院');
INSERT INTO `sin_school` VALUES ('70', null, '北京青年政治学院');
INSERT INTO `sin_school` VALUES ('71', null, '北京工业职业技术学院');
INSERT INTO `sin_school` VALUES ('72', null, '北京信息职业技术学院');
INSERT INTO `sin_school` VALUES ('73', null, '北京电子科技职业学院');
INSERT INTO `sin_school` VALUES ('74', null, '北京吉利大学');
INSERT INTO `sin_school` VALUES ('75', null, '北京社会管理职业学院');
INSERT INTO `sin_school` VALUES ('76', null, '北京新圆明职业学院');
INSERT INTO `sin_school` VALUES ('77', null, '北京体育职业学院');
INSERT INTO `sin_school` VALUES ('78', null, '北京交通运输职业学院');
INSERT INTO `sin_school` VALUES ('79', null, '北京卫生职业学院');
INSERT INTO `sin_school` VALUES ('80', null, '北京京北职业技术学院');
INSERT INTO `sin_school` VALUES ('81', null, '北京交通职业技术学院');
INSERT INTO `sin_school` VALUES ('82', null, '北京农业职业学院');
INSERT INTO `sin_school` VALUES ('83', null, '北京政法职业学院');
INSERT INTO `sin_school` VALUES ('84', null, '北京财贸职业学院');
INSERT INTO `sin_school` VALUES ('85', null, '北京北大方正软件职业技术学院');
INSERT INTO `sin_school` VALUES ('86', null, '北京经贸职业学院');
INSERT INTO `sin_school` VALUES ('87', null, '北京经济技术职业学院');
INSERT INTO `sin_school` VALUES ('88', null, '北京戏曲艺术职业学院');
INSERT INTO `sin_school` VALUES ('89', null, '北京汇佳职业学院');
INSERT INTO `sin_school` VALUES ('90', null, '北京现代职业技术学院');
INSERT INTO `sin_school` VALUES ('91', null, '北京科技经营管理学院');
INSERT INTO `sin_school` VALUES ('92', null, '北京科技职业学院');
INSERT INTO `sin_school` VALUES ('93', null, '北京培黎职业学院');
INSERT INTO `sin_school` VALUES ('94', null, '北京经济管理职业学院');
INSERT INTO `sin_school` VALUES ('95', null, '北京劳动保障职业学院');
INSERT INTO `sin_school` VALUES ('96', null, '复旦大学');
INSERT INTO `sin_school` VALUES ('97', null, '同济大学');
INSERT INTO `sin_school` VALUES ('98', null, '上海交通大学');
INSERT INTO `sin_school` VALUES ('99', null, '华东理工大学');
INSERT INTO `sin_school` VALUES ('100', null, '东华大学');
INSERT INTO `sin_school` VALUES ('101', null, '华东师范大学');
INSERT INTO `sin_school` VALUES ('102', null, '上海外国语大学');
INSERT INTO `sin_school` VALUES ('103', null, '上海财经大学');
INSERT INTO `sin_school` VALUES ('104', null, '上海理工大学');
INSERT INTO `sin_school` VALUES ('105', null, '上海海事大学');
INSERT INTO `sin_school` VALUES ('106', null, '上海海洋大学');
INSERT INTO `sin_school` VALUES ('107', null, '上海中医药大学');
INSERT INTO `sin_school` VALUES ('108', null, '上海师范大学');
INSERT INTO `sin_school` VALUES ('109', null, '上海对外经贸大学');
INSERT INTO `sin_school` VALUES ('110', null, '华东政法大学');
INSERT INTO `sin_school` VALUES ('111', null, '上海大学');
INSERT INTO `sin_school` VALUES ('112', null, '上海工程技术大学');
INSERT INTO `sin_school` VALUES ('113', null, '上海纽约大学');
INSERT INTO `sin_school` VALUES ('114', null, '上海海关学院');
INSERT INTO `sin_school` VALUES ('115', null, '上海电力学院');
INSERT INTO `sin_school` VALUES ('116', null, '上海应用技术学院');
INSERT INTO `sin_school` VALUES ('117', null, '上海体育学院');
INSERT INTO `sin_school` VALUES ('118', null, '上海音乐学院');
INSERT INTO `sin_school` VALUES ('119', null, '上海戏剧学院');
INSERT INTO `sin_school` VALUES ('120', null, '上海立信会计学院');
INSERT INTO `sin_school` VALUES ('121', null, '上海电机学院');
INSERT INTO `sin_school` VALUES ('122', null, '上海金融学院');
INSERT INTO `sin_school` VALUES ('123', null, '上海杉达学院');
INSERT INTO `sin_school` VALUES ('124', null, '上海商学院');
INSERT INTO `sin_school` VALUES ('125', null, '上海视觉艺术学院');
INSERT INTO `sin_school` VALUES ('126', null, '上海政法学院');
INSERT INTO `sin_school` VALUES ('127', null, '上海第二工业大学');
INSERT INTO `sin_school` VALUES ('128', null, '上海建桥学院');
INSERT INTO `sin_school` VALUES ('129', null, '上海医疗器械高等专科学校');
INSERT INTO `sin_school` VALUES ('130', null, '上海旅游高等专科学校');
INSERT INTO `sin_school` VALUES ('131', null, '上海公安高等专科学校');
INSERT INTO `sin_school` VALUES ('132', null, '上海出版印刷高等专科学校');
INSERT INTO `sin_school` VALUES ('133', null, '上海医药高等专科学校');
INSERT INTO `sin_school` VALUES ('134', null, '上海民航职业技术学院');
INSERT INTO `sin_school` VALUES ('135', null, '上海东海职业技术学院');
INSERT INTO `sin_school` VALUES ('136', null, '上海新侨职业技术学院');
INSERT INTO `sin_school` VALUES ('137', null, '上海兴韦信息技术职业学院');
INSERT INTO `sin_school` VALUES ('138', null, '上海体育职业学院');
INSERT INTO `sin_school` VALUES ('139', null, '上海健康职业技术学院');
INSERT INTO `sin_school` VALUES ('140', null, '上海行健职业学院');
INSERT INTO `sin_school` VALUES ('141', null, '上海城市管理职业技术学院');
INSERT INTO `sin_school` VALUES ('142', null, '上海交通职业技术学院');
INSERT INTO `sin_school` VALUES ('143', null, '上海海事职业技术学院');
INSERT INTO `sin_school` VALUES ('144', null, '上海电子信息职业技术学院');
INSERT INTO `sin_school` VALUES ('145', null, '上海震旦职业学院');
INSERT INTO `sin_school` VALUES ('146', null, '上海民远职业技术学院');
INSERT INTO `sin_school` VALUES ('147', null, '上海欧华职业技术学院');
INSERT INTO `sin_school` VALUES ('148', null, '上海思博职业技术学院');
INSERT INTO `sin_school` VALUES ('149', null, '上海立达职业技术学院');
INSERT INTO `sin_school` VALUES ('150', null, '上海工艺美术职业学院');
INSERT INTO `sin_school` VALUES ('151', null, '上海济光职业技术学院');
INSERT INTO `sin_school` VALUES ('152', null, '上海工商外国语职业学院');
INSERT INTO `sin_school` VALUES ('153', null, '上海科学技术职业学院');
INSERT INTO `sin_school` VALUES ('154', null, '上海农林职业技术学院');
INSERT INTO `sin_school` VALUES ('155', null, '上海邦德职业技术学院');
INSERT INTO `sin_school` VALUES ('156', null, '上海中侨职业技术学院');
INSERT INTO `sin_school` VALUES ('157', null, '上海建峰职业技术学院');
INSERT INTO `sin_school` VALUES ('158', null, '上海电影艺术职业学院');
INSERT INTO `sin_school` VALUES ('159', null, '上海中华职业技术学院');
INSERT INTO `sin_school` VALUES ('160', null, '上海工会管理职业学院');
INSERT INTO `sin_school` VALUES ('161', null, '河北工业大学');
INSERT INTO `sin_school` VALUES ('162', null, '南开大学');
INSERT INTO `sin_school` VALUES ('163', null, '天津大学');
INSERT INTO `sin_school` VALUES ('164', null, '中国民航大学');
INSERT INTO `sin_school` VALUES ('165', null, '天津科技大学');
INSERT INTO `sin_school` VALUES ('166', null, '天津工业大学');
INSERT INTO `sin_school` VALUES ('167', null, '天津理工大学');
INSERT INTO `sin_school` VALUES ('168', null, '天津医科大学');
INSERT INTO `sin_school` VALUES ('169', null, '天津中医药大学');
INSERT INTO `sin_school` VALUES ('170', null, '天津师范大学');
INSERT INTO `sin_school` VALUES ('171', null, '天津职业技术师范大学');
INSERT INTO `sin_school` VALUES ('172', null, '天津外国语大学');
INSERT INTO `sin_school` VALUES ('173', null, '天津商业大学');
INSERT INTO `sin_school` VALUES ('174', null, '天津财经大学');
INSERT INTO `sin_school` VALUES ('175', null, '天津城建大学');
INSERT INTO `sin_school` VALUES ('176', null, '天津农学院');
INSERT INTO `sin_school` VALUES ('177', null, '天津体育学院');
INSERT INTO `sin_school` VALUES ('178', null, '天津音乐学院');
INSERT INTO `sin_school` VALUES ('179', null, '天津美术学院');
INSERT INTO `sin_school` VALUES ('180', null, '天津天狮学院');
INSERT INTO `sin_school` VALUES ('181', null, '天津医学高等专科学校');
INSERT INTO `sin_school` VALUES ('182', null, '天津市职业大学');
INSERT INTO `sin_school` VALUES ('183', null, '天津商务职业学院');
INSERT INTO `sin_school` VALUES ('184', null, '天津广播影视职业学院');
INSERT INTO `sin_school` VALUES ('185', null, '天津中德职业技术学院');
INSERT INTO `sin_school` VALUES ('186', null, '天津滨海职业学院');
INSERT INTO `sin_school` VALUES ('187', null, '天津工程职业技术学院');
INSERT INTO `sin_school` VALUES ('188', null, '天津青年职业学院');
INSERT INTO `sin_school` VALUES ('189', null, '天津渤海职业技术学院');
INSERT INTO `sin_school` VALUES ('190', null, '天津电子信息职业技术学院');
INSERT INTO `sin_school` VALUES ('191', null, '天津机电职业技术学院');
INSERT INTO `sin_school` VALUES ('192', null, '天津现代职业技术学院');
INSERT INTO `sin_school` VALUES ('193', null, '天津公安警官职业学院');
INSERT INTO `sin_school` VALUES ('194', null, '天津轻工职业技术学院');
INSERT INTO `sin_school` VALUES ('195', null, '天津国土资源和房屋职业学院');
INSERT INTO `sin_school` VALUES ('196', null, '天津开发区职业技术学院');
INSERT INTO `sin_school` VALUES ('197', null, '天津艺术职业学院');
INSERT INTO `sin_school` VALUES ('198', null, '天津交通职业学院');
INSERT INTO `sin_school` VALUES ('199', null, '天津冶金职业技术学院');
INSERT INTO `sin_school` VALUES ('200', null, '天津石油职业技术学院');
INSERT INTO `sin_school` VALUES ('201', null, '天津城市职业学院');
INSERT INTO `sin_school` VALUES ('202', null, '天津铁道职业技术学院');
INSERT INTO `sin_school` VALUES ('203', null, '天津工艺美术职业学院');
INSERT INTO `sin_school` VALUES ('204', null, '天津城市建设管理职业技术学院');
INSERT INTO `sin_school` VALUES ('205', null, '天津生物工程职业技术学院');
INSERT INTO `sin_school` VALUES ('206', null, '天津海运职业学院');
INSERT INTO `sin_school` VALUES ('207', null, '重庆大学');
INSERT INTO `sin_school` VALUES ('208', null, '西南大学');
INSERT INTO `sin_school` VALUES ('209', null, '重庆邮电大学');
INSERT INTO `sin_school` VALUES ('210', null, '重庆交通大学');
INSERT INTO `sin_school` VALUES ('211', null, '重庆医科大学');
INSERT INTO `sin_school` VALUES ('212', null, '重庆师范大学');
INSERT INTO `sin_school` VALUES ('213', null, '西南政法大学');
INSERT INTO `sin_school` VALUES ('214', null, '重庆理工大学');
INSERT INTO `sin_school` VALUES ('215', null, '重庆工商大学');
INSERT INTO `sin_school` VALUES ('216', null, '重庆文理学院');
INSERT INTO `sin_school` VALUES ('217', null, '重庆三峡学院');
INSERT INTO `sin_school` VALUES ('218', null, '长江师范学院');
INSERT INTO `sin_school` VALUES ('219', null, '四川外国语大学');
INSERT INTO `sin_school` VALUES ('220', null, '四川美术学院');
INSERT INTO `sin_school` VALUES ('221', null, '重庆科技学院');
INSERT INTO `sin_school` VALUES ('222', null, '重庆警察学院');
INSERT INTO `sin_school` VALUES ('223', null, '重庆人文科技学院');
INSERT INTO `sin_school` VALUES ('224', null, '重庆第二师范学院');
INSERT INTO `sin_school` VALUES ('225', null, '重庆电力高等专科学校');
INSERT INTO `sin_school` VALUES ('226', null, '重庆幼儿师范高等专科学校');
INSERT INTO `sin_school` VALUES ('227', null, '重庆三峡医药高等专科学校');
INSERT INTO `sin_school` VALUES ('228', null, '重庆医药高等专科学校');
INSERT INTO `sin_school` VALUES ('229', null, '重庆航天职业技术学院');
INSERT INTO `sin_school` VALUES ('230', null, '重庆传媒职业学院');
INSERT INTO `sin_school` VALUES ('231', null, '重庆房地产职业学院');
INSERT INTO `sin_school` VALUES ('232', null, '重庆青年职业技术学院');
INSERT INTO `sin_school` VALUES ('233', null, '重庆财经职业学院');
INSERT INTO `sin_school` VALUES ('234', null, '重庆科创职业学院');
INSERT INTO `sin_school` VALUES ('235', null, '重庆建筑工程职业学院');
INSERT INTO `sin_school` VALUES ('236', null, '重庆电讯职业学院');
INSERT INTO `sin_school` VALUES ('237', null, '重庆能源职业学院');
INSERT INTO `sin_school` VALUES ('238', null, '重庆商务职业学院');
INSERT INTO `sin_school` VALUES ('239', null, '重庆交通职业学院');
INSERT INTO `sin_school` VALUES ('240', null, '重庆化工职业学院');
INSERT INTO `sin_school` VALUES ('241', null, '重庆旅游职业学院');
INSERT INTO `sin_school` VALUES ('242', null, '重庆安全技术职业学院');
INSERT INTO `sin_school` VALUES ('243', null, '重庆公共运输职业学院');
INSERT INTO `sin_school` VALUES ('244', null, '重庆艺术工程职业学院');
INSERT INTO `sin_school` VALUES ('245', null, '重庆轻工职业学院');
INSERT INTO `sin_school` VALUES ('246', null, '重庆电信职业学院');
INSERT INTO `sin_school` VALUES ('247', null, '重庆经贸职业学院');
INSERT INTO `sin_school` VALUES ('248', null, '重庆文化艺术职业学院');
INSERT INTO `sin_school` VALUES ('249', null, '重庆服装工程职业学院');
INSERT INTO `sin_school` VALUES ('250', null, '重庆工业职业技术学院');
INSERT INTO `sin_school` VALUES ('251', null, '重庆三峡职业学院');
INSERT INTO `sin_school` VALUES ('252', null, '重庆工贸职业技术学院');
INSERT INTO `sin_school` VALUES ('253', null, '重庆机电职业技术学院');
INSERT INTO `sin_school` VALUES ('254', null, '重庆正大软件职业技术学院');
INSERT INTO `sin_school` VALUES ('255', null, '重庆电子工程职业学院');
INSERT INTO `sin_school` VALUES ('256', null, '重庆海联职业技术学院');
INSERT INTO `sin_school` VALUES ('257', null, '重庆信息技术职业学院');
INSERT INTO `sin_school` VALUES ('258', null, '重庆城市管理职业学院');
INSERT INTO `sin_school` VALUES ('259', null, '重庆工程职业技术学院');
INSERT INTO `sin_school` VALUES ('260', null, '重庆城市职业学院');
INSERT INTO `sin_school` VALUES ('261', null, '重庆水利电力职业技术学院');
INSERT INTO `sin_school` VALUES ('262', null, '重庆工商职业学院');
INSERT INTO `sin_school` VALUES ('263', null, '重庆民生职业技术学院');
INSERT INTO `sin_school` VALUES ('264', null, '东北石油大学');
INSERT INTO `sin_school` VALUES ('265', null, '黑龙江八一农垦大学');
INSERT INTO `sin_school` VALUES ('266', null, '大庆师范学院');
INSERT INTO `sin_school` VALUES ('267', null, '大庆医学高等专科学校');
INSERT INTO `sin_school` VALUES ('268', null, '大庆职业学院');
INSERT INTO `sin_school` VALUES ('269', null, '大兴安岭职业学院');
INSERT INTO `sin_school` VALUES ('270', null, '东北林业大学');
INSERT INTO `sin_school` VALUES ('271', null, '哈尔滨工业大学');
INSERT INTO `sin_school` VALUES ('272', null, '哈尔滨工程大学');
INSERT INTO `sin_school` VALUES ('273', null, '黑龙江大学');
INSERT INTO `sin_school` VALUES ('274', null, '哈尔滨理工大学');
INSERT INTO `sin_school` VALUES ('275', null, '黑龙江科技大学');
INSERT INTO `sin_school` VALUES ('276', null, '东北农业大学');
INSERT INTO `sin_school` VALUES ('277', null, '哈尔滨医科大学');
INSERT INTO `sin_school` VALUES ('278', null, '黑龙江中医药大学');
INSERT INTO `sin_school` VALUES ('279', null, '哈尔滨师范大学');
INSERT INTO `sin_school` VALUES ('280', null, '哈尔滨商业大学');
INSERT INTO `sin_school` VALUES ('281', null, '哈尔滨体育学院');
INSERT INTO `sin_school` VALUES ('282', null, '哈尔滨金融学院');
INSERT INTO `sin_school` VALUES ('283', null, '哈尔滨学院');
INSERT INTO `sin_school` VALUES ('284', null, '黑龙江工程学院');
INSERT INTO `sin_school` VALUES ('285', null, '黑龙江东方学院');
INSERT INTO `sin_school` VALUES ('286', null, '黑龙江外国语学院');
INSERT INTO `sin_school` VALUES ('287', null, '黑龙江财经学院');
INSERT INTO `sin_school` VALUES ('288', null, '哈尔滨石油学院');
INSERT INTO `sin_school` VALUES ('289', null, '哈尔滨远东理工学院');
INSERT INTO `sin_school` VALUES ('290', null, '哈尔滨剑桥学院');
INSERT INTO `sin_school` VALUES ('291', null, '哈尔滨广厦学院');
INSERT INTO `sin_school` VALUES ('292', null, '哈尔滨华德学院');
INSERT INTO `sin_school` VALUES ('293', null, '黑龙江护理高等专科学校');
INSERT INTO `sin_school` VALUES ('294', null, '哈尔滨幼儿师范高等专科学校');
INSERT INTO `sin_school` VALUES ('295', null, '黑龙江职业学院');
INSERT INTO `sin_school` VALUES ('296', null, '黑龙江建筑职业技术学院');
INSERT INTO `sin_school` VALUES ('297', null, '哈尔滨传媒职业学院');
INSERT INTO `sin_school` VALUES ('298', null, '哈尔滨江南职业技术学院');
INSERT INTO `sin_school` VALUES ('299', null, '哈尔滨应用职业技术学院');
INSERT INTO `sin_school` VALUES ('300', null, '哈尔滨科学技术职业学院');
INSERT INTO `sin_school` VALUES ('301', null, '黑龙江粮食职业学院');
INSERT INTO `sin_school` VALUES ('302', null, '哈尔滨工程技术职业学院');
INSERT INTO `sin_school` VALUES ('303', null, '哈尔滨华夏计算机职业技术学院');
INSERT INTO `sin_school` VALUES ('304', null, '黑龙江艺术职业学院');
INSERT INTO `sin_school` VALUES ('305', null, '黑龙江农业工程职业学院');
INSERT INTO `sin_school` VALUES ('306', null, '黑龙江农垦职业学院');
INSERT INTO `sin_school` VALUES ('307', null, '黑龙江司法警官职业学院');
INSERT INTO `sin_school` VALUES ('308', null, '哈尔滨电力职业技术学院');
INSERT INTO `sin_school` VALUES ('309', null, '哈尔滨铁道职业技术学院');
INSERT INTO `sin_school` VALUES ('310', null, '哈尔滨职业技术学院');
INSERT INTO `sin_school` VALUES ('311', null, '黑龙江生物科技职业学院');
INSERT INTO `sin_school` VALUES ('312', null, '黑龙江公安警官职业学院');
INSERT INTO `sin_school` VALUES ('313', null, '黑龙江信息技术职业学院');
INSERT INTO `sin_school` VALUES ('314', null, '黑龙江旅游职业技术学院');
INSERT INTO `sin_school` VALUES ('315', null, '黑龙江三江美术职业学院');
INSERT INTO `sin_school` VALUES ('316', null, '黑龙江生态工程职业学院');
INSERT INTO `sin_school` VALUES ('317', null, '黑龙江民族职业学院');
INSERT INTO `sin_school` VALUES ('318', null, '鹤岗师范高等专科学校');
INSERT INTO `sin_school` VALUES ('319', null, '黑河学院');
INSERT INTO `sin_school` VALUES ('320', null, '黑龙江工业学院');
INSERT INTO `sin_school` VALUES ('321', null, '佳木斯大学');
INSERT INTO `sin_school` VALUES ('322', null, '佳木斯职业学院');
INSERT INTO `sin_school` VALUES ('323', null, '牡丹江医学院');
INSERT INTO `sin_school` VALUES ('324', null, '牡丹江师范学院');
INSERT INTO `sin_school` VALUES ('325', null, '黑龙江幼儿师范高等专科学校');
INSERT INTO `sin_school` VALUES ('326', null, '牡丹江大学');
INSERT INTO `sin_school` VALUES ('327', null, '黑龙江林业职业技术学院');
INSERT INTO `sin_school` VALUES ('328', null, '黑龙江农业职业技术学院');
INSERT INTO `sin_school` VALUES ('329', null, '黑龙江农业经济职业学院');
INSERT INTO `sin_school` VALUES ('330', null, '黑龙江商业职业学院');
INSERT INTO `sin_school` VALUES ('331', null, '七台河职业学院');
INSERT INTO `sin_school` VALUES ('332', null, '齐齐哈尔大学');
INSERT INTO `sin_school` VALUES ('333', null, '齐齐哈尔医学院');
INSERT INTO `sin_school` VALUES ('334', null, '齐齐哈尔工程学院');
INSERT INTO `sin_school` VALUES ('335', null, '齐齐哈尔高等师范专科学校');
INSERT INTO `sin_school` VALUES ('336', null, '黑龙江交通职业技术学院');
INSERT INTO `sin_school` VALUES ('337', null, '齐齐哈尔理工职业学院');
INSERT INTO `sin_school` VALUES ('338', null, '黑龙江煤炭职业技术学院');
INSERT INTO `sin_school` VALUES ('339', null, '绥化学院');
INSERT INTO `sin_school` VALUES ('340', null, '黑龙江农垦科技职业学院');
INSERT INTO `sin_school` VALUES ('341', null, '伊春职业学院');
INSERT INTO `sin_school` VALUES ('342', null, '白城师范学院');
INSERT INTO `sin_school` VALUES ('343', null, '白城医学高等专科学校');
INSERT INTO `sin_school` VALUES ('344', null, '白城职业技术学院');
INSERT INTO `sin_school` VALUES ('345', null, '长白山职业技术学院');
INSERT INTO `sin_school` VALUES ('346', null, '北华大学');
INSERT INTO `sin_school` VALUES ('347', null, '东北电力大学');
INSERT INTO `sin_school` VALUES ('348', null, '吉林化工学院');
INSERT INTO `sin_school` VALUES ('349', null, '吉林农业科技学院');
INSERT INTO `sin_school` VALUES ('350', null, '吉林医药学院');
INSERT INTO `sin_school` VALUES ('351', null, '吉林铁道职业技术学院');
INSERT INTO `sin_school` VALUES ('352', null, '吉林电子信息职业技术学院');
INSERT INTO `sin_school` VALUES ('353', null, '吉林工业职业技术学院');
INSERT INTO `sin_school` VALUES ('354', null, '辽源职业技术学院');
INSERT INTO `sin_school` VALUES ('355', null, '吉林师范大学');
INSERT INTO `sin_school` VALUES ('356', null, '四平职业大学');
INSERT INTO `sin_school` VALUES ('357', null, '吉林农业工程职业技术学院');
INSERT INTO `sin_school` VALUES ('358', null, '松原职业技术学院');
INSERT INTO `sin_school` VALUES ('359', null, '通化师范学院');
INSERT INTO `sin_school` VALUES ('360', null, '延边大学');
INSERT INTO `sin_school` VALUES ('361', null, '延边职业技术学院');
INSERT INTO `sin_school` VALUES ('362', null, '吉林大学');
INSERT INTO `sin_school` VALUES ('363', null, '东北师范大学');
INSERT INTO `sin_school` VALUES ('364', null, '长春理工大学');
INSERT INTO `sin_school` VALUES ('365', null, '长春工业大学');
INSERT INTO `sin_school` VALUES ('366', null, '吉林建筑大学');
INSERT INTO `sin_school` VALUES ('367', null, '吉林农业大学');
INSERT INTO `sin_school` VALUES ('368', null, '长春中医药大学');
INSERT INTO `sin_school` VALUES ('369', null, '长春师范大学');
INSERT INTO `sin_school` VALUES ('370', null, '吉林财经大学');
INSERT INTO `sin_school` VALUES ('371', null, '长春大学');
INSERT INTO `sin_school` VALUES ('372', null, '吉林工程技术师范学院');
INSERT INTO `sin_school` VALUES ('373', null, '吉林体育学院');
INSERT INTO `sin_school` VALUES ('374', null, '吉林艺术学院');
INSERT INTO `sin_school` VALUES ('375', null, '吉林华桥外国语学院');
INSERT INTO `sin_school` VALUES ('376', null, '吉林工商学院');
INSERT INTO `sin_school` VALUES ('377', null, '长春工程学院');
INSERT INTO `sin_school` VALUES ('378', null, '吉林警察学院');
INSERT INTO `sin_school` VALUES ('379', null, '长春光华学院');
INSERT INTO `sin_school` VALUES ('380', null, '长春建筑学院');
INSERT INTO `sin_school` VALUES ('381', null, '长春科技学院');
INSERT INTO `sin_school` VALUES ('382', null, '吉林动画学院');
INSERT INTO `sin_school` VALUES ('383', null, '长春汽车工业高等专科学校');
INSERT INTO `sin_school` VALUES ('384', null, '长春金融高等专科学校');
INSERT INTO `sin_school` VALUES ('385', null, '长春医学高等专科学校');
INSERT INTO `sin_school` VALUES ('386', null, '吉林交通职业技术学院');
INSERT INTO `sin_school` VALUES ('387', null, '吉林科技职业技术学院');
INSERT INTO `sin_school` VALUES ('388', null, '吉林城市职业技术学院');
INSERT INTO `sin_school` VALUES ('389', null, '长春东方职业学院');
INSERT INTO `sin_school` VALUES ('390', null, '吉林司法警官职业学院');
INSERT INTO `sin_school` VALUES ('391', null, '长春职业技术学院');
INSERT INTO `sin_school` VALUES ('392', null, '长春信息技术职业学院');
INSERT INTO `sin_school` VALUES ('393', null, '辽宁科技大学');
INSERT INTO `sin_school` VALUES ('394', null, '鞍山师范学院');
INSERT INTO `sin_school` VALUES ('395', null, '辽宁科技学院');
INSERT INTO `sin_school` VALUES ('396', null, '辽宁冶金职业技术学院');
INSERT INTO `sin_school` VALUES ('397', null, '朝阳师范高等专科学校');
INSERT INTO `sin_school` VALUES ('398', null, '大连理工大学');
INSERT INTO `sin_school` VALUES ('399', null, '大连海事大学');
INSERT INTO `sin_school` VALUES ('400', null, '大连交通大学');
INSERT INTO `sin_school` VALUES ('401', null, '大连工业大学');
INSERT INTO `sin_school` VALUES ('402', null, '大连海洋大学');
INSERT INTO `sin_school` VALUES ('403', null, '大连医科大学');
INSERT INTO `sin_school` VALUES ('404', null, '辽宁师范大学');
INSERT INTO `sin_school` VALUES ('405', null, '大连外国语大学');
INSERT INTO `sin_school` VALUES ('406', null, '东北财经大学');
INSERT INTO `sin_school` VALUES ('407', null, '大连大学');
INSERT INTO `sin_school` VALUES ('408', null, '大连民族学院');
INSERT INTO `sin_school` VALUES ('409', null, '大连科技学院');
INSERT INTO `sin_school` VALUES ('410', null, '大连财经学院');
INSERT INTO `sin_school` VALUES ('411', null, '大连艺术学院');
INSERT INTO `sin_school` VALUES ('412', null, '大连东软信息学院');
INSERT INTO `sin_school` VALUES ('413', null, '辽宁对外经贸学院');
INSERT INTO `sin_school` VALUES ('414', null, '辽宁警官高等专科学校');
INSERT INTO `sin_school` VALUES ('415', null, '辽宁税务高等专科学校');
INSERT INTO `sin_school` VALUES ('416', null, '大连职业技术学院');
INSERT INTO `sin_school` VALUES ('417', null, '大连航运职业技术学院');
INSERT INTO `sin_school` VALUES ('418', null, '大连装备制造职业技术学院');
INSERT INTO `sin_school` VALUES ('419', null, '大连汽车职业技术学院');
INSERT INTO `sin_school` VALUES ('420', null, '辽宁轻工职业学院');
INSERT INTO `sin_school` VALUES ('421', null, '大连商务职业学院');
INSERT INTO `sin_school` VALUES ('422', null, '大连软件职业学院');
INSERT INTO `sin_school` VALUES ('423', null, '大连翻译职业学院');
INSERT INTO `sin_school` VALUES ('424', null, '大连枫叶职业技术学院');
INSERT INTO `sin_school` VALUES ('425', null, '辽东学院');
INSERT INTO `sin_school` VALUES ('426', null, '辽宁地质工程职业学院');
INSERT INTO `sin_school` VALUES ('427', null, '辽宁机电职业技术学院');
INSERT INTO `sin_school` VALUES ('428', null, '辽宁石油化工大学');
INSERT INTO `sin_school` VALUES ('429', null, '抚顺师范高等专科学校');
INSERT INTO `sin_school` VALUES ('430', null, '抚顺职业技术学院');
INSERT INTO `sin_school` VALUES ('431', null, '辽宁工程技术大学');
INSERT INTO `sin_school` VALUES ('432', null, '阜新高等专科学校');
INSERT INTO `sin_school` VALUES ('433', null, '辽宁财贸学院');
INSERT INTO `sin_school` VALUES ('434', null, '渤海船舶职业学院');
INSERT INTO `sin_school` VALUES ('435', null, '辽宁工业大学');
INSERT INTO `sin_school` VALUES ('436', null, '渤海大学');
INSERT INTO `sin_school` VALUES ('437', null, '辽宁医学院');
INSERT INTO `sin_school` VALUES ('438', null, '锦州师范高等专科学校');
INSERT INTO `sin_school` VALUES ('439', null, '辽宁理工职业学院');
INSERT INTO `sin_school` VALUES ('440', null, '辽宁铁道职业技术学院');
INSERT INTO `sin_school` VALUES ('441', null, '辽宁石化职业技术学院');
INSERT INTO `sin_school` VALUES ('442', null, '辽宁轨道交通职业学院');
INSERT INTO `sin_school` VALUES ('443', null, '辽宁建筑职业学院');
INSERT INTO `sin_school` VALUES ('444', null, '辽阳职业技术学院');
INSERT INTO `sin_school` VALUES ('445', null, '盘锦职业技术学院');
INSERT INTO `sin_school` VALUES ('446', null, '辽河石油职业技术学院');
INSERT INTO `sin_school` VALUES ('447', null, '东北大学');
INSERT INTO `sin_school` VALUES ('448', null, '辽宁大学');
INSERT INTO `sin_school` VALUES ('449', null, '沈阳工业大学');
INSERT INTO `sin_school` VALUES ('450', null, '沈阳航空航天大学');
INSERT INTO `sin_school` VALUES ('451', null, '沈阳理工大学');
INSERT INTO `sin_school` VALUES ('452', null, '沈阳化工大学');
INSERT INTO `sin_school` VALUES ('453', null, '沈阳建筑大学');
INSERT INTO `sin_school` VALUES ('454', null, '沈阳农业大学');
INSERT INTO `sin_school` VALUES ('455', null, '中国医科大学');
INSERT INTO `sin_school` VALUES ('456', null, '辽宁中医药大学');
INSERT INTO `sin_school` VALUES ('457', null, '沈阳药科大学');
INSERT INTO `sin_school` VALUES ('458', null, '沈阳师范大学');
INSERT INTO `sin_school` VALUES ('459', null, '沈阳大学');
INSERT INTO `sin_school` VALUES ('460', null, '中国刑事警察学院');
INSERT INTO `sin_school` VALUES ('461', null, '沈阳医学院');
INSERT INTO `sin_school` VALUES ('462', null, '沈阳体育学院');
INSERT INTO `sin_school` VALUES ('463', null, '沈阳音乐学院');
INSERT INTO `sin_school` VALUES ('464', null, '鲁迅美术学院');
INSERT INTO `sin_school` VALUES ('465', null, '沈阳工程学院');
INSERT INTO `sin_school` VALUES ('466', null, '沈阳工学院');
INSERT INTO `sin_school` VALUES ('467', null, '沈阳城市建设学院');
INSERT INTO `sin_school` VALUES ('468', null, '沈阳城市学院');
INSERT INTO `sin_school` VALUES ('469', null, '辽宁何氏医学院');
INSERT INTO `sin_school` VALUES ('470', null, '辽宁交通高等专科学校');
INSERT INTO `sin_school` VALUES ('471', null, '辽宁民族师范高等专科学校');
INSERT INTO `sin_school` VALUES ('472', null, '辽宁现代服务职业技术学院');
INSERT INTO `sin_school` VALUES ('473', null, '辽宁城市建设职业技术学院');
INSERT INTO `sin_school` VALUES ('474', null, '辽宁卫生职业技术学院');
INSERT INTO `sin_school` VALUES ('475', null, '沈阳北软信息职业技术学院');
INSERT INTO `sin_school` VALUES ('476', null, '辽宁政法职业学院');
INSERT INTO `sin_school` VALUES ('477', null, '辽宁水利职业学院');
INSERT INTO `sin_school` VALUES ('478', null, '沈阳航空职业技术学院');
INSERT INTO `sin_school` VALUES ('479', null, '辽宁体育运动职业技术学院');
INSERT INTO `sin_school` VALUES ('480', null, '辽宁林业职业技术学院');
INSERT INTO `sin_school` VALUES ('481', null, '沈阳职业技术学院');
INSERT INTO `sin_school` VALUES ('482', null, '辽宁金融职业学院');
INSERT INTO `sin_school` VALUES ('483', null, '辽宁广告职业学院');
INSERT INTO `sin_school` VALUES ('484', null, '辽宁经济职业技术学院');
INSERT INTO `sin_school` VALUES ('485', null, '辽宁美术职业学院');
INSERT INTO `sin_school` VALUES ('486', null, '辽宁商贸职业学院');
INSERT INTO `sin_school` VALUES ('487', null, '辽宁装备制造职业技术学院');
INSERT INTO `sin_school` VALUES ('488', null, '铁岭师范高等专科学校');
INSERT INTO `sin_school` VALUES ('489', null, '辽宁工程职业学院');
INSERT INTO `sin_school` VALUES ('490', null, '铁岭卫生职业学院');
INSERT INTO `sin_school` VALUES ('491', null, '辽宁职业学院');
INSERT INTO `sin_school` VALUES ('492', null, '营口理工学院');
INSERT INTO `sin_school` VALUES ('493', null, '辽宁农业职业技术学院');
INSERT INTO `sin_school` VALUES ('494', null, '营口职业技术学院');
INSERT INTO `sin_school` VALUES ('495', null, '滨州医学院');
INSERT INTO `sin_school` VALUES ('496', null, '滨州学院');
INSERT INTO `sin_school` VALUES ('497', null, '滨州职业学院');
INSERT INTO `sin_school` VALUES ('498', null, '德州学院');
INSERT INTO `sin_school` VALUES ('499', null, '德州职业技术学院');
INSERT INTO `sin_school` VALUES ('500', null, '德州科技职业学院');
INSERT INTO `sin_school` VALUES ('501', null, '山东华宇职业技术学院');
INSERT INTO `sin_school` VALUES ('502', null, '东营职业学院');
INSERT INTO `sin_school` VALUES ('503', null, '山东大王职业学院');
INSERT INTO `sin_school` VALUES ('504', null, '山东胜利职业学院');
INSERT INTO `sin_school` VALUES ('505', null, '菏泽学院');
INSERT INTO `sin_school` VALUES ('506', null, '菏泽医学专科学校');
INSERT INTO `sin_school` VALUES ('507', null, '菏泽家政职业学院');
INSERT INTO `sin_school` VALUES ('508', null, '菏泽职业学院');
INSERT INTO `sin_school` VALUES ('509', null, '山东大学');
INSERT INTO `sin_school` VALUES ('510', null, '济南大学');
INSERT INTO `sin_school` VALUES ('511', null, '山东建筑大学');
INSERT INTO `sin_school` VALUES ('512', null, '齐鲁工业大学');
INSERT INTO `sin_school` VALUES ('513', null, '山东中医药大学');
INSERT INTO `sin_school` VALUES ('514', null, '山东师范大学');
INSERT INTO `sin_school` VALUES ('515', null, '山东财经大学');
INSERT INTO `sin_school` VALUES ('516', null, '山东体育学院');
INSERT INTO `sin_school` VALUES ('517', null, '山东艺术学院');
INSERT INTO `sin_school` VALUES ('518', null, '山东工艺美术学院');
INSERT INTO `sin_school` VALUES ('519', null, '山东警察学院');
INSERT INTO `sin_school` VALUES ('520', null, '山东交通学院');
INSERT INTO `sin_school` VALUES ('521', null, '山东女子学院');
INSERT INTO `sin_school` VALUES ('522', null, '山东英才学院');
INSERT INTO `sin_school` VALUES ('523', null, '山东协和学院');
INSERT INTO `sin_school` VALUES ('524', null, '齐鲁师范学院');
INSERT INTO `sin_school` VALUES ('525', null, '山东青年政治学院');
INSERT INTO `sin_school` VALUES ('526', null, '山东管理学院');
INSERT INTO `sin_school` VALUES ('527', null, '山东农业工程学院');
INSERT INTO `sin_school` VALUES ('528', null, '山东政法学院');
INSERT INTO `sin_school` VALUES ('529', null, '山东电力高等专科学校');
INSERT INTO `sin_school` VALUES ('530', null, '济南幼儿师范高等专科学校');
INSERT INTO `sin_school` VALUES ('531', null, '山东商业职业技术学院');
INSERT INTO `sin_school` VALUES ('532', null, '山东职业学院');
INSERT INTO `sin_school` VALUES ('533', null, '山东传媒职业学院');
INSERT INTO `sin_school` VALUES ('534', null, '济南护理职业学院');
INSERT INTO `sin_school` VALUES ('535', null, '山东劳动职业技术学院');
INSERT INTO `sin_school` VALUES ('536', null, '山东力明科技职业学院');
INSERT INTO `sin_school` VALUES ('537', null, '山东圣翰财贸职业学院');
INSERT INTO `sin_school` VALUES ('538', null, '山东现代职业学院');
INSERT INTO `sin_school` VALUES ('539', null, '济南职业学院');
INSERT INTO `sin_school` VALUES ('540', null, '山东凯文科技职业学院');
INSERT INTO `sin_school` VALUES ('541', null, '济南工程职业技术学院');
INSERT INTO `sin_school` VALUES ('542', null, '山东电子职业技术学院');
INSERT INTO `sin_school` VALUES ('543', null, '山东旅游职业学院');
INSERT INTO `sin_school` VALUES ('544', null, '山东杏林科技职业学院');
INSERT INTO `sin_school` VALUES ('545', null, '山东外事翻译职业学院');
INSERT INTO `sin_school` VALUES ('546', null, '山东城市建设职业学院');
INSERT INTO `sin_school` VALUES ('547', null, '山东司法警官职业学院');
INSERT INTO `sin_school` VALUES ('548', null, '曲阜师范大学');
INSERT INTO `sin_school` VALUES ('549', null, '济宁医学院');
INSERT INTO `sin_school` VALUES ('550', null, '济宁学院');
INSERT INTO `sin_school` VALUES ('551', null, '山东理工职业学院');
INSERT INTO `sin_school` VALUES ('552', null, '曲阜远东职业技术学院');
INSERT INTO `sin_school` VALUES ('553', null, '济宁职业技术学院');
INSERT INTO `sin_school` VALUES ('554', null, '莱芜职业技术学院');
INSERT INTO `sin_school` VALUES ('555', null, '聊城大学');
INSERT INTO `sin_school` VALUES ('556', null, '聊城职业技术学院');
INSERT INTO `sin_school` VALUES ('557', null, '临沂大学');
INSERT INTO `sin_school` VALUES ('558', null, '山东医学高等专科学校');
INSERT INTO `sin_school` VALUES ('559', null, '临沂职业学院');
INSERT INTO `sin_school` VALUES ('560', null, '中国海洋大学');
INSERT INTO `sin_school` VALUES ('561', null, '山东科技大学');
INSERT INTO `sin_school` VALUES ('562', null, '青岛科技大学');
INSERT INTO `sin_school` VALUES ('563', null, '青岛理工大学');
INSERT INTO `sin_school` VALUES ('564', null, '青岛农业大学');
INSERT INTO `sin_school` VALUES ('565', null, '青岛大学');
INSERT INTO `sin_school` VALUES ('566', null, '青岛滨海学院');
INSERT INTO `sin_school` VALUES ('567', null, '青岛黄海学院');
INSERT INTO `sin_school` VALUES ('568', null, '青岛工学院');
INSERT INTO `sin_school` VALUES ('569', null, '青岛远洋船员职业学院');
INSERT INTO `sin_school` VALUES ('570', null, '青岛职业技术学院');
INSERT INTO `sin_school` VALUES ('571', null, '青岛飞洋职业技术学院');
INSERT INTO `sin_school` VALUES ('572', null, '山东外贸职业学院');
INSERT INTO `sin_school` VALUES ('573', null, '北京大学');
INSERT INTO `sin_school` VALUES ('574', null, '中国人民大学');
INSERT INTO `sin_school` VALUES ('575', null, '清华大学');
INSERT INTO `sin_school` VALUES ('576', null, '北京交通大学');
INSERT INTO `sin_school` VALUES ('577', null, '北京科技大学');
INSERT INTO `sin_school` VALUES ('578', null, '北京化工大学');
INSERT INTO `sin_school` VALUES ('579', null, '北京邮电大学');
INSERT INTO `sin_school` VALUES ('580', null, '中国农业大学');
INSERT INTO `sin_school` VALUES ('581', null, '北京林业大学');
INSERT INTO `sin_school` VALUES ('582', null, '北京中医药大学');
INSERT INTO `sin_school` VALUES ('583', null, '北京师范大学');
INSERT INTO `sin_school` VALUES ('584', null, '北京外国语大学');
INSERT INTO `sin_school` VALUES ('585', null, '北京语言大学');
INSERT INTO `sin_school` VALUES ('586', null, '中央财经大学');
INSERT INTO `sin_school` VALUES ('587', null, '对外经济贸易大学');
INSERT INTO `sin_school` VALUES ('588', null, '中国政法大学');
INSERT INTO `sin_school` VALUES ('589', null, '华北电力大学');
INSERT INTO `sin_school` VALUES ('590', null, '中国石油大学');
INSERT INTO `sin_school` VALUES ('591', null, '中央民族大学');
INSERT INTO `sin_school` VALUES ('592', null, '中国人民公安大学');
INSERT INTO `sin_school` VALUES ('593', null, '北京协和医学院');
INSERT INTO `sin_school` VALUES ('594', null, '北京体育大学');
INSERT INTO `sin_school` VALUES ('595', null, '北京航空航天大学');
INSERT INTO `sin_school` VALUES ('596', null, '北京理工大学');
INSERT INTO `sin_school` VALUES ('597', null, '中国科学院大学');
INSERT INTO `sin_school` VALUES ('598', null, '北京工业大学');
INSERT INTO `sin_school` VALUES ('599', null, '北方工业大学');
INSERT INTO `sin_school` VALUES ('600', null, '北京工商大学');
INSERT INTO `sin_school` VALUES ('601', null, '北京建筑大学');
INSERT INTO `sin_school` VALUES ('602', null, '首都医科大学');
INSERT INTO `sin_school` VALUES ('603', null, '首都师范大学');
INSERT INTO `sin_school` VALUES ('604', null, '首都经济贸易大学');
INSERT INTO `sin_school` VALUES ('605', null, '北京信息科技大学');
INSERT INTO `sin_school` VALUES ('606', null, '北京联合大学');
INSERT INTO `sin_school` VALUES ('607', null, '中国传媒大学');
INSERT INTO `sin_school` VALUES ('608', null, '国际关系学院');
INSERT INTO `sin_school` VALUES ('609', null, '中央音乐学院');
INSERT INTO `sin_school` VALUES ('610', null, '中央美术学院');
INSERT INTO `sin_school` VALUES ('611', null, '中央戏剧学院');
INSERT INTO `sin_school` VALUES ('612', null, '北京电子科技学院');
INSERT INTO `sin_school` VALUES ('613', null, '外交学院');
INSERT INTO `sin_school` VALUES ('614', null, '中国劳动关系学院');
INSERT INTO `sin_school` VALUES ('615', null, '中国青年政治学院');
INSERT INTO `sin_school` VALUES ('616', null, '中华女子学院');
INSERT INTO `sin_school` VALUES ('617', null, '北京服装学院');
INSERT INTO `sin_school` VALUES ('618', null, '北京印刷学院');
INSERT INTO `sin_school` VALUES ('619', null, '北京石油化工学院');
INSERT INTO `sin_school` VALUES ('620', null, '北京农学院');
INSERT INTO `sin_school` VALUES ('621', null, '首都体育学院');
INSERT INTO `sin_school` VALUES ('622', null, '北京第二外国语学院');
INSERT INTO `sin_school` VALUES ('623', null, '北京物资学院');
INSERT INTO `sin_school` VALUES ('624', null, '中国音乐学院');
INSERT INTO `sin_school` VALUES ('625', null, '中国戏曲学院');
INSERT INTO `sin_school` VALUES ('626', null, '北京电影学院');
INSERT INTO `sin_school` VALUES ('627', null, '北京舞蹈学院');
INSERT INTO `sin_school` VALUES ('628', null, '北京城市学院');
INSERT INTO `sin_school` VALUES ('629', null, '首钢工学院');
INSERT INTO `sin_school` VALUES ('630', null, '北京警察学院');
INSERT INTO `sin_school` VALUES ('631', null, '北京青年政治学院');
INSERT INTO `sin_school` VALUES ('632', null, '北京工业职业技术学院');
INSERT INTO `sin_school` VALUES ('633', null, '北京信息职业技术学院');
INSERT INTO `sin_school` VALUES ('634', null, '北京电子科技职业学院');
INSERT INTO `sin_school` VALUES ('635', null, '北京吉利大学');
INSERT INTO `sin_school` VALUES ('636', null, '北京社会管理职业学院');
INSERT INTO `sin_school` VALUES ('637', null, '北京新圆明职业学院');
INSERT INTO `sin_school` VALUES ('638', null, '北京体育职业学院');
INSERT INTO `sin_school` VALUES ('639', null, '北京交通运输职业学院');
INSERT INTO `sin_school` VALUES ('640', null, '北京卫生职业学院');
INSERT INTO `sin_school` VALUES ('641', null, '北京京北职业技术学院');
INSERT INTO `sin_school` VALUES ('642', null, '北京交通职业技术学院');
INSERT INTO `sin_school` VALUES ('643', null, '北京农业职业学院');
INSERT INTO `sin_school` VALUES ('644', null, '北京政法职业学院');
INSERT INTO `sin_school` VALUES ('645', null, '北京财贸职业学院');
INSERT INTO `sin_school` VALUES ('646', null, '北京北大方正软件职业技术学院');
INSERT INTO `sin_school` VALUES ('647', null, '北京经贸职业学院');
INSERT INTO `sin_school` VALUES ('648', null, '北京经济技术职业学院');
INSERT INTO `sin_school` VALUES ('649', null, '北京戏曲艺术职业学院');
INSERT INTO `sin_school` VALUES ('650', null, '北京汇佳职业学院');
INSERT INTO `sin_school` VALUES ('651', null, '北京现代职业技术学院');
INSERT INTO `sin_school` VALUES ('652', null, '北京科技经营管理学院');
INSERT INTO `sin_school` VALUES ('653', null, '北京科技职业学院');
INSERT INTO `sin_school` VALUES ('654', null, '北京培黎职业学院');
INSERT INTO `sin_school` VALUES ('655', null, '北京经济管理职业学院');
INSERT INTO `sin_school` VALUES ('656', null, '北京劳动保障职业学院');
INSERT INTO `sin_school` VALUES ('657', null, '复旦大学');
INSERT INTO `sin_school` VALUES ('658', null, '同济大学');
INSERT INTO `sin_school` VALUES ('659', null, '上海交通大学');
INSERT INTO `sin_school` VALUES ('660', null, '华东理工大学');
INSERT INTO `sin_school` VALUES ('661', null, '东华大学');
INSERT INTO `sin_school` VALUES ('662', null, '华东师范大学');
INSERT INTO `sin_school` VALUES ('663', null, '上海外国语大学');
INSERT INTO `sin_school` VALUES ('664', null, '上海财经大学');
INSERT INTO `sin_school` VALUES ('665', null, '上海理工大学');
INSERT INTO `sin_school` VALUES ('666', null, '上海海事大学');
INSERT INTO `sin_school` VALUES ('667', null, '上海海洋大学');
INSERT INTO `sin_school` VALUES ('668', null, '上海中医药大学');
INSERT INTO `sin_school` VALUES ('669', null, '上海师范大学');
INSERT INTO `sin_school` VALUES ('670', null, '上海对外经贸大学');
INSERT INTO `sin_school` VALUES ('671', null, '华东政法大学');
INSERT INTO `sin_school` VALUES ('672', null, '上海大学');
INSERT INTO `sin_school` VALUES ('673', null, '上海工程技术大学');
INSERT INTO `sin_school` VALUES ('674', null, '上海纽约大学');
INSERT INTO `sin_school` VALUES ('675', null, '上海海关学院');
INSERT INTO `sin_school` VALUES ('676', null, '上海电力学院');
INSERT INTO `sin_school` VALUES ('677', null, '上海应用技术学院');
INSERT INTO `sin_school` VALUES ('678', null, '上海体育学院');
INSERT INTO `sin_school` VALUES ('679', null, '上海音乐学院');
INSERT INTO `sin_school` VALUES ('680', null, '上海戏剧学院');
INSERT INTO `sin_school` VALUES ('681', null, '上海立信会计学院');
INSERT INTO `sin_school` VALUES ('682', null, '上海电机学院');
INSERT INTO `sin_school` VALUES ('683', null, '上海金融学院');
INSERT INTO `sin_school` VALUES ('684', null, '上海杉达学院');
INSERT INTO `sin_school` VALUES ('685', null, '上海商学院');
INSERT INTO `sin_school` VALUES ('686', null, '上海视觉艺术学院');
INSERT INTO `sin_school` VALUES ('687', null, '上海政法学院');
INSERT INTO `sin_school` VALUES ('688', null, '上海第二工业大学');
INSERT INTO `sin_school` VALUES ('689', null, '上海建桥学院');
INSERT INTO `sin_school` VALUES ('690', null, '上海医疗器械高等专科学校');
INSERT INTO `sin_school` VALUES ('691', null, '上海旅游高等专科学校');
INSERT INTO `sin_school` VALUES ('692', null, '上海公安高等专科学校');
INSERT INTO `sin_school` VALUES ('693', null, '上海出版印刷高等专科学校');
INSERT INTO `sin_school` VALUES ('694', null, '上海医药高等专科学校');
INSERT INTO `sin_school` VALUES ('695', null, '上海民航职业技术学院');
INSERT INTO `sin_school` VALUES ('696', null, '上海东海职业技术学院');
INSERT INTO `sin_school` VALUES ('697', null, '上海新侨职业技术学院');
INSERT INTO `sin_school` VALUES ('698', null, '上海兴韦信息技术职业学院');
INSERT INTO `sin_school` VALUES ('699', null, '上海体育职业学院');
INSERT INTO `sin_school` VALUES ('700', null, '上海健康职业技术学院');
INSERT INTO `sin_school` VALUES ('701', null, '上海行健职业学院');
INSERT INTO `sin_school` VALUES ('702', null, '上海城市管理职业技术学院');
INSERT INTO `sin_school` VALUES ('703', null, '上海交通职业技术学院');
INSERT INTO `sin_school` VALUES ('704', null, '上海海事职业技术学院');
INSERT INTO `sin_school` VALUES ('705', null, '上海电子信息职业技术学院');
INSERT INTO `sin_school` VALUES ('706', null, '上海震旦职业学院');
INSERT INTO `sin_school` VALUES ('707', null, '上海民远职业技术学院');
INSERT INTO `sin_school` VALUES ('708', null, '上海欧华职业技术学院');
INSERT INTO `sin_school` VALUES ('709', null, '上海思博职业技术学院');
INSERT INTO `sin_school` VALUES ('710', null, '上海立达职业技术学院');
INSERT INTO `sin_school` VALUES ('711', null, '上海工艺美术职业学院');
INSERT INTO `sin_school` VALUES ('712', null, '上海济光职业技术学院');
INSERT INTO `sin_school` VALUES ('713', null, '上海工商外国语职业学院');
INSERT INTO `sin_school` VALUES ('714', null, '上海科学技术职业学院');
INSERT INTO `sin_school` VALUES ('715', null, '上海农林职业技术学院');
INSERT INTO `sin_school` VALUES ('716', null, '上海邦德职业技术学院');
INSERT INTO `sin_school` VALUES ('717', null, '上海中侨职业技术学院');
INSERT INTO `sin_school` VALUES ('718', null, '上海建峰职业技术学院');
INSERT INTO `sin_school` VALUES ('719', null, '上海电影艺术职业学院');
INSERT INTO `sin_school` VALUES ('720', null, '上海中华职业技术学院');
INSERT INTO `sin_school` VALUES ('721', null, '上海工会管理职业学院');
INSERT INTO `sin_school` VALUES ('722', null, '河北工业大学');
INSERT INTO `sin_school` VALUES ('723', null, '南开大学');
INSERT INTO `sin_school` VALUES ('724', null, '天津大学');
INSERT INTO `sin_school` VALUES ('725', null, '中国民航大学');
INSERT INTO `sin_school` VALUES ('726', null, '天津科技大学');
INSERT INTO `sin_school` VALUES ('727', null, '天津工业大学');
INSERT INTO `sin_school` VALUES ('728', null, '天津理工大学');
INSERT INTO `sin_school` VALUES ('729', null, '天津医科大学');
INSERT INTO `sin_school` VALUES ('730', null, '天津中医药大学');
INSERT INTO `sin_school` VALUES ('731', null, '天津师范大学');
INSERT INTO `sin_school` VALUES ('732', null, '天津职业技术师范大学');
INSERT INTO `sin_school` VALUES ('733', null, '天津外国语大学');
INSERT INTO `sin_school` VALUES ('734', null, '天津商业大学');
INSERT INTO `sin_school` VALUES ('735', null, '天津财经大学');
INSERT INTO `sin_school` VALUES ('736', null, '天津城建大学');
INSERT INTO `sin_school` VALUES ('737', null, '天津农学院');
INSERT INTO `sin_school` VALUES ('738', null, '天津体育学院');
INSERT INTO `sin_school` VALUES ('739', null, '天津音乐学院');
INSERT INTO `sin_school` VALUES ('740', null, '天津美术学院');
INSERT INTO `sin_school` VALUES ('741', null, '天津天狮学院');
INSERT INTO `sin_school` VALUES ('742', null, '天津医学高等专科学校');
INSERT INTO `sin_school` VALUES ('743', null, '天津市职业大学');
INSERT INTO `sin_school` VALUES ('744', null, '天津商务职业学院');
INSERT INTO `sin_school` VALUES ('745', null, '天津广播影视职业学院');
INSERT INTO `sin_school` VALUES ('746', null, '天津中德职业技术学院');
INSERT INTO `sin_school` VALUES ('747', null, '天津滨海职业学院');
INSERT INTO `sin_school` VALUES ('748', null, '天津工程职业技术学院');
INSERT INTO `sin_school` VALUES ('749', null, '天津青年职业学院');
INSERT INTO `sin_school` VALUES ('750', null, '天津渤海职业技术学院');
INSERT INTO `sin_school` VALUES ('751', null, '天津电子信息职业技术学院');
INSERT INTO `sin_school` VALUES ('752', null, '天津机电职业技术学院');
INSERT INTO `sin_school` VALUES ('753', null, '天津现代职业技术学院');
INSERT INTO `sin_school` VALUES ('754', null, '天津公安警官职业学院');
INSERT INTO `sin_school` VALUES ('755', null, '天津轻工职业技术学院');
INSERT INTO `sin_school` VALUES ('756', null, '天津国土资源和房屋职业学院');
INSERT INTO `sin_school` VALUES ('757', null, '天津开发区职业技术学院');
INSERT INTO `sin_school` VALUES ('758', null, '天津艺术职业学院');
INSERT INTO `sin_school` VALUES ('759', null, '天津交通职业学院');
INSERT INTO `sin_school` VALUES ('760', null, '天津冶金职业技术学院');
INSERT INTO `sin_school` VALUES ('761', null, '天津石油职业技术学院');
INSERT INTO `sin_school` VALUES ('762', null, '天津城市职业学院');
INSERT INTO `sin_school` VALUES ('763', null, '天津铁道职业技术学院');
INSERT INTO `sin_school` VALUES ('764', null, '天津工艺美术职业学院');
INSERT INTO `sin_school` VALUES ('765', null, '天津城市建设管理职业技术学院');
INSERT INTO `sin_school` VALUES ('766', null, '天津生物工程职业技术学院');
INSERT INTO `sin_school` VALUES ('767', null, '天津海运职业学院');
INSERT INTO `sin_school` VALUES ('768', null, '重庆大学');
INSERT INTO `sin_school` VALUES ('769', null, '西南大学');
INSERT INTO `sin_school` VALUES ('770', null, '重庆邮电大学');
INSERT INTO `sin_school` VALUES ('771', null, '重庆交通大学');
INSERT INTO `sin_school` VALUES ('772', null, '重庆医科大学');
INSERT INTO `sin_school` VALUES ('773', null, '重庆师范大学');
INSERT INTO `sin_school` VALUES ('774', null, '西南政法大学');
INSERT INTO `sin_school` VALUES ('775', null, '重庆理工大学');
INSERT INTO `sin_school` VALUES ('776', null, '重庆工商大学');
INSERT INTO `sin_school` VALUES ('777', null, '重庆文理学院');
INSERT INTO `sin_school` VALUES ('778', null, '重庆三峡学院');
INSERT INTO `sin_school` VALUES ('779', null, '长江师范学院');
INSERT INTO `sin_school` VALUES ('780', null, '四川外国语大学');
INSERT INTO `sin_school` VALUES ('781', null, '四川美术学院');
INSERT INTO `sin_school` VALUES ('782', null, '重庆科技学院');
INSERT INTO `sin_school` VALUES ('783', null, '重庆警察学院');
INSERT INTO `sin_school` VALUES ('784', null, '重庆人文科技学院');
INSERT INTO `sin_school` VALUES ('785', null, '重庆第二师范学院');
INSERT INTO `sin_school` VALUES ('786', null, '重庆电力高等专科学校');
INSERT INTO `sin_school` VALUES ('787', null, '重庆幼儿师范高等专科学校');
INSERT INTO `sin_school` VALUES ('788', null, '重庆三峡医药高等专科学校');
INSERT INTO `sin_school` VALUES ('789', null, '重庆医药高等专科学校');
INSERT INTO `sin_school` VALUES ('790', null, '重庆航天职业技术学院');
INSERT INTO `sin_school` VALUES ('791', null, '重庆传媒职业学院');
INSERT INTO `sin_school` VALUES ('792', null, '重庆房地产职业学院');
INSERT INTO `sin_school` VALUES ('793', null, '重庆青年职业技术学院');
INSERT INTO `sin_school` VALUES ('794', null, '重庆财经职业学院');
INSERT INTO `sin_school` VALUES ('795', null, '重庆科创职业学院');
INSERT INTO `sin_school` VALUES ('796', null, '重庆建筑工程职业学院');
INSERT INTO `sin_school` VALUES ('797', null, '重庆电讯职业学院');
INSERT INTO `sin_school` VALUES ('798', null, '重庆能源职业学院');
INSERT INTO `sin_school` VALUES ('799', null, '重庆商务职业学院');
INSERT INTO `sin_school` VALUES ('800', null, '重庆交通职业学院');
INSERT INTO `sin_school` VALUES ('801', null, '重庆化工职业学院');
INSERT INTO `sin_school` VALUES ('802', null, '重庆旅游职业学院');
INSERT INTO `sin_school` VALUES ('803', null, '重庆安全技术职业学院');
INSERT INTO `sin_school` VALUES ('804', null, '重庆公共运输职业学院');
INSERT INTO `sin_school` VALUES ('805', null, '重庆艺术工程职业学院');
INSERT INTO `sin_school` VALUES ('806', null, '重庆轻工职业学院');
INSERT INTO `sin_school` VALUES ('807', null, '重庆电信职业学院');
INSERT INTO `sin_school` VALUES ('808', null, '重庆经贸职业学院');
INSERT INTO `sin_school` VALUES ('809', null, '重庆文化艺术职业学院');
INSERT INTO `sin_school` VALUES ('810', null, '重庆服装工程职业学院');
INSERT INTO `sin_school` VALUES ('811', null, '重庆工业职业技术学院');
INSERT INTO `sin_school` VALUES ('812', null, '重庆三峡职业学院');
INSERT INTO `sin_school` VALUES ('813', null, '重庆工贸职业技术学院');
INSERT INTO `sin_school` VALUES ('814', null, '重庆机电职业技术学院');
INSERT INTO `sin_school` VALUES ('815', null, '重庆正大软件职业技术学院');
INSERT INTO `sin_school` VALUES ('816', null, '重庆电子工程职业学院');
INSERT INTO `sin_school` VALUES ('817', null, '重庆海联职业技术学院');
INSERT INTO `sin_school` VALUES ('818', null, '重庆信息技术职业学院');
INSERT INTO `sin_school` VALUES ('819', null, '重庆城市管理职业学院');
INSERT INTO `sin_school` VALUES ('820', null, '重庆工程职业技术学院');
INSERT INTO `sin_school` VALUES ('821', null, '重庆城市职业学院');
INSERT INTO `sin_school` VALUES ('822', null, '重庆水利电力职业技术学院');
INSERT INTO `sin_school` VALUES ('823', null, '重庆工商职业学院');
INSERT INTO `sin_school` VALUES ('824', null, '重庆民生职业技术学院');
INSERT INTO `sin_school` VALUES ('825', null, '东北石油大学');
INSERT INTO `sin_school` VALUES ('826', null, '黑龙江八一农垦大学');
INSERT INTO `sin_school` VALUES ('827', null, '大庆师范学院');
INSERT INTO `sin_school` VALUES ('828', null, '大庆医学高等专科学校');
INSERT INTO `sin_school` VALUES ('829', null, '大庆职业学院');
INSERT INTO `sin_school` VALUES ('830', null, '大兴安岭职业学院');
INSERT INTO `sin_school` VALUES ('831', null, '东北林业大学');
INSERT INTO `sin_school` VALUES ('832', null, '哈尔滨工业大学');
INSERT INTO `sin_school` VALUES ('833', null, '哈尔滨工程大学');
INSERT INTO `sin_school` VALUES ('834', null, '黑龙江大学');
INSERT INTO `sin_school` VALUES ('835', null, '哈尔滨理工大学');
INSERT INTO `sin_school` VALUES ('836', null, '黑龙江科技大学');
INSERT INTO `sin_school` VALUES ('837', null, '东北农业大学');
INSERT INTO `sin_school` VALUES ('838', null, '哈尔滨医科大学');
INSERT INTO `sin_school` VALUES ('839', null, '黑龙江中医药大学');
INSERT INTO `sin_school` VALUES ('840', null, '哈尔滨师范大学');
INSERT INTO `sin_school` VALUES ('841', null, '哈尔滨商业大学');
INSERT INTO `sin_school` VALUES ('842', null, '哈尔滨体育学院');
INSERT INTO `sin_school` VALUES ('843', null, '哈尔滨金融学院');
INSERT INTO `sin_school` VALUES ('844', null, '哈尔滨学院');
INSERT INTO `sin_school` VALUES ('845', null, '黑龙江工程学院');
INSERT INTO `sin_school` VALUES ('846', null, '黑龙江东方学院');
INSERT INTO `sin_school` VALUES ('847', null, '黑龙江外国语学院');
INSERT INTO `sin_school` VALUES ('848', null, '黑龙江财经学院');
INSERT INTO `sin_school` VALUES ('849', null, '哈尔滨石油学院');
INSERT INTO `sin_school` VALUES ('850', null, '哈尔滨远东理工学院');
INSERT INTO `sin_school` VALUES ('851', null, '哈尔滨剑桥学院');
INSERT INTO `sin_school` VALUES ('852', null, '哈尔滨广厦学院');
INSERT INTO `sin_school` VALUES ('853', null, '哈尔滨华德学院');
INSERT INTO `sin_school` VALUES ('854', null, '黑龙江护理高等专科学校');
INSERT INTO `sin_school` VALUES ('855', null, '哈尔滨幼儿师范高等专科学校');
INSERT INTO `sin_school` VALUES ('856', null, '黑龙江职业学院');
INSERT INTO `sin_school` VALUES ('857', null, '黑龙江建筑职业技术学院');
INSERT INTO `sin_school` VALUES ('858', null, '哈尔滨传媒职业学院');
INSERT INTO `sin_school` VALUES ('859', null, '哈尔滨江南职业技术学院');
INSERT INTO `sin_school` VALUES ('860', null, '哈尔滨应用职业技术学院');
INSERT INTO `sin_school` VALUES ('861', null, '哈尔滨科学技术职业学院');
INSERT INTO `sin_school` VALUES ('862', null, '黑龙江粮食职业学院');
INSERT INTO `sin_school` VALUES ('863', null, '哈尔滨工程技术职业学院');
INSERT INTO `sin_school` VALUES ('864', null, '哈尔滨华夏计算机职业技术学院');
INSERT INTO `sin_school` VALUES ('865', null, '黑龙江艺术职业学院');
INSERT INTO `sin_school` VALUES ('866', null, '黑龙江农业工程职业学院');
INSERT INTO `sin_school` VALUES ('867', null, '黑龙江农垦职业学院');
INSERT INTO `sin_school` VALUES ('868', null, '黑龙江司法警官职业学院');
INSERT INTO `sin_school` VALUES ('869', null, '哈尔滨电力职业技术学院');
INSERT INTO `sin_school` VALUES ('870', null, '哈尔滨铁道职业技术学院');
INSERT INTO `sin_school` VALUES ('871', null, '哈尔滨职业技术学院');
INSERT INTO `sin_school` VALUES ('872', null, '黑龙江生物科技职业学院');
INSERT INTO `sin_school` VALUES ('873', null, '黑龙江公安警官职业学院');
INSERT INTO `sin_school` VALUES ('874', null, '黑龙江信息技术职业学院');
INSERT INTO `sin_school` VALUES ('875', null, '黑龙江旅游职业技术学院');
INSERT INTO `sin_school` VALUES ('876', null, '黑龙江三江美术职业学院');
INSERT INTO `sin_school` VALUES ('877', null, '黑龙江生态工程职业学院');
INSERT INTO `sin_school` VALUES ('878', null, '黑龙江民族职业学院');
INSERT INTO `sin_school` VALUES ('879', null, '鹤岗师范高等专科学校');
INSERT INTO `sin_school` VALUES ('880', null, '黑河学院');
INSERT INTO `sin_school` VALUES ('881', null, '黑龙江工业学院');
INSERT INTO `sin_school` VALUES ('882', null, '佳木斯大学');
INSERT INTO `sin_school` VALUES ('883', null, '佳木斯职业学院');
INSERT INTO `sin_school` VALUES ('884', null, '牡丹江医学院');
INSERT INTO `sin_school` VALUES ('885', null, '牡丹江师范学院');
INSERT INTO `sin_school` VALUES ('886', null, '黑龙江幼儿师范高等专科学校');
INSERT INTO `sin_school` VALUES ('887', null, '牡丹江大学');
INSERT INTO `sin_school` VALUES ('888', null, '黑龙江林业职业技术学院');
INSERT INTO `sin_school` VALUES ('889', null, '黑龙江农业职业技术学院');
INSERT INTO `sin_school` VALUES ('890', null, '黑龙江农业经济职业学院');
INSERT INTO `sin_school` VALUES ('891', null, '黑龙江商业职业学院');
INSERT INTO `sin_school` VALUES ('892', null, '七台河职业学院');
INSERT INTO `sin_school` VALUES ('893', null, '齐齐哈尔大学');
INSERT INTO `sin_school` VALUES ('894', null, '齐齐哈尔医学院');
INSERT INTO `sin_school` VALUES ('895', null, '齐齐哈尔工程学院');
INSERT INTO `sin_school` VALUES ('896', null, '齐齐哈尔高等师范专科学校');
INSERT INTO `sin_school` VALUES ('897', null, '黑龙江交通职业技术学院');
INSERT INTO `sin_school` VALUES ('898', null, '齐齐哈尔理工职业学院');
INSERT INTO `sin_school` VALUES ('899', null, '黑龙江煤炭职业技术学院');
INSERT INTO `sin_school` VALUES ('900', null, '绥化学院');
INSERT INTO `sin_school` VALUES ('901', null, '黑龙江农垦科技职业学院');
INSERT INTO `sin_school` VALUES ('902', null, '伊春职业学院');
INSERT INTO `sin_school` VALUES ('903', null, '白城师范学院');
INSERT INTO `sin_school` VALUES ('904', null, '白城医学高等专科学校');
INSERT INTO `sin_school` VALUES ('905', null, '白城职业技术学院');
INSERT INTO `sin_school` VALUES ('906', null, '长白山职业技术学院');
INSERT INTO `sin_school` VALUES ('907', null, '北华大学');
INSERT INTO `sin_school` VALUES ('908', null, '东北电力大学');
INSERT INTO `sin_school` VALUES ('909', null, '吉林化工学院');
INSERT INTO `sin_school` VALUES ('910', null, '吉林农业科技学院');
INSERT INTO `sin_school` VALUES ('911', null, '吉林医药学院');
INSERT INTO `sin_school` VALUES ('912', null, '吉林铁道职业技术学院');
INSERT INTO `sin_school` VALUES ('913', null, '吉林电子信息职业技术学院');
INSERT INTO `sin_school` VALUES ('914', null, '吉林工业职业技术学院');
INSERT INTO `sin_school` VALUES ('915', null, '辽源职业技术学院');
INSERT INTO `sin_school` VALUES ('916', null, '吉林师范大学');
INSERT INTO `sin_school` VALUES ('917', null, '四平职业大学');
INSERT INTO `sin_school` VALUES ('918', null, '吉林农业工程职业技术学院');
INSERT INTO `sin_school` VALUES ('919', null, '松原职业技术学院');
INSERT INTO `sin_school` VALUES ('920', null, '通化师范学院');
INSERT INTO `sin_school` VALUES ('921', null, '延边大学');
INSERT INTO `sin_school` VALUES ('922', null, '延边职业技术学院');
INSERT INTO `sin_school` VALUES ('923', null, '吉林大学');
INSERT INTO `sin_school` VALUES ('924', null, '东北师范大学');
INSERT INTO `sin_school` VALUES ('925', null, '长春理工大学');
INSERT INTO `sin_school` VALUES ('926', null, '长春工业大学');
INSERT INTO `sin_school` VALUES ('927', null, '吉林建筑大学');
INSERT INTO `sin_school` VALUES ('928', null, '吉林农业大学');
INSERT INTO `sin_school` VALUES ('929', null, '长春中医药大学');
INSERT INTO `sin_school` VALUES ('930', null, '长春师范大学');
INSERT INTO `sin_school` VALUES ('931', null, '吉林财经大学');
INSERT INTO `sin_school` VALUES ('932', null, '长春大学');
INSERT INTO `sin_school` VALUES ('933', null, '吉林工程技术师范学院');
INSERT INTO `sin_school` VALUES ('934', null, '吉林体育学院');
INSERT INTO `sin_school` VALUES ('935', null, '吉林艺术学院');
INSERT INTO `sin_school` VALUES ('936', null, '吉林华桥外国语学院');
INSERT INTO `sin_school` VALUES ('937', null, '吉林工商学院');
INSERT INTO `sin_school` VALUES ('938', null, '长春工程学院');
INSERT INTO `sin_school` VALUES ('939', null, '吉林警察学院');
INSERT INTO `sin_school` VALUES ('940', null, '长春光华学院');
INSERT INTO `sin_school` VALUES ('941', null, '长春建筑学院');
INSERT INTO `sin_school` VALUES ('942', null, '长春科技学院');
INSERT INTO `sin_school` VALUES ('943', null, '吉林动画学院');
INSERT INTO `sin_school` VALUES ('944', null, '长春汽车工业高等专科学校');
INSERT INTO `sin_school` VALUES ('945', null, '长春金融高等专科学校');
INSERT INTO `sin_school` VALUES ('946', null, '长春医学高等专科学校');
INSERT INTO `sin_school` VALUES ('947', null, '吉林交通职业技术学院');
INSERT INTO `sin_school` VALUES ('948', null, '吉林科技职业技术学院');
INSERT INTO `sin_school` VALUES ('949', null, '吉林城市职业技术学院');
INSERT INTO `sin_school` VALUES ('950', null, '长春东方职业学院');
INSERT INTO `sin_school` VALUES ('951', null, '吉林司法警官职业学院');
INSERT INTO `sin_school` VALUES ('952', null, '长春职业技术学院');
INSERT INTO `sin_school` VALUES ('953', null, '长春信息技术职业学院');
INSERT INTO `sin_school` VALUES ('954', null, '辽宁科技大学');
INSERT INTO `sin_school` VALUES ('955', null, '鞍山师范学院');
INSERT INTO `sin_school` VALUES ('956', null, '辽宁科技学院');
INSERT INTO `sin_school` VALUES ('957', null, '辽宁冶金职业技术学院');
INSERT INTO `sin_school` VALUES ('958', null, '朝阳师范高等专科学校');
INSERT INTO `sin_school` VALUES ('959', null, '大连理工大学');
INSERT INTO `sin_school` VALUES ('960', null, '大连海事大学');
INSERT INTO `sin_school` VALUES ('961', null, '大连交通大学');
INSERT INTO `sin_school` VALUES ('962', null, '大连工业大学');
INSERT INTO `sin_school` VALUES ('963', null, '大连海洋大学');
INSERT INTO `sin_school` VALUES ('964', null, '大连医科大学');
INSERT INTO `sin_school` VALUES ('965', null, '辽宁师范大学');
INSERT INTO `sin_school` VALUES ('966', null, '大连外国语大学');
INSERT INTO `sin_school` VALUES ('967', null, '东北财经大学');
INSERT INTO `sin_school` VALUES ('968', null, '大连大学');
INSERT INTO `sin_school` VALUES ('969', null, '大连民族学院');
INSERT INTO `sin_school` VALUES ('970', null, '大连科技学院');
INSERT INTO `sin_school` VALUES ('971', null, '大连财经学院');
INSERT INTO `sin_school` VALUES ('972', null, '大连艺术学院');
INSERT INTO `sin_school` VALUES ('973', null, '大连东软信息学院');
INSERT INTO `sin_school` VALUES ('974', null, '辽宁对外经贸学院');
INSERT INTO `sin_school` VALUES ('975', null, '辽宁警官高等专科学校');
INSERT INTO `sin_school` VALUES ('976', null, '辽宁税务高等专科学校');
INSERT INTO `sin_school` VALUES ('977', null, '大连职业技术学院');
INSERT INTO `sin_school` VALUES ('978', null, '大连航运职业技术学院');
INSERT INTO `sin_school` VALUES ('979', null, '大连装备制造职业技术学院');
INSERT INTO `sin_school` VALUES ('980', null, '大连汽车职业技术学院');
INSERT INTO `sin_school` VALUES ('981', null, '辽宁轻工职业学院');
INSERT INTO `sin_school` VALUES ('982', null, '大连商务职业学院');
INSERT INTO `sin_school` VALUES ('983', null, '大连软件职业学院');
INSERT INTO `sin_school` VALUES ('984', null, '大连翻译职业学院');
INSERT INTO `sin_school` VALUES ('985', null, '大连枫叶职业技术学院');
INSERT INTO `sin_school` VALUES ('986', null, '辽东学院');
INSERT INTO `sin_school` VALUES ('987', null, '辽宁地质工程职业学院');
INSERT INTO `sin_school` VALUES ('988', null, '辽宁机电职业技术学院');
INSERT INTO `sin_school` VALUES ('989', null, '辽宁石油化工大学');
INSERT INTO `sin_school` VALUES ('990', null, '抚顺师范高等专科学校');
INSERT INTO `sin_school` VALUES ('991', null, '抚顺职业技术学院');
INSERT INTO `sin_school` VALUES ('992', null, '辽宁工程技术大学');
INSERT INTO `sin_school` VALUES ('993', null, '阜新高等专科学校');
INSERT INTO `sin_school` VALUES ('994', null, '辽宁财贸学院');
INSERT INTO `sin_school` VALUES ('995', null, '渤海船舶职业学院');
INSERT INTO `sin_school` VALUES ('996', null, '辽宁工业大学');
INSERT INTO `sin_school` VALUES ('997', null, '渤海大学');
INSERT INTO `sin_school` VALUES ('998', null, '辽宁医学院');
INSERT INTO `sin_school` VALUES ('999', null, '锦州师范高等专科学校');
INSERT INTO `sin_school` VALUES ('1000', null, '辽宁理工职业学院');
INSERT INTO `sin_school` VALUES ('1001', null, '辽宁铁道职业技术学院');
INSERT INTO `sin_school` VALUES ('1002', null, '辽宁石化职业技术学院');
INSERT INTO `sin_school` VALUES ('1003', null, '辽宁轨道交通职业学院');
INSERT INTO `sin_school` VALUES ('1004', null, '辽宁建筑职业学院');
INSERT INTO `sin_school` VALUES ('1005', null, '辽阳职业技术学院');
INSERT INTO `sin_school` VALUES ('1006', null, '盘锦职业技术学院');
INSERT INTO `sin_school` VALUES ('1007', null, '辽河石油职业技术学院');
INSERT INTO `sin_school` VALUES ('1008', null, '东北大学');
INSERT INTO `sin_school` VALUES ('1009', null, '辽宁大学');
INSERT INTO `sin_school` VALUES ('1010', null, '沈阳工业大学');
INSERT INTO `sin_school` VALUES ('1011', null, '沈阳航空航天大学');
INSERT INTO `sin_school` VALUES ('1012', null, '沈阳理工大学');
INSERT INTO `sin_school` VALUES ('1013', null, '沈阳化工大学');
INSERT INTO `sin_school` VALUES ('1014', null, '沈阳建筑大学');
INSERT INTO `sin_school` VALUES ('1015', null, '沈阳农业大学');
INSERT INTO `sin_school` VALUES ('1016', null, '中国医科大学');
INSERT INTO `sin_school` VALUES ('1017', null, '辽宁中医药大学');
INSERT INTO `sin_school` VALUES ('1018', null, '沈阳药科大学');
INSERT INTO `sin_school` VALUES ('1019', null, '沈阳师范大学');
INSERT INTO `sin_school` VALUES ('1020', null, '沈阳大学');
INSERT INTO `sin_school` VALUES ('1021', null, '中国刑事警察学院');
INSERT INTO `sin_school` VALUES ('1022', null, '沈阳医学院');
INSERT INTO `sin_school` VALUES ('1023', null, '沈阳体育学院');
INSERT INTO `sin_school` VALUES ('1024', null, '沈阳音乐学院');
INSERT INTO `sin_school` VALUES ('1025', null, '鲁迅美术学院');
INSERT INTO `sin_school` VALUES ('1026', null, '沈阳工程学院');
INSERT INTO `sin_school` VALUES ('1027', null, '沈阳工学院');
INSERT INTO `sin_school` VALUES ('1028', null, '沈阳城市建设学院');
INSERT INTO `sin_school` VALUES ('1029', null, '沈阳城市学院');
INSERT INTO `sin_school` VALUES ('1030', null, '辽宁何氏医学院');
INSERT INTO `sin_school` VALUES ('1031', null, '辽宁交通高等专科学校');
INSERT INTO `sin_school` VALUES ('1032', null, '辽宁民族师范高等专科学校');
INSERT INTO `sin_school` VALUES ('1033', null, '辽宁现代服务职业技术学院');
INSERT INTO `sin_school` VALUES ('1034', null, '辽宁城市建设职业技术学院');
INSERT INTO `sin_school` VALUES ('1035', null, '辽宁卫生职业技术学院');
INSERT INTO `sin_school` VALUES ('1036', null, '沈阳北软信息职业技术学院');
INSERT INTO `sin_school` VALUES ('1037', null, '辽宁政法职业学院');
INSERT INTO `sin_school` VALUES ('1038', null, '辽宁水利职业学院');
INSERT INTO `sin_school` VALUES ('1039', null, '沈阳航空职业技术学院');
INSERT INTO `sin_school` VALUES ('1040', null, '辽宁体育运动职业技术学院');
INSERT INTO `sin_school` VALUES ('1041', null, '辽宁林业职业技术学院');
INSERT INTO `sin_school` VALUES ('1042', null, '沈阳职业技术学院');
INSERT INTO `sin_school` VALUES ('1043', null, '辽宁金融职业学院');
INSERT INTO `sin_school` VALUES ('1044', null, '辽宁广告职业学院');
INSERT INTO `sin_school` VALUES ('1045', null, '辽宁经济职业技术学院');
INSERT INTO `sin_school` VALUES ('1046', null, '辽宁美术职业学院');
INSERT INTO `sin_school` VALUES ('1047', null, '辽宁商贸职业学院');
INSERT INTO `sin_school` VALUES ('1048', null, '辽宁装备制造职业技术学院');
INSERT INTO `sin_school` VALUES ('1049', null, '铁岭师范高等专科学校');
INSERT INTO `sin_school` VALUES ('1050', null, '辽宁工程职业学院');
INSERT INTO `sin_school` VALUES ('1051', null, '铁岭卫生职业学院');
INSERT INTO `sin_school` VALUES ('1052', null, '辽宁职业学院');
INSERT INTO `sin_school` VALUES ('1053', null, '营口理工学院');
INSERT INTO `sin_school` VALUES ('1054', null, '辽宁农业职业技术学院');
INSERT INTO `sin_school` VALUES ('1055', null, '营口职业技术学院');
INSERT INTO `sin_school` VALUES ('1056', null, '滨州医学院');
INSERT INTO `sin_school` VALUES ('1057', null, '滨州学院');
INSERT INTO `sin_school` VALUES ('1058', null, '滨州职业学院');
INSERT INTO `sin_school` VALUES ('1059', null, '德州学院');
INSERT INTO `sin_school` VALUES ('1060', null, '德州职业技术学院');
INSERT INTO `sin_school` VALUES ('1061', null, '德州科技职业学院');
INSERT INTO `sin_school` VALUES ('1062', null, '山东华宇职业技术学院');
INSERT INTO `sin_school` VALUES ('1063', null, '东营职业学院');
INSERT INTO `sin_school` VALUES ('1064', null, '山东大王职业学院');
INSERT INTO `sin_school` VALUES ('1065', null, '山东胜利职业学院');
INSERT INTO `sin_school` VALUES ('1066', null, '菏泽学院');
INSERT INTO `sin_school` VALUES ('1067', null, '菏泽医学专科学校');
INSERT INTO `sin_school` VALUES ('1068', null, '菏泽家政职业学院');
INSERT INTO `sin_school` VALUES ('1069', null, '菏泽职业学院');
INSERT INTO `sin_school` VALUES ('1070', null, '山东大学');
INSERT INTO `sin_school` VALUES ('1071', null, '济南大学');
INSERT INTO `sin_school` VALUES ('1072', null, '山东建筑大学');
INSERT INTO `sin_school` VALUES ('1073', null, '齐鲁工业大学');
INSERT INTO `sin_school` VALUES ('1074', null, '山东中医药大学');
INSERT INTO `sin_school` VALUES ('1075', null, '山东师范大学');
INSERT INTO `sin_school` VALUES ('1076', null, '山东财经大学');
INSERT INTO `sin_school` VALUES ('1077', null, '山东体育学院');
INSERT INTO `sin_school` VALUES ('1078', null, '山东艺术学院');
INSERT INTO `sin_school` VALUES ('1079', null, '山东工艺美术学院');
INSERT INTO `sin_school` VALUES ('1080', null, '山东警察学院');
INSERT INTO `sin_school` VALUES ('1081', null, '山东交通学院');
INSERT INTO `sin_school` VALUES ('1082', null, '山东女子学院');
INSERT INTO `sin_school` VALUES ('1083', null, '山东英才学院');
INSERT INTO `sin_school` VALUES ('1084', null, '山东协和学院');
INSERT INTO `sin_school` VALUES ('1085', null, '齐鲁师范学院');
INSERT INTO `sin_school` VALUES ('1086', null, '山东青年政治学院');
INSERT INTO `sin_school` VALUES ('1087', null, '山东管理学院');
INSERT INTO `sin_school` VALUES ('1088', null, '山东农业工程学院');
INSERT INTO `sin_school` VALUES ('1089', null, '山东政法学院');
INSERT INTO `sin_school` VALUES ('1090', null, '山东电力高等专科学校');
INSERT INTO `sin_school` VALUES ('1091', null, '济南幼儿师范高等专科学校');
INSERT INTO `sin_school` VALUES ('1092', null, '山东商业职业技术学院');
INSERT INTO `sin_school` VALUES ('1093', null, '山东职业学院');
INSERT INTO `sin_school` VALUES ('1094', null, '山东传媒职业学院');
INSERT INTO `sin_school` VALUES ('1095', null, '济南护理职业学院');
INSERT INTO `sin_school` VALUES ('1096', null, '山东劳动职业技术学院');
INSERT INTO `sin_school` VALUES ('1097', null, '山东力明科技职业学院');
INSERT INTO `sin_school` VALUES ('1098', null, '山东圣翰财贸职业学院');
INSERT INTO `sin_school` VALUES ('1099', null, '山东现代职业学院');
INSERT INTO `sin_school` VALUES ('1100', null, '济南职业学院');
INSERT INTO `sin_school` VALUES ('1101', null, '山东凯文科技职业学院');
INSERT INTO `sin_school` VALUES ('1102', null, '济南工程职业技术学院');
INSERT INTO `sin_school` VALUES ('1103', null, '山东电子职业技术学院');
INSERT INTO `sin_school` VALUES ('1104', null, '山东旅游职业学院');
INSERT INTO `sin_school` VALUES ('1105', null, '山东杏林科技职业学院');
INSERT INTO `sin_school` VALUES ('1106', null, '山东外事翻译职业学院');
INSERT INTO `sin_school` VALUES ('1107', null, '山东城市建设职业学院');
INSERT INTO `sin_school` VALUES ('1108', null, '山东司法警官职业学院');
INSERT INTO `sin_school` VALUES ('1109', null, '曲阜师范大学');
INSERT INTO `sin_school` VALUES ('1110', null, '济宁医学院');
INSERT INTO `sin_school` VALUES ('1111', null, '济宁学院');
INSERT INTO `sin_school` VALUES ('1112', null, '山东理工职业学院');
INSERT INTO `sin_school` VALUES ('1113', null, '曲阜远东职业技术学院');
INSERT INTO `sin_school` VALUES ('1114', null, '济宁职业技术学院');
INSERT INTO `sin_school` VALUES ('1115', null, '莱芜职业技术学院');
INSERT INTO `sin_school` VALUES ('1116', null, '聊城大学');
INSERT INTO `sin_school` VALUES ('1117', null, '聊城职业技术学院');
INSERT INTO `sin_school` VALUES ('1118', null, '临沂大学');
INSERT INTO `sin_school` VALUES ('1119', null, '山东医学高等专科学校');
INSERT INTO `sin_school` VALUES ('1120', null, '临沂职业学院');
INSERT INTO `sin_school` VALUES ('1121', null, '中国海洋大学');
INSERT INTO `sin_school` VALUES ('1122', null, '山东科技大学');
INSERT INTO `sin_school` VALUES ('1123', null, '青岛科技大学');
INSERT INTO `sin_school` VALUES ('1124', null, '青岛理工大学');
INSERT INTO `sin_school` VALUES ('1125', null, '青岛农业大学');
INSERT INTO `sin_school` VALUES ('1126', null, '青岛大学');
INSERT INTO `sin_school` VALUES ('1127', null, '青岛滨海学院');
INSERT INTO `sin_school` VALUES ('1128', null, '青岛黄海学院');
INSERT INTO `sin_school` VALUES ('1129', null, '青岛工学院');
INSERT INTO `sin_school` VALUES ('1130', null, '青岛远洋船员职业学院');
INSERT INTO `sin_school` VALUES ('1131', null, '青岛职业技术学院');
INSERT INTO `sin_school` VALUES ('1132', null, '青岛飞洋职业技术学院');
INSERT INTO `sin_school` VALUES ('1133', null, '山东外贸职业学院');
INSERT INTO `sin_school` VALUES ('1134', null, '青岛酒店管理职业技术学院');
INSERT INTO `sin_school` VALUES ('1135', null, '青岛港湾职业技术学院');
INSERT INTO `sin_school` VALUES ('1136', null, '青岛恒星职业技术学院');
INSERT INTO `sin_school` VALUES ('1137', null, '青岛求实职业技术学院');
INSERT INTO `sin_school` VALUES ('1138', null, '日照职业技术学院');
INSERT INTO `sin_school` VALUES ('1139', null, '山东水利职业学院');
INSERT INTO `sin_school` VALUES ('1140', null, '山东外国语职业学院');
INSERT INTO `sin_school` VALUES ('1141', null, '山东农业大学');
INSERT INTO `sin_school` VALUES ('1142', null, '泰山医学院');
INSERT INTO `sin_school` VALUES ('1143', null, '泰山学院');
INSERT INTO `sin_school` VALUES ('1144', null, '泰山护理职业学院');
INSERT INTO `sin_school` VALUES ('1145', null, '山东服装职业学院');
INSERT INTO `sin_school` VALUES ('1146', null, '泰山职业技术学院');
INSERT INTO `sin_school` VALUES ('1147', null, '威海职业学院');
INSERT INTO `sin_school` VALUES ('1148', null, '山东药品食品职业学院');
INSERT INTO `sin_school` VALUES ('1149', null, '潍坊医学院');
INSERT INTO `sin_school` VALUES ('1150', null, '潍坊学院');
INSERT INTO `sin_school` VALUES ('1151', null, '潍坊科技学院');
INSERT INTO `sin_school` VALUES ('1152', null, '山东海事职业学院');
INSERT INTO `sin_school` VALUES ('1153', null, '潍坊护理职业学院');
INSERT INTO `sin_school` VALUES ('1154', null, '潍坊工程职业学院');
INSERT INTO `sin_school` VALUES ('1155', null, '潍坊职业学院');
INSERT INTO `sin_school` VALUES ('1156', null, '山东科技职业学院');
INSERT INTO `sin_school` VALUES ('1157', null, '山东畜牧兽医职业学院');
INSERT INTO `sin_school` VALUES ('1158', null, '山东交通职业学院');
INSERT INTO `sin_school` VALUES ('1159', null, '山东信息职业技术学院');
INSERT INTO `sin_school` VALUES ('1160', null, '山东经贸职业学院');
INSERT INTO `sin_school` VALUES ('1161', null, '潍坊工商职业学院');
INSERT INTO `sin_school` VALUES ('1162', null, '鲁东大学');
INSERT INTO `sin_school` VALUES ('1163', null, '烟台大学');
INSERT INTO `sin_school` VALUES ('1164', null, '山东工商学院');
INSERT INTO `sin_school` VALUES ('1165', null, '烟台南山学院');
INSERT INTO `sin_school` VALUES ('1166', null, '山东中医药高等专科学校');
INSERT INTO `sin_school` VALUES ('1167', null, '烟台工程职业技术学院');
INSERT INTO `sin_school` VALUES ('1168', null, '山东文化产业职业学院');
INSERT INTO `sin_school` VALUES ('1169', null, '烟台职业学院');
INSERT INTO `sin_school` VALUES ('1170', null, '山东商务职业学院');
INSERT INTO `sin_school` VALUES ('1171', null, '烟台汽车工程职业学院');
INSERT INTO `sin_school` VALUES ('1172', null, '枣庄学院');
INSERT INTO `sin_school` VALUES ('1173', null, '枣庄职业学院');
INSERT INTO `sin_school` VALUES ('1174', null, '枣庄科技职业学院');
INSERT INTO `sin_school` VALUES ('1175', null, '山东理工大学');
INSERT INTO `sin_school` VALUES ('1176', null, '山东万杰医学院');
INSERT INTO `sin_school` VALUES ('1177', null, '淄博师范高等专科学校');
INSERT INTO `sin_school` VALUES ('1178', null, '淄博职业学院');
INSERT INTO `sin_school` VALUES ('1179', null, '山东工业职业学院');
INSERT INTO `sin_school` VALUES ('1180', null, '山东化工职业学院');
INSERT INTO `sin_school` VALUES ('1181', null, '山东铝业职业学院');
INSERT INTO `sin_school` VALUES ('1182', null, '山东丝绸纺织职业学院');
INSERT INTO `sin_school` VALUES ('1183', null, '山西大同大学');
INSERT INTO `sin_school` VALUES ('1184', null, '大同煤炭职业技术学院');
INSERT INTO `sin_school` VALUES ('1185', null, '晋城职业技术学院');
INSERT INTO `sin_school` VALUES ('1186', null, '山西农业大学');
INSERT INTO `sin_school` VALUES ('1187', null, '晋中学院');
INSERT INTO `sin_school` VALUES ('1188', null, '晋中师范高等专科学校');
INSERT INTO `sin_school` VALUES ('1189', null, '山西同文职业技术学院');
INSERT INTO `sin_school` VALUES ('1190', null, '晋中职业技术学院');
INSERT INTO `sin_school` VALUES ('1191', null, '山西师范大学');
INSERT INTO `sin_school` VALUES ('1192', null, '临汾职业技术学院');
INSERT INTO `sin_school` VALUES ('1193', null, '山西信息职业技术学院');
INSERT INTO `sin_school` VALUES ('1194', null, '山西管理职业学院');
INSERT INTO `sin_school` VALUES ('1195', null, '吕梁学院');
INSERT INTO `sin_school` VALUES ('1196', null, '朔州师范高等专科学校');
INSERT INTO `sin_school` VALUES ('1197', null, '朔州职业技术学院');
INSERT INTO `sin_school` VALUES ('1198', null, '山西大学');
INSERT INTO `sin_school` VALUES ('1199', null, '太原科技大学');
INSERT INTO `sin_school` VALUES ('1200', null, '中北大学');

-- ----------------------------
-- Table structure for sin_task
-- ----------------------------
DROP TABLE IF EXISTS `sin_task`;
CREATE TABLE `sin_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `column_id` int(11) DEFAULT NULL COMMENT '专区ID',
  `user_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `amount` int(11) DEFAULT NULL COMMENT '金额',
  `recipient_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '接收任务人ID',
  `img` varchar(255) DEFAULT NULL COMMENT '图片',
  `status` tinyint(4) DEFAULT '0' COMMENT '是否接单',
  `complete` tinyint(4) DEFAULT '0' COMMENT '是否完成 0否 1是',
  `emergency` bit(1) DEFAULT b'0' COMMENT '是否紧急',
  `evaluate` int(11) DEFAULT NULL COMMENT '评价0-5',
  `createtime` int(11) DEFAULT NULL COMMENT '创建时间',
  `purchasetime` int(11) DEFAULT NULL COMMENT '接收时间',
  `deadline` int(11) DEFAULT NULL COMMENT '完成时间',
  `recipient_compete` tinyint(4) DEFAULT '0' COMMENT '接收人确认完成',
  `recipient_compete_time` int(11) DEFAULT NULL COMMENT '接收人完成时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sin_task
-- ----------------------------
INSERT INTO `sin_task` VALUES ('1', '上王者', '3', '26', '200', '17', 'c://server/upload', '0', '0', '\0', null, null, null, null, '0', null);
INSERT INTO `sin_task` VALUES ('2', '打普雷', '1', '24', '100', '17', 'c://server/php/upload', '1', '1', '\0', null, null, null, null, '0', null);
INSERT INTO `sin_task` VALUES ('3', '陪玩lol', '2', '25', '150', '24', 'c://server/php/upload/upload', '1', '1', '\0', null, null, null, null, '0', null);
INSERT INTO `sin_task` VALUES ('4', '陪玩cf', '2', '25', '300', '24', 'c://server/php/upload/upload', '0', '0', '\0', null, null, null, null, '0', null);
INSERT INTO `sin_task` VALUES ('5', '陪睡', '2', '25', '1000', '24', 'c://server/php/upload/upload/kaifang', '1', '1', '\0', null, null, null, null, '0', null);
INSERT INTO `sin_task` VALUES ('6', '陪看电影', '1', '26', '200', '25', 'c://update', '1', '1', '\0', null, null, '1569313659', '1571316295', '1', '1571315848');
INSERT INTO `sin_task` VALUES ('7', '陪吃', '1', '25', '60', null, 'http://www.xiaoqingwang.com/uploads/20190908\\a4cb1f8a2e6110367937c0191431fdd1.jpg', '0', '0', '\0', null, null, null, null, '0', null);
INSERT INTO `sin_task` VALUES ('15', '陪high', '1', '26', '200', null, 'http://www.xiaoqingwang.com/uploads/20190911\\aecaf6e45e479a6b184339c0f4bad6d6.jpg', '0', '0', '', null, null, null, null, '0', null);
INSERT INTO `sin_task` VALUES ('16', '陪high', '1', '26', '200', null, 'http://www.xiaoqingwang.com/uploads/20190911\\c5fe7baf03237218b3e5bf35f365747d.jpg', '0', '0', '', null, null, null, null, '0', null);
INSERT INTO `sin_task` VALUES ('17', '陪看电影', '3', '26', '200', '25', 'http://www.xiaoqingwang.com/uploads/20190912\\1dfd0305c882ff506eb4f4ee66c64767.jpg', '1', '0', '\0', null, null, null, null, '0', null);
INSERT INTO `sin_task` VALUES ('18', '陪看电影1', '1', '25', '200', '26', 'http://www.xiaoqingwang.com/uploads/20190918\\b15806b6d402f4f22724ea0ec6a0b474.jpg', '1', '0', '\0', null, null, null, null, '0', null);
INSERT INTO `sin_task` VALUES ('19', '陪看电影2', '1', '25', '200', '26', 'http://www.xiaoqingwang.com/uploads/20190918\\7a73c9f6e3af9e80f3ac7afcce6c522a.jpg', '1', '0', '\0', null, null, null, null, '0', null);
INSERT INTO `sin_task` VALUES ('20', '陪看电影3', '1', '25', '200', '26', 'http://www.xiaoqingwang.com/uploads/20190918\\44c3ba66309728ab645d41260f364c70.jpg', '0', '1', '', null, null, null, null, '0', null);
INSERT INTO `sin_task` VALUES ('21', '陪看电影4', '1', '25', '200', '26', 'http://www.xiaoqingwang.com/uploads/20190918\\0ba57c820fe5e31cbdbcce08b6706548.jpg', '0', '0', '\0', null, null, null, null, '0', null);
INSERT INTO `sin_task` VALUES ('22', '让鞠婧祎迷上喔', '1', '26', '2000', '25', 'http://www.xiaoqingwang.com/uploads/20190918\\43b8d507366d890b5eb678fcfee20e0c.jpg', '1', '1', '\0', null, '1568818053', '1568818149', '1568818283', '0', null);
INSERT INTO `sin_task` VALUES ('23', '让鞠婧祎迷上喔', '1', '26', '2000', null, 'http://www.xiaoqingwang.com/uploads/20190918\\ad9577db43e7eda666ce39029d3c092b.jpg', '0', '0', '\0', null, '1568818703', null, null, '0', null);
INSERT INTO `sin_task` VALUES ('24', '让鞠婧祎迷上喔3', '1', '26', '400', null, 'http://www.xiaoqingwang.com/uploads/20190920\\72b0d597f41a8d55b2adffedf730b2be.jpg', '0', '0', '\0', null, '1568979775', null, null, '0', null);
INSERT INTO `sin_task` VALUES ('25', '让鞠婧祎迷上喔4', '1', '26', '400', null, 'http://www.xiaoqingwang.com/uploads/20190920\\1d9c7161ce136494e07fea78fa49b9a4.jpg', '0', '0', '\0', null, '1568980132', null, null, '0', null);
INSERT INTO `sin_task` VALUES ('26', '让鞠婧祎迷上喔8', '1', '26', '1000', null, 'http://www.xiaoqingwang.com/uploads/20190920\\27f541b760eb205cba163c72f4557593.jpg', '0', '0', '\0', null, '1568980150', null, null, '0', null);
INSERT INTO `sin_task` VALUES ('27', '让鞠婧祎迷上喔8', '1', '26', '1000', null, 'http://www.xiaoqingwang.com/uploads/20190920\\a6a511f73991e9318377f7fadd2149bd.jpg', '0', '0', '\0', null, '1568980163', null, null, '0', null);
INSERT INTO `sin_task` VALUES ('28', '跑个锤子', '1', '26', '800', '25', 'http://www.xiaoqingwang.com/uploads/20190924\\4031bab5bfa0f578abea8bc6413d01fd.jpg', '1', '1', '\0', null, '1569313158', '1569313324', '1569314135', '1', null);
INSERT INTO `sin_task` VALUES ('29', '陪pei', '1', '26', '200', '25', 'http://www.xiaoqingwang.com/uploads/20190930\\073826f790a5a6177a87224d62e5ae92.jpg', '1', '1', '\0', null, '1569811945', '1569812028', '1569812495', '1', '1569812749');
INSERT INTO `sin_task` VALUES ('30', '陪pei2', '1', '26', '798', '27', 'http://www.xiaoqingwang.com/uploads/20190930\\e57e4f188035c0d94828df974348e5e5.jpg', '1', '0', '\0', null, '1569812611', '1570867084', null, '0', null);
INSERT INTO `sin_task` VALUES ('31', '陪pei2', '1', '26', '100', '25', 'http://www.xiaoqingwang.com/uploads/20190930\\d24091ed6296038606d61eca912d9971.jpg', '1', '1', '\0', null, '1569812669', '1569812734', '1569812814', '1', '1569812774');
INSERT INTO `sin_task` VALUES ('32', '陪看电影', '1', '26', '200', '25', 'http://www.xiaoqingwang.com/uploads/20191015\\afa973de4018e7894012d163b4515c94.jpg', '1', '0', '\0', null, '1571134717', '1571316175', null, '0', null);
INSERT INTO `sin_task` VALUES ('33', '陪看电影99', '1', '26', '200', '25', 'http://www.xiaoqingwang.com/uploads/20191017\\13d2349c23dd9d34beaadd152379e529.jpg', '1', '1', '\0', null, '1571315509', '1571316251', '1571316316', '1', '1571316316');
INSERT INTO `sin_task` VALUES ('34', '陪看电影999', '1', '26', '200', '25', 'http://www.xiaoqingwang.com/uploads/20191017\\b71e0f879c9dabaca3864538571f523b.jpg', '1', '1', '\0', null, '1571316359', '1571316395', '1571316476', '1', '1571316476');
