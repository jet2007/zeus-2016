/*
Navicat MySQL Data Transfer

Source Server         : zeus_dev
Source Server Version : 50529
Source Host           : 10.3.8.88:3306
Source Database       : zeus_lky2

Target Server Type    : MYSQL
Target Server Version : 50529
File Encoding         : 65001

Date: 2016-01-14 14:50:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for action_test
-- ----------------------------
DROP TABLE IF EXISTS `action_test`;
CREATE TABLE `action_test` (
  `id` bigint(20) DEFAULT NULL,
  `jobid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zeus_action
-- ----------------------------
DROP TABLE IF EXISTS `zeus_action`;
CREATE TABLE `zeus_action` (
  `id` bigint(20) NOT NULL,
  `job_id` bigint(20) NOT NULL,
  `cron_expression` varchar(255) DEFAULT NULL,
  `dependencies` text,
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  `history_id` bigint(20) DEFAULT NULL,
  `ready_dependency` text,
  `status` varchar(255) DEFAULT NULL,
  `down_actions` text,
  `auto` int(11) DEFAULT NULL,
  `configs` text,
  `cycle` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `host_group_id` int(11) DEFAULT NULL,
  `job_dependencies` varchar(255) DEFAULT NULL,
  `last_end_time` datetime DEFAULT NULL,
  `last_result` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `offset` int(11) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `post_processers` varchar(255) DEFAULT NULL,
  `pre_processers` varchar(255) DEFAULT NULL,
  `resources` text,
  `run_type` varchar(255) DEFAULT NULL,
  `schedule_type` int(11) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `start_timestamp` bigint(20) DEFAULT NULL,
  `statis_end_time` datetime DEFAULT NULL,
  `statis_start_time` datetime DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ind_actionjobid` (`job_id`),
  KEY `FK1004302C18AA17E8` (`job_id`),
  KEY `FK1004302CF5E21E59` (`job_id`),
  CONSTRAINT `FK1004302C18AA17E8` FOREIGN KEY (`job_id`) REFERENCES `zeus_job` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zeus_action_bak
-- ----------------------------
DROP TABLE IF EXISTS `zeus_action_bak`;
CREATE TABLE `zeus_action_bak` (
  `id` bigint(20) NOT NULL,
  `job_id` bigint(20) NOT NULL,
  `auto` int(11) DEFAULT NULL,
  `configs` text,
  `cron_expression` varchar(255) DEFAULT NULL,
  `cycle` varchar(255) DEFAULT NULL,
  `dependencies` varchar(2000) DEFAULT NULL,
  `job_dependencies` varchar(2000) DEFAULT NULL,
  `descr` varchar(2000) DEFAULT NULL,
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  `group_id` int(11) NOT NULL,
  `history_id` bigint(20) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `last_end_time` datetime DEFAULT NULL,
  `last_result` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `offset` int(11) DEFAULT NULL,
  `owner` varchar(255) NOT NULL,
  `post_processers` varchar(255) DEFAULT NULL,
  `pre_processers` varchar(255) DEFAULT NULL,
  `ready_dependency` varchar(2000) DEFAULT NULL,
  `resources` text,
  `run_type` varchar(255) DEFAULT NULL,
  `schedule_type` int(11) DEFAULT NULL,
  `script` mediumtext,
  `start_time` datetime DEFAULT NULL,
  `start_timestamp` bigint(20) DEFAULT NULL,
  `statis_end_time` datetime DEFAULT NULL,
  `statis_start_time` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `store_time` varchar(255) DEFAULT NULL,
  `host_group_id` int(11) DEFAULT NULL,
  `down_actions` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zeus_action_history
-- ----------------------------
DROP TABLE IF EXISTS `zeus_action_history`;
CREATE TABLE `zeus_action_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `job_id` bigint(20) DEFAULT NULL,
  `action_id` bigint(20) DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `execute_host` varchar(255) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  `illustrate` varchar(255) DEFAULT NULL,
  `log` mediumtext,
  `operator` varchar(255) DEFAULT NULL,
  `properties` varchar(255) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `trigger_type` int(11) DEFAULT NULL,
  `cycle` varchar(255) DEFAULT NULL,
  `host_group_id` int(11) DEFAULT NULL,
  `statis_end_time` datetime DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ind_acthisactionjobid` (`action_id`,`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=779 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zeus_debug_history
-- ----------------------------
DROP TABLE IF EXISTS `zeus_debug_history`;
CREATE TABLE `zeus_debug_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `end_time` datetime DEFAULT NULL,
  `execute_host` varchar(255) DEFAULT NULL,
  `file_id` bigint(20) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  `log` mediumtext,
  `runtype` varchar(255) DEFAULT NULL,
  `script` mediumtext,
  `start_time` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `owner` varchar(50) DEFAULT NULL,
  `host_group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zeus_default_value
-- ----------------------------
DROP TABLE IF EXISTS `zeus_default_value`;
CREATE TABLE `zeus_default_value` (
  `uid` varchar(255) NOT NULL,
  `must_end_minute` int(11) NOT NULL,
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zeus_file
-- ----------------------------
DROP TABLE IF EXISTS `zeus_file`;
CREATE TABLE `zeus_file` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` mediumtext,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `parent` bigint(20) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `host_group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2216 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zeus_follow
-- ----------------------------
DROP TABLE IF EXISTS `zeus_follow`;
CREATE TABLE `zeus_follow` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  `target_id` bigint(20) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `important` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zeus_group
-- ----------------------------
DROP TABLE IF EXISTS `zeus_group`;
CREATE TABLE `zeus_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `configs` text,
  `descr` varchar(500) DEFAULT NULL,
  `directory` int(11) NOT NULL,
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `resources` text,
  `existed` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=431 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zeus_group_20141201bak
-- ----------------------------
DROP TABLE IF EXISTS `zeus_group_20141201bak`;
CREATE TABLE `zeus_group_20141201bak` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `configs` text,
  `descr` varchar(500) DEFAULT NULL,
  `directory` int(11) NOT NULL,
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `resources` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zeus_host_group
-- ----------------------------
DROP TABLE IF EXISTS `zeus_host_group`;
CREATE TABLE `zeus_host_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `effective` int(11) DEFAULT '0',
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zeus_host_relation
-- ----------------------------
DROP TABLE IF EXISTS `zeus_host_relation`;
CREATE TABLE `zeus_host_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `host` varchar(255) DEFAULT NULL,
  `host_group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zeus_job
-- ----------------------------
DROP TABLE IF EXISTS `zeus_job`;
CREATE TABLE `zeus_job` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `auto` int(11) DEFAULT NULL,
  `configs` text,
  `cron_expression` varchar(255) DEFAULT NULL,
  `cycle` varchar(255) DEFAULT NULL,
  `dependencies` varchar(2000) DEFAULT NULL,
  `descr` varchar(2000) DEFAULT NULL,
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  `group_id` int(11) NOT NULL,
  `history_id` bigint(20) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `last_end_time` datetime DEFAULT NULL,
  `last_result` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `offset` int(11) DEFAULT NULL,
  `owner` varchar(255) NOT NULL,
  `post_processers` varchar(255) DEFAULT NULL,
  `pre_processers` varchar(255) DEFAULT NULL,
  `ready_dependency` varchar(2000) DEFAULT NULL,
  `resources` text,
  `run_type` varchar(255) DEFAULT NULL,
  `schedule_type` int(11) DEFAULT NULL,
  `script` mediumtext,
  `start_time` datetime DEFAULT NULL,
  `start_timestamp` bigint(20) DEFAULT NULL,
  `statis_end_time` datetime DEFAULT NULL,
  `statis_start_time` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `host_group_id` int(11) DEFAULT NULL,
  `must_end_minute` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2054 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zeus_job_history
-- ----------------------------
DROP TABLE IF EXISTS `zeus_job_history`;
CREATE TABLE `zeus_job_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cycle` varchar(255) DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `execute_host` varchar(255) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  `illustrate` varchar(255) DEFAULT NULL,
  `job_id` bigint(20) DEFAULT NULL,
  `log` mediumtext,
  `operator` varchar(255) DEFAULT NULL,
  `properties` varchar(255) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `statis_end_time` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `trigger_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zeus_lock
-- ----------------------------
DROP TABLE IF EXISTS `zeus_lock`;
CREATE TABLE `zeus_lock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `server_update` datetime DEFAULT NULL,
  `subgroup` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zeus_log
-- ----------------------------
DROP TABLE IF EXISTS `zeus_log`;
CREATE TABLE `zeus_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `logtype` varchar(20) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `url` varchar(1000) DEFAULT NULL,
  `rpc` varchar(1000) DEFAULT NULL,
  `delegate` varchar(1000) DEFAULT NULL,
  `method` varchar(1000) DEFAULT NULL,
  `description` mediumtext,
  PRIMARY KEY (`id`),
  KEY `ind_zeuslogtime` (`createtime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zeus_permission
-- ----------------------------
DROP TABLE IF EXISTS `zeus_permission`;
CREATE TABLE `zeus_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  `target_id` bigint(20) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zeus_profile
-- ----------------------------
DROP TABLE IF EXISTS `zeus_profile`;
CREATE TABLE `zeus_profile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  `hadoop_conf` varchar(255) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zeus_timezone
-- ----------------------------
DROP TABLE IF EXISTS `zeus_timezone`;
CREATE TABLE `zeus_timezone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timezone` varchar(255) DEFAULT NULL,
  `uid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zeus_user
-- ----------------------------
DROP TABLE IF EXISTS `zeus_user`;
CREATE TABLE `zeus_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `wangwang` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_type` int(11) DEFAULT '0',
  `is_effective` int(11) DEFAULT '0',
  `description` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for zeus_worker
-- ----------------------------
DROP TABLE IF EXISTS `zeus_worker`;
CREATE TABLE `zeus_worker` (
  `host` varchar(255) NOT NULL,
  `rate` float DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`host`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
