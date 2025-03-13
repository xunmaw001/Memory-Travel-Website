-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm72jm6
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610601185846 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2021-01-14 03:34:10',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-01-14 03:34:10',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-01-14 03:34:10',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-01-14 03:34:10',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-01-14 03:34:10',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-01-14 03:34:10',6,'宇宙银河系月球1号','月某','13823888886','是'),(1610601185845,'2021-01-14 05:13:05',1610601135309,'广东省梅州市梅江区西郊街道金南路12号南门商业广场(沿江半岛大道)','12','12312312312','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'techanshangcheng' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610601261309 DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610601480482 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (91,'2021-01-14 03:34:10',1,1,'提问1','回复1',1),(92,'2021-01-14 03:34:10',2,2,'提问2','回复2',2),(93,'2021-01-14 03:34:10',3,3,'提问3','回复3',3),(94,'2021-01-14 03:34:10',4,4,'提问4','回复4',4),(95,'2021-01-14 03:34:10',5,5,'提问5','回复5',5),(96,'2021-01-14 03:34:10',6,6,'提问6','回复6',6),(1610601373732,'2021-01-14 05:16:12',1610601135309,NULL,'retretr',NULL,0),(1610601377007,'2021-01-14 05:16:16',1610601135309,NULL,'儿童日7y6t8u76',NULL,0),(1610601480481,'2021-01-14 05:17:59',1610601135309,1,NULL,'GHFGDJGTFH',NULL);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssm72jm6/upload/1610600413009.jpg'),(2,'picture2','http://localhost:8080/ssm72jm6/upload/1610600382403.jpg'),(3,'picture3','http://localhost:8080/ssm72jm6/upload/1610601068229.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussjingdianxinxi`
--

DROP TABLE IF EXISTS `discussjingdianxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussjingdianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610601207882 DEFAULT CHARSET=utf8 COMMENT='景点信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussjingdianxinxi`
--

LOCK TABLES `discussjingdianxinxi` WRITE;
/*!40000 ALTER TABLE `discussjingdianxinxi` DISABLE KEYS */;
INSERT INTO `discussjingdianxinxi` VALUES (161,'2021-01-14 03:34:10',1,1,'评论内容1','回复内容1'),(162,'2021-01-14 03:34:10',2,2,'评论内容2','回复内容2'),(163,'2021-01-14 03:34:10',3,3,'评论内容3','回复内容3'),(164,'2021-01-14 03:34:10',4,4,'评论内容4','回复内容4'),(165,'2021-01-14 03:34:10',5,5,'评论内容5','回复内容5'),(166,'2021-01-14 03:34:10',6,6,'评论内容6','回复内容6'),(1610601207881,'2021-01-14 05:13:27',1610600865123,1610601135309,'ere65r67y65t76',NULL);
/*!40000 ALTER TABLE `discussjingdianxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussjiudianxinxi`
--

DROP TABLE IF EXISTS `discussjiudianxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussjiudianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610601231542 DEFAULT CHARSET=utf8 COMMENT='酒店信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussjiudianxinxi`
--

LOCK TABLES `discussjiudianxinxi` WRITE;
/*!40000 ALTER TABLE `discussjiudianxinxi` DISABLE KEYS */;
INSERT INTO `discussjiudianxinxi` VALUES (171,'2021-01-14 03:34:10',1,1,'评论内容1','回复内容1'),(172,'2021-01-14 03:34:10',2,2,'评论内容2','回复内容2'),(173,'2021-01-14 03:34:10',3,3,'评论内容3','回复内容3'),(174,'2021-01-14 03:34:10',4,4,'评论内容4','回复内容4'),(175,'2021-01-14 03:34:10',5,5,'评论内容5','回复内容5'),(176,'2021-01-14 03:34:10',6,6,'评论内容6','回复内容6'),(1610601231541,'2021-01-14 05:13:50',1610600935942,1610601135309,'梵蒂冈太容易',NULL);
/*!40000 ALTER TABLE `discussjiudianxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussmeishixinxi`
--

DROP TABLE IF EXISTS `discussmeishixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussmeishixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8 COMMENT='美食信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussmeishixinxi`
--

LOCK TABLES `discussmeishixinxi` WRITE;
/*!40000 ALTER TABLE `discussmeishixinxi` DISABLE KEYS */;
INSERT INTO `discussmeishixinxi` VALUES (191,'2021-01-14 03:34:10',1,1,'评论内容1','回复内容1'),(192,'2021-01-14 03:34:10',2,2,'评论内容2','回复内容2'),(193,'2021-01-14 03:34:10',3,3,'评论内容3','回复内容3'),(194,'2021-01-14 03:34:10',4,4,'评论内容4','回复内容4'),(195,'2021-01-14 03:34:10',5,5,'评论内容5','回复内容5'),(196,'2021-01-14 03:34:10',6,6,'评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussmeishixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusstechanshangcheng`
--

DROP TABLE IF EXISTS `discusstechanshangcheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusstechanshangcheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8 COMMENT='特产商城评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusstechanshangcheng`
--

LOCK TABLES `discusstechanshangcheng` WRITE;
/*!40000 ALTER TABLE `discusstechanshangcheng` DISABLE KEYS */;
INSERT INTO `discusstechanshangcheng` VALUES (181,'2021-01-14 03:34:10',1,1,'评论内容1','回复内容1'),(182,'2021-01-14 03:34:10',2,2,'评论内容2','回复内容2'),(183,'2021-01-14 03:34:10',3,3,'评论内容3','回复内容3'),(184,'2021-01-14 03:34:10',4,4,'评论内容4','回复内容4'),(185,'2021-01-14 03:34:10',5,5,'评论内容5','回复内容5'),(186,'2021-01-14 03:34:10',6,6,'评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusstechanshangcheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610601337162 DEFAULT CHARSET=utf8 COMMENT='论坛表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (101,'2021-01-14 03:34:10','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(102,'2021-01-14 03:34:10','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(103,'2021-01-14 03:34:10','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(104,'2021-01-14 03:34:10','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(105,'2021-01-14 03:34:10','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(106,'2021-01-14 03:34:10','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1610601302700,'2021-01-14 05:15:02','FJKDGJ','<p>RTGDRTGTRFG Y</p>\n<p><img src=\"../../../upload/1610601299042.jpeg\" alt=\"\" width=\"1366\" height=\"768\" /></p>',0,1610601135309,'1','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goupiaoxinxi`
--

DROP TABLE IF EXISTS `goupiaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goupiaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `jingdianmingcheng` varchar(200) DEFAULT NULL COMMENT '景点名称',
  `jingdianfenlei` varchar(200) DEFAULT NULL COMMENT '景点分类',
  `jingdiandizhi` varchar(200) DEFAULT NULL COMMENT '景点地址',
  `menpiaojiage` int(11) DEFAULT NULL COMMENT '门票价格',
  `goupiaoshuliang` int(11) DEFAULT NULL COMMENT '购票数量',
  `zongjine` varchar(200) DEFAULT NULL COMMENT '总金额',
  `yudingriqi` date DEFAULT NULL COMMENT '预订日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1610601218681 DEFAULT CHARSET=utf8 COMMENT='购票信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goupiaoxinxi`
--

LOCK TABLES `goupiaoxinxi` WRITE;
/*!40000 ALTER TABLE `goupiaoxinxi` DISABLE KEYS */;
INSERT INTO `goupiaoxinxi` VALUES (41,'2021-01-14 03:34:10','订单编号1','景点名称1','景点分类1','景点地址1',1,1,'总金额1','2021-01-14','备注1','用户名1','姓名1','身份证1','未支付'),(42,'2021-01-14 03:34:10','订单编号2','景点名称2','景点分类2','景点地址2',2,2,'总金额2','2021-01-14','备注2','用户名2','姓名2','身份证2','未支付'),(43,'2021-01-14 03:34:10','订单编号3','景点名称3','景点分类3','景点地址3',3,3,'总金额3','2021-01-14','备注3','用户名3','姓名3','身份证3','未支付'),(44,'2021-01-14 03:34:10','订单编号4','景点名称4','景点分类4','景点地址4',4,4,'总金额4','2021-01-14','备注4','用户名4','姓名4','身份证4','未支付'),(45,'2021-01-14 03:34:10','订单编号5','景点名称5','景点分类5','景点地址5',5,5,'总金额5','2021-01-14','备注5','用户名5','姓名5','身份证5','未支付'),(46,'2021-01-14 03:34:10','订单编号6','景点名称6','景点分类6','景点地址6',6,6,'总金额6','2021-01-14','备注6','用户名6','姓名6','身份证6','未支付'),(1610601218680,'2021-01-14 05:13:37','202111413133128321613','西湖','历史遗址','DFDYHGFHJYTGJGHJIHG',150,2,'300','2021-01-15','','1','张一','123456789123456789','已支付');
/*!40000 ALTER TABLE `goupiaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jingdianfenlei`
--

DROP TABLE IF EXISTS `jingdianfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jingdianfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingdianfenlei` varchar(200) NOT NULL COMMENT '景点分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jingdianfenlei` (`jingdianfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1610600802502 DEFAULT CHARSET=utf8 COMMENT='景点分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jingdianfenlei`
--

LOCK TABLES `jingdianfenlei` WRITE;
/*!40000 ALTER TABLE `jingdianfenlei` DISABLE KEYS */;
INSERT INTO `jingdianfenlei` VALUES (21,'2021-01-14 03:34:10','景点分类1'),(22,'2021-01-14 03:34:10','景点分类2'),(23,'2021-01-14 03:34:10','景点分类3'),(24,'2021-01-14 03:34:10','景点分类4'),(25,'2021-01-14 03:34:10','景点分类5'),(26,'2021-01-14 03:34:10','景点分类6'),(1610600792399,'2021-01-14 05:06:32','主题公园'),(1610600802501,'2021-01-14 05:06:41','历史遗址');
/*!40000 ALTER TABLE `jingdianfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jingdianxinxi`
--

DROP TABLE IF EXISTS `jingdianxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jingdianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingdianmingcheng` varchar(200) NOT NULL COMMENT '景点名称',
  `jingdianfenlei` varchar(200) NOT NULL COMMENT '景点分类',
  `jingdiantupian` varchar(200) DEFAULT NULL COMMENT '景点图片',
  `jingdiandengji` varchar(200) DEFAULT NULL COMMENT '景点等级',
  `jingdiandizhi` varchar(200) DEFAULT NULL COMMENT '景点地址',
  `menpiaojiage` int(11) DEFAULT NULL COMMENT '门票价格',
  `kaifangshijian` varchar(200) DEFAULT NULL COMMENT '开放时间',
  `goupiaoxuzhi` longtext COMMENT '购票须知',
  `jiaotongzhinan` longtext COMMENT '交通指南',
  `jingdianjieshao` longtext COMMENT '景点介绍',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610600865124 DEFAULT CHARSET=utf8 COMMENT='景点信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jingdianxinxi`
--

LOCK TABLES `jingdianxinxi` WRITE;
/*!40000 ALTER TABLE `jingdianxinxi` DISABLE KEYS */;
INSERT INTO `jingdianxinxi` VALUES (31,'2021-01-14 03:34:10','景点名称1','景点分类1','http://localhost:8080/ssm72jm6/upload/1610600022281.jpg','A','景点地址1',1,'开放时间1','购票须知1','交通指南1','<p>景点介绍1</p>','2021-01-14 12:53:24',2),(32,'2021-01-14 03:34:10','景点名称2','景点分类2','http://localhost:8080/ssm72jm6/upload/1610600041614.jpg','A','景点地址2',2,'开放时间2','购票须知2','交通指南2','<p>景点介绍2</p>','2021-01-14 12:53:53',3),(33,'2021-01-14 03:34:10','景点名称3','景点分类3','http://localhost:8080/ssm72jm6/upload/1610600061131.jpeg','A','景点地址3',3,'开放时间3','购票须知3','交通指南3','<p>景点介绍3</p>','2021-01-14 12:54:06',4),(34,'2021-01-14 03:34:10','景点名称4','景点分类4','http://localhost:8080/ssm72jm6/upload/1610600076756.jpg','A','景点地址4',4,'开放时间4','购票须知4','交通指南4','<p>景点介绍4</p>','2021-01-14 12:54:26',5),(35,'2021-01-14 03:34:10','景点名称5','景点分类5','http://localhost:8080/ssm72jm6/upload/jingdianxinxi_jingdiantupian5.jpg','A','景点地址5',5,'开放时间5','购票须知5','交通指南5','景点介绍5','2021-01-14 11:34:10',5),(36,'2021-01-14 03:34:10','景点名称6','景点分类6','http://localhost:8080/ssm72jm6/upload/1610600091742.jpg','A','景点地址6',6,'开放时间6','购票须知6','交通指南6','<p>景点介绍6</p>','2021-01-14 12:54:43',7),(1610600865123,'2021-01-14 05:07:44','西湖','历史遗址','http://localhost:8080/ssm72jm6/upload/1610600836907.jpg','AAAAA','DFDYHGFHJYTGJGHJIHG',150,'8:30-18:00','DGTDFYUYTUTI','UIY IOUIOU','<p>YUYTIUOIUOIOP</p><p><img src=\"http://localhost:8080/ssm72jm6/upload/1610600862541.jpg\"></p>','2021-01-14 13:13:40',3);
/*!40000 ALTER TABLE `jingdianxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiudianxinxi`
--

DROP TABLE IF EXISTS `jiudianxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiudianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiudianmingcheng` varchar(200) NOT NULL COMMENT '酒店名称',
  `leibie` varchar(200) NOT NULL COMMENT '类别',
  `xingji` varchar(200) NOT NULL COMMENT '星级',
  `jiudiantupian` varchar(200) DEFAULT NULL COMMENT '酒店图片',
  `fangjianleixing` varchar(200) DEFAULT NULL COMMENT '房间类型',
  `fangjianzhuangtai` varchar(200) DEFAULT NULL COMMENT '房间状态',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `jiudianjieshao` longtext COMMENT '酒店介绍',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `longitude` float DEFAULT NULL COMMENT '经度',
  `latitude` float DEFAULT NULL COMMENT '纬度',
  `fulladdress` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610600935943 DEFAULT CHARSET=utf8 COMMENT='酒店信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiudianxinxi`
--

LOCK TABLES `jiudianxinxi` WRITE;
/*!40000 ALTER TABLE `jiudianxinxi` DISABLE KEYS */;
INSERT INTO `jiudianxinxi` VALUES (51,'2021-01-14 03:34:10','酒店名称1','民宿','一星','http://localhost:8080/ssm72jm6/upload/1610600118759.jpg','单人间','可预订',1,'13823888881','<p>酒店介绍1</p>','2021-01-14 12:55:08',2,1,1,'宇宙银河系地球1号'),(52,'2021-01-14 03:34:10','酒店名称2','民宿','一星','http://localhost:8080/ssm72jm6/upload/jiudianxinxi_jiudiantupian2.jpg','单人间','可预订',2,'13823888882','酒店介绍2','2021-01-14 11:34:10',2,2,2,'宇宙银河系地球2号'),(53,'2021-01-14 03:34:10','酒店名称3','民宿','一星','http://localhost:8080/ssm72jm6/upload/1610600129557.jpg','单人间','可预订',3,'13823888883','<p>酒店介绍3</p>','2021-01-14 12:55:23',4,3,3,'宇宙银河系地球3号'),(54,'2021-01-14 03:34:10','酒店名称4','民宿','一星','http://localhost:8080/ssm72jm6/upload/1610600140399.jpg','单人间','可预订',4,'13823888884','<p>酒店介绍4</p>','2021-01-14 12:55:34',5,4,4,'宇宙银河系地球4号'),(55,'2021-01-14 03:34:10','酒店名称5','民宿','一星','http://localhost:8080/ssm72jm6/upload/jiudianxinxi_jiudiantupian5.jpg','单人间','可预订',5,'13823888885','酒店介绍5','2021-01-14 11:34:10',5,5,5,'宇宙银河系地球5号'),(56,'2021-01-14 03:34:10','酒店名称6','民宿','一星','http://localhost:8080/ssm72jm6/upload/1610600159917.jpg','单人间','可预订',6,'13823888886','<p>酒店介绍6</p>','2021-01-14 12:55:48',7,6,6,'宇宙银河系地球6号'),(1610600935942,'2021-01-14 05:08:54','酒店A','豪华酒店','四星','http://localhost:8080/ssm72jm6/upload/1610600893713.jpg','大床房','已预订',300,'12369874512','<p>RFDFTRYTUYIUOIUOIPI</p><p><img src=\"http://localhost:8080/ssm72jm6/upload/1610600932814.jpg\"></p>','2021-01-14 13:18:34',5,116.353,39.9427,'北京市西城区展览路街道北京北站');
/*!40000 ALTER TABLE `jiudianxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiudianyuding`
--

DROP TABLE IF EXISTS `jiudianyuding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiudianyuding` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yudingbianhao` varchar(200) DEFAULT NULL COMMENT '预订编号',
  `jiudianmingcheng` varchar(200) DEFAULT NULL COMMENT '酒店名称',
  `leibie` varchar(200) DEFAULT NULL COMMENT '类别',
  `fangjianleixing` varchar(200) DEFAULT NULL COMMENT '房间类型',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `yudingtianshu` int(11) DEFAULT NULL COMMENT '预订天数',
  `yudingjine` varchar(200) DEFAULT NULL COMMENT '预订金额',
  `yudingriqi` date DEFAULT NULL COMMENT '预订日期',
  `ruzhuriqi` datetime DEFAULT NULL COMMENT '入住日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yudingbianhao` (`yudingbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1610601250867 DEFAULT CHARSET=utf8 COMMENT='酒店预订';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiudianyuding`
--

LOCK TABLES `jiudianyuding` WRITE;
/*!40000 ALTER TABLE `jiudianyuding` DISABLE KEYS */;
INSERT INTO `jiudianyuding` VALUES (61,'2021-01-14 03:34:10','预订编号1','酒店名称1','类别1','房间类型1',1,1,'预订金额1','2021-01-14','2021-01-14 11:34:10','备注1','用户名1','姓名1','身份证1','未支付'),(62,'2021-01-14 03:34:10','预订编号2','酒店名称2','类别2','房间类型2',2,2,'预订金额2','2021-01-14','2021-01-14 11:34:10','备注2','用户名2','姓名2','身份证2','未支付'),(63,'2021-01-14 03:34:10','预订编号3','酒店名称3','类别3','房间类型3',3,3,'预订金额3','2021-01-14','2021-01-14 11:34:10','备注3','用户名3','姓名3','身份证3','未支付'),(64,'2021-01-14 03:34:10','预订编号4','酒店名称4','类别4','房间类型4',4,4,'预订金额4','2021-01-14','2021-01-14 11:34:10','备注4','用户名4','姓名4','身份证4','未支付'),(65,'2021-01-14 03:34:10','预订编号5','酒店名称5','类别5','房间类型5',5,5,'预订金额5','2021-01-14','2021-01-14 11:34:10','备注5','用户名5','姓名5','身份证5','未支付'),(66,'2021-01-14 03:34:10','预订编号6','酒店名称6','类别6','房间类型6',6,6,'预订金额6','2021-01-14','2021-01-14 11:34:10','备注6','用户名6','姓名6','身份证6','未支付'),(1610601250866,'2021-01-14 05:14:10','20211141313541834566','酒店A','豪华酒店','大床房',300,2,'600','2021-01-14','2021-01-15 12:00:00','','1','张一','123456789123456789','已支付');
/*!40000 ALTER TABLE `jiudianyuding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meishixinxi`
--

DROP TABLE IF EXISTS `meishixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meishixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `didian` varchar(200) DEFAULT NULL COMMENT '地点',
  `meishijieshao` longtext COMMENT '美食介绍',
  `canguantuijian` longtext COMMENT '餐馆推荐',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610601045067 DEFAULT CHARSET=utf8 COMMENT='美食信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meishixinxi`
--

LOCK TABLES `meishixinxi` WRITE;
/*!40000 ALTER TABLE `meishixinxi` DISABLE KEYS */;
INSERT INTO `meishixinxi` VALUES (81,'2021-01-14 03:34:10','标题1','http://localhost:8080/ssm72jm6/upload/1610600271626.jpg','地点1','<p>美食介绍1</p>','餐馆推荐1','2021-01-14'),(82,'2021-01-14 03:34:10','标题2','http://localhost:8080/ssm72jm6/upload/1610600281882.jpg','地点2','<p>美食介绍2</p>','餐馆推荐2','2021-01-14'),(83,'2021-01-14 03:34:10','标题3','http://localhost:8080/ssm72jm6/upload/1610600294563.jpeg','地点3','<p>美食介绍3</p>','餐馆推荐3','2021-01-14'),(84,'2021-01-14 03:34:10','标题4','http://localhost:8080/ssm72jm6/upload/1610600304830.jpeg','地点4','<p>美食介绍4</p>','餐馆推荐4','2021-01-14'),(85,'2021-01-14 03:34:10','标题5','http://localhost:8080/ssm72jm6/upload/1610600316450.jpeg','地点5','<p>美食介绍5</p>','餐馆推荐5','2021-01-14'),(86,'2021-01-14 03:34:10','标题6','http://localhost:8080/ssm72jm6/upload/1610600328758.jpeg','地点6','<p>美食介绍6</p>','餐馆推荐6','2021-01-14'),(1610601045066,'2021-01-14 05:10:44','西湖醋鱼','http://localhost:8080/ssm72jm6/upload/1610601023389.jpeg','杭州','<p>dewtreytryutu</p><p><img src=\"http://localhost:8080/ssm72jm6/upload/1610601043036.jpg\"></p>','二恶烷特热热投入预热预热tg塔尔天然\n','2021-01-14');
/*!40000 ALTER TABLE `meishixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610601094138 DEFAULT CHARSET=utf8 COMMENT='娱乐信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (151,'2021-01-14 03:34:10','标题1','http://localhost:8080/ssm72jm6/upload/news_picture1.jpg','内容1'),(152,'2021-01-14 03:34:10','标题2','http://localhost:8080/ssm72jm6/upload/news_picture2.jpg','内容2'),(153,'2021-01-14 03:34:10','标题3','http://localhost:8080/ssm72jm6/upload/news_picture3.jpg','内容3'),(154,'2021-01-14 03:34:10','标题4','http://localhost:8080/ssm72jm6/upload/news_picture4.jpg','内容4'),(155,'2021-01-14 03:34:10','标题5','http://localhost:8080/ssm72jm6/upload/news_picture5.jpg','内容5'),(156,'2021-01-14 03:34:10','标题6','http://localhost:8080/ssm72jm6/upload/news_picture6.jpg','内容6'),(1610601094137,'2021-01-14 05:11:33','DTRYGRTYTR','http://localhost:8080/ssm72jm6/upload/1610601082557.jpg','<p>TRERYRTUYYTUYIUUY</p><p><img src=\"http://localhost:8080/ssm72jm6/upload/1610601091982.jpg\"></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'techanshangcheng' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1610601361317 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1610601361316,'2021-01-14 05:16:00','202111413155985635214','techanshangcheng',1610601135309,1610600991577,'知味观桂花饼','http://localhost:8080/ssm72jm6/upload/1610600973588.jpg',3,19.9,19.9,59.7,59.7,1,'已完成','广东省梅州市梅江区西郊街道金南路12号南门商业广场(沿江半岛大道)');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610601270518 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1610601200999,'2021-01-14 05:13:20',1610601135309,1610600865123,'jingdianxinxi','西湖','http://localhost:8080/ssm72jm6/upload/1610600836907.jpg'),(1610601259583,'2021-01-14 05:14:19',1610601135309,1610600991577,'techanshangcheng','知味观桂花饼','http://localhost:8080/ssm72jm6/upload/1610600973588.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `techanshangcheng`
--

DROP TABLE IF EXISTS `techanshangcheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `techanshangcheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `techanmingcheng` varchar(200) NOT NULL COMMENT '特产名称',
  `techanfenlei` varchar(200) NOT NULL COMMENT '特产分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `chandi` varchar(200) DEFAULT NULL COMMENT '产地',
  `techanxiangqing` longtext COMMENT '特产详情',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610600991578 DEFAULT CHARSET=utf8 COMMENT='特产商城';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `techanshangcheng`
--

LOCK TABLES `techanshangcheng` WRITE;
/*!40000 ALTER TABLE `techanshangcheng` DISABLE KEYS */;
INSERT INTO `techanshangcheng` VALUES (71,'2021-01-14 03:34:10','特产名称1','特产分类1','http://localhost:8080/ssm72jm6/upload/1610600188940.jpg','规格1','产地1','<p>特产详情1</p>',99.9),(72,'2021-01-14 03:34:10','特产名称2','特产分类2','http://localhost:8080/ssm72jm6/upload/1610600199697.jpg','规格2','产地2','<p>特产详情2</p>',99.9),(73,'2021-01-14 03:34:10','特产名称3','特产分类3','http://localhost:8080/ssm72jm6/upload/1610600210707.jpg','规格3','产地3','<p>特产详情3</p>',99.9),(74,'2021-01-14 03:34:10','特产名称4','特产分类4','http://localhost:8080/ssm72jm6/upload/1610600222798.jpg','规格4','产地4','<p>特产详情4</p>',99.9),(75,'2021-01-14 03:34:10','特产名称5','特产分类5','http://localhost:8080/ssm72jm6/upload/1610600233296.jpg','规格5','产地5','<p>特产详情5</p>',99.9),(76,'2021-01-14 03:34:10','特产名称6','特产分类6','http://localhost:8080/ssm72jm6/upload/1610600252603.jpg','规格6','产地6','<p>特产详情6</p>',99.9),(1610600991577,'2021-01-14 05:09:51','知味观桂花饼','小吃','http://localhost:8080/ssm72jm6/upload/1610600973588.jpg','190g','杭州','<p>二分rertrytut65</p><p><img src=\"http://localhost:8080/ssm72jm6/upload/1610600989575.jpg\"></p>',19.9);
/*!40000 ALTER TABLE `techanshangcheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','xr6eob5y5gt2efcf8pov4e4f3z106tb5','2021-01-14 04:53:17','2021-01-14 06:17:03'),(2,1610601135309,'1','yonghu','用户','nc5d69atyln5qrd11o3c56fui4o1dn9k','2021-01-14 05:12:21','2021-01-14 06:18:22');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-01-14 03:34:10');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1610601135310 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-01-14 03:34:10','用户1','123456','姓名1','http://localhost:8080/ssm72jm6/upload/1610600676881.jpeg','男','13823888881','440300199101010001',100),(12,'2021-01-14 03:34:10','用户2','123456','姓名2','http://localhost:8080/ssm72jm6/upload/1610600690245.jpeg','男','13823888882','440300199202020002',100),(13,'2021-01-14 03:34:10','用户3','123456','姓名3','http://localhost:8080/ssm72jm6/upload/1610600706018.jpg','男','13823888883','440300199303030003',100),(14,'2021-01-14 03:34:10','用户4','123456','姓名4','http://localhost:8080/ssm72jm6/upload/1610600718121.jpg','男','13823888884','440300199404040004',100),(15,'2021-01-14 03:34:10','用户5','123456','姓名5','http://localhost:8080/ssm72jm6/upload/1610600729754.jpeg','女','13823888885','440300199505050005',100),(16,'2021-01-14 03:34:10','用户6','123456','姓名6','http://localhost:8080/ssm72jm6/upload/1610600746493.jpg','女','13823888886','440300199606060006',100),(1610601135309,'2021-01-14 05:12:15','1','1','张一','http://localhost:8080/ssm72jm6/upload/1610601155454.jpeg','女','12345678963','123456789123456789',1940.3);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-14 16:30:27
