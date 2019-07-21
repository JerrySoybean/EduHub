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

DROP TABLE IF EXISTS `customer`; -- 顾客表
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

DROP TABLE IF EXISTS `gclass`; -- 类别表
CREATE TABLE `gclass` (
                          `id` varchar(64) NOT NULL PRIMARY KEY,
                          `cname` varchar(64) NOT NULL -- 类别名
) ENGINE=InnoDB ;

DROP TABLE IF EXISTS `gformat`; -- 文件类型表
CREATE TABLE `gformat` (
                        `id` varchar(64) NOT NULL PRIMARY KEY
) ENGINE=InnoDB ;

DROP TABLE IF EXISTS `goods`; -- 商品表
CREATE TABLE `goods` (
                          `id` varchar(64) NOT NULL PRIMARY KEY,
                          `name` varchar(64) NOT NULL, -- 商品名
                          `gclass_id` varchar(64),
                          `gformat_id` varchar(64),
                          `price` decimal(5, 2) NOT NULL,
                          `introduction` varchar(256) DEFAULT NULL,
                          `picture_path`  varchar(128) default null,
                          `size` int(16) not null ,
                          `thumb_up`  int(8)  default 0,
                          `visible` boolean default 1 not null,
                          `restriction` boolean default 0 not null,
                          `upload_date` datetime not null,
                          foreign key (gclass_id) references gclass(id), -- 商品类型
                          foreign key (gformat_id) references gformat(id)
) ENGINE=InnoDB ;

DROP TABLE IF EXISTS `orders`; -- 订单表
CREATE TABLE `orders` (
                        `id` varchar(64) NOT NULL PRIMARY KEY,
                        `customer_id` varchar(64),
                        `goods_id` varchar(64),
                        `status`  boolean default 0 not null,
                        `create_time` datetime  not null,
                        `finish_time` datetime default null,
                        `comment` varchar(256)  default null,
                        foreign key (customer_id) references customer(id),
                        foreign key (goods_id) references goods(id)
) ENGINE=InnoDB ;

DROP TABLE IF EXISTS `cart`; -- 购物车
CREATE TABLE `cart` (
                        `id` varchar(64) NOT NULL PRIMARY KEY,
                        `customer_id` varchar(64),
                        `goods_id` varchar(64),
                        foreign key (customer_id) references customer(id),
                        foreign key (goods_id) references goods(id)
) ENGINE=InnoDB ;

DROP TABLE IF EXISTS `collections`; -- 收藏夹
CREATE TABLE `collections` (
                        `id` varchar(64) NOT NULL PRIMARY KEY,
                        `customer_id` varchar(64),
                        `goods_id` varchar(64),
                        foreign key (customer_id) references customer(id),
                        foreign key (goods_id) references goods(id)
) ENGINE=InnoDB ;