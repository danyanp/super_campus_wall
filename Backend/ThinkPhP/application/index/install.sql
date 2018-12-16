
SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS `xiaoyuan`;
DROP TABLE IF EXISTS `yoshop_user`;
CREATE TABLE `yoshop_user` (
  `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `open_id` varchar(255) NOT NULL DEFAULT '',
  `nickName` varchar(255) NOT NULL DEFAULT '',
  `avatarUrl` varchar(255) NOT NULL DEFAULT '',
  `gender` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `country` varchar(50) NOT NULL DEFAULT '',
  `province` varchar(50) NOT NULL DEFAULT '',
  `city` varchar(50) NOT NULL DEFAULT '',
  `address_id` int(11) unsigned NOT NULL DEFAULT '0',
  `wxapp_id` int(11) unsigned NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`),
  KEY `openid` (`open_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=utf8;
SET FOREIGN_KEY_CHECKS = 1;
