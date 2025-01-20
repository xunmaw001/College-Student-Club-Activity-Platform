-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot12748
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
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/springboot12748/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/springboot12748/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springboot12748/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussshetuanxinxi`
--

DROP TABLE IF EXISTS `discussshetuanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussshetuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='社团信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussshetuanxinxi`
--

LOCK TABLES `discussshetuanxinxi` WRITE;
/*!40000 ALTER TABLE `discussshetuanxinxi` DISABLE KEYS */;
INSERT INTO `discussshetuanxinxi` VALUES (111,'2021-04-16 13:07:13',1,1,'用户名1','评论内容1','回复内容1'),(112,'2021-04-16 13:07:13',2,2,'用户名2','评论内容2','回复内容2'),(113,'2021-04-16 13:07:13',3,3,'用户名3','评论内容3','回复内容3'),(114,'2021-04-16 13:07:13',4,4,'用户名4','评论内容4','回复内容4'),(115,'2021-04-16 13:07:13',5,5,'用户名5','评论内容5','回复内容5'),(116,'2021-04-16 13:07:13',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussshetuanxinxi` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='社团论坛';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (81,'2021-04-16 13:07:13','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(82,'2021-04-16 13:07:13','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(83,'2021-04-16 13:07:13','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(84,'2021-04-16 13:07:13','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(85,'2021-04-16 13:07:13','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(86,'2021-04-16 13:07:13','帖子标题6','帖子内容6',6,6,'用户名6','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huodongbaoming`
--

DROP TABLE IF EXISTS `huodongbaoming`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huodongbaoming` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongmingcheng` varchar(200) DEFAULT NULL COMMENT '活动名称',
  `shetuanmingcheng` varchar(200) DEFAULT NULL COMMENT '社团名称',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `renshu` int(11) NOT NULL COMMENT '人数',
  `baomingneirong` varchar(200) DEFAULT NULL COMMENT '报名内容',
  `baomingshijian` datetime DEFAULT NULL COMMENT '报名时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `nianji` varchar(200) DEFAULT NULL COMMENT '年级',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618578609365 DEFAULT CHARSET=utf8 COMMENT='活动报名';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huodongbaoming`
--

LOCK TABLES `huodongbaoming` WRITE;
/*!40000 ALTER TABLE `huodongbaoming` DISABLE KEYS */;
INSERT INTO `huodongbaoming` VALUES (71,'2021-04-16 13:07:13','活动名称1','社团名称1','账号1',1,'报名内容1','2021-04-16 21:07:13','学号1','学生姓名1','年级1','班级1','手机1','是',''),(72,'2021-04-16 13:07:13','活动名称2','社团名称2','账号2',2,'报名内容2','2021-04-16 21:07:13','学号2','学生姓名2','年级2','班级2','手机2','是',''),(73,'2021-04-16 13:07:13','活动名称3','社团名称3','账号3',3,'报名内容3','2021-04-16 21:07:13','学号3','学生姓名3','年级3','班级3','手机3','是',''),(74,'2021-04-16 13:07:13','活动名称4','社团名称4','账号4',4,'报名内容4','2021-04-16 21:07:13','学号4','学生姓名4','年级4','班级4','手机4','是',''),(75,'2021-04-16 13:07:13','活动名称5','社团名称5','账号5',5,'报名内容5','2021-04-16 21:07:13','学号5','学生姓名5','年级5','班级5','手机5','是',''),(76,'2021-04-16 13:07:13','活动名称6','社团名称6','账号6',6,'报名内容6','2021-04-16 21:07:13','学号6','学生姓名6','年级6','班级6','手机6','是',''),(1618578609364,'2021-04-16 13:10:09','活动名称1','社团名称1','1',2,'111','2021-04-16 21:10:04','1','学生姓名1','年级1','班级1','13823888881','否',NULL);
/*!40000 ALTER TABLE `huodongbaoming` ENABLE KEYS */;
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
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='社团资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (101,'2021-04-16 13:07:13','标题1','简介1','http://localhost:8080/springboot12748/upload/news_picture1.jpg','内容1'),(102,'2021-04-16 13:07:13','标题2','简介2','http://localhost:8080/springboot12748/upload/news_picture2.jpg','内容2'),(103,'2021-04-16 13:07:13','标题3','简介3','http://localhost:8080/springboot12748/upload/news_picture3.jpg','内容3'),(104,'2021-04-16 13:07:13','标题4','简介4','http://localhost:8080/springboot12748/upload/news_picture4.jpg','内容4'),(105,'2021-04-16 13:07:13','标题5','简介5','http://localhost:8080/springboot12748/upload/news_picture5.jpg','内容5'),(106,'2021-04-16 13:07:13','标题6','简介6','http://localhost:8080/springboot12748/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shetuanhuodong`
--

DROP TABLE IF EXISTS `shetuanhuodong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shetuanhuodong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongmingcheng` varchar(200) DEFAULT NULL COMMENT '活动名称',
  `shetuanmingcheng` varchar(200) DEFAULT NULL COMMENT '社团名称',
  `baomingrenqun` varchar(200) DEFAULT NULL COMMENT '报名人群',
  `huodongtupian` varchar(200) DEFAULT NULL COMMENT '活动图片',
  `kaishishijian` date DEFAULT NULL COMMENT '开始时间',
  `jieshushijian` date DEFAULT NULL COMMENT '结束时间',
  `renshu` int(11) NOT NULL COMMENT '人数',
  `huodongdidian` varchar(200) DEFAULT NULL COMMENT '活动地点',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `huodongxiangqing` longtext COMMENT '活动详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='社团活动';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shetuanhuodong`
--

LOCK TABLES `shetuanhuodong` WRITE;
/*!40000 ALTER TABLE `shetuanhuodong` DISABLE KEYS */;
INSERT INTO `shetuanhuodong` VALUES (61,'2021-04-16 13:07:13','活动名称1','社团名称1','报名人群1','http://localhost:8080/springboot12748/upload/shetuanhuodong_huodongtupian1.jpg','2021-04-16','2021-04-16',8,'活动地点1','1','<p>活动详情1</p>'),(62,'2021-04-16 13:07:13','活动名称2','社团名称2','报名人群2','http://localhost:8080/springboot12748/upload/shetuanhuodong_huodongtupian2.jpg','2021-04-16','2021-04-16',2,'活动地点2','账号2','活动详情2'),(63,'2021-04-16 13:07:13','活动名称3','社团名称3','报名人群3','http://localhost:8080/springboot12748/upload/shetuanhuodong_huodongtupian3.jpg','2021-04-16','2021-04-16',3,'活动地点3','账号3','活动详情3'),(64,'2021-04-16 13:07:13','活动名称4','社团名称4','报名人群4','http://localhost:8080/springboot12748/upload/shetuanhuodong_huodongtupian4.jpg','2021-04-16','2021-04-16',4,'活动地点4','账号4','活动详情4'),(65,'2021-04-16 13:07:13','活动名称5','社团名称5','报名人群5','http://localhost:8080/springboot12748/upload/shetuanhuodong_huodongtupian5.jpg','2021-04-16','2021-04-16',5,'活动地点5','账号5','活动详情5'),(66,'2021-04-16 13:07:13','活动名称6','社团名称6','报名人群6','http://localhost:8080/springboot12748/upload/shetuanhuodong_huodongtupian6.jpg','2021-04-16','2021-04-16',6,'活动地点6','账号6','活动详情6');
/*!40000 ALTER TABLE `shetuanhuodong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shetuanleixing`
--

DROP TABLE IF EXISTS `shetuanleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shetuanleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shetuanleixing` varchar(200) NOT NULL COMMENT '社团类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='社团类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shetuanleixing`
--

LOCK TABLES `shetuanleixing` WRITE;
/*!40000 ALTER TABLE `shetuanleixing` DISABLE KEYS */;
INSERT INTO `shetuanleixing` VALUES (31,'2021-04-16 13:07:13','社团类型1'),(32,'2021-04-16 13:07:13','社团类型2'),(33,'2021-04-16 13:07:13','社团类型3'),(34,'2021-04-16 13:07:13','社团类型4'),(35,'2021-04-16 13:07:13','社团类型5'),(36,'2021-04-16 13:07:13','社团类型6');
/*!40000 ALTER TABLE `shetuanleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shetuanshenqing`
--

DROP TABLE IF EXISTS `shetuanshenqing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shetuanshenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shetuanmingcheng` varchar(200) DEFAULT NULL COMMENT '社团名称',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `shenqingliyou` varchar(200) DEFAULT NULL COMMENT '申请理由',
  `shenqingriqi` date DEFAULT NULL COMMENT '申请日期',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `nianji` varchar(200) DEFAULT NULL COMMENT '年级',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='社团申请';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shetuanshenqing`
--

LOCK TABLES `shetuanshenqing` WRITE;
/*!40000 ALTER TABLE `shetuanshenqing` DISABLE KEYS */;
INSERT INTO `shetuanshenqing` VALUES (51,'2021-04-16 13:07:13','社团名称1','账号1','申请理由1','2021-04-16','学号1','学生姓名1','年级1','班级1','手机1','是',''),(52,'2021-04-16 13:07:13','社团名称2','账号2','申请理由2','2021-04-16','学号2','学生姓名2','年级2','班级2','手机2','是',''),(53,'2021-04-16 13:07:13','社团名称3','账号3','申请理由3','2021-04-16','学号3','学生姓名3','年级3','班级3','手机3','是',''),(54,'2021-04-16 13:07:13','社团名称4','账号4','申请理由4','2021-04-16','学号4','学生姓名4','年级4','班级4','手机4','是',''),(55,'2021-04-16 13:07:13','社团名称5','账号5','申请理由5','2021-04-16','学号5','学生姓名5','年级5','班级5','手机5','是',''),(56,'2021-04-16 13:07:13','社团名称6','账号6','申请理由6','2021-04-16','学号6','学生姓名6','年级6','班级6','手机6','是','');
/*!40000 ALTER TABLE `shetuanshenqing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shetuanxinxi`
--

DROP TABLE IF EXISTS `shetuanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shetuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shetuanmingcheng` varchar(200) NOT NULL COMMENT '社团名称',
  `shetuanleixing` varchar(200) NOT NULL COMMENT '社团类型',
  `shetuantupian` varchar(200) DEFAULT NULL COMMENT '社团图片',
  `chenglishijian` date DEFAULT NULL COMMENT '成立时间',
  `shetuanrenshu` int(11) DEFAULT NULL COMMENT '社团人数',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shetuanjianjie` longtext COMMENT '社团简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='社团信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shetuanxinxi`
--

LOCK TABLES `shetuanxinxi` WRITE;
/*!40000 ALTER TABLE `shetuanxinxi` DISABLE KEYS */;
INSERT INTO `shetuanxinxi` VALUES (41,'2021-04-16 13:07:13','社团名称1','社团类型1','http://localhost:8080/springboot12748/upload/shetuanxinxi_shetuantupian1.jpg','2021-04-16',1,'账号1','姓名1','联系电话1','邮箱1','社团简介1'),(42,'2021-04-16 13:07:13','社团名称2','社团类型2','http://localhost:8080/springboot12748/upload/shetuanxinxi_shetuantupian2.jpg','2021-04-16',2,'账号2','姓名2','联系电话2','邮箱2','社团简介2'),(43,'2021-04-16 13:07:13','社团名称3','社团类型3','http://localhost:8080/springboot12748/upload/shetuanxinxi_shetuantupian3.jpg','2021-04-16',3,'账号3','姓名3','联系电话3','邮箱3','社团简介3'),(44,'2021-04-16 13:07:13','社团名称4','社团类型4','http://localhost:8080/springboot12748/upload/shetuanxinxi_shetuantupian4.jpg','2021-04-16',4,'账号4','姓名4','联系电话4','邮箱4','社团简介4'),(45,'2021-04-16 13:07:13','社团名称5','社团类型5','http://localhost:8080/springboot12748/upload/shetuanxinxi_shetuantupian5.jpg','2021-04-16',5,'账号5','姓名5','联系电话5','邮箱5','社团简介5'),(46,'2021-04-16 13:07:13','社团名称6','社团类型6','http://localhost:8080/springboot12748/upload/shetuanxinxi_shetuantupian6.jpg','2021-04-16',6,'账号6','姓名6','联系电话6','邮箱6','社团简介6');
/*!40000 ALTER TABLE `shetuanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shezhang`
--

DROP TABLE IF EXISTS `shezhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shezhang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='社长';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shezhang`
--

LOCK TABLES `shezhang` WRITE;
/*!40000 ALTER TABLE `shezhang` DISABLE KEYS */;
INSERT INTO `shezhang` VALUES (21,'2021-04-16 13:07:13','1','1','姓名1','男','http://localhost:8080/springboot12748/upload/shezhang_touxiang1.jpg','440300199101010001','13823888881','773890001@qq.com'),(22,'2021-04-16 13:07:13','社长2','123456','姓名2','男','http://localhost:8080/springboot12748/upload/shezhang_touxiang2.jpg','440300199202020002','13823888882','773890002@qq.com'),(23,'2021-04-16 13:07:13','社长3','123456','姓名3','男','http://localhost:8080/springboot12748/upload/shezhang_touxiang3.jpg','440300199303030003','13823888883','773890003@qq.com'),(24,'2021-04-16 13:07:13','社长4','123456','姓名4','男','http://localhost:8080/springboot12748/upload/shezhang_touxiang4.jpg','440300199404040004','13823888884','773890004@qq.com'),(25,'2021-04-16 13:07:13','社长5','123456','姓名5','男','http://localhost:8080/springboot12748/upload/shezhang_touxiang5.jpg','440300199505050005','13823888885','773890005@qq.com'),(26,'2021-04-16 13:07:13','社长6','123456','姓名6','男','http://localhost:8080/springboot12748/upload/shezhang_touxiang6.jpg','440300199606060006','13823888886','773890006@qq.com');
/*!40000 ALTER TABLE `shezhang` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
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
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','qu1gou35ahfs8576v5edqvqsgzrgiyqs','2021-04-16 13:09:42','2021-04-16 14:09:42'),(2,11,'1','xuesheng','学生','plvgys183nhu7r2jshb5lxrj9azffb54','2021-04-16 13:10:04','2021-04-16 14:10:05');
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-04-16 13:07:13');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `nianji` varchar(200) DEFAULT NULL COMMENT '年级',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2021-04-16 13:07:13','1','1','学生姓名1','男','http://localhost:8080/springboot12748/upload/xuesheng_touxiang1.jpg','年级1','班级1','13823888881'),(12,'2021-04-16 13:07:13','学生2','123456','学生姓名2','男','http://localhost:8080/springboot12748/upload/xuesheng_touxiang2.jpg','年级2','班级2','13823888882'),(13,'2021-04-16 13:07:13','学生3','123456','学生姓名3','男','http://localhost:8080/springboot12748/upload/xuesheng_touxiang3.jpg','年级3','班级3','13823888883'),(14,'2021-04-16 13:07:13','学生4','123456','学生姓名4','男','http://localhost:8080/springboot12748/upload/xuesheng_touxiang4.jpg','年级4','班级4','13823888884'),(15,'2021-04-16 13:07:13','学生5','123456','学生姓名5','男','http://localhost:8080/springboot12748/upload/xuesheng_touxiang5.jpg','年级5','班级5','13823888885'),(16,'2021-04-16 13:07:13','学生6','123456','学生姓名6','男','http://localhost:8080/springboot12748/upload/xuesheng_touxiang6.jpg','年级6','班级6','13823888886');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-18 16:17:03
