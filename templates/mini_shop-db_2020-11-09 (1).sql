-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1:3306
-- 產生時間： 2020-11-09 14:38:03
-- 伺服器版本： 8.0.18
-- PHP 版本： 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `mini_shop`
--

-- --------------------------------------------------------

--
-- 資料表結構 `bill`
--

CREATE TABLE `bill` (
  `bill_sn` mediumint(8) UNSIGNED NOT NULL COMMENT '帳單編號',
  `user_sn` mediumint(8) UNSIGNED NOT NULL COMMENT '購買人',
  `bill_total` mediumint(8) UNSIGNED NOT NULL COMMENT '總金額',
  `bill_date` datetime NOT NULL COMMENT '購買日期',
  `bill_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '處理狀態'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `bill`
--

INSERT INTO `bill` (`bill_sn`, `user_sn`, `bill_total`, `bill_date`, `bill_status`) VALUES
(1, 2, 100, '2020-10-27 07:30:45', '已出貨'),
(2, 2, 100, '2020-10-27 07:50:49', '已出貨'),
(3, 2, 100, '2020-10-27 07:52:19', '已出貨'),
(4, 2, 100, '2020-11-03 05:44:58', NULL),
(5, 2, 300, '2020-11-03 05:46:04', '已出貨');

-- --------------------------------------------------------

--
-- 資料表結構 `bill_detail`
--

CREATE TABLE `bill_detail` (
  `bill_sn` mediumint(8) UNSIGNED NOT NULL COMMENT '帳單編號',
  `goods_sn` mediumint(8) UNSIGNED NOT NULL COMMENT '商品編號',
  `goods_amount` tinyint(3) UNSIGNED NOT NULL COMMENT '購買數量',
  `goods_total` mediumint(8) UNSIGNED NOT NULL COMMENT '小計'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `bill_detail`
--

INSERT INTO `bill_detail` (`bill_sn`, `goods_sn`, `goods_amount`, `goods_total`) VALUES
(1, 25, 1, 100),
(2, 24, 1, 100),
(3, 23, 1, 100),
(4, 25, 1, 100),
(5, 24, 1, 100),
(5, 25, 1, 100),
(5, 23, 1, 100);

-- --------------------------------------------------------

--
-- 資料表結構 `elfinder_file`
--

CREATE TABLE `elfinder_file` (
  `id` int(7) UNSIGNED NOT NULL,
  `parent_id` int(7) UNSIGNED NOT NULL,
  `name` varchar(256) NOT NULL,
  `content` longblob NOT NULL,
  `size` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mtime` int(10) UNSIGNED NOT NULL,
  `mime` varchar(256) NOT NULL DEFAULT 'unknown',
  `read` enum('1','0') NOT NULL DEFAULT '1',
  `write` enum('1','0') NOT NULL DEFAULT '1',
  `locked` enum('1','0') NOT NULL DEFAULT '0',
  `hidden` enum('1','0') NOT NULL DEFAULT '0',
  `width` int(5) NOT NULL,
  `height` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `elfinder_file`
--

INSERT INTO `elfinder_file` (`id`, `parent_id`, `name`, `content`, `size`, `mtime`, `mime`, `read`, `write`, `locked`, `hidden`, `width`, `height`) VALUES
(1, 0, 'DATABASE', '', 0, 0, 'directory', '1', '1', '0', '0', 0, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `goods`
--

CREATE TABLE `goods` (
  `goods_sn` mediumint(8) UNSIGNED NOT NULL COMMENT '商品編號',
  `goods_title` varchar(255) NOT NULL COMMENT '商品名稱',
  `goods_content` text NOT NULL COMMENT '商品說明',
  `goods_price` mediumint(8) UNSIGNED NOT NULL COMMENT '商品價錢',
  `goods_counter` smallint(5) UNSIGNED NOT NULL COMMENT '人氣',
  `goods_date` datetime NOT NULL COMMENT '上架日期'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `goods`
--

INSERT INTO `goods` (`goods_sn`, `goods_title`, `goods_content`, `goods_price`, `goods_counter`, `goods_date`) VALUES
(25, '娃娃-史迪奇系列', '<p>趴著的史迪奇</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>貼心提醒：</p>\r\n\r\n<p>他是在我們睡覺當中，可以陪伴我們，不會為了早上的事情而睡不好</p>\r\n', 100, 16, '2020-11-08 08:22:44'),
(24, '娃娃-史迪奇系列', '<p>史迪奇的女朋友 安琪</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>貼心提醒：</p>\r\n\r\n<p>有了她之後，每天看了她，就覺得一天的煩惱都沒了</p>\r\n', 100, 12, '2020-11-08 08:21:59'),
(23, '娃娃-史迪奇系列', '<p>醜ㄚ頭</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>貼心提醒：</p>\r\n\r\n<p>在我們做事情當中，可把他放在我們面前，讓我們可以盡自己的本分做完事情</p>\r\n', 100, 25, '2020-11-08 08:21:29'),
(36, '吊飾-史迪奇系列', '<p>史迪奇女朋友-吊飾</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>貼心提醒：</p>\r\n\r\n<p>可掛在想掛的地方，會讓人覺得看了她之後，心情會放輕鬆，而不會因事情太多，而感到煩躁</p>\r\n', 100, 6, '2020-11-08 08:23:38'),
(37, '吊飾-史迪奇系列', '<p>吊飾-史迪奇</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>貼心提醒：</p>\r\n\r\n<p>可掛在包包，讓你會感到有安全感，就好像有人陪在你身邊一樣</p>\r\n', 100, 6, '2020-11-08 08:24:24'),
(38, '情侶吊飾-史迪奇系列', '<p>吊飾-史迪奇、安琪、醜娃</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>貼心提醒：</p>\r\n\r\n<p>有了他們，會讓你們能夠快樂的過一生</p>\r\n', 100, 6, '2020-11-08 08:25:16');

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `user_sn` mediumint(8) UNSIGNED NOT NULL COMMENT '使用者編號',
  `user_name` varchar(255) NOT NULL COMMENT '使用者姓名',
  `user_id` varchar(255) NOT NULL COMMENT '使用者帳號',
  `user_passwd` varchar(255) NOT NULL COMMENT '使用者密碼',
  `user_email` varchar(255) NOT NULL COMMENT '使用者信箱',
  `user_sex` enum('先生','女士') NOT NULL COMMENT '使用者性別',
  `user_tel` varchar(255) NOT NULL COMMENT '使用者電話',
  `user_zip` varchar(255) NOT NULL COMMENT '使用者郵遞區號',
  `user_county` varchar(255) NOT NULL COMMENT '使用者縣市',
  `user_district` varchar(255) NOT NULL COMMENT '使用者鄉鎮市區',
  `user_address` varchar(255) NOT NULL COMMENT '使用者地址'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `users`
--

INSERT INTO `users` (`user_sn`, `user_name`, `user_id`, `user_passwd`, `user_email`, `user_sex`, `user_tel`, `user_zip`, `user_county`, `user_district`, `user_address`) VALUES
(2, '許云瀞', 'kiki', '$2y$10$/2qBjTmHcqO4MUi70gCjM.44rpw0D9YTFITyhbx1oJqSw0byoFBxq', '107B20263@mailst.cjcu.edu.tw', '女士', '0977679755', '711', '台南市', '歸仁區', '長大路1號');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_sn`);

--
-- 資料表索引 `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`bill_sn`,`goods_sn`);

--
-- 資料表索引 `elfinder_file`
--
ALTER TABLE `elfinder_file`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `parent_name` (`parent_id`,`name`),
  ADD KEY `parent_id` (`parent_id`);

--
-- 資料表索引 `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`goods_sn`);

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_sn`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `bill`
--
ALTER TABLE `bill`
  MODIFY `bill_sn` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '帳單編號', AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `elfinder_file`
--
ALTER TABLE `elfinder_file`
  MODIFY `id` int(7) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `goods`
--
ALTER TABLE `goods`
  MODIFY `goods_sn` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '商品編號', AUTO_INCREMENT=39;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `user_sn` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '使用者編號', AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
