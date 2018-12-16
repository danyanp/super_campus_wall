-- ----------------------------
-- Records of wp_update_version
-- ----------------------------
-- ----------------------------
-- Table structure for `wp_user`
-- ----------------------------
DROP TABLE IF EXISTS `wp_user`;
CREATE TABLE `wp_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(100) DEFAULT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '登录密码',
  `truename` varchar(30) CHARACTER SET utf8 DEFAULT NULL COMMENT '真实姓名',
  `mobile` varchar(30) CHARACTER SET utf8 DEFAULT NULL COMMENT '联系电话',
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '邮箱地址',
  `sex` tinyint(2) DEFAULT NULL COMMENT '性别',
  `headimgurl` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '头像地址',
  `city` varchar(30) DEFAULT NULL COMMENT '城市',
  `province` varchar(30) DEFAULT NULL COMMENT '省份',
  `country` varchar(30) DEFAULT NULL COMMENT '国家',
  `language` varchar(20) CHARACTER SET utf8 DEFAULT 'zh-cn' COMMENT '语言',
  `score` int(10) DEFAULT '0' COMMENT '金币值',
  `experience` int(10) DEFAULT '0' COMMENT '经验值',
  `unionid` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '微信第三方ID',
  `login_count` int(10) DEFAULT '0' COMMENT '登录次数',
  `reg_ip` varchar(30) CHARACTER SET utf8 DEFAULT NULL COMMENT '注册IP',
  `reg_time` int(10) DEFAULT NULL COMMENT '注册时间',
  `last_login_ip` varchar(30) CHARACTER SET utf8 DEFAULT NULL COMMENT '最近登录IP',
  `last_login_time` int(10) DEFAULT NULL COMMENT '最近登录时间',
  `status` tinyint(2) DEFAULT '1' COMMENT '状态',
  `is_init` tinyint(2) DEFAULT '0' COMMENT '初始化状态',
  `is_audit` tinyint(2) DEFAULT '0' COMMENT '审核状态',
  `subscribe_time` int(10) DEFAULT NULL COMMENT '用户关注公众号时间',
  `remark` varchar(100) DEFAULT NULL COMMENT '微信用户备注',
  `groupid` int(10) DEFAULT NULL COMMENT '微信端的分组ID',
  `come_from` tinyint(1) DEFAULT '0' COMMENT '来源',
  `login_password` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '登录密码',
  `manager_id` int(10) DEFAULT '0' COMMENT '公众号管理员ID',
  `level` tinyint(2) DEFAULT '0' COMMENT '管理等级',
  `membership` char(50) CHARACTER SET utf8 DEFAULT '0' COMMENT '会员等级',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4;
