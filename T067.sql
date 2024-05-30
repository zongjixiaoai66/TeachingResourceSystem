/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t067`;
CREATE DATABASE IF NOT EXISTS `t067` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t067`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springboot60a0e/upload/picture1.jpg'),
	(2, 'picture2', 'http://localhost:8080/springboot60a0e/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springboot60a0e/upload/picture3.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `discusskechengxinxi`;
CREATE TABLE IF NOT EXISTS `discusskechengxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618458012755 DEFAULT CHARSET=utf8mb3 COMMENT='课程信息评论表';

DELETE FROM `discusskechengxinxi`;
INSERT INTO `discusskechengxinxi` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(131, '2021-04-15 03:06:15', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(132, '2021-04-15 03:06:15', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(133, '2021-04-15 03:06:15', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(134, '2021-04-15 03:06:15', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(135, '2021-04-15 03:06:15', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(136, '2021-04-15 03:06:15', 6, 6, '用户名6', '评论内容6', '回复内容6'),
	(1618458012754, '2021-04-15 03:40:11', 31, 1618457931834, '001', '登录后可以评论 收藏  选课等操作  未登录状态进入课程详情页  会自动跳到登录界面', '这里可以回复学生的评论');

DROP TABLE IF EXISTS `discusskechengzuoye`;
CREATE TABLE IF NOT EXISTS `discusskechengzuoye` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb3 COMMENT='课程作业评论表';

DELETE FROM `discusskechengzuoye`;
INSERT INTO `discusskechengzuoye` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(141, '2021-04-15 03:06:15', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(142, '2021-04-15 03:06:15', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(143, '2021-04-15 03:06:15', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(144, '2021-04-15 03:06:15', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(145, '2021-04-15 03:06:15', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(146, '2021-04-15 03:06:15', 6, 6, '用户名6', '评论内容6', '回复内容6');

DROP TABLE IF EXISTS `exampaper`;
CREATE TABLE IF NOT EXISTS `exampaper` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) NOT NULL COMMENT '试卷名称',
  `time` int NOT NULL COMMENT '考试时长(分钟)',
  `status` int NOT NULL DEFAULT '0' COMMENT '试卷状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618458379068 DEFAULT CHARSET=utf8mb3 COMMENT='试卷表';

DELETE FROM `exampaper`;
INSERT INTO `exampaper` (`id`, `addtime`, `name`, `time`, `status`) VALUES
	(1618457852801, '2021-04-15 03:37:32', 'XX作业客观题', 30, 1),
	(1618458379067, '2021-04-15 03:46:18', '这里添加新的题库标题', 30, 1);

DROP TABLE IF EXISTS `examquestion`;
CREATE TABLE IF NOT EXISTS `examquestion` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `paperid` bigint NOT NULL COMMENT '所属试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `type` bigint DEFAULT '0' COMMENT '试题类型，0：单选题 1：多选题 2：判断题 3：填空题（暂不考虑多项填空）',
  `sequence` bigint DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618457893684 DEFAULT CHARSET=utf8mb3 COMMENT='试题表';

DELETE FROM `examquestion`;
INSERT INTO `examquestion` (`id`, `addtime`, `paperid`, `papername`, `questionname`, `options`, `score`, `answer`, `analysis`, `type`, `sequence`) VALUES
	(1618457878494, '2021-04-15 03:37:58', 1618457852801, 'XX作业客观题', '客观题题目', '[]', 50, '111111111111111111111', '1', 3, 1),
	(1618457893683, '2021-04-15 03:38:13', 1618457852801, 'XX作业客观题', '客观题题目2', '[]', 50, '2222222222222', '2', 3, 2);

DROP TABLE IF EXISTS `examrecord`;
CREATE TABLE IF NOT EXISTS `examrecord` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `paperid` bigint NOT NULL COMMENT '试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionid` bigint NOT NULL COMMENT '试题id（外键）',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `myscore` bigint NOT NULL DEFAULT '0' COMMENT '试题得分',
  `myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618458152379 DEFAULT CHARSET=utf8mb3 COMMENT='考试记录表';

DELETE FROM `examrecord`;
INSERT INTO `examrecord` (`id`, `addtime`, `userid`, `username`, `paperid`, `papername`, `questionid`, `questionname`, `options`, `score`, `answer`, `analysis`, `myscore`, `myanswer`) VALUES
	(1618458149343, '2021-04-15 03:42:28', 1618457931834, NULL, 1618457852801, 'XX作业客观题', 1618457878494, '客观题题目', '[]', 50, '111111111111111111111', '1', 0, '这里进行客观题答题'),
	(1618458152378, '2021-04-15 03:42:31', 1618457931834, NULL, 1618457852801, 'XX作业客观题', 1618457893683, '客观题题目2', '[]', 50, '2222222222222', '2', 50, '2222222222222');

DROP TABLE IF EXISTS `jiaoshi`;
CREATE TABLE IF NOT EXISTS `jiaoshi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `jiaoshiyouxiang` varchar(200) DEFAULT NULL COMMENT '教师邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshigonghao` (`jiaoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618458218596 DEFAULT CHARSET=utf8mb3 COMMENT='教师';

DELETE FROM `jiaoshi`;
INSERT INTO `jiaoshi` (`id`, `addtime`, `jiaoshigonghao`, `mima`, `jiaoshixingming`, `xingbie`, `zhaopian`, `zhicheng`, `lianxidianhua`, `jiaoshiyouxiang`) VALUES
	(11, '2021-04-15 03:06:15', '教师1', '123456', '教师姓名1', '女', 'http://localhost:8080/springboot60a0e/upload/jiaoshi_zhaopian1.jpg', '职称1', '13823888881', '773890001@qq.com'),
	(12, '2021-04-15 03:06:15', '教师2', '123456', '教师姓名2', '女', 'http://localhost:8080/springboot60a0e/upload/jiaoshi_zhaopian2.jpg', '职称2', '13823888882', '773890002@qq.com'),
	(13, '2021-04-15 03:06:15', '教师3', '123456', '教师姓名3', '男', 'http://localhost:8080/springboot60a0e/upload/jiaoshi_zhaopian3.jpg', '职称3', '13823888883', '773890003@qq.com'),
	(14, '2021-04-15 03:06:15', '教师4', '123456', '教师姓名4', '男', 'http://localhost:8080/springboot60a0e/upload/jiaoshi_zhaopian4.jpg', '职称4', '13823888884', '773890004@qq.com'),
	(15, '2021-04-15 03:06:15', '教师5', '123456', '教师姓名5', '男', 'http://localhost:8080/springboot60a0e/upload/jiaoshi_zhaopian5.jpg', '职称5', '13823888885', '773890005@qq.com'),
	(16, '2021-04-15 03:06:15', '教师6', '123456', '教师姓名6', '男', 'http://localhost:8080/springboot60a0e/upload/jiaoshi_zhaopian6.jpg', '职称6', '13823888886', '773890006@qq.com'),
	(1618458218595, '2021-04-15 03:43:38', '000', '000', '李老师', NULL, NULL, '助教', '16459878652', '12@265.com');

DROP TABLE IF EXISTS `kechengxinxi`;
CREATE TABLE IF NOT EXISTS `kechengxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengzhangjie` varchar(200) NOT NULL COMMENT '课程章节',
  `banjimingcheng` varchar(200) DEFAULT NULL COMMENT '班级名称',
  `kechengtupian` varchar(200) DEFAULT NULL COMMENT '课程图片',
  `kechengshipin` varchar(200) DEFAULT NULL COMMENT '课程视频',
  `kechengxiangqing` longtext COMMENT '课程详情',
  `kechengkejian` varchar(200) DEFAULT NULL COMMENT '课程课件',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `jiaoshiyouxiang` varchar(200) DEFAULT NULL COMMENT '教师邮箱',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 COMMENT='课程信息';

DELETE FROM `kechengxinxi`;
INSERT INTO `kechengxinxi` (`id`, `addtime`, `kechengzhangjie`, `banjimingcheng`, `kechengtupian`, `kechengshipin`, `kechengxiangqing`, `kechengkejian`, `jiaoshigonghao`, `jiaoshixingming`, `jiaoshiyouxiang`, `clicktime`, `clicknum`) VALUES
	(31, '2021-04-15 03:06:15', '课程章节1', '班级名称1', 'http://localhost:8080/springboot60a0e/upload/kechengxinxi_kechengtupian1.jpg', 'http://localhost:8080/springboot60a0e/upload/1618457679300.mp4', '<p><img src="http://localhost:8080/springboot60a0e/upload/1618457661297.jpg"></p>', 'http://localhost:8080/springboot60a0e/upload/1618457667208.docx', '教师1', '教师姓名1', '773890001@qq.com', '2024-01-30 12:54:32', 11),
	(32, '2021-04-15 03:06:15', '课程章节2', '班级名称2', 'http://localhost:8080/springboot60a0e/upload/kechengxinxi_kechengtupian2.jpg', 'http://localhost:8080/springboot60a0e/upload/1618457707739.mp4', '<p><img src="http://localhost:8080/springboot60a0e/upload/1618457722050.jpeg"></p>', 'http://localhost:8080/springboot60a0e/upload/1618457711548.docx', '教师工号2', '教师姓名2', '773890002@qq.com', '2021-04-15 11:40:59', 6),
	(33, '2021-04-15 03:06:15', '课程章节3', '班级名称3', 'http://localhost:8080/springboot60a0e/upload/kechengxinxi_kechengtupian3.jpg', '', '课程详情3', '', '教师工号3', '教师姓名3', '773890003@qq.com', '2024-01-30 12:55:38', 4),
	(34, '2021-04-15 03:06:15', '课程章节4', '班级名称4', 'http://localhost:8080/springboot60a0e/upload/kechengxinxi_kechengtupian4.jpg', '', '课程详情4', '', '教师工号4', '教师姓名4', '773890004@qq.com', '2021-04-15 11:06:15', 4),
	(35, '2021-04-15 03:06:15', '课程章节5', '班级名称5', 'http://localhost:8080/springboot60a0e/upload/kechengxinxi_kechengtupian5.jpg', '', '课程详情5', '', '教师工号5', '教师姓名5', '773890005@qq.com', '2021-04-15 11:06:15', 5),
	(36, '2021-04-15 03:06:15', '课程章节6', '班级名称6', 'http://localhost:8080/springboot60a0e/upload/kechengxinxi_kechengtupian6.jpg', '', '课程详情6', '', '教师工号6', '教师姓名6', '773890006@qq.com', '2021-04-15 11:06:15', 6);

DROP TABLE IF EXISTS `kechengzuoye`;
CREATE TABLE IF NOT EXISTS `kechengzuoye` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuoyemingcheng` varchar(200) NOT NULL COMMENT '作业名称',
  `kechengzhangjie` varchar(200) NOT NULL COMMENT '课程章节',
  `banjimingcheng` varchar(200) DEFAULT NULL COMMENT '班级名称',
  `zuoyetupian` varchar(200) DEFAULT NULL COMMENT '作业图片',
  `zuoyeyaoqiu` varchar(200) DEFAULT NULL COMMENT '作业要求',
  `zhuguantimu` longtext COMMENT '主观题目',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `zuoyefujian` varchar(200) DEFAULT NULL COMMENT '作业附件',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `jiaoshiyouxiang` varchar(200) DEFAULT NULL COMMENT '教师邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 COMMENT='课程作业';

DELETE FROM `kechengzuoye`;
INSERT INTO `kechengzuoye` (`id`, `addtime`, `zuoyemingcheng`, `kechengzhangjie`, `banjimingcheng`, `zuoyetupian`, `zuoyeyaoqiu`, `zhuguantimu`, `faburiqi`, `zuoyefujian`, `jiaoshigonghao`, `jiaoshixingming`, `jiaoshiyouxiang`) VALUES
	(41, '2021-04-15 03:06:15', '作业名称1', '课程章节1', '班级名称1', 'http://localhost:8080/springboot60a0e/upload/kechengzuoye_zuoyetupian1.jpg', '作业要求1', '<p>主观题目1</p>', '2021-04-15', 'http://localhost:8080/springboot60a0e/upload/1618457732960.docx', '教师1', '教师姓名1', '773890001@qq.com'),
	(42, '2021-04-15 03:06:15', '作业名称2', '课程章节2', '班级名称2', 'http://localhost:8080/springboot60a0e/upload/kechengzuoye_zuoyetupian2.jpg', '作业要求2', '主观题目2', '2021-04-15', '', '教师工号2', '教师姓名2', '773890002@qq.com'),
	(43, '2021-04-15 03:06:15', '作业名称3', '课程章节3', '班级名称3', 'http://localhost:8080/springboot60a0e/upload/kechengzuoye_zuoyetupian3.jpg', '作业要求3', '主观题目3', '2021-04-15', '', '教师工号3', '教师姓名3', '773890003@qq.com'),
	(44, '2021-04-15 03:06:15', '作业名称4', '课程章节4', '班级名称4', 'http://localhost:8080/springboot60a0e/upload/kechengzuoye_zuoyetupian4.jpg', '作业要求4', '主观题目4', '2021-04-15', '', '教师工号4', '教师姓名4', '773890004@qq.com'),
	(45, '2021-04-15 03:06:15', '作业名称5', '课程章节5', '班级名称5', 'http://localhost:8080/springboot60a0e/upload/kechengzuoye_zuoyetupian5.jpg', '作业要求5', '主观题目5', '2021-04-15', '', '教师工号5', '教师姓名5', '773890005@qq.com'),
	(46, '2021-04-15 03:06:15', '作业名称6', '课程章节6', '班级名称6', 'http://localhost:8080/springboot60a0e/upload/kechengzuoye_zuoyetupian6.jpg', '作业要求6', '主观题目6', '2021-04-15', '', '教师工号6', '教师姓名6', '773890006@qq.com');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618458562470 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `addtime`, `title`, `introduction`, `picture`, `content`) VALUES
	(121, '2021-04-15 03:06:15', '标题1', '简介1', 'http://localhost:8080/springboot60a0e/upload/news_picture1.jpg', '内容1'),
	(122, '2021-04-15 03:06:15', '标题2', '简介2', 'http://localhost:8080/springboot60a0e/upload/news_picture2.jpg', '内容2'),
	(123, '2021-04-15 03:06:15', '标题3', '简介3', 'http://localhost:8080/springboot60a0e/upload/news_picture3.jpg', '内容3'),
	(124, '2021-04-15 03:06:15', '标题4', '简介4', 'http://localhost:8080/springboot60a0e/upload/news_picture4.jpg', '内容4'),
	(125, '2021-04-15 03:06:15', '标题5', '简介5', 'http://localhost:8080/springboot60a0e/upload/news_picture5.jpg', '内容5'),
	(126, '2021-04-15 03:06:15', '标题6', '简介6', 'http://localhost:8080/springboot60a0e/upload/news_picture6.jpg', '内容6'),
	(1618458562469, '2021-04-15 03:49:21', '这里添加新的公告信息', '11111111', 'http://localhost:8080/springboot60a0e/upload/1618458548625.jpg', '<p><img src="http://localhost:8080/springboot60a0e/upload/1618458551719.jpg">等会演示未登录状态的跳转</p>');

DROP TABLE IF EXISTS `storeup`;
CREATE TABLE IF NOT EXISTS `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618458052367 DEFAULT CHARSET=utf8mb3 COMMENT='收藏表';

DELETE FROM `storeup`;
INSERT INTO `storeup` (`id`, `addtime`, `userid`, `refid`, `tablename`, `name`, `picture`) VALUES
	(1618458030851, '2021-04-15 03:40:30', 1618457931834, 31, 'kechengxinxi', '课程章节1', 'http://localhost:8080/springboot60a0e/upload/kechengxinxi_kechengtupian1.jpg'),
	(1618458052366, '2021-04-15 03:40:52', 1618457931834, 32, 'kechengxinxi', '课程章节2', 'http://localhost:8080/springboot60a0e/upload/kechengxinxi_kechengtupian2.jpg');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'abo', 'users', '管理员', 'isenz6ev6g8yr7o54ku9evlci5181qv7', '2021-04-15 03:33:21', '2024-01-30 05:54:17'),
	(2, 11, '教师1', 'jiaoshi', '管理员', 'fadndl0rilz1etyv9qtizhjh2wu7j0dt', '2021-04-15 03:37:17', '2024-01-30 05:55:10'),
	(3, 1618457931834, '001', 'xuesheng', '学生', 'k7ubciadi8cd8v9b2u7jd89190a0kmad', '2021-04-15 03:38:56', '2021-04-15 04:49:42'),
	(4, 1618458218595, '000', 'jiaoshi', '管理员', 'bfecwjxl1dow6oxht6q4ezgm896ztlze', '2021-04-15 03:47:01', '2021-04-15 04:47:02'),
	(5, 21, '学生1', 'xuesheng', '学生', 'u7f43cn69m51vz7t1znkm1ho7hornvq2', '2024-01-30 04:53:29', '2024-01-30 05:53:29');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-04-15 03:06:15');

DROP TABLE IF EXISTS `xuesheng`;
CREATE TABLE IF NOT EXISTS `xuesheng` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618457931835 DEFAULT CHARSET=utf8mb3 COMMENT='学生';

DELETE FROM `xuesheng`;
INSERT INTO `xuesheng` (`id`, `addtime`, `xuehao`, `mima`, `xueshengxingming`, `xingbie`, `touxiang`, `shouji`, `banji`, `youxiang`) VALUES
	(21, '2021-04-15 03:06:15', '学生1', '123456', '学生姓名1', '男', 'http://localhost:8080/springboot60a0e/upload/xuesheng_touxiang1.jpg', '13823888881', '班级1', '773890001@qq.com'),
	(22, '2021-04-15 03:06:15', '学生2', '123456', '学生姓名2', '男', 'http://localhost:8080/springboot60a0e/upload/xuesheng_touxiang2.jpg', '13823888882', '班级2', '773890002@qq.com'),
	(23, '2021-04-15 03:06:15', '学生3', '123456', '学生姓名3', '男', 'http://localhost:8080/springboot60a0e/upload/xuesheng_touxiang3.jpg', '13823888883', '班级3', '773890003@qq.com'),
	(24, '2021-04-15 03:06:15', '学生4', '123456', '学生姓名4', '男', 'http://localhost:8080/springboot60a0e/upload/xuesheng_touxiang4.jpg', '13823888884', '班级4', '773890004@qq.com'),
	(25, '2021-04-15 03:06:15', '学生5', '123456', '学生姓名5', '男', 'http://localhost:8080/springboot60a0e/upload/xuesheng_touxiang5.jpg', '13823888885', '班级5', '773890005@qq.com'),
	(26, '2021-04-15 03:06:15', '学生6', '123456', '学生姓名6', '男', 'http://localhost:8080/springboot60a0e/upload/xuesheng_touxiang6.jpg', '13823888886', '班级6', '773890006@qq.com'),
	(1618457931834, '2021-04-15 03:38:51', '001', '001', '小吴', '男', 'http://localhost:8080/springboot60a0e/upload/1618457945389.jpeg', '13456545981', '一班', '16@12.com');

DROP TABLE IF EXISTS `xueshengchengji`;
CREATE TABLE IF NOT EXISTS `xueshengchengji` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuoyemingcheng` varchar(200) DEFAULT NULL COMMENT '作业名称',
  `zuoyetupian` varchar(200) DEFAULT NULL COMMENT '作业图片',
  `zhuguantichengji` int NOT NULL COMMENT '主观题成绩',
  `keguantichengji` int NOT NULL COMMENT '客观题成绩',
  `chengjizongfen` int DEFAULT NULL COMMENT '成绩总分',
  `chengjidengji` varchar(200) NOT NULL COMMENT '成绩等级',
  `chengjipingyu` longtext NOT NULL COMMENT '成绩评语',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618458335658 DEFAULT CHARSET=utf8mb3 COMMENT='学生成绩';

DELETE FROM `xueshengchengji`;
INSERT INTO `xueshengchengji` (`id`, `addtime`, `zuoyemingcheng`, `zuoyetupian`, `zhuguantichengji`, `keguantichengji`, `chengjizongfen`, `chengjidengji`, `chengjipingyu`, `xuehao`, `xueshengxingming`, `banji`, `jiaoshigonghao`, `jiaoshixingming`) VALUES
	(71, '2021-04-15 03:06:15', '作业名称1', 'http://localhost:8080/springboot60a0e/upload/1618457768775.jpg', 1, 1, 2, '不及格', '成绩评语1', '学号1', '学生姓名1', '班级1', '教师工号1', '教师姓名1'),
	(72, '2021-04-15 03:06:15', '作业名称2', 'http://localhost:8080/springboot60a0e/upload/1618457781629.jpg', 30, 30, 60, '及格', '成绩评语2', '学号2', '学生姓名2', '班级2', '教师工号2', '教师姓名2'),
	(73, '2021-04-15 03:06:15', '作业名称3', 'http://localhost:8080/springboot60a0e/upload/1618457797027.jpg', 3, 3, 6, '良好', '成绩评语3', '学号3', '学生姓名3', '班级3', '教师工号3', '教师姓名3'),
	(74, '2021-04-15 03:06:15', '作业名称4', 'http://localhost:8080/springboot60a0e/upload/1618457809487.jpg', 4, 4, 8, '优秀', '成绩评语4', '学号4', '学生姓名4', '班级4', '教师工号4', '教师姓名4'),
	(75, '2021-04-15 03:06:15', '作业名称5', 'http://localhost:8080/springboot60a0e/upload/1618457819952.jpg', 5, 5, 10, '优秀', '成绩评语5', '学号5', '学生姓名5', '班级5', '教师工号5', '教师姓名5'),
	(1618458335657, '2021-04-15 03:45:34', '作业名称1', 'http://localhost:8080/springboot60a0e/upload/kechengzuoye_zuoyetupian1.jpg', 70, 50, 120, '良好', '这里添加学生的主观题客观题成绩', '001', '小吴', '一班', '教师1', '教师姓名1');

DROP TABLE IF EXISTS `xueshengxuanke`;
CREATE TABLE IF NOT EXISTS `xueshengxuanke` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengzhangjie` varchar(200) DEFAULT NULL COMMENT '课程章节',
  `kechengtupian` varchar(200) DEFAULT NULL COMMENT '课程图片',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `kechengshipin` varchar(200) DEFAULT NULL COMMENT '课程视频',
  `kechengkejian` varchar(200) DEFAULT NULL COMMENT '课程课件',
  `xuankeshijian` datetime DEFAULT NULL COMMENT '选课时间',
  `xuankebeizhu` varchar(200) DEFAULT NULL COMMENT '选课备注',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618458037323 DEFAULT CHARSET=utf8mb3 COMMENT='学生选课';

DELETE FROM `xueshengxuanke`;
INSERT INTO `xueshengxuanke` (`id`, `addtime`, `kechengzhangjie`, `kechengtupian`, `jiaoshigonghao`, `jiaoshixingming`, `kechengshipin`, `kechengkejian`, `xuankeshijian`, `xuankebeizhu`, `xuehao`, `xueshengxingming`, `banji`, `shouji`, `sfsh`, `shhf`) VALUES
	(51, '2021-04-15 03:06:15', '课程章节1', 'http://localhost:8080/springboot60a0e/upload/xueshengxuanke_kechengtupian1.jpg', '教师工号1', '教师姓名1', '', '', '2021-04-15 11:06:15', '选课备注1', '学号1', '学生姓名1', '班级1', '13823888881', '是', ''),
	(52, '2021-04-15 03:06:15', '课程章节2', 'http://localhost:8080/springboot60a0e/upload/xueshengxuanke_kechengtupian2.jpg', '教师工号2', '教师姓名2', '', '', '2021-04-15 11:06:15', '选课备注2', '学号2', '学生姓名2', '班级2', '13823888882', '是', ''),
	(53, '2021-04-15 03:06:15', '课程章节3', 'http://localhost:8080/springboot60a0e/upload/xueshengxuanke_kechengtupian3.jpg', '教师工号3', '教师姓名3', '', '', '2021-04-15 11:06:15', '选课备注3', '学号3', '学生姓名3', '班级3', '13823888883', '是', ''),
	(54, '2021-04-15 03:06:15', '课程章节4', 'http://localhost:8080/springboot60a0e/upload/xueshengxuanke_kechengtupian4.jpg', '教师工号4', '教师姓名4', '', '', '2021-04-15 11:06:15', '选课备注4', '学号4', '学生姓名4', '班级4', '13823888884', '是', ''),
	(55, '2021-04-15 03:06:15', '课程章节5', 'http://localhost:8080/springboot60a0e/upload/xueshengxuanke_kechengtupian5.jpg', '教师工号5', '教师姓名5', '', '', '2021-04-15 11:06:15', '选课备注5', '学号5', '学生姓名5', '班级5', '13823888885', '是', ''),
	(56, '2021-04-15 03:06:15', '课程章节6', 'http://localhost:8080/springboot60a0e/upload/xueshengxuanke_kechengtupian6.jpg', '教师工号6', '教师姓名6', '', '', '2021-04-15 11:06:15', '选课备注6', '学号6', '学生姓名6', '班级6', '13823888886', '是', ''),
	(1618458037322, '2021-04-15 03:40:36', '课程章节1', 'http://localhost:8080/springboot60a0e/upload/kechengxinxi_kechengtupian1.jpg', '教师1', '教师姓名1', 'http://localhost:8080/springboot60a0e/upload/1618457679300.mp4', 'http://localhost:8080/springboot60a0e/upload/1618457667208.docx', '2021-04-15 11:40:33', '11111', '001', '小吴', '一班', '13456545981', '是', '这里查看回复学生的选课');

DROP TABLE IF EXISTS `xueshengzuoye`;
CREATE TABLE IF NOT EXISTS `xueshengzuoye` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuoyemingcheng` varchar(200) DEFAULT NULL COMMENT '作业名称',
  `kechengzhangjie` varchar(200) NOT NULL COMMENT '课程章节',
  `zuoyetupian` varchar(200) DEFAULT NULL COMMENT '作业图片',
  `zuoyeyaoqiu` varchar(200) DEFAULT NULL COMMENT '作业要求',
  `xueshengzuoye` varchar(200) DEFAULT NULL COMMENT '学生作业',
  `tijiaoriqi` date DEFAULT NULL COMMENT '提交日期',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `tijiaoneirong` longtext COMMENT '提交内容',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618458133569 DEFAULT CHARSET=utf8mb3 COMMENT='学生作业';

DELETE FROM `xueshengzuoye`;
INSERT INTO `xueshengzuoye` (`id`, `addtime`, `zuoyemingcheng`, `kechengzhangjie`, `zuoyetupian`, `zuoyeyaoqiu`, `xueshengzuoye`, `tijiaoriqi`, `jiaoshigonghao`, `tijiaoneirong`, `xuehao`, `xueshengxingming`, `banji`, `sfsh`, `shhf`) VALUES
	(1618458133568, '2021-04-15 03:42:12', '作业名称1', '课程章节1', 'http://localhost:8080/springboot60a0e/upload/kechengzuoye_zuoyetupian1.jpg', '作业要求1', 'http://localhost:8080/springboot60a0e/upload/1618458130620.docx', '2021-04-15', '教师1', '<p>这里进行答题</p>\n<p>可以插图</p>\n<p><img src="../../../upload/1618458102468.jpg" width="150" height="150" /></p>\n<p>学生作业那里可以上传自己答好题的word文档之类文件</p>', '001', '小吴', '一班', '是', '收到作业');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
