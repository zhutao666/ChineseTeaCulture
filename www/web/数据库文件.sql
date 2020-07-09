-- phpMyAdmin SQL Dump
-- version 2.10.2
-- http://www.phpmyadmin.net
-- 
-- 主机: localhost
-- 生成日期: 2017 年 08 月 27 日 01:36
-- 服务器版本: 5.0.45
-- PHP 版本: 5.2.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- 数据库: `company`
-- 

-- --------------------------------------------------------

-- 
-- 表的结构 `admin`
-- 

CREATE TABLE `admin` (
  `id` int(11) NOT NULL auto_increment COMMENT '管理员id',
  `admin_name` varchar(50) default NULL COMMENT '管理员帐号',
  `admin_pass` varchar(50) default NULL COMMENT '管理员密码',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

-- 
-- 导出表中的数据 `admin`
-- 

INSERT INTO `admin` VALUES (1, 'admin', 'admin');

-- --------------------------------------------------------

-- 
-- 表的结构 `article`
-- 

CREATE TABLE `article` (
  `id` int(11) NOT NULL auto_increment COMMENT '文章id',
  `title` varchar(50) default NULL COMMENT '文章标题',
  `comefrom` varchar(20) default NULL COMMENT '来源',
  `pubdate` varchar(20) default NULL COMMENT '发布日期',
  `keywords` text COMMENT '关键字',
  `description` text COMMENT '描述',
  `content` text COMMENT '内容',
  `posid` varchar(20) default NULL COMMENT '推荐位',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=57 ;

-- 
-- 导出表中的数据 `article`
-- 

INSERT INTO `article` VALUES (50, '爱茶人士注意啦', '本站', '2017年08月26日', '            ', '近期，知名品牌厂商不断有高性价比的新茶上市，茶业门户网站及微信公众平台也频频举行各类团购茶样派发活            ', '<span style="color:#000000;"><span style="color:#000000;">近期，知名品牌厂商不断有高性价比的新茶上市，茶业门户网站及微信公众平台也频频举行各类团购茶样派发活测试测试测试测试测试测试测试测试测试测试</span></span>', 'setindex,settop');
INSERT INTO `article` VALUES (52, '养生茶，喝出男性健康', '本站', '2017年08月26日', '', '', '养生茶，喝出男性健康', 'setindex');
INSERT INTO `article` VALUES (53, '茶事起源“六朝以前的茶事”', '本站', '2017年08月26日', '      ', '      ', '茶事起源“六朝以前的茶事”', 'setindex');
INSERT INTO `article` VALUES (54, '红碎茶红艳的颜色、鲜爽的香气和很高的营养价值', '本站', '2017年08月26日', '', '', '红碎茶红艳的颜色、鲜爽的香气和很高的营养价值', 'setindex');
INSERT INTO `article` VALUES (55, '中国古代史料中的茶字和世界各国对茶字的音译', '本站', '2017年08月26日', '', '', '中国古代史料中的茶字和世界各国对茶字的音译', 'setindex');
INSERT INTO `article` VALUES (56, '茶是用来喝的 一杯陈年普洱味道', '本站', '2017年08月26日', '', '', '茶是用来喝的 一杯陈年普洱味道', 'setindex');

-- --------------------------------------------------------

-- 
-- 表的结构 `config`
-- 

CREATE TABLE `config` (
  `id` int(11) NOT NULL auto_increment,
  `site_title` varchar(50) default NULL COMMENT '网站标题rn',
  `site_url` varchar(50) default NULL COMMENT '网站地址',
  `site_logo` varchar(100) default NULL,
  `site_keywords` text COMMENT '网站关键字',
  `site_description` text COMMENT '网站描述',
  `site_copyright` varchar(100) default NULL COMMENT '权版信息',
  `company_name` varchar(50) default NULL COMMENT '公司名称',
  `company_phone` varchar(20) default NULL COMMENT '公司联系电话',
  `company_fax` varchar(20) default NULL,
  `company_email` varchar(30) default NULL COMMENT '公司电子邮箱',
  `company_weixin` varchar(30) default NULL COMMENT '微信',
  `company_ewm` varchar(100) default NULL COMMENT '公司二维码',
  `company_address` varchar(50) default NULL COMMENT '公司地址',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- 导出表中的数据 `config`
-- 

INSERT INTO `config` VALUES (1, '问道茶具有限公司', 'http://www.wendaotea.com', '/web/admin/kindeditor/attached/image/20170826/20170826162719_38347.png', '茶具', '茶具', 'XXXXX科技有限公司', '问道茶具有限公司', '0752-0000000', '0752-0000000', '382526903@qq.com', 'tea888', '/web/admin/kindeditor/attached/image/20170826/20170826162937_77758.png', '广东省惠州市惠城区惠州经济职业技术学院');

-- --------------------------------------------------------

-- 
-- 表的结构 `friend`
-- 

CREATE TABLE `friend` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(20) default NULL COMMENT '标题',
  `url` varchar(50) default NULL COMMENT '链接地址',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- 导出表中的数据 `friend`
-- 

INSERT INTO `friend` VALUES (1, '中国茶具网', 'http://');
INSERT INTO `friend` VALUES (2, '茶友', 'http://');

-- --------------------------------------------------------

-- 
-- 表的结构 `guestbook`
-- 

CREATE TABLE `guestbook` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(50) default NULL COMMENT '留言标题',
  `pubdate` varchar(50) default NULL COMMENT '留言时间',
  `name` varchar(30) default NULL COMMENT '称呼',
  `tel` varchar(20) default NULL COMMENT '手机号码',
  `qq` varchar(15) default NULL COMMENT 'qq',
  `email` varchar(30) default NULL COMMENT '邮箱',
  `content` text COMMENT '留言内容',
  `deal` varchar(5) default '否' COMMENT '是否处理',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- 
-- 导出表中的数据 `guestbook`
-- 

INSERT INTO `guestbook` VALUES (10, '测试27', '2017-08-27', '测试27', '', '', '测试27', '测试27', '否');

-- --------------------------------------------------------

-- 
-- 表的结构 `produce`
-- 

CREATE TABLE `produce` (
  `id` int(11) NOT NULL auto_increment COMMENT '文章id',
  `title` varchar(50) default NULL COMMENT '产品标题',
  `comefrom` varchar(20) default NULL COMMENT '来源',
  `pubdate` varchar(20) default NULL COMMENT '发布日期',
  `thumbnail` varchar(100) default NULL COMMENT '缩略图',
  `keywords` text COMMENT '关键字',
  `description` text COMMENT '描述',
  `content` text COMMENT '内容',
  `posid` varchar(50) default NULL COMMENT '推荐位',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=59 ;

-- 
-- 导出表中的数据 `produce`
-- 

INSERT INTO `produce` VALUES (57, '茶具1', '本站', '2017年08月26日', '/web/admin/kindeditor/attached/image/20170826/20170826170414_36114.jpg', '', '', '茶具1', 'setindex');
INSERT INTO `produce` VALUES (58, '茶具2', '本站', '2017年08月26日', '/web/admin/kindeditor/attached/image/20170826/20170826170451_43994.jpg', '', '', '茶具2', 'setindex');

-- --------------------------------------------------------

-- 
-- 表的结构 `qq`
-- 

CREATE TABLE `qq` (
  `id` int(11) NOT NULL auto_increment COMMENT 'id',
  `title` varchar(30) default NULL COMMENT '标题',
  `qqnum` varchar(15) default NULL COMMENT 'qq号码',
  `truename` varchar(20) default NULL COMMENT '客服姓名',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- 导出表中的数据 `qq`
-- 

INSERT INTO `qq` VALUES (3, '客服1', '382526903', '林老师');
INSERT INTO `qq` VALUES (4, '客服2', '382526903', '林老师');

-- --------------------------------------------------------

-- 
-- 表的结构 `single`
-- 

CREATE TABLE `single` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(50) default NULL COMMENT '标题',
  `comefrom` varchar(20) default NULL COMMENT '来源',
  `pubdate` varchar(20) default NULL COMMENT '发布日期',
  `keywords` text COMMENT '关键字',
  `description` text COMMENT '描述',
  `content` text COMMENT '内容',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

-- 
-- 导出表中的数据 `single`
-- 

INSERT INTO `single` VALUES (10, '关于我们', '本站', '2017年08月26日', '', '', '<span style="color:#000000;">古道茶香贸易有限公司，是中国最大的茶叶经营企业和全球最大的绿茶出口企业，其前身是成立于1950年，该公司致力于为全球客户提供绿色、健康、优质的茶叶饮品。以茶为主、贸工结合、多元发展，产品覆盖茶叶、茶制品、茶叶机械、有机农产品等，销售网络遍及全球六十多个国家和地区</span>');
INSERT INTO `single` VALUES (11, '联系我们', '本站', '2017年08月26日', '', '', '联系我们（详细内容，请在编辑器编辑。。。）');

-- --------------------------------------------------------

-- 
-- 表的结构 `slide`
-- 

CREATE TABLE `slide` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(100) default NULL,
  `thumbnail` varchar(255) default NULL,
  `link` varchar(100) default NULL,
  `orderid` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

-- 
-- 导出表中的数据 `slide`
-- 

INSERT INTO `slide` VALUES (12, 'banner1', '/web/admin/kindeditor/attached/image/20170826/20170826163049_16124.jpg', '', 10);
INSERT INTO `slide` VALUES (13, 'banner2', '/web/admin/kindeditor/attached/image/20170826/20170826163110_73080.jpg', '', 20);
