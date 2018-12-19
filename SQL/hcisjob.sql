-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- โฮสต์: localhost
-- เวลาในการสร้าง: 
-- รุ่นของเซิร์ฟเวอร์: 5.0.51
-- รุ่นของ PHP: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- ฐานข้อมูล: `hcisjob`
-- 

-- --------------------------------------------------------

-- 
-- โครงสร้างตาราง `device`
-- 

CREATE TABLE `device` (
  `DEVICEID` int(11) NOT NULL,
  `NAME` varchar(150) default NULL,
  `VARCODE` varchar(150) default NULL,
  `CANCELDATE` datetime default NULL,
  `REMARK` varchar(150) default NULL,
  PRIMARY KEY  (`DEVICEID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- dump ตาราง `device`
-- 

INSERT INTO `device` VALUES (1, 'โปรแกรม Software', 'SW', NULL, NULL);
INSERT INTO `device` VALUES (2, 'อุปกรณ์ Hardware', 'HW', NULL, NULL);

-- --------------------------------------------------------

-- 
-- โครงสร้างตาราง `jobstatus`
-- 

CREATE TABLE `jobstatus` (
  `STID` int(11) NOT NULL,
  `NAME` varchar(150) default NULL,
  `VARCODE` varchar(150) default NULL,
  `REMARK` varchar(150) default NULL,
  PRIMARY KEY  (`STID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- dump ตาราง `jobstatus`
-- 

INSERT INTO `jobstatus` VALUES (1, 'รอดำเนินการ', NULL, NULL);
INSERT INTO `jobstatus` VALUES (2, 'อยู่ระหว่างดำเนินการ', NULL, NULL);
INSERT INTO `jobstatus` VALUES (3, 'เรียบร้อย', NULL, NULL);

-- --------------------------------------------------------

-- 
-- โครงสร้างตาราง `jobvst`
-- 

CREATE TABLE `jobvst` (
  `SID` int(11) NOT NULL,
  `JOBID` int(11) NOT NULL,
  `JOBDATE` datetime NOT NULL,
  `USERREC` varchar(150) default NULL,
  `DEVICEID` int(11) default NULL,
  `PROBLEMID` int(11) default NULL,
  `CAUSEDT` varchar(250) default NULL,
  `JOBDT` varchar(250) default NULL,
  `JOBEDITION` varchar(250) default NULL,
  `OFFICER` varchar(150) default NULL,
  `TEL` varchar(150) default NULL,
  `JOBST` int(11) default NULL,
  `FMDDATE` datetime default NULL,
  `LMDDATE` datetime default NULL,
  `ENDDATE` datetime NOT NULL,
  `CANCELDATE` datetime default NULL,
  `REMARK` varchar(250) default NULL,
  PRIMARY KEY  (`JOBID`,`JOBDATE`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- dump ตาราง `jobvst`
-- 

INSERT INTO `jobvst` VALUES (1, 590000001, '2016-10-26 22:18:42', 'ทดสอบ', 1, NULL, NULL, 'ทดสอบ', NULL, 'บุญเจตน์ มาละการ ', '098', 1, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL);
INSERT INTO `jobvst` VALUES (1, 590000002, '2016-10-26 22:21:28', 'ทดสอบ2', 1, 1, 'ทดสอบ', 'ทดสอบ2', 'แก้ๆๆ', 'บุญเจตน์ มาละการ ', '0999', 2, '2016-10-26 22:55:43', '2016-10-27 12:01:25', '0000-00-00 00:00:00', NULL, NULL);
INSERT INTO `jobvst` VALUES (1, 590000003, '2016-10-26 22:21:58', 'ทดสอบ3', 1, NULL, NULL, 'ทดสอบ3', NULL, 'บุญเจตน์ มาละการ ', '555', 1, NULL, NULL, '0000-00-00 00:00:00', '2016-10-26 22:39:34', NULL);

-- --------------------------------------------------------

-- 
-- โครงสร้างตาราง `login_log`
-- 

CREATE TABLE `login_log` (
  `LOG_ID` int(11) NOT NULL auto_increment,
  `SID` int(11) default NULL,
  `PHISID` int(11) default NULL,
  `STAFF` int(11) default NULL,
  `NAME` varchar(150) default NULL,
  `LOGIN_TIME` datetime default NULL,
  PRIMARY KEY  (`LOG_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

-- 
-- dump ตาราง `login_log`
-- 

INSERT INTO `login_log` VALUES (1, 999, 999, 1001, 'บุญเจตน์ มาละการ ', '2016-10-26 20:54:26');
INSERT INTO `login_log` VALUES (2, 999, 999, 1001, 'บุญเจตน์ มาละการ ', '2016-10-26 21:01:07');
INSERT INTO `login_log` VALUES (3, 999, 999, 1001, 'บุญเจตน์ มาละการ ', '2016-10-26 21:02:51');
INSERT INTO `login_log` VALUES (4, 999, 999, 1001, 'บุญเจตน์ มาละการ ', '2016-10-26 21:05:56');
INSERT INTO `login_log` VALUES (5, 999, 999, 1001, 'บุญเจตน์ มาละการ ', '2016-10-26 21:08:29');
INSERT INTO `login_log` VALUES (6, 999, 999, 1001, 'บุญเจตน์ มาละการ ', '2016-10-26 21:22:04');
INSERT INTO `login_log` VALUES (7, 999, 999, 1001, 'บุญเจตน์ มาละการ ', '2016-10-26 22:22:43');
INSERT INTO `login_log` VALUES (8, 999, 999, 1001, 'บุญเจตน์ มาละการ ', '2016-10-26 23:27:06');
INSERT INTO `login_log` VALUES (9, 999, 999, 1001, 'บุญเจตน์ มาละการ ', '2016-10-27 01:31:55');
INSERT INTO `login_log` VALUES (10, 999, 999, 1001, 'บุญเจตน์ มาละการ ', '2016-10-27 08:50:33');
INSERT INTO `login_log` VALUES (11, 999, 1016, 59999016, 'บุญเจตน์ มาละการ ', '2016-10-27 10:59:30');
INSERT INTO `login_log` VALUES (12, 999, 1001, 59999001, 'กนกภรณ์ อุดมเดช ', '2016-10-27 11:00:07');
INSERT INTO `login_log` VALUES (13, 999, 1012, 59999012, 'มนัสชัย ปรีชาหาญ ', '2016-10-27 11:02:00');
INSERT INTO `login_log` VALUES (14, 999, 1016, 59999016, 'บุญเจตน์ มาละการ ', '2016-10-27 11:07:05');
INSERT INTO `login_log` VALUES (15, 999, 999, 1000, 'บุญเจตน์ มาละการ ', '2016-10-27 11:10:28');
INSERT INTO `login_log` VALUES (16, 999, 1016, 59999016, 'บุญเจตน์ มาละการ ', '2016-10-27 11:20:46');
INSERT INTO `login_log` VALUES (17, 999, 1016, 59999016, 'บุญเจตน์ มาละการ ', '2016-10-27 11:44:12');
INSERT INTO `login_log` VALUES (18, 999, 1016, 59999016, 'บุญเจตน์ มาละการ ', '2016-10-27 11:55:12');
INSERT INTO `login_log` VALUES (19, 999, 1016, 59999016, 'บุญเจตน์ มาละการ ', '2016-10-27 13:08:13');

-- --------------------------------------------------------

-- 
-- โครงสร้างตาราง `phis_user`
-- 

CREATE TABLE `phis_user` (
  `SID` int(11) default NULL,
  `PHISID` int(11) NOT NULL,
  `STAFF` int(100) default NULL,
  `USERID` varchar(150) default NULL,
  `PASSWD` varchar(50) default NULL,
  `SECTION` int(11) default NULL,
  `PREFIX` int(11) default NULL,
  `FNAME` varchar(150) default NULL,
  `LNAME` varchar(150) default NULL,
  `USERLEVEL` int(11) default NULL,
  `FLAG` int(11) default NULL,
  `RGTDATE` datetime default NULL,
  `CANCELDATE` datetime default NULL,
  `REMARK` varchar(250) default NULL,
  PRIMARY KEY  (`PHISID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- dump ตาราง `phis_user`
-- 

INSERT INTO `phis_user` VALUES (1, 1, 1000, 'boonjat', 'hcis', NULL, 1, 'บุญเจตน์', 'มาละการ', 2, NULL, '2015-10-01 09:56:49', NULL, NULL);
INSERT INTO `phis_user` VALUES (999, 1005, 59999005, '58079', '58079', NULL, 1, 'รัฐภัทร', 'เมฆลาย', 2, NULL, '2015-10-01 09:56:49', NULL, NULL);
INSERT INTO `phis_user` VALUES (999, 1004, 59999004, '58052', '58052', NULL, 1, 'พฤกษภา', 'พฤกษเมธาพันธ์', 2, NULL, '2015-10-01 09:56:49', NULL, NULL);
INSERT INTO `phis_user` VALUES (999, 1003, 59999003, '58044', '58044', NULL, 1, 'ประเดิม', 'วงค์กระโซ่', 1, NULL, '2015-10-01 09:56:49', NULL, NULL);
INSERT INTO `phis_user` VALUES (999, 1002, 59999002, '58036', '58028', NULL, 2, 'นิศากร', 'ปานเจริญ', 2, NULL, '2015-10-01 09:56:49', NULL, NULL);
INSERT INTO `phis_user` VALUES (999, 1001, 59999001, '58010', '58010', NULL, 2, 'กนกภรณ์', 'อุดมเดช', 2, NULL, '2015-10-01 09:56:49', NULL, NULL);
INSERT INTO `phis_user` VALUES (999, 1006, 59999006, '58087', '58087', NULL, 2, 'วราภรณ์', 'อารมย์สุข', 2, NULL, '2015-10-01 09:56:49', NULL, NULL);
INSERT INTO `phis_user` VALUES (999, 1007, 59999007, '58095', '58095', NULL, 2, 'วิมลมาศ', 'เมืองแก้ว', 1, NULL, '2015-10-01 09:56:49', NULL, NULL);
INSERT INTO `phis_user` VALUES (999, 1008, 59999008, '58109', '58109', NULL, 2, 'สุณิษา', 'จักร์เขื่อน', 1, NULL, '2015-10-01 09:56:49', NULL, NULL);
INSERT INTO `phis_user` VALUES (999, 1009, 59999009, '58117', '58117', NULL, 1, 'เสริมพงศ์', 'ภูมิภักดีพรรณ', 2, NULL, '2015-10-01 09:56:49', NULL, NULL);
INSERT INTO `phis_user` VALUES (999, 1010, 59999010, '58125', '58125', NULL, 1, 'อภิชาต', 'แก้วศรีปราชญ์', 1, NULL, '2015-10-01 09:56:49', NULL, NULL);
INSERT INTO `phis_user` VALUES (999, 1011, 59999011, '58133', '58133', NULL, 2, 'อรสา', 'ลิ้มพาภรณ์', 1, NULL, '2015-10-01 09:56:49', NULL, NULL);
INSERT INTO `phis_user` VALUES (999, 1012, 59999012, '58150', '58150', NULL, 1, 'มนัสชัย', 'ปรีชาหาญ', 2, NULL, '2015-10-01 09:56:49', NULL, NULL);
INSERT INTO `phis_user` VALUES (999, 1013, 59999013, '58168', '58168', NULL, 1, 'เมธานนท์', 'จงไกรจักร', 2, NULL, '2015-10-01 09:56:49', NULL, NULL);
INSERT INTO `phis_user` VALUES (999, 1014, 59999014, '58184', '58184', NULL, 1, 'ศิริบดี', 'จงวิบูลทรัพย์', 2, NULL, '2015-10-01 09:56:49', NULL, NULL);
INSERT INTO `phis_user` VALUES (999, 1015, 59999015, '58192', '58192', NULL, 1, 'นิทัศน์', 'ประสมทรัพย์', 1, NULL, '2015-10-01 09:56:49', NULL, NULL);
INSERT INTO `phis_user` VALUES (999, 1016, 59999016, '58206', '58206', NULL, 1, 'บุญเจตน์', 'มาละการ', 1, NULL, '2015-10-01 09:56:49', NULL, NULL);

-- --------------------------------------------------------

-- 
-- โครงสร้างตาราง `phis_usercenter`
-- 

CREATE TABLE `phis_usercenter` (
  `SID` int(11) default NULL,
  `PHISID` int(11) NOT NULL auto_increment,
  `STAFF` int(11) default NULL,
  `USERID` varchar(150) default NULL,
  `PASSWD` varchar(50) default NULL,
  `SECTION` int(11) default NULL,
  `PREFIX` int(11) default NULL,
  `FNAME` varchar(150) default NULL,
  `LNAME` varchar(150) default NULL,
  `USERLEVEL` int(11) default NULL,
  `FLAG` int(11) default NULL,
  `RGTDATE` datetime default NULL,
  `CANCELDATE` datetime default NULL,
  `REMARK` varchar(250) default NULL,
  PRIMARY KEY  (`PHISID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- dump ตาราง `phis_usercenter`
-- 

INSERT INTO `phis_usercenter` VALUES (1, 1, 59010001, 'call', 'call', NULL, 1, 'นาย คอลเซ็นเตอร์', 'ระบบ', 99, NULL, '2016-10-27 11:24:13', NULL, NULL);
INSERT INTO `phis_usercenter` VALUES (3, 2, 59030001, 'sw', 'sw', NULL, 1, 'นาย ซอฟต์แวด์', 'ระบบ', 99, NULL, '2016-10-27 11:45:01', NULL, NULL);

-- --------------------------------------------------------

-- 
-- โครงสร้างตาราง `pname`
-- 

CREATE TABLE `pname` (
  `PNAME` int(11) NOT NULL,
  `NAME` varchar(150) default NULL,
  `MALE` smallint(6) default NULL,
  `VARCODE` varchar(150) default NULL,
  `CANCELDATE` datetime default NULL,
  PRIMARY KEY  (`PNAME`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- dump ตาราง `pname`
-- 

INSERT INTO `pname` VALUES (1, 'นาย', 1, 'mister', NULL);
INSERT INTO `pname` VALUES (2, 'นส.', 2, 'miss', NULL);
INSERT INTO `pname` VALUES (3, 'นาง', 2, 'missis', NULL);

-- --------------------------------------------------------

-- 
-- โครงสร้างตาราง `problem`
-- 

CREATE TABLE `problem` (
  `PROBLEMID` int(11) NOT NULL,
  `NAME` varchar(150) default NULL,
  `VARCODE` varchar(150) default NULL,
  `CNCLDATE` datetime default NULL,
  `REMARK` varchar(150) default NULL,
  PRIMARY KEY  (`PROBLEMID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- dump ตาราง `problem`
-- 

INSERT INTO `problem` VALUES (1, ' การขอเพิ่ม', NULL, NULL, NULL);
INSERT INTO `problem` VALUES (2, ' ปัญหา Performance ของเครื่อง Server', NULL, NULL, NULL);
INSERT INTO `problem` VALUES (3, 'ปัญหา System', NULL, NULL, NULL);
INSERT INTO `problem` VALUES (4, 'ปัญหาการ Config', NULL, NULL, NULL);
INSERT INTO `problem` VALUES (5, 'ปัญหาการเชื่อมกับระบบงานภายนอก', NULL, NULL, NULL);
INSERT INTO `problem` VALUES (6, 'ปัญหาการออกรายงาน', NULL, NULL, NULL);
INSERT INTO `problem` VALUES (7, ' ปัญหาของข้อมูล', NULL, NULL, NULL);
INSERT INTO `problem` VALUES (8, ' ปัญหาของโปรแกรม', NULL, NULL, NULL);
INSERT INTO `problem` VALUES (9, ' ปัญหาเครือข่าย/การเชื่อมต่อ', NULL, NULL, NULL);
INSERT INTO `problem` VALUES (10, 'ปัญหาที่เกิดจากผู้ใช้งาน', NULL, NULL, NULL);
INSERT INTO `problem` VALUES (11, 'สอบถามข้อมูล', NULL, NULL, NULL);
INSERT INTO `problem` VALUES (12, 'อื่นๆ', NULL, NULL, NULL);

-- --------------------------------------------------------

-- 
-- โครงสร้างตาราง `role`
-- 

CREATE TABLE `role` (
  `ROLEID` int(11) NOT NULL,
  `NAME` varchar(150) default NULL,
  `VARCODE` varchar(150) default NULL,
  `CANCELDATE` datetime default NULL,
  `REMARK` varchar(250) default NULL,
  PRIMARY KEY  (`ROLEID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- dump ตาราง `role`
-- 

INSERT INTO `role` VALUES (1, 'ผู้ดูแลระบบ', 'ADMIN', NULL, NULL);
INSERT INTO `role` VALUES (2, 'ผู้บริหาร', 'PM', NULL, NULL);
INSERT INTO `role` VALUES (3, 'หัวหน้างาน', 'HEADOFFICE', NULL, NULL);
INSERT INTO `role` VALUES (4, 'หัวหน้างาน support', 'HEADSUPPORT', NULL, NULL);
INSERT INTO `role` VALUES (99, 'ผู้ใช้งานทั่วไป', 'USER', NULL, NULL);

-- --------------------------------------------------------

-- 
-- โครงสร้างตาราง `section`
-- 

CREATE TABLE `section` (
  `SECID` int(11) NOT NULL,
  `NAME` varchar(150) default NULL,
  `VARCODE` varchar(150) default NULL,
  `CANCELDATE` datetime default NULL,
  `REMARK` varchar(250) default NULL,
  PRIMARY KEY  (`SECID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- dump ตาราง `section`
-- 

INSERT INTO `section` VALUES (1, 'คอลเซ็นเตอร์', NULL, NULL, NULL);
INSERT INTO `section` VALUES (2, 'ฝ่ายขาย', NULL, NULL, NULL);
INSERT INTO `section` VALUES (3, 'ฮาร์ดแวด์', NULL, NULL, NULL);
INSERT INTO `section` VALUES (4, 'ช่างซ่อม', NULL, NULL, NULL);
INSERT INTO `section` VALUES (5, 'บริการลูกค้า', NULL, NULL, NULL);

-- --------------------------------------------------------

-- 
-- โครงสร้างตาราง `sid`
-- 

CREATE TABLE `sid` (
  `SID` int(11) NOT NULL,
  `SIDNO` int(11) default NULL,
  `ABBR` varchar(150) default NULL,
  `NAME` varchar(150) default NULL,
  PRIMARY KEY  (`SID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- dump ตาราง `sid`
-- 

INSERT INTO `sid` VALUES (1, 100, 'แผนก', 'คอลเซ็นเตอร์ (CallCenter)');
INSERT INTO `sid` VALUES (999, 999, NULL, 'ผู้บริหาร / ผู้ดูแลระบบ');
INSERT INTO `sid` VALUES (2, 200, 'แผนก', 'ฝ่ายขาย (Sale)');
INSERT INTO `sid` VALUES (3, 300, 'แผนก', 'ซอฟต์แวด์ (Software)');
INSERT INTO `sid` VALUES (4, 400, 'แผนก', 'ฮาร์ดแวด์ (Hardware)');
INSERT INTO `sid` VALUES (5, 500, 'แผนก', 'บริการลูกค้า (Customer Serviec)');
