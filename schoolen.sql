/*
Navicat MySQL Data Transfer

Source Server         : schoolenServer
Source Server Version : 50095
Source Host           : 67.227.82.31:3306
Source Database       : schoolen_admin

Target Server Type    : MYSQL
Target Server Version : 50095
File Encoding         : 65001

Date: 2012-06-28 00:04:35
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `agent_question_state`
-- ----------------------------
DROP TABLE IF EXISTS `agent_question_state`;
CREATE TABLE `agent_question_state` (
  `questionID` int(11) NOT NULL,
  `isAnswered` enum('1','0') NOT NULL default '0',
  `timeOfActivity` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`questionID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of agent_question_state
-- ----------------------------

-- ----------------------------
-- Table structure for `agent_suggestions`
-- ----------------------------
DROP TABLE IF EXISTS `agent_suggestions`;
CREATE TABLE `agent_suggestions` (
  `ID` int(11) NOT NULL auto_increment,
  `userID` int(11) NOT NULL,
  `message` varchar(300) default NULL,
  `userReply` enum('noreply','accept','ignore') default 'noreply',
  `questionStateID` int(11) default NULL,
  `time` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`ID`),
  KEY `questionStateID` (`questionStateID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of agent_suggestions
-- ----------------------------

-- ----------------------------
-- Table structure for `agent_user_behaviour`
-- ----------------------------
DROP TABLE IF EXISTS `agent_user_behaviour`;
CREATE TABLE `agent_user_behaviour` (
  `userID` int(11) NOT NULL,
  `courseID` int(11) NOT NULL,
  `totalPostRating` int(11) default '0',
  `numberOfPosts` int(11) default '0',
  `numberOfAccepts` int(11) default NULL,
  `numberOfRejects` int(11) default NULL,
  PRIMARY KEY  (`userID`,`courseID`),
  KEY `agent_user_behaviour_ibfk_2` (`courseID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of agent_user_behaviour
-- ----------------------------
INSERT INTO `agent_user_behaviour` VALUES ('37', '46', '0', '0', null, null);
INSERT INTO `agent_user_behaviour` VALUES ('37', '47', '0', '0', null, null);
INSERT INTO `agent_user_behaviour` VALUES ('37', '64', '0', '0', null, null);
INSERT INTO `agent_user_behaviour` VALUES ('42', '45', '0', '3', null, null);
INSERT INTO `agent_user_behaviour` VALUES ('377', '45', '0', '0', null, null);
INSERT INTO `agent_user_behaviour` VALUES ('377', '46', '0', '0', null, null);
INSERT INTO `agent_user_behaviour` VALUES ('377', '48', '3', '6', null, null);

-- ----------------------------
-- Table structure for `announcement`
-- ----------------------------
DROP TABLE IF EXISTS `announcement`;
CREATE TABLE `announcement` (
  `ID` int(32) NOT NULL auto_increment,
  `title` varchar(500) default NULL,
  `announcement` text,
  `group_id` int(11) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of announcement
-- ----------------------------
INSERT INTO `announcement` VALUES ('1', 'aaaaaaaaaaaaaa', 'mafesh ay 7aga', '1');
INSERT INTO `announcement` VALUES ('2', 'bbbbbbbbbbbbbb', 'mafesh 7aga 2222', '1');
INSERT INTO `announcement` VALUES ('3', 'cccccccccccccccc', 'mafesh 7aga 3333', '1');
INSERT INTO `announcement` VALUES ('4', 'dddddddddddddd', 'asld;sfk\';dfdfh', '1');
INSERT INTO `announcement` VALUES ('5', 'dsfsad', 'dsdfasdfasdf', '1');
INSERT INTO `announcement` VALUES ('6', 'aywa', ';sofj\\\'asljd\\\'lsdgfads', '1');
INSERT INTO `announcement` VALUES ('7', 'gfndhjfghjfcghncbndfg', 'gfjdhngvgnjdgn', '1');
INSERT INTO `announcement` VALUES ('8', 'vgfnbfgnh', 'thdfgjfghjfgh', '1');
INSERT INTO `announcement` VALUES ('9', 'rete', 'terter', '1');
INSERT INTO `announcement` VALUES ('10', 'erfgdsfg', 'sfgdsfgsdfg', '1');
INSERT INTO `announcement` VALUES ('15', 'Lecture delayed', 'Monday lecture is delayed to Tuesday', '70');
INSERT INTO `announcement` VALUES ('18', 'new quiz relesed', 'shof keda', '70');
INSERT INTO `announcement` VALUES ('19', 'weferwf', 'fsdf', '70');

-- ----------------------------
-- Table structure for `assignment`
-- ----------------------------
DROP TABLE IF EXISTS `assignment`;
CREATE TABLE `assignment` (
  `ID` int(11) NOT NULL auto_increment,
  `TopicID` int(11) NOT NULL,
  `CourseID` int(11) NOT NULL,
  `StartDate` date default NULL,
  `EndDate` date default NULL,
  `Type` enum('assignment','feedback') default NULL,
  PRIMARY KEY  (`ID`),
  KEY `TopicID` (`TopicID`),
  KEY `CourseID` (`CourseID`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of assignment
-- ----------------------------
INSERT INTO `assignment` VALUES ('1', '77', '7', null, null, null);
INSERT INTO `assignment` VALUES ('3', '102', '6', '2010-07-14', '2010-08-02', 'assignment');
INSERT INTO `assignment` VALUES ('4', '103', '6', '2010-06-10', '2010-06-12', 'assignment');
INSERT INTO `assignment` VALUES ('5', '104', '6', '2010-05-05', '2010-06-01', 'assignment');
INSERT INTO `assignment` VALUES ('6', '105', '6', '2010-07-10', '2011-02-05', 'assignment');
INSERT INTO `assignment` VALUES ('7', '106', '6', '2010-05-01', '2010-06-15', 'assignment');
INSERT INTO `assignment` VALUES ('8', '107', '6', '2010-07-10', '2010-06-12', 'assignment');
INSERT INTO `assignment` VALUES ('9', '108', '6', '2010-07-01', '2010-09-24', 'assignment');
INSERT INTO `assignment` VALUES ('10', '109', '6', '2010-07-10', '2005-06-12', 'assignment');
INSERT INTO `assignment` VALUES ('11', '110', '6', '2010-07-01', '2010-07-08', 'assignment');
INSERT INTO `assignment` VALUES ('12', '111', '6', '2010-07-01', '2010-07-20', 'assignment');
INSERT INTO `assignment` VALUES ('13', '112', '6', '2010-07-01', '2010-07-12', 'assignment');
INSERT INTO `assignment` VALUES ('15', '131', '45', '2010-07-08', '2010-07-17', 'assignment');
INSERT INTO `assignment` VALUES ('16', '132', '45', '2010-07-01', '2010-07-03', 'assignment');

-- ----------------------------
-- Table structure for `chapter_download`
-- ----------------------------
DROP TABLE IF EXISTS `chapter_download`;
CREATE TABLE `chapter_download` (
  `chapterID` int(11) NOT NULL,
  `downloadID` int(11) NOT NULL,
  PRIMARY KEY  (`chapterID`,`downloadID`),
  KEY `downloadID` (`downloadID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chapter_download
-- ----------------------------
INSERT INTO `chapter_download` VALUES ('26', '58');
INSERT INTO `chapter_download` VALUES ('28', '60');
INSERT INTO `chapter_download` VALUES ('29', '67');
INSERT INTO `chapter_download` VALUES ('36', '62');

-- ----------------------------
-- Table structure for `chapter_info`
-- ----------------------------
DROP TABLE IF EXISTS `chapter_info`;
CREATE TABLE `chapter_info` (
  `ID` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `description` varchar(100) default NULL,
  `courseID` int(11) NOT NULL,
  `topicID` int(11) NOT NULL,
  PRIMARY KEY  (`ID`),
  KEY `courseID` (`courseID`),
  KEY `topicID` (`topicID`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chapter_info
-- ----------------------------
INSERT INTO `chapter_info` VALUES ('26', 'OSI Model', 'el OSI', '36', '57');
INSERT INTO `chapter_info` VALUES ('27', 'Tests', 'Tests', '37', '66');
INSERT INTO `chapter_info` VALUES ('28', '10-CMOS', ':(', '44', '71');
INSERT INTO `chapter_info` VALUES ('29', 'CNS-acting drugs', '', '45', '77');
INSERT INTO `chapter_info` VALUES ('32', 'Chapter 2', 'all about networks', '36', '86');
INSERT INTO `chapter_info` VALUES ('33', 'Drug Profile', 'all Questions & Discussions about the Drug Profile', '45', '88');
INSERT INTO `chapter_info` VALUES ('34', 'Introduction', 'just a start', '58', '95');
INSERT INTO `chapter_info` VALUES ('35', 'chapter 1', 'vector analysis', '62', '100');
INSERT INTO `chapter_info` VALUES ('36', 'Intro to C++', '', '63', '102');
INSERT INTO `chapter_info` VALUES ('37', 'aaaaaaa', 'aaaakk', '64', '104');
INSERT INTO `chapter_info` VALUES ('38', 'Dr As3ad', '', '65', '106');
INSERT INTO `chapter_info` VALUES ('39', 'Dr Hussen Mashaly', '', '65', '107');
INSERT INTO `chapter_info` VALUES ('40', 'Dr Ahmad abdel sattar', '', '65', '108');
INSERT INTO `chapter_info` VALUES ('41', 'Dr dia2', '', '65', '109');
INSERT INTO `chapter_info` VALUES ('43', 'chapterone', 'introduction ', '66', '113');
INSERT INTO `chapter_info` VALUES ('44', 'TEsts', 'tess', '38', '115');
INSERT INTO `chapter_info` VALUES ('45', 'chapter1', '', '69', '119');
INSERT INTO `chapter_info` VALUES ('46', 'ay 7aga', 'mesh 3aref', '46', '123');
INSERT INTO `chapter_info` VALUES ('47', 'New chapter', 'desc', '48', '125');

-- ----------------------------
-- Table structure for `chat`
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `from` varchar(255) NOT NULL default '',
  `to` varchar(255) NOT NULL default '',
  `message` text NOT NULL,
  `sent` datetime NOT NULL default '0000-00-00 00:00:00',
  `recd` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chat
-- ----------------------------
INSERT INTO `chat` VALUES ('1', 'Ahmed Samir', 'Ismail', 'aywa', '2010-07-10 11:41:05', '1');
INSERT INTO `chat` VALUES ('2', 'Hani', 'Ismail', 'hello', '2010-07-10 11:43:27', '1');
INSERT INTO `chat` VALUES ('3', 'Ismail', 'Hani', 'ya ragel', '2010-07-10 11:43:36', '1');
INSERT INTO `chat` VALUES ('4', 'Ahmed Samir', 'hobba', 'ahmed', '2010-07-10 16:36:52', '0');
INSERT INTO `chat` VALUES ('5', 'Ahmed Samir', 'Ismail', 'hello', '2010-07-10 16:37:28', '1');
INSERT INTO `chat` VALUES ('6', 'Ahmed Samir', 'hobba', 'eih ya bob', '2010-07-10 16:37:41', '0');
INSERT INTO `chat` VALUES ('7', 'Ahmed Samir', 'hobba', 'rod yall :D', '2010-07-10 16:37:45', '0');
INSERT INTO `chat` VALUES ('8', 'Ahmed Samir', 'hobba', 'lol', '2010-07-10 16:37:49', '0');
INSERT INTO `chat` VALUES ('9', 'Ahmed Samir', 'hobba', 'rofl', '2010-07-10 16:37:51', '0');
INSERT INTO `chat` VALUES ('10', 'Ahmed Samir', 'hobba', 'a7a', '2010-07-10 16:37:53', '0');
INSERT INTO `chat` VALUES ('11', 'Ahmed Samir', 'Hani', 'fmdm', '2010-07-10 16:38:20', '0');
INSERT INTO `chat` VALUES ('12', 'Ahmed Samir', 'Ismail', 'eh ya am?', '2010-07-10 17:27:56', '1');
INSERT INTO `chat` VALUES ('13', 'Ahmed Samir', 'Ismail', 'retweet', '2010-07-10 18:14:55', '1');
INSERT INTO `chat` VALUES ('14', 'AhmedSamir', 'Ismail', 'ai?', '2010-07-10 18:16:06', '0');
INSERT INTO `chat` VALUES ('15', 'Ismail', 'AhmedSamir', 'vnfdsjkv', '2010-07-10 18:16:12', '1');
INSERT INTO `chat` VALUES ('16', 'Ismail', 'AhmedSamir', 'kmnk', '2010-07-10 18:16:13', '1');
INSERT INTO `chat` VALUES ('17', 'Ismail', 'AhmedSamir', 'Hello', '2010-07-10 18:16:19', '1');

-- ----------------------------
-- Table structure for `course_download`
-- ----------------------------
DROP TABLE IF EXISTS `course_download`;
CREATE TABLE `course_download` (
  `courseID` int(11) NOT NULL,
  `downloadID` int(11) NOT NULL,
  PRIMARY KEY  (`courseID`,`downloadID`),
  KEY `downloadID` (`downloadID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_download
-- ----------------------------
INSERT INTO `course_download` VALUES ('37', '59');
INSERT INTO `course_download` VALUES ('38', '61');
INSERT INTO `course_download` VALUES ('38', '65');
INSERT INTO `course_download` VALUES ('38', '66');

-- ----------------------------
-- Table structure for `course_info`
-- ----------------------------
DROP TABLE IF EXISTS `course_info`;
CREATE TABLE `course_info` (
  `ID` int(11) NOT NULL auto_increment,
  `courseName` varchar(100) NOT NULL,
  `courseDescription` varchar(100) default NULL,
  `groupID` int(11) NOT NULL,
  `topicID` int(11) NOT NULL,
  PRIMARY KEY  (`ID`),
  KEY `groupID` (`groupID`),
  KEY `topicID` (`topicID`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_info
-- ----------------------------
INSERT INTO `course_info` VALUES ('36', 'CCNA', 'cisco certified networks prof', '69', '56');
INSERT INTO `course_info` VALUES ('37', 'Test', 'Tst', '68', '58');
INSERT INTO `course_info` VALUES ('38', 'Image Processing', 'Image Processing Course', '71', '60');
INSERT INTO `course_info` VALUES ('39', 'Artificial Intelligence', 'Artificial Intelligence Course', '71', '61');
INSERT INTO `course_info` VALUES ('40', 'Optimal Control ', 'Optimal Control  Course', '71', '62');
INSERT INTO `course_info` VALUES ('41', 'Fuzzy Control', 'Fuzzy Control Course', '71', '63');
INSERT INTO `course_info` VALUES ('42', 'Electrical Testing (3)', 'Electrical Testing (3)', '71', '64');
INSERT INTO `course_info` VALUES ('43', 'Project', 'Project', '71', '65');
INSERT INTO `course_info` VALUES ('44', 'VLSI', ':D', '73', '70');
INSERT INTO `course_info` VALUES ('45', 'Pharmacology', '', '70', '72');
INSERT INTO `course_info` VALUES ('46', 'Phytochemistry', '', '70', '73');
INSERT INTO `course_info` VALUES ('47', 'Medical Microbiology', '', '70', '74');
INSERT INTO `course_info` VALUES ('48', 'Biochemistry', '', '70', '75');
INSERT INTO `course_info` VALUES ('49', 'Hospital Pharmacy', '', '70', '76');
INSERT INTO `course_info` VALUES ('50', 'machines', '', '74', '78');
INSERT INTO `course_info` VALUES ('52', 'AI', 'Artificial Intelligence', '76', '82');
INSERT INTO `course_info` VALUES ('53', 'Antenna', 'Difficult course', '82', '89');
INSERT INTO `course_info` VALUES ('54', 'One AIM For 2nd Year FOPCU 2013 Pharmacists', '', '83', '90');
INSERT INTO `course_info` VALUES ('55', 'Ø¹Ø±Ø¨Ù‰', '', '86', '91');
INSERT INTO `course_info` VALUES ('56', 'Ø±ÙŠØ§Ø¶Ø©', '', '86', '92');
INSERT INTO `course_info` VALUES ('57', 'Ø¥Ù†Ø¬Ù„ÙŠØ²Ù‰', '', '86', '93');
INSERT INTO `course_info` VALUES ('58', 'VHDL Course', '', '91', '94');
INSERT INTO `course_info` VALUES ('59', 'Ø¹Ù„ÙˆÙ…', '', '86', '96');
INSERT INTO `course_info` VALUES ('60', 'Ø¯Ø±Ø§Ø³Ø§Øª Ø¥Ø¬ØªÙ…Ø§Ø¹ÙŠØ©', '', '86', '97');
INSERT INTO `course_info` VALUES ('62', 'COMM 241  Electrostatics and Magnetostatics', 'Electrostatics and Magnetostatics', '94', '99');
INSERT INTO `course_info` VALUES ('63', 'C++', 'Testing Course', '96', '101');
INSERT INTO `course_info` VALUES ('64', 'herbal', '', '97', '103');
INSERT INTO `course_info` VALUES ('65', 'PE2', '', '98', '105');
INSERT INTO `course_info` VALUES ('66', 'conversion', 'conversion ', '99', '111');
INSERT INTO `course_info` VALUES ('67', 'conversion', 'conversion ', '99', '112');
INSERT INTO `course_info` VALUES ('68', 'rtr', 'trtrt', '100', '114');
INSERT INTO `course_info` VALUES ('69', 'applications', '', '74', '117');
INSERT INTO `course_info` VALUES ('70', 'applications', '', '74', '118');

-- ----------------------------
-- Table structure for `course_user`
-- ----------------------------
DROP TABLE IF EXISTS `course_user`;
CREATE TABLE `course_user` (
  `userID` int(11) NOT NULL,
  `courseID` int(11) NOT NULL,
  PRIMARY KEY  (`userID`,`courseID`),
  KEY `courseID` (`courseID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_user
-- ----------------------------
INSERT INTO `course_user` VALUES ('37', '38');
INSERT INTO `course_user` VALUES ('37', '40');
INSERT INTO `course_user` VALUES ('37', '44');
INSERT INTO `course_user` VALUES ('37', '45');
INSERT INTO `course_user` VALUES ('37', '46');
INSERT INTO `course_user` VALUES ('37', '47');
INSERT INTO `course_user` VALUES ('37', '54');
INSERT INTO `course_user` VALUES ('38', '37');
INSERT INTO `course_user` VALUES ('38', '38');
INSERT INTO `course_user` VALUES ('38', '39');
INSERT INTO `course_user` VALUES ('38', '40');
INSERT INTO `course_user` VALUES ('38', '41');
INSERT INTO `course_user` VALUES ('38', '42');
INSERT INTO `course_user` VALUES ('38', '43');
INSERT INTO `course_user` VALUES ('38', '65');
INSERT INTO `course_user` VALUES ('39', '36');
INSERT INTO `course_user` VALUES ('39', '37');
INSERT INTO `course_user` VALUES ('39', '38');
INSERT INTO `course_user` VALUES ('39', '39');
INSERT INTO `course_user` VALUES ('39', '41');
INSERT INTO `course_user` VALUES ('39', '45');
INSERT INTO `course_user` VALUES ('39', '46');
INSERT INTO `course_user` VALUES ('39', '48');
INSERT INTO `course_user` VALUES ('39', '49');
INSERT INTO `course_user` VALUES ('39', '54');
INSERT INTO `course_user` VALUES ('42', '45');
INSERT INTO `course_user` VALUES ('47', '44');
INSERT INTO `course_user` VALUES ('63', '45');
INSERT INTO `course_user` VALUES ('63', '46');
INSERT INTO `course_user` VALUES ('63', '47');
INSERT INTO `course_user` VALUES ('63', '48');
INSERT INTO `course_user` VALUES ('63', '49');
INSERT INTO `course_user` VALUES ('68', '38');
INSERT INTO `course_user` VALUES ('69', '38');
INSERT INTO `course_user` VALUES ('69', '39');
INSERT INTO `course_user` VALUES ('69', '41');
INSERT INTO `course_user` VALUES ('72', '53');
INSERT INTO `course_user` VALUES ('73', '38');
INSERT INTO `course_user` VALUES ('76', '49');
INSERT INTO `course_user` VALUES ('78', '52');
INSERT INTO `course_user` VALUES ('80', '38');
INSERT INTO `course_user` VALUES ('90', '38');
INSERT INTO `course_user` VALUES ('90', '43');
INSERT INTO `course_user` VALUES ('92', '45');
INSERT INTO `course_user` VALUES ('92', '46');
INSERT INTO `course_user` VALUES ('92', '47');
INSERT INTO `course_user` VALUES ('92', '48');
INSERT INTO `course_user` VALUES ('92', '49');
INSERT INTO `course_user` VALUES ('98', '45');
INSERT INTO `course_user` VALUES ('98', '46');
INSERT INTO `course_user` VALUES ('98', '47');
INSERT INTO `course_user` VALUES ('98', '48');
INSERT INTO `course_user` VALUES ('98', '49');
INSERT INTO `course_user` VALUES ('101', '38');
INSERT INTO `course_user` VALUES ('104', '52');
INSERT INTO `course_user` VALUES ('111', '45');
INSERT INTO `course_user` VALUES ('111', '46');
INSERT INTO `course_user` VALUES ('111', '47');
INSERT INTO `course_user` VALUES ('111', '48');
INSERT INTO `course_user` VALUES ('111', '49');
INSERT INTO `course_user` VALUES ('116', '45');
INSERT INTO `course_user` VALUES ('116', '46');
INSERT INTO `course_user` VALUES ('116', '47');
INSERT INTO `course_user` VALUES ('116', '48');
INSERT INTO `course_user` VALUES ('116', '49');
INSERT INTO `course_user` VALUES ('119', '45');
INSERT INTO `course_user` VALUES ('119', '46');
INSERT INTO `course_user` VALUES ('119', '47');
INSERT INTO `course_user` VALUES ('119', '48');
INSERT INTO `course_user` VALUES ('119', '49');
INSERT INTO `course_user` VALUES ('120', '46');
INSERT INTO `course_user` VALUES ('121', '45');
INSERT INTO `course_user` VALUES ('121', '46');
INSERT INTO `course_user` VALUES ('121', '47');
INSERT INTO `course_user` VALUES ('121', '48');
INSERT INTO `course_user` VALUES ('121', '49');
INSERT INTO `course_user` VALUES ('123', '45');
INSERT INTO `course_user` VALUES ('123', '46');
INSERT INTO `course_user` VALUES ('123', '47');
INSERT INTO `course_user` VALUES ('123', '48');
INSERT INTO `course_user` VALUES ('123', '49');
INSERT INTO `course_user` VALUES ('124', '45');
INSERT INTO `course_user` VALUES ('125', '45');
INSERT INTO `course_user` VALUES ('125', '46');
INSERT INTO `course_user` VALUES ('160', '48');
INSERT INTO `course_user` VALUES ('162', '38');
INSERT INTO `course_user` VALUES ('174', '47');
INSERT INTO `course_user` VALUES ('197', '45');
INSERT INTO `course_user` VALUES ('205', '45');
INSERT INTO `course_user` VALUES ('205', '46');
INSERT INTO `course_user` VALUES ('205', '47');
INSERT INTO `course_user` VALUES ('205', '48');
INSERT INTO `course_user` VALUES ('205', '49');
INSERT INTO `course_user` VALUES ('231', '45');
INSERT INTO `course_user` VALUES ('231', '47');
INSERT INTO `course_user` VALUES ('258', '44');
INSERT INTO `course_user` VALUES ('258', '53');
INSERT INTO `course_user` VALUES ('269', '44');
INSERT INTO `course_user` VALUES ('276', '38');
INSERT INTO `course_user` VALUES ('276', '39');
INSERT INTO `course_user` VALUES ('276', '41');
INSERT INTO `course_user` VALUES ('289', '38');
INSERT INTO `course_user` VALUES ('300', '49');
INSERT INTO `course_user` VALUES ('303', '53');
INSERT INTO `course_user` VALUES ('327', '38');
INSERT INTO `course_user` VALUES ('350', '48');
INSERT INTO `course_user` VALUES ('377', '45');
INSERT INTO `course_user` VALUES ('377', '46');
INSERT INTO `course_user` VALUES ('377', '48');
INSERT INTO `course_user` VALUES ('395', '65');
INSERT INTO `course_user` VALUES ('404', '68');

-- ----------------------------
-- Table structure for `events`
-- ----------------------------
DROP TABLE IF EXISTS `events`;
CREATE TABLE `events` (
  `ID` int(32) NOT NULL auto_increment,
  `title` varchar(500) default NULL,
  `event` text,
  `event_type` varchar(100) default NULL,
  `group_id` int(11) NOT NULL,
  `start_date` date default NULL,
  `end_date` date default NULL,
  PRIMARY KEY  (`ID`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of events
-- ----------------------------
INSERT INTO `events` VALUES ('1', 'Quiz1', 'cdfcvfd', 'Quiz', '70', '2010-12-01', '2010-12-11');

-- ----------------------------
-- Table structure for `externallinks`
-- ----------------------------
DROP TABLE IF EXISTS `externallinks`;
CREATE TABLE `externallinks` (
  `ID` int(100) NOT NULL auto_increment,
  `URL` varchar(1000) NOT NULL,
  `CourseID` int(100) NOT NULL,
  `Title` varchar(1000) NOT NULL,
  PRIMARY KEY  (`ID`),
  KEY `CourseID` (`CourseID`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of externallinks
-- ----------------------------
INSERT INTO `externallinks` VALUES ('3', 'dasdasd', '1', '');
INSERT INTO `externallinks` VALUES ('4', 'Ù…Ø¨Ø§Ø±Ùƒ.Ù…ØµØ±', '1', '');
INSERT INTO `externallinks` VALUES ('5', 'Ø´Ø³Ø¨Ø´Ø³Ø¨', '1', '');
INSERT INTO `externallinks` VALUES ('6', 'asd', '1', 'asdsad');
INSERT INTO `externallinks` VALUES ('7', 'www', '1', 'aaaa');
INSERT INTO `externallinks` VALUES ('8', 'www.ee2010.org', '1', 'UCf');
INSERT INTO `externallinks` VALUES ('9', '111111111111', '2', '111');
INSERT INTO `externallinks` VALUES ('10', '22222222222', '2', '222');
INSERT INTO `externallinks` VALUES ('11', '333333333333', '2', '333');
INSERT INTO `externallinks` VALUES ('12', 'test', '2', 'test');
INSERT INTO `externallinks` VALUES ('13', 'Ø´Ø¨Ø´Ø³ÙŠØ¨', '2', 'Ø³Ø´ÙŠÙ„Ø¨ÙŠØ³');
INSERT INTO `externallinks` VALUES ('14', '12', '45', '123');
INSERT INTO `externallinks` VALUES ('15', 'go to link', '45', 'ay7aga');

-- ----------------------------
-- Table structure for `file_info`
-- ----------------------------
DROP TABLE IF EXISTS `file_info`;
CREATE TABLE `file_info` (
  `ID` int(11) NOT NULL auto_increment,
  `NumberOfDownloads` int(11) NOT NULL,
  `Description` varchar(100) default NULL,
  `Name` varchar(100) NOT NULL,
  `TimeStamp` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of file_info
-- ----------------------------
INSERT INTO `file_info` VALUES ('58', '2', '', 'ccna.jpg', '2010-03-10 14:36:47');
INSERT INTO `file_info` VALUES ('59', '6', 'Nice Pic !', '13.jpg', '2010-03-10 15:02:24');
INSERT INTO `file_info` VALUES ('60', '5', ':)', 'green.png', '2010-03-10 15:42:17');
INSERT INTO `file_info` VALUES ('61', '6', 'last year slides', 'PatImg04_s.pdf', '2010-03-16 04:25:06');
INSERT INTO `file_info` VALUES ('62', '2', 'pdf for C++ Good One', 'ctutor.pdf', '2010-04-20 14:35:08');
INSERT INTO `file_info` VALUES ('65', '2', 'das dsa dsa dsa', 'timeplan.pdf', '2010-05-14 10:22:31');
INSERT INTO `file_info` VALUES ('66', '0', 'test', 'LMS_Space.gif', '2010-05-27 23:07:10');
INSERT INTO `file_info` VALUES ('67', '0', 'log', 'GNotes.txt', '2010-07-15 14:45:12');
INSERT INTO `file_info` VALUES ('68', '0', 'ny', 'SVN steps.txt', '2010-07-17 04:13:10');

-- ----------------------------
-- Table structure for `fpoll`
-- ----------------------------
DROP TABLE IF EXISTS `fpoll`;
CREATE TABLE `fpoll` (
  `CourseID` int(10) NOT NULL,
  `ID` int(10) NOT NULL auto_increment,
  `Content` varchar(50) NOT NULL,
  `GroupID` int(10) default NULL,
  `Status` int(1) NOT NULL,
  PRIMARY KEY  (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `CourseID` (`CourseID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fpoll
-- ----------------------------
INSERT INTO `fpoll` VALUES ('24', '1', 'ya rab', null, '1');
INSERT INTO `fpoll` VALUES ('24', '2', 'ay 7aga', null, '1');
INSERT INTO `fpoll` VALUES ('24', '3', 'sa', null, '1');
INSERT INTO `fpoll` VALUES ('25', '4', 'ddd', null, '1');
INSERT INTO `fpoll` VALUES ('13', '5', 'eee', null, '1');
INSERT INTO `fpoll` VALUES ('24', '6', 'w', null, '1');

-- ----------------------------
-- Table structure for `friend_request`
-- ----------------------------
DROP TABLE IF EXISTS `friend_request`;
CREATE TABLE `friend_request` (
  `ID` int(100) NOT NULL,
  `fromID` int(100) NOT NULL,
  `toID` int(100) NOT NULL,
  PRIMARY KEY  (`ID`),
  KEY `fromID` (`fromID`),
  KEY `toID` (`toID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of friend_request
-- ----------------------------

-- ----------------------------
-- Table structure for `fvote`
-- ----------------------------
DROP TABLE IF EXISTS `fvote`;
CREATE TABLE `fvote` (
  `ID` int(10) NOT NULL auto_increment,
  `PollID` int(10) NOT NULL,
  `Content` varchar(100) NOT NULL,
  `NSelected` int(4) NOT NULL,
  PRIMARY KEY  (`ID`),
  KEY `poll-answer` (`PollID`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fvote
-- ----------------------------
INSERT INTO `fvote` VALUES ('1', '1', 'ya rab', '0');
INSERT INTO `fvote` VALUES ('2', '1', 'ya rab', '0');
INSERT INTO `fvote` VALUES ('3', '2', 'ay 7aga1', '0');
INSERT INTO `fvote` VALUES ('4', '2', 'ay 7aga2', '0');
INSERT INTO `fvote` VALUES ('5', '3', 'ss', '0');
INSERT INTO `fvote` VALUES ('6', '3', 'ss', '0');
INSERT INTO `fvote` VALUES ('7', '4', 'ddd', '2');
INSERT INTO `fvote` VALUES ('8', '4', 'ddd', '3');
INSERT INTO `fvote` VALUES ('9', '5', 'eee', '0');
INSERT INTO `fvote` VALUES ('10', '5', 'eee', '0');
INSERT INTO `fvote` VALUES ('11', '6', 'ww', '0');
INSERT INTO `fvote` VALUES ('12', '6', 'www', '0');

-- ----------------------------
-- Table structure for `fvote_user`
-- ----------------------------
DROP TABLE IF EXISTS `fvote_user`;
CREATE TABLE `fvote_user` (
  `PollID` int(10) NOT NULL,
  `UserID` int(11) NOT NULL,
  PRIMARY KEY  (`PollID`,`UserID`),
  KEY `user` (`UserID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fvote_user
-- ----------------------------

-- ----------------------------
-- Table structure for `group_course`
-- ----------------------------
DROP TABLE IF EXISTS `group_course`;
CREATE TABLE `group_course` (
  `groupID` int(11) NOT NULL,
  `courseID` int(11) NOT NULL,
  PRIMARY KEY  (`groupID`,`courseID`),
  KEY `courseID` (`courseID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of group_course
-- ----------------------------

-- ----------------------------
-- Table structure for `group_info`
-- ----------------------------
DROP TABLE IF EXISTS `group_info`;
CREATE TABLE `group_info` (
  `ID` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `url` varchar(100) default '',
  `group_description` varchar(200) default NULL,
  `group_creator` int(11) NOT NULL,
  `view_permission` int(11) NOT NULL,
  `join_permission` int(11) NOT NULL,
  PRIMARY KEY  (`ID`),
  UNIQUE KEY `url` (`url`),
  KEY `group_creator` (`group_creator`)
) ENGINE=MyISAM AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of group_info
-- ----------------------------
INSERT INTO `group_info` VALUES ('68', 'EE2010', 'EE2010', 'EE2010 Group', '38', '0', '0');
INSERT INTO `group_info` VALUES ('69', 'Cisco Students', 'cisco', 'For all Cisco Fans in Egypt', '39', '0', '0');
INSERT INTO `group_info` VALUES ('70', 'Cairo Pharmacy 2007-2012', null, 'The group for Cairo Pharmacy students-third year, grade 2007 - 2012', '37', '0', '0');
INSERT INTO `group_info` VALUES ('71', 'CSE2010', 'CSE2010', 'CSE2010', '38', '0', '0');
INSERT INTO `group_info` VALUES ('72', 'EE2009', 'http://www.ee2009.com', 'Electrical Engineer departement Faculty of Engineering Ain Shams University', '41', '0', '0');
INSERT INTO `group_info` VALUES ('73', 'hanitest', 'test', 'test', '47', '0', '0');
INSERT INTO `group_info` VALUES ('74', 'ee2010', 'www.schoolen.com/ee2010', 'group for electrical power 2010', '74', '0', '0');
INSERT INTO `group_info` VALUES ('76', 'AAST cairo', 'AAST', 'For AASt Students', '78', '0', '0');
INSERT INTO `group_info` VALUES ('77', 'students from312to330', 'basma mohmed', 'working on project', '97', '0', '0');
INSERT INTO `group_info` VALUES ('78', 'ecom - birut', 'account', '', '164', '0', '0');
INSERT INTO `group_info` VALUES ('80', 'Tech-Tech', 'technologytrack', 'TEEEEEEEEKTEEEEEEEEEEEEEEEEEK', '82', '0', '0');
INSERT INTO `group_info` VALUES ('81', 'Ø£ÙŠ Ø­Ø¯ ÙÙŠ ØªØ§Ù†ÙŠØ© ØµÙŠØ¯Ù„Ø© Ø§Ù„Ù‚Ø§Ù‡Ø±Ø© ÙŠØ¯Ø®Ù„ Ù‡Ù†Ø§ Ø­Ø§Ù„Ø§Ø§Ø§Ø§Ø§Ø§Ø§Ø§', 'http://whois.domaintools.com/ph4world.com', '', '247', '0', '0');
INSERT INTO `group_info` VALUES ('82', 'Electronics & Communication', 'http://www.schoolen.com/Groups/1', 'Electronics & Communication \n', '258', '0', '0');
INSERT INTO `group_info` VALUES ('83', 'One AIM For 2nd Year FOPCU 2013 Pharmacists', 'One AIM', '', '293', '0', '0');
INSERT INTO `group_info` VALUES ('86', 'El-Helmia School', 'El-HelmiaSchool', 'Group of EL-Helmia School', '296', '0', '0');
INSERT INTO `group_info` VALUES ('87', 'Sco0o0len', 'http://www.schoolen.com/user/home', 'Sco0olen', '298', '0', '0');
INSERT INTO `group_info` VALUES ('88', 'EE2010', 'http://www.EE2010.org', 'EE2010', '298', '0', '0');
INSERT INTO `group_info` VALUES ('89', 'FaceBo0ok', 'www.facebook.com', 'FaceBook', '298', '1', '2');
INSERT INTO `group_info` VALUES ('90', 'Test', 'http://www.Test.com', 'Test', '298', '0', '0');
INSERT INTO `group_info` VALUES ('91', 'LTE Project', 'LTEproject', 'The LTE graduation project-Communications 2010', '303', '0', '0');
INSERT INTO `group_info` VALUES ('92', 'Fund.Rasing', 'apecfund', 'fr', '322', '0', '0');
INSERT INTO `group_info` VALUES ('93', 'zamalek', 'zamalek.tv', 'to people who r fans for zamalek egyptian club', '273', '0', '0');
INSERT INTO `group_info` VALUES ('94', 'COMM1 CHEP', 'comm1', 'for comm ASU-CHEP', '359', '0', '0');
INSERT INTO `group_info` VALUES ('95', 'Alahly', 'http://www.ahlyegypt.com/', 'The Best Team In that Stupid World', '368', '0', '0');
INSERT INTO `group_info` VALUES ('96', '700daaz Group', null, '700daaz Testing Schoolen', '377', '0', '1');
INSERT INTO `group_info` VALUES ('97', 'paper&info 4 dof3at 06 phr miu', 'nolove_t.l.s@hotmail.com', '', '382', '0', '0');
INSERT INTO `group_info` VALUES ('98', 'EPM 2010', 'EPM 2010', '', '391', '0', '0');
INSERT INTO `group_info` VALUES ('99', 'conversion', 'conversion', 'conversion sucks :D', '353', '0', '0');
INSERT INTO `group_info` VALUES ('100', 'behira science', 'behira science', '>>>>>>>>>>>>>>>>>>.\n.\n\n\n\n\n\n\n....', '404', '0', '0');
INSERT INTO `group_info` VALUES ('105', 'StudentTest', null, 'ay 7aga', '37', '0', '0');
INSERT INTO `group_info` VALUES ('106', 'instructorTest', null, 'any', '37', '0', '0');
INSERT INTO `group_info` VALUES ('107', 'RequestPermissionTest', null, 'any desc', '37', '1', '1');
INSERT INTO `group_info` VALUES ('108', '432werfd', null, 'sdgfdg4w34g54', '37', '0', '1');

-- ----------------------------
-- Table structure for `group_news`
-- ----------------------------
DROP TABLE IF EXISTS `group_news`;
CREATE TABLE `group_news` (
  `ID` int(11) NOT NULL auto_increment,
  `Description` varchar(300) NOT NULL,
  `groupID` int(11) NOT NULL,
  `TimeStamp` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `userID` int(11) default NULL,
  `Type` varchar(33) default NULL,
  `IsSocial` int(11) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `groupID` (`groupID`),
  KEY `userID` (`userID`)
) ENGINE=MyISAM AUTO_INCREMENT=231 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of group_news
-- ----------------------------
INSERT INTO `group_news` VALUES ('142', 'New course ||course::75||Test|--| was added to ||group::109||Testing|--| course', '109', '2010-08-01 01:58:21', '276', 'course', '0');
INSERT INTO `group_news` VALUES ('143', 'A new announcement was added to ||group::69||Cisco Students|--| group', '69', '2010-08-01 01:58:21', '39', '', '0');
INSERT INTO `group_news` VALUES ('144', 'New course ||course::76||course el betengana|--| was added to ||group::111||Testing the testy test group|--| course', '111', '2010-08-01 01:58:21', '39', 'course', '0');
INSERT INTO `group_news` VALUES ('145', 'New course ||course::77||Test|--| was added to ||group::112||Agent Testing|--| course', '112', '2010-08-01 01:58:21', '80', 'course', '0');
INSERT INTO `group_news` VALUES ('146', 'A new chapter ||chapter::47||a|--| was added to ||course::77||Test|--| course', '112', '2010-08-01 01:58:21', '80', 'chapter', '0');
INSERT INTO `group_news` VALUES ('147', 'has asked a ||question::127chapter--47||New Question|--| in ||course::77||Test|--| course', '112', '2010-08-01 01:58:21', '38', 'question', '0');
INSERT INTO `group_news` VALUES ('148', 'has asked a ||question::128chapter--47||New Question|--| in ||course::77||Test|--| course', '112', '2010-08-01 01:58:21', '38', 'question', '0');
INSERT INTO `group_news` VALUES ('149', 'has asked a ||question::129chapter--47||New Question|--| in ||course::77||Test|--| course', '112', '2010-08-01 01:58:21', '38', 'question', '0');
INSERT INTO `group_news` VALUES ('150', 'has asked a ||question::130chapter--47||New Question|--| in ||course::77||Test|--| course', '112', '2010-08-01 01:58:21', '38', 'question', '0');
INSERT INTO `group_news` VALUES ('151', 'has asked a ||question::131chapter--47||New Question|--| in ||course::77||Test|--| course', '112', '2010-08-01 01:58:21', '80', 'question', '0');
INSERT INTO `group_news` VALUES ('152', 'has asked a ||question::132chapter--47||New Question|--| in ||course::77||Test|--| course', '112', '2010-08-01 01:58:21', '80', 'question', '0');
INSERT INTO `group_news` VALUES ('153', 'A new chapter ||chapter::48||b|--| was added to ||course::77||Test|--| course', '112', '2010-08-01 01:58:21', '80', 'chapter', '0');
INSERT INTO `group_news` VALUES ('154', 'has asked a ||question::134chapter--47||New Question|--| in ||course::77||Test|--| course', '112', '2010-08-01 01:58:21', '38', 'question', '0');
INSERT INTO `group_news` VALUES ('155', 'has asked a ||question::135chapter--47||New Question|--| in ||course::77||Test|--| course', '112', '2010-08-01 01:58:21', '80', 'question', '0');
INSERT INTO `group_news` VALUES ('156', 'has asked a ||question::136chapter--47||New Question|--| in ||course::77||Test|--| course', '112', '2010-08-01 01:58:21', '80', 'question', '0');
INSERT INTO `group_news` VALUES ('157', 'New course ||course::78||Image Processing|--| was added to ||group::123||Test Quizzes|--| course', '123', '2010-08-01 01:58:21', '426', 'course', '0');
INSERT INTO `group_news` VALUES ('158', 'New quiz ||quiz::1||Quiz 1|--| was added to ||course::78||Image Processing|--| course |--| ||group::123|| |--| |--|', '123', '2010-08-01 01:58:21', '426', 'quiz', '0');
INSERT INTO `group_news` VALUES ('159', 'has asked a ||question::137chapter--44||New Question|--| in ||course::38||Image Processing|--| course', '71', '2010-08-01 01:58:21', '38', 'question', '0');
INSERT INTO `group_news` VALUES ('160', 'A new poll was added to <a href=\"/course/view/cid/38\">Image Processing</a> Course', '71', '2010-08-01 01:58:21', '38', '', '0');
INSERT INTO `group_news` VALUES ('161', 'New course ||course::79||Quiz|--| was added to ||group::128||Test Quizzes|--| course', '128', '2010-08-01 01:58:21', '426', 'course', '0');
INSERT INTO `group_news` VALUES ('162', 'A new announcement was added to ||group::68||EE2010|--| group', '68', '2010-08-01 01:58:21', '37', '', '0');
INSERT INTO `group_news` VALUES ('163', 'New quiz ||quiz::2||Quiz 1|--| was added to ||course::79||Quiz|--| course |--| ||group::128|| |--| |--|', '128', '2010-08-01 01:58:21', '426', 'quiz', '0');
INSERT INTO `group_news` VALUES ('164', 'has asked a ||question::143chapter--47||New Question|--| in ||course::77||Test|--| course', '112', '2010-08-01 01:58:21', '444', 'question', '0');
INSERT INTO `group_news` VALUES ('165', 'A new poll was added to <a href=\"/group/view/gid/128\">Test Quizzes</a> Group', '128', '2010-08-01 01:58:21', '426', '', '0');
INSERT INTO `group_news` VALUES ('166', 'A new announcement was added to ||group::70||Cairo Pharmacy 2007-2012|--| group', '70', '2010-08-01 01:58:21', '37', '', '0');
INSERT INTO `group_news` VALUES ('167', 'New course ||course::80||Artificail Intelligence|--| was added to ||group::68||EE2010|--| course', '68', '2010-08-01 01:58:21', '37', 'course', '0');
INSERT INTO `group_news` VALUES ('168', 'A new poll was added to <a href=\"/group/view/gid/70\">Cairo Pharmacy 2007-2012</a> Group', '70', '2010-08-01 01:58:21', '37', '', '0');
INSERT INTO `group_news` VALUES ('169', 'A new poll was added to <a href=\"/group/view/gid/68\">EE2010</a> Group', '68', '2010-08-01 01:58:21', '39', '', '0');
INSERT INTO `group_news` VALUES ('170', 'A new chapter ||chapter::49||Chapter one|--| was added to ||course::80||Artificial Intelligence|--| course', '68', '2010-08-01 01:58:21', '8', 'chapter', '0');
INSERT INTO `group_news` VALUES ('171', 'A new poll was added to <a href=\"/group/view/gid/70\">Cairo Pharmacy 2007-2012</a> Group', '70', '2010-08-01 01:58:21', '111', '', '0');
INSERT INTO `group_news` VALUES ('172', 'A new announcement was added to ||group::70||Cairo Pharmacy 2007-2012|--| group', '70', '2010-08-01 01:58:21', '111', '', '0');
INSERT INTO `group_news` VALUES ('173', 'A new announcement was added to ||group::70||Cairo Pharmacy 2007-2012|--| group', '70', '2010-08-01 01:58:21', '111', '', '0');
INSERT INTO `group_news` VALUES ('174', 'New course ||course::81||Graduation Project|--| was added to ||group::68||EE2010|--| course', '68', '2010-08-01 01:58:21', '38', 'course', '0');
INSERT INTO `group_news` VALUES ('175', 'A new announcement was added to ||group::68||EE2010|--| group', '68', '2010-08-01 01:58:21', '8', '', '0');
INSERT INTO `group_news` VALUES ('176', 'New course ||course::82||Test Course 1|--| was added to ||group::132||Test Group|--| course', '132', '2010-08-01 01:58:21', '38', 'course', '0');
INSERT INTO `group_news` VALUES ('177', 'New course ||course::83||Test Course 2|--| was added to ||group::132||Test Group|--| course', '132', '2010-08-01 01:58:21', '38', 'course', '0');
INSERT INTO `group_news` VALUES ('178', 'New course ||course::84||Test Course 3|--| was added to ||group::132||Test Group|--| course', '132', '2010-08-01 01:58:21', '38', 'course', '0');
INSERT INTO `group_news` VALUES ('179', 'A new chapter ||chapter::50||Chapter 1|--| was added to ||course::82||Test Course 1|--| course', '132', '2010-08-01 01:58:21', '38', 'chapter', '0');
INSERT INTO `group_news` VALUES ('180', 'has asked a ||question::153chapter--50||New Question|--| in ||course::82||Test Course 1|--| course', '132', '2010-08-01 01:58:21', '80', 'question', '0');
INSERT INTO `group_news` VALUES ('181', 'A new announcement was added to ||group::132||Test Group|--| group', '132', '2010-08-01 01:58:21', '38', '', '0');
INSERT INTO `group_news` VALUES ('182', 'New quiz ||quiz::3||negm quiz|--| was added to ||course::82||Test Course 1|--| course |--| ||group::132|| |--| |--|', '132', '2010-08-01 01:58:21', '73', 'quiz', '0');
INSERT INTO `group_news` VALUES ('183', 'A new poll was added to <a href=\"/course/view/cid/82\">Test Course 1</a> Course', '132', '2010-08-01 01:58:21', '73', '', '0');
INSERT INTO `group_news` VALUES ('184', 'New course ||course::85||Test Course 1|--| was added to ||group::133||Test Group|--| course', '133', '2010-08-01 01:58:21', '38', 'course', '0');
INSERT INTO `group_news` VALUES ('185', 'New course ||course::86||Test Course 2|--| was added to ||group::133||Test Group|--| course', '133', '2010-08-01 01:58:21', '38', 'course', '0');
INSERT INTO `group_news` VALUES ('186', 'New course ||course::87||Test Course 3|--| was added to ||group::133||Test Group|--| course', '133', '2010-08-01 01:58:21', '38', 'course', '0');
INSERT INTO `group_news` VALUES ('187', 'A new chapter ||chapter::51||Chapter 1|--| was added to ||course::85||Test Course 1|--| course', '133', '2010-08-01 01:58:21', '38', 'chapter', '0');
INSERT INTO `group_news` VALUES ('188', 'A new chapter ||chapter::52||Chapter 2|--| was added to ||course::85||Test Course 1|--| course', '133', '2010-08-01 01:58:21', '38', 'chapter', '0');
INSERT INTO `group_news` VALUES ('189', 'has asked a ||question::160chapter--52||New Question|--| in ||course::85||Test Course 1|--| course', '133', '2010-08-01 01:58:21', '428', 'question', '0');
INSERT INTO `group_news` VALUES ('190', 'has asked a ||question::161chapter--52||New Question|--| in ||course::85||Test Course 1|--| course', '133', '2010-08-01 01:58:21', '428', 'question', '0');
INSERT INTO `group_news` VALUES ('191', 'New course ||course::88||Artificial Intelligence|--| was added to ||group::134||Beta-test|--| course', '134', '2010-08-01 01:58:21', '37', 'course', '0');
INSERT INTO `group_news` VALUES ('192', 'A new chapter ||chapter::53||Smart Agents|--| was added to ||course::88||Artificial Intelligence|--| course', '134', '2010-08-01 01:58:21', '37', 'chapter', '0');
INSERT INTO `group_news` VALUES ('193', 'has asked a ||question::165chapter--53||New Question|--| in ||course::88||Artificial Intelligence|--| course', '134', '2010-08-01 01:58:21', '73', 'question', '0');
INSERT INTO `group_news` VALUES ('194', 'New quiz ||quiz::4||midtermquiz|--| was added to ||course::88||Artificial Intelligence|--| course |--| ||group::134|| |--| |--|', '134', '2010-08-01 01:58:21', '39', 'quiz', '0');
INSERT INTO `group_news` VALUES ('195', 'A new poll was added to <a href=\"/group/view/gid/134\">Beta-test</a> Group', '134', '2010-08-01 01:58:21', '37', '', '0');
INSERT INTO `group_news` VALUES ('196', 'A new poll was added to <a href=\"/course/view/cid/88\">Artificial Intelligence</a> Course', '134', '2010-08-01 01:58:21', '39', '', '0');
INSERT INTO `group_news` VALUES ('197', 'has asked a ||question::169chapter--53||New Question|--| in ||course::88||Artificial Intelligence|--| course', '134', '2010-08-01 01:58:21', '73', 'question', '0');
INSERT INTO `group_news` VALUES ('198', 'has asked a ||question::170chapter--53||New Question|--| in ||course::88||Artificial Intelligence|--| course', '134', '2010-08-01 01:58:21', '73', 'question', '0');
INSERT INTO `group_news` VALUES ('199', 'New course ||course::89||ArI|--| was added to ||group::135||Graduation testing|--| course', '135', '2010-08-01 01:58:21', '37', 'course', '0');
INSERT INTO `group_news` VALUES ('200', 'A new chapter ||chapter::54||smart agent|--| was added to ||course::89||ArI|--| course', '135', '2010-08-01 01:58:21', '37', 'chapter', '0');
INSERT INTO `group_news` VALUES ('201', 'has asked a ||question::173chapter--54||New Question|--| in ||course::89||ArI|--| course', '135', '2010-08-01 01:58:21', '73', 'question', '0');
INSERT INTO `group_news` VALUES ('202', 'A new announcement was added to ||group::135||Graduation testing|--| group', '135', '2010-08-01 01:58:21', '37', '', '0');
INSERT INTO `group_news` VALUES ('203', 'New quiz ||quiz::5||AI Quiz|--| was added to ||course::89||ArI|--| course |--| ||group::135|| |--| |--|', '135', '2010-08-01 01:58:21', '39', 'quiz', '0');
INSERT INTO `group_news` VALUES ('204', 'New course ||course::90||General|--| was added to ||group::70||Cairo Pharmacy 2007-2012|--| course', '70', '2010-08-01 01:58:21', '205', 'course', '0');
INSERT INTO `group_news` VALUES ('205', 'A new announcement was added to ||group::68||EE2010|--| group', '68', '2010-08-01 01:58:21', '8', '', '0');
INSERT INTO `group_news` VALUES ('206', 'New course ||course::91||Project management|--| was added to ||group::68||EE2010|--| course', '68', '2010-08-01 01:58:21', '8', 'course', '0');
INSERT INTO `group_news` VALUES ('207', 'New course ||course::92||Course 1|--| was added to ||group::136||Faculty of engineering|--| course', '136', '2010-08-01 01:58:21', '8', 'course', '0');
INSERT INTO `group_news` VALUES ('208', 'New course ||course::93||course 2|--| was added to ||group::136||Faculty of engineering|--| course', '136', '2010-08-01 01:58:21', '8', 'course', '0');
INSERT INTO `group_news` VALUES ('209', 'A new chapter ||chapter::55||Chapter 1|--| was added to ||course::92||Course 1|--| course', '136', '2010-08-01 01:58:21', '8', 'chapter', '0');
INSERT INTO `group_news` VALUES ('210', 'has asked a ||question::178chapter--55||New Question|--| in ||course::92||Course 1|--| course', '136', '2010-08-01 01:58:21', '39', 'question', '0');
INSERT INTO `group_news` VALUES ('211', 'has asked a ||question::179chapter--55||New Question|--| in ||course::92||Course 1|--| course', '136', '2010-08-01 01:58:21', '39', 'question', '0');
INSERT INTO `group_news` VALUES ('212', 'New quiz ||quiz::6||Quiz|--| was added to ||course::92||Course 1|--| course |--| ||group::136|| |--| |--|', '136', '2010-08-01 01:58:21', '80', 'quiz', '0');
INSERT INTO `group_news` VALUES ('213', '<a href= \"/user/profile/uid/37\">Ahmed Samir</a> replied to the question <a href=\"/topic/viewtopic/gid/134/tid/165\">when next lecture??</a>', '134', '2010-08-01 02:10:29', '37', 'forum post', '0');
INSERT INTO `group_news` VALUES ('214', '<a href= \"/user/profile/uid/37\">Ahmed Samir</a> replied to the question <a href=\"/topic/viewtopic/gid/134/tid/169\">how instructor ?</a>', '134', '2010-08-01 02:44:49', '37', 'forum post', '0');
INSERT INTO `group_news` VALUES ('215', '<a href= \"/user/profile/uid/37\">Ahmed Samir</a> replied to the question <a href=\"/topic/viewtopic/gid/134/tid/170\">group name??</a>', '134', '2010-08-01 02:45:58', '37', 'forum post', '0');
INSERT INTO `group_news` VALUES ('216', 'A new forum <a href=\"/interestforum/viewtopics/fid/6/gid/134\">sports forum</a> was added to <a href=\"/group/view/gid/134\">Beta-test Group </a>', '134', '2010-08-01 03:04:00', '37', 'forum', '1');
INSERT INTO `group_news` VALUES ('217', '<a href = \"/user/profile/uid/37\">Ahmed Samir</a> has posted a new topic <a href=\"/topic/viewtopic/gid/134/tid/180\">Egyptian Football League</a> to <a href=\"/interestforum/viewtopics/fid/6/gid/134\">sports forum</a> forum', '134', '2010-08-01 03:06:22', '37', null, '1');
INSERT INTO `group_news` VALUES ('218', '<a href = \"/user/profile/uid/37\">Ahmed Samir</a> has posted a new topic <a href=\"/topic/viewtopic/gid/134/tid/181\">Egyptian Football League</a> to <a href=\"/interestforum/viewtopics/fid/6/gid/134\">sports forum</a> forum', '134', '2010-08-01 03:06:56', '37', null, '1');
INSERT INTO `group_news` VALUES ('219', 'has asked a ||question::133chapter--29||New Question|--| in ||course::45||Pharmacology|--| course', '70', '2010-09-18 14:20:13', '37', 'question', '0');
INSERT INTO `group_news` VALUES ('220', 'has asked a ||question::134chapter--29||New Question|--| in ||course::45||Pharmacology|--| course', '70', '2010-09-18 14:21:04', '42', 'question', '0');
INSERT INTO `group_news` VALUES ('221', '<a href= \"/schoolen/public/user/profile/uid/42\">DrLolita Amola</a> replied to the question <a href=\"/schoolen/public/topic/viewtopic/gid/70/tid/134\">ay kalam from IE??</a>', '70', '2010-09-18 14:22:51', '42', 'forum post', '0');
INSERT INTO `group_news` VALUES ('222', '<a href= \"/schoolen/public/user/profile/uid/37\">Ahmed Samir</a> replied to the question <a href=\"/schoolen/public/topic/viewtopic/gid/70/tid/134\">ay kalam from IE??</a>', '70', '2010-09-18 14:23:18', '37', 'forum post', '0');
INSERT INTO `group_news` VALUES ('223', '<a href= \"/schoolen/public/user/profile/uid/37\">Ahmed Samir</a> replied to the question <a href=\"/schoolen/public/topic/viewtopic/gid/70/tid/134\">ay kalam from IE??</a>', '70', '2010-09-18 14:24:11', '37', 'forum post', '0');
INSERT INTO `group_news` VALUES ('224', '<a href= \"/schoolen/public/user/profile/uid/37\">Ahmed Samir</a> replied to the question <a href=\"/schoolen/public/topic/viewtopic/gid/70/tid/134\">ay kalam from IE??</a>', '70', '2010-09-18 14:29:47', '37', 'forum post', '0');
INSERT INTO `group_news` VALUES ('225', '<a href= \"/schoolen/public/user/profile/uid/42\">DrLolita Amola</a> replied to the question <a href=\"/schoolen/public/topic/viewtopic/gid/70/tid/134\">ay kalam from IE??</a>', '70', '2010-09-18 14:34:22', '42', 'forum post', '0');
INSERT INTO `group_news` VALUES ('226', '<a href= \"/schoolen/public/user/profile/uid/37\">Ahmed Samir</a> replied to the question <a href=\"/schoolen/public/topic/viewtopic/gid/70/tid/134\">ay kalam from IE??</a>', '70', '2010-09-18 14:34:59', '37', 'forum post', '0');
INSERT INTO `group_news` VALUES ('227', '<a href= \"/schoolen/public/user/profile/uid/42\">DrLolita Amola</a> replied to the question <a href=\"/schoolen/public/topic/viewtopic/gid/70/tid/134\">ay kalam from IE??</a>', '70', '2010-09-18 17:35:55', '42', 'forum post', '0');
INSERT INTO `group_news` VALUES ('228', 'has asked a ||question::135chapter--29||New Question|--| in ||course::45||Pharmacology|--| course', '70', '2010-09-18 17:50:27', '42', 'question', '0');
INSERT INTO `group_news` VALUES ('229', 'has asked a ||question::136chapter--29||New Question|--| in ||course::45||Pharmacology|--| course', '70', '2010-09-18 17:51:38', '37', 'question', '0');
INSERT INTO `group_news` VALUES ('230', 'New quiz ||quiz::22||Quiz1|--| was added to ||course::45||Pharmacology|--| course |--| ||group::70|| |--| |--|', '70', '2010-12-06 15:51:17', '37', 'quiz', '0');

-- ----------------------------
-- Table structure for `group_user`
-- ----------------------------
DROP TABLE IF EXISTS `group_user`;
CREATE TABLE `group_user` (
  `userID` int(11) NOT NULL,
  `groupID` int(11) NOT NULL,
  `type` enum('pending_instructor','pending_user','user','moderator','instructor','creator') NOT NULL default 'user',
  PRIMARY KEY  (`userID`,`groupID`),
  KEY `groupID` (`groupID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of group_user
-- ----------------------------
INSERT INTO `group_user` VALUES ('37', '70', 'instructor');
INSERT INTO `group_user` VALUES ('37', '71', 'user');
INSERT INTO `group_user` VALUES ('37', '73', 'user');
INSERT INTO `group_user` VALUES ('37', '83', 'user');
INSERT INTO `group_user` VALUES ('37', '86', 'user');
INSERT INTO `group_user` VALUES ('37', '95', 'pending_instructor');
INSERT INTO `group_user` VALUES ('37', '96', 'pending_user');
INSERT INTO `group_user` VALUES ('37', '105', 'moderator');
INSERT INTO `group_user` VALUES ('37', '106', 'instructor');
INSERT INTO `group_user` VALUES ('37', '107', 'instructor');
INSERT INTO `group_user` VALUES ('37', '108', 'instructor');
INSERT INTO `group_user` VALUES ('38', '68', 'creator');
INSERT INTO `group_user` VALUES ('38', '69', 'user');
INSERT INTO `group_user` VALUES ('38', '71', 'creator');
INSERT INTO `group_user` VALUES ('38', '98', 'user');
INSERT INTO `group_user` VALUES ('39', '68', 'user');
INSERT INTO `group_user` VALUES ('39', '69', 'creator');
INSERT INTO `group_user` VALUES ('39', '70', 'user');
INSERT INTO `group_user` VALUES ('39', '71', 'user');
INSERT INTO `group_user` VALUES ('39', '80', 'user');
INSERT INTO `group_user` VALUES ('41', '68', 'user');
INSERT INTO `group_user` VALUES ('41', '72', 'creator');
INSERT INTO `group_user` VALUES ('42', '70', 'moderator');
INSERT INTO `group_user` VALUES ('43', '71', 'user');
INSERT INTO `group_user` VALUES ('47', '73', 'creator');
INSERT INTO `group_user` VALUES ('49', '69', 'user');
INSERT INTO `group_user` VALUES ('50', '71', 'user');
INSERT INTO `group_user` VALUES ('51', '68', 'user');
INSERT INTO `group_user` VALUES ('58', '70', 'moderator');
INSERT INTO `group_user` VALUES ('63', '70', 'user');
INSERT INTO `group_user` VALUES ('64', '70', 'user');
INSERT INTO `group_user` VALUES ('66', '70', 'user');
INSERT INTO `group_user` VALUES ('68', '71', 'user');
INSERT INTO `group_user` VALUES ('69', '68', 'user');
INSERT INTO `group_user` VALUES ('69', '72', 'user');
INSERT INTO `group_user` VALUES ('69', '74', 'user');
INSERT INTO `group_user` VALUES ('73', '69', 'user');
INSERT INTO `group_user` VALUES ('73', '70', 'user');
INSERT INTO `group_user` VALUES ('73', '71', 'user');
INSERT INTO `group_user` VALUES ('73', '89', 'user');
INSERT INTO `group_user` VALUES ('74', '74', 'creator');
INSERT INTO `group_user` VALUES ('75', '69', 'user');
INSERT INTO `group_user` VALUES ('76', '70', 'user');
INSERT INTO `group_user` VALUES ('78', '69', 'user');
INSERT INTO `group_user` VALUES ('78', '76', 'creator');
INSERT INTO `group_user` VALUES ('80', '97', 'creator');
INSERT INTO `group_user` VALUES ('82', '80', 'creator');
INSERT INTO `group_user` VALUES ('90', '71', 'user');
INSERT INTO `group_user` VALUES ('90', '86', 'user');
INSERT INTO `group_user` VALUES ('90', '89', 'user');
INSERT INTO `group_user` VALUES ('90', '92', 'user');
INSERT INTO `group_user` VALUES ('92', '70', 'user');
INSERT INTO `group_user` VALUES ('93', '70', 'user');
INSERT INTO `group_user` VALUES ('95', '70', 'user');
INSERT INTO `group_user` VALUES ('96', '70', 'user');
INSERT INTO `group_user` VALUES ('97', '70', 'user');
INSERT INTO `group_user` VALUES ('97', '77', 'creator');
INSERT INTO `group_user` VALUES ('98', '70', 'moderator');
INSERT INTO `group_user` VALUES ('99', '70', 'user');
INSERT INTO `group_user` VALUES ('101', '71', 'user');
INSERT INTO `group_user` VALUES ('104', '76', 'user');
INSERT INTO `group_user` VALUES ('105', '70', 'user');
INSERT INTO `group_user` VALUES ('110', '68', 'user');
INSERT INTO `group_user` VALUES ('110', '71', 'user');
INSERT INTO `group_user` VALUES ('111', '70', 'moderator');
INSERT INTO `group_user` VALUES ('112', '70', 'user');
INSERT INTO `group_user` VALUES ('114', '70', 'user');
INSERT INTO `group_user` VALUES ('115', '70', 'user');
INSERT INTO `group_user` VALUES ('116', '70', 'user');
INSERT INTO `group_user` VALUES ('119', '70', 'user');
INSERT INTO `group_user` VALUES ('120', '70', 'user');
INSERT INTO `group_user` VALUES ('121', '70', 'user');
INSERT INTO `group_user` VALUES ('122', '70', 'user');
INSERT INTO `group_user` VALUES ('123', '70', 'user');
INSERT INTO `group_user` VALUES ('124', '70', 'user');
INSERT INTO `group_user` VALUES ('126', '70', 'user');
INSERT INTO `group_user` VALUES ('127', '70', 'user');
INSERT INTO `group_user` VALUES ('128', '70', 'user');
INSERT INTO `group_user` VALUES ('130', '70', 'user');
INSERT INTO `group_user` VALUES ('132', '70', 'user');
INSERT INTO `group_user` VALUES ('133', '70', 'user');
INSERT INTO `group_user` VALUES ('134', '70', 'user');
INSERT INTO `group_user` VALUES ('136', '70', 'user');
INSERT INTO `group_user` VALUES ('137', '70', 'user');
INSERT INTO `group_user` VALUES ('138', '70', 'user');
INSERT INTO `group_user` VALUES ('139', '70', 'user');
INSERT INTO `group_user` VALUES ('143', '70', 'user');
INSERT INTO `group_user` VALUES ('144', '70', 'user');
INSERT INTO `group_user` VALUES ('145', '70', 'user');
INSERT INTO `group_user` VALUES ('146', '70', 'user');
INSERT INTO `group_user` VALUES ('147', '70', 'user');
INSERT INTO `group_user` VALUES ('150', '70', 'user');
INSERT INTO `group_user` VALUES ('151', '70', 'user');
INSERT INTO `group_user` VALUES ('160', '70', 'user');
INSERT INTO `group_user` VALUES ('162', '71', 'user');
INSERT INTO `group_user` VALUES ('164', '78', 'creator');
INSERT INTO `group_user` VALUES ('165', '70', 'user');
INSERT INTO `group_user` VALUES ('167', '70', 'user');
INSERT INTO `group_user` VALUES ('170', '70', 'user');
INSERT INTO `group_user` VALUES ('171', '68', 'user');
INSERT INTO `group_user` VALUES ('171', '71', 'user');
INSERT INTO `group_user` VALUES ('173', '70', 'user');
INSERT INTO `group_user` VALUES ('174', '70', 'user');
INSERT INTO `group_user` VALUES ('175', '70', 'user');
INSERT INTO `group_user` VALUES ('185', '70', 'user');
INSERT INTO `group_user` VALUES ('186', '70', 'user');
INSERT INTO `group_user` VALUES ('187', '70', 'user');
INSERT INTO `group_user` VALUES ('188', '70', 'user');
INSERT INTO `group_user` VALUES ('192', '70', 'user');
INSERT INTO `group_user` VALUES ('197', '70', 'user');
INSERT INTO `group_user` VALUES ('199', '70', 'user');
INSERT INTO `group_user` VALUES ('200', '70', 'user');
INSERT INTO `group_user` VALUES ('201', '70', 'user');
INSERT INTO `group_user` VALUES ('205', '70', 'user');
INSERT INTO `group_user` VALUES ('206', '70', 'user');
INSERT INTO `group_user` VALUES ('221', '70', 'user');
INSERT INTO `group_user` VALUES ('224', '70', 'user');
INSERT INTO `group_user` VALUES ('225', '70', 'user');
INSERT INTO `group_user` VALUES ('228', '70', 'user');
INSERT INTO `group_user` VALUES ('229', '70', 'user');
INSERT INTO `group_user` VALUES ('230', '70', 'user');
INSERT INTO `group_user` VALUES ('231', '70', 'user');
INSERT INTO `group_user` VALUES ('233', '70', 'user');
INSERT INTO `group_user` VALUES ('236', '70', 'user');
INSERT INTO `group_user` VALUES ('241', '70', 'user');
INSERT INTO `group_user` VALUES ('243', '70', 'user');
INSERT INTO `group_user` VALUES ('245', '70', 'user');
INSERT INTO `group_user` VALUES ('246', '70', 'user');
INSERT INTO `group_user` VALUES ('247', '81', 'creator');
INSERT INTO `group_user` VALUES ('249', '70', 'user');
INSERT INTO `group_user` VALUES ('258', '82', 'creator');
INSERT INTO `group_user` VALUES ('259', '68', 'user');
INSERT INTO `group_user` VALUES ('261', '70', 'user');
INSERT INTO `group_user` VALUES ('263', '71', 'user');
INSERT INTO `group_user` VALUES ('264', '70', 'user');
INSERT INTO `group_user` VALUES ('266', '70', 'user');
INSERT INTO `group_user` VALUES ('273', '93', 'creator');
INSERT INTO `group_user` VALUES ('276', '68', 'user');
INSERT INTO `group_user` VALUES ('276', '71', 'user');
INSERT INTO `group_user` VALUES ('276', '80', 'user');
INSERT INTO `group_user` VALUES ('280', '70', 'user');
INSERT INTO `group_user` VALUES ('286', '69', 'user');
INSERT INTO `group_user` VALUES ('286', '82', 'user');
INSERT INTO `group_user` VALUES ('289', '70', 'user');
INSERT INTO `group_user` VALUES ('289', '71', 'user');
INSERT INTO `group_user` VALUES ('293', '83', 'creator');
INSERT INTO `group_user` VALUES ('296', '86', 'creator');
INSERT INTO `group_user` VALUES ('297', '70', 'user');
INSERT INTO `group_user` VALUES ('298', '87', 'creator');
INSERT INTO `group_user` VALUES ('298', '88', 'creator');
INSERT INTO `group_user` VALUES ('298', '89', 'creator');
INSERT INTO `group_user` VALUES ('298', '90', 'creator');
INSERT INTO `group_user` VALUES ('300', '70', 'user');
INSERT INTO `group_user` VALUES ('303', '69', 'user');
INSERT INTO `group_user` VALUES ('303', '82', 'user');
INSERT INTO `group_user` VALUES ('303', '91', 'creator');
INSERT INTO `group_user` VALUES ('310', '71', 'user');
INSERT INTO `group_user` VALUES ('322', '68', 'user');
INSERT INTO `group_user` VALUES ('322', '74', 'user');
INSERT INTO `group_user` VALUES ('322', '92', 'creator');
INSERT INTO `group_user` VALUES ('327', '71', 'user');
INSERT INTO `group_user` VALUES ('333', '80', 'user');
INSERT INTO `group_user` VALUES ('342', '70', 'user');
INSERT INTO `group_user` VALUES ('347', '76', 'user');
INSERT INTO `group_user` VALUES ('350', '70', 'user');
INSERT INTO `group_user` VALUES ('353', '99', 'creator');
INSERT INTO `group_user` VALUES ('354', '70', 'user');
INSERT INTO `group_user` VALUES ('355', '72', 'user');
INSERT INTO `group_user` VALUES ('359', '94', 'creator');
INSERT INTO `group_user` VALUES ('368', '95', 'creator');
INSERT INTO `group_user` VALUES ('369', '98', 'user');
INSERT INTO `group_user` VALUES ('373', '71', 'user');
INSERT INTO `group_user` VALUES ('377', '70', 'instructor');
INSERT INTO `group_user` VALUES ('377', '71', 'user');
INSERT INTO `group_user` VALUES ('377', '73', 'user');
INSERT INTO `group_user` VALUES ('377', '96', 'creator');
INSERT INTO `group_user` VALUES ('382', '97', 'creator');
INSERT INTO `group_user` VALUES ('385', '82', 'user');
INSERT INTO `group_user` VALUES ('385', '89', 'user');
INSERT INTO `group_user` VALUES ('385', '92', 'user');
INSERT INTO `group_user` VALUES ('391', '68', 'user');
INSERT INTO `group_user` VALUES ('391', '98', 'creator');
INSERT INTO `group_user` VALUES ('392', '98', 'user');
INSERT INTO `group_user` VALUES ('397', '68', 'user');
INSERT INTO `group_user` VALUES ('397', '71', 'user');
INSERT INTO `group_user` VALUES ('398', '69', 'user');
INSERT INTO `group_user` VALUES ('404', '100', 'creator');

-- ----------------------------
-- Table structure for `interestforum_info`
-- ----------------------------
DROP TABLE IF EXISTS `interestforum_info`;
CREATE TABLE `interestforum_info` (
  `ID` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `description` varchar(300) default NULL,
  `groupID` int(11) NOT NULL,
  PRIMARY KEY  (`ID`),
  KEY `groupID` (`groupID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of interestforum_info
-- ----------------------------
INSERT INTO `interestforum_info` VALUES ('1', 'fun forum', 'ay kalam', '70');
INSERT INTO `interestforum_info` VALUES ('2', 'Politics', 'wala eih?', '70');

-- ----------------------------
-- Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `ID` int(11) NOT NULL auto_increment,
  `threadID` int(11) NOT NULL,
  `TimeStamp` text NOT NULL,
  `FromID` int(11) NOT NULL,
  `Content` longtext NOT NULL,
  PRIMARY KEY  (`ID`),
  KEY `FromID` (`FromID`),
  KEY `threadID` (`threadID`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('8', '16', 'Jun 18, 2010 5:45:07 AM', '1', '11111111111111111111111111111111111111111111');
INSERT INTO `message` VALUES ('9', '16', 'Jun 18, 2010 3:07:17 PM', '1', 'knllllllllllllllllllllllll');
INSERT INTO `message` VALUES ('10', '16', 'Jun 18, 2010 3:33:27 PM', '1', 'mfkdsmfklmdsklfmdsklmfskldmfkl');
INSERT INTO `message` VALUES ('11', '16', 'Jun 18, 2010 3:38:52 PM', '1', 'nkjdsnkjlfdskjnfdskj');
INSERT INTO `message` VALUES ('12', '16', 'Jun 18, 2010 3:40:29 PM', '1', 'nkjdsnkjlfdskjnfdskj');
INSERT INTO `message` VALUES ('13', '16', 'Jun 18, 2010 3:40:51 PM', '1', 'hhhhhhhhhhhhhhhhhhhhhhh');
INSERT INTO `message` VALUES ('14', '16', 'Jun 18, 2010 3:45:17 PM', '1', 'jbnjnjnjknknkjknkjknknkjnkjnkjnjk');
INSERT INTO `message` VALUES ('15', '16', 'Jun 21, 2010 9:34:03 AM', '1', 'dddddd');
INSERT INTO `message` VALUES ('16', '17', 'Jun 21, 2010 10:00:51 AM', '1', 'dewdkewkldpoewpkdpoewkpodewkdpoewdkpoew');
INSERT INTO `message` VALUES ('17', '18', 'Jun 21, 2010 10:44:19 AM', '1', 'Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test ');
INSERT INTO `message` VALUES ('18', '16', 'Jun 21, 2010 12:19:50 PM', '1', '');
INSERT INTO `message` VALUES ('19', '18', 'Jun 21, 2010 1:48:16 PM', '1', 'Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test ');
INSERT INTO `message` VALUES ('20', '18', 'Jun 21, 2010 1:48:53 PM', '1', 'Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test ');
INSERT INTO `message` VALUES ('21', '18', 'Jun 21, 2010 2:15:34 PM', '1', 'Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test ');
INSERT INTO `message` VALUES ('22', '18', 'Jun 21, 2010 2:38:24 PM', '1', 'TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST ');
INSERT INTO `message` VALUES ('23', '19', 'Jun 22, 2010 4:48:12 PM', '1', 'lf,ewpl,fpew,mfew,pf,ew,mfklewmkfmewkmfklew');
INSERT INTO `message` VALUES ('24', '20', 'Jun 22, 2010 4:50:09 PM', '1', 'fkjnfkjewnofwjnfkjewnjfnwenfkjewenfkjwnjfwekjnfjewnjfwekjnfwenkjfnewkjnf');
INSERT INTO `message` VALUES ('25', '21', 'Jun 22, 2010 4:52:53 PM', '1', 'gnengegnergnkjerngergnknmgerkjgnkjengkjer');
INSERT INTO `message` VALUES ('26', '22', 'Jun 22, 2010 4:55:15 PM', '1', 'poewdkewpkdpoewkpodewkpokewpdkewpokdpoew');
INSERT INTO `message` VALUES ('27', '23', 'Jun 22, 2010 4:55:46 PM', '1', 'fwkemfkoewmfmowefkjioewkfpoewkfpoewkpfewpokf');
INSERT INTO `message` VALUES ('28', '24', 'Jun 22, 2010 4:56:03 PM', '1', 'dkewokdpoewkdpowekdpewdpoewkdpoewkodpewkdpowekpdewpodkew');
INSERT INTO `message` VALUES ('29', '25', 'Jun 22, 2010 9:10:03 PM', '1', 'fpoewlfwkefpowkepofkewopkfwpoekfpoewkfpowekfpew');
INSERT INTO `message` VALUES ('30', '26', 'Jun 22, 2010 9:13:22 PM', '1', 'sssssssssssssssssssssssssssssssssssssss');
INSERT INTO `message` VALUES ('31', '27', 'Jun 22, 2010 9:15:04 PM', '1', 'pf,wpokfpoewkfewkpo');
INSERT INTO `message` VALUES ('32', '28', 'Jun 22, 2010 9:20:57 PM', '1', 'fewfoewfiewjmfioewjofiewo');
INSERT INTO `message` VALUES ('33', '29', 'Jun 22, 2010 9:34:06 PM', '1', 'fw,emmmmmmmmmmmmmmmmmmmmmmmmmmmm');
INSERT INTO `message` VALUES ('34', '31', 'Jun 22, 2010 9:38:22 PM', '1', 'owjmndfioewofiewjfiojwofjweifjwejfewiojfewiojfiow');
INSERT INTO `message` VALUES ('35', '32', 'Jun 22, 2010 10:12:34 PM', '1', 'ssaaSasaSasASa');
INSERT INTO `message` VALUES ('36', '33', 'Jun 22, 2010 10:15:50 PM', '1', 'fwmfokwmfklewmofmewomfewl');
INSERT INTO `message` VALUES ('37', '34', 'Jun 22, 2010 10:16:57 PM', '1', 'aaaaaaaaaaaa');
INSERT INTO `message` VALUES ('38', '35', 'Jun 22, 2010 10:25:15 PM', '1', ' Test6Test6Test6Test6Test6Test6Test6Test6Test6Test6Test6Test6Test6Test6Test6Test6Test6Test6Test6Test6Test6Test6Test6Test6Test6Test6Test6Test6Test6Test6Test6Test6Test6');
INSERT INTO `message` VALUES ('39', '35', 'Jun 22, 2010 10:27:25 PM', '1', 'Test6 Test6Test6Test6Test6Test6Test6Test6Test6Test6Test6Test6Test6Test6Test6Test6Test6Test6Test6Test6Test6Test6Test6Test6');
INSERT INTO `message` VALUES ('40', '36', 'Jun 22, 2010 10:30:14 PM', '1', 'mdewmdwekldmewkdmewkldmlew');
INSERT INTO `message` VALUES ('41', '37', 'Jun 22, 2010 10:31:49 PM', '1', 'Test 7');
INSERT INTO `message` VALUES ('42', '38', 'Jun 22, 2010 10:37:42 PM', '3', 'Test 8');
INSERT INTO `message` VALUES ('43', '39', 'Jun 22, 2010 10:38:30 PM', '3', 'Test 8');
INSERT INTO `message` VALUES ('44', '40', 'Jun 22, 2010 10:51:38 PM', '3', 'Test 9');
INSERT INTO `message` VALUES ('45', '45', 'Jun 23, 2010 6:22:21 AM', '3', 'Test');
INSERT INTO `message` VALUES ('46', '42', 'Jun 23, 2010 6:26:31 AM', '3', 'Test');
INSERT INTO `message` VALUES ('47', '46', 'Jun 23, 2010 7:08:31 AM', '3', 'fwfwelfmewfmklewmfklewmklfwe');
INSERT INTO `message` VALUES ('48', '45', 'Jun 23, 2010 10:19:40 PM', '3', 'Test');
INSERT INTO `message` VALUES ('49', '45', 'Jun 24, 2010 9:48:54 AM', '3', 'FFFFF');
INSERT INTO `message` VALUES ('50', '47', 'Jun 24, 2010 9:50:22 AM', '3', 'Test');
INSERT INTO `message` VALUES ('51', '48', 'Jun 24, 2010 9:51:34 AM', '3', 'dkcpokcpodsok');
INSERT INTO `message` VALUES ('52', '53', 'Jun 28, 2010 9:57:23 AM', '3', '1000000');
INSERT INTO `message` VALUES ('53', '47', 'Jun 28, 2010 10:05:50 AM', '3', 'Test');
INSERT INTO `message` VALUES ('54', '54', 'Jun 28, 2010 10:11:13 AM', '3', '123456667676');
INSERT INTO `message` VALUES ('55', '55', 'Jun 28, 2010 10:14:31 AM', '3', '12345');

-- ----------------------------
-- Table structure for `message_thread`
-- ----------------------------
DROP TABLE IF EXISTS `message_thread`;
CREATE TABLE `message_thread` (
  `ID` int(11) NOT NULL auto_increment,
  `Subject` text,
  `userID` int(11) NOT NULL,
  `Read` int(11) NOT NULL,
  `TimeStamp` longtext NOT NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message_thread
-- ----------------------------
INSERT INTO `message_thread` VALUES ('1', 'djjjjjjjjjjjjjjjjjjd', '1', '0', '');
INSERT INTO `message_thread` VALUES ('2', '11111', '1', '0', '');
INSERT INTO `message_thread` VALUES ('3', '11111', '1', '0', '');
INSERT INTO `message_thread` VALUES ('4', 'ndfskjfnskjd', '1', '0', '');
INSERT INTO `message_thread` VALUES ('5', 'dfds', '1', '0', '');
INSERT INTO `message_thread` VALUES ('6', 'edfefwefew', '1', '0', '');
INSERT INTO `message_thread` VALUES ('7', 'dewdew', '1', '0', '');
INSERT INTO `message_thread` VALUES ('8', 'dewdewd', '1', '0', '');
INSERT INTO `message_thread` VALUES ('9', '111111111111111', '0', '0', 'Jun 18, 2010 5:00:08 AM');
INSERT INTO `message_thread` VALUES ('10', '111111111111111', '0', '0', 'Jun 18, 2010 5:07:10 AM');
INSERT INTO `message_thread` VALUES ('11', '111111111111111', '0', '0', 'Jun 18, 2010 5:08:54 AM');
INSERT INTO `message_thread` VALUES ('12', '111111111111111', '0', '0', 'Jun 18, 2010 5:12:00 AM');
INSERT INTO `message_thread` VALUES ('13', '111111111111111', '6', '0', 'Jun 18, 2010 5:13:58 AM');
INSERT INTO `message_thread` VALUES ('14', '111111111111111', '6', '0', 'Jun 18, 2010 5:39:26 AM');
INSERT INTO `message_thread` VALUES ('15', '111111111111111', '6', '0', 'Jun 18, 2010 5:39:50 AM');
INSERT INTO `message_thread` VALUES ('16', '11111111111111111111', '6', '0', 'Jun 21, 2010 12:19:50 PM');
INSERT INTO `message_thread` VALUES ('17', 'dewpdklewpldl', '6', '0', 'Jun 21, 2010 10:00:51 AM');
INSERT INTO `message_thread` VALUES ('18', 'Test ', '6', '0', 'Jun 21, 2010 2:38:24 PM');
INSERT INTO `message_thread` VALUES ('19', '111111111111111', '6', '0', 'Jun 22, 2010 4:48:12 PM');
INSERT INTO `message_thread` VALUES ('20', '2222222222222', '6', '0', 'Jun 22, 2010 4:50:09 PM');
INSERT INTO `message_thread` VALUES ('21', 'njenkjgenjgkjefngnkjdfs', '6', '0', 'Jun 22, 2010 4:52:53 PM');
INSERT INTO `message_thread` VALUES ('22', 'kekkdpoewkdpoewkdpo', '6', '0', 'Jun 22, 2010 4:55:15 PM');
INSERT INTO `message_thread` VALUES ('23', 'mojmfdoewjfjwoejfoiwe', '6', '0', 'Jun 22, 2010 4:55:46 PM');
INSERT INTO `message_thread` VALUES ('24', 'dkpewokdpoewkdpoewkp', '6', '0', 'Jun 22, 2010 4:56:03 PM');
INSERT INTO `message_thread` VALUES ('25', 'fkfwkfewkfpoew', '1', '0', 'Jun 22, 2010 9:10:00 PM');
INSERT INTO `message_thread` VALUES ('26', 'AP databases', '1', '0', 'Jun 22, 2010 9:13:22 PM');
INSERT INTO `message_thread` VALUES ('27', 'SSSS', '6', '0', 'Jun 22, 2010 9:15:04 PM');
INSERT INTO `message_thread` VALUES ('28', 'fkmfomewiofmew', '6', '0', 'Jun 22, 2010 9:20:57 PM');
INSERT INTO `message_thread` VALUES ('29', 'Test 1', '1', '0', 'Jun 22, 2010 9:34:06 PM');
INSERT INTO `message_thread` VALUES ('30', 'Test 2', '1', '0', 'Jun 22, 2010 9:37:04 PM');
INSERT INTO `message_thread` VALUES ('31', 'Test 3', '1', '0', 'Jun 22, 2010 9:38:22 PM');
INSERT INTO `message_thread` VALUES ('32', 'Test 4', '1', '0', 'Jun 22, 2010 10:12:32 PM');
INSERT INTO `message_thread` VALUES ('33', 'Test 5', '1', '0', 'Jun 22, 2010 10:15:50 PM');
INSERT INTO `message_thread` VALUES ('34', 'aaaaaa', '1', '0', 'Jun 22, 2010 10:16:57 PM');
INSERT INTO `message_thread` VALUES ('35', 'Test 6', '1', '0', 'Jun 22, 2010 10:27:25 PM');
INSERT INTO `message_thread` VALUES ('36', 'dewdmewiomdew', '1', '0', 'Jun 22, 2010 10:30:14 PM');
INSERT INTO `message_thread` VALUES ('37', 'Test 7', '1', '0', 'Jun 22, 2010 10:31:49 PM');
INSERT INTO `message_thread` VALUES ('38', 'Test 8', '3', '0', 'Jun 22, 2010 10:37:42 PM');
INSERT INTO `message_thread` VALUES ('39', 'Test 8', '3', '0', 'Jun 22, 2010 10:38:30 PM');
INSERT INTO `message_thread` VALUES ('40', 'Test 9', '3', '0', 'Jun 22, 2010 10:51:38 PM');
INSERT INTO `message_thread` VALUES ('41', 'Test 10', '3', '0', 'Jun 23, 2010 6:22:12 AM');
INSERT INTO `message_thread` VALUES ('42', 'Test 11', '3', '0', 'Jun 23, 2010 6:26:30 AM');
INSERT INTO `message_thread` VALUES ('43', 'Test 12', '3', '0', 'Jun 23, 2010 6:56:24 AM');
INSERT INTO `message_thread` VALUES ('44', 'Test13', '3', '0', 'Jun 23, 2010 6:59:37 AM');
INSERT INTO `message_thread` VALUES ('45', 'Test 14', '3', '0', 'Jun 24, 2010 9:48:54 AM');
INSERT INTO `message_thread` VALUES ('46', 'Test 15', '3', '0', 'Jun 23, 2010 7:08:31 AM');
INSERT INTO `message_thread` VALUES ('47', 'Test 111', '3', '0', 'Jun 28, 2010 10:05:50 AM');
INSERT INTO `message_thread` VALUES ('48', 'Testing', '3', '0', 'Jun 24, 2010 9:51:34 AM');
INSERT INTO `message_thread` VALUES ('49', 'Test20', '3', '0', 'Jun 28, 2010 9:37:18 AM');
INSERT INTO `message_thread` VALUES ('50', 'Test20', '3', '0', 'Jun 28, 2010 9:40:05 AM');
INSERT INTO `message_thread` VALUES ('51', 'Test20', '3', '0', 'Jun 28, 2010 9:49:51 AM');
INSERT INTO `message_thread` VALUES ('52', 'Test20', '3', '0', 'Jun 28, 2010 9:53:50 AM');
INSERT INTO `message_thread` VALUES ('53', 'Test 21', '3', '0', 'Jun 28, 2010 9:57:23 AM');
INSERT INTO `message_thread` VALUES ('54', 'Test 22', '3', '0', 'Jun 28, 2010 10:11:13 AM');
INSERT INTO `message_thread` VALUES ('55', 'Test23', '4', '0', 'Jun 28, 2010 10:14:31 AM');

-- ----------------------------
-- Table structure for `notifications`
-- ----------------------------
DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications` (
  `ID` int(11) NOT NULL auto_increment,
  `userID` int(11) NOT NULL,
  `Description` varchar(100) default NULL,
  `Link` varchar(100) NOT NULL,
  `isViewed` bit(1) NOT NULL,
  `TimeStamp` timestamp NOT NULL default '0000-00-00 00:00:00' on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`ID`),
  KEY `userID` USING BTREE (`userID`)
) ENGINE=MyISAM AUTO_INCREMENT=369 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notifications
-- ----------------------------
INSERT INTO `notifications` VALUES ('133', '39', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-10 14:31:18');
INSERT INTO `notifications` VALUES ('134', '38', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-10 15:01:20');
INSERT INTO `notifications` VALUES ('135', '38', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-10 15:01:31');
INSERT INTO `notifications` VALUES ('136', '38', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-10 15:01:39');
INSERT INTO `notifications` VALUES ('137', '38', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-10 15:04:48');
INSERT INTO `notifications` VALUES ('138', '47', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-10 15:38:10');
INSERT INTO `notifications` VALUES ('139', '47', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-10 15:38:41');
INSERT INTO `notifications` VALUES ('140', '47', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-10 15:39:13');
INSERT INTO `notifications` VALUES ('141', '47', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-10 20:22:30');
INSERT INTO `notifications` VALUES ('142', '37', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-10 20:22:30');
INSERT INTO `notifications` VALUES ('143', '68', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-10 22:56:58');
INSERT INTO `notifications` VALUES ('144', '73', 'New post was added to topic alkslg;lg?', 'ABCS', '', '2010-03-11 02:10:22');
INSERT INTO `notifications` VALUES ('145', '73', 'New post was added to topic alkslg;lg?', 'ABCS', '', '2010-03-11 02:12:54');
INSERT INTO `notifications` VALUES ('146', '38', 'New post was added to topic alkslg;lg?', 'ABCS', '', '2010-03-11 02:12:54');
INSERT INTO `notifications` VALUES ('147', '38', 'New post was added to topic Why the hell are we studying this course?', 'ABCS', '', '2010-03-11 02:31:17');
INSERT INTO `notifications` VALUES ('148', '38', 'New post was added to topic Why the hell are we studying this course?', 'ABCS', '', '2010-03-11 02:31:55');
INSERT INTO `notifications` VALUES ('149', '73', 'New post was added to topic hey ?', 'ABCS', '', '2010-03-11 05:34:37');
INSERT INTO `notifications` VALUES ('150', '73', 'New post was added to topic hey ?', 'ABCS', '', '2010-03-11 05:35:34');
INSERT INTO `notifications` VALUES ('151', '73', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-11 05:36:52');
INSERT INTO `notifications` VALUES ('152', '73', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-11 05:47:40');
INSERT INTO `notifications` VALUES ('153', '39', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-11 05:47:40');
INSERT INTO `notifications` VALUES ('154', '64', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-11 11:08:36');
INSERT INTO `notifications` VALUES ('155', '63', 'New post was added to topic <em><strong>eh ra2yokom ya gama3a felle 2aloh Dr.Ayman El Khateeb el nah', 'ABCS', '', '2010-03-11 11:22:35');
INSERT INTO `notifications` VALUES ('156', '63', 'New post was added to topic <em><strong>eh ra2yokom ya gama3a felle 2aloh Dr.Ayman El Khateeb el nah', 'ABCS', '', '2010-03-11 11:23:24');
INSERT INTO `notifications` VALUES ('157', '120', 'New post was added to topic <em><strong>eh ra2yokom ya gama3a felle 2aloh Dr.Ayman El Khateeb el nah', 'ABCS', '', '2010-03-11 11:23:24');
INSERT INTO `notifications` VALUES ('158', '119', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-11 11:26:42');
INSERT INTO `notifications` VALUES ('159', '64', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-11 11:56:25');
INSERT INTO `notifications` VALUES ('160', '63', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-11 11:56:25');
INSERT INTO `notifications` VALUES ('161', '64', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-11 11:58:50');
INSERT INTO `notifications` VALUES ('162', '63', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-11 11:58:50');
INSERT INTO `notifications` VALUES ('163', '129', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-11 11:58:50');
INSERT INTO `notifications` VALUES ('164', '64', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-11 12:15:55');
INSERT INTO `notifications` VALUES ('165', '63', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-11 12:15:55');
INSERT INTO `notifications` VALUES ('166', '150', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-11 12:15:55');
INSERT INTO `notifications` VALUES ('167', '68', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-11 12:30:20');
INSERT INTO `notifications` VALUES ('168', '162', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-11 12:30:20');
INSERT INTO `notifications` VALUES ('169', '166', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-11 12:41:27');
INSERT INTO `notifications` VALUES ('170', '39', 'New post was added to topic What\'s networks ?', 'ABCS', '', '2010-03-11 13:32:33');
INSERT INTO `notifications` VALUES ('171', '63', 'New post was added to topic <em><strong>eh ra2yokom ya gama3a felle 2aloh Dr.Ayman El Khateeb el nah', 'ABCS', '', '2010-03-11 13:56:23');
INSERT INTO `notifications` VALUES ('172', '120', 'New post was added to topic <em><strong>eh ra2yokom ya gama3a felle 2aloh Dr.Ayman El Khateeb el nah', 'ABCS', '', '2010-03-11 13:56:23');
INSERT INTO `notifications` VALUES ('173', '184', 'New post was added to topic <em><strong>eh ra2yokom ya gama3a felle 2aloh Dr.Ayman El Khateeb el nah', 'ABCS', '', '2010-03-11 13:56:23');
INSERT INTO `notifications` VALUES ('174', '182', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-11 14:25:39');
INSERT INTO `notifications` VALUES ('175', '182', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-11 14:28:02');
INSERT INTO `notifications` VALUES ('176', '69', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-12 01:55:14');
INSERT INTO `notifications` VALUES ('177', '38', 'New post was added to topic Why the hell are we studying this course?', 'ABCS', '', '2010-03-12 02:01:57');
INSERT INTO `notifications` VALUES ('178', '69', 'New post was added to topic Why the hell are we studying this course?', 'ABCS', '', '2010-03-12 02:01:57');
INSERT INTO `notifications` VALUES ('179', '64', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-12 02:24:15');
INSERT INTO `notifications` VALUES ('180', '63', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-12 02:24:15');
INSERT INTO `notifications` VALUES ('181', '123', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-12 02:24:15');
INSERT INTO `notifications` VALUES ('182', '63', 'New post was added to topic <em><strong>eh ra2yokom ya gama3a felle 2aloh Dr.Ayman El Khateeb el nah', 'ABCS', '', '2010-03-12 05:58:45');
INSERT INTO `notifications` VALUES ('183', '120', 'New post was added to topic <em><strong>eh ra2yokom ya gama3a felle 2aloh Dr.Ayman El Khateeb el nah', 'ABCS', '', '2010-03-12 05:58:45');
INSERT INTO `notifications` VALUES ('184', '205', 'New post was added to topic <em><strong>eh ra2yokom ya gama3a felle 2aloh Dr.Ayman El Khateeb el nah', 'ABCS', '', '2010-03-12 05:58:45');
INSERT INTO `notifications` VALUES ('185', '47', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-12 16:10:08');
INSERT INTO `notifications` VALUES ('186', '37', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-12 16:10:15');
INSERT INTO `notifications` VALUES ('187', '47', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-12 16:10:16');
INSERT INTO `notifications` VALUES ('188', '37', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-12 16:10:16');
INSERT INTO `notifications` VALUES ('189', '47', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-12 16:10:37');
INSERT INTO `notifications` VALUES ('190', '37', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-12 16:10:37');
INSERT INTO `notifications` VALUES ('191', '47', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-12 16:11:18');
INSERT INTO `notifications` VALUES ('192', '37', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-12 16:11:18');
INSERT INTO `notifications` VALUES ('193', '258', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-12 16:26:16');
INSERT INTO `notifications` VALUES ('194', '47', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-12 16:43:48');
INSERT INTO `notifications` VALUES ('195', '37', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-12 16:43:48');
INSERT INTO `notifications` VALUES ('196', '258', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-12 16:43:48');
INSERT INTO `notifications` VALUES ('197', '63', 'New post was added to topic <em><strong>eh ra2yokom ya gama3a felle 2aloh Dr.Ayman El Khateeb el nah', 'ABCS', '', '2010-03-12 17:38:27');
INSERT INTO `notifications` VALUES ('198', '120', 'New post was added to topic <em><strong>eh ra2yokom ya gama3a felle 2aloh Dr.Ayman El Khateeb el nah', 'ABCS', '', '2010-03-12 17:38:27');
INSERT INTO `notifications` VALUES ('199', '205', 'New post was added to topic <em><strong>eh ra2yokom ya gama3a felle 2aloh Dr.Ayman El Khateeb el nah', 'ABCS', '', '2010-03-12 17:38:27');
INSERT INTO `notifications` VALUES ('200', '261', 'New post was added to topic <em><strong>eh ra2yokom ya gama3a felle 2aloh Dr.Ayman El Khateeb el nah', 'ABCS', '', '2010-03-12 17:38:27');
INSERT INTO `notifications` VALUES ('201', '73', 'New post was added to topic hey ?', 'ABCS', '', '2010-03-13 15:36:44');
INSERT INTO `notifications` VALUES ('202', '286', 'New post was added to topic hey ?', 'ABCS', '', '2010-03-13 15:36:44');
INSERT INTO `notifications` VALUES ('203', '68', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-13 23:09:43');
INSERT INTO `notifications` VALUES ('204', '162', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-13 23:09:43');
INSERT INTO `notifications` VALUES ('205', '38', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-13 23:09:43');
INSERT INTO `notifications` VALUES ('206', '68', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-14 09:08:26');
INSERT INTO `notifications` VALUES ('207', '162', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-14 09:08:26');
INSERT INTO `notifications` VALUES ('208', '38', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-14 09:08:26');
INSERT INTO `notifications` VALUES ('209', '258', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-14 10:03:08');
INSERT INTO `notifications` VALUES ('210', '303', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-14 10:03:08');
INSERT INTO `notifications` VALUES ('211', '68', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-16 04:25:39');
INSERT INTO `notifications` VALUES ('212', '162', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-16 04:25:39');
INSERT INTO `notifications` VALUES ('213', '90', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-16 04:25:39');
INSERT INTO `notifications` VALUES ('214', '68', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-16 06:59:52');
INSERT INTO `notifications` VALUES ('215', '162', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-16 06:59:52');
INSERT INTO `notifications` VALUES ('216', '90', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-16 06:59:52');
INSERT INTO `notifications` VALUES ('217', '38', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-16 06:59:52');
INSERT INTO `notifications` VALUES ('218', '68', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-17 03:07:59');
INSERT INTO `notifications` VALUES ('219', '162', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-17 03:07:59');
INSERT INTO `notifications` VALUES ('220', '90', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-17 03:07:59');
INSERT INTO `notifications` VALUES ('221', '38', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-17 03:07:59');
INSERT INTO `notifications` VALUES ('222', '101', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-17 03:07:59');
INSERT INTO `notifications` VALUES ('223', '68', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-17 03:08:18');
INSERT INTO `notifications` VALUES ('224', '162', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-17 03:08:18');
INSERT INTO `notifications` VALUES ('225', '90', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-17 03:08:18');
INSERT INTO `notifications` VALUES ('226', '38', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-17 03:08:18');
INSERT INTO `notifications` VALUES ('227', '101', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-17 03:08:18');
INSERT INTO `notifications` VALUES ('228', '68', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-17 03:09:03');
INSERT INTO `notifications` VALUES ('229', '162', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-17 03:09:03');
INSERT INTO `notifications` VALUES ('230', '90', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-17 03:09:03');
INSERT INTO `notifications` VALUES ('231', '38', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-17 03:09:03');
INSERT INTO `notifications` VALUES ('232', '101', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-17 03:09:03');
INSERT INTO `notifications` VALUES ('233', '68', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-17 08:26:31');
INSERT INTO `notifications` VALUES ('234', '162', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-17 08:26:31');
INSERT INTO `notifications` VALUES ('235', '90', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-17 08:26:31');
INSERT INTO `notifications` VALUES ('236', '38', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-17 08:26:31');
INSERT INTO `notifications` VALUES ('237', '101', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-17 08:26:31');
INSERT INTO `notifications` VALUES ('238', '296', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-18 10:07:26');
INSERT INTO `notifications` VALUES ('239', '296', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-18 10:07:26');
INSERT INTO `notifications` VALUES ('240', '63', 'New post was added to topic <em><strong>eh ra2yokom ya gama3a felle 2aloh Dr.Ayman El Khateeb el nah', 'ABCS', '', '2010-03-19 09:29:51');
INSERT INTO `notifications` VALUES ('241', '120', 'New post was added to topic <em><strong>eh ra2yokom ya gama3a felle 2aloh Dr.Ayman El Khateeb el nah', 'ABCS', '', '2010-03-19 09:29:51');
INSERT INTO `notifications` VALUES ('242', '205', 'New post was added to topic <em><strong>eh ra2yokom ya gama3a felle 2aloh Dr.Ayman El Khateeb el nah', 'ABCS', '', '2010-03-19 09:29:51');
INSERT INTO `notifications` VALUES ('243', '261', 'New post was added to topic <em><strong>eh ra2yokom ya gama3a felle 2aloh Dr.Ayman El Khateeb el nah', 'ABCS', '', '2010-03-19 09:29:51');
INSERT INTO `notifications` VALUES ('244', '174', 'New post was added to topic <em><strong>eh ra2yokom ya gama3a felle 2aloh Dr.Ayman El Khateeb el nah', 'ABCS', '', '2010-03-19 09:29:51');
INSERT INTO `notifications` VALUES ('245', '73', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-03-30 05:06:01');
INSERT INTO `notifications` VALUES ('246', '377', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-04-20 14:34:09');
INSERT INTO `notifications` VALUES ('247', '38', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-05-02 03:35:36');
INSERT INTO `notifications` VALUES ('248', '276', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-05-02 03:35:36');
INSERT INTO `notifications` VALUES ('249', '38', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-05-19 17:16:37');
INSERT INTO `notifications` VALUES ('250', '276', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-05-19 17:16:37');
INSERT INTO `notifications` VALUES ('251', '68', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-05-20 10:09:31');
INSERT INTO `notifications` VALUES ('252', '162', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-05-20 10:09:31');
INSERT INTO `notifications` VALUES ('253', '90', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-05-20 10:09:31');
INSERT INTO `notifications` VALUES ('254', '38', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-05-20 10:09:31');
INSERT INTO `notifications` VALUES ('255', '101', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-05-20 10:09:31');
INSERT INTO `notifications` VALUES ('256', '80', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-05-20 10:09:31');
INSERT INTO `notifications` VALUES ('257', '391', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-05-20 11:01:08');
INSERT INTO `notifications` VALUES ('258', '37', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-05-20 11:03:38');
INSERT INTO `notifications` VALUES ('259', '391', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-05-20 11:04:39');
INSERT INTO `notifications` VALUES ('260', '391', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-05-20 11:05:20');
INSERT INTO `notifications` VALUES ('261', '391', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-05-20 11:05:37');
INSERT INTO `notifications` VALUES ('262', '353', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-05-20 12:54:14');
INSERT INTO `notifications` VALUES ('263', '353', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-05-20 12:54:14');
INSERT INTO `notifications` VALUES ('264', '353', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-05-20 12:54:15');
INSERT INTO `notifications` VALUES ('265', '353', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-05-20 12:54:32');
INSERT INTO `notifications` VALUES ('266', '404', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-05-27 02:35:31');
INSERT INTO `notifications` VALUES ('267', '404', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-05-27 02:35:31');
INSERT INTO `notifications` VALUES ('268', '38', 'New post was added to topic Why?', 'ABCS', '', '2010-05-27 23:08:07');
INSERT INTO `notifications` VALUES ('269', '64', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-06-19 18:16:03');
INSERT INTO `notifications` VALUES ('270', '63', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-06-19 18:16:03');
INSERT INTO `notifications` VALUES ('271', '123', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-06-19 18:16:03');
INSERT INTO `notifications` VALUES ('272', '37', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-06-19 18:16:03');
INSERT INTO `notifications` VALUES ('273', '38', 'New post was added to topic Why?', 'ABCS', '', '2010-06-20 11:56:36');
INSERT INTO `notifications` VALUES ('274', '37', 'New post was added to topic Why?', 'ABCS', '', '2010-06-20 11:56:36');
INSERT INTO `notifications` VALUES ('275', '63', 'New post was added to topic <em><strong>eh ra2yokom ya gama3a felle 2aloh Dr.Ayman El Khateeb el nah', 'ABCS', '', '2010-06-21 02:11:01');
INSERT INTO `notifications` VALUES ('276', '120', 'New post was added to topic <em><strong>eh ra2yokom ya gama3a felle 2aloh Dr.Ayman El Khateeb el nah', 'ABCS', '', '2010-06-21 02:11:01');
INSERT INTO `notifications` VALUES ('277', '205', 'New post was added to topic <em><strong>eh ra2yokom ya gama3a felle 2aloh Dr.Ayman El Khateeb el nah', 'ABCS', '', '2010-06-21 02:11:01');
INSERT INTO `notifications` VALUES ('278', '261', 'New post was added to topic <em><strong>eh ra2yokom ya gama3a felle 2aloh Dr.Ayman El Khateeb el nah', 'ABCS', '', '2010-06-21 02:11:01');
INSERT INTO `notifications` VALUES ('279', '174', 'New post was added to topic <em><strong>eh ra2yokom ya gama3a felle 2aloh Dr.Ayman El Khateeb el nah', 'ABCS', '', '2010-06-21 02:11:01');
INSERT INTO `notifications` VALUES ('280', '37', 'New post was added to topic <em><strong>eh ra2yokom ya gama3a felle 2aloh Dr.Ayman El Khateeb el nah', 'ABCS', '', '2010-06-21 02:11:01');
INSERT INTO `notifications` VALUES ('281', '37', 'New post was added to topic samir', 'ABCS', '', '2010-06-26 16:57:49');
INSERT INTO `notifications` VALUES ('282', '37', 'New post was added to topic samir ', 'ABCS', '', '2010-07-07 17:26:55');
INSERT INTO `notifications` VALUES ('283', '37', 'New post was added to topic samir ', 'ABCS', '', '2010-07-07 17:38:02');
INSERT INTO `notifications` VALUES ('284', '37', 'New post was added to topic samir ', 'ABCS', '', '2010-07-07 17:44:15');
INSERT INTO `notifications` VALUES ('285', '37', 'New post was added to topic samir ', 'ABCS', '', '2010-07-07 17:48:22');
INSERT INTO `notifications` VALUES ('286', '37', 'New post was added to topic samir ', 'ABCS', '', '2010-07-07 17:54:12');
INSERT INTO `notifications` VALUES ('287', '37', 'New post was added to topic samir ', 'ABCS', '', '2010-07-07 17:56:36');
INSERT INTO `notifications` VALUES ('288', '37', 'New post was added to topic samir ', 'ABCS', '', '2010-07-07 17:58:22');
INSERT INTO `notifications` VALUES ('289', '37', 'New post was added to topic samir ', 'ABCS', '', '2010-07-07 17:58:47');
INSERT INTO `notifications` VALUES ('290', '37', 'New post was added to topic <em><strong>eh ra2yokom ya gama3a felle 2aloh Dr.Ayman El Khateeb el nah', 'ABCS', '', '2010-07-08 03:15:57');
INSERT INTO `notifications` VALUES ('291', '120', 'New post was added to topic <em><strong>eh ra2yokom ya gama3a felle 2aloh Dr.Ayman El Khateeb el nah', 'ABCS', '', '2010-07-08 03:15:57');
INSERT INTO `notifications` VALUES ('292', '205', 'New post was added to topic <em><strong>eh ra2yokom ya gama3a felle 2aloh Dr.Ayman El Khateeb el nah', 'ABCS', '', '2010-07-08 03:15:57');
INSERT INTO `notifications` VALUES ('293', '261', 'New post was added to topic <em><strong>eh ra2yokom ya gama3a felle 2aloh Dr.Ayman El Khateeb el nah', 'ABCS', '', '2010-07-08 03:15:57');
INSERT INTO `notifications` VALUES ('294', '174', 'New post was added to topic <em><strong>eh ra2yokom ya gama3a felle 2aloh Dr.Ayman El Khateeb el nah', 'ABCS', '', '2010-07-08 03:15:57');
INSERT INTO `notifications` VALUES ('295', '37', 'New post was added to topic <em><strong>eh ra2yokom ya gama3a felle 2aloh Dr.Ayman El Khateeb el nah', 'ABCS', '', '2010-07-08 22:10:51');
INSERT INTO `notifications` VALUES ('296', '120', 'New post was added to topic <em><strong>eh ra2yokom ya gama3a felle 2aloh Dr.Ayman El Khateeb el nah', 'ABCS', '', '2010-07-08 22:10:51');
INSERT INTO `notifications` VALUES ('297', '205', 'New post was added to topic <em><strong>eh ra2yokom ya gama3a felle 2aloh Dr.Ayman El Khateeb el nah', 'ABCS', '', '2010-07-08 22:10:51');
INSERT INTO `notifications` VALUES ('298', '261', 'New post was added to topic <em><strong>eh ra2yokom ya gama3a felle 2aloh Dr.Ayman El Khateeb el nah', 'ABCS', '', '2010-07-08 22:10:51');
INSERT INTO `notifications` VALUES ('299', '174', 'New post was added to topic <em><strong>eh ra2yokom ya gama3a felle 2aloh Dr.Ayman El Khateeb el nah', 'ABCS', '', '2010-07-08 22:10:51');
INSERT INTO `notifications` VALUES ('300', '64', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-07-11 13:42:05');
INSERT INTO `notifications` VALUES ('301', '63', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-07-11 13:42:05');
INSERT INTO `notifications` VALUES ('302', '123', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-07-11 13:42:05');
INSERT INTO `notifications` VALUES ('303', '37', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-07-11 13:42:05');
INSERT INTO `notifications` VALUES ('304', '64', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-07-11 13:43:37');
INSERT INTO `notifications` VALUES ('305', '63', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-07-11 13:43:37');
INSERT INTO `notifications` VALUES ('306', '123', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-07-11 13:43:37');
INSERT INTO `notifications` VALUES ('307', '37', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-07-11 13:43:37');
INSERT INTO `notifications` VALUES ('308', '37', 'New post was added to topic <em><strong>eh ra2yokom ya gama3a felle 2aloh Dr.Ayman El Khateeb el nah', 'ABCS', '', '2010-07-11 16:55:19');
INSERT INTO `notifications` VALUES ('309', '120', 'New post was added to topic <em><strong>eh ra2yokom ya gama3a felle 2aloh Dr.Ayman El Khateeb el nah', 'ABCS', '', '2010-07-11 16:55:19');
INSERT INTO `notifications` VALUES ('310', '205', 'New post was added to topic <em><strong>eh ra2yokom ya gama3a felle 2aloh Dr.Ayman El Khateeb el nah', 'ABCS', '', '2010-07-11 16:55:19');
INSERT INTO `notifications` VALUES ('311', '261', 'New post was added to topic <em><strong>eh ra2yokom ya gama3a felle 2aloh Dr.Ayman El Khateeb el nah', 'ABCS', '', '2010-07-11 16:55:19');
INSERT INTO `notifications` VALUES ('312', '174', 'New post was added to topic <em><strong>eh ra2yokom ya gama3a felle 2aloh Dr.Ayman El Khateeb el nah', 'ABCS', '', '2010-07-11 16:55:19');
INSERT INTO `notifications` VALUES ('313', '38', 'New post was added to topic lectures table', 'ABCS', '', '2010-07-13 06:47:36');
INSERT INTO `notifications` VALUES ('314', '37', 'New post was added to topic samir ', 'ABCS', '', '2010-07-13 11:32:39');
INSERT INTO `notifications` VALUES ('315', '64', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-07-13 23:42:48');
INSERT INTO `notifications` VALUES ('316', '63', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-07-13 23:42:48');
INSERT INTO `notifications` VALUES ('317', '123', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-07-13 23:42:48');
INSERT INTO `notifications` VALUES ('318', '37', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-07-13 23:42:48');
INSERT INTO `notifications` VALUES ('319', '64', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-07-13 23:59:27');
INSERT INTO `notifications` VALUES ('320', '63', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-07-13 23:59:27');
INSERT INTO `notifications` VALUES ('321', '123', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-07-13 23:59:27');
INSERT INTO `notifications` VALUES ('322', '37', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-07-13 23:59:27');
INSERT INTO `notifications` VALUES ('323', '64', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-07-13 23:59:40');
INSERT INTO `notifications` VALUES ('324', '63', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-07-13 23:59:40');
INSERT INTO `notifications` VALUES ('325', '123', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-07-13 23:59:40');
INSERT INTO `notifications` VALUES ('326', '37', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-07-13 23:59:40');
INSERT INTO `notifications` VALUES ('327', '377', 'New post was added to topic Question Topic', 'ABCS', '', '2010-07-14 20:37:30');
INSERT INTO `notifications` VALUES ('328', '377', 'New post was added to topic Question Topic', 'ABCS', '', '2010-07-14 20:45:33');
INSERT INTO `notifications` VALUES ('329', '377', 'New post was added to topic Question Topic', 'ABCS', '', '2010-07-14 20:49:15');
INSERT INTO `notifications` VALUES ('330', '37', 'New post was added to topic Question Topic', 'ABCS', '', '2010-07-14 20:49:15');
INSERT INTO `notifications` VALUES ('331', '377', 'New post was added to topic Question Topic', 'ABCS', '', '2010-07-14 20:49:45');
INSERT INTO `notifications` VALUES ('332', '37', 'New post was added to topic Question Topic', 'ABCS', '', '2010-07-14 20:49:45');
INSERT INTO `notifications` VALUES ('333', '377', 'New post was added to topic Question Topic', 'ABCS', '', '2010-07-15 12:03:14');
INSERT INTO `notifications` VALUES ('334', '377', 'New post was added to topic Question Topic', 'ABCS', '', '2010-07-15 13:08:14');
INSERT INTO `notifications` VALUES ('335', '37', 'New post was added to topic Question Topic', 'ABCS', '', '2010-07-15 13:08:14');
INSERT INTO `notifications` VALUES ('336', '377', 'New post was added to topic Question Topic', 'ABCS', '', '2010-07-15 13:08:32');
INSERT INTO `notifications` VALUES ('337', '37', 'New post was added to topic Question Topic', 'ABCS', '', '2010-07-15 13:08:32');
INSERT INTO `notifications` VALUES ('338', '377', 'New post was added to topic Question Topic', 'ABCS', '', '2010-07-15 13:13:58');
INSERT INTO `notifications` VALUES ('339', '37', 'New post was added to topic Question Topic', 'ABCS', '', '2010-07-15 13:13:58');
INSERT INTO `notifications` VALUES ('340', '37', 'New post was added to topic Question Topic', 'ABCS', '', '2010-07-15 16:27:52');
INSERT INTO `notifications` VALUES ('341', '377', 'New post was added to topic Question Topic', 'ABCS', '', '2010-07-15 21:04:22');
INSERT INTO `notifications` VALUES ('342', '37', 'New post was added to topic Question Topic', 'ABCS', '', '2010-07-15 21:04:22');
INSERT INTO `notifications` VALUES ('343', '37', 'New post was added to topic samir', 'ABCS', '', '2010-07-16 00:06:22');
INSERT INTO `notifications` VALUES ('344', '37', 'New post was added to topic samir', 'ABCS', '', '2010-07-16 00:08:07');
INSERT INTO `notifications` VALUES ('345', '64', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-07-16 00:34:22');
INSERT INTO `notifications` VALUES ('346', '63', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-07-16 00:34:22');
INSERT INTO `notifications` VALUES ('347', '123', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-07-16 00:34:22');
INSERT INTO `notifications` VALUES ('348', '37', 'New post was added to topic Discussion Topic', 'ABCS', '', '2010-07-16 00:34:22');
INSERT INTO `notifications` VALUES ('349', '37', 'New post was added to topic samir ', 'ABCS', '', '2010-07-16 05:54:25');
INSERT INTO `notifications` VALUES ('350', '37', 'New post was added to topic samir ', 'ABCS', '', '2010-07-16 05:54:37');
INSERT INTO `notifications` VALUES ('351', '37', 'New post was added to topic samir ', 'ABCS', '', '2010-07-16 06:03:42');
INSERT INTO `notifications` VALUES ('352', '37', 'New post was added to topic samir ', 'ABCS', '', '2010-07-16 06:03:52');
INSERT INTO `notifications` VALUES ('353', '37', 'New post was added to topic samir ', 'ABCS', '', '2010-07-16 06:04:01');
INSERT INTO `notifications` VALUES ('354', '37', 'New post was added to topic samir ', 'ABCS', '', '2010-07-16 06:04:37');
INSERT INTO `notifications` VALUES ('355', '37', 'New post was added to topic samir ', 'ABCS', '', '2010-07-16 06:05:51');
INSERT INTO `notifications` VALUES ('356', '37', 'New post was added to topic samir ', 'ABCS', '', '2010-07-16 06:23:37');
INSERT INTO `notifications` VALUES ('357', '37', 'New post was added to topic Assignemnt 1', 'ABCS', '', '2010-07-16 08:21:50');
INSERT INTO `notifications` VALUES ('358', '37', 'New post was added to topic new ass', 'ABCS', '', '2010-07-16 08:27:33');
INSERT INTO `notifications` VALUES ('359', '37', 'New post was added to topic new ass in physics', 'ABCS', '', '2010-07-16 08:35:36');
INSERT INTO `notifications` VALUES ('360', '37', 'New post was added to topic test new', 'ABCS', '', '2010-07-16 09:27:11');
INSERT INTO `notifications` VALUES ('361', '37', 'New post was added to topic a5iran isA', 'ABCS', '', '2010-07-16 09:28:08');
INSERT INTO `notifications` VALUES ('362', '37', 'New post was added to topic we dah eih nzamo?', 'ABCS', '', '2010-07-16 09:30:17');
INSERT INTO `notifications` VALUES ('363', '37', 'New post was added to topic fe error tany?', 'ABCS', '', '2010-07-16 09:31:34');
INSERT INTO `notifications` VALUES ('364', '37', 'New post was added to topic ha feh tany?', 'ABCS', '', '2010-07-16 09:35:33');
INSERT INTO `notifications` VALUES ('365', '37', 'New post was added to topic ya rab!', 'ABCS', '', '2010-07-16 09:38:39');
INSERT INTO `notifications` VALUES ('366', '37', 'New post was added to topic ay 7ahsdfds', 'ABCS', '', '2010-07-16 09:47:15');
INSERT INTO `notifications` VALUES ('367', '37', 'New post was added to topic fdsgfsdgsd', 'ABCS', '', '2010-07-16 09:47:56');
INSERT INTO `notifications` VALUES ('368', '37', 'New post was added to topic samir', 'ABCS', '', '2010-07-17 04:13:22');

-- ----------------------------
-- Table structure for `poll`
-- ----------------------------
DROP TABLE IF EXISTS `poll`;
CREATE TABLE `poll` (
  `ID` int(10) NOT NULL auto_increment,
  `Content` varchar(50) NOT NULL,
  `GroupID` int(10) NOT NULL,
  `Status` int(1) NOT NULL,
  PRIMARY KEY  (`ID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of poll
-- ----------------------------
INSERT INTO `poll` VALUES ('1', 'New poll', '1', '0');
INSERT INTO `poll` VALUES ('2', 'q1', '68', '0');
INSERT INTO `poll` VALUES ('3', 'FFFFFFF', '68', '0');
INSERT INTO `poll` VALUES ('4', 'Poll 1', '68', '1');
INSERT INTO `poll` VALUES ('5', 'rrrr', '68', '0');
INSERT INTO `poll` VALUES ('6', 'Q1', '68', '0');
INSERT INTO `poll` VALUES ('7', 'hi', '68', '0');
INSERT INTO `poll` VALUES ('8', 'Do you love Schoolen?', '70', '0');
INSERT INTO `poll` VALUES ('9', 'Do you need Social newsfeed?', '70', '1');

-- ----------------------------
-- Table structure for `post_attach`
-- ----------------------------
DROP TABLE IF EXISTS `post_attach`;
CREATE TABLE `post_attach` (
  `postID` int(11) NOT NULL,
  `attachID` int(11) NOT NULL,
  PRIMARY KEY  (`postID`,`attachID`),
  KEY `attachID` (`attachID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of post_attach
-- ----------------------------
INSERT INTO `post_attach` VALUES ('216', '68');

-- ----------------------------
-- Table structure for `post_info`
-- ----------------------------
DROP TABLE IF EXISTS `post_info`;
CREATE TABLE `post_info` (
  `ID` int(11) NOT NULL auto_increment,
  `content` text NOT NULL,
  `userID` int(11) default NULL,
  `topicID` int(11) NOT NULL,
  `TimeStamp` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`ID`),
  KEY `userID` (`userID`),
  KEY `topicID` (`topicID`)
) ENGINE=MyISAM AUTO_INCREMENT=225 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of post_info
-- ----------------------------
INSERT INTO `post_info` VALUES ('83', '<p>I love CISCO</p>', '39', '56', '2010-03-10 14:31:18');
INSERT INTO `post_info` VALUES ('84', '<p>Testing the testy test :D</p>', '38', '58', '2010-03-10 15:01:20');
INSERT INTO `post_info` VALUES ('87', '<p>TEsting</p>', '38', '66', '2010-03-10 15:04:47');
INSERT INTO `post_info` VALUES ('88', '<p>test</p>', '47', '70', '2010-03-10 15:38:10');
INSERT INTO `post_info` VALUES ('89', '<p>I hate communication department :(</p>', '47', '70', '2010-03-10 15:38:41');
INSERT INTO `post_info` VALUES ('90', '<p><img title=\"Cry\" src=\"../../../js/tiny_mce/plugins/emotions/img/smiley-cry.gif\" border=\"0\" alt=\"Cry\"> <em><strong>test</strong></em></p>', '47', '70', '2010-03-10 15:39:13');
INSERT INTO `post_info` VALUES ('91', '<p>test, 3ashan ashof el profile pic shaklaha 3amel ezay</p>', '37', '70', '2010-03-10 20:22:30');
INSERT INTO `post_info` VALUES ('92', '<p>hiiiii my friends</p>', '68', '60', '2010-03-10 22:56:58');
INSERT INTO `post_info` VALUES ('97', '<p>hey :P</p>', '73', '59', '2010-03-11 05:34:37');
INSERT INTO `post_info` VALUES ('98', '<p><img title=\"Kiss\" src=\"../../../../../js/tiny_mce/plugins/emotions/img/smiley-kiss.gif\" border=\"0\" alt=\"Kiss\"><strong>::D</strong></p>\n<p><strong><br></strong></p>', '73', '59', '2010-03-11 05:35:34');
INSERT INTO `post_info` VALUES ('99', '<p>2lak CCNA maloh course el networks beta3 7osam fahmy<img title=\"Tongue out\" src=\"../../../js/tiny_mce/plugins/emotions/img/smiley-tongue-out.gif\" border=\"0\" alt=\"Tongue out\"></p>', '73', '57', '2010-03-11 05:36:52');
INSERT INTO `post_info` VALUES ('100', '<p>ya 3am cisco 7ossam mashy ana rady beeeh enma course control leeeeh :D</p>', '39', '57', '2010-03-11 05:47:40');
INSERT INTO `post_info` VALUES ('101', '<p>ana shaifa dr ayman ma5ltsh en eli mesh 3alena f el pharma 3ady lma ysar3 feh bs yaret b2a el examz maigesh feh 7aga bl tfsel 3la eli et2al bsor3a da w zai ma 2al yegi ys2l bs 3la el manhg mesh aktr</p>', '64', '77', '2010-03-11 11:08:36');
INSERT INTO `post_info` VALUES ('102', '<p>Howa f3lan mesh bys2alo fi el 7agat di, bs laaaaaaaaaazem t3rfha 3shan tefham w t3raf tgawb 3la el drugs<img title=\"Smile\" src=\"../../../../../js/tiny_mce/plugins/emotions/img/smiley-smile.gif\" border=\"0\" alt=\"Smile\"></p>', '37', '85', '2010-03-11 11:22:35');
INSERT INTO `post_info` VALUES ('103', '<p style=\"text-align: center;\">ana 3an nefsy b2et far7ana w metday2a mn kalamo</p>\n<p style=\"text-align: center;\">far7ana l 2n fe3lan dof3tna ra7t w eshtaket w kona egabyeen</p>\n<p style=\"text-align: center;\">w tab3an etday2t akter mn nezam kolytna el to7fa hwa kalam dr.ayman sa7 enena mn3rfsh 7aga fe ay 7aga 3n bio aw physiology w howa kter 5ero be7awel yfhmna b tare2a sare3a 3ashan nrbot kol 7aga el 3eeb mesh 3ala dr.ayman</p>\n<p style=\"text-align: center;\">el oshkela fi nezam 3andena ye3ny kan bdl el cognosy&nbsp; wel analytical 4 terms kona nebtedy bio w physiology 3ashan lma na5od pharma teb2a wa5da 7a2ha</p>', '120', '85', '2010-03-11 11:23:24');
INSERT INTO `post_info` VALUES ('105', '<p><img src=\"http://www.colorado.edu/intphys/Class/IPHY3730/image/figure6-15.jpg\" alt=\"\"></p>', '63', '77', '2010-03-11 11:56:25');
INSERT INTO `post_info` VALUES ('108', '<p>doctor presentations are now available&nbsp;</p>', '162', '60', '2010-03-11 12:30:20');
INSERT INTO `post_info` VALUES ('109', '<p>Next week doctor will give a group section&nbsp;<img title=\"Cry\" src=\"../../../js/tiny_mce/plugins/emotions/img/smiley-cry.gif\" border=\"0\" alt=\"Cry\"></p>', '166', '61', '2010-03-11 12:41:27');
INSERT INTO `post_info` VALUES ('110', '<p>Networks is a subject</p>', '39', '87', '2010-03-11 13:32:33');
INSERT INTO `post_info` VALUES ('112', '<p>be5</p>', '182', '80', '2010-03-11 14:25:39');
INSERT INTO `post_info` VALUES ('113', '<p>be5 2</p>', '182', '80', '2010-03-11 14:28:02');
INSERT INTO `post_info` VALUES ('116', '<p>nice pic dr.mohamed thanx</p>', '123', '77', '2010-03-12 02:24:15');
INSERT INTO `post_info` VALUES ('117', '<p>hwa enta to2sod ay goz2ya ya solom?</p>', '205', '85', '2010-03-12 05:58:45');
INSERT INTO `post_info` VALUES ('119', '<p dir=\"rtl\">Ø¨Ù†Ø¬Ø±Ø¨ Ø§Ø­Ù†Ø§ ÙƒÙ…Ø§Ù† with Ø¹Ù…Ùˆ Ù‡Ø§Ù†ÙŠ</p>\n<p style=\"text-align: left;\" dir=\"rtl\">bngrab Ø§Ø­Ù†Ø§ kaman with 3amo hany</p>', '37', '70', '2010-03-12 16:10:16');
INSERT INTO `post_info` VALUES ('121', '<p dir=\"ltr\">Ø¨Ù†Ø¬Ø±Ø¨ Ø§Ø­Ù†Ø§ kman Ù…Ø¹ Ø¹Ù…Ùˆ Ù‡Ø§Ù†ÙŠ</p>\n<p dir=\"ltr\">bngrab Ø§Ø­Ù†Ø§ kaman ma3 3amo hany</p>', '37', '70', '2010-03-12 16:11:17');
INSERT INTO `post_info` VALUES ('122', '<p>Ø³Ù„Ø§Ù… Ø¹Ù„ÙŠÙƒÙ…  Ù‡Ù„ Ø§Ù„Ø¯ÙƒØªÙˆØ±Ø© Ù†Ø§Ø¬Ø¯Ø© Ø£Ø®Ø± Ù…Ø­Ø§Ø¶Ø±Ø© Ù„ÙŠÙ‡Ø§ ÙŠÙˆÙ… Ø§Ù„Ø³Ø¨Øª Ù…Ù† Ù‡Ø°Ø§ Ø§Ù„Ø£Ø³Ø¨ÙˆØ¹ØŸ</p>\n<p>Ø£Ù… Ù…ØªØ¨Ù‚Ù‰ Ù„Ù‡Ø§ Ù…Ø­Ø§Ø¶Ø±Ø§Øª Ø£Ø®Ø±Ù‰ØŸ</p>', '258', '89', '2010-03-12 16:26:16');
INSERT INTO `post_info` VALUES ('123', '<p>Ø³Ù„Ø§Ù… Ø¹Ù„ÙŠÙƒÙ…</p>\n<p>&nbsp;</p>\n<p>Ø§Ù„Ù‚Ø³Ù… Ø¨ÙŠØ¬Ø±Ù‰ ÙÙ‰ Ø¯Ù…Ùƒ ÙŠØ§ Ù‡Ø§Ù†Ù‰</p>\n<p>&nbsp;</p>\n<p>Ù„Ùˆ Ù†Ø¸Ø±Øª Ø§Ù„Ù‰ Ø§ÙˆÙ„ ØµÙØ­Ø© Ø§Ù†Øª Ø¨Ù†ÙŠØªÙ‡Ø§ Ø³ØªØ¬Ø¯Ù‡Ø§</p>\n<p>VLSI</p>\n<p>:D&nbsp; Ùˆ Ù„ÙŠØ³Øª Programming or Web Devlopment</p>', '258', '70', '2010-03-12 16:43:48');
INSERT INTO `post_info` VALUES ('124', '<p>Asllan el Dr. Ayman kan wa5ed wad3yet el attack , ya3nii aytkallem aytkallem w 7atta masama7sh en 7ad yrood 3alla kallamo ,w b3den el kallam dh a7na ma5adnahoosh deh wallahy ma3takedsh enaha mshkeletna w b3den ya3nii eh ana d5altelkom el term elly fat w el mafrod tet3awedoo 3alla nezamo , ma howa nezaam 3\'allaat asllaan , leh net3awed 3alleeh , howa bytkallem zay maykoon byt5ane2 m3anna w ento 3omrokoom ma hat2ollo 3alla Dr. kowayes la2 han2ool law howa byshraa7 3ashan nefhaam , laken warra ba3doo keda nefhaam ezaai , fen elCommunication skill el Dr. 3azza aytkallemet 3alleha ... hooma b2a el mahman aytkallemna men hena le Bokra msh hay3\'ayaroo 7agaa ..</p>', '261', '85', '2010-03-12 17:38:27');
INSERT INTO `post_info` VALUES ('128', '<p>last lecture was on saturday</p>\n<p>no more Dr Nagda :D</p>', '303', '89', '2010-03-14 10:03:08');
INSERT INTO `post_info` VALUES ('129', '<p>last year slides uploaded :D</p>', '90', '60', '2010-03-16 04:25:39');
INSERT INTO `post_info` VALUES ('130', '<p>Thanks Yusuf Basha :)</p>', '38', '60', '2010-03-16 06:59:52');
INSERT INTO `post_info` VALUES ('131', '<p>salam 3alekom</p>\n<p>nad3okom lmoqawamet el cse leader f ee2010 w naz3oh mn manseboh</p>\n<p>wadomtom</p>\n<p>w domti, gebnet elmasryeen</p>', '101', '60', '2010-03-17 03:07:59');
INSERT INTO `post_info` VALUES ('132', '<p>Ø§Ù„Ø¹Ø±Ø¨ÙŠ Ø´ØºØ§Ù„</p>', '101', '60', '2010-03-17 03:08:18');
INSERT INTO `post_info` VALUES ('133', '<p dir=\"rtl\">Ø§Ù‡ sha3\'al</p>', '101', '60', '2010-03-17 03:09:03');
INSERT INTO `post_info` VALUES ('134', '<p><img title=\"Cool\" src=\"../../../js/tiny_mce/plugins/emotions/img/smiley-cool.gif\" border=\"0\" alt=\"Cool\"></p>', '101', '60', '2010-03-17 08:26:31');
INSERT INTO `post_info` VALUES ('137', '<p>howa 2al eh ya eslam 3shan ana m3rfsh elly 7asal</p>', '174', '85', '2010-03-19 09:29:51');
INSERT INTO `post_info` VALUES ('138', '<p>I am testing this chapter C++ introduction</p>\n<p>&nbsp;</p>', '377', '102', '2010-04-20 14:34:09');
INSERT INTO `post_info` VALUES ('139', '<p>fcndkjsndfks</p>', '276', '66', '2010-05-02 03:35:36');
INSERT INTO `post_info` VALUES ('142', '<p>Ask any thing in dr as3ad part</p>', '391', '106', '2010-05-20 11:01:08');
INSERT INTO `post_info` VALUES ('143', '<p>Any help in Optimal? :D</p>', '37', '62', '2010-05-20 11:03:37');
INSERT INTO `post_info` VALUES ('144', '<p>Ask any thing in dr hussen part</p>', '391', '107', '2010-05-20 11:04:39');
INSERT INTO `post_info` VALUES ('145', '<p>Ask any thing in dr 3abdel sattar part</p>', '391', '108', '2010-05-20 11:05:20');
INSERT INTO `post_info` VALUES ('146', '<p>Ask any thing in dr dia2 part</p>', '391', '109', '2010-05-20 11:05:37');
INSERT INTO `post_info` VALUES ('149', '<p>madda bayna mn awelha ,,,, rabena yostoorrr :S:S:S:S&nbsp;</p>', '353', '113', '2010-05-20 12:54:15');
INSERT INTO `post_info` VALUES ('150', '<p>123</p>', '353', '113', '2010-05-20 12:54:32');
INSERT INTO `post_info` VALUES ('151', '<p>gfgfgfgf</p>', '404', '114', '2010-05-27 02:35:31');
INSERT INTO `post_info` VALUES ('152', '<p>gfgfgfgf</p>', '404', '114', '2010-05-27 02:35:31');
INSERT INTO `post_info` VALUES ('153', '<p>Kda</p>', '38', '116', '2010-05-27 23:08:07');
INSERT INTO `post_info` VALUES ('154', '<p>\nanything\n</p>', '37', '77', '2010-07-13 02:11:28');
INSERT INTO `post_info` VALUES ('155', '<p>I don\\\'t agree</p>\n<p>:D</p>', '37', '116', '2010-06-20 11:56:36');
INSERT INTO `post_info` VALUES ('157', '<p>hello world</p>', '37', '120', '2010-06-26 16:57:49');
INSERT INTO `post_info` VALUES ('159', '<p>nshof keda el post 3amel eih</p>', '37', '121', '2010-06-28 13:17:40');
INSERT INTO `post_info` VALUES ('161', '<p>wady kman wa7ed</p>', '37', '121', '2010-07-07 17:48:22');
INSERT INTO `post_info` VALUES ('162', '<p>nshof tany</p>\r\n<p>&nbsp;</p>', '37', '121', '2010-07-07 17:54:12');
INSERT INTO `post_info` VALUES ('164', '<p>hello AnitAjax</p>', '37', '121', '2010-07-07 17:58:22');
INSERT INTO `post_info` VALUES ('166', '<p>new answer</p>', '37', '85', '2010-07-08 03:15:57');
INSERT INTO `post_info` VALUES ('175', '<p>hello he new unrated  post</p>', '174', '85', '2010-07-11 01:19:53');
INSERT INTO `post_info` VALUES ('178', '<p>sdfdsfsdf</p>', '37', '85', '2010-07-11 16:55:19');
INSERT INTO `post_info` VALUES ('179', 'enta btharag ya Negm :S', '38', '124', '2010-07-13 06:47:36');
INSERT INTO `post_info` VALUES ('180', '<p>hello</p>', '37', '121', '2010-07-13 11:32:39');
INSERT INTO `post_info` VALUES ('181', '<p>\r\n<object style=\\\"width: 300px; height: 300px;\\\" width=\\\"300\\\" height=\\\"300\\\" data=\\\"http://www.youtube.com/v/rktikHtTxXU\\\" type=\\\"application/x-shockwave-flash\\\">\r\n<param name=\\\"src\\\" value=\\\"http://www.youtube.com/v/rktikHtTxXU\\\">\r\n</object>\r\n</p>', '37', '77', '2010-07-13 23:42:47');
INSERT INTO `post_info` VALUES ('182', '<p>\r\n<object width=\\\"425\\\" height=\\\"350\\\" data=\\\"http://www.youtube.com/v/rktikHtTxXU\\\" type=\\\"application/x-shockwave-flash\\\">\r\n<param name=\\\"src\\\" value=\\\"http://www.youtube.com/v/rktikHtTxXU\\\">\r\n</object>\r\n</p>', '37', '77', '2010-07-13 23:59:27');
INSERT INTO `post_info` VALUES ('184', '<p>answering myself</p>', '377', '127', '2010-07-14 20:37:30');
INSERT INTO `post_info` VALUES ('185', '<p>long long long long long long long long long long long longlong long longlong long longlong long longlong long longlong long longlong long longlong long longlong long longlong long longlong long longlong long longlong long longlong long longlong long longlong long longlong long longlong long longlong long longlong long longlong long longlong long long long long long long long long long long long answer!!!</p>\n<p>long long long</p>\n<p>long long long</p>', '377', '127', '2010-07-14 20:45:32');
INSERT INTO `post_info` VALUES ('186', '<p>short edited</p>', '37', '127', '2010-07-15 15:08:06');
INSERT INTO `post_info` VALUES ('187', '<p>short</p>', '377', '127', '2010-07-14 20:49:45');
INSERT INTO `post_info` VALUES ('188', '<p>my answer as instructor:</p>', '377', '126', '2010-07-15 12:03:14');
INSERT INTO `post_info` VALUES ('189', '<p>new answer</p>', '37', '126', '2010-07-15 13:08:14');
INSERT INTO `post_info` VALUES ('190', '<p>another one</p>', '37', '126', '2010-07-15 13:08:32');
INSERT INTO `post_info` VALUES ('191', '<p>mesh ana instructor wala eih?</p>\n<p>fen ba2a?</p>', '377', '126', '2010-07-15 13:13:58');
INSERT INTO `post_info` VALUES ('192', '<p>new answer</p>', '37', '128', '2010-07-15 16:27:52');
INSERT INTO `post_info` VALUES ('193', '<p>try new answer</p>', '377', '127', '2010-07-15 21:04:22');
INSERT INTO `post_info` VALUES ('194', '<p>ah jkalam gdeeed</p>', '37', '120', '2010-07-16 00:06:22');
INSERT INTO `post_info` VALUES ('195', '<p>wady&nbsp; wa7ed</p>', '37', '120', '2010-07-16 00:08:07');
INSERT INTO `post_info` VALUES ('196', '<p><img src=\\\"http://www.colorado.edu/intphys/Class/IPHY3730/image/figure6-15.jpg\\\" alt=\\\"\\\" width=\\\"467\\\" height=\\\"425\\\"></p>', '37', '77', '2010-07-16 00:34:22');
INSERT INTO `post_info` VALUES ('197', '<p>1</p>', '37', '121', '2010-07-16 05:54:25');
INSERT INTO `post_info` VALUES ('198', '<p>2</p>', '37', '121', '2010-07-16 05:54:37');
INSERT INTO `post_info` VALUES ('199', '<p>3</p>', '37', '121', '2010-07-16 06:03:42');
INSERT INTO `post_info` VALUES ('200', '<p>4</p>', '37', '121', '2010-07-16 06:03:51');
INSERT INTO `post_info` VALUES ('201', '<p>5</p>', '37', '121', '2010-07-16 06:04:01');
INSERT INTO `post_info` VALUES ('202', '<p>6</p>', '37', '121', '2010-07-16 06:04:37');
INSERT INTO `post_info` VALUES ('203', '<p>6</p>', '37', '121', '2010-07-16 06:05:51');
INSERT INTO `post_info` VALUES ('204', '<p>7</p>', '37', '121', '2010-07-16 06:23:37');
INSERT INTO `post_info` VALUES ('206', 'anything', '37', '131', '2010-07-16 08:27:33');
INSERT INTO `post_info` VALUES ('207', 'any desc', '37', '132', '2010-07-16 08:35:36');
INSERT INTO `post_info` VALUES ('216', '<p>ay kalam here</p>', '37', '120', '2010-07-17 04:13:21');
INSERT INTO `post_info` VALUES ('217', '<p>testing social news</p>', '37', '85', '2010-08-01 02:40:36');
INSERT INTO `post_info` VALUES ('218', '<p>nshof answer keda</p>', '42', '134', '2010-09-18 14:22:51');
INSERT INTO `post_info` VALUES ('219', '<p>nsho answer keda</p>', '37', '134', '2010-09-18 14:23:18');
INSERT INTO `post_info` VALUES ('220', '<p>we de kaman keda</p>', '37', '134', '2010-09-18 14:24:11');
INSERT INTO `post_info` VALUES ('221', '<p>what the hell mesh fahem?</p>', '37', '134', '2010-09-18 14:29:46');
INSERT INTO `post_info` VALUES ('222', '<p>refrefrefg</p>', '42', '134', '2010-09-18 14:34:22');
INSERT INTO `post_info` VALUES ('223', '<p>refrecerwcc vrtvt4</p>', '37', '134', '2010-09-18 14:34:59');
INSERT INTO `post_info` VALUES ('224', '<p>rwerfewfer refrfr</p>', '42', '134', '2010-09-18 17:35:55');

-- ----------------------------
-- Table structure for `post_rating`
-- ----------------------------
DROP TABLE IF EXISTS `post_rating`;
CREATE TABLE `post_rating` (
  `postID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  PRIMARY KEY  (`postID`,`userID`),
  KEY `userID` (`userID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of post_rating
-- ----------------------------
INSERT INTO `post_rating` VALUES ('102', '377', '1');
INSERT INTO `post_rating` VALUES ('103', '37', '1');
INSERT INTO `post_rating` VALUES ('103', '377', '1');
INSERT INTO `post_rating` VALUES ('117', '37', '1');
INSERT INTO `post_rating` VALUES ('124', '37', '1');
INSERT INTO `post_rating` VALUES ('137', '37', '1');
INSERT INTO `post_rating` VALUES ('175', '37', '-1');
INSERT INTO `post_rating` VALUES ('178', '377', '-1');
INSERT INTO `post_rating` VALUES ('184', '37', '1');
INSERT INTO `post_rating` VALUES ('185', '37', '1');
INSERT INTO `post_rating` VALUES ('186', '377', '1');
INSERT INTO `post_rating` VALUES ('187', '37', '1');
INSERT INTO `post_rating` VALUES ('189', '377', '1');
INSERT INTO `post_rating` VALUES ('190', '377', '1');
INSERT INTO `post_rating` VALUES ('192', '377', '1');
INSERT INTO `post_rating` VALUES ('218', '37', '1');
INSERT INTO `post_rating` VALUES ('219', '42', '1');
INSERT INTO `post_rating` VALUES ('220', '42', '1');
INSERT INTO `post_rating` VALUES ('221', '42', '1');
INSERT INTO `post_rating` VALUES ('222', '37', '-1');
INSERT INTO `post_rating` VALUES ('223', '42', '-1');

-- ----------------------------
-- Table structure for `questions`
-- ----------------------------
DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `ID` int(11) NOT NULL auto_increment,
  `InstractorID` int(11) NOT NULL,
  `Question` longtext NOT NULL,
  PRIMARY KEY  (`ID`),
  KEY `InstractorID` (`InstractorID`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of questions
-- ----------------------------
INSERT INTO `questions` VALUES ('3', '3', 'Q2');
INSERT INTO `questions` VALUES ('4', '3', 'Q1');
INSERT INTO `questions` VALUES ('5', '3', 'Q1');
INSERT INTO `questions` VALUES ('6', '3', 'Q2');
INSERT INTO `questions` VALUES ('7', '3', 'Q1');
INSERT INTO `questions` VALUES ('8', '3', 'Q2');
INSERT INTO `questions` VALUES ('9', '3', 'Question 1');
INSERT INTO `questions` VALUES ('10', '3', 'Question 2');
INSERT INTO `questions` VALUES ('11', '3', 'Question 1');
INSERT INTO `questions` VALUES ('12', '3', 'Question 2');
INSERT INTO `questions` VALUES ('13', '3', 'Question 1');
INSERT INTO `questions` VALUES ('14', '3', 'Question 2');
INSERT INTO `questions` VALUES ('15', '3', 'Question 1');
INSERT INTO `questions` VALUES ('16', '3', 'Question 2');
INSERT INTO `questions` VALUES ('17', '3', 'Question 1');
INSERT INTO `questions` VALUES ('18', '3', 'Question 2');
INSERT INTO `questions` VALUES ('19', '3', 'Ques 1');
INSERT INTO `questions` VALUES ('21', '3', 'Ques 3');
INSERT INTO `questions` VALUES ('22', '3', 'Question 1');
INSERT INTO `questions` VALUES ('23', '37', 'what is the dvice used to connect to networks?');

-- ----------------------------
-- Table structure for `questionsoptions`
-- ----------------------------
DROP TABLE IF EXISTS `questionsoptions`;
CREATE TABLE `questionsoptions` (
  `ID` int(11) NOT NULL auto_increment,
  `QuestionID` int(11) NOT NULL,
  `Option` text NOT NULL,
  `IsModelAnswer` int(11) NOT NULL,
  PRIMARY KEY  (`ID`),
  KEY `QuestionID` (`QuestionID`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of questionsoptions
-- ----------------------------
INSERT INTO `questionsoptions` VALUES ('2', '7', '1', '1');
INSERT INTO `questionsoptions` VALUES ('3', '7', '2', '1');
INSERT INTO `questionsoptions` VALUES ('4', '7', '3', '1');
INSERT INTO `questionsoptions` VALUES ('5', '8', '1', '1');
INSERT INTO `questionsoptions` VALUES ('6', '8', '2', '1');
INSERT INTO `questionsoptions` VALUES ('7', '9', 'Choice 1', '1');
INSERT INTO `questionsoptions` VALUES ('8', '9', 'Choice 2', '1');
INSERT INTO `questionsoptions` VALUES ('9', '9', 'Choice 3', '1');
INSERT INTO `questionsoptions` VALUES ('10', '10', 'Choice 1', '1');
INSERT INTO `questionsoptions` VALUES ('11', '10', 'Choice 2', '1');
INSERT INTO `questionsoptions` VALUES ('12', '10', 'Choice 3', '1');
INSERT INTO `questionsoptions` VALUES ('13', '10', 'Choice 4', '1');
INSERT INTO `questionsoptions` VALUES ('14', '11', 'Choice 1', '1');
INSERT INTO `questionsoptions` VALUES ('15', '11', 'Choice 2', '1');
INSERT INTO `questionsoptions` VALUES ('16', '11', 'Choice 3', '1');
INSERT INTO `questionsoptions` VALUES ('17', '12', 'Choice 1', '1');
INSERT INTO `questionsoptions` VALUES ('18', '12', 'Choice 2', '1');
INSERT INTO `questionsoptions` VALUES ('19', '12', 'Choice 3', '1');
INSERT INTO `questionsoptions` VALUES ('20', '12', 'Choice 4', '1');
INSERT INTO `questionsoptions` VALUES ('21', '13', 'Choice 1', '0');
INSERT INTO `questionsoptions` VALUES ('22', '13', 'Choice 2', '0');
INSERT INTO `questionsoptions` VALUES ('23', '13', 'Choice 3', '1');
INSERT INTO `questionsoptions` VALUES ('24', '14', 'Choice 1', '0');
INSERT INTO `questionsoptions` VALUES ('25', '14', 'Choice 2', '0');
INSERT INTO `questionsoptions` VALUES ('26', '14', 'Choice 3', '0');
INSERT INTO `questionsoptions` VALUES ('27', '14', 'Choice 4', '1');
INSERT INTO `questionsoptions` VALUES ('28', '15', 'Choice 1', '0');
INSERT INTO `questionsoptions` VALUES ('29', '15', 'Choice 2', '0');
INSERT INTO `questionsoptions` VALUES ('30', '15', 'Choice 3', '1');
INSERT INTO `questionsoptions` VALUES ('31', '16', 'Choice 1', '0');
INSERT INTO `questionsoptions` VALUES ('32', '16', 'Choice 2', '0');
INSERT INTO `questionsoptions` VALUES ('33', '16', 'Choice 3', '0');
INSERT INTO `questionsoptions` VALUES ('34', '16', 'Choice 4', '1');
INSERT INTO `questionsoptions` VALUES ('35', '17', 'Choice 1', '0');
INSERT INTO `questionsoptions` VALUES ('36', '17', 'Choice 2', '0');
INSERT INTO `questionsoptions` VALUES ('37', '17', 'Choice 3', '1');
INSERT INTO `questionsoptions` VALUES ('38', '18', 'Choice 1', '0');
INSERT INTO `questionsoptions` VALUES ('39', '18', 'Choice 2', '0');
INSERT INTO `questionsoptions` VALUES ('40', '18', 'Choice 3', '0');
INSERT INTO `questionsoptions` VALUES ('41', '18', 'Choice 4', '1');
INSERT INTO `questionsoptions` VALUES ('42', '19', 'Opt 1', '1');
INSERT INTO `questionsoptions` VALUES ('43', '19', 'Opt 2', '0');
INSERT INTO `questionsoptions` VALUES ('46', '21', 'Opt 1', '0');
INSERT INTO `questionsoptions` VALUES ('47', '21', 'Opt 2', '1');
INSERT INTO `questionsoptions` VALUES ('48', '22', 'Opt 1', '1');
INSERT INTO `questionsoptions` VALUES ('49', '22', 'Opt 2', '0');
INSERT INTO `questionsoptions` VALUES ('50', '23', 'router', '0');
INSERT INTO `questionsoptions` VALUES ('51', '23', 'switch', '0');
INSERT INTO `questionsoptions` VALUES ('52', '23', 'hub', '0');
INSERT INTO `questionsoptions` VALUES ('53', '23', 'firewall', '1');

-- ----------------------------
-- Table structure for `quiz`
-- ----------------------------
DROP TABLE IF EXISTS `quiz`;
CREATE TABLE `quiz` (
  `ID` int(11) NOT NULL auto_increment,
  `CourseID` int(11) NOT NULL,
  `InstractorID` int(11) NOT NULL,
  `Title` text NOT NULL,
  `StartDate` text NOT NULL,
  `EndDate` text NOT NULL,
  `Duration` double NOT NULL,
  `Intro` longtext,
  PRIMARY KEY  (`ID`),
  KEY `CourseID` (`CourseID`),
  KEY `InstractorID` (`InstractorID`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quiz
-- ----------------------------
INSERT INTO `quiz` VALUES ('1', '1', '3', 'AI Quiz', '20-7-2010', '22-7-2010', '30', 'Testing');
INSERT INTO `quiz` VALUES ('2', '1', '3', 'N', '11-9-2009', '13-9-2009', '30', null);
INSERT INTO `quiz` VALUES ('3', '1', '3', 'N', '11-9-2009', '13-9-2009', '30', null);
INSERT INTO `quiz` VALUES ('4', '1', '3', 'N', '11-9-2009', '13-9-2009', '30', 'ceckemcenmckjen ckjenckje');
INSERT INTO `quiz` VALUES ('7', '1', '3', 'HHHHH', '22222', '333333333333', '40', 'f;lw,f;ler,lf,;er,;f');
INSERT INTO `quiz` VALUES ('9', '1', '3', 'Final Quiz', '2010-07-06', '2010-07-08', '30', 'Final Test');
INSERT INTO `quiz` VALUES ('10', '1', '3', 'Final Quiz', '2010-07-07', '2010-07-09', '30', 'Test');
INSERT INTO `quiz` VALUES ('11', '1', '3', 'Final Quiz', '2010-07-02', '2010-07-08', '20', 'Testing');
INSERT INTO `quiz` VALUES ('12', '1', '3', 'Testing', '2010-07-01', '2010-07-02', '22', 'DDD');
INSERT INTO `quiz` VALUES ('13', '1', '3', 'Test 1', '2010-07-02', '2010-07-15', '0', '');
INSERT INTO `quiz` VALUES ('14', '2', '3', 'Image Processing Quiz 1', '2010-07-01', '2010-07-02', '30', 'fwdf');
INSERT INTO `quiz` VALUES ('15', '2', '3', 'AI Quiz 1', '2010-07-06', '2010-07-14', '10', 'fdsacfds');
INSERT INTO `quiz` VALUES ('17', '2', '3', 'Optimal Control', '2010-07-07', '2010-07-09', '30', 'DDD');
INSERT INTO `quiz` VALUES ('19', '45', '37', 'cisco intro', '2010-07-01', '2010-07-03', '30', 'ay 7aga');
INSERT INTO `quiz` VALUES ('21', '45', '37', '4234', '2010-07-14', '2010-07-18', '30', 'gfdgsrdge');
INSERT INTO `quiz` VALUES ('22', '45', '37', 'Quiz1', '2010-12-01', '2010-12-11', '20', 'cdfcvfd');

-- ----------------------------
-- Table structure for `quiz_event`
-- ----------------------------
DROP TABLE IF EXISTS `quiz_event`;
CREATE TABLE `quiz_event` (
  `EventID` int(11) NOT NULL,
  `QuizID` int(11) NOT NULL,
  PRIMARY KEY  (`EventID`,`QuizID`),
  KEY `QuizID` (`QuizID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quiz_event
-- ----------------------------
INSERT INTO `quiz_event` VALUES ('1', '22');
INSERT INTO `quiz_event` VALUES ('6', '17');

-- ----------------------------
-- Table structure for `quiz_question`
-- ----------------------------
DROP TABLE IF EXISTS `quiz_question`;
CREATE TABLE `quiz_question` (
  `QuizID` int(11) NOT NULL,
  `QuestionID` int(11) NOT NULL,
  `Grade` int(11) NOT NULL,
  PRIMARY KEY  (`QuizID`,`QuestionID`),
  KEY `QuestionID` (`QuestionID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quiz_question
-- ----------------------------
INSERT INTO `quiz_question` VALUES ('1', '7', '3');
INSERT INTO `quiz_question` VALUES ('1', '8', '5');
INSERT INTO `quiz_question` VALUES ('1', '14', '5');
INSERT INTO `quiz_question` VALUES ('1', '15', '5');
INSERT INTO `quiz_question` VALUES ('1', '16', '5');
INSERT INTO `quiz_question` VALUES ('1', '17', '5');
INSERT INTO `quiz_question` VALUES ('1', '18', '5');
INSERT INTO `quiz_question` VALUES ('21', '23', '0');
INSERT INTO `quiz_question` VALUES ('22', '23', '0');

-- ----------------------------
-- Table structure for `quizanswers`
-- ----------------------------
DROP TABLE IF EXISTS `quizanswers`;
CREATE TABLE `quizanswers` (
  `ID` int(11) NOT NULL auto_increment,
  `QuizID` int(11) NOT NULL,
  `QuestionID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `Answer` int(11) NOT NULL,
  `Grade` double default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=152 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quizanswers
-- ----------------------------
INSERT INTO `quizanswers` VALUES ('145', '1', '7', '3', '4', '3');
INSERT INTO `quizanswers` VALUES ('146', '1', '8', '3', '6', '5');
INSERT INTO `quizanswers` VALUES ('147', '1', '14', '3', '27', '5');
INSERT INTO `quizanswers` VALUES ('148', '1', '15', '3', '30', '5');
INSERT INTO `quizanswers` VALUES ('149', '1', '16', '3', '34', '5');
INSERT INTO `quizanswers` VALUES ('150', '1', '17', '3', '37', '5');
INSERT INTO `quizanswers` VALUES ('151', '1', '18', '3', '41', '5');
INSERT INTO `quizanswers` VALUES ('124', '1', '7', '4', '2', '3');
INSERT INTO `quizanswers` VALUES ('125', '1', '8', '4', '5', '5');
INSERT INTO `quizanswers` VALUES ('126', '1', '14', '4', '27', '1');
INSERT INTO `quizanswers` VALUES ('127', '1', '15', '4', '30', '0');
INSERT INTO `quizanswers` VALUES ('128', '1', '16', '4', '34', '0');
INSERT INTO `quizanswers` VALUES ('129', '1', '17', '4', '37', '0');
INSERT INTO `quizanswers` VALUES ('130', '1', '18', '4', '41', '4');
INSERT INTO `quizanswers` VALUES ('131', '1', '7', '3', '2', '0');
INSERT INTO `quizanswers` VALUES ('132', '1', '8', '3', '6', '0');
INSERT INTO `quizanswers` VALUES ('133', '1', '14', '3', '24', '0');
INSERT INTO `quizanswers` VALUES ('134', '1', '15', '3', '29', '0');
INSERT INTO `quizanswers` VALUES ('135', '1', '16', '3', '33', '0');
INSERT INTO `quizanswers` VALUES ('136', '1', '17', '3', '35', '0');
INSERT INTO `quizanswers` VALUES ('137', '1', '18', '3', '41', '0');
INSERT INTO `quizanswers` VALUES ('138', '1', '7', '3', '3', '3');
INSERT INTO `quizanswers` VALUES ('139', '1', '8', '3', '6', '5');
INSERT INTO `quizanswers` VALUES ('140', '1', '14', '3', '27', '5');
INSERT INTO `quizanswers` VALUES ('141', '1', '15', '3', '30', '5');
INSERT INTO `quizanswers` VALUES ('142', '1', '16', '3', '33', '0');
INSERT INTO `quizanswers` VALUES ('143', '1', '17', '3', '36', '0');
INSERT INTO `quizanswers` VALUES ('144', '1', '18', '3', '41', '5');

-- ----------------------------
-- Table structure for `thread_user`
-- ----------------------------
DROP TABLE IF EXISTS `thread_user`;
CREATE TABLE `thread_user` (
  `ThreadID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  PRIMARY KEY  (`ThreadID`,`UserID`),
  KEY `UserID` (`UserID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thread_user
-- ----------------------------
INSERT INTO `thread_user` VALUES ('31', '3');
INSERT INTO `thread_user` VALUES ('31', '6');
INSERT INTO `thread_user` VALUES ('32', '3');
INSERT INTO `thread_user` VALUES ('32', '6');
INSERT INTO `thread_user` VALUES ('33', '1');
INSERT INTO `thread_user` VALUES ('33', '6');
INSERT INTO `thread_user` VALUES ('34', '3');
INSERT INTO `thread_user` VALUES ('35', '1');
INSERT INTO `thread_user` VALUES ('35', '6');
INSERT INTO `thread_user` VALUES ('36', '1');
INSERT INTO `thread_user` VALUES ('36', '6');
INSERT INTO `thread_user` VALUES ('37', '1');
INSERT INTO `thread_user` VALUES ('37', '6');
INSERT INTO `thread_user` VALUES ('38', '1');
INSERT INTO `thread_user` VALUES ('38', '6');
INSERT INTO `thread_user` VALUES ('39', '1');
INSERT INTO `thread_user` VALUES ('39', '6');
INSERT INTO `thread_user` VALUES ('40', '3');
INSERT INTO `thread_user` VALUES ('40', '6');
INSERT INTO `thread_user` VALUES ('41', '1');
INSERT INTO `thread_user` VALUES ('41', '3');
INSERT INTO `thread_user` VALUES ('42', '1');
INSERT INTO `thread_user` VALUES ('42', '6');
INSERT INTO `thread_user` VALUES ('43', '1');
INSERT INTO `thread_user` VALUES ('43', '3');
INSERT INTO `thread_user` VALUES ('44', '1');
INSERT INTO `thread_user` VALUES ('44', '6');
INSERT INTO `thread_user` VALUES ('45', '1');
INSERT INTO `thread_user` VALUES ('45', '6');
INSERT INTO `thread_user` VALUES ('45', '11');
INSERT INTO `thread_user` VALUES ('46', '1');
INSERT INTO `thread_user` VALUES ('46', '3');
INSERT INTO `thread_user` VALUES ('46', '6');
INSERT INTO `thread_user` VALUES ('47', '1');
INSERT INTO `thread_user` VALUES ('47', '3');
INSERT INTO `thread_user` VALUES ('47', '6');
INSERT INTO `thread_user` VALUES ('48', '1');
INSERT INTO `thread_user` VALUES ('48', '6');
INSERT INTO `thread_user` VALUES ('48', '11');
INSERT INTO `thread_user` VALUES ('53', '4');
INSERT INTO `thread_user` VALUES ('53', '5');
INSERT INTO `thread_user` VALUES ('54', '4');
INSERT INTO `thread_user` VALUES ('55', '3');
INSERT INTO `thread_user` VALUES ('55', '4');
INSERT INTO `thread_user` VALUES ('55', '5');

-- ----------------------------
-- Table structure for `topic_info`
-- ----------------------------
DROP TABLE IF EXISTS `topic_info`;
CREATE TABLE `topic_info` (
  `ID` int(11) NOT NULL auto_increment,
  `title` varchar(100) NOT NULL,
  `chapterID` int(11) default NULL,
  `userID` int(11) default NULL,
  `TimeStamp` timestamp NOT NULL default '0000-00-00 00:00:00',
  `description` varchar(300) default NULL,
  `forumID` int(11) default NULL,
  `courseID` int(11) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `chapterID` (`chapterID`),
  KEY `userID` (`userID`),
  KEY `courseID` (`courseID`)
) ENGINE=MyISAM AUTO_INCREMENT=137 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of topic_info
-- ----------------------------
INSERT INTO `topic_info` VALUES ('56', 'Discussion Topic', null, null, '2010-03-10 14:30:46', null, null, null);
INSERT INTO `topic_info` VALUES ('57', 'Discussion Topic', null, null, '2010-03-10 14:35:03', null, null, null);
INSERT INTO `topic_info` VALUES ('58', 'Discussion Topic', null, null, '2010-03-10 14:35:46', null, null, null);
INSERT INTO `topic_info` VALUES ('59', 'hey ?', '26', '39', '2010-03-10 14:36:01', 'hey ?', null, null);
INSERT INTO `topic_info` VALUES ('60', 'Discussion Topic', null, null, '2010-03-10 14:48:42', null, null, null);
INSERT INTO `topic_info` VALUES ('61', 'Discussion Topic', null, null, '2010-03-10 14:49:36', null, null, null);
INSERT INTO `topic_info` VALUES ('62', 'Discussion Topic', null, null, '2010-03-10 14:50:17', null, null, null);
INSERT INTO `topic_info` VALUES ('63', 'Discussion Topic', null, null, '2010-03-10 14:50:37', null, null, null);
INSERT INTO `topic_info` VALUES ('64', 'Discussion Topic', null, null, '2010-03-10 14:51:01', null, null, null);
INSERT INTO `topic_info` VALUES ('65', 'Discussion Topic', null, null, '2010-03-10 14:51:12', null, null, null);
INSERT INTO `topic_info` VALUES ('66', 'Discussion Topic', null, null, '2010-03-10 15:04:36', null, null, null);
INSERT INTO `topic_info` VALUES ('67', 'Test question', '27', '38', '2010-03-10 15:05:04', 'Test question', null, null);
INSERT INTO `topic_info` VALUES ('68', 'Test tany', '27', '38', '2010-03-10 15:05:31', 'Test tany', null, null);
INSERT INTO `topic_info` VALUES ('69', 'New QuestionNew QuestionNew QuestionNew QuestionNew QuestionNew QuestionNew QuestionNew QuestionNew ', '27', '38', '2010-03-10 15:15:14', 'New QuestionNew QuestionNew QuestionNew QuestionNew QuestionNew QuestionNew QuestionNew QuestionNew QuestionNew QuestionNew QuestionNew QuestionNew Question', null, null);
INSERT INTO `topic_info` VALUES ('70', 'Discussion Topic', null, null, '2010-03-10 15:37:28', null, null, null);
INSERT INTO `topic_info` VALUES ('71', 'Discussion Topic', null, null, '2010-03-10 15:39:42', null, null, null);
INSERT INTO `topic_info` VALUES ('72', 'Discussion Topic', null, null, '2010-03-10 19:52:26', null, null, null);
INSERT INTO `topic_info` VALUES ('73', 'Discussion Topic', null, null, '2010-03-10 19:52:41', null, null, null);
INSERT INTO `topic_info` VALUES ('74', 'Discussion Topic', null, null, '2010-03-10 19:52:59', null, null, null);
INSERT INTO `topic_info` VALUES ('75', 'Discussion Topic', null, null, '2010-03-10 19:53:22', null, null, null);
INSERT INTO `topic_info` VALUES ('76', 'Discussion Topic', null, null, '2010-03-10 19:53:40', null, null, null);
INSERT INTO `topic_info` VALUES ('77', 'Discussion Topic', null, null, '2010-03-10 19:54:53', null, null, null);
INSERT INTO `topic_info` VALUES ('78', 'Discussion Topic', null, null, '2010-03-11 01:02:25', null, null, null);
INSERT INTO `topic_info` VALUES ('79', 'Discussion Topic', null, null, '2010-03-11 02:06:51', null, null, null);
INSERT INTO `topic_info` VALUES ('80', 'Discussion Topic', null, null, '2010-03-11 02:07:50', null, null, null);
INSERT INTO `topic_info` VALUES ('82', 'Discussion Topic', null, null, '2010-03-11 02:29:16', null, null, null);
INSERT INTO `topic_info` VALUES ('85', '<em><strong>eh ra2yokom ya gama3a felle 2aloh Dr.Ayman El Khateeb el nahrda ??????????</strong></em>', '29', '111', '2010-03-11 11:04:53', '<em><strong>eh ra2yokom ya gama3a felle 2aloh Dr.Ayman El Khateeb el nahrda ??????????</strong></em> <img title=\"Laughing\" src=\"../../../js/tiny_mce/plugins/emotions/img/smiley-laughing.gif\" border=\"0\" alt=\"Laughing\">', null, null);
INSERT INTO `topic_info` VALUES ('86', 'Discussion Topic', null, null, '2010-03-11 13:30:59', null, null, null);
INSERT INTO `topic_info` VALUES ('87', 'What\'s networks ?', '32', '39', '2010-03-11 13:31:59', 'What\'s networks ?', null, null);
INSERT INTO `topic_info` VALUES ('88', 'Discussion Topic', null, null, '2010-03-12 12:08:55', null, null, null);
INSERT INTO `topic_info` VALUES ('89', 'Discussion Topic', null, null, '2010-03-12 16:24:12', null, null, null);
INSERT INTO `topic_info` VALUES ('90', 'Discussion Topic', null, null, '2010-03-14 06:37:40', null, null, null);
INSERT INTO `topic_info` VALUES ('91', 'Discussion Topic', null, null, '2010-03-14 07:17:34', null, null, null);
INSERT INTO `topic_info` VALUES ('92', 'Discussion Topic', null, null, '2010-03-14 07:17:55', null, null, null);
INSERT INTO `topic_info` VALUES ('93', 'Discussion Topic', null, null, '2010-03-14 07:18:23', null, null, null);
INSERT INTO `topic_info` VALUES ('94', 'Discussion Topic', null, null, '2010-03-14 10:19:52', null, null, null);
INSERT INTO `topic_info` VALUES ('95', 'Discussion Topic', null, null, '2010-03-14 10:20:21', null, null, null);
INSERT INTO `topic_info` VALUES ('96', 'Discussion Topic', null, null, '2010-03-18 10:04:51', null, null, null);
INSERT INTO `topic_info` VALUES ('97', 'Discussion Topic', null, null, '2010-03-18 10:06:53', null, null, null);
INSERT INTO `topic_info` VALUES ('99', 'Discussion Topic', null, null, '2010-03-22 09:06:30', null, null, null);
INSERT INTO `topic_info` VALUES ('100', 'Discussion Topic', null, null, '2010-03-22 09:07:04', null, null, null);
INSERT INTO `topic_info` VALUES ('101', 'Discussion Topic', null, null, '2010-04-20 14:32:31', null, null, null);
INSERT INTO `topic_info` VALUES ('102', 'Discussion Topic', null, null, '2010-04-20 14:33:06', null, null, null);
INSERT INTO `topic_info` VALUES ('103', 'Discussion Topic', null, null, '2010-05-08 09:59:08', null, null, null);
INSERT INTO `topic_info` VALUES ('104', 'Discussion Topic', null, null, '2010-05-08 10:00:30', null, null, null);
INSERT INTO `topic_info` VALUES ('105', 'Discussion Topic', null, null, '2010-05-20 11:00:04', null, null, null);
INSERT INTO `topic_info` VALUES ('106', 'Discussion Topic', null, null, '2010-05-20 11:00:37', null, null, null);
INSERT INTO `topic_info` VALUES ('107', 'Discussion Topic', null, null, '2010-05-20 11:02:51', null, null, null);
INSERT INTO `topic_info` VALUES ('108', 'Discussion Topic', null, null, '2010-05-20 11:03:16', null, null, null);
INSERT INTO `topic_info` VALUES ('109', 'Discussion Topic', null, null, '2010-05-20 11:03:40', null, null, null);
INSERT INTO `topic_info` VALUES ('111', 'Discussion Topic', null, null, '2010-05-20 12:51:23', null, null, null);
INSERT INTO `topic_info` VALUES ('112', 'Discussion Topic', null, null, '2010-05-20 12:51:23', null, null, null);
INSERT INTO `topic_info` VALUES ('113', 'Discussion Topic', null, null, '2010-05-20 12:52:54', null, null, null);
INSERT INTO `topic_info` VALUES ('114', 'Discussion Topic', null, null, '2010-05-27 02:34:27', null, null, null);
INSERT INTO `topic_info` VALUES ('115', 'Discussion Topic', null, null, '2010-05-27 23:07:32', null, null, null);
INSERT INTO `topic_info` VALUES ('116', 'Why?', '44', '38', '2010-05-27 23:07:53', 'Why?', null, null);
INSERT INTO `topic_info` VALUES ('117', 'Discussion Topic', null, null, '2010-06-06 11:30:16', null, null, null);
INSERT INTO `topic_info` VALUES ('118', 'Discussion Topic', null, null, '2010-06-06 11:30:16', null, null, null);
INSERT INTO `topic_info` VALUES ('119', 'Discussion Topic', null, null, '2010-06-06 11:31:06', null, null, null);
INSERT INTO `topic_info` VALUES ('120', 'samir', null, '37', '2010-06-26 16:57:22', 'shakhs beyefty we khane2', '1', null);
INSERT INTO `topic_info` VALUES ('121', 'samir Hena', null, '37', '2010-06-28 13:17:40', 'samir is good', null, '45');
INSERT INTO `topic_info` VALUES ('122', 'new politics', null, '37', '2010-07-07 02:53:31', '12345', '1', null);
INSERT INTO `topic_info` VALUES ('123', 'Discussion Topic', null, '37', '2010-07-07 03:18:50', null, null, null);
INSERT INTO `topic_info` VALUES ('124', 'lectures table', null, '38', '2010-07-13 06:47:36', 'abt lecs', null, '37');
INSERT INTO `topic_info` VALUES ('125', 'Discussion Topic', null, null, '2010-07-14 19:51:11', null, null, null);
INSERT INTO `topic_info` VALUES ('126', 'Question Topic', '47', '37', '2010-07-14 19:51:54', 'eih ra2yokom fe my question?', null, null);
INSERT INTO `topic_info` VALUES ('127', 'Question Topic', '47', '377', '2010-07-14 19:53:04', 'Where can we srtudy for exam?', null, null);
INSERT INTO `topic_info` VALUES ('128', 'Question Topic', '47', '37', '2010-07-15 13:18:39', 'What about an extrmely long question like this vry very very long elogated question wthat should at least be there for more tan one line,may be tw w a long question such a long question', null, null);
INSERT INTO `topic_info` VALUES ('131', 'new ass', null, '37', '2010-07-16 08:27:33', null, null, null);
INSERT INTO `topic_info` VALUES ('132', 'new ass in physics', null, '37', '2010-07-16 08:35:36', null, null, null);
INSERT INTO `topic_info` VALUES ('133', 'Question Topic', '29', '37', '2010-09-18 14:20:13', 'ay kalam??', null, null);
INSERT INTO `topic_info` VALUES ('134', 'Question Topic', '29', '42', '2010-09-18 14:21:04', 'ay kalam from IE??', null, null);
INSERT INTO `topic_info` VALUES ('135', 'Question Topic', '29', '42', '2010-09-18 17:50:27', 'fvgergvrt4g rtgt?', null, null);
INSERT INTO `topic_info` VALUES ('136', 'Question Topic', '29', '37', '2010-09-18 17:51:38', 'rghrt u76 77 7?', null, null);

-- ----------------------------
-- Table structure for `user_activation`
-- ----------------------------
DROP TABLE IF EXISTS `user_activation`;
CREATE TABLE `user_activation` (
  `UserID` int(11) NOT NULL,
  `ActivationCode` longtext NOT NULL,
  PRIMARY KEY  (`UserID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_activation
-- ----------------------------

-- ----------------------------
-- Table structure for `user_friend`
-- ----------------------------
DROP TABLE IF EXISTS `user_friend`;
CREATE TABLE `user_friend` (
  `UserID` int(100) NOT NULL,
  `FriendID` int(100) NOT NULL default '0',
  `Status` binary(1) NOT NULL,
  PRIMARY KEY  (`UserID`,`FriendID`),
  KEY `FriendID` (`FriendID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_friend
-- ----------------------------
INSERT INTO `user_friend` VALUES ('1', '2', 0x30);
INSERT INTO `user_friend` VALUES ('1', '3', 0x30);
INSERT INTO `user_friend` VALUES ('1', '4', 0x30);
INSERT INTO `user_friend` VALUES ('1', '5', 0x30);
INSERT INTO `user_friend` VALUES ('1', '23', 0x30);
INSERT INTO `user_friend` VALUES ('37', '38', 0x31);
INSERT INTO `user_friend` VALUES ('37', '39', 0x00);
INSERT INTO `user_friend` VALUES ('37', '44', 0x00);

-- ----------------------------
-- Table structure for `user_login_info`
-- ----------------------------
DROP TABLE IF EXISTS `user_login_info`;
CREATE TABLE `user_login_info` (
  `ID` int(11) NOT NULL auto_increment,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `isActivated` int(11) default NULL,
  `isOnline` enum('') default NULL,
  `statusTimestamp` timestamp NULL default NULL on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`ID`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=410 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_login_info
-- ----------------------------
INSERT INTO `user_login_info` VALUES ('36', 'som3a foreffar', 'mowatin_mar7om@hotmail.com', '25d55ad283aa400af464c76d713c07ad', '1', '', null);
INSERT INTO `user_login_info` VALUES ('37', 'Ahmed Samir', 'ahmed.samir@gioventy.com', '25d55ad283aa400af464c76d713c07ad', '1', '', '2012-06-27 06:46:14');
INSERT INTO `user_login_info` VALUES ('38', 'Ismail', 'ismail@schoolen.com', '25d55ad283aa400af464c76d713c07ad', '1', '', '2010-09-18 11:12:08');
INSERT INTO `user_login_info` VALUES ('39', 'Ahmed Negm', 'anegm88@gmail.com', '25d55ad283aa400af464c76d713c07ad', '1', '', '2010-09-18 11:14:33');
INSERT INTO `user_login_info` VALUES ('40', 'Ahmed El-Sayed Mohammed', 'ahmed.elsayed88@gmail.com', '7f2ababa423061c509f4923dd04b6cf1', '1', '', null);
INSERT INTO `user_login_info` VALUES ('41', 'Ahmed waheed abdel satar', 'a_waheed154@hotmail.com', '25d55ad283aa400af464c76d713c07ad', '1', '', null);
INSERT INTO `user_login_info` VALUES ('42', 'DrLolita Amola', 'amal_mahmoud3@yahoo.com', '25d55ad283aa400af464c76d713c07ad', '1', '', '2010-09-18 15:27:58');
INSERT INTO `user_login_info` VALUES ('43', 'Joseph Adel', 'j_od_ge007@hotmail.com', 'eef1926850c98e3bd4b35088dc63d53a', '1', '', null);
INSERT INTO `user_login_info` VALUES ('44', 'Abdel-Aziz Hassan', 'ahs.mansour@hotmail.com', '40f14b13e91f96d6ba3e2973ecd16d1d', '1', '', null);
INSERT INTO `user_login_info` VALUES ('45', 'Muhammad Emad Ramadan', 'bogy_zlu@hotmail.com', '1b324c03e52f392189d95815af30b804', '1', '', null);
INSERT INTO `user_login_info` VALUES ('46', 'Mohammed Abdel-hakim Ibrahim', 'moody_engine@hotmail.com', '7591e82711ee85797f2c25804bf3c73f', '1', '', null);
INSERT INTO `user_login_info` VALUES ('47', 'Hani', 'HANI.KR@HOTMAIL.COM', '25d55ad283aa400af464c76d713c07ad', '1', '', null);
INSERT INTO `user_login_info` VALUES ('48', 'Mostafa Hasan', 'mostafa-hasan@hotmail.com', 'c06afee4ce49c36441c8cd40438230d3', '1', '', null);
INSERT INTO `user_login_info` VALUES ('49', 'Mina samir fahmy', 'minasamirus@hotmail.com', 'ebfdd8e275b0736685640a2903f3a10a', '1', '', null);
INSERT INTO `user_login_info` VALUES ('50', 'bassem', 'bassem_handasa@hotmail.com', '39af98321804a559ac238ab69a67866d', '1', '', null);
INSERT INTO `user_login_info` VALUES ('51', 'Ahmad Muhammad', 'mindization@gmail.com', '4bd0eeb021fc54d3ce9f47bab8e715ac', '1', '', null);
INSERT INTO `user_login_info` VALUES ('52', 'OMNEya Refaee', 'laughlivelove_Unique_o@hotmail.com', 'adcb3eff5d5d016aa0b1115e0d314596', '1', '', null);
INSERT INTO `user_login_info` VALUES ('53', 'Ahmad', 'psycoblizzard@gmail.com', 'ed2b1f468c5f915f3f1cf75d7068baae', '1', '', null);
INSERT INTO `user_login_info` VALUES ('54', 'Muhammad El Orabi', 'orabiman_7610@yahoo.com', '7136564c9753b652be76d7674fdb912d', '1', '', null);
INSERT INTO `user_login_info` VALUES ('55', 'ahmed saad', 'ahmed_Saad09@hotmail.com', 'ff39273a8693b518056cd860592057b5', '1', '', null);
INSERT INTO `user_login_info` VALUES ('56', 'Bahaa Galal Aly', 'bahaa_500@hotmail.com', '9f4c6bdefb83337cbe84952321960041', '1', '', null);
INSERT INTO `user_login_info` VALUES ('57', 'Omer Ramadan', 'omer.ramadan@hotmail.com', '25f9e794323b453885f5181f1b624d0b', '1', '', null);
INSERT INTO `user_login_info` VALUES ('58', 'Abdulrahman gamal', 'obad2007@hotmail.com', '31997dfe10d50b0236060baeae794d39', '1', '', null);
INSERT INTO `user_login_info` VALUES ('59', 'ashraf yehia ', 'ashraf_eng88@hotmail.com', 'a163fd09fad365af4f009a5063351e17', '1', '', null);
INSERT INTO `user_login_info` VALUES ('60', 'ahmed haytham elmofty', 'hamaza_elmofty@hotmail.com', '98a88e6208d76d6e57624de15b33cd40', '1', '', null);
INSERT INTO `user_login_info` VALUES ('61', 'ahmed mustafa hassan', 'ahmed.mustafa.hassan@gmail.com', 'f4737386f4afce2438c3413bcb68883e', '1', '', null);
INSERT INTO `user_login_info` VALUES ('62', 'Shehab', 'shehabonly@hotmail.com', '25f9e794323b453885f5181f1b624d0b', '1', '', null);
INSERT INTO `user_login_info` VALUES ('63', 'Mohamed Samir', 'dr.somso@yahoo.com', '25d55ad283aa400af464c76d713c07ad', '1', '', null);
INSERT INTO `user_login_info` VALUES ('64', 'aya reda hussien', 'dr_yoyatota@yahoo.com', '65fb377eeeff9f349b61b5903d2ee3bf', '1', '', null);
INSERT INTO `user_login_info` VALUES ('65', 'yahya', 'yahya_sameh@hotmail.com', 'eca8ecca756c2f14c7830241af1aea26', '1', '', null);
INSERT INTO `user_login_info` VALUES ('66', 'Eslam Mohamed', 'semsem_med@hotmail.com', 'cfc7dfc4cc2ffbef25c982a440515a5e', '1', '', null);
INSERT INTO `user_login_info` VALUES ('67', 'Gasser Ussama', 'gasserusama@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', '1', '', null);
INSERT INTO `user_login_info` VALUES ('68', 'Mohammed Salah Mohammed', 'mido-elmohands@hotmail.com', '25d55ad283aa400af464c76d713c07ad', '1', '', null);
INSERT INTO `user_login_info` VALUES ('69', 'HokaHelal', 'hokahelal@hotmail.com', '096031cb63be1daa0b800516f25c4cbd', '1', '', null);
INSERT INTO `user_login_info` VALUES ('70', 'Abdelrahman Mokhtar Tawfeek Mohamed', 'abdo_trawry2000@yahoo.com', '3474337c9784159b05606afc23dc46bf', '1', '', null);
INSERT INTO `user_login_info` VALUES ('71', 'Reem Ahmed', 'reem.ahmed25@gmail.com', '320e8d2f88fdd79c656f55b6cd97acbb', '1', '', null);
INSERT INTO `user_login_info` VALUES ('72', 'medo kandil', 'medo4freedom@hotmail.com', 'ff0184b3a20710f7f04e5eb9554ca6f5', '1', '', null);
INSERT INTO `user_login_info` VALUES ('73', 'Peter', 'peroeng@gmail.com', '25d55ad283aa400af464c76d713c07ad', '1', '', null);
INSERT INTO `user_login_info` VALUES ('74', 'ahmad coucha', 'coucha88@hotmail.com', '619feddd844fe8a2bd1c3a48680543b4', '1', '', null);
INSERT INTO `user_login_info` VALUES ('75', 'Darya Dedik', 'daryadedik@gmail.com', '2d7d69df334a922549342d0e71036dcc', '1', '', null);
INSERT INTO `user_login_info` VALUES ('76', 'alaa negm', 'dr_lolo17@yahoo.com', 'e1f2e1c65aa6c93ba4767a28e34ae5ae', '1', '', null);
INSERT INTO `user_login_info` VALUES ('77', 'Mahmoud Adly Mahmoud', 'findingadly@hotmail.com', 'c4b929181557f1aa15394ae56db24f8d', '1', '', null);
INSERT INTO `user_login_info` VALUES ('78', 'Ahmed Hany', 'ahmedhany91088@hotmail.com', '6c9691906c4f126a132bb39a79cbc729', '1', '', null);
INSERT INTO `user_login_info` VALUES ('79', 'Mahmoud Nawito', 'nawito_keller@hotmail.com', '17d41a1f00e7099106e36f5f3cfb83e5', '1', '', null);
INSERT INTO `user_login_info` VALUES ('80', 'Hany Medhat', 'hanymedhat2005@hotmail.com', '25d55ad283aa400af464c76d713c07ad', '1', '', null);
INSERT INTO `user_login_info` VALUES ('81', 'Mohammed Soliman', 'eng-soliman@hotmail.com', 'f4047f7e8a98efdc9b599489c15023de', '1', '', null);
INSERT INTO `user_login_info` VALUES ('82', 'Yehia Mostafa', 'yehia.yuri.mostafa@gmail.com', '4aee851284ce390b3f7530571c549de3', '1', '', null);
INSERT INTO `user_login_info` VALUES ('83', 'Maged', 'magedelansary@yahoo.com', '25f9e794323b453885f5181f1b624d0b', '1', '', null);
INSERT INTO `user_login_info` VALUES ('84', 'Hazem Mohamed Taher Ramadan', 'hazem_ramadan@hotmail.com', '8c6377d21e6139ea88536111f347294e', '1', '', null);
INSERT INTO `user_login_info` VALUES ('85', 'ahmed mohammed mohy eldeen', 'mohyeldeen2010@hotmail.com', '25d55ad283aa400af464c76d713c07ad', '1', '', null);
INSERT INTO `user_login_info` VALUES ('86', 'lover prince ', 'ameer_sas2001@yahoo.com', '4ea59ff15f99d65edf0c2934f44392e4', '1', '', null);
INSERT INTO `user_login_info` VALUES ('87', 'ahmed magdy', 'ahmed_eddy2007@yahoo.com', '3dbe00a167653a1aaee01d93e77e730e', '1', '', null);
INSERT INTO `user_login_info` VALUES ('88', 'Mohamed', 'no1resistsme@yahoo.com', 'a2550eeab0724a691192ca13982e6ebd', '1', '', null);
INSERT INTO `user_login_info` VALUES ('89', 'Sama Mohammed', 'death_solution@hotmail.com', '9f5dcff98153895c21a2fa08c91c9b06', '1', '', null);
INSERT INTO `user_login_info` VALUES ('90', 'Yusuf', 'youssef_matrix9@hotmail.com', '4ec4c88b1f7463fc9636f92191cf103f', '1', '', null);
INSERT INTO `user_login_info` VALUES ('91', 'islam', 'islam.ahmed@gmail.com', '166925813e221b22b7b08ea940f7c035', '1', '', null);
INSERT INTO `user_login_info` VALUES ('92', 'amal gharib', 'dr_amola_177@yahoo.com', '96129d074c15bad4dd8410e0484d6929', '1', '', null);
INSERT INTO `user_login_info` VALUES ('93', 'Fatma Ali', 'drbatta70@yahoo.com', '168d485fe773079cbea1b94a93b90b8e', '1', '', null);
INSERT INTO `user_login_info` VALUES ('94', '3omdaaa', 'meno.mido@yahoo.com', 'd0fef0a0e1864bd76a30687b99c6855d', '1', '', null);
INSERT INTO `user_login_info` VALUES ('95', 'Enas Abotaleb', 'thekind_heart2007@yahoo.com', '96384eca15b88a816eeeb14674e35e5b', '1', '', null);
INSERT INTO `user_login_info` VALUES ('96', 'ahmed abdelnabi', 'a_3bdelnabi55@yahoo.com', '24ab020bee006f4f11ac457e4587d646', '1', '', null);
INSERT INTO `user_login_info` VALUES ('97', 'basma mohamed', 'hossam_mr@yahoo.com', '8b4cf0258846b23e0a8272bee22c38dd', '1', '', null);
INSERT INTO `user_login_info` VALUES ('98', 'Islam Fawzy', 'x36_ultimate@yahoo.com', '00076e157deefc5a1e4cab3ceb5856db', '1', '', null);
INSERT INTO `user_login_info` VALUES ('99', 'Ferginia A.S', 'eltabiaa@yahoo.com', '25f9e794323b453885f5181f1b624d0b', '1', '', null);
INSERT INTO `user_login_info` VALUES ('100', 'princess mero', 'd_princess11@ymail.com', '25d55ad283aa400af464c76d713c07ad', '1', '', null);
INSERT INTO `user_login_info` VALUES ('101', 'mohamed mohamed nour eldin', 'eng.mohamed.nour.eldin@gmail.com', '2b619329e8d2f6f249e5fd2adb0cc5b4', '1', '', null);
INSERT INTO `user_login_info` VALUES ('102', 'ayaharon', 'ayaharon@hotmail.com', '5d262cca3c3de4d6f21676a46ba7fb4a', '1', '', null);
INSERT INTO `user_login_info` VALUES ('103', 'omar amr elkhafif', 'omarelkhafif@hotmail.com', 'ea39c2bff3d5a97d1daccd39ed5b529b', '1', '', null);
INSERT INTO `user_login_info` VALUES ('104', 'fencer', 'fencer@yahoo.com', 'fc5e038d38a57032085441e7fe7010b0', '1', '', null);
INSERT INTO `user_login_info` VALUES ('105', 'Aya Ahmed Mahmoued', 'aya-sokara122009@hotmail.com', '25d55ad283aa400af464c76d713c07ad', '1', '', null);
INSERT INTO `user_login_info` VALUES ('106', 'wafaa salah', 'wafaa.pharm@hotmail.com', '2084fc47a0841f562d674adaedca7f10', '1', '', null);
INSERT INTO `user_login_info` VALUES ('107', 'ahmed wally', 'ahmed.mahmoud.wally@gmail.com', '0786383b89edcad5af0959dccdb9ed44', '1', '', null);
INSERT INTO `user_login_info` VALUES ('108', 'Nesma Mohammad Ebrahim Rezk', 'nesma.rezk@hotmail.com', '25d55ad283aa400af464c76d713c07ad', '1', '', null);
INSERT INTO `user_login_info` VALUES ('109', 'nesma', 'nesma.414@hotmail.com', '25d55ad283aa400af464c76d713c07ad', '1', '', null);
INSERT INTO `user_login_info` VALUES ('110', 'Mohamed Eid Rashad', 'eng.mohamedeid2010@gmail.com', 'cd773ad6e5538f91e99cdef66aa4c0a1', '1', '', null);
INSERT INTO `user_login_info` VALUES ('111', 'Eslam Samir', 'islamsamir.1990@gmail.com', '02e08013be3f0c81aa6b7f6210e3cf7c', '1', '', null);
INSERT INTO `user_login_info` VALUES ('112', 'Mai Mohamed', 'cherry_fruit2007@hotmail.com', '80c992e1cd01128702092c30138f7ad4', '1', '', null);
INSERT INTO `user_login_info` VALUES ('113', 'mai mostafa ali abdallah', 'mayoui_elmatroy2007@hotmail.com', '1998acf8b3fab74374291a57812d4c9f', '1', '', null);
INSERT INTO `user_login_info` VALUES ('114', 'dr_menna hamdy', 'dr_moony.pharma@yahoo.com', '142d9cdb594eb8725db8167cbfeee02f', '1', '', null);
INSERT INTO `user_login_info` VALUES ('115', 'ma7moud taric', 'pharmacy100ceutics@yahoo.com', 'fe4d26d159b67b375221005cfe720dae', '1', '', null);
INSERT INTO `user_login_info` VALUES ('116', 'ahmed abdel-moneim', 'dr.ahamoneim@gmail.com', '01fed8451e070961907df2fdc1dc045b', '1', '', null);
INSERT INTO `user_login_info` VALUES ('117', 'shrouk abdelhalem', 'abdelhalem_mostafa@yahoo.com', '38c67ed002e768b86858e9248e08e45b', '1', '', null);
INSERT INTO `user_login_info` VALUES ('118', 'ahmed kamal', 'ahmedkamall@hotmail.com', '5a8d2d39a4bc88c85df6409ead8082f0', '1', '', null);
INSERT INTO `user_login_info` VALUES ('119', 'aya nemo', 'dr_nemo_22@yahoo.com', 'f3301277917360aba341bae121373113', '1', '', null);
INSERT INTO `user_login_info` VALUES ('120', 'AyA Mostafa MohmouD', 'dr.ayamostafa@hotmail.com', '3f74ed1b90de7d06a51891228750fcb1', '1', '', null);
INSERT INTO `user_login_info` VALUES ('121', 'Mennatallah Yasser', 'yasser16_8@hotmail.com', 'fef13df4c8df567dbea6f6bf503fd274', '1', '', null);
INSERT INTO `user_login_info` VALUES ('122', 'Ma7moud 5aled', 'drmody_pharma@yahoo.com', '8b7ab465ec706dd21b6ad1e44e3adcd6', '1', '', null);
INSERT INTO `user_login_info` VALUES ('123', 'Eman Abdelhamid Kamal', 'eman_el.orabi@yahoo.com', 'e880c55d6e6ca1a72df0bb8bed732330', '1', '', null);
INSERT INTO `user_login_info` VALUES ('124', 'Amira Samy', 'eltabiaaa@yahoo.com', '25f9e794323b453885f5181f1b624d0b', '1', '', null);
INSERT INTO `user_login_info` VALUES ('125', 'dina mohamed rashad', 'dinarashad185@hotmail.com', '6a72388da8ca7bbd82202d15280804ff', '1', '', null);
INSERT INTO `user_login_info` VALUES ('126', 'Mohamed sayed ahmed', 'hero_74269@yahoo.com', '2fcbeb0542f7ae3b3576102bc4a02dfd', '1', '', null);
INSERT INTO `user_login_info` VALUES ('127', 'Mahmoud Essam', 'dr.ma7moudessam@hotmail.com', 'b9122aaa5a71c46b261488b2f19e145d', '1', '', null);
INSERT INTO `user_login_info` VALUES ('128', 'Salma Mohamed Adel', 'salma_adel_2007@hotmail.com', '2845d0ae2f4d276e4d3f71d82ba8c325', '1', '', null);
INSERT INTO `user_login_info` VALUES ('129', 'princess mero', 'd_mero11@yahoo.com', '14dec564eb844ecb1c518cf3956eaeb6', '1', '', null);
INSERT INTO `user_login_info` VALUES ('130', '', 'dalia_90h@hotmail.com', '08eee70b4135dc381b0edff2bec5f599', '1', '', null);
INSERT INTO `user_login_info` VALUES ('131', 'asmaa adbou mostafa ali', 'somasmsm88@yahoo.com', '25d55ad283aa400af464c76d713c07ad', '1', '', null);
INSERT INTO `user_login_info` VALUES ('132', 'Mo\'men Mahmoud El-Massry', 'dr.mn@windowslive.com', '5920c08a0ab3acb8b93959120943e5e8', '1', '', null);
INSERT INTO `user_login_info` VALUES ('133', 'Doaa Hssan', 'red_rose_890@yahoo.com', '103573b35f33d747c1934ef670de0e41', '1', '', null);
INSERT INTO `user_login_info` VALUES ('134', 'Heba AL Adel', 'bosbos1993@hotmail.com', 'b7d1c0c1543984ec1bc8a2dcc6279b4b', '1', '', null);
INSERT INTO `user_login_info` VALUES ('135', 'ALAA ABDEL AZIZ MOUHAMED', 'alaa.love97@yahoo.com', 'ac8394693fa8879edc62b3ca4bc1920d', '1', '', null);
INSERT INTO `user_login_info` VALUES ('136', 'mrahbg', 'dr_martin_1990@hotmail.com', 'b8d563ce7dafb4f45705cc4736f382be', '1', '', null);
INSERT INTO `user_login_info` VALUES ('137', 'bassem nasser nounou', 'bassem_nonu@yahoo.com', 'e6beba3002ae9288c29e411107c6d74e', '1', '', null);
INSERT INTO `user_login_info` VALUES ('138', 'Amany Agha', 'nona_mony9093@yahoo.com', '06130ef155df06e0110792ba3d227070', '1', '', null);
INSERT INTO `user_login_info` VALUES ('139', 'Youssef Talaat', 'sosbob7@schoolen.com', '0e0e22f14324d387e79024f0e67d6983', '1', '', null);
INSERT INTO `user_login_info` VALUES ('140', 'marwa sabry shalaby ali shalaby', 'marawta_90@hotmail.com', '24106862efc70ec29bc87e22f6e20a16', '1', '', null);
INSERT INTO `user_login_info` VALUES ('141', 'osama mohamed alaa', 'osososama2009@yahoo.com', '25f9e794323b453885f5181f1b624d0b', '1', '', null);
INSERT INTO `user_login_info` VALUES ('142', 'zizi ahmed', 'zizi_9900@yahoo.com', '031b789936328ba56b958f32cc4e1974', '1', '', null);
INSERT INTO `user_login_info` VALUES ('143', 'ebtesam hanafy', 'shama_dream@hotmail.com', '626528d7d215134494e4fee9c79f2eb9', '1', '', null);
INSERT INTO `user_login_info` VALUES ('144', 'amna mohammed', 'nonna_1111@hotmail.com', '03adbe3607835fb750c68e1607f13a4f', '1', '', null);
INSERT INTO `user_login_info` VALUES ('145', ' yahya abdelwahed fikry', 'y_l_n@live.com', '81a4668c051dc173321acd0779ad072a', '1', '', null);
INSERT INTO `user_login_info` VALUES ('146', 'moli soliman', 'molimoon_90@yahoo.com', '59997432125691872c3e711cf6aef960', '1', '', null);
INSERT INTO `user_login_info` VALUES ('147', 'bassant atef el sayed', 'posy_2020@hotmail.com', 'b9cd870a6aec30dffeb3470064a9ca18', '1', '', null);
INSERT INTO `user_login_info` VALUES ('148', 'sarah abdelwahab', 'sarahabdelwahab@yahoo.com', '95bba4281a17aba502192d22c1c46db7', '1', '', null);
INSERT INTO `user_login_info` VALUES ('149', 'khaled18', 'khaled18@windowslive.com', 'a5a108eb8827c5479633c3b85d7e6629', '1', '', null);
INSERT INTO `user_login_info` VALUES ('150', 'Amira Ibrahim', 'dr.amiraibrahim@yahoo.com', '14dec564eb844ecb1c518cf3956eaeb6', '1', '', null);
INSERT INTO `user_login_info` VALUES ('151', 'Michael ', 'mike-333@hotmail.com', 'bca1e3e23b32693d0ca41590c6abc893', '1', '', null);
INSERT INTO `user_login_info` VALUES ('152', 'ebthal salah', 'lula_salah@hotmail.com', 'c7535a1455c853ae0c4a0c3f9834cda8', '1', '', null);
INSERT INTO `user_login_info` VALUES ('153', 'Nehal Hassan El Banna', 'noony_01060@hotmail.com', '351eb7004f611a4570ca1ff5789766a6', '1', '', null);
INSERT INTO `user_login_info` VALUES ('154', 'Kareem Ahmed El-sayed El-sayed Nasr', 'kareemahmed90@hotmail.com', '9385fb033ee86d8026698be671fe582d', '1', '', null);
INSERT INTO `user_login_info` VALUES ('155', 'Mahmoud Abozied', 'alexander_new2010@yahoo.com', '914bfffbf2766a37191553496fcaa9fa', '1', '', null);
INSERT INTO `user_login_info` VALUES ('156', 'samah youssef', 'samahyoussef@rocketmail.com', '23f6427c941ba0b8da8739c6f49b34f5', '1', '', null);
INSERT INTO `user_login_info` VALUES ('157', 'Khaled Aboud ', 'khaled_aboud@hotmail.com', 'a89d7c29baf31dd59c88908b378a5542', '1', '', null);
INSERT INTO `user_login_info` VALUES ('158', 'ahmed fouad', 'dr.ahmedfouad99@yahoo.com', 'b2cb53f95b36867e86e7666bbe9bd751', '1', '', null);
INSERT INTO `user_login_info` VALUES ('159', 'samar abd el sattar', 'samori_15_4@hotmail.com', 'f7d96011ffe82dbdfa2bc918674facb1', '1', '', null);
INSERT INTO `user_login_info` VALUES ('160', 'Mohamed Mos3ad', 'doctor_mos3ad77@yahoo.com', '209c57499f8a31e6e6de5abb40a81dcb', '1', '', null);
INSERT INTO `user_login_info` VALUES ('161', 'hadeer alwakeel', 'hadeer_dodo55@hotmail.com', '91b54de5dd3254554436fb87da0657fa', '1', '', null);
INSERT INTO `user_login_info` VALUES ('162', 'Ahmed Negm', 'hello@hello.com', '5f532a3fc4f1ea403f37070f59a7a53a', '1', '', null);
INSERT INTO `user_login_info` VALUES ('163', 'dalia elsayed', 'dodosasa8890@yahoo.com', '00d2edbddc8380394353e6fdb3c8a7f2', '1', '', null);
INSERT INTO `user_login_info` VALUES ('164', 'katia krijyan', 'catiamodels2007@yahoo.com', '62c4c82417f92bd7d5696bf43318cee3', '1', '', null);
INSERT INTO `user_login_info` VALUES ('165', 'roukiah mahmoud', 'shinichi000@hotmail.com', '46837572bf12343af7219b5a0d7a3e3a', '1', '', null);
INSERT INTO `user_login_info` VALUES ('166', 'Schoolen Test', 'contactus@schoolen.com', '5f532a3fc4f1ea403f37070f59a7a53a', '1', '', null);
INSERT INTO `user_login_info` VALUES ('167', 'shosho mohamed 3bdo', 'shosho-soma_tunis@hotmail.com', 'a26ae9493beaebba16e55a9005ff2540', '1', '', null);
INSERT INTO `user_login_info` VALUES ('168', 'Mohamed Elshafey', 'elshafey_pharm@yahoo.com', 'f240fb9c6ff8c6d6771e7a771ee1196f', '1', '', null);
INSERT INTO `user_login_info` VALUES ('169', ' heba mohammed ', 'beautiful.bibo@yahoo.com', '5bdc3290cfbac231a275b2060ceab0c5', '1', '', null);
INSERT INTO `user_login_info` VALUES ('170', 'amira aboelwafa', 'amiraaboelwafa@yahoo.com', 'b9ce291fcfcf5f19bc4ad25e74f95c3d', '1', '', null);
INSERT INTO `user_login_info` VALUES ('171', 'Ahmed Sayed', 'ahmedsayed_t2@hotmail.co.uk', '72ba4d7f3366c981b91fecd04f0b1270', '1', '', null);
INSERT INTO `user_login_info` VALUES ('172', 'e.Labanita', 'eman_labana@yahoo.com', 'e61489b4a525f00af39fa7aaf593fda5', '1', '', null);
INSERT INTO `user_login_info` VALUES ('173', 'Mohamed Ahmed Abol Haggag', 'hajaj_1989@yahoo.com', 'b3f48f84607efac98f889a00ff26d8d4', '1', '', null);
INSERT INTO `user_login_info` VALUES ('174', 'Mayar Ahmed Rabia', 'mocca_3000@hotmail.com', '24c4a0a98567be472b8ad06585faf00b', '1', '', null);
INSERT INTO `user_login_info` VALUES ('175', 'Mohamad Abdallah Mohamad ', 'mido_403@hotmail.com', '45ac71868e7af315266a160385ee855f', '1', '', null);
INSERT INTO `user_login_info` VALUES ('176', 'sameh fawzy', 'sameh_scorpion2000@yahoo.com', '90b528ca7e01a2ef98ecc7367340a232', '1', '', null);
INSERT INTO `user_login_info` VALUES ('177', 'Dr-Ronna teto', 'ronnateto@yahoo.com', '254b2c7842b596c4e41bd4ad0d64b8b2', '1', '', null);
INSERT INTO `user_login_info` VALUES ('178', 'sara afifi', 'saratoota@hotmail.com', '57326fbabcbb7a2e51705b144d6f6603', '1', '', null);
INSERT INTO `user_login_info` VALUES ('179', 'radwa abd el aziz', 'dr_radwaabdelaziz@yahoo.com', '5d0d61da95380f2f74a8e05c4d1c6fdd', '1', '', null);
INSERT INTO `user_login_info` VALUES ('180', 'maha maher isma3eel', 'crazy_moha@hotmail.com', '82d9ac709df51aaaeea79a259c97ed7d', '1', '', null);
INSERT INTO `user_login_info` VALUES ('181', 'sosa basbosa', 'swa_30@yahoo.com', 'f466e3c845d847ddd6c7b7921c9b115b', '1', '', null);
INSERT INTO `user_login_info` VALUES ('182', 'ahmed mohamed', 'ah.melscor@gmail.com', 'afc51f9a4c86a09a35903334546da3eb', '1', '', null);
INSERT INTO `user_login_info` VALUES ('183', 'Mahmoud Adel Farid', 'amahmoudb@yahoo.com', 'eb0b5599e67e299755bda83b862b23dd', '1', '', null);
INSERT INTO `user_login_info` VALUES ('184', 'Mohamed Mahmoud Elsaid Edrees', 'mohamed_edrees55@yahoo.com', '8e615866fffc640158236a361cd09ddf', '1', '', null);
INSERT INTO `user_login_info` VALUES ('185', 'esmaeel elhawary', 'esmaeelelhawary@yahoo.com', '0109771b2476d18766255980257a6a91', '1', '', null);
INSERT INTO `user_login_info` VALUES ('186', 'Mohamed Edrees', 'm.mpharma@yahoo.com', '8e615866fffc640158236a361cd09ddf', '1', '', null);
INSERT INTO `user_login_info` VALUES ('187', 'Hajar Osama Agag', 'miss_messy3@live.com', 'a037e727b0c5a97c87d442967d756f0b', '1', '', null);
INSERT INTO `user_login_info` VALUES ('188', 'Maiosha Lashin', 'maiosha_totyfroty_maiosha@Hotmail.com', 'b06d4e083205c031e08ba8a791267393', '1', '', null);
INSERT INTO `user_login_info` VALUES ('189', 'sherif shekoo', 'sherif_elzamalkawy@hotmail.com', '0f898c2381c28dfa1f2cf89357d8cd18', '1', '', null);
INSERT INTO `user_login_info` VALUES ('190', 'Muhammad Swilam', 'cyborg_eng@hotmail.com', '6336989ca44625cc3f8a429b0d22ddcc', '1', '', null);
INSERT INTO `user_login_info` VALUES ('191', 'emile seryan', 'desert_storm211@hotmail.com', '2b593d879bb736930f06583eb541cb70', '1', '', null);
INSERT INTO `user_login_info` VALUES ('192', 'shico', 'shico_shitos@hotmail.com', 'cc730cd837b1f64a9fce221aa22b2b31', '1', '', null);
INSERT INTO `user_login_info` VALUES ('193', 'maha Akl', 'maha_mbn1990@yahoo.com', 'ac91aee3599a78f090e893bf01b52a5e', '1', '', null);
INSERT INTO `user_login_info` VALUES ('194', 'omnia saad', 'omneyahsaad@hotmail.com', '4130584f82b54ed5ce31f88d79590401', '1', '', null);
INSERT INTO `user_login_info` VALUES ('195', 'Mohamed Talaat', 'talaat.mohamed@hotmail.com', '535391e7f98f4983c9b7e42868f1f792', '1', '', null);
INSERT INTO `user_login_info` VALUES ('196', 'Gihad Adel', 'Dangerouspirate_90@hotmail.com', 'da0241bf3c3c0d5d5a7f5a7a19731e42', '1', '', null);
INSERT INTO `user_login_info` VALUES ('197', 'ehab khattab', 'doshkhattab@yahoo.com', 'c228aa87e87c76cf297ecc3dbee4cf76', '1', '', null);
INSERT INTO `user_login_info` VALUES ('198', 'shorok magdy', 'spider_man20111@hotmail.com', '76135c522a74fe1f199910557fd8a670', '1', '', null);
INSERT INTO `user_login_info` VALUES ('199', 'maha mohamed', 'mahy_love_4_ever@hotmail.com', '34a794071e92ea68c2aa92961cb56f23', '1', '', null);
INSERT INTO `user_login_info` VALUES ('200', 'Ahmed Sayed Tawfeek', 'tawfeek_dr@hotmail.com', 'bd3c1432189d0ab93a6bd1b190f0a97e', '1', '', null);
INSERT INTO `user_login_info` VALUES ('201', 'ahmed mohy', 'a_mohy89@hotmail.com', '347ee6b394eb518b34a785fd26060a28', '1', '', null);
INSERT INTO `user_login_info` VALUES ('202', 'Ahmed Bakr', 'ahmed_bakr_2090@hotmail.com', '25d55ad283aa400af464c76d713c07ad', '1', '', null);
INSERT INTO `user_login_info` VALUES ('203', 'marwan yousri ali mohammed mousa', 'marwan_online_2008@yahoo.com', 'd7d49c32ace96917bd668196a6b33dc0', '1', '', null);
INSERT INTO `user_login_info` VALUES ('204', 'khalid essam', 'lost-love-2006@hotmail.com', '1846aceb9cc5682aeb7e913eecdf9311', '1', '', null);
INSERT INTO `user_login_info` VALUES ('205', 'Akram Elzeiny', 'zeiny90@hotmail.com', '6058fb00a0bf111aaaa48bbdef4a4bc0', '1', '', null);
INSERT INTO `user_login_info` VALUES ('206', 'Sara Elsayed Radwan', 'niceprincess_soso@yahoo.com', 'ba3c1397ffddbddca9b91e58307b9a74', '1', '', null);
INSERT INTO `user_login_info` VALUES ('219', 'Sarah Gamal Mohammed', 'sajeda4evr_88@hotmail.com', 'a3db10c91618191e8d9bad9683f3e5ac', '1', '', null);
INSERT INTO `user_login_info` VALUES ('220', 'Mohammed Hassan Mahrous', 'm.eng.mahrous@gmail.com', '3702a0178cabf62a5e028431525cb103', '1', '', null);
INSERT INTO `user_login_info` VALUES ('221', 'Mina Maher', 'menamaher2008@yahoo.com', 'dded99df8e4efff488ed0aca3845ed34', '1', '', null);
INSERT INTO `user_login_info` VALUES ('222', 'mahmoud mokhtar', 'mahmoudmokhtar@live.com', '5b84ab13f2fe1310d8a07aa09da292ff', '1', '', null);
INSERT INTO `user_login_info` VALUES ('223', 'Amr Eissa', 'hard__man@hotmail.com', 'd0b5ccae5b435347fe4bc46c90db3a2a', '1', '', null);
INSERT INTO `user_login_info` VALUES ('224', 'Emoo Mostafa', 'ahmedamal42@yahoo.com', 'ff7836f4f4649e3496746cd58d66a436', '1', '', null);
INSERT INTO `user_login_info` VALUES ('225', 'islam el-orabi', 'matrix_in_play@yahoo.com', 'b8772e0bc26f238863d0b9ffe3a155fd', '1', '', null);
INSERT INTO `user_login_info` VALUES ('226', 'nesma soudy', 'nesmasoudy@yahoo.com', '854375098891631605773ccceeebbb91', '1', '', null);
INSERT INTO `user_login_info` VALUES ('227', 'morad ahmad', 'mero_Fanan@hotmail.com', '94b9b3bbe54385aa5c00c221e3ee0945', '1', '', null);
INSERT INTO `user_login_info` VALUES ('228', 'Ahmed Abdul Salam', 'Dr.A.Abdulsalam@gmail.com', 'd56311ed9c251c2ad8e52d0efdc069c8', '1', '', null);
INSERT INTO `user_login_info` VALUES ('229', 'Nahla Rabie Ibrahim Ali', 'apple_fopcu@hotmail.com', 'd1f217c60bb917b0afbf8e9b2237ee3d', '1', '', null);
INSERT INTO `user_login_info` VALUES ('230', 'Rehab M.Abd El Badeeh', 'dr.rerememo@yahoo.com', 'fd9d7487b5b8f2670ebbd68250058f10', '1', '', null);
INSERT INTO `user_login_info` VALUES ('231', 'Fatma Ragab Hefny', 'dr.konafa@yahoo.com', 'd781f18930a85fed0682cc3d548b4874', '1', '', null);
INSERT INTO `user_login_info` VALUES ('232', 'mohamed nawito', 'nawito15@hotmail.com', '142bb8db667ee7aa76ef2b0cd9f82782', '1', '', null);
INSERT INTO `user_login_info` VALUES ('233', 'Manar El-mahdy', 'manar027@hotmail.com', '667f771f480d2b54a0fead39a2d386be', '1', '', null);
INSERT INTO `user_login_info` VALUES ('234', 'Noran Mansour Hesham', 'noraman17@hotmail.com', '567fed99f8f4a3552acd63a3d27eecbf', '1', '', null);
INSERT INTO `user_login_info` VALUES ('235', 'ahmed fakhry', 'hamada-2020@hotmail.com', '25d55ad283aa400af464c76d713c07ad', '1', '', null);
INSERT INTO `user_login_info` VALUES ('236', 'Mona Medhat', 'bonbonaia_msakara@yahoo.com', '1f26645057d38a5f6b75b5020b672610', '1', '', null);
INSERT INTO `user_login_info` VALUES ('237', 'Ghada Awad Mohamed', 'dr_gh_awad@yahoo.com', 'a1ba1e3727228b9d57db51797ae79995', '1', '', null);
INSERT INTO `user_login_info` VALUES ('238', 'mai_adel', 'mai_adel12@yahoo.com', '8179617cbefaf3ae2ba086a2e04ed4e0', '1', '', null);
INSERT INTO `user_login_info` VALUES ('239', 'yasmeen el sayed el sah3r', 'y012_elshaar@yahoo.com', '5cf4f6abc8b2b00fc82012a1b348b887', '1', '', null);
INSERT INTO `user_login_info` VALUES ('240', 'zzezo', 'superzezo_4@hotmail.com', 'b9906c07cd8077f905616ba20acbf149', '1', '', null);
INSERT INTO `user_login_info` VALUES ('241', 'adelkhalik eid', 'dody_eid2001@yahoo.com', '12b92d68bd5c3001f7b26e61ab042c9c', '1', '', null);
INSERT INTO `user_login_info` VALUES ('242', 'ftakat', 'zeca.lily@yahoo.com', '4fe607db437653468a5b0cc19191cabf', '1', '', null);
INSERT INTO `user_login_info` VALUES ('243', 'sama magdi', 'samamagdi@yahoo.com', 'bae5e3208a3c700e3db642b6631e95b9', '1', '', null);
INSERT INTO `user_login_info` VALUES ('244', 'dmnaiz', 'sein_oder_nicht_sein_lp_9109@yahoo.com', '2fba731eab45f0b64e1c37d8faabb0b2', '1', '', null);
INSERT INTO `user_login_info` VALUES ('245', 'kareem Essam', 'kareem3essam@hotmail.com', '50ac8b6b7c282747fcb032e4b784339d', '1', '', null);
INSERT INTO `user_login_info` VALUES ('246', 'Ø´ÙŠÙ…Ø§Ø¡ Ø§Ø­Ù…Ø¯', 'Doctor.shimaa1@yahoo.co.uk', 'ae75c77d35af0aee1fa05a64dc665bf3', '1', '', null);
INSERT INTO `user_login_info` VALUES ('247', 'Moataz Ahmed Mohammed Ahmed', 'mizo_281_2006@hotmail.com', '8e8f4f7e3c6b5243c4da53fc0dca18dc', '1', '', null);
INSERT INTO `user_login_info` VALUES ('248', 'Yasser', 'yasser_moustafa88@hotmail.com', 'f638f4354ff089323d1a5f78fd8f63ca', '1', '', null);
INSERT INTO `user_login_info` VALUES ('249', 'mariam mourad', 'love2evry1@hotmail.com', 'e977fa5e3ef063ee3b5d6850458e3f48', '1', '', null);
INSERT INTO `user_login_info` VALUES ('250', 'Ahmed Abdel Hady Abdel Kawy', 'elhadywebas@hotmail.com', 'b4d81c9b04a3a78731e9a98bd6cf9c6f', '1', '', null);
INSERT INTO `user_login_info` VALUES ('251', 'moataz mohamed', 'motaz_1988@hotmail.com', '81938e5e4009c82b94e63112cc5473c5', '1', '', null);
INSERT INTO `user_login_info` VALUES ('252', 'Mostafa AbdelRahman Soliman Shadoufa', 'mostafa.a.shadoufa@gmail.com', '46dc707d80d4b7f556166cd89d5ed42f', '1', '', null);
INSERT INTO `user_login_info` VALUES ('253', 'Dodyyy', 'candygirl073@hotmail.com', '2b96b8788c82daac889ca400baea859f', '1', '', null);
INSERT INTO `user_login_info` VALUES ('254', 'Mohamed Hussein', 'mohamedhussein22@gmail.com', '25d55ad283aa400af464c76d713c07ad', '1', '', null);
INSERT INTO `user_login_info` VALUES ('255', 'Mohammed Abbas', 'malsaher@gmail.com', '5133062d6e41ca455a4871718e049257', '1', '', null);
INSERT INTO `user_login_info` VALUES ('256', 'hossam hamdi ahmed', 'eng.hosamhamdi@gmail.com', '25d55ad283aa400af464c76d713c07ad', '1', '', null);
INSERT INTO `user_login_info` VALUES ('257', 'nabil', 'mna_asu@hotmail.com', '4a4b8cf9f8c2d592bbeab0b39ee09253', '1', '', null);
INSERT INTO `user_login_info` VALUES ('258', 'Mahmoud Mostafa Ahmad El-Shimy', 'elshimy1984@yahoo.com', '1cf126d20581502c3be21f524b40a9b9', '1', '', null);
INSERT INTO `user_login_info` VALUES ('259', 'Amr el feqy', 'ace_himself@hotmail.com', 'c0aff5d0a59b3446208fad70e2008799', '1', '', null);
INSERT INTO `user_login_info` VALUES ('260', 'ahmed mostafa ma3rouf', 'mido_the_gen@hotmail.com', 'd4776f06d1b87e13f48e2d25dc1aac0b', '1', '', null);
INSERT INTO `user_login_info` VALUES ('261', 'Aya Aly Ahmed El-Shazly', 'yummy_40@hotmail.com', 'c6fb9c385b7381c60bbcd56492ae42c9', '1', '', null);
INSERT INTO `user_login_info` VALUES ('262', 'dina maher hassan', 'dinadody_1990@yahoo.com', 'be2ab56056eb6c4a3dd19bd5a32db383', '1', '', null);
INSERT INTO `user_login_info` VALUES ('263', 'Mahmoud ', 'Mahmoud.shawkat@hotmail.com', '8ddcff3a80f4189ca1c9d4d902c3c909', '1', '', null);
INSERT INTO `user_login_info` VALUES ('264', 'mai hassan ', 'xxstorm1990@hotmail.com', '9f4605c1fb9ba6643c848e11d81b5283', '1', '', null);
INSERT INTO `user_login_info` VALUES ('265', 'Hesham Mostafa Seif', 'heshamseif88@hotmail.com', '25d55ad283aa400af464c76d713c07ad', '1', '', null);
INSERT INTO `user_login_info` VALUES ('266', 'Amira Nasef', 'dr.miro_nasef@hotmail.com', 'cb6ca5f3e56f434bc2699a4b4dd9c5b7', '1', '', null);
INSERT INTO `user_login_info` VALUES ('267', 'Mahmoud Mamdouh Saad', 'mamdouh.al.shamy@gmail.com', 'bf709005906087dc1256bb4449d8774d', '1', '', null);
INSERT INTO `user_login_info` VALUES ('268', 'yahya fadaly', 'dr.yahya22@yahoo.com', '86c51f99cb1e8de3566c0d8559b2e3fa', '1', '', null);
INSERT INTO `user_login_info` VALUES ('269', 'mahmoud abdel moneim hammam', 'mahmoud_abdelmon3m@hotmail.com', 'c64a2551addbc772856c898989c2da62', '1', '', null);
INSERT INTO `user_login_info` VALUES ('270', 'Engy Ahmed', 'n_g774@yahoo.com', 'f590001eda139f064e1edc0131554b84', '1', '', null);
INSERT INTO `user_login_info` VALUES ('271', 'Ahmed El Guindy', 'ahmed.guindy@gmail.com', '81fd5b7da4424c3c6585fc357d463af4', '1', '', null);
INSERT INTO `user_login_info` VALUES ('272', 'hazem mammdouh badran', 'haz.em.ail@hotmail.com', '4b8bd1b612bacc5fa49f157411af3f73', '1', '', null);
INSERT INTO `user_login_info` VALUES ('273', 'mohamed medhat', 'theblackpirate2005@hotmail.com', 'cb49291393789fa56c7a8f96899b0546', '1', '', null);
INSERT INTO `user_login_info` VALUES ('274', 'hend mohamad tawfik ', 'hendelqady@gmail.com', '806718492a66d5558aa1903d302444a0', '1', '', null);
INSERT INTO `user_login_info` VALUES ('275', 'ahmed wael farouk ', 'ahmedwael102@yahoo.com', 'dd4b21e9ef71e1291183a46b913ae6f2', '1', '', null);
INSERT INTO `user_login_info` VALUES ('276', 'Hesham Mahmoud Hassan', 'heshammahmoud1@hotmail.com', 'afaa38d5d9a8e0f9f9723d9b78777856', '1', '', null);
INSERT INTO `user_login_info` VALUES ('277', 'mah,oud abdbel kreem mahmoud', 'kimoelnahas@yahoo.com', '0c09425d2a99263b3dad9e0605142d46', '1', '', null);
INSERT INTO `user_login_info` VALUES ('278', 'eman bakr', 'tasbi7_elnogoom@hotmail.com', '10192ad2c378eca3ffcfc19031be3a4f', '1', '', null);
INSERT INTO `user_login_info` VALUES ('279', 'Beshoy Mikhail', 'besho666@hotmail.com', 'c833db5e41ca00fc8664fc47281632b9', '1', '', null);
INSERT INTO `user_login_info` VALUES ('280', 'Heba Allah Magdy', 'dr_boba89@hotmail.com', '5276c58416c64ad4dc0d3e350165f52b', '1', '', null);
INSERT INTO `user_login_info` VALUES ('281', 'bassma elsahar', 'bfs_2008@yahoo.com', '25d55ad283aa400af464c76d713c07ad', '1', '', null);
INSERT INTO `user_login_info` VALUES ('282', 'ahmed saeed esmaeel ', 'zzzzz_219@hotmail.com', '140e840561855a03afad30801098db74', '1', '', null);
INSERT INTO `user_login_info` VALUES ('283', 'Mohamed Hamza AbDel-Moaati', 'zezobloge@gmail.com', 'a137b18873bdfce717fbd73a127afac5', '1', '', null);
INSERT INTO `user_login_info` VALUES ('284', 'amira eldawoudy', 'mira_m6@hotmail.fr', '9f611f6b358f6e77d5108761b3660120', '1', '', null);
INSERT INTO `user_login_info` VALUES ('285', 'Ahmed mamdouh khali al_wali', 'wali909@hotmail.com', 'a1aae3db87380cf310a4cb20a78d2714', '1', '', null);
INSERT INTO `user_login_info` VALUES ('286', 'amira eldawoudy', 'marmar_mira_mirou@yahoo.com', '3916e1b01669ae9a476d4762f84c8f1d', '1', '', null);
INSERT INTO `user_login_info` VALUES ('287', 'farah mohammed', 'docfaro1994@yahoo.com', 'a584c4f8cfb909bab6a2e5b7909b1947', '1', '', null);
INSERT INTO `user_login_info` VALUES ('288', 'farah', 'malak.elsharef@yahoo.com', 'a584c4f8cfb909bab6a2e5b7909b1947', '1', '', null);
INSERT INTO `user_login_info` VALUES ('289', 'Dr. Hani Mahdi', 'hanimahdi@yahoo.com', '5e8667a439c68f5145dd2fcbecf02209', '1', '', null);
INSERT INTO `user_login_info` VALUES ('290', 'sherif', 'sherifkandel4@gmail.com', '8cff57c13fd2ee72fba4a2dd48609e68', '1', '', null);
INSERT INTO `user_login_info` VALUES ('291', 'Ù…ÙˆØ¯Ù‡ Ø§Ø­Ù…Ø¯ Ø­Ù…Ø¯Ø§Ù†', 'mawda.ahmed@yahoo.com', '730335ac57da699567182d9d12738753', '1', '', null);
INSERT INTO `user_login_info` VALUES ('292', 'abdallah mortada', 'bidobido50@yahoo.com', '56ecb807ec49ef9121f42a46d2210132', '1', '', null);
INSERT INTO `user_login_info` VALUES ('293', 'Yasser Mostafa Farouk Mohamed', 'yassssssoooooo@yahoo.com', '4d18e2c96bb0f39c6d6dc690542b0bdc', '1', '', null);
INSERT INTO `user_login_info` VALUES ('294', 'Ahmed Hazem', 'ahmedhazem18@hotmail.com', '545ac7c2c4d4c8fd63395f4d26d7eba7', '1', '', null);
INSERT INTO `user_login_info` VALUES ('295', 'Yasser Farouk', 'yasserelwezzah@yahoo.com', '4d18e2c96bb0f39c6d6dc690542b0bdc', '1', '', null);
INSERT INTO `user_login_info` VALUES ('296', 'yassmin', 'y_e_y_m@hotmail.com', '7f951a71e9a5bd5c91ecf411d9636c47', '1', '', null);
INSERT INTO `user_login_info` VALUES ('297', 'hend sameer', 'hendsameer52@yahoo.com', '462bf8fe8d12c955ac8f44d9da1e32dd', '1', '', null);
INSERT INTO `user_login_info` VALUES ('298', 'Nesma Elshal', 'Nesma.Elshal@hotmail.com', '39a01595d605b191aa1529c9dc44eeaf', '1', '', null);
INSERT INTO `user_login_info` VALUES ('299', 'ahmed abdelaziz', 'ahmed.eng2010@yahoo.com', '189942a7c6ae4d9835fb94008b7d3a91', '1', '', null);
INSERT INTO `user_login_info` VALUES ('300', 'Ahmed Essam Elkhateeb', 'lion2000_14@yahoo.com', '734a080d136ce5afffaf1095d28c39cf', '1', '', null);
INSERT INTO `user_login_info` VALUES ('301', 'Nesma', 'Eng_Neso@hotmail.com', '362a87f09880ccd0a7e388bdd1372486', '1', '', null);
INSERT INTO `user_login_info` VALUES ('302', 'mohamed mostafa', 'mompop_forever@hotmail.com', '3699bcbd6ecf982d540bddd2061dccd9', '1', '', null);
INSERT INTO `user_login_info` VALUES ('303', 'Mahmoud El-Meligui', 'mahmoudmeligui@gmail.com', 'e794d527a16a393213f75852608db328', '1', '', null);
INSERT INTO `user_login_info` VALUES ('304', 'MARWA HAMDY MOHAMED', 'eng.marwahamdy@gmail.com', '2e65398dc6fd2df02c124ce96f031873', '1', '', null);
INSERT INTO `user_login_info` VALUES ('305', 'nana yehia', 'nonna.yehia@hotmail.com', '6808661941eef48129ac8519fb559867', '1', '', null);
INSERT INTO `user_login_info` VALUES ('306', 'benjamin ebrahim', 'benno_50@yahoo.com', '25f9e794323b453885f5181f1b624d0b', '1', '', null);
INSERT INTO `user_login_info` VALUES ('307', 'bassem hassan hamed', 'funkbiko@hotmail.com', 'a8386cb96e0c4eb3b64d064e2338bd5a', '1', '', null);
INSERT INTO `user_login_info` VALUES ('308', 'Ahmed Lotfy Noah', 'eng_ahmed_7@yahoo.com', '7213c4464ab8b8afd6718fba742a07f1', '1', '', null);
INSERT INTO `user_login_info` VALUES ('309', 'fatma abd el fattah ahmed', 'falafylw@hotmail.com', 'bdc18b3b02b9afb5dab57d91d059d7f5', '1', '', null);
INSERT INTO `user_login_info` VALUES ('310', 'kamal saad', 'kamal_468@yahoo.com', '8f3309233b77a5baeae3086f7e1ae406', '1', '', null);
INSERT INTO `user_login_info` VALUES ('311', 'h_abdullah', 'enghoda_2010@yahoo.com', 'ed009958e7e82e9c71fbc373c87c8fc4', '1', '', null);
INSERT INTO `user_login_info` VALUES ('312', 'Sherif Gomaa', 'sherif_gomaa@hotmail.com', '3ec021204d2206e0cf2513071485eea0', '1', '', null);
INSERT INTO `user_login_info` VALUES ('313', 'EMOEROR', 'moaazz88@hotmail.com', 'fcf366073d7ea5faea993ded2980aabd', '1', '', null);
INSERT INTO `user_login_info` VALUES ('314', 'cherif', 'ez40-10@hotmail.com', '31d38efc16a67f2a067415b944fd5559', '1', '', null);
INSERT INTO `user_login_info` VALUES ('315', 'Marwa Sa\'eed Ahmed', 'a7la_banota_mero@hotmail.com', '25f9e794323b453885f5181f1b624d0b', '1', '', null);
INSERT INTO `user_login_info` VALUES ('316', 'tamim saied abbas ', 'tamim.asu.elec@gmail.com', '1a75c24d42589c21ae2a4c5f59c1c678', '1', '', null);
INSERT INTO `user_login_info` VALUES ('317', 'Mohamed Farouk Araby', 'midofarouk_992@hotmail.com', '974ebe39a1af75a9be4097abced3e3f8', '1', '', null);
INSERT INTO `user_login_info` VALUES ('318', 'ay7ad', 'maha_afifi2008@hotmail.com', '6e8b712f269b695ffa1ae118c414b772', '1', '', null);
INSERT INTO `user_login_info` VALUES ('319', 'Amany Hamdy', 'eng_emmy98@yahoo.com', 'e3f273f0d1764de3ca0d869b4c9cf493', '1', '', null);
INSERT INTO `user_login_info` VALUES ('320', 'mahmoud afifi esmael', 'nimo_toto@hotmail.com', '0377331ba77c6463d3b7022702bfc963', '1', '', null);
INSERT INTO `user_login_info` VALUES ('321', 'Sobhy Georges Sobhy', 'sobhygeorges@hotmail.com', 'e135146300bad96e3fcdd661ada6e87a', '1', '', null);
INSERT INTO `user_login_info` VALUES ('322', 'Ahmed Ramez Taha', 'ahmed_ramez87@hotmail.com', '70c2f7baa327fe387b1f9b2a1a01ee3b', '1', '', null);
INSERT INTO `user_login_info` VALUES ('323', 'marwa shokry mohamed', 'eng_marwashokry@hotmail.com', 'd10e4f3ed2906a1fb04eb1b06fc2f233', '1', '', null);
INSERT INTO `user_login_info` VALUES ('324', 'mary fayek', 'mryfyk@yahoo.com', 'e7271fee8ac04f0586cee2184efc325e', '1', '', null);
INSERT INTO `user_login_info` VALUES ('325', 'Mina Monr', 'monr19882006@hotmail.com', 'ee0e0ca72e039fb77da3524e9ed32fe4', '1', '', null);
INSERT INTO `user_login_info` VALUES ('326', 'Tarek Mohamed Hesham', 'tarektmh@yahoo.com', '8e87c893cdd31e0129da065d0143cd72', '1', '', null);
INSERT INTO `user_login_info` VALUES ('327', 'Reem Ahmed Abd El Salam', 'reem_181@hotmail.com', '54419892c42998af741b58da1f05ca6d', '1', '', null);
INSERT INTO `user_login_info` VALUES ('328', 'Nourhan Mamdouh', 'noura4_5@hotmail.com', '39e19534568dff09013c3e39b88133a9', '1', '', null);
INSERT INTO `user_login_info` VALUES ('329', 'ahmed mohamed aly', 'dwyanewade_23@hotmail.com', 'aea1eaf4e2920e184fa1f238e0a906e7', '1', '', null);
INSERT INTO `user_login_info` VALUES ('330', 'mohamed gamal ali ', 'gemy_the_engineer@yahoo.com', 'ba6f905867b8e7cf660d5f33b235cafa', '1', '', null);
INSERT INTO `user_login_info` VALUES ('331', 'ahmed atef', 'aaaahmedatef@hotmail.com', '3de31ff8fbb47f4456eeed3056adfaca', '1', '', null);
INSERT INTO `user_login_info` VALUES ('332', 'Mohamed El Mahdy', 'thief_2010@hotmail.com', '0f753e0e0a92d6d43eb2d966baab0588', '1', '', null);
INSERT INTO `user_login_info` VALUES ('333', 'Ibrahim Muhammed Abdel Azim', 'hemaskr@hotmail.com', '8ddcff3a80f4189ca1c9d4d902c3c909', '1', '', null);
INSERT INTO `user_login_info` VALUES ('334', 'Mohammed Hassan Mahrous', 'm_eng_mahrous@hotmail.com', '3281de81f73485057314e849eb307590', '1', '', null);
INSERT INTO `user_login_info` VALUES ('335', 'Nader Nassef Zaki', 'nadora5@hotmail.com', 'fdd6d6ee1cf0208348c6d9671d2d2616', '1', '', null);
INSERT INTO `user_login_info` VALUES ('336', 'michael', 'mnelmasry@gmail.com', '22d7fe8c185003c98f97e5d6ced420c7', '1', '', null);
INSERT INTO `user_login_info` VALUES ('337', 'ahmed deiaa', 'ahmeddeia@hotmail.com', '25d55ad283aa400af464c76d713c07ad', '1', '', null);
INSERT INTO `user_login_info` VALUES ('338', 'Bahy Aboelezz', 'bahyaboelezz@hotmail.com', '7275f6adbac970c57e7cc1981c88b5bc', '1', '', null);
INSERT INTO `user_login_info` VALUES ('339', 'Amr elanwar', 'amra.1987@hotmail.com', 'a3359d7b81428a02c443e69a7c8a931d', '1', '', null);
INSERT INTO `user_login_info` VALUES ('340', 'Mohammad galaa', 'mody14_mw@yahoo.com', '8bb4b894192a7414014eb97770ddb3f3', '1', '', null);
INSERT INTO `user_login_info` VALUES ('341', 'michael yehia', 'mac89mac@yahoo.com', '25d55ad283aa400af464c76d713c07ad', '1', '', null);
INSERT INTO `user_login_info` VALUES ('342', 'Radwa Magdy El Masry', 'beggie90@yahoo.com', '36bc3bfbc89d4f99b1545bd785c90509', '1', '', null);
INSERT INTO `user_login_info` VALUES ('343', 'menat allah adel galal', 'mena_eng_2010@yahoo.com', '0dbc3bd5899cab25774cb56a8a0223da', '1', '', null);
INSERT INTO `user_login_info` VALUES ('344', 'peteefouad', 'peteer2006@yahoo.com', '4d68adffa088b9bdd3d95108601bb9d7', '1', '', null);
INSERT INTO `user_login_info` VALUES ('345', 'Ola M.', 'blacatty@yahoo.com', '42822e7bc76ae872432a92bf0bccf040', '1', '', null);
INSERT INTO `user_login_info` VALUES ('346', 'Ahmed Wahba', 'e_s20066@yahoo.com', 'f1d3c398837e4ea521f38e2971d24a5c', '1', '', null);
INSERT INTO `user_login_info` VALUES ('347', 'sarah hussain', 'h237mg@hotmail.com', 'ad307e0bdeaa1f8fe07d43ec5daee862', '1', '', null);
INSERT INTO `user_login_info` VALUES ('348', 'nermeen', 'dr.nona_90@yahoo.com', '25f9e794323b453885f5181f1b624d0b', '1', '', null);
INSERT INTO `user_login_info` VALUES ('349', 'Islam nashaat salah el-din', 'Live_4_islam@hotmail.com', '77cc7663cffecb56e101b5f08a514549', '1', '', null);
INSERT INTO `user_login_info` VALUES ('350', 'salma sayed hilal', 'sab3awy-23@hotmail.com', '08520b6516b5f043cf3b19ef82ca9b62', '1', '', null);
INSERT INTO `user_login_info` VALUES ('351', 'rehab hussein', 'rehab.hussien.ali@gmail.com', '4ea876335f3b23da9f9e1a39aaecbfd8', '1', '', null);
INSERT INTO `user_login_info` VALUES ('352', 'Hany Sabry Ibrahim', 'eng.hanysabry@yahoo.com', '4a95eb9d23841f1be949a076ddd1e173', '1', '', null);
INSERT INTO `user_login_info` VALUES ('353', 'hadyelsahar', 'hadyelsahar@gmail.com', '2d61951ce8d3a58bde3139714ee0225f', '1', '', null);
INSERT INTO `user_login_info` VALUES ('354', 'mai magdi', 'd.dr24@yahoo.com', '532815ba814185114c07669643acd77c', '1', '', null);
INSERT INTO `user_login_info` VALUES ('355', 'Mahmoud Abozekry', 'mahmo246@yahoo.com', '4cc04c34ac653d135c77f5f602721e84', '1', '', null);
INSERT INTO `user_login_info` VALUES ('356', 'ndnod bobo', 'dody_noody1192008@yahoo.com', 'd79cd06799863224b7324d969c1e2084', '1', '', null);
INSERT INTO `user_login_info` VALUES ('357', 'sally sameh', 'sallysameh2000@yahoo.com', '35d968af0dec37133739005955ce5e22', '1', '', null);
INSERT INTO `user_login_info` VALUES ('358', 'Ahmed Hassan Reyad', 'ah_chitos@yahoo.com', '0ec2b2c6604e1231f31b21dda01fdd92', '1', '', null);
INSERT INTO `user_login_info` VALUES ('359', 'Abdo Yahia', 'abdo712_yahia@hotmail.com', 'e7c699ae94e31904ec9a94a80c9c775b', '1', '', null);
INSERT INTO `user_login_info` VALUES ('360', 'omar aly eladel', 'omar_aly_23@hotmail.com', '25d55ad283aa400af464c76d713c07ad', '1', '', null);
INSERT INTO `user_login_info` VALUES ('361', 'mohamed hosny sayed ', 'mohamed_87_80@hotmail.com', '260eb4a162817c2139bd1a5d4ed843a9', '1', '', null);
INSERT INTO `user_login_info` VALUES ('362', 'DAWOUD1987', 'DSA_MBC@YAHOO.COM', '2c2aab9d683fca1e25d8e192ac20e995', '1', '', null);
INSERT INTO `user_login_info` VALUES ('363', 'engdelta', 'engdelta@hotmail.com', '755b7c1259defb22da0c60a173f90085', '1', '', null);
INSERT INTO `user_login_info` VALUES ('364', 'haytham mostafa', 'himo88@hotmail.com', '25d55ad283aa400af464c76d713c07ad', '1', '', null);
INSERT INTO `user_login_info` VALUES ('365', 'Mohamed Atef Abdel-Rahman', 'mohamedatef2@hotmail.com', '10c60b6ba3f3ad4b3169e1797d8e3b2f', '1', '', null);
INSERT INTO `user_login_info` VALUES ('366', 'ahmed mohamed abd el-momen', 'en.dolphin@hotmail.com', '1deeb2f89e0b7de58ff2454f200a1305', '1', '', null);
INSERT INTO `user_login_info` VALUES ('367', 'eman ezz eldin', 'dr_emmi88@hotmail.com', 'fa92d7ab87569bcc142f871260000686', '1', '', null);
INSERT INTO `user_login_info` VALUES ('368', 'Bassem Ismael', 'besso_000@hotmail.com', 'd1fbcfaa8323e4ab95711c53a8a1c60f', '1', '', null);
INSERT INTO `user_login_info` VALUES ('369', 'Mohamed Adel Mahmoud', 'Biekapicus2000@hotmail.com', '2d88cb4733b90a98ea007cd2dc2b94b9', '1', '', null);
INSERT INTO `user_login_info` VALUES ('370', 'ahmed essam', 'ahmedelmasry_eng@yahoo.com', '78cf69edff2f3629afc3897c2b820550', '1', '', null);
INSERT INTO `user_login_info` VALUES ('371', 'Hebatollah Ashraf', 'ashraf.heba@gmail.com', 'c270da0afafda720a1ce3d1d48dd53a3', '1', '', null);
INSERT INTO `user_login_info` VALUES ('372', 'Enas Hussam El-din', 'moolameela@hotmail.com', 'a69ce03b828021d74bb1f2918d681fd2', '1', '', null);
INSERT INTO `user_login_info` VALUES ('373', 'Omar Mohamed Amin Ali', 'Omar_Amin@live.com', 'a4bbca0873fdb33738a082afbbaa5c68', '1', '', null);
INSERT INTO `user_login_info` VALUES ('374', 'Ahmed Fathi Abo El Fadl', 'abol_fadll@hotmail.com', '4ccf010a9b28ddd972e0cea319bb69e7', '1', '', null);
INSERT INTO `user_login_info` VALUES ('375', 'Amr Sohil', 'amrsohil2000@gmail.com', '16e44581cecd5523f5e7c964f6d2c730', '1', '', null);
INSERT INTO `user_login_info` VALUES ('376', 'dina omar', 'dolly_mory@yahoo.com', '8a5194e75d9992847f1d65fa29cdc755', '1', '', null);
INSERT INTO `user_login_info` VALUES ('377', 'Mahmoud Ashraf Mohamed', 'mahmoudashrafmohamed@hotmail.com', '25d55ad283aa400af464c76d713c07ad', '1', '', '2010-07-16 04:28:28');
INSERT INTO `user_login_info` VALUES ('378', 'kirolos alfy', 'kandk40@hotmail.com', 'f1bfd514f667cebd7595218b5a40d5b1', '1', '', null);
INSERT INTO `user_login_info` VALUES ('379', 'mahmoud mohamed ibrahim galal', 'm_ternado@hotmail.com', 'b8063f18354c76a66c60c842cc37a269', '1', '', null);
INSERT INTO `user_login_info` VALUES ('380', 'Peter Maged', 'eng_ba3tas@hotmail.com', '25d55ad283aa400af464c76d713c07ad', '1', '', null);
INSERT INTO `user_login_info` VALUES ('381', 'hamdy halim', 'dop-3h@hotmail.com', 'd551eafd8eca71035b85c2b3deacbfc6', '1', '', null);
INSERT INTO `user_login_info` VALUES ('382', 'lamis ezz el din', 'nolove_t.l.s@hotmail.com', '5cf16fd1d266310d69d6ab5a09535b5f', '1', '', null);
INSERT INTO `user_login_info` VALUES ('383', 'Amr M. El-Mahdy', 'virus_of.love@hotmail.com', '76711bcb21b417986ea8f378577fb7c5', '1', '', null);
INSERT INTO `user_login_info` VALUES ('384', 'mahmoud ismaiel', 'mahmoud_ismaiel@hotmail.com', 'ed3e0c507efd6cdef3c5f8ec4849f28a', '1', '', null);
INSERT INTO `user_login_info` VALUES ('385', 'Ahmed Mahmoud', 'gwaez2003@yahoo.com', 'cab66b5e623266abe19231fc3562f505', '1', '', null);
INSERT INTO `user_login_info` VALUES ('386', 'Mahmoud Tantawy', 'mt_007@hotmail.com', '6a658f03a87d3afade15d8296bd94e4d', '1', '', null);
INSERT INTO `user_login_info` VALUES ('387', 'ahmed', 'ahmedsayedss@hotmail.com', 'f704bc5ad0cf715e9f566aa5479b20ba', '1', '', null);
INSERT INTO `user_login_info` VALUES ('388', 'weam elsahar', 'weamelsahar@hotmail.com', '868d86950f0800774d2344bc188ba9a3', '1', '', null);
INSERT INTO `user_login_info` VALUES ('389', 'yousef mohamed hamza', 'man-winthout-fan@hotmail.com', 'd83231c33c02752e57bac2e7e53bfa42', '1', '', null);
INSERT INTO `user_login_info` VALUES ('390', 'bolbol', 'mna_asu@yahoo.com', '4a4b8cf9f8c2d592bbeab0b39ee09253', '1', '', null);
INSERT INTO `user_login_info` VALUES ('391', 'yasser  mustafa', 'yasser-moustafa88@hotmail.com', '727a6c95b4e295e2b9f1bc53a80ee6ec', '1', '', null);
INSERT INTO `user_login_info` VALUES ('392', 'Nodine', 'crazy_nodine@live.com', '0aeb81668e29988f6e6aeb2b3d47f27d', '1', '', null);
INSERT INTO `user_login_info` VALUES ('393', 'Mohamed Hamed', 'lifemaker91@gmail.com', '271300ee3269d1ebd65e092f4fed5de5', '1', '', null);
INSERT INTO `user_login_info` VALUES ('394', 'Ahmed Fikry', 'elec_mvp_2010@live.com', 'a919e4b3c1943d5a66611cba53b62fb2', '1', '', null);
INSERT INTO `user_login_info` VALUES ('395', 'mickel', 'mr_mickel_2@hotmail.com', '25f9e794323b453885f5181f1b624d0b', '1', '', null);
INSERT INTO `user_login_info` VALUES ('396', 'Mohammed Salah Mohammed', 'eng_mohammedsalah@hotmail.com', '6fb42da0e32e07b61c9f0251fe627a9c', '1', '', null);
INSERT INTO `user_login_info` VALUES ('397', 'George Ashraf Kirollos', 'gam_kry@yahoo.com', '36e04962e0cd42e97f083c178494e568', '1', '', null);
INSERT INTO `user_login_info` VALUES ('398', 'Dark Energy', 'dread-bmr@live.com', '7af250bf943282f7834e4ded6bfa7c21', '1', '', null);
INSERT INTO `user_login_info` VALUES ('399', 'Ahmad Imad', 'aes1988@hotmail.com', '0571749e2ac330a7455809c6b0e7af90', '1', '', null);
INSERT INTO `user_login_info` VALUES ('400', 'Ø¨Ù‡ÙŠ Ø§Ù„Ø¯ÙŠÙ† Ø£Ø­Ù…Ø¯', 'BEAB927@YAHOO.COM', '20be3950968b21ad272915e6be0a2fba', '1', '', null);
INSERT INTO `user_login_info` VALUES ('401', 'menna allh sobhy kamal', 'menna_sobhy_88@live.com', 'ef844b39b3412a0e3e6119bd3a12a661', '1', '', null);
INSERT INTO `user_login_info` VALUES ('402', 'Sally Salah Mahmoud', 'sallysmsa@hotmail.com', 'fabc32603bf07ac918ca9b8a263340f2', '1', '', null);
INSERT INTO `user_login_info` VALUES ('403', 'ramy mohamad', 'ramy_omar0@hotmail.com', '63f799ffcbb97ac863c5315fdac8ebac', '1', '', null);
INSERT INTO `user_login_info` VALUES ('404', 'mohamed hany abdela', 'mohamedzae@yahoo.com', 'a3d75eab90dfaf4805d69c4e5ed65c99', '1', '', null);
INSERT INTO `user_login_info` VALUES ('405', 'Perihan El-Hefny', 'p.elhefny@gmail.com', '20e3c7472a6f06ce8f521632b4cc0d36', '1', '', null);
INSERT INTO `user_login_info` VALUES ('406', 'Hasan HMDY', 'hmdy@live.com', '25d55ad283aa400af464c76d713c07ad', '0', '', null);
INSERT INTO `user_login_info` VALUES ('407', 'Hasano HMDY', 'hmdy2@live.com', '25d55ad283aa400af464c76d713c07ad', '0', '', null);
INSERT INTO `user_login_info` VALUES ('408', 'Hasano HMDY', 'hmd3y@live.com', '25d55ad283aa400af464c76d713c07ad', '0', '', null);
INSERT INTO `user_login_info` VALUES ('409', 'rwerwerwerwer', 'werwerwerewrw@mail.com', '25d55ad283aa400af464c76d713c07ad', '0', '', null);

-- ----------------------------
-- Table structure for `user_profile`
-- ----------------------------
DROP TABLE IF EXISTS `user_profile`;
CREATE TABLE `user_profile` (
  `ID` int(11) NOT NULL auto_increment,
  `profilePictureLink` varchar(100) default 'default-profile-pic.png',
  `userID` int(11) NOT NULL,
  `university` varchar(100) default NULL,
  `gender` varchar(10) default NULL,
  `birthday` varchar(20) default NULL,
  `hometown` varchar(30) default NULL,
  `about` mediumtext,
  `email` varchar(100) default NULL,
  `mobilephone` varchar(20) default NULL,
  `landphone` varchar(20) default NULL,
  `country` varchar(20) default NULL,
  `city` varchar(20) default NULL,
  `website` varchar(100) default NULL,
  `address` varchar(200) default NULL,
  `role` varchar(20) default NULL,
  PRIMARY KEY  (`ID`),
  UNIQUE KEY `userID` USING BTREE (`userID`)
) ENGINE=MyISAM AUTO_INCREMENT=401 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_profile
-- ----------------------------
INSERT INTO `user_profile` VALUES ('27', null, '36', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('28', '37.jpg', '37', 'Ain Shams', 'Male', '03-12-1987', null, null, 'a.zahran@live.com', '0129785839', '', 'EG', 'Cairo', 'schoolen.com', '', 'Instructor');
INSERT INTO `user_profile` VALUES ('29', '38.jpg', '38', 'Ain Shams University', 'Male', '01-03-1988', null, 'King Kong :D', 'ismail@schoolen.com', '20114504401', '', 'EG', 'Cairo', 'http://gioventy.com', 'Cairo', 'Student');
INSERT INTO `user_profile` VALUES ('30', null, '39', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('31', null, '40', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('32', null, '41', 'Ain shams University', 'Male', '15-04-1987', null, null, 'a_waheed154@hotmail.com', '0126280267', '', 'EG', 'Cairo', 'www.gioventy.com', 'Shobra', 'Student');
INSERT INTO `user_profile` VALUES ('33', null, '42', 'Cairo University', 'Female', '01-05-1991', null, null, '', '', '', 'EG', 'cairo', '', '', 'Student');
INSERT INTO `user_profile` VALUES ('34', null, '43', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('35', null, '44', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('36', null, '45', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('37', null, '46', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('38', null, '47', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('39', null, '48', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('40', null, '49', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('41', null, '50', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('42', null, '51', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('43', '52.jpg', '52', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('44', null, '53', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('45', null, '54', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('46', null, '55', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('47', '56.jpg', '56', 'Ain Shams University', 'Male', '01-10-1987', null, null, 'bahaa_500@hotmail.com', '0020102906984', '0020242242696', 'EG', 'Cairo', '', '', 'Instructor');
INSERT INTO `user_profile` VALUES ('48', null, '57', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('49', null, '58', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('50', null, '59', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('51', null, '60', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('52', null, '61', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('53', null, '62', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('54', null, '63', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('55', null, '64', 'cairo univercity', 'Female', '13-11-1989', null, 'i\'m in third year in faculty of pharmacy cairo univercity', '', '', '', 'EG', 'cairo', '', '', 'Student');
INSERT INTO `user_profile` VALUES ('56', null, '65', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('57', null, '66', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('58', null, '67', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('59', null, '68', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('60', '69.jpg', '69', '', 'Male', '11-11-1988', null, null, null, null, null, null, null, null, null, 'Student');
INSERT INTO `user_profile` VALUES ('61', null, '70', 'Ain Shams', 'Male', '08-11-1989', null, null, '', '', '', 'EG', 'cairo', '', '', 'Student');
INSERT INTO `user_profile` VALUES ('62', null, '71', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('63', '72.jpg', '72', 'Ain Shams ', 'Male', '30-10-1988', null, 'Mechatronics Engineering senior year student ', 'm.w.kandil@gmail.com', '+20129539800', '', 'EG', 'Cairo ', '', '', 'Student');
INSERT INTO `user_profile` VALUES ('64', null, '73', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('65', null, '74', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('66', '75.jpg', '75', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('67', null, '76', 'cairo univerisity', 'Female', '04-02-1991', null, null, null, null, null, null, null, null, null, 'Student');
INSERT INTO `user_profile` VALUES ('68', null, '77', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('69', null, '78', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('70', '79.jpg', '79', 'ElShorouk Academy', 'Male', '11-03-1990', null, null, 'nawito_keller@hotmail.com', '0108811234', '', 'EG', 'Cairo', 'www.facebook.com/nawito', '13 a.MeKh st.', 'Student');
INSERT INTO `user_profile` VALUES ('71', '80.jpg', '80', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('72', null, '81', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('73', null, '82', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('74', null, '83', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('75', null, '84', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('76', null, '85', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('77', '86.jpg', '86', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('78', '87.jpg', '87', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('79', null, '88', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('80', null, '89', 'Ain Shams University ', 'Female', '10-11-1991', null, null, 'death_solution@hotmail.com', '', '', 'EG', 'Cairo', '', '', 'Student');
INSERT INTO `user_profile` VALUES ('81', null, '90', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('82', null, '91', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('83', null, '92', 'faculty of pharmacy cairo university', 'Female', '06-05-1990', null, null, 'dr_amola_177@yahoo.com', '', '', 'EG', 'cairo', '', '', 'Student');
INSERT INTO `user_profile` VALUES ('84', null, '93', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('85', null, '94', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('86', '95.jpeg', '95', 'cairo university', 'Female', '20-03-2010', null, null, 'thekind_heart2007@yahoo.com', '', '', 'EG', '', '', '', 'Student');
INSERT INTO `user_profile` VALUES ('87', null, '96', 'pharmacy_cairo', 'Male', '06-04-1990', null, null, null, null, null, null, null, null, null, 'Student');
INSERT INTO `user_profile` VALUES ('88', null, '97', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('89', '98.jpg', '98', 'Cairo University', 'Male', '22-05-1990', null, null, 'x36_ultimate@yahoo.com', '', '', 'EG', '', '', '', 'Student');
INSERT INTO `user_profile` VALUES ('90', null, '99', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('91', null, '100', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('92', null, '101', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('93', null, '102', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('94', null, '103', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('95', null, '104', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('96', null, '105', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('97', null, '106', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('98', null, '107', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('99', null, '108', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('100', null, '109', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('101', null, '110', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('102', null, '111', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('103', null, '112', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('104', null, '113', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('105', null, '114', 'cairo pharmacy', 'Female', '27-10-1989', null, null, null, null, null, null, null, null, null, 'Student');
INSERT INTO `user_profile` VALUES ('106', null, '115', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('107', null, '116', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('108', null, '117', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('109', null, '118', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('110', '119.jpg', '119', 'cairo pharmacy', 'Female', '23-05-1990', null, null, 'dr_nemo_22@yahoo.com', '', '', 'EG', 'giza', '', '', 'Student');
INSERT INTO `user_profile` VALUES ('111', null, '120', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('112', null, '121', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('113', null, '122', 'Cairo University', 'Male', '12-05-1990', null, null, 'drmody_pharma@yahoo.com', '', '', 'EG', '', '', '', 'Student');
INSERT INTO `user_profile` VALUES ('114', '123.jpg', '123', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('115', null, '124', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('116', null, '125', null, null, null, null, null, 'dinarashad185@hotmail.com', '', '', 'EG', 'cairo', '', '', null);
INSERT INTO `user_profile` VALUES ('117', null, '126', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('118', null, '127', '', 'Male', '16-12-1990', null, null, null, null, null, null, null, null, null, 'Student');
INSERT INTO `user_profile` VALUES ('119', null, '128', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('120', '129.gif', '129', 'cairo university', 'Female', '10-12-1990', null, null, 'd_princess11@ymail.com', '', '', 'EG', 'cairo', '', '', 'Student');
INSERT INTO `user_profile` VALUES ('121', null, '130', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('122', null, '131', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('123', '132.jpg', '132', 'FOPCU', 'Male', '26-03-1991', null, null, 'dr.mn@windowslive.com', '', '', 'EG', '', '', '', 'Student');
INSERT INTO `user_profile` VALUES ('124', null, '133', 'cairo', 'Female', '27-08-1990', null, null, 'red_rose_890@yahoo.com', '', '', 'EG', '', '', '', 'Student');
INSERT INTO `user_profile` VALUES ('125', null, '134', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('126', null, '135', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('127', null, '136', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('128', null, '137', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('129', null, '138', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('130', null, '139', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('131', null, '140', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('132', null, '141', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('133', null, '142', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('134', null, '143', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('135', null, '144', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('136', null, '145', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('137', '146.jpg', '146', 'cairo university', 'Female', '08-09-1990', null, null, 'molimoon_90@yahoo.com', '', '', 'EG', 'cairo', '', '', 'Student');
INSERT INTO `user_profile` VALUES ('138', null, '147', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('139', null, '148', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('140', null, '149', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('141', '150.gif', '150', 'cairo university', 'Female', '10-12-1990', null, null, 'dr.amiraibrahim@yahoo.com', '', '', 'EG', 'cairo', '', '', 'Student');
INSERT INTO `user_profile` VALUES ('142', null, '151', 'Cairo University', 'Male', '17-09-1990', null, null, 'mike-333@hotmail.com', '', '', 'EG', '', '', 'Cairo', 'Student');
INSERT INTO `user_profile` VALUES ('143', null, '152', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('144', null, '153', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('145', null, '154', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('146', null, '155', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('147', null, '156', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('148', null, '157', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('149', null, '158', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('150', null, '159', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('151', null, '160', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('152', null, '161', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('153', null, '162', 'Ain Shams', 'Male', '11-03-2010', null, null, null, null, null, null, null, null, null, 'Student');
INSERT INTO `user_profile` VALUES ('154', null, '163', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('155', null, '164', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('156', null, '165', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('157', null, '166', 'Ain Shams', 'Male', '11-03-2010', null, null, '', '', '', 'EG', '', '', '', 'Student');
INSERT INTO `user_profile` VALUES ('158', null, '167', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('159', null, '168', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('160', null, '169', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('161', null, '170', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('162', null, '171', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('163', null, '172', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('164', null, '173', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('165', null, '174', 'cairo', 'Female', '09-04-1990', null, null, null, null, null, null, null, null, null, 'Student');
INSERT INTO `user_profile` VALUES ('166', null, '175', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('167', null, '176', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('168', null, '177', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('169', null, '178', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('170', null, '179', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('171', null, '180', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('172', '181.jpg', '181', 'faculty of pharmacy cairo university', 'Female', '11-03-2010', null, null, null, null, null, null, null, null, null, 'Student');
INSERT INTO `user_profile` VALUES ('173', null, '182', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('174', null, '183', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('175', '184.jpg', '184', 'cairo', 'Male', '23-07-1990', null, null, null, null, null, null, null, null, null, 'Student');
INSERT INTO `user_profile` VALUES ('176', null, '185', 'faculty of pharmacy cairo university', 'Male', '16-03-1990', null, null, '', '', '', 'EG', 'cairo', '', '', 'Student');
INSERT INTO `user_profile` VALUES ('177', '186.jpg', '186', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('178', null, '187', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('179', null, '188', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('180', null, '189', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('181', null, '190', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('182', null, '191', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('183', null, '192', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('184', null, '193', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('185', null, '194', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('186', null, '195', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('187', null, '196', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('188', null, '197', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('189', null, '198', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('190', null, '199', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('191', null, '200', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('192', null, '201', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('193', '202.jpg', '202', 'Cairo', 'Male', '13-09-1990', null, null, null, null, null, null, null, null, null, 'Student');
INSERT INTO `user_profile` VALUES ('194', null, '203', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('195', null, '204', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('196', '205.jpg', '205', 'cairo', 'Male', '01-11-1990', null, null, 'zeiny90@hotmail.com', '+20109142000', '', 'EG', 'cairo', '', '', 'Student');
INSERT INTO `user_profile` VALUES ('197', null, '206', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('210', null, '219', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('211', null, '220', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('212', null, '221', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('213', null, '222', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('214', null, '223', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('215', null, '224', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('216', null, '225', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('217', null, '226', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('218', null, '227', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('219', null, '228', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('220', null, '229', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('221', null, '230', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('222', '231.jpg', '231', 'Faculty of Pharmacy Cairo university', 'Female', '19-05-1990', null, null, 'dr.konafa@yahoo.com', '', '', 'EG', 'cairo', '', '', 'Student');
INSERT INTO `user_profile` VALUES ('223', null, '232', 'ASU', 'Male', '12-03-2010', null, '', null, null, null, null, null, null, null, 'Student');
INSERT INTO `user_profile` VALUES ('224', '233.jpg', '233', 'cairo university faculty of pharmacy', 'Female', '27-09-1990', null, null, 'manar027@hotmail.com', '', '', 'EG', '', '', '', 'Student');
INSERT INTO `user_profile` VALUES ('225', null, '234', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('226', null, '235', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('227', null, '236', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('228', '237.jpg', '237', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('229', null, '238', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('230', null, '239', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('231', null, '240', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('232', null, '241', 'faculity of pharmacy cairo university', 'Male', '01-06-1990', null, null, '', '', '', 'EG', '', '', '', 'Student');
INSERT INTO `user_profile` VALUES ('233', null, '242', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('234', null, '243', '', 'Female', '17-01-1991', null, null, null, null, null, null, null, null, null, 'Student');
INSERT INTO `user_profile` VALUES ('235', null, '244', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('236', null, '245', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('237', null, '246', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('238', '247.jpg', '247', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('239', null, '248', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('240', null, '249', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('241', null, '250', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('242', null, '251', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('243', null, '252', 'Ainshams', 'Male', '08-07-1988', null, null, 'mostafa.a.shadoufa@gmail.com', '', '', 'EG', 'Cairo', '', '', 'Student');
INSERT INTO `user_profile` VALUES ('244', null, '253', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('245', null, '254', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('246', null, '255', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('247', null, '256', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('248', null, '257', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('249', null, '258', 'Ain Shams Uni.', 'Male', '08-07-1984', null, null, 'elshimy1984@yahoo.com', '+20168906267', '+20222044285', 'EG', 'Cairo', '', '23 Mahmoud Younis St. -- ElKahlafawy -- Shoubra', 'Student');
INSERT INTO `user_profile` VALUES ('250', null, '259', 'Ain shams', 'Male', '30-09-1987', null, null, null, null, null, null, null, null, null, 'Student');
INSERT INTO `user_profile` VALUES ('251', null, '260', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('252', '261.jpg', '261', '', 'Female', '17-11-1990', null, null, null, null, null, null, null, null, null, 'Student');
INSERT INTO `user_profile` VALUES ('253', null, '262', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('254', null, '263', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('255', null, '264', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('256', null, '265', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('257', '266.jpg', '266', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('258', null, '267', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('259', null, '268', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('260', null, '269', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('261', null, '270', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('262', null, '271', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('263', null, '272', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('264', null, '273', 'ain shams', 'Male', '02-03-1985', null, null, null, null, null, null, null, null, null, 'Student');
INSERT INTO `user_profile` VALUES ('265', null, '274', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('266', null, '275', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('267', null, '276', 'Ainshams University', 'Male', '08-04-1987', null, null, 'heshammahmoud1@hotmail.com', '0103565934', '', 'EG', 'Cairo', '', '', 'Student');
INSERT INTO `user_profile` VALUES ('268', null, '277', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('269', null, '278', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('270', null, '279', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('271', null, '280', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('272', null, '281', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('273', null, '282', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('274', null, '283', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('275', null, '284', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('276', null, '285', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('277', null, '286', '', 'Female', '08-05-1993', null, '', '', '', '', 'AF', '', '', '', 'Student');
INSERT INTO `user_profile` VALUES ('278', null, '287', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('279', null, '288', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('280', null, '289', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('281', null, '290', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('282', null, '291', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('283', null, '292', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('284', null, '293', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('285', null, '294', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('286', null, '295', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('287', null, '296', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('288', null, '297', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('289', null, '298', null, null, null, null, '', null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('290', null, '299', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('291', null, '300', '', 'Male', '28-02-1990', null, null, null, null, null, null, null, null, null, 'Student');
INSERT INTO `user_profile` VALUES ('292', null, '301', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('293', null, '302', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('294', null, '303', 'Ain Shams', 'Male', '26-10-1988', null, null, 'mahmoudmeligui@gmail.com', '', '', 'EG', 'Cairo', '', '401 Ramsses St., Abbassia', 'Student');
INSERT INTO `user_profile` VALUES ('295', null, '304', 'AIN SHAMS UNIVERSTY\'11-FACULTY OF ENGINEER-ARCHITECTURE DEPARTEMENT', 'Female', '15-12-1988', null, null, 'eng.marwahamdy@gmail.com', '', '', 'EG', 'cairo', '', '', 'Student');
INSERT INTO `user_profile` VALUES ('296', null, '305', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('297', null, '306', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('298', null, '307', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('299', null, '308', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('300', null, '309', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('301', null, '310', '', 'Male', '24-04-1983', null, null, 'kamal_468@yahoo.com', '', '', 'EG', '', '', '', 'Student');
INSERT INTO `user_profile` VALUES ('302', null, '311', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('303', null, '312', 'Ain Shams', 'Male', '07-09-1988', null, null, 'sherif_gomaa@hotmail.com', '', '', 'EG', '', '', '', 'Student');
INSERT INTO `user_profile` VALUES ('304', null, '313', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('305', null, '314', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('306', null, '315', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('307', null, '316', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('308', null, '317', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('309', null, '318', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('310', null, '319', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('311', null, '320', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('312', null, '321', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('313', null, '322', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('314', null, '323', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('315', null, '324', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('316', null, '325', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('317', null, '326', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('318', null, '327', 'Ain Shams ', 'Female', '11-09-1988', null, null, '', '', '', 'EG', '', '', '', 'Student');
INSERT INTO `user_profile` VALUES ('319', null, '328', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('320', null, '329', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('321', null, '330', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('322', null, '331', 'ain shams university faculty of engineering', 'Male', '24-11-1987', null, null, 'aaaahmedatef@hotmail.com', '0104743827', '202 26338701', 'EG', 'cairo', '', '98 osman ben affan heliopolis ,triumph ', 'Student');
INSERT INTO `user_profile` VALUES ('323', null, '332', 'Ain Shams University', 'Male', '29-10-1988', null, null, '', '', '', 'EG', 'Cairo', '', '', 'Student');
INSERT INTO `user_profile` VALUES ('324', null, '333', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('325', null, '334', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('326', null, '335', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('327', null, '336', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('328', null, '337', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('329', null, '338', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('330', null, '339', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('331', '340.jpg', '340', 'Ain AHms University', 'Male', '25-12-1986', null, '', null, null, null, null, null, null, null, 'Student');
INSERT INTO `user_profile` VALUES ('332', null, '341', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('333', null, '342', '', 'Female', '31-03-1990', null, null, null, null, null, null, null, null, null, 'Student');
INSERT INTO `user_profile` VALUES ('334', null, '343', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('335', null, '344', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('336', null, '345', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('337', null, '346', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('338', '347.jpg', '347', 'AAST', 'Female', '04-04-1987', null, '', null, null, null, null, null, null, null, 'Student');
INSERT INTO `user_profile` VALUES ('339', null, '348', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('340', null, '349', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('341', null, '350', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('342', null, '351', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('343', null, '352', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('344', null, '353', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('345', null, '354', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('346', null, '355', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('347', '356.jpg', '356', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('348', null, '357', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('349', null, '358', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('350', null, '359', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('351', null, '360', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('352', null, '361', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('353', null, '362', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('354', null, '363', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('355', null, '364', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('356', null, '365', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('357', null, '366', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('358', null, '367', null, null, null, null, null, '', '', '', 'EG', 'cairo', '', '', null);
INSERT INTO `user_profile` VALUES ('359', '368.jpg', '368', 'Ain Shams University', 'Male', '09-09-1989', null, null, 'besso_000@hotmail.com', '0020100311152', '0020226906548', 'EG', 'Cairo', 'http://www.facebook.com/home.php?#!/bassem.ismael', '85 , Horya St.,', 'Student');
INSERT INTO `user_profile` VALUES ('360', null, '369', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('361', null, '370', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('362', null, '371', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('363', null, '372', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('364', null, '373', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('365', null, '374', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('366', '375.jpg', '375', 'University of Cambridge', 'Male', '12-10-1990', null, null, 'amrsohil2000@gmail.com', '0112534287', '', 'EG', 'cairo', 'www.webxd.co.cc', '37 almaza', 'Student');
INSERT INTO `user_profile` VALUES ('367', null, '376', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('368', null, '377', 'AinShamsUniv. Computer Engineering', 'Male', '13-11-1988', null, null, 'mahmoudashrafmohamed@hotmail.com', '', '', 'EG', 'Cairo', '', '', 'Instructor');
INSERT INTO `user_profile` VALUES ('369', null, '378', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('370', null, '379', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('371', null, '380', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('372', null, '381', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('373', null, '382', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('374', null, '383', 'M.I.U', 'Male', '05-08-1988', null, null, 'virus_of.love@hotmail.com', '', '', 'EG', 'Cairo', '', '', 'Student');
INSERT INTO `user_profile` VALUES ('375', null, '384', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('376', null, '385', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('377', null, '386', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('378', null, '387', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('379', null, '388', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('380', null, '389', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('381', null, '390', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('382', '391.jpg', '391', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('383', null, '392', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('384', null, '393', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('385', null, '394', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('386', null, '395', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('387', null, '396', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('388', null, '397', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('389', '398.JPG', '398', 'HTI', 'Male', '04-12-1987', null, 'If you think that you are a smart ass then you are a screw up.\r\nif you think that you are on of kind then you are hated and screw up!!!!\r\nif you think to much then you do less.\r\nthus my words to humanity ((Lord Azabath))', 'dread-bmr@live.com', '', '', 'EG', 'Cairo', '', '', 'Student');
INSERT INTO `user_profile` VALUES ('390', '399.gif', '399', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('391', null, '400', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('392', '401.jpg', '401', 'Ain Shams', 'Female', '25-12-1988', null, null, null, null, null, null, null, null, null, 'Student');
INSERT INTO `user_profile` VALUES ('393', null, '402', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('394', null, '403', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('395', '404.gif', '404', null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_profile` VALUES ('396', null, '405', 'Ain Shams University', 'Female', '14-10-1990', null, null, '', '', '', 'EG', 'cairo', '', '', 'Student');
INSERT INTO `user_profile` VALUES ('397', 'default-profile-pic.png', '406', null, null, null, null, null, null, null, null, null, null, null, null, 'Student');
INSERT INTO `user_profile` VALUES ('398', 'default-profile-pic.png', '407', null, null, null, null, null, null, null, null, null, null, null, null, 'Student');
INSERT INTO `user_profile` VALUES ('399', 'default-profile-pic.png', '408', null, null, null, null, null, null, null, null, null, null, null, null, 'Student');
INSERT INTO `user_profile` VALUES ('400', 'default-profile-pic.png', '409', null, null, null, null, null, null, null, null, null, null, null, null, 'Student');

-- ----------------------------
-- Table structure for `vote`
-- ----------------------------
DROP TABLE IF EXISTS `vote`;
CREATE TABLE `vote` (
  `ID` int(10) NOT NULL auto_increment,
  `PollID` int(10) NOT NULL,
  `Content` varchar(100) NOT NULL,
  `NSelected` int(4) NOT NULL,
  PRIMARY KEY  (`ID`),
  KEY `poll-answer` (`PollID`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vote
-- ----------------------------
INSERT INTO `vote` VALUES ('1', '1', 'A new vote', '12');
INSERT INTO `vote` VALUES ('2', '1', 'A new vote', '12');
INSERT INTO `vote` VALUES ('3', '2', '1', '13');
INSERT INTO `vote` VALUES ('4', '2', '2', '12');
INSERT INTO `vote` VALUES ('5', '2', '3', '13');
INSERT INTO `vote` VALUES ('6', '5', 'choice 1', '13');
INSERT INTO `vote` VALUES ('7', '5', 'choice 2', '13');
INSERT INTO `vote` VALUES ('8', '5', 'choice 3', '123');
INSERT INTO `vote` VALUES ('9', '4', '1', '0');
INSERT INTO `vote` VALUES ('10', '4', '2', '0');
INSERT INTO `vote` VALUES ('11', '4', '3', '0');
INSERT INTO `vote` VALUES ('12', '7', 'hhh', '0');
INSERT INTO `vote` VALUES ('13', '7', 'hhhh', '0');
INSERT INTO `vote` VALUES ('14', '7', '3', '0');
INSERT INTO `vote` VALUES ('15', '8', 'Yes', '1');
INSERT INTO `vote` VALUES ('16', '8', 'of course', '1');
INSERT INTO `vote` VALUES ('17', '9', 'Yes', '1');
INSERT INTO `vote` VALUES ('18', '9', 'No', '0');

-- ----------------------------
-- Table structure for `vote_user`
-- ----------------------------
DROP TABLE IF EXISTS `vote_user`;
CREATE TABLE `vote_user` (
  `PollID` int(10) NOT NULL,
  `UserID` int(11) NOT NULL,
  PRIMARY KEY  (`PollID`,`UserID`),
  KEY `user` (`UserID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vote_user
-- ----------------------------
INSERT INTO `vote_user` VALUES ('8', '37');
INSERT INTO `vote_user` VALUES ('8', '38');
INSERT INTO `vote_user` VALUES ('9', '37');
