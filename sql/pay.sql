-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主机： gonivinck_mysql_1:3306
-- 生成日期： 2022-10-17 01:42:31
-- 服务器版本： 5.7.36
-- PHP 版本： 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `mall`
--

-- --------------------------------------------------------

--
-- 表的结构 `pay`
--

CREATE TABLE `pay` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '用户ID',
  `oid` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '订单ID',
  `amount` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '产品金额',
  `source` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '支付方式',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '支付状态',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转储表的索引
--

--
-- 表的索引 `pay`
--
ALTER TABLE `pay`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_uid` (`uid`),
  ADD KEY `idx_oid` (`oid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `pay`
--
ALTER TABLE `pay`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
