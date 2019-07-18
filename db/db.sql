drop database if EXISTS  ehdb;
CREATE database ehdb;
use ehdb;
DROP TABLE IF EXISTS `admin`; -- 管理员表
CREATE TABLE `admin` (
  `id` varchar(64) NOT NULL PRIMARY KEY,
  `name` varchar(64) NOT NULL, -- 登录名
  `password` varchar(64) NOT NULL, -- password
  `tel` char(11) DEFAULT NULL -- 电话号码
) ENGINE=InnoDB ;

DROP TABLE IF EXISTS `customer`; -- 管理员表
CREATE TABLE `customer` (
                       `id` varchar(64) NOT NULL PRIMARY KEY,
                       `name` varchar(64) NOT NULL, -- 登录名
                       `password` varchar(64) NOT NULL, -- password
                       `email`  varchar(64) NOT NULL,
                       `tel` char(11) DEFAULT NULL, -- 电话号码
                       `sex`  boolean default null,
                       `birthday` date  default null,
                       `privilege`  boolean default 0
) ENGINE=InnoDB ;