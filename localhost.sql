-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 11, 2016 at 12:06 AM
-- Server version: 5.6.33
-- PHP Version: 5.6.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dailydaima`
--
CREATE DATABASE IF NOT EXISTS `dailydaima` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `dailydaima`;

-- --------------------------------------------------------

--
-- Table structure for table `daima_messages`
--

CREATE TABLE `daima_messages` (
  `message_id` int(11) NOT NULL,
  `message_details` varchar(200) NOT NULL,
  `message_recipient` varchar(20) NOT NULL,
  `message_sender` varchar(20) NOT NULL,
  `message_status` varchar(20) NOT NULL,
  `message_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `daima_messages`
--

INSERT INTO `daima_messages` (`message_id`, `message_details`, `message_recipient`, `message_sender`, `message_status`, `message_time`) VALUES
(5, 'fgrytytyjsdgjhfsgjhagsdfhjd\r\nsafhadsgfhjsdfhjsd\r\nasdsaa', 'farmer', 'admin', 'READ', '2016-11-22 16:10:25'),
(6, 'jdsugfusdjhfgdhjgfsdg\r\nsdfsgdfg', 'edwin', 'admin', 'UNREAD', '2016-11-22 19:00:55'),
(7, 'fjgjfjgf', 'samsy', 'admin', 'UNREAD', '2016-11-22 19:01:57'),
(8, 'rear', 'username', 'farmer', 'UNREAD', '2016-11-24 20:29:07'),
(9, '', 'wweeew', 'admin', 'UNREAD', '2016-11-24 20:36:23'),
(10, 'erer', 'accounts', 'admin', 'READ', '2016-11-24 20:36:30'),
(11, 'hjgjhgjhg', 'accounts', 'admin', 'READ', '2016-11-26 08:35:24'),
(12, 'gjfgfgh', 'accounts', 'admin', 'READ', '2016-11-26 08:39:16'),
(13, 'hah', 'accounts', 'admin', 'READ', '2016-11-26 08:39:24'),
(14, 'job', 'wweeew', 'admin', 'UNREAD', '2016-11-26 08:39:34'),
(15, 'fdgdgfdfgd', 'farmer', 'admin', 'READ', '2016-11-27 00:08:33'),
(16, 'dwwewewe kydsjdskjdhk wdwedw\r\n\r\nsdsdsd\r\nsdsdsd\r\nsdsdsds\r\n\r\nsdsdsd\r\nsdsdsdsd\r\nsdsdsd\r\nsdsds', 'collector', 'farmer', 'UNREAD', '2016-11-27 01:07:50'),
(17, 'sds', 'farmer', 'accounts', 'READ', '2016-11-27 03:46:10'),
(18, 'gui\r\ngfgfj\r\njn,m.mn,\r\nuuuuuuuuutytruf\r\n', 'collector', 'farmer', 'UNREAD', '2016-12-02 00:21:47'),
(19, 'hgjhgjhgjh', 'farmer', 'admin', 'READ', '2016-12-02 08:00:06'),
(20, 'We', 'farmer', 'admin', 'UNREAD', '2016-12-06 18:56:53');

-- --------------------------------------------------------

--
-- Table structure for table `daima_news`
--

CREATE TABLE `daima_news` (
  `news_id` int(11) NOT NULL,
  `news_date` datetime NOT NULL,
  `news_details` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `daima_news`
--

INSERT INTO `daima_news` (`news_id`, `news_date`, `news_details`) VALUES
(1, '2016-09-24 12:18:57', 'Thank s yo jsjkdfhjdsfg'),
(2, '2016-11-24 12:18:57', 'Thank s yo jsjkdfhjdsfg'),
(3, '2016-11-10 12:18:57', 'Thank s yo jsjkdfhjdsfg'),
(4, '2014-11-10 12:18:57', 'Thank s yo jsjkdfhjdsfg'),
(5, '2016-10-01 12:18:57', 'Thank s yo jsjkdfhjdsfg'),
(6, '2016-11-23 12:18:57', 'Thank s yo jsjkdfhjdsfg'),
(7, '2016-12-02 08:08:46', 'j');

-- --------------------------------------------------------

--
-- Table structure for table `employee_table`
--

CREATE TABLE `employee_table` (
  `employee_id` int(11) NOT NULL,
  `employee_firstname` varchar(20) NOT NULL,
  `employee_lastname` varchar(20) NOT NULL,
  `employee_dateemployed` datetime NOT NULL,
  `employee_title` varchar(20) NOT NULL,
  `employee_address` varchar(20) NOT NULL,
  `employee_contact` varchar(20) NOT NULL,
  `employee_username` varchar(20) NOT NULL,
  `employee_password` varchar(100) NOT NULL,
  `employee_regdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee_table`
--

INSERT INTO `employee_table` (`employee_id`, `employee_firstname`, `employee_lastname`, `employee_dateemployed`, `employee_title`, `employee_address`, `employee_contact`, `employee_username`, `employee_password`, `employee_regdate`) VALUES
(10, 'james', 'wagura', '0000-00-00 00:00:00', 'Supervisor', '454', '675655', 'accounts', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '2016-11-26 08:46:54'),
(11, 'john', 'xxxxx', '0000-00-00 00:00:00', 'Supervisor', '454', '675655', 'collector', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '2016-11-26 08:47:38'),
(12, 'ghfg', 'hjhf', '0000-00-00 00:00:00', 'hjf', '67567', '755', 'sssss', '97bae978189e81694b5e95e6fb23a149cbf087540904c0609527164d6d703b60', '2016-12-06 19:00:33');

-- --------------------------------------------------------

--
-- Table structure for table `farmer_table`
--

CREATE TABLE `farmer_table` (
  `farmer_id` int(11) NOT NULL,
  `farmer_firstname` varchar(250) NOT NULL,
  `farmer_lastname` varchar(250) NOT NULL,
  `farmer_username` varchar(250) NOT NULL,
  `farmer_email` varchar(250) NOT NULL,
  `farmer_regdate` datetime NOT NULL,
  `farmer_password` varchar(100) NOT NULL,
  `farmer_phonenumber` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `farmer_table`
--

INSERT INTO `farmer_table` (`farmer_id`, `farmer_firstname`, `farmer_lastname`, `farmer_username`, `farmer_email`, `farmer_regdate`, `farmer_password`, `farmer_phonenumber`) VALUES
(6, 'sams', 'maina', 'farmer', 'sa@gmail.com', '2016-11-26 08:44:17', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '345345');

-- --------------------------------------------------------

--
-- Table structure for table `login_table`
--

CREATE TABLE `login_table` (
  `login_id` int(11) NOT NULL,
  `login_username` varchar(20) NOT NULL,
  `login_password` varchar(100) NOT NULL,
  `login_category` int(20) NOT NULL,
  `login_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login_table`
--

INSERT INTO `login_table` (`login_id`, `login_username`, `login_password`, `login_category`, `login_status`) VALUES
(6, 'admin', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', 4, 'active'),
(9, 'farmer', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 1, 'active'),
(10, 'accounts', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 3, 'active'),
(11, 'collector', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 2, 'active'),
(12, 'sssss', '97bae978189e81694b5e95e6fb23a149cbf087540904c0609527164d6d703b60', 2, 'inactive');

-- --------------------------------------------------------

--
-- Table structure for table `record_table`
--

CREATE TABLE `record_table` (
  `record_id` int(11) NOT NULL,
  `record_farmer_name` varchar(50) NOT NULL,
  `record_farmer_username` varchar(250) NOT NULL,
  `record_total_milk` varchar(250) NOT NULL,
  `record_total_cash` int(6) NOT NULL,
  `record_status` varchar(20) NOT NULL,
  `record_date` datetime NOT NULL,
  `record_odetails` varchar(250) NOT NULL,
  `record_bank_ref` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `record_table`
--

INSERT INTO `record_table` (`record_id`, `record_farmer_name`, `record_farmer_username`, `record_total_milk`, `record_total_cash`, `record_status`, `record_date`, `record_odetails`, `record_bank_ref`) VALUES
(1, 'farmer farmer', 'farmer', '8787', 351480, 'Paid', '2016-11-24 19:55:31', 'gf', '4534gfdfd'),
(2, 'sss ssss', 'wweeew', '4535', 181400, 'Paid', '2016-11-24 20:01:55', 'e', '3434gf'),
(7, 'farmer farmer', 'farmer', '454', 18160, 'Paid', '2016-11-24 20:04:16', 'Paid', '877Cv7868767ghjg'),
(8, 'sss ssss', 'wweeew', '454', 18160, 'Paid', '2016-11-24 20:04:21', 'Ok', '55YTIUREWRFG6776'),
(9, 'farmer farmer', 'farmer', '4545', 181800, 'Paid', '2016-11-24 20:04:31', 'hg', 'RFHJ66767'),
(10, 'farmer farmer', 'farmer', '5656', 226240, 'Paid', '2016-11-24 20:05:21', '6', 'trough');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daima_messages`
--
ALTER TABLE `daima_messages`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `daima_news`
--
ALTER TABLE `daima_news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `employee_table`
--
ALTER TABLE `employee_table`
  ADD PRIMARY KEY (`employee_username`),
  ADD UNIQUE KEY `employee_id` (`employee_id`);

--
-- Indexes for table `farmer_table`
--
ALTER TABLE `farmer_table`
  ADD PRIMARY KEY (`farmer_username`),
  ADD KEY `farmer_id` (`farmer_id`);

--
-- Indexes for table `login_table`
--
ALTER TABLE `login_table`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `record_table`
--
ALTER TABLE `record_table`
  ADD PRIMARY KEY (`record_id`),
  ADD KEY `record_id` (`record_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daima_messages`
--
ALTER TABLE `daima_messages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `daima_news`
--
ALTER TABLE `daima_news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `employee_table`
--
ALTER TABLE `employee_table`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `farmer_table`
--
ALTER TABLE `farmer_table`
  MODIFY `farmer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `login_table`
--
ALTER TABLE `login_table`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `record_table`
--
ALTER TABLE `record_table`
  MODIFY `record_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;--
-- Database: `daima`
--
CREATE DATABASE IF NOT EXISTS `daima` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `daima`;

-- --------------------------------------------------------

--
-- Table structure for table `farmer_table`
--

CREATE TABLE `farmer_table` (
  `farmer_id` int(11) NOT NULL,
  `farmer_fisrtname` varchar(250) NOT NULL,
  `farmer_lastname` varchar(250) NOT NULL,
  `farmer_username` varchar(250) NOT NULL,
  `farmer_email` varchar(250) NOT NULL,
  `farmer_regdate` datetime NOT NULL,
  `farmer_password` varchar(100) NOT NULL,
  `farmer_phonenumber` varchar(10) NOT NULL,
  `status` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `pid` int(11) NOT NULL,
  `farmer_name` varchar(250) NOT NULL,
  `farmer_username` varchar(250) NOT NULL,
  `total_collected` varchar(250) NOT NULL,
  `total_cash` int(6) NOT NULL,
  `status` varchar(20) NOT NULL,
  `date` datetime NOT NULL,
  `odetails` varchar(250) NOT NULL,
  `bank_ref` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`pid`, `farmer_name`, `farmer_username`, `total_collected`, `total_cash`, `status`, `date`, `odetails`, `bank_ref`) VALUES
(2, 'Jameson Maina', 'user', '60', 2400, 'Paid', '2016-11-15 12:24:09', 'tre', '345534gfghfgh'),
(3, 'Jameson Maina', 'user', '30', 1200, 'Paid', '2016-11-15 12:30:00', 'hfhgf', 't5645646tredrt54345'),
(5, 'Jameson Maina', 'user', '60', 2400, 'Paid', '2016-11-15 12:33:11', 'hgfhg', '56465fghhgf'),
(6, 'Jameson Maina', 'user', '20', 800, 'Approved', '2016-11-15 16:09:14', '', ''),
(7, 'Jameson Maina', 'user', '56', 2240, 'Approved', '2016-11-15 16:10:12', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `userid` int(11) NOT NULL,
  `user_category` tinyint(2) NOT NULL,
  `user_username` varchar(20) NOT NULL,
  `user_password` text NOT NULL,
  `user_firstname` varchar(40) NOT NULL,
  `user_lastname` varchar(40) NOT NULL,
  `user_phone_num` varchar(10) NOT NULL,
  `user_status` varchar(20) NOT NULL,
  `user_location` varchar(56) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_address` varchar(50) NOT NULL,
  `user_next_kin_name` varchar(50) DEFAULT NULL,
  `user_next_kin_number` varchar(100) DEFAULT NULL,
  `user_next_kin_email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`userid`, `user_category`, `user_username`, `user_password`, `user_firstname`, `user_lastname`, `user_phone_num`, `user_status`, `user_location`, `user_email`, `user_address`, `user_next_kin_name`, `user_next_kin_number`, `user_next_kin_email`) VALUES
(21, 4, 'admin', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'Samson', 'Mwangi', '23234 3434', 'active', '', 'admin@gmail.com', '', NULL, NULL, NULL),
(23, 1, 'user', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'Jameson', 'Maina', '23234 3434', 'inactive', '', 'admin@gmail.com', '', NULL, NULL, NULL),
(24, 2, 'user1', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'fffggfgfgfgfg', 'Maina', '23234 3434', 'inactive', '', 'admin@gmail.com', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `category` tinyint(2) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` text NOT NULL,
  `firstname` varchar(40) NOT NULL,
  `lastname` varchar(40) NOT NULL,
  `phone_num` varchar(10) NOT NULL,
  `status` varchar(20) NOT NULL,
  `location` varchar(56) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `next_kin_name` varchar(50) DEFAULT NULL,
  `next_kin_number` varchar(100) DEFAULT NULL,
  `next_kin_email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `category`, `username`, `password`, `firstname`, `lastname`, `phone_num`, `status`, `location`, `email`, `address`, `next_kin_name`, `next_kin_number`, `next_kin_email`) VALUES
(21, 4, 'admin', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'Samson', 'Mwangi', '23234 3434', 'active', '', 'admin@gmail.com', '', NULL, NULL, NULL),
(23, 1, 'user', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'Jameson', 'Maina', '23234 3434', 'inactive', '', 'admin@gmail.com', '', NULL, NULL, NULL),
(24, 2, 'user1', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'fffggfgfgfgfg', 'Maina', '23234 3434', 'inactive', '', 'admin@gmail.com', '', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `farmer_table`
--
ALTER TABLE `farmer_table`
  ADD PRIMARY KEY (`farmer_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `farmer_table`
--
ALTER TABLE `farmer_table`
  MODIFY `farmer_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;--
-- Database: `farmer`
--
CREATE DATABASE IF NOT EXISTS `farmer` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `farmer`;

-- --------------------------------------------------------

--
-- Table structure for table `cases`
--

CREATE TABLE `cases` (
  `id` int(15) NOT NULL,
  `client` varchar(10) NOT NULL,
  `consultant` varchar(15) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cases`
--

INSERT INTO `cases` (`id`, `client`, `consultant`, `status`) VALUES
(1, 'client', 'karis', 'SOLVED'),
(2, 'mwangis', 'smwangi', 'SOLVED');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `jobid` int(11) NOT NULL,
  `jobtype` varchar(45) DEFAULT NULL,
  `appliedby` varchar(45) DEFAULT NULL,
  `jobstatus` varchar(45) DEFAULT NULL,
  `jobby` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`jobid`, `jobtype`, `appliedby`, `jobstatus`, `jobby`) VALUES
(0, '3dfgfdgfgfdg', NULL, 'active', NULL),
(453, '343', NULL, '3434', 'smwangi'),
(4434, 'rrrrrr', NULL, 'fffff', 'smwangi'),
(453453, 'retrtert345', NULL, 'active', 'smwangi'),
(3242343, '34', NULL, '34', 'smwangi'),
(32434545, 'ererer', NULL, 'active', 'smwangi');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `msgid` int(100) NOT NULL,
  `sender` varchar(11) NOT NULL,
  `recipient` varchar(11) NOT NULL,
  `msg` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`msgid`, `sender`, `recipient`, `msg`, `date`, `status`) VALUES
(14, 'smaina', 'jmaina', '[[[[[/......;\'', '2014-09-23 17:42:01', 'READ'),
(15, 'jmaina', 'sam', 'iu', '2014-09-23 14:33:48', 'UNREAD'),
(16, 'smaina', 'jmaina', '\'\'\'', '2014-09-23 15:41:08', 'UNREAD'),
(17, 'jmaina', 'smaina', '/////', '2014-09-23 17:36:30', 'UNREAD'),
(18, 'jmaina', 'sam', 'please', '2014-09-23 17:41:46', 'UNREAD'),
(19, 'jmaina', 'smaina', '....', '2014-09-23 17:45:21', 'READ'),
(20, 'smaina', 'jmaina', 'kkkk', '2014-09-23 17:45:27', 'UNREAD'),
(21, 'smaina', 'jmaina', 'lll', '2014-09-23 17:45:38', 'UNREAD'),
(22, 'mwangis', 'sam', 'dfdf', '2016-08-26 00:03:04', 'UNREAD'),
(23, 'smwangi', 'mwangis', 'jlj', '2016-08-26 00:56:28', 'READ'),
(24, 'mwangis', 'smwangi', 'xcxcxc', '2016-08-26 01:09:58', 'READ'),
(25, 'mwangis', 'sam', 'ds', '2016-08-26 01:06:16', 'UNREAD'),
(26, 'smwangi', 'mwangis', 'ghghgj', '2016-08-26 01:14:42', 'READ'),
(27, 'mwangis', 'smwangi', 'dfdfdfdfdfdfdsdsd', '2016-08-26 01:19:47', 'READ'),
(28, 'mwangis', 'sam', 'fdfdfd', '2016-08-26 01:15:39', 'UNREAD'),
(29, 'mwangis', 'smaina', 'dfdf', '2016-08-26 01:15:51', 'UNREAD'),
(30, 'mwangis', 'smaina', 'fsffsfs', '2016-08-26 01:16:18', 'UNREAD'),
(31, 'mwangis', 'smaina', 'fdfdf', '2016-08-26 01:19:14', 'UNREAD'),
(32, 'smwangi', 'mwangis', 'zxzxz', '2016-08-26 08:40:29', 'READ'),
(33, 'smwangi', 'mwangis', 'sddsdsd', '2016-08-26 09:15:34', 'READ'),
(34, 'smwangi', 'jmaina', 'iihhjhj', '2016-08-26 12:21:18', 'UNREAD'),
(35, 'smwangi', 'jmaina', 'bbnb', '2016-08-26 12:21:36', 'UNREAD'),
(36, 'smwangi', 'jmaina', 'vbv', '2016-08-26 12:21:49', 'UNREAD'),
(37, 'mwangis', 'sam', 'Welcome Mr SAAA', '2016-08-26 12:23:39', 'UNREAD'),
(38, 'mwangis', 'sam', 'jvnbvnv', '2016-08-26 15:28:28', 'UNREAD'),
(39, 'mwangis', 'smaina', 'yrdgfdgffdgdgfdgf', '2016-08-26 15:41:40', 'UNREAD'),
(40, 'mwangis', 'sam', '656ghfhgfhgfgh\r\ntrytrytr\r\n67767865rdgdfdfgdghfg 56484548 reysfdsfdsds\r\n75756rsfdssafjhg', '2016-08-26 15:42:16', 'UNREAD'),
(41, 'mwangis', 'sam', 'retretyre', '2016-08-26 15:43:29', 'UNREAD'),
(42, 'mwangis', 'sam', 'rytrtytry\r\n\r\n67577667567\r\n\r\n', '2016-08-26 15:45:21', 'UNREAD'),
(43, 'mwangis', 'sam', '8', '2016-08-26 15:45:37', 'UNREAD'),
(44, '', 'user', 'gf', '2016-11-15 13:17:29', 'UNREAD'),
(45, 'samsy', 'user', 'rtr', '2016-11-22 12:27:07', 'UNREAD');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `category` tinyint(2) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` text NOT NULL,
  `firstname` varchar(40) NOT NULL,
  `lastname` varchar(40) NOT NULL,
  `status` varchar(20) NOT NULL,
  `speciality` varchar(56) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `cname` varchar(50) DEFAULT NULL,
  `cspeciality` varchar(50) DEFAULT NULL,
  `odetails` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `category`, `username`, `password`, `firstname`, `lastname`, `status`, `speciality`, `email`, `cname`, `cspeciality`, `odetails`) VALUES
(3, 3, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'admin', 'active', '', '', NULL, NULL, NULL),
(6, 2, 'sam', '332532dcfaa1cbf61e2a266bd723612c', 'samson', 'johes', 'active', 'Software Developer', '', NULL, NULL, NULL),
(11, 1, 'jmaina', '81dc9bdb52d04dc20036dbd8313ed055', 'james', 'maina', 'active', 'N/A', 'j@trimester.com', NULL, NULL, NULL),
(12, 2, 'smaina', '81dc9bdb52d04dc20036dbd8313ed055', 'maina', 'samuel', 'active', 'PHP', 'infor.samson@gmail.com', 'COPY CAT LTD', 'N/A', 'IT'),
(13, 2, 'smwangi', '81dc9bdb52d04dc20036dbd8313ed055', 'samson', 'samson', 'active', 'N/A', 's@sam.com', '', '', ''),
(14, 1, 'mwangis', '81dc9bdb52d04dc20036dbd8313ed055', 'samson', 'mwangi', 'active', 'N/A', 's@sam.com', NULL, NULL, NULL),
(15, 2, 'h', '81dc9bdb52d04dc20036dbd8313ed055', 'hgtssasa', 'fhf', 'active', 'N/A', 'gg@m.com', NULL, NULL, NULL),
(16, 2, 'sam', '81dc9bdb52d04dc20036dbd8313ed055', 'dddd', 'dddd', 'active', 'N/A', 'sss@dfd.com', NULL, NULL, NULL),
(17, 2, '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', 'inactive', 'N/A', '', NULL, NULL, NULL),
(18, 1, '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', 'inactive', 'N/A', '', NULL, NULL, NULL),
(19, 1, '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', 'inactive', 'N/A', '', NULL, NULL, NULL),
(20, 1, 'user', '81dc9bdb52d04dc20036dbd8313ed055', 'xxxxx', 'xxxxx', 'active', 'N/A', 'df@jk.com', NULL, NULL, NULL),
(21, 2, 'user1', '25d55ad283aa400af464c76d713c07ad', 'user user', 'user', 'active', 'N/A', 'sd@jhj.com', NULL, NULL, NULL),
(22, 1, 'user', '25d55ad283aa400af464c76d713c07ad', 'hjgjhghjghj hjg', 'ytrytrtyt ', 'inactive', 'N/A', 'ghfghf@hjf.com', NULL, NULL, NULL),
(23, 2, 'samsy', '25d55ad283aa400af464c76d713c07ad', 'xxx cc', 'xxx cc', 'active', 'N/A', 'ww@gff.com', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`jobid`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`msgid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cases`
--
ALTER TABLE `cases`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `msgid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;--
-- Database: `mhub`
--
CREATE DATABASE IF NOT EXISTS `mhub` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `mhub`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `userName` varchar(30) NOT NULL,
  `userEmail` varchar(60) NOT NULL,
  `userPass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`),
  ADD UNIQUE KEY `userEmail` (`userEmail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT;--
-- Database: `ndiuni`
--
CREATE DATABASE IF NOT EXISTS `ndiuni` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ndiuni`;

-- --------------------------------------------------------

--
-- Table structure for table `bursarystudent`
--

CREATE TABLE `bursarystudent` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `CLASS` varchar(35) NOT NULL,
  `SEX` varchar(1) NOT NULL,
  `AMOUNT` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `club`
--

CREATE TABLE `club` (
  `CLUB_ID` varchar(5) NOT NULL,
  `NAME` varchar(15) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  `CHAIRMAN` varchar(72) NOT NULL,
  `PATRON` varchar(50) NOT NULL,
  `DATE` date NOT NULL,
  `STATUS` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `club`
--

INSERT INTO `club` (`CLUB_ID`, `NAME`, `DESCRIPTION`, `CHAIRMAN`, `PATRON`, `DATE`, `STATUS`) VALUES
('23w', 'jjj', 'fgd', 'dsfrsd', 'dgfsr', '2013-07-24', 'Active'),
('A122', 'WILD LIFE', 'FOREST', 'HERBERT', 'NANA', '2013-09-03', 'active'),
('A123', 'SCOUT CLUB', 'STEADY', 'JACK', 'MUGAGA', '2012-05-08', 'active'),
('A124', 'TASO', 'PROVIDE', 'KIVOSA', 'HIM', '2013-06-14', 'active'),
('dsfas', 'dsfsad', 'sdfsa', 'sfaweewfwe', 'sdcsa', '2013-07-24', 'Active'),
('F100', 'FOOTBALL', 'ARSENAL FC', 'JACK', 'SON', '2013-07-13', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `clubmember`
--

CREATE TABLE `clubmember` (
  `CLUB_ID` varchar(5) NOT NULL,
  `MEMBER_ID` varchar(45) NOT NULL,
  `DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clubmember`
--

INSERT INTO `clubmember` (`CLUB_ID`, `MEMBER_ID`, `DATE`) VALUES
('A122', 'cubed tevvez', '2013-07-22'),
('A122', 'herbert samz', '2013-06-14'),
('A122', 'jackson hreb', '2013-06-14'),
('A122', 'NANI lous', '2013-07-04'),
('A123', 'herbert samz', '2013-06-14'),
('A123', 'JAC romeo', '2013-06-14'),
('A124', 'cubed tevvez', '2013-06-14'),
('A124', 'FRED john', '2013-07-04'),
('A124', 'NANI lous', '2013-06-14'),
('F100', 'herbert samz', '2013-07-13');

-- --------------------------------------------------------

--
-- Table structure for table `expenditure`
--

CREATE TABLE `expenditure` (
  `ID` int(11) NOT NULL,
  `ITEM` varchar(50) NOT NULL,
  `AMOUNT` float NOT NULL,
  `DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `ID` int(2) NOT NULL,
  `SUB_ID` varchar(7) NOT NULL,
  `LMARK` int(2) NOT NULL,
  `HMARK` int(3) NOT NULL,
  `AGGREGATE` smallint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `image_id` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `image_id`, `location`) VALUES
(24, '23', 'upload/Capture.PNG'),
(31, 'cc', 'upload/1476786802_vector_65_04.png'),
(9, 'cubed tevvez', 'upload/936787_388129121304239_1854243492_n.jpg'),
(29, 'emilly', 'upload/3_2.jpg'),
(13, 'FRED john', 'upload/jackss.PNG'),
(19, 'Gideon', 'upload/feature_mental.gif'),
(10, 'herbert samz', 'upload/kk.PNG'),
(12, 'JAC romeo', 'upload/jac.PNG'),
(8, 'jackson hreb', 'upload/dd.PNG'),
(23, 'jasso', 'upload/1003254_139289079600772_600430553_n.jpg'),
(17, 'jolly', 'upload/Tulips.jpg'),
(21, 'lillian', 'upload/969983_139540719575608_652983355_n.jpg'),
(20, 'maniraguha', 'upload/945922_139288632934150_1239182602_n.jpg'),
(30, 'mut', 'upload/image.jpg'),
(11, 'NANI lous', 'upload/551779_239753149475171_273745233_n.jpg'),
(25, 'ngoroye', 'upload/8db594cdfc5a95f59f59d8f3aeead3be.jpg'),
(28, 'NYIRAMAHIRWE EMILLY', 'upload/3_2.jpg'),
(18, 'ONYANGO', 'upload/phonewor.PNG'),
(15, 'rebecca me', 'upload/vlcsnap-2013-06-22-15h42m40s140.png'),
(32, 'rtetr rterte', 'upload/1476786802_vector_65_04.png'),
(16, 'safi', 'upload/Penguins.jpg'),
(14, 'testing', 'upload/7.jpg'),
(22, 'working', 'upload/5897_139288476267499_1719977008_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `itempay`
--

CREATE TABLE `itempay` (
  `ID` int(11) NOT NULL,
  `STNAME` varchar(255) NOT NULL,
  `ITEM` varchar(255) NOT NULL,
  `AMOUNT` float NOT NULL,
  `DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itempay`
--

INSERT INTO `itempay` (`ID`, `STNAME`, `ITEM`, `AMOUNT`, `DATE`) VALUES
(3, 'jackson hreb', 'sugar', 2500, '2013-07-23'),
(5, 'herbert samz', 'slasher,\r\noil', 2500, '2013-07-24'),
(11, 'herbert samz', 'dfdsfdsfs', 323, '2013-07-24'),
(12, 'jackson hreb', 'bullete', 500, '2013-08-14');

-- --------------------------------------------------------

--
-- Table structure for table `nonstaff`
--

CREATE TABLE `nonstaff` (
  `NONS_ID` int(5) NOT NULL,
  `NAME` varchar(30) NOT NULL,
  `SEX` varchar(1) NOT NULL,
  `AGE` varchar(5) NOT NULL,
  `DUTY` varchar(45) NOT NULL,
  `STATUS` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nonstaffpay`
--

CREATE TABLE `nonstaffpay` (
  `NON_ID` varchar(255) NOT NULL,
  `PAY_ID` int(1) NOT NULL,
  `SALARY` float NOT NULL,
  `PAYAMOUNT` double NOT NULL,
  `CREDIT` double NOT NULL,
  `DAYPAY1` date NOT NULL,
  `DAYPAY2` date NOT NULL,
  `STATUS` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nonstaffpay`
--

INSERT INTO `nonstaffpay` (`NON_ID`, `PAY_ID`, `SALARY`, `PAYAMOUNT`, `CREDIT`, `DAYPAY1`, `DAYPAY2`, `STATUS`) VALUES
('Ngobi Daniel', 22, 20000, 0, 20000, '2016-08-17', '2016-08-26', ''),
('red', 21, 600, 600, 0, '2013-11-11', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `STUDENT_ID` int(11) NOT NULL,
  `STNAME` varchar(255) NOT NULL,
  `CLASS` varchar(15) NOT NULL,
  `TERM` varchar(15) NOT NULL,
  `YEAR` int(4) NOT NULL,
  `TUTION` float NOT NULL,
  `AMOUNT` float NOT NULL,
  `DUES` float NOT NULL,
  `BALANCE` float NOT NULL,
  `DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`STUDENT_ID`, `STNAME`, `CLASS`, `TERM`, `YEAR`, `TUTION`, `AMOUNT`, `DUES`, `BALANCE`, `DATE`) VALUES
(8, 'cubed tevvez', 'SENIOR THREE', 'THIRD TERM', 2013, 300000, 34000, 266000, -266000, '2013-07-20'),
(10, 'rebecca me', 'SENIOR ONE', 'FIRST TERM', 2011, 500, 700, -200, 200, '2013-07-24'),
(13, 'jackson hreb', 'SENIOR ONE', 'FIRST TERM', 2011, 5000, 5000, 0, 0, '2013-07-22'),
(16, 'FRED john', 'SENIOR TWO', 'FIRST TERM', 2011, 500, 400, 100, -100, '2013-07-23'),
(17, 'NANI lous', 'SENIOR THREE', 'SECOND TERM', 2014, 5000, 2500, 2500, -2500, '2013-07-23'),
(18, 'safi', 'SENIOR THREE', 'SECOND TERM', 2013, 600, 0, 600, 1900, '2013-07-23'),
(19, 'herbert samz', 'SENIOR FIVE', 'SECOND TERM', 2013, 30000, 3000, 27000, -27000, '2013-07-23'),
(22, 'ONYANGO', 'SENIOR THREE', 'SECOND TERM', 2013, 200000, 5000000, -4800000, 4800000, '2013-07-24'),
(23, 'Gideon', 'SENIOR ONE', 'FIRST TERM', 2013, 5000, 2500, 2500, -2500, '2013-08-07'),
(24, 'maniraguha', 'SENIOR FIVE', 'SECOND TERM', 2013, 6000, 7000, -1000, 1000, '2013-08-08');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `STUDENT_ID` int(11) NOT NULL,
  `STNAME` varchar(255) NOT NULL,
  `SEX` char(1) NOT NULL,
  `AGE` int(2) NOT NULL,
  `DISTRICT` varchar(15) NOT NULL,
  `GUARDIAN` varchar(30) NOT NULL,
  `OFFERING` varchar(15) NOT NULL,
  `CLASS` varchar(15) NOT NULL,
  `STATUS` varchar(25) NOT NULL,
  `DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`STUDENT_ID`, `STNAME`, `SEX`, `AGE`, `DISTRICT`, `GUARDIAN`, `OFFERING`, `CLASS`, `STATUS`, `DATE`) VALUES
(3, 'rtetr rterte', 'M', 6, 'etrtet', 'tetete', 'DAY', 'CLASS THREE', 'Active', '2016-11-01');

-- --------------------------------------------------------

--
-- Table structure for table `studentmark`
--

CREATE TABLE `studentmark` (
  `YEAR` int(4) NOT NULL,
  `TERM` varchar(15) NOT NULL,
  `CODE` varchar(7) NOT NULL,
  `STUDENT_ID` varchar(255) NOT NULL,
  `TEST` int(3) DEFAULT NULL,
  `EXAM` int(3) DEFAULT NULL,
  `TNAME` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentmark`
--

INSERT INTO `studentmark` (`YEAR`, `TERM`, `CODE`, `STUDENT_ID`, `TEST`, `EXAM`, `TNAME`) VALUES
(2013, 'FIRST TERM', 'AGR', 'cubed tevvez', 45, 80, 'YH'),
(2014, 'SECOND TERM', 'AGR', 'FRED john', 60, 80, 'jk'),
(2013, 'FIRST TERM', 'AGR', 'Gideon', 88, 99, 'mj'),
(2013, 'THIRD TERM', 'AGR', 'jackson hreb', 77, 80, 'YH'),
(2013, 'FIRST TERM', 'AGR', 'ngoroye', 88, 99, 'ngw'),
(2013, 'THIRD TERM', 'ART', 'jackson hreb', 49, 100, 'AA'),
(2014, 'THIRD TERM', 'BIO', 'jackson hreb', 45, 76, 'YH'),
(2012, 'THIRD TERM', 'BIO', 'NANI lous', 78, 56, 'YH'),
(2015, 'FIRST TERM', 'CHEM', 'cubed tevvez', 91, 0, 'Daniel'),
(2013, 'SECOND TERM', 'CHEM', 'FRED john', 45, 0, 'SK'),
(2013, 'SECOND TERM', 'CHEM', 'jackson hreb', 78, 98, 'SK'),
(2014, 'FIRST TERM', 'CRE', 'jackson hreb', 60, 0, 'ok'),
(2013, 'SECOND TERM', 'CRE', 'safi', 78, 98, 'SK'),
(2013, 'FIRST TERM', 'ENG', 'cubed tevvez', 23, 23, 'Daniel'),
(2013, 'THIRD TERM', 'ENG', 'jackson hreb', 100, 100, 'ZZ'),
(2014, 'FIRST TERM', 'ENG', 'NANI lous', 78, 0, 'ok'),
(2013, 'THIRD TERM', 'FRE', 'jackson hreb', 56, 72, 'KJ'),
(2013, 'SECOND TERM', 'HIST', 'cubed tevvez', 45, 0, 'Daniel'),
(2013, 'THIRD TERM', 'LIT', 'jackson hreb', 67, 90, 'SJ'),
(2013, 'THIRD TERM', 'MTC', 'jackson hreb', 88, 90, 'KJ'),
(2013, 'SECOND TERM', 'MTC', 'maniraguha', 70, 77, 'MJ'),
(2013, 'SECOND TERM', 'MUS', 'JAC romeo', 66, 0, 'HJ'),
(2014, 'SECOND TERM', 'MUS', 'JACKSON HREB', 45, 0, 'Daniel'),
(2013, 'FIRST TERM', 'PHY', 'herbert samz', 45, 68, 'YH'),
(2013, 'THIRD TERM', 'PHY', 'jackson hreb', 88, 66, 'JH');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `ID` int(2) NOT NULL,
  `CODE` varchar(5) NOT NULL,
  `SUBJECTNAME` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `TEACH_ID` int(11) NOT NULL,
  `NAMES` varchar(30) NOT NULL,
  `SEX` char(1) NOT NULL,
  `AGE` int(2) NOT NULL,
  `QUALITY` varchar(30) NOT NULL,
  `STATUS` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teachercheck`
--

CREATE TABLE `teachercheck` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(300) NOT NULL,
  `DATE` date NOT NULL,
  `TIME` time NOT NULL,
  `COMMENT` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachercheck`
--

INSERT INTO `teachercheck` (`ID`, `NAME`, `DATE`, `TIME`, `COMMENT`) VALUES
(1, 'ERERERWRWRER EFEWFWEF', '2016-08-29', '08:16:23', ''),
(2, 'JAMES', '2016-10-05', '11:41:34', '');

-- --------------------------------------------------------

--
-- Table structure for table `teachersalary`
--

CREATE TABLE `teachersalary` (
  `TEACH_ID` varchar(255) NOT NULL,
  `PAY_ID` int(1) NOT NULL,
  `SALARY` float NOT NULL,
  `PAYAMOUNT` double NOT NULL,
  `CREDIT` double NOT NULL,
  `DAYPAY1` date NOT NULL,
  `DAYPAY2` date NOT NULL,
  `STATUS` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(50) NOT NULL,
  `FNAME` varchar(30) NOT NULL,
  `LNAME` varchar(30) NOT NULL,
  `LEVEL` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `FNAME`, `LNAME`, `LEVEL`) VALUES
(11, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'DERICK', 'DAN', 1),
(13, 'jackson', 'e99a18c428cb38d5f260853678922e03', 'NANI', 'LOUS', 2),
(14, 'secretary', '21232f297a57a5a743894a0e4a801fc3', 'Mrs', 'Erina', 3),
(15, 'bursar', '21232f297a57a5a743894a0e4a801fc3', 'Mr ', 'Bursar', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bursarystudent`
--
ALTER TABLE `bursarystudent`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `club`
--
ALTER TABLE `club`
  ADD PRIMARY KEY (`CLUB_ID`);

--
-- Indexes for table `clubmember`
--
ALTER TABLE `clubmember`
  ADD PRIMARY KEY (`CLUB_ID`,`MEMBER_ID`);

--
-- Indexes for table `expenditure`
--
ALTER TABLE `expenditure`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`image_id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `itempay`
--
ALTER TABLE `itempay`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `nonstaff`
--
ALTER TABLE `nonstaff`
  ADD PRIMARY KEY (`NONS_ID`);

--
-- Indexes for table `nonstaffpay`
--
ALTER TABLE `nonstaffpay`
  ADD PRIMARY KEY (`NON_ID`),
  ADD UNIQUE KEY `PAY_ID` (`PAY_ID`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`STUDENT_ID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`STUDENT_ID`);

--
-- Indexes for table `studentmark`
--
ALTER TABLE `studentmark`
  ADD PRIMARY KEY (`CODE`,`STUDENT_ID`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`CODE`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`TEACH_ID`);

--
-- Indexes for table `teachercheck`
--
ALTER TABLE `teachercheck`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `teachersalary`
--
ALTER TABLE `teachersalary`
  ADD PRIMARY KEY (`TEACH_ID`),
  ADD UNIQUE KEY `PAY_ID` (`PAY_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bursarystudent`
--
ALTER TABLE `bursarystudent`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `expenditure`
--
ALTER TABLE `expenditure`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `ID` int(2) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `itempay`
--
ALTER TABLE `itempay`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `nonstaff`
--
ALTER TABLE `nonstaff`
  MODIFY `NONS_ID` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nonstaffpay`
--
ALTER TABLE `nonstaffpay`
  MODIFY `PAY_ID` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `STUDENT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `STUDENT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `ID` int(2) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `TEACH_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `teachercheck`
--
ALTER TABLE `teachercheck`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `teachersalary`
--
ALTER TABLE `teachersalary`
  MODIFY `PAY_ID` int(1) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `clubmember`
--
ALTER TABLE `clubmember`
  ADD CONSTRAINT `FK1` FOREIGN KEY (`CLUB_ID`) REFERENCES `club` (`CLUB_ID`);
--
-- Database: `notes`
--
CREATE DATABASE IF NOT EXISTS `notes` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `notes`;

-- --------------------------------------------------------

--
-- Table structure for table `cases`
--

CREATE TABLE `cases` (
  `id` int(15) NOT NULL,
  `client` varchar(10) NOT NULL,
  `consultant` varchar(15) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cases`
--

INSERT INTO `cases` (`id`, `client`, `consultant`, `status`) VALUES
(1, 'client', 'karis', 'SOLVED');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `msgid` int(100) NOT NULL,
  `sender` varchar(11) NOT NULL,
  `recipient` varchar(11) NOT NULL,
  `msg` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`msgid`, `sender`, `recipient`, `msg`, `date`, `status`) VALUES
(16, 'smaina', 'jmaina', '\'\'\'', '2014-09-23 15:41:08', 'UNREAD'),
(17, 'jmaina', 'smaina', '/////', '2014-09-23 17:36:30', 'UNREAD'),
(18, 'jmaina', 'sam', 'please', '2014-09-23 17:41:46', 'UNREAD'),
(19, 'jmaina', 'smaina', '....', '2014-09-23 17:45:21', 'READ'),
(20, 'smaina', 'jmaina', 'kkkk', '2014-09-23 17:45:27', 'UNREAD'),
(21, 'smaina', 'jmaina', 'lll', '2014-09-23 17:45:38', 'UNREAD'),
(22, 'samsy1', 'samsy1', 'fdsfdfdfsdf', '2016-11-22 13:38:23', 'UNREAD');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `category` tinyint(2) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` text NOT NULL,
  `firstname` varchar(40) NOT NULL,
  `lastname` varchar(40) NOT NULL,
  `status` varchar(20) NOT NULL,
  `speciality` varchar(56) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `cname` varchar(50) DEFAULT NULL,
  `cspeciality` varchar(50) DEFAULT NULL,
  `odetails` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `category`, `username`, `password`, `firstname`, `lastname`, `status`, `speciality`, `email`, `cname`, `cspeciality`, `odetails`) VALUES
(15, 3, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'samson', 'mwangi', 'active', 'N/A', 'we@gg.com', NULL, NULL, NULL),
(16, 1, 'admin1', '81dc9bdb52d04dc20036dbd8313ed055', 'saasas', 'asasas', 'active', 'N/A', 'as@as.com', NULL, NULL, NULL),
(17, 1, 'samsy1', '81dc9bdb52d04dc20036dbd8313ed055', 'sss sss', 'ssss sss', 'active', 'N/A', '2222@gg.com', NULL, NULL, NULL),
(18, 2, 'samsy1', '81dc9bdb52d04dc20036dbd8313ed055', 'sss sss', 'ssss sss', 'active', 'N/A', '2222@gg.com', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`msgid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cases`
--
ALTER TABLE `cases`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `msgid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;--
-- Database: `orpm`
--
CREATE DATABASE IF NOT EXISTS `orpm` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `orpm`;

-- --------------------------------------------------------

--
-- Table structure for table `applicants_and_tenants`
--

CREATE TABLE `applicants_and_tenants` (
  `id` int(10) UNSIGNED NOT NULL,
  `last_name` varchar(15) DEFAULT NULL,
  `first_name` varchar(15) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `driver_license_number` varchar(15) DEFAULT NULL,
  `driver_license_state` varchar(15) DEFAULT NULL,
  `requested_lease_term` varchar(15) DEFAULT NULL,
  `monthly_gross_pay` decimal(8,2) DEFAULT NULL,
  `additional_income` decimal(8,2) DEFAULT NULL,
  `assets` decimal(8,2) DEFAULT NULL,
  `status` varchar(40) NOT NULL DEFAULT 'Applicant',
  `notes` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `applicants_and_tenants`
--

INSERT INTO `applicants_and_tenants` (`id`, `last_name`, `first_name`, `email`, `phone`, `birth_date`, `driver_license_number`, `driver_license_state`, `requested_lease_term`, `monthly_gross_pay`, `additional_income`, `assets`, `status`, `notes`) VALUES
(1, 'James', 'Maina', NULL, '4343', '1908-03-05', '3434', NULL, NULL, '3434.00', '3434.00', '344.00', 'Tenant', NULL),
(3, '34feree', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Applicant', NULL),
(4, '3434234dffd', '34ds', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Applicant', NULL),
(5, 'sdfdfsdfsdfs', 'sdda', NULL, '002131232131231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Applicant', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `applications_leases`
--

CREATE TABLE `applications_leases` (
  `id` int(10) UNSIGNED NOT NULL,
  `tenants` int(10) UNSIGNED DEFAULT NULL,
  `status` varchar(40) NOT NULL DEFAULT 'Application',
  `property` int(10) UNSIGNED DEFAULT NULL,
  `unit` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(40) NOT NULL DEFAULT 'Fixed',
  `total_number_of_occupants` varchar(15) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `recurring_charges_frequency` varchar(40) NOT NULL DEFAULT 'Monthly',
  `next_due_date` date DEFAULT NULL,
  `rent` decimal(8,2) DEFAULT NULL,
  `security_deposit` decimal(15,2) DEFAULT NULL,
  `security_deposit_date` date DEFAULT NULL,
  `emergency_contact` varchar(100) DEFAULT NULL,
  `co_signer_details` varchar(100) DEFAULT NULL,
  `notes` text,
  `agreement` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `applications_leases`
--

INSERT INTO `applications_leases` (`id`, `tenants`, `status`, `property`, `unit`, `type`, `total_number_of_occupants`, `start_date`, `end_date`, `recurring_charges_frequency`, `next_due_date`, `rent`, `security_deposit`, `security_deposit_date`, `emergency_contact`, `co_signer_details`, `notes`, `agreement`) VALUES
(1, 1, 'Lease', 1, NULL, 'Fixed with rollover', NULL, '2016-10-07', '2016-10-07', 'Monthly', '2016-10-07', '8000.00', '6000.00', NULL, NULL, NULL, '<br>', '1'),
(2, 1, 'Application', 2, 1, 'Fixed', NULL, '2016-10-25', '2016-10-25', 'Monthly', '2016-10-25', NULL, NULL, '1922-12-29', NULL, NULL, '<br>', '1'),
(3, 4, 'Lease', 1, NULL, 'Fixed with rollover', NULL, '2016-10-27', '2016-10-27', 'Monthly', '2016-10-27', NULL, NULL, NULL, NULL, NULL, '<br>', '1');

-- --------------------------------------------------------

--
-- Table structure for table `employment_and_income_history`
--

CREATE TABLE `employment_and_income_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `tenant` int(10) UNSIGNED DEFAULT NULL,
  `employer_name` varchar(15) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `employer_phone` varchar(15) DEFAULT NULL,
  `employed_from` date DEFAULT NULL,
  `employed_till` date DEFAULT NULL,
  `occupation` varchar(40) DEFAULT NULL,
  `notes` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `membership_grouppermissions`
--

CREATE TABLE `membership_grouppermissions` (
  `permissionID` int(10) UNSIGNED NOT NULL,
  `groupID` int(11) DEFAULT NULL,
  `tableName` varchar(100) DEFAULT NULL,
  `allowInsert` tinyint(4) DEFAULT NULL,
  `allowView` tinyint(4) NOT NULL DEFAULT '0',
  `allowEdit` tinyint(4) NOT NULL DEFAULT '0',
  `allowDelete` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membership_grouppermissions`
--

INSERT INTO `membership_grouppermissions` (`permissionID`, `groupID`, `tableName`, `allowInsert`, `allowView`, `allowEdit`, `allowDelete`) VALUES
(25, 3, 'applications_leases', 0, 3, 0, 0),
(26, 3, 'residence_and_rental_history', 0, 1, 0, 0),
(27, 3, 'employment_and_income_history', 0, 1, 0, 0),
(28, 3, 'references', 0, 0, 0, 0),
(29, 3, 'applicants_and_tenants', 0, 0, 0, 0),
(30, 3, 'properties', 0, 3, 0, 0),
(31, 3, 'units', 0, 3, 0, 0),
(32, 3, 'rental_owners', 0, 1, 0, 0),
(41, 2, 'applications_leases', 1, 3, 3, 3),
(42, 2, 'residence_and_rental_history', 1, 3, 3, 3),
(43, 2, 'employment_and_income_history', 1, 3, 3, 3),
(44, 2, 'references', 1, 3, 3, 3),
(45, 2, 'applicants_and_tenants', 1, 3, 3, 3),
(46, 2, 'properties', 1, 3, 3, 3),
(47, 2, 'units', 1, 3, 3, 3),
(48, 2, 'rental_owners', 1, 3, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `membership_groups`
--

CREATE TABLE `membership_groups` (
  `groupID` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `description` text,
  `allowSignup` tinyint(4) DEFAULT NULL,
  `needsApproval` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membership_groups`
--

INSERT INTO `membership_groups` (`groupID`, `name`, `description`, `allowSignup`, `needsApproval`) VALUES
(1, 'anonymous', 'Anonymous group created automatically on 2016-10-07', 0, 0),
(2, 'Admins', 'Admin group created automatically on 2016-10-07', 1, 1),
(3, 'users', 'for users', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `membership_userpermissions`
--

CREATE TABLE `membership_userpermissions` (
  `permissionID` int(10) UNSIGNED NOT NULL,
  `memberID` varchar(20) NOT NULL,
  `tableName` varchar(100) DEFAULT NULL,
  `allowInsert` tinyint(4) DEFAULT NULL,
  `allowView` tinyint(4) NOT NULL DEFAULT '0',
  `allowEdit` tinyint(4) NOT NULL DEFAULT '0',
  `allowDelete` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `membership_userrecords`
--

CREATE TABLE `membership_userrecords` (
  `recID` bigint(20) UNSIGNED NOT NULL,
  `tableName` varchar(100) DEFAULT NULL,
  `pkValue` varchar(255) DEFAULT NULL,
  `memberID` varchar(20) DEFAULT NULL,
  `dateAdded` bigint(20) UNSIGNED DEFAULT NULL,
  `dateUpdated` bigint(20) UNSIGNED DEFAULT NULL,
  `groupID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membership_userrecords`
--

INSERT INTO `membership_userrecords` (`recID`, `tableName`, `pkValue`, `memberID`, `dateAdded`, `dateUpdated`, `groupID`) VALUES
(1, 'rental_owners', '1', 'admin', 1475845329, 1476094765, 2),
(2, 'properties', '1', 'admin', 1475845372, 1476350523, 2),
(3, 'applicants_and_tenants', '1', 'admin', 1475845443, 1475845443, 2),
(4, 'applications_leases', '1', 'admin', 1475845535, 1475845535, 2),
(5, 'rental_owners', '2', 'admin', 1475885470, 1475885476, 2),
(6, 'properties', '2', 'admin', 1475885542, 1475885546, 2),
(7, 'units', '1', 'admin', 1475885647, 1475885647, 2),
(9, 'rental_owners', '3', 'admin', 1476229267, 1476229267, 2),
(10, 'applicants_and_tenants', '3', 'admin', 1476229332, 1476229332, 2),
(11, 'applicants_and_tenants', '4', 'admin', 1476230459, 1476230459, 2),
(12, 'applicants_and_tenants', '5', 'admin', 1476231480, 1476231480, 2),
(13, 'applications_leases', '2', 'admin', 1477400084, 1477581162, 2),
(14, 'applications_leases', '3', 'admin', 1477581293, 1477581293, 2);

-- --------------------------------------------------------

--
-- Table structure for table `membership_users`
--

CREATE TABLE `membership_users` (
  `memberID` varchar(20) NOT NULL,
  `passMD5` varchar(40) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `signupDate` date DEFAULT NULL,
  `groupID` int(10) UNSIGNED DEFAULT NULL,
  `isBanned` tinyint(4) DEFAULT NULL,
  `isApproved` tinyint(4) DEFAULT NULL,
  `custom1` text,
  `custom2` text,
  `custom3` text,
  `custom4` text,
  `comments` text,
  `pass_reset_key` varchar(100) DEFAULT NULL,
  `pass_reset_expiry` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membership_users`
--

INSERT INTO `membership_users` (`memberID`, `passMD5`, `email`, `signupDate`, `groupID`, `isBanned`, `isApproved`, `custom1`, `custom2`, `custom3`, `custom4`, `comments`, `pass_reset_key`, `pass_reset_expiry`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@admin.com', '2016-10-07', 2, 0, 1, '', '', '', '', 'Admin member created automatically on 2016-10-07\nRecord updated automatically on 2016-10-07\nRecord updated automatically on 2016-10-08\nRecord updated automatically on 2016-10-08\nmember updated his profile on 10/08/2016, 07:47 pm from IP address ::1\nRecord updated automatically on 2016-10-12\nRecord updated automatically on 2016-10-12', NULL, NULL),
('guest', NULL, NULL, '2016-10-07', 1, 0, 1, NULL, NULL, NULL, NULL, 'Anonymous member created automatically on 2016-10-07', NULL, NULL),
('james', '827ccb0eea8a706c4c34a16891f84e7b', 'james@gmail.com', '2016-10-07', 2, 0, 1, '', '', '', '', '', NULL, NULL),
('skingori', '81dc9bdb52d04dc20036dbd8313ed055', 's@gmail.com', '2016-10-13', 2, 0, 0, 'Samson Mwangi', '135', 'Nairobi', 'Nairobi', 'member signed up through the registration form.', NULL, NULL),
('smwangi', '81dc9bdb52d04dc20036dbd8313ed055', 's@gmail.com', '2016-10-07', 3, 0, 1, 'samson', 'mwangi', 'Nairobi', 'Nairobi', 'member signed up through the registration form.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(10) UNSIGNED NOT NULL,
  `property_name` text NOT NULL,
  `type` varchar(40) NOT NULL,
  `number_of_units` decimal(15,0) DEFAULT NULL,
  `photo` varchar(40) DEFAULT NULL,
  `owner` int(10) UNSIGNED DEFAULT NULL,
  `operating_account` varchar(40) DEFAULT NULL,
  `property_reserve` decimal(15,0) DEFAULT NULL,
  `lease_term` varchar(15) DEFAULT NULL,
  `country` varchar(40) DEFAULT NULL,
  `street` varchar(40) DEFAULT NULL,
  `City` varchar(40) DEFAULT NULL,
  `State` varchar(40) DEFAULT NULL,
  `ZIP` decimal(15,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `property_name`, `type`, `number_of_units`, `photo`, `owner`, `operating_account`, `property_reserve`, `lease_term`, `country`, `street`, `City`, `State`, `ZIP`) VALUES
(1, 'MWEIGA HOUSE', 'Residential', '10', '21642200_1476350523.jpg', 1, NULL, NULL, NULL, 'Kenya', 'Nairobi', NULL, 'MO', NULL),
(2, 'SATIMA', 'Commercial', '20', NULL, 1, NULL, NULL, NULL, 'Kenya', NULL, NULL, 'CO', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `references`
--

CREATE TABLE `references` (
  `id` int(10) UNSIGNED NOT NULL,
  `tenant` int(10) UNSIGNED DEFAULT NULL,
  `reference_name` varchar(15) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rental_owners`
--

CREATE TABLE `rental_owners` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(40) DEFAULT NULL,
  `last_name` varchar(40) DEFAULT NULL,
  `company_name` varchar(40) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `primary_email` varchar(40) DEFAULT NULL,
  `alternate_email` varchar(40) DEFAULT NULL,
  `phone` varchar(40) DEFAULT NULL,
  `country` varchar(40) DEFAULT NULL,
  `street` varchar(40) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  `state` varchar(40) DEFAULT NULL,
  `zip` decimal(15,0) DEFAULT NULL,
  `comments` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rental_owners`
--

INSERT INTO `rental_owners` (`id`, `first_name`, `last_name`, `company_name`, `date_of_birth`, `primary_email`, `alternate_email`, `phone`, `country`, `street`, `city`, `state`, `zip`, `comments`) VALUES
(1, 'SAMSON', 'MWANGI', 'KAA', '1900-02-04', NULL, NULL, '9797987', 'Andorra', 'rtrt', 'ffgh', 'N/A', '76786', '<br>'),
(2, 'KAMAU', 'JOHN', 'ZETECH COLLEGE', '1903-02-28', NULL, NULL, '667686', 'Kenya', 'Nairobi', NULL, 'KS', NULL, '<br>'),
(3, '485868uyttyutyut435345435', '34324rerwerwerwe32434234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<br>');

-- --------------------------------------------------------

--
-- Table structure for table `residence_and_rental_history`
--

CREATE TABLE `residence_and_rental_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `tenant` int(10) UNSIGNED DEFAULT NULL,
  `address` varchar(40) DEFAULT NULL,
  `landlord_or_manager_name` varchar(15) DEFAULT NULL,
  `landlord_or_manager_phone` varchar(15) DEFAULT NULL,
  `monthly_rent` decimal(6,2) DEFAULT NULL,
  `duration_of_residency_from` date DEFAULT NULL,
  `to` date DEFAULT NULL,
  `reason_for_leaving` varchar(40) DEFAULT NULL,
  `notes` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(10) UNSIGNED NOT NULL,
  `property` int(10) UNSIGNED DEFAULT NULL,
  `unit_number` varchar(40) DEFAULT NULL,
  `photo` varchar(40) DEFAULT NULL,
  `status` varchar(40) NOT NULL,
  `size` varchar(40) DEFAULT NULL,
  `country` int(10) UNSIGNED DEFAULT NULL,
  `street` int(10) UNSIGNED DEFAULT NULL,
  `city` int(10) UNSIGNED DEFAULT NULL,
  `state` int(10) UNSIGNED DEFAULT NULL,
  `postal_code` int(10) UNSIGNED DEFAULT NULL,
  `rooms` varchar(40) DEFAULT NULL,
  `bathroom` decimal(15,0) DEFAULT NULL,
  `features` text,
  `market_rent` decimal(15,0) DEFAULT NULL,
  `rental_amount` decimal(6,2) DEFAULT NULL,
  `deposit_amount` decimal(6,2) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `property`, `unit_number`, `photo`, `status`, `size`, `country`, `street`, `city`, `state`, `postal_code`, `rooms`, `bathroom`, `features`, `market_rent`, `rental_amount`, `deposit_amount`, `description`) VALUES
(1, 2, '1', NULL, 'Listed', '50x100', 2, 2, 2, 2, 2, '20', '12', 'Hardwood floors, Refrigerator, Oven / range, Heat - electric', NULL, '8000.00', NULL, '<br>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applicants_and_tenants`
--
ALTER TABLE `applicants_and_tenants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applications_leases`
--
ALTER TABLE `applications_leases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tenants` (`tenants`),
  ADD KEY `property` (`property`),
  ADD KEY `unit` (`unit`);

--
-- Indexes for table `employment_and_income_history`
--
ALTER TABLE `employment_and_income_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tenant` (`tenant`);

--
-- Indexes for table `membership_grouppermissions`
--
ALTER TABLE `membership_grouppermissions`
  ADD PRIMARY KEY (`permissionID`);

--
-- Indexes for table `membership_groups`
--
ALTER TABLE `membership_groups`
  ADD PRIMARY KEY (`groupID`);

--
-- Indexes for table `membership_userpermissions`
--
ALTER TABLE `membership_userpermissions`
  ADD PRIMARY KEY (`permissionID`);

--
-- Indexes for table `membership_userrecords`
--
ALTER TABLE `membership_userrecords`
  ADD PRIMARY KEY (`recID`),
  ADD UNIQUE KEY `tableName_pkValue` (`tableName`,`pkValue`),
  ADD KEY `pkValue` (`pkValue`),
  ADD KEY `tableName` (`tableName`),
  ADD KEY `memberID` (`memberID`),
  ADD KEY `groupID` (`groupID`);

--
-- Indexes for table `membership_users`
--
ALTER TABLE `membership_users`
  ADD PRIMARY KEY (`memberID`),
  ADD KEY `groupID` (`groupID`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner` (`owner`);

--
-- Indexes for table `references`
--
ALTER TABLE `references`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tenant` (`tenant`);

--
-- Indexes for table `rental_owners`
--
ALTER TABLE `rental_owners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `residence_and_rental_history`
--
ALTER TABLE `residence_and_rental_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tenant` (`tenant`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property` (`property`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applicants_and_tenants`
--
ALTER TABLE `applicants_and_tenants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `applications_leases`
--
ALTER TABLE `applications_leases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `employment_and_income_history`
--
ALTER TABLE `employment_and_income_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `membership_grouppermissions`
--
ALTER TABLE `membership_grouppermissions`
  MODIFY `permissionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `membership_groups`
--
ALTER TABLE `membership_groups`
  MODIFY `groupID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `membership_userpermissions`
--
ALTER TABLE `membership_userpermissions`
  MODIFY `permissionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `membership_userrecords`
--
ALTER TABLE `membership_userrecords`
  MODIFY `recID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `references`
--
ALTER TABLE `references`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rental_owners`
--
ALTER TABLE `rental_owners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `residence_and_rental_history`
--
ALTER TABLE `residence_and_rental_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;--
-- Database: `prison`
--
CREATE DATABASE IF NOT EXISTS `prison` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `prison`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_tbl`
--

CREATE TABLE `admin_tbl` (
  `Admin_Id` int(11) NOT NULL,
  `Admin_Name` varchar(20) NOT NULL,
  `Admin_Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_tbl`
--

INSERT INTO `admin_tbl` (`Admin_Id`, `Admin_Name`, `Admin_Password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `announce`
--

CREATE TABLE `announce` (
  `to` varchar(17) NOT NULL,
  `Id` varchar(13) NOT NULL,
  `subject` varchar(14) NOT NULL,
  `message` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `announce`
--

INSERT INTO `announce` (`to`, `Id`, `subject`, `message`) VALUES
('', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `court`
--

CREATE TABLE `court` (
  `National_id` int(12) NOT NULL,
  `File_number` varchar(14) NOT NULL,
  `Dateoftrial` date NOT NULL,
  `Sentence` varchar(14) NOT NULL,
  `Location` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `policestation_tbl`
--

CREATE TABLE `policestation_tbl` (
  `Station_Id` int(11) NOT NULL,
  `Station_Name` varchar(20) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Mobile` int(11) NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `policestation_tbl`
--

INSERT INTO `policestation_tbl` (`Station_Id`, `Station_Name`, `Address`, `City`, `Email`, `Mobile`, `UserName`, `Password`) VALUES
(897, 'kimaya', 'kimaya', 'nairobi', 'policpol@police.com', 888766, 'police', 'police');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(10) NOT NULL DEFAULT '0',
  `Full_Name` varchar(23) NOT NULL,
  `DOB` date NOT NULL,
  `Address` varchar(20) NOT NULL,
  `County` varchar(20) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `Education` varchar(20) NOT NULL,
  `Marital` varchar(20) NOT NULL,
  `Offence` varchar(90) NOT NULL,
  `Date_in` date NOT NULL,
  `Sentence` varchar(13) NOT NULL,
  `File_num` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transfer`
--

CREATE TABLE `transfer` (
  `National_id` int(16) NOT NULL,
  `File_num` varchar(16) NOT NULL,
  `From_prison` varchar(17) NOT NULL,
  `To_prison` varchar(18) NOT NULL,
  `Dateoftransfer` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_tbl`
--

CREATE TABLE `user_tbl` (
  `User_Id` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Mobile` int(11) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `BirthDate` date NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Station_Name` varchar(20) NOT NULL,
  `VerificationProof` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_tbl`
--

INSERT INTO `user_tbl` (`User_Id`, `Name`, `Address`, `City`, `Mobile`, `Email`, `Gender`, `BirthDate`, `UserName`, `Password`, `Station_Name`, `VerificationProof`) VALUES
(8, 'user', 'user', 'nairobi', 98888, 'user@user.com', 'male', '2013-11-04', 'user', 'user', 'user', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_tbl`
--
ALTER TABLE `admin_tbl`
  ADD PRIMARY KEY (`Admin_Id`);

--
-- Indexes for table `announce`
--
ALTER TABLE `announce`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `court`
--
ALTER TABLE `court`
  ADD PRIMARY KEY (`National_id`);

--
-- Indexes for table `policestation_tbl`
--
ALTER TABLE `policestation_tbl`
  ADD PRIMARY KEY (`Station_Id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfer`
--
ALTER TABLE `transfer`
  ADD PRIMARY KEY (`National_id`);

--
-- Indexes for table `user_tbl`
--
ALTER TABLE `user_tbl`
  ADD PRIMARY KEY (`User_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_tbl`
--
ALTER TABLE `admin_tbl`
  MODIFY `Admin_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `policestation_tbl`
--
ALTER TABLE `policestation_tbl`
  MODIFY `Station_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=898;
--
-- AUTO_INCREMENT for table `user_tbl`
--
ALTER TABLE `user_tbl`
  MODIFY `User_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;--
-- Database: `sundb`
--
CREATE DATABASE IF NOT EXISTS `sundb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sundb`;

-- --------------------------------------------------------

--
-- Table structure for table `apartments`
--

CREATE TABLE `apartments` (
  `apart_name` varchar(50) NOT NULL,
  `apart_loc` varchar(50) NOT NULL,
  `owner_name` varchar(50) NOT NULL,
  `mobile_num` varchar(20) NOT NULL,
  `apart_status` varchar(10) NOT NULL,
  `apart_price` varchar(6) NOT NULL,
  `regdate` varchar(20) NOT NULL,
  `num_units` varchar(20) NOT NULL,
  `cancel_charge` int(5) NOT NULL,
  `other_det` varchar(200) NOT NULL,
  `id` int(11) NOT NULL,
  `logs` varchar(100) NOT NULL,
  `furniture` varchar(600) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apartments`
--

INSERT INTO `apartments` (`apart_name`, `apart_loc`, `owner_name`, `mobile_num`, `apart_status`, `apart_price`, `regdate`, `num_units`, `cancel_charge`, `other_det`, `id`, `logs`, `furniture`) VALUES
('KAMAU AND SONS', 'Utawala', 'user samson', '214748387', 'new', '10000', 'Thu Nov 03 2016', 'Ba,Bs', 0, '', 29, 'Apartment added', 'Dstv, Zuku internet');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `apart_booked` varchar(50) NOT NULL,
  `booked_by` varchar(50) NOT NULL,
  `book_from` varchar(20) NOT NULL,
  `book_to` varchar(20) NOT NULL,
  `book_status` varchar(20) NOT NULL,
  `deposit_paid` varchar(20) NOT NULL,
  `bal_paid` varchar(20) NOT NULL,
  `book_contact` int(20) NOT NULL,
  `email_adre` varchar(50) NOT NULL,
  `charges_paid` int(20) NOT NULL,
  `id` int(11) NOT NULL,
  `unit_booked` varchar(11) NOT NULL,
  `logs` varchar(200) NOT NULL,
  `paymentmode` varchar(20) NOT NULL,
  `mpesaref` varchar(250) NOT NULL,
  `bankref` varchar(250) NOT NULL,
  `owner_num` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`apart_booked`, `booked_by`, `book_from`, `book_to`, `book_status`, `deposit_paid`, `bal_paid`, `book_contact`, `email_adre`, `charges_paid`, `id`, `unit_booked`, `logs`, `paymentmode`, `mpesaref`, `bankref`, `owner_num`) VALUES
('NEW APART', 'Maina Mwangi  james', 'Sat Nov 19 2016', 'Wed Dec 21 2016', 'paid', '4500', '4500', 2147483647, '', 0, 26, '0', '', '', '5645465GFGFGF65', 'FGGF6546578687HGFG', 2147483647),
('SAMSY APARTMENTS NEW!!', 'Maina Mwangi  james', 'Fri Nov 18 2016', 'Tue Dec 13 2016', 'paid', '5000', '5000', 2147483647, '', 0, 27, '', '', '', '', 'GHG5697GHFGF23', 2147483647),
('KAMAU AND SONS', 'Maina Mwangi  james', 'Thu Nov 03 2016', 'Sun Nov 20 2016', 'paid', '5000', '5000', 454534734, '', 0, 28, '', '', '', 'K67667GGHHHJFD', '', 214748387),
('KAMAU AND SONS', 'Maina Mwangi  james', 'Sun Nov 27 2016', 'Thu Dec 15 2016', 'canceled', '5000', '', 454534734, '', 750, 29, '', '', '', 'K4555FGDFIUIHHB', '', 214748387),
('KAMAU AND SONS', 'Maina Mwangi  james', 'Thu Dec 15 2016', 'Sat Dec 31 2016', 'paid', '5000', '5000', 454534734, '', 0, 30, '', '', '', '', 'HJGKUYU65765', 214748387),
('KAMAU AND SONS', 'samson kingori  mwangi', 'Sat Nov 12 2016', 'Thu Dec 08 2016', 'paid', '5000', '5000', 4387857, '', 0, 31, '', '', '', '232HGFGD3UIIYU', 'GGG676667HJJH', 214748387);

-- --------------------------------------------------------

--
-- Table structure for table `damages`
--

CREATE TABLE `damages` (
  `damageid` int(11) NOT NULL,
  `damageby` varchar(20) NOT NULL,
  `mobilenumber` int(10) NOT NULL,
  `date_reg` date NOT NULL,
  `damage` varchar(100) NOT NULL,
  `charges` varchar(100) NOT NULL,
  `otherdetails` varchar(100) NOT NULL,
  `logs` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(255) NOT NULL,
  `image_id` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `image_id`, `location`) VALUES
(8, 'NEW APART', '../upload/SAM_1496.JPG'),
(9, 'SAMSY APARTMENTS NEW!!', '../upload/SAM_1532.JPG'),
(10, 'ANOTHER NEW APARTMENT', '../upload/SAM_1496.JPG'),
(11, 'KAMAU AND SONS', '../upload/IMG_2684.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `logsid` int(11) NOT NULL,
  `activity` varchar(200) NOT NULL,
  `activity_by` varchar(50) NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`logsid`, `activity`, `activity_by`, `date`) VALUES
(5, 'User Activated', 'By admin', '2016-10-31 19:03:37'),
(6, 'User Activated', 'By admin', '2016-10-31 19:03:41'),
(7, 'User Activated', 'By admin', '2016-10-31 19:05:22'),
(8, 'Booking done', 'By user', '2016-11-03 14:11:44'),
(9, 'User Activated', 'By admin', '2016-11-04 15:16:30'),
(10, 'Profile updated', 'By user', '2016-11-04 15:30:52'),
(11, 'user profile updated', 'By admin', '2016-11-05 15:08:35'),
(12, 'message Addaed', 'By user', '2016-11-05 15:35:12'),
(13, 'Profile updated', 'By user', '2016-11-05 16:07:59'),
(14, 'User Activated', 'By admin', '2016-11-05 23:47:12'),
(15, 'User Activated', 'By admin', '2016-11-05 23:47:16'),
(16, 'User Activated', 'By admin', '2016-11-05 23:47:27'),
(17, 'user profile updated', 'By admin', '2016-11-06 11:08:46'),
(18, 'user profile updated', 'By admin', '2016-11-09 00:29:43'),
(19, 'Canceled booking', 'By admin', '2016-11-09 00:35:17'),
(20, 'Canceled booking', 'By admin', '2016-11-09 00:35:25'),
(21, 'Canceled booking', 'By admin', '2016-11-09 00:35:29'),
(22, 'Canceled booking', 'By admin', '2016-11-09 00:35:33'),
(23, 'Canceled booking', 'By admin', '2016-11-09 00:35:37'),
(24, 'Canceled booking', 'By admin', '2016-11-09 00:35:41'),
(25, 'Canceled booking', 'By admin', '2016-11-09 00:35:46'),
(26, 'Canceled booking', 'By admin', '2016-11-09 00:35:50'),
(27, 'Canceled booking', 'By admin', '2016-11-09 00:35:58'),
(28, 'Canceled booking', 'By admin', '2016-11-09 00:38:10'),
(29, 'Booking done', 'By user', '2016-11-21 16:25:59'),
(30, 'message Addaed', 'By user', '2016-11-21 16:31:33');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `msgid` int(11) NOT NULL,
  `type` varchar(250) NOT NULL,
  `message` varchar(250) NOT NULL,
  `date_sent` varchar(250) NOT NULL,
  `sent_by` varchar(250) NOT NULL,
  `apartment` varchar(250) NOT NULL,
  `contact_num` varchar(250) NOT NULL,
  `msg_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`msgid`, `type`, `message`, `date_sent`, `sent_by`, `apartment`, `contact_num`, `msg_status`) VALUES
(1, '2', 'Thank to all', 'now()', 'samson kingori', 'KAMAU AND SONS', '4387857', 'unread'),
(2, '2', 'ty', 'now()', 'samson kingori', 'KAMAU AND SONS', '4387857', 'unread');

-- --------------------------------------------------------

--
-- Table structure for table `policy`
--

CREATE TABLE `policy` (
  `id` int(11) NOT NULL,
  `policynumber` varchar(20) NOT NULL,
  `policytype` varchar(50) NOT NULL,
  `otherdetails` varchar(100) NOT NULL,
  `logs` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `policy`
--

INSERT INTO `policy` (`id`, `policynumber`, `policytype`, `otherdetails`, `logs`) VALUES
(1, '2324', 'Policy', '', 'Policy added by admin');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `emailad` varchar(20) NOT NULL,
  `idcard` int(20) NOT NULL,
  `phonenum` int(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `sirname` varchar(20) NOT NULL,
  `othernames` varchar(20) NOT NULL,
  `category` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `logs` varchar(200) NOT NULL,
  `bank_name` varchar(50) NOT NULL,
  `bank_account` int(50) NOT NULL,
  `pass_status` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `emailad`, `idcard`, `phonenum`, `password`, `sirname`, `othernames`, `category`, `status`, `logs`, `bank_name`, `bank_account`, `pass_status`) VALUES
(1, 'admin', 'info.samsy@gmail.com', 343434343, 2143434545, 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'Maingi', 'Alex Maina', '4', 'active', 'Admin changed password', '', 0, 'secure'),
(2, 'smwangi', 'smwangi@gmail.com', 35453453, 4387857, 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'mwangi', 'samson kingori', '1', 'active', 'user activated', '', 0, 'insecure'),
(3, 'samson', 'd@j.com', 1212121221, 2147483647, 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'samson', 'jamamma sasasas', '2', 'active', 'user activated', '', 0, ''),
(4, 'administrator', 'sa@gghh.com', 22324324, 2147483647, '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'admin', 'admin mwangi', '4', 'active', '', '', 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apartments`
--
ALTER TABLE `apartments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `apart_booked` (`apart_booked`);

--
-- Indexes for table `damages`
--
ALTER TABLE `damages`
  ADD PRIMARY KEY (`damageid`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`,`image_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`logsid`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`msgid`);

--
-- Indexes for table `policy`
--
ALTER TABLE `policy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apartments`
--
ALTER TABLE `apartments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `damages`
--
ALTER TABLE `damages`
  MODIFY `damageid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `logsid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `msgid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `policy`
--
ALTER TABLE `policy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;--
-- Database: `taifa_jobs`
--
CREATE DATABASE IF NOT EXISTS `taifa_jobs` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `taifa_jobs`;

-- --------------------------------------------------------

--
-- Table structure for table `applicant`
--

CREATE TABLE `applicant` (
  `id` int(11) NOT NULL,
  `applicantid` int(11) DEFAULT NULL,
  `salutation` varchar(35) DEFAULT NULL,
  `surname` varchar(30) DEFAULT NULL,
  `mname` varchar(30) DEFAULT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `mstatus` varchar(30) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `nationality` int(11) DEFAULT NULL,
  `citizenship` int(11) DEFAULT NULL,
  `ctoforigin` int(11) DEFAULT NULL,
  `hbox` char(10) DEFAULT NULL,
  `htown` varchar(65) DEFAULT NULL,
  `hzip_postal` varchar(15) DEFAULT NULL,
  `hcountry` int(11) DEFAULT NULL,
  `hphone` varchar(15) DEFAULT NULL,
  `hmobile` varchar(15) DEFAULT NULL,
  `hemail` varchar(100) DEFAULT NULL,
  `obox` char(10) DEFAULT NULL,
  `otown` varchar(65) DEFAULT NULL,
  `ozip_postal` varchar(15) DEFAULT NULL,
  `ocountry` int(11) DEFAULT NULL,
  `ophone` varchar(15) DEFAULT NULL,
  `omobile` varchar(15) DEFAULT NULL,
  `oemail` varchar(100) DEFAULT NULL,
  `qualsumm` text,
  `cvviews` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applicant`
--

INSERT INTO `applicant` (`id`, `applicantid`, `salutation`, `surname`, `mname`, `fname`, `mstatus`, `sex`, `dob`, `nationality`, `citizenship`, `ctoforigin`, `hbox`, `htown`, `hzip_postal`, `hcountry`, `hphone`, `hmobile`, `hemail`, `obox`, `otown`, `ozip_postal`, `ocountry`, `ophone`, `omobile`, `oemail`, `qualsumm`, `cvviews`) VALUES
(1, 2, NULL, 'maina', 'maina', 'maina', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int(11) NOT NULL,
  `applicantid` int(11) NOT NULL,
  `jobid` int(11) NOT NULL,
  `dateapplied` date NOT NULL,
  `shortlisted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `careerlevel`
--

CREATE TABLE `careerlevel` (
  `careerid` int(11) NOT NULL,
  `careerlevel` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `countryid` smallint(6) NOT NULL,
  `country` varchar(150) NOT NULL,
  `countrycode` char(10) NOT NULL,
  `subscriber` char(19) DEFAULT NULL,
  `nationality` varchar(150) DEFAULT NULL,
  `currency` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 121856 kB; InnoDB free: 121856 kB; InnoDB free:';

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` int(11) NOT NULL,
  `applicantid` int(11) DEFAULT NULL,
  `institution` varchar(255) DEFAULT NULL,
  `countryid` int(11) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `award` varchar(255) DEFAULT NULL,
  `awardcategory` tinyint(1) DEFAULT NULL,
  `highestlevel` tinyint(1) DEFAULT NULL,
  `fieldofstudy` varchar(255) DEFAULT NULL,
  `fieldofstudycategoryid` int(11) DEFAULT NULL,
  `specialaward` varchar(255) DEFAULT NULL,
  `yearofgraduation` year(4) DEFAULT NULL,
  `expectedgraduation` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employer`
--

CREATE TABLE `employer` (
  `id` int(11) NOT NULL,
  `employerid` int(11) NOT NULL,
  `organization` varchar(100) DEFAULT NULL,
  `contact` varchar(65) DEFAULT NULL,
  `jobtitle` varchar(45) DEFAULT NULL,
  `telephone` varchar(25) DEFAULT NULL,
  `extension` varchar(5) DEFAULT NULL,
  `mobile` varchar(25) DEFAULT NULL,
  `fax` varchar(25) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `box` varchar(10) DEFAULT NULL,
  `town` varchar(55) DEFAULT NULL,
  `zip_postal` varchar(45) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `countryid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employer`
--

INSERT INTO `employer` (`id`, `employerid`, `organization`, `contact`, `jobtitle`, `telephone`, `extension`, `mobile`, `fax`, `email`, `box`, `town`, `zip_postal`, `website`, `countryid`) VALUES
(1, 1, NULL, 'samson kingori mwangi', NULL, NULL, NULL, NULL, NULL, 'info.samsy@gmail.com', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `emptype`
--

CREATE TABLE `emptype` (
  `id` int(11) NOT NULL,
  `employmenttype` varchar(65) NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

CREATE TABLE `experience` (
  `id` int(11) NOT NULL,
  `applicantid` int(11) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `startmonth` tinyint(4) DEFAULT NULL,
  `startyear` year(4) DEFAULT NULL,
  `endmonth` tinyint(4) DEFAULT NULL,
  `endyear` year(4) DEFAULT NULL,
  `startsalarymonth` decimal(10,0) DEFAULT NULL,
  `currentsalarymonth` decimal(10,0) DEFAULT NULL,
  `jobtitle` varchar(255) DEFAULT NULL,
  `manager_supervisor` tinyint(1) DEFAULT NULL,
  `duties_responsibilities` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `jobid` int(11) NOT NULL,
  `employerid` int(11) DEFAULT NULL,
  `jobcategory` varchar(255) DEFAULT NULL,
  `employeetype` varchar(65) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `countryid` int(11) DEFAULT NULL,
  `jobtitle` varchar(100) NOT NULL,
  `summary` text,
  `description` text,
  `requirements` text,
  `dateposted` date DEFAULT NULL,
  `dateclosing` date DEFAULT NULL,
  `contactinfo` text,
  `pay` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jobcat`
--

CREATE TABLE `jobcat` (
  `id` int(11) NOT NULL,
  `jobcategory` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `applicantid` int(11) NOT NULL,
  `language` varchar(255) NOT NULL,
  `orallevel` varchar(20) NOT NULL,
  `writtenlevel` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `language` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `objective`
--

CREATE TABLE `objective` (
  `id` int(11) NOT NULL,
  `applicantid` int(11) NOT NULL,
  `objective` varchar(255) DEFAULT NULL,
  `carrierlevelid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `professional`
--

CREATE TABLE `professional` (
  `id` int(11) NOT NULL,
  `applicantid` int(11) NOT NULL,
  `association` varchar(255) NOT NULL,
  `title_role` varchar(255) NOT NULL,
  `membersince` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `publication`
--

CREATE TABLE `publication` (
  `id` int(11) NOT NULL,
  `applicantid` int(11) NOT NULL,
  `pdate` date NOT NULL,
  `ptitle` varchar(255) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `referee`
--

CREATE TABLE `referee` (
  `id` int(11) NOT NULL,
  `applicantid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `refposition` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `relation` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `studyfieldcat`
--

CREATE TABLE `studyfieldcat` (
  `id` int(11) NOT NULL,
  `fieldcategory` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `training`
--

CREATE TABLE `training` (
  `id` int(11) NOT NULL,
  `applicantid` int(11) DEFAULT NULL,
  `trainingtitle` varchar(255) NOT NULL,
  `provider` varchar(255) NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` smallint(6) NOT NULL,
  `fname` varchar(25) DEFAULT '',
  `mname` varchar(25) DEFAULT NULL,
  `sname` varchar(25) DEFAULT '',
  `loginname` varchar(15) NOT NULL DEFAULT '',
  `pass` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(65) NOT NULL,
  `dateregistered` date DEFAULT NULL,
  `admin` tinyint(1) DEFAULT '0',
  `status` char(1) DEFAULT NULL COMMENT 'Active,Locked,Disabled',
  `usercategory` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 121856 kB; InnoDB free: 121856 kB; InnoDB free:';

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `fname`, `mname`, `sname`, `loginname`, `pass`, `email`, `dateregistered`, `admin`, `status`, `usercategory`) VALUES
(1, 'samson', 'kingori', 'mwangi', 'smwangi', '913c835712ab3ba6d9388382abfcc50a', 'info.samsy@gmail.com', '2016-09-11', 1, 'A', 'E'),
(2, 'maina', 'maina', 'maina', 'smaina', '81dc9bdb52d04dc20036dbd8313ed055', 's@maina.com', '2016-09-11', 0, 'A', 'A');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applicant`
--
ALTER TABLE `applicant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `applicationid` (`applicantid`,`jobid`);

--
-- Indexes for table `careerlevel`
--
ALTER TABLE `careerlevel`
  ADD PRIMARY KEY (`careerid`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`countryid`),
  ADD UNIQUE KEY `countrycode` (`countrycode`),
  ADD KEY `country` (`country`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employer`
--
ALTER TABLE `employer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emptype`
--
ALTER TABLE `emptype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`jobid`);

--
-- Indexes for table `jobcat`
--
ALTER TABLE `jobcat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `objective`
--
ALTER TABLE `objective`
  ADD PRIMARY KEY (`id`,`applicantid`),
  ADD UNIQUE KEY `applicantid` (`applicantid`);

--
-- Indexes for table `professional`
--
ALTER TABLE `professional`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `publication`
--
ALTER TABLE `publication`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referee`
--
ALTER TABLE `referee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studyfieldcat`
--
ALTER TABLE `studyfieldcat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `training`
--
ALTER TABLE `training`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`,`loginname`,`email`),
  ADD UNIQUE KEY `userid` (`userid`),
  ADD UNIQUE KEY `loginname` (`loginname`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `names` (`fname`,`sname`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applicant`
--
ALTER TABLE `applicant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `careerlevel`
--
ALTER TABLE `careerlevel`
  MODIFY `careerid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `countryid` smallint(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `employer`
--
ALTER TABLE `employer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `emptype`
--
ALTER TABLE `emptype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `experience`
--
ALTER TABLE `experience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `jobid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jobcat`
--
ALTER TABLE `jobcat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `objective`
--
ALTER TABLE `objective`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `professional`
--
ALTER TABLE `professional`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `publication`
--
ALTER TABLE `publication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `referee`
--
ALTER TABLE `referee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `studyfieldcat`
--
ALTER TABLE `studyfieldcat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `training`
--
ALTER TABLE `training`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;--
-- Database: `tarclink`
--
CREATE DATABASE IF NOT EXISTS `tarclink` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tarclink`;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2016-09-16 16:09:19', '2016-09-16 16:09:19', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/tarclink', 'yes'),
(2, 'home', 'http://localhost/tarclink', 'yes'),
(3, 'blogname', 'tarclink', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'info.samsy@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:108:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:34:"property/.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"property/.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"property/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"property/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"property/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"property/.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:23:"property/(.+?)/embed/?$";s:41:"index.php?property=$matches[1]&embed=true";s:27:"property/(.+?)/trackback/?$";s:35:"index.php?property=$matches[1]&tb=1";s:35:"property/(.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?property=$matches[1]&paged=$matches[2]";s:42:"property/(.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?property=$matches[1]&cpage=$matches[2]";s:31:"property/(.+?)(?:/([0-9]+))?/?$";s:47:"index.php?property=$matches[1]&page=$matches[2]";s:48:"feature/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?property_feature=$matches[1]&feed=$matches[2]";s:43:"feature/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?property_feature=$matches[1]&feed=$matches[2]";s:24:"feature/([^/]+)/embed/?$";s:49:"index.php?property_feature=$matches[1]&embed=true";s:36:"feature/([^/]+)/page/?([0-9]{1,})/?$";s:56:"index.php?property_feature=$matches[1]&paged=$matches[2]";s:18:"feature/([^/]+)/?$";s:38:"index.php?property_feature=$matches[1]";s:58:"community_feature/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?community_feature=$matches[1]&feed=$matches[2]";s:53:"community_feature/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?community_feature=$matches[1]&feed=$matches[2]";s:34:"community_feature/([^/]+)/embed/?$";s:50:"index.php?community_feature=$matches[1]&embed=true";s:46:"community_feature/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?community_feature=$matches[1]&paged=$matches[2]";s:28:"community_feature/([^/]+)/?$";s:39:"index.php?community_feature=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:32:"easy-instagram-feed/easyfeed.php";i:1;s:27:"wp-property/wp-property.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'rambo', 'yes'),
(41, 'stylesheet', 'rambo', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '37965', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '37965', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:70:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:19:"edit_wpp_properties";b:1;s:17:"edit_wpp_property";b:1;s:26:"edit_others_wpp_properties";b:1;s:19:"delete_wpp_property";b:1;s:22:"publish_wpp_properties";b:1;s:24:"manage_wpp_make_featured";b:1;s:19:"manage_wpp_settings";b:1;s:21:"manage_wpp_categories";b:1;s:21:"manage_wpp_admintools";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:15:"sidebar-primary";a:5:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";}s:18:"footer-widget-area";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(99, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'cron', 'a:4:{i:1481040559;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1481040609;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1481042224;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(107, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:58:"http://downloads.wordpress.org/release/wordpress-4.6.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:58:"http://downloads.wordpress.org/release/wordpress-4.6.1.zip";s:10:"no_content";s:69:"http://downloads.wordpress.org/release/wordpress-4.6.1-no-content.zip";s:11:"new_bundled";s:70:"http://downloads.wordpress.org/release/wordpress-4.6.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.6.1";s:7:"version";s:5:"4.6.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1481005788;s:15:"version_checked";s:5:"4.6.1";s:12:"translations";a:0:{}}', 'no'),
(113, '_site_transient_timeout_browser_717b34b810e6c7742c46bb55863e8367', '1474646974', 'no'),
(114, '_site_transient_browser_717b34b810e6c7742c46bb55863e8367', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"48.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(115, 'can_compress_scripts', '1', 'no'),
(117, '_transient_twentysixteen_categories', '1', 'yes'),
(146, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1481005788;s:7:"checked";a:5:{s:5:"rambo";s:5:"1.5.1";s:10:"temptation";s:7:"1.0.0.7";s:13:"twentyfifteen";s:3:"1.6";s:14:"twentyfourteen";s:3:"1.8";s:13:"twentysixteen";s:3:"1.3";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(147, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1474043085;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(148, 'current_theme', 'Rambo', 'yes'),
(149, 'theme_mods_temptation', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1474058339;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:18:"orphaned_widgets_2";N;}}}', 'yes'),
(150, 'theme_switched', '', 'yes'),
(151, 'widget_temptation_rp', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(152, 'widget_temptation_fp_cat', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(153, 'widget_ihcomments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(154, 'optionsframework', 'a:2:{s:2:"id";s:27:"optionsframework_temptation";s:12:"knownoptions";a:1:{i:0;s:27:"optionsframework_temptation";}}', 'yes'),
(155, 'optionsframework_temptation', 'a:36:{s:13:"hp-post-title";s:15:"Recent Articles";s:11:"footertext2";s:0:"";s:14:"sidebar-layout";s:5:"right";s:6:"style2";s:0:"";s:16:"carousel_enabled";b:0;s:14:"carousel_count";s:1:"6";s:16:"showcase_enabled";b:0;s:10:"cat1_title";s:10:"Category 1";s:10:"cat2_title";s:10:"Category 2";s:14:"slider_enabled";b:0;s:11:"slidetitle1";s:0:"";s:10:"slidedesc1";s:0:"";s:9:"slideurl1";s:0:"";s:11:"slidetitle2";s:0:"";s:10:"slidedesc2";s:0:"";s:9:"slideurl2";s:0:"";s:11:"slidetitle3";s:0:"";s:10:"slidedesc3";s:0:"";s:9:"slideurl3";s:0:"";s:11:"slidetitle4";s:0:"";s:10:"slidedesc4";s:0:"";s:9:"slideurl4";s:0:"";s:11:"slidetitle5";s:0:"";s:10:"slidedesc5";s:0:"";s:9:"slideurl5";s:0:"";s:8:"facebook";s:0:"";s:7:"twitter";s:0:"";s:6:"google";s:0:"";s:10:"feedburner";s:0:"";s:9:"pinterest";s:0:"";s:9:"instagram";s:0:"";s:8:"linkedin";s:0:"";s:7:"youtube";s:0:"";s:6:"tumblr";s:0:"";s:6:"flickr";s:0:"";s:7:"credit1";b:0;}', 'yes'),
(156, 'theme_mods_rambo', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}}', 'yes'),
(160, 'rambo_pro_theme_options', 'a:4:{s:19:"rambopro_stylesheet";s:8:"blue.css";s:18:"theme_color_enable";s:1:"1";s:19:"intro_button_target";s:1:"1";s:17:"site_info_enabled";s:1:"1";}', 'yes'),
(167, 'rambo_theme_options', 'a:8:{s:15:"rambo_texttitle";s:0:"";s:17:"upload_image_logo";s:89:"http://localhost/tarclink/wp-content/uploads/2016/09/tarclink-logo-web-e1474056136931.png";s:5:"width";s:3:"179";s:22:"footer_widgets_enabled";s:1:"1";s:22:"rambo_designed_by_head";s:11:"Designed by";s:22:"rambo_designed_by_text";s:11:"tarclink co";s:22:"rambo_designed_by_link";s:19:"http://tarclink.com";s:19:"project_heading_one";s:21:"Our Featured Projects";}', 'yes'),
(171, 'theme_switched_via_customizer', '', 'yes'),
(175, '_site_transient_timeout_wporg_theme_feature_list', '1474072907', 'no'),
(176, '_site_transient_wporg_theme_feature_list', 'a:0:{}', 'no'),
(177, 'eif_settings', 'a:24:{s:11:"eif_user_id";s:0:"";s:16:"eif_access_token";s:51:"1591885187.44a5744.87e84a6f76394d60a2f19f8d9b53582a";s:14:"eif_feed_width";s:3:"100";s:19:"eif_feed_width_unit";s:1:"%";s:15:"eif_feed_height";s:3:"100";s:20:"eif_feed_height_unit";s:1:"%";s:25:"eif_feed_background_color";s:4:"#fff";s:27:"eif_feed_image_padding_unit";s:2:"px";s:27:"eif_feed_image_padding_size";s:1:"5";s:23:"eif_feed_column_numbers";s:1:"4";s:25:"eif_feed_number_of_images";s:2:"20";s:25:"eif_feed_image_resolution";s:14:"low_resolution";s:22:"eif_feed_image_sorting";s:5:"newer";s:27:"eif_feed_show_button_status";s:3:"yes";s:32:"eif_feed_button_background_color";s:7:"#000000";s:26:"eif_feed_button_text_color";s:4:"#fff";s:27:"eif_feed_follow_button_text";s:19:"Follow on Instagram";s:32:"eif_feed_load_more_button_status";s:3:"yes";s:36:"eif_feed_load_more_button_back_color";s:7:"#000000";s:36:"eif_feed_load_more_button_text_color";s:4:"#fff";s:30:"eif_feed_load_more_button_text";s:9:"Load More";s:21:"eif_feed_image_border";s:3:"yes";s:21:"eif_feed_image_shadow";s:3:"yes";s:22:"eif_feed_image_overlay";s:3:"yes";}', 'yes'),
(178, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(191, '_site_transient_timeout_browser_ab05e84a447b121430b085c7c5c14e71', '1477085022', 'no'),
(192, '_site_transient_browser_ab05e84a447b121430b085c7c5c14e71', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"53.0.2785.116";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(193, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1476523427', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(194, '_transient_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n\n\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:49:"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"WordPress News";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:26:"https://wordpress.org/news";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:14:"WordPress News";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:13:"lastBuildDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 07 Sep 2016 15:59:20 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:40:"https://wordpress.org/?v=4.7-alpha-38786";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:10:{i:0;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:48:"WordPress 4.6.1 Security and Maintenance Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:84:"https://wordpress.org/news/2016/09/wordpress-4-6-1-security-and-maintenance-release/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 07 Sep 2016 15:52:09 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.6";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4507";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:377:"WordPress 4.6.1 is now available. This is a security release for all previous versions and we strongly encourage you to update your sites immediately. WordPress versions 4.6 and earlier are affected by two security issues: a cross-site scripting vulnerability via image filename, reported by SumOfPwn researcher Cengiz Han Sahin; and a path traversal vulnerability in [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Jeremy Felt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2757:"<p>WordPress 4.6.1 is now available. This is a <strong>security release</strong> for all previous versions and we strongly encourage you to update your sites immediately.</p>\n<p>WordPress versions 4.6 and earlier are affected by two security issues: a cross-site scripting vulnerability via image filename, reported by SumOfPwn researcher <a href="https://twitter.com/cengizhansahin">Cengiz Han Sahin</a>; and a path traversal vulnerability in the upgrade package uploader, reported by <a href="https://dominikschilling.de/">Dominik Schilling</a> from the WordPress security team.</p>\n<p>Thank you to the reporters for practicing <a href="https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/">responsible disclosure</a>.</p>\n<p>In addition to the security issues above, WordPress 4.6.1 fixes 15 bugs from 4.6. For more information, see the <a href="https://codex.wordpress.org/Version_4.6.1">release notes</a> or consult the <a href="https://core.trac.wordpress.org/query?milestone=4.6.1">list of changes</a>.</p>\n<p><a href="https://wordpress.org/download/">Download WordPress 4.6.1</a> or venture over to Dashboard → Updates and simply click “Update Now.” Sites that support automatic background updates are already beginning to update to WordPress 4.6.1.</p>\n<p>Thanks to everyone who contributed to 4.6.1:</p>\n<p><a href="https://profiles.wordpress.org/azaozz">Andrew Ozz</a>, <a href="https://profiles.wordpress.org/gitlost">bonger</a>, <a href="https://profiles.wordpress.org/boonebgorges">Boone Gorges</a>, <a href="https://profiles.wordpress.org/chaos-engine">Chaos Engine</a>, <a href="https://profiles.wordpress.org/danielkanchev">Daniel Kanchev</a>, <a href="https://profiles.wordpress.org/dd32">Dion Hulse</a>, <a href="https://profiles.wordpress.org/drewapicture">Drew Jaynes</a>, <a href="https://profiles.wordpress.org/flixos90">Felix Arntz</a>, <a href="https://profiles.wordpress.org/frozzare">Fredrik Forsmo</a>, <a href="https://profiles.wordpress.org/pento">Gary Pendergast</a>, <a href="https://profiles.wordpress.org/geminorum">geminorum</a>, <a href="https://profiles.wordpress.org/iandunn">Ian Dunn</a>, <a href="https://profiles.wordpress.org/ionutst">Ionut Stanciu</a>, <a href="https://profiles.wordpress.org/jeremyfelt">Jeremy Felt</a>, <a href="https://profiles.wordpress.org/joemcgill">Joe McGill</a>, <a href="https://profiles.wordpress.org/clorith">Marius L. J. (Clorith)</a>, <a href="https://profiles.wordpress.org/swissspidy">Pascal Birchler</a>, <a href="https://profiles.wordpress.org/rpayne7264">Robert D Payne</a>, <a href="https://profiles.wordpress.org/sergeybiryukov">Sergey Biryukov</a>, and <a href="https://profiles.wordpress.org/nmt90">Triet Minh</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4507";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:36:"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"WordPress 4.6 “Pepper”";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:42:"https://wordpress.org/news/2016/08/pepper/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 16 Aug 2016 19:06:46 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:3:"4.6";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4444";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:276:"Version 4.6 of WordPress, named “Pepper” in honor of jazz baritone saxophonist Park Frederick “Pepper” Adams III, is available for download or update in your WordPress dashboard. New features in 4.6 help you to focus on the important things while feeling more at home.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:27:"Dominik Schilling (ocean90)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:27139:"<p>Version 4.6 of WordPress, named “Pepper” in honor of jazz baritone saxophonist Park Frederick “Pepper” Adams III, is available for download or update in your WordPress dashboard. New features in 4.6 help you to focus on the important things while feeling more at home.</p>\n<p><iframe width=\'632\' height=\'354\' src=\'https://videopress.com/embed/GbdhpGF3?hd=1\' frameborder=\'0\' allowfullscreen></iframe><script src=\'https://v0.wordpress.com/js/next/videopress-iframe.js?m=1435166243\'></script></p>\n<hr />\n<h2 style="text-align: center">Streamlined Updates</h2>\n<p><img class="aligncenter wp-image-4454 size-large" src="https://i0.wp.com/wordpress.org/news/files/2016/08/streamlined-updates.png?resize=632%2C379&#038;ssl=1" srcset="https://i0.wp.com/wordpress.org/news/files/2016/08/streamlined-updates.png?resize=1024%2C614&amp;ssl=1 1024w, https://i0.wp.com/wordpress.org/news/files/2016/08/streamlined-updates.png?resize=300%2C180&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2016/08/streamlined-updates.png?resize=768%2C461&amp;ssl=1 768w, https://i0.wp.com/wordpress.org/news/files/2016/08/streamlined-updates.png?w=1264&amp;ssl=1 1264w, https://i0.wp.com/wordpress.org/news/files/2016/08/streamlined-updates.png?w=1896&amp;ssl=1 1896w" sizes="(max-width: 632px) 100vw, 632px" data-recalc-dims="1" /></p>\n<p>Don’t lose your place: stay on the same page while you update, install, and delete your plugins and themes.</p>\n<hr />\n<h2 style="text-align: center">Native Fonts</h2>\n<p><img class="aligncenter wp-image-4455 size-large" src="https://i2.wp.com/wordpress.org/news/files/2016/08/native-fonts.png?resize=632%2C379&#038;ssl=1" srcset="https://i2.wp.com/wordpress.org/news/files/2016/08/native-fonts.png?resize=1024%2C614&amp;ssl=1 1024w, https://i2.wp.com/wordpress.org/news/files/2016/08/native-fonts.png?resize=300%2C180&amp;ssl=1 300w, https://i2.wp.com/wordpress.org/news/files/2016/08/native-fonts.png?resize=768%2C461&amp;ssl=1 768w, https://i2.wp.com/wordpress.org/news/files/2016/08/native-fonts.png?w=1264&amp;ssl=1 1264w, https://i2.wp.com/wordpress.org/news/files/2016/08/native-fonts.png?w=1896&amp;ssl=1 1896w" sizes="(max-width: 632px) 100vw, 632px" data-recalc-dims="1" /></p>\n<p>The WordPress dashboard now takes advantage of the fonts you already have, making it load faster and letting you feel more at home on whatever device you use.</p>\n<hr />\n<h2 style="text-align: center">Editor Improvements</h2>\n<div style="float: left;width: 48%;margin: 0">\n<h3>Inline Link Checker</h3>\n<p><img class="aligncenter wp-image-4456 size-full" src="https://i1.wp.com/wordpress.org/news/files/2016/08/inline-link-checker.png?resize=632%2C379&#038;ssl=1" srcset="https://i1.wp.com/wordpress.org/news/files/2016/08/inline-link-checker.png?w=992&amp;ssl=1 992w, https://i1.wp.com/wordpress.org/news/files/2016/08/inline-link-checker.png?resize=300%2C180&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2016/08/inline-link-checker.png?resize=768%2C461&amp;ssl=1 768w" sizes="(max-width: 632px) 100vw, 632px" data-recalc-dims="1" /></p>\n<p>Ever accidentally made a link to https://wordpress.org/example.org? Now WordPress automatically checks to make sure you didn’t.</p>\n</div>\n<div style="float: right;width: 48%;margin: 0">\n<h3>Content Recovery</h3>\n<p><img class="aligncenter wp-image-4457 size-full" src="https://i1.wp.com/wordpress.org/news/files/2016/08/content-recovery.png?resize=632%2C379&#038;ssl=1" srcset="https://i1.wp.com/wordpress.org/news/files/2016/08/content-recovery.png?w=992&amp;ssl=1 992w, https://i1.wp.com/wordpress.org/news/files/2016/08/content-recovery.png?resize=300%2C180&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2016/08/content-recovery.png?resize=768%2C461&amp;ssl=1 768w" sizes="(max-width: 632px) 100vw, 632px" data-recalc-dims="1" /></p>\n<p>As you type, WordPress saves your content to the browser. Recovering saved content is even easier with WordPress 4.6.</p>\n</div>\n<hr style="clear: both" />\n<h2 style="text-align: center">Under The Hood</h2>\n<h3>Resource Hints</h3>\n<p><a href="https://make.wordpress.org/core/2016/07/06/resource-hints-in-4-6/">Resource hints help browsers</a> decide which resources to fetch and preprocess. WordPress 4.6 adds them automatically for your styles and scripts making your site even faster.</p>\n<h3>Robust Requests</h3>\n<p>The HTTP API now leverages the Requests library, improving HTTP standard support and adding case-insensitive headers, parallel HTTP requests, and support for Internationalized Domain Names.</p>\n<h3><code>WP_Term_Query</code> and <code>WP_Post_Type</code></h3>\n<p>A new <code><a href="https://developer.wordpress.org/reference/classes/wp_term_query">WP_Term_Query</a></code> class adds flexibility to query term information while a new <code><a href="https://developer.wordpress.org/reference/classes/wp_post_type">WP_Post_Type</a></code> object makes interacting with post types more predictable.</p>\n<h3>Meta Registration API</h3>\n<p>The Meta Registration API <a href="https://make.wordpress.org/core/2016/07/08/enhancing-register_meta-in-4-6/">has been expanded</a> to support types, descriptions, and REST API visibility.</p>\n<h3>Translations On Demand</h3>\n<p>WordPress will install and use the newest language packs for your plugins and themes as soon as they’re available from <a href="https://translate.wordpress.org/">WordPress.org’s community of translators</a>.</p>\n<h3>JavaScript Library Updates</h3>\n<p>Masonry 3.3.2, imagesLoaded 3.2.0, MediaElement.js 2.22.0, TinyMCE 4.4.1, and Backbone.js 1.3.3 are bundled.</p>\n<h3>Customizer APIs for Setting Validation and Notifications</h3>\n<p>Settings now have an <a href="https://make.wordpress.org/core/2016/07/05/customizer-apis-in-4-6-for-setting-validation-and-notifications/">API for enforcing validation constraints</a>. Likewise, customizer controls now support notifications, which are used to display validation errors instead of failing silently.</p>\n<h3>Multisite, now faster than ever</h3>\n<p>Cached and comprehensive site queries improve your network admin experience. The addition of <code><a href="https://developer.wordpress.org/reference/classes/wp_site_query">WP_Site_Query</a></code> and <code><a href="https://developer.wordpress.org/reference/classes/wp_network_query">WP_Network_Query</a></code> help craft advanced queries with less effort.</p>\n<hr />\n<h2 style="text-align: center">The Crew</h2>\n<p>This release was led by <a href="https://dominikschilling.de/">Dominik Schilling</a>, backed up by <a href="https://www.garthmortensen.com/">Garth Mortensen</a> as Release Deputy, and with the help of these fine individuals. There are <span style="font-weight: 400">272</span> contributors with props in this release. Pull up some Pepper Adams on your music service of choice, and check out some of their profiles:</p>\n<a href="https://profiles.wordpress.org/a5hleyrich">A5hleyRich</a>, <a href="https://profiles.wordpress.org/jorbin">Aaron Jorbin</a>, <a href="https://profiles.wordpress.org/achbed">achbed</a>, <a href="https://profiles.wordpress.org/adamsilverstein">Adam Silverstein</a>, <a href="https://profiles.wordpress.org/adamsoucie">Adam Soucie</a>, <a href="https://profiles.wordpress.org/adrianosilvaferreira">Adriano Ferreira</a>, <a href="https://profiles.wordpress.org/afineman">afineman</a>, <a href="https://profiles.wordpress.org/mrahmadawais">Ahmad Awais</a>, <a href="https://profiles.wordpress.org/aidvu">aidvu</a>, <a href="https://profiles.wordpress.org/akibjorklund">Aki Bj&#246;rklund</a>, <a href="https://profiles.wordpress.org/xknown">Alex Concha</a>, <a href="https://profiles.wordpress.org/xavortm">Alex Dimitrov</a>, <a href="https://profiles.wordpress.org/alexkingorg">Alex King</a>, <a href="https://profiles.wordpress.org/viper007bond">Alex Mills (Viper007Bond)</a>, <a href="https://profiles.wordpress.org/alexvandervegt">alexvandervegt</a>, <a href="https://profiles.wordpress.org/ambrosey">Alice Brosey</a>, <a href="https://profiles.wordpress.org/aaires">Ana Aires</a>, <a href="https://profiles.wordpress.org/afercia">Andrea Fercia</a>, <a href="https://profiles.wordpress.org/andg">Andrea Gandino</a>, <a href="https://profiles.wordpress.org/nacin">Andrew Nacin</a>, <a href="https://profiles.wordpress.org/azaozz">Andrew Ozz</a>, <a href="https://profiles.wordpress.org/rockwell15">Andrew Rockwell</a>, <a href="https://profiles.wordpress.org/afragen">Andy Fragen</a>, <a href="https://profiles.wordpress.org/andizer">Andy Meerwaldt</a>, <a href="https://profiles.wordpress.org/andy">Andy Skelton</a>, <a href="https://profiles.wordpress.org/anilbasnet">Anil Basnet</a>, <a href="https://profiles.wordpress.org/ankit-k-gupta">Ankit K Gupta</a>, <a href="https://profiles.wordpress.org/anneschmidt">anneschmidt</a>, <a href="https://profiles.wordpress.org/zuige">Antti Kuosmanen</a>, <a href="https://profiles.wordpress.org/ideag">Arunas Liuiza</a>, <a href="https://profiles.wordpress.org/barry">Barry</a>, <a href="https://profiles.wordpress.org/barryceelen">Barry Ceelen</a>, <a href="https://profiles.wordpress.org/kau-boy">Bernhard Kau</a>, <a href="https://profiles.wordpress.org/birgire">Birgir Erlendsson (birgire)</a>, <a href="https://profiles.wordpress.org/bobbingwide">bobbingwide</a>, <a href="https://profiles.wordpress.org/gitlost">bonger</a>, <a href="https://profiles.wordpress.org/boonebgorges">Boone B. Gorges</a>, <a href="https://profiles.wordpress.org/bradt">Brad Touesnard</a>, <a href="https://profiles.wordpress.org/kraftbj">Brandon Kraft</a>, <a href="https://profiles.wordpress.org/brianvan">brianvan</a>, <a href="https://profiles.wordpress.org/borgesbruno">Bruno Borges</a>, <a href="https://profiles.wordpress.org/bpetty">Bryan Petty</a>, <a href="https://profiles.wordpress.org/purcebr">Bryan Purcell</a>, <a href="https://profiles.wordpress.org/chandrapatel">Chandra Patel</a>, <a href="https://profiles.wordpress.org/chaos-engine">Chaos Engine</a>, <a href="https://profiles.wordpress.org/chouby">Chouby</a>, <a href="https://profiles.wordpress.org/chriscct7">Chris Christoff (chriscct7)</a>, <a href="https://profiles.wordpress.org/chris_dev">Chris Mok</a>, <a href="https://profiles.wordpress.org/c3mdigital">Chris Olbekson</a>, <a href="https://profiles.wordpress.org/christophherr">Christoph Herr</a>, <a href="https://profiles.wordpress.org/cfinke">Christopher Finke</a>, <a href="https://profiles.wordpress.org/cliffseal">Cliff Seal</a>, <a href="https://profiles.wordpress.org/clubduece">clubduece</a>, <a href="https://profiles.wordpress.org/cmillerdev">cmillerdev</a>, <a href="https://profiles.wordpress.org/craig-ralston">Craig Ralston</a>, <a href="https://profiles.wordpress.org/crstauf">crstauf</a>, <a href="https://profiles.wordpress.org/dabnpits">dabnpits</a>, <a href="https://profiles.wordpress.org/danielbachhuber">Daniel Bachhuber</a>, <a href="https://profiles.wordpress.org/danielhuesken">Daniel H&#252;sken</a>, <a href="https://profiles.wordpress.org/danielkanchev">Daniel Kanchev</a>, <a href="https://profiles.wordpress.org/mte90">Daniele Scasciafratte</a>, <a href="https://profiles.wordpress.org/dashaluna">dashaluna</a>, <a href="https://profiles.wordpress.org/davewarfel">davewarfel</a>, <a href="https://profiles.wordpress.org/davidakennedy">David A. Kennedy</a>, <a href="https://profiles.wordpress.org/davidanderson">David Anderson</a>, <a href="https://profiles.wordpress.org/dbrumbaugh10up">David Brumbaugh</a>, <a href="https://profiles.wordpress.org/dcavins">David Cavins</a>, <a href="https://profiles.wordpress.org/dlh">David Herrera</a>, <a href="https://profiles.wordpress.org/davidmosterd">David Mosterd</a>, <a href="https://profiles.wordpress.org/dshanske">David Shanske</a>, <a href="https://profiles.wordpress.org/realloc">Dennis Ploetner</a>, <a href="https://profiles.wordpress.org/valendesigns">Derek Herman</a>, <a href="https://profiles.wordpress.org/downstairsdev">Devin Price</a>, <a href="https://profiles.wordpress.org/dd32">Dion Hulse</a>, <a href="https://profiles.wordpress.org/dougwollison">Doug Wollison</a>, <a href="https://profiles.wordpress.org/drewapicture">Drew Jaynes</a>, <a href="https://profiles.wordpress.org/iseulde">Ella Iseulde Van Dorpe</a>, <a href="https://profiles.wordpress.org/elrae">elrae</a>, <a href="https://profiles.wordpress.org/ericlewis">Eric Andrew Lewis</a>, <a href="https://profiles.wordpress.org/ethitter">Erick Hitter</a>, <a href="https://profiles.wordpress.org/fab1en">Fabien Quatravaux</a>, <a href="https://profiles.wordpress.org/faison">Faison</a>, <a href="https://profiles.wordpress.org/flixos90">Felix Arntz</a>, <a href="https://profiles.wordpress.org/flyingdr">flyingdr</a>, <a href="https://profiles.wordpress.org/foliovision">FolioVision</a>, <a href="https://profiles.wordpress.org/francescobagnoli">francescobagnoli</a>, <a href="https://profiles.wordpress.org/bueltge">Frank Bueltge</a>, <a href="https://profiles.wordpress.org/frank-klein">Frank Klein</a>, <a href="https://profiles.wordpress.org/efarem">Frank Martin</a>, <a href="https://profiles.wordpress.org/frozzare">Fredrik Forsmo</a>, <a href="https://profiles.wordpress.org/mintindeed">Gabriel Koen</a>, <a href="https://profiles.wordpress.org/gma992">Gabriel Maldonado</a>, <a href="https://profiles.wordpress.org/pento">Gary Pendergast</a>, <a href="https://profiles.wordpress.org/gblsm">gblsm</a>, <a href="https://profiles.wordpress.org/geekysoft">Geeky Software</a>, <a href="https://profiles.wordpress.org/geminorum">geminorum</a>, <a href="https://profiles.wordpress.org/georgestephanis">George Stephanis</a>, <a href="https://profiles.wordpress.org/hardeepasrani">Hardeep Asrani</a>, <a href="https://profiles.wordpress.org/helen">Helen Hou-Sandí</a>, <a href="https://profiles.wordpress.org/henrywright">Henry Wright</a>, <a href="https://profiles.wordpress.org/hugobaeta">Hugo Baeta</a>, <a href="https://profiles.wordpress.org/polevaultweb">Iain Poulson</a>, <a href="https://profiles.wordpress.org/iandunn">Ian Dunn</a>, <a href="https://profiles.wordpress.org/igmoweb">Ignacio Cruz Moreno</a>, <a href="https://profiles.wordpress.org/imath">imath</a>, <a href="https://profiles.wordpress.org/inderpreet99">Inderpreet Singh</a>, <a href="https://profiles.wordpress.org/ionutst">Ionut Stanciu</a>, <a href="https://profiles.wordpress.org/ipstenu">Ipstenu (Mika Epstein)</a>, <a href="https://profiles.wordpress.org/jdgrimes">J.D. Grimes</a>, <a href="https://profiles.wordpress.org/macmanx">James Huff</a>, <a href="https://profiles.wordpress.org/jnylen0">James Nylen</a>, <a href="https://profiles.wordpress.org/underdude">Janne Ala-&#196;ij&#228;l&#228;</a>, <a href="https://profiles.wordpress.org/jaspermdegroot">Jasper de Groot</a>, <a href="https://profiles.wordpress.org/javorszky">javorszky</a>, <a href="https://profiles.wordpress.org/jfarthing84">Jeff Farthing</a>, <a href="https://profiles.wordpress.org/cheffheid">Jeffrey de Wit</a>, <a href="https://profiles.wordpress.org/jeremyfelt">Jeremy Felt</a>, <a href="https://profiles.wordpress.org/endocreative">Jeremy Green</a>, <a href="https://profiles.wordpress.org/jeherve">Jeremy Herve</a>, <a href="https://profiles.wordpress.org/jmichaelward">Jeremy Ward</a>, <a href="https://profiles.wordpress.org/jerrysarcastic">Jerry Bates (jerrysarcastic)</a>, <a href="https://profiles.wordpress.org/jesin">Jesin A</a>, <a href="https://profiles.wordpress.org/jipmoors">Jip Moors</a>, <a href="https://profiles.wordpress.org/joedolson">Joe Dolson</a>, <a href="https://profiles.wordpress.org/joehoyle">Joe Hoyle</a>, <a href="https://profiles.wordpress.org/joemcgill">Joe McGill</a>, <a href="https://profiles.wordpress.org/joelwills">Joel Williams</a>, <a href="https://profiles.wordpress.org/j-falk">Johan Falk</a>, <a href="https://profiles.wordpress.org/johnbillion">John Blackbourn</a>, <a href="https://profiles.wordpress.org/johnjamesjacoby">John James Jacoby</a>, <a href="https://profiles.wordpress.org/johnpgreen">John P. Green</a>, <a href="https://profiles.wordpress.org/john_schlick">John_Schlick</a>, <a href="https://profiles.wordpress.org/kenshino">Jon (Kenshino)</a>, <a href="https://profiles.wordpress.org/jbrinley">Jonathan Brinley</a>, <a href="https://profiles.wordpress.org/spacedmonkey">Jonny Harris</a>, <a href="https://profiles.wordpress.org/joostdevalk">Joost de Valk</a>, <a href="https://profiles.wordpress.org/josephscott">Joseph Scott</a>, <a href="https://profiles.wordpress.org/shelob9">Josh Pollock</a>, <a href="https://profiles.wordpress.org/joshuagoodwin">Joshua Goodwin</a>, <a href="https://profiles.wordpress.org/jpdavoutian">jpdavoutian</a>, <a href="https://profiles.wordpress.org/jrf">jrf</a>, <a href="https://profiles.wordpress.org/jsternberg">jsternberg</a>, <a href="https://profiles.wordpress.org/juanfra">Juanfra Aldasoro</a>, <a href="https://profiles.wordpress.org/juhise">Juhi Saxena</a>, <a href="https://profiles.wordpress.org/julesaus">julesaus</a>, <a href="https://profiles.wordpress.org/justinsainton">Justin Sainton</a>, <a href="https://profiles.wordpress.org/ryelle">Kelly Dwan</a>, <a href="https://profiles.wordpress.org/khag7">Kevin Hagerty</a>, <a href="https://profiles.wordpress.org/ixkaito">Kite</a>, <a href="https://profiles.wordpress.org/kjbenk">kjbenk</a>, <a href="https://profiles.wordpress.org/kovshenin">Konstantin Kovshenin</a>, <a href="https://profiles.wordpress.org/obenland">Konstantin Obenland</a>, <a href="https://profiles.wordpress.org/kurtpayne">Kurt Payne</a>, <a href="https://profiles.wordpress.org/offereins">Laurens Offereins</a>, <a href="https://profiles.wordpress.org/lukecavanagh">Luke Cavanagh</a>, <a href="https://profiles.wordpress.org/latz">Lutz Schr&#246;er</a>, <a href="https://profiles.wordpress.org/mpol">Marcel Pol</a>, <a href="https://profiles.wordpress.org/clorith">Marius L. J. (Clorith)</a>, <a href="https://profiles.wordpress.org/markjaquith">Mark Jaquith</a>, <a href="https://profiles.wordpress.org/mapk">Mark Uraine</a>, <a href="https://profiles.wordpress.org/martinkrcho">martin.krcho</a>, <a href="https://profiles.wordpress.org/mattmiklic">Matt Miklic</a>, <a href="https://profiles.wordpress.org/matt">Matt Mullenweg</a>, <a href="https://profiles.wordpress.org/borkweb">Matthew Batchelder</a>, <a href="https://profiles.wordpress.org/mattyrob">mattyrob</a>, <a href="https://profiles.wordpress.org/wzislam">Mayeenul Islam</a>, <a href="https://profiles.wordpress.org/mdwheele">mdwheele</a>, <a href="https://profiles.wordpress.org/medariox">medariox</a>, <a href="https://profiles.wordpress.org/mehulkaklotar">Mehul Kaklotar</a>, <a href="https://profiles.wordpress.org/meitar">Meitar</a>, <a href="https://profiles.wordpress.org/melchoyce">Mel Choyce</a>, <a href="https://profiles.wordpress.org/roseapplemedia">Michael</a>, <a href="https://profiles.wordpress.org/michaelarestad">Michael Arestad</a>, <a href="https://profiles.wordpress.org/michael-arestad">Michael Arestad</a>, <a href="https://profiles.wordpress.org/michaelbeil">Michael Beil</a>, <a href="https://profiles.wordpress.org/stuporglue">Michael Moore</a>, <a href="https://profiles.wordpress.org/mbijon">Mike Bijon</a>, <a href="https://profiles.wordpress.org/mikehansenme">Mike Hansen</a>, <a href="https://profiles.wordpress.org/mikeschroder">Mike Schroder</a>, <a href="https://profiles.wordpress.org/dimadin">Milan Dinić</a>, <a href="https://profiles.wordpress.org/morganestes">Morgan Estes</a>, <a href="https://profiles.wordpress.org/mt8biz">moto hachi ( mt8.biz )</a>, <a href="https://profiles.wordpress.org/m_uysl">Mustafa Uysal</a>, <a href="https://profiles.wordpress.org/nicholas_io">N&#237;cholas Andr&#233;</a>, <a href="https://profiles.wordpress.org/nextendweb">Nextendweb</a>, <a href="https://profiles.wordpress.org/niallkennedy">Niall Kennedy</a>, <a href="https://profiles.wordpress.org/celloexpressions">Nick Halsey</a>, <a href="https://profiles.wordpress.org/nikschavan">Nikhil Chavan</a>, <a href="https://profiles.wordpress.org/rabmalin">Nilambar Sharma</a>, <a href="https://profiles.wordpress.org/ninos-ego">Ninos</a>, <a href="https://profiles.wordpress.org/alleynoah">Noah</a>, <a href="https://profiles.wordpress.org/noahsilverstein">noahsilverstein</a>, <a href="https://profiles.wordpress.org/odysseygate">odyssey</a>, <a href="https://profiles.wordpress.org/ojrask">ojrask</a>, <a href="https://profiles.wordpress.org/olarmarius">Olar Marius</a>, <a href="https://profiles.wordpress.org/ovann86">ovann86</a>, <a href="https://profiles.wordpress.org/pansotdev">pansotdev</a>, <a href="https://profiles.wordpress.org/swissspidy">Pascal Birchler</a>, <a href="https://profiles.wordpress.org/pbearne">Paul Bearne</a>, <a href="https://profiles.wordpress.org/bassgang">Paul Vincent Beigang</a>, <a href="https://profiles.wordpress.org/paulwilde">Paul Wilde</a>, <a href="https://profiles.wordpress.org/pavelevap">pavelevap</a>, <a href="https://profiles.wordpress.org/pcarvalho">pcarvalho</a>, <a href="https://profiles.wordpress.org/westi">Peter Westwood</a>, <a href="https://profiles.wordpress.org/peterwilsoncc">Peter Wilson</a>, <a href="https://profiles.wordpress.org/peterrknight">PeterRKnight</a>, <a href="https://profiles.wordpress.org/walbo">Petter Walb&#248; Johnsg&#229;rd</a>, <a href="https://profiles.wordpress.org/petya">Petya Raykovska</a>, <a href="https://profiles.wordpress.org/wizzard_">Pieter</a>, <a href="https://profiles.wordpress.org/pollett">Pollett</a>, <a href="https://profiles.wordpress.org/postpostmodern">postpostmodern</a>, <a href="https://profiles.wordpress.org/presskopp">Presskopp</a>, <a href="https://profiles.wordpress.org/prettyboymp">prettyboymp</a>, <a href="https://profiles.wordpress.org/r-a-y">r-a-y</a>, <a href="https://profiles.wordpress.org/rachelbaker">Rachel Baker</a>, <a href="https://profiles.wordpress.org/rafaelangeline">rafaelangeline</a>, <a href="https://profiles.wordpress.org/zetaraffix">raffaella isidori</a>, <a href="https://profiles.wordpress.org/rahulsprajapati">Rahul Prajapati</a>, <a href="https://profiles.wordpress.org/ramiy">Rami Yushuvaev</a>, <a href="https://profiles.wordpress.org/rianrietveld">Rian Rietveld </a>, <a href="https://profiles.wordpress.org/iamfriendly">Richard Tape</a>, <a href="https://profiles.wordpress.org/rpayne7264">Robert D Payne</a>, <a href="https://profiles.wordpress.org/littlerchicken">Robin Cornett</a>, <a href="https://profiles.wordpress.org/rodrigosprimo">Rodrigo Primo</a>, <a href="https://profiles.wordpress.org/ronalfy">Ronald Huereca</a>, <a href="https://profiles.wordpress.org/ruudjoyo">Ruud Laan</a>, <a href="https://profiles.wordpress.org/rmccue">Ryan McCue</a>, <a href="https://profiles.wordpress.org/welcher">Ryan Welcher</a>, <a href="https://profiles.wordpress.org/samantha-miller">Samantha Miller</a>, <a href="https://profiles.wordpress.org/solarissmoke">Samir Shah</a>, <a href="https://profiles.wordpress.org/rosso99">Sara Rosso</a>, <a href="https://profiles.wordpress.org/schlessera">schlessera</a>, <a href="https://profiles.wordpress.org/scottbasgaard">Scott Basgaard</a>, <a href="https://profiles.wordpress.org/sc0ttkclark">Scott Kingsley Clark</a>, <a href="https://profiles.wordpress.org/coffee2code">Scott Reilly</a>, <a href="https://profiles.wordpress.org/wonderboymusic">Scott Taylor</a>, <a href="https://profiles.wordpress.org/screamingdev">screamingdev</a>, <a href="https://profiles.wordpress.org/sebastianpisula">Sebastian Pisula</a>, <a href="https://profiles.wordpress.org/semil">semil</a>, <a href="https://profiles.wordpress.org/sergeybiryukov">Sergey Biryukov</a>, <a href="https://profiles.wordpress.org/shahpranaf">shahpranaf</a>, <a href="https://profiles.wordpress.org/sidati">Sidati</a>, <a href="https://profiles.wordpress.org/neverything">Silvan Hagen</a>, <a href="https://profiles.wordpress.org/simonvik">Simon Vikstr&#246;m</a>, <a href="https://profiles.wordpress.org/sirjonathan">sirjonathan</a>, <a href="https://profiles.wordpress.org/smerriman">smerriman</a>, <a href="https://profiles.wordpress.org/soean">Soeren Wrede</a>, <a href="https://profiles.wordpress.org/southp">southp</a>, <a href="https://profiles.wordpress.org/metodiew">Stanko Metodiev</a>, <a href="https://profiles.wordpress.org/stephdau">Stephane Daury (stephdau)</a>, <a href="https://profiles.wordpress.org/coderste">Stephen</a>, <a href="https://profiles.wordpress.org/netweb">Stephen Edgar</a>, <a href="https://profiles.wordpress.org/stephenharris">Stephen Harris</a>, <a href="https://profiles.wordpress.org/stevenkword">Steven Word</a>, <a href="https://profiles.wordpress.org/stubgo">stubgo</a>, <a href="https://profiles.wordpress.org/sudar">Sudar Muthu</a>, <a href="https://profiles.wordpress.org/patilswapnilv">Swapnil V. Patil</a>, <a href="https://profiles.wordpress.org/tacoverdo">Taco Verdonschot</a>, <a href="https://profiles.wordpress.org/iamtakashi">Takashi Irie</a>, <a href="https://profiles.wordpress.org/karmatosed">Tammie Lister</a>, <a href="https://profiles.wordpress.org/tlovett1">Taylor Lovett</a>, <a href="https://profiles.wordpress.org/themiked">theMikeD</a>, <a href="https://profiles.wordpress.org/thomaswm">thomaswm</a>, <a href="https://profiles.wordpress.org/tfrommen">Thorsten Frommen</a>, <a href="https://profiles.wordpress.org/timothyblynjacobs">Timothy Jacobs</a>, <a href="https://profiles.wordpress.org/tloureiro">tloureiro</a>, <a href="https://profiles.wordpress.org/travisnorthcutt">Travis Northcutt</a>, <a href="https://profiles.wordpress.org/nmt90">Triet Minh</a>, <a href="https://profiles.wordpress.org/grapplerulrich">Ulrich</a>, <a href="https://profiles.wordpress.org/unyson">Unyson</a>, <a href="https://profiles.wordpress.org/szepeviktor">Viktor Sz&#233;pe</a>, <a href="https://profiles.wordpress.org/vishalkakadiya">Vishal Kakadiya</a>, <a href="https://profiles.wordpress.org/vortfu">vortfu</a>, <a href="https://profiles.wordpress.org/svovaf">vovafeldman</a>, <a href="https://profiles.wordpress.org/websupporter">websupporter</a>, <a href="https://profiles.wordpress.org/westonruter">Weston Ruter</a>, <a href="https://profiles.wordpress.org/wp_smith">wp_smith</a>, <a href="https://profiles.wordpress.org/wpfo">wpfo</a>, <a href="https://profiles.wordpress.org/xavivars">Xavi Ivars</a>, <a href="https://profiles.wordpress.org/yoavf">Yoav Farhi</a>, <a href="https://profiles.wordpress.org/tollmanz">Zack Tollman</a>, and <a href="https://profiles.wordpress.org/zakb8">zakb8</a>.\n<p>&nbsp;</p>\n<p>Special thanks go to <a href="https://jerrysarcastic.com/">Jerry Bates</a> for producing the release video and <a href="http://hugobaeta.com/">Hugo Baeta</a> for providing marketing graphics.</p>\n<p>Finally, thanks to all the community translators who worked on WordPress 4.6. Their efforts make it possible to use WordPress 4.6 in 52 languages. The WordPress 4.6 release video has been captioned into 43 languages.</p>\n<p>If you want to follow along or help out, check out <a href="https://make.wordpress.org/">Make WordPress</a> and our <a href="https://make.wordpress.org/core/">core development blog</a>. Thanks for choosing WordPress. See you soon for version 4.7!</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4444";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:17:"WordPress 4.6 RC2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/news/2016/08/wordpress-4-6-rc2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 11 Aug 2016 00:31:04 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.6";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4427";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:341:"The second release candidate for WordPress 4.6 is now available. We’ve made over 30 changes since the first release candidate. RC means we think we’re done, but with millions of users and thousands of plugins and themes, it’s possible we’ve missed something. We hope to ship WordPress 4.6 on Tuesday, August 16, but we need [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:27:"Dominik Schilling (ocean90)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:3450:"<p>The second release candidate for WordPress 4.6 is now available.</p>\n<p>We’ve made over <a href="https://core.trac.wordpress.org/log/branches/4.6/src?action=stop_on_copy&amp;mode=follow_copy&amp;rev=38246&amp;stop_rev=38170&amp;limit=200&amp;verbose=on&amp;sfp_email=&amp;sfph_mail=">30 changes</a> since the first release candidate. RC means we think we’re done, but with millions of users and thousands of plugins and themes, it’s possible we’ve missed something. We hope to ship WordPress 4.6 on <strong>Tuesday, August 16</strong>, but we need <em>your</em> help to get there.</p>\n<p>If you haven’t tested 4.6 yet, now is the time!</p>\n<p><strong>Think you&#8217;ve found a bug?</strong> Please post to the <a href="https://wordpress.org/support/forum/alphabeta/">Alpha/Beta support forum</a>. If any known issues come up, you&#8217;ll be able to <a href="https://core.trac.wordpress.org/report/5">find them here</a>.</p>\n<p>To test WordPress 4.6, you can use the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin or you can <a href="https://wordpress.org/wordpress-4.6-RC2.zip">download the release candidate here</a> (zip).</p>\n<p>For more information about what’s new in version 4.6, check out the <a href="https://wordpress.org/news/2016/06/wordpress-4-6-beta-1/">Beta 1</a>, <a href="https://wordpress.org/news/2016/07/wordpress-4-6-beta-2/">Beta 2</a>, <a href="https://wordpress.org/news/2016/07/wordpress-4-6-beta-3/">Beta 3</a>, <a href="https://wordpress.org/news/2016/07/wordpress-4-6-beta-4/">Beta 4</a>, and <a href="https://wordpress.org/news/2016/07/wordpress-4-6-release-candidate/">RC 1</a> blog posts.</p>\n<p>A few changes of note since the first release candidate:</p>\n<ul>\n<li>Support for custom HTTP methods and proxy authentication has been restored.</li>\n<li>Various fixes for the streamlined updates, including better failure messages and error handling, basic back-compat styling for custom update notifications, and additional and standardized JavaScript events.</li>\n<li>Unnecessary reference parameters have been removed from new multisite functions.</li>\n<li>A compatibility issue with PHP 7.0.9 (and PHP 7.1) has been fixed.</li>\n</ul>\n<p><strong>Developers</strong>, please test your plugins and themes against WordPress 4.6 and update your plugin&#8217;s <em>Tested up to</em> version in the readme to 4.6. If you find compatibility problems please be sure to post to the support forums so we can figure those out before the final release – we never want to break things.</p>\n<p>Be sure to read the <a href="https://make.wordpress.org/core/2016/07/26/wordpress-4-6-field-guide/">in-depth field guide</a>, a post with all the developer-focused changes that take place under the hood.</p>\n<p><strong>Translators</strong>, strings are now frozen, including the About Page, so you are clear to translate! <a href="https://translate.wordpress.org/projects/wp/dev">Help us translate WordPress into more than 100 languages!</a></p>\n<p>Happy testing!</p>\n<p><em>The verdict is in,</em><br />\n<em>Can I haz all the features,</em><br />\n<em>Your best WordPress yet.</em></p>\n<p><img src="https://s.w.org/images/core/emoji/2.2.1/72x72/1f3f3.png" alt="🏳" class="wp-smiley" style="height: 1em; max-height: 1em;" />️‍<img src="https://s.w.org/images/core/emoji/2.2.1/72x72/1f308.png" alt="🌈" class="wp-smiley" style="height: 1em; max-height: 1em;" /></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4427";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:31:"WordPress 4.6 Release Candidate";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"https://wordpress.org/news/2016/07/wordpress-4-6-release-candidate/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 27 Jul 2016 19:14:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.6";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4416";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:337:"The release candidate for WordPress 4.6 is now available. We’ve made a few refinements since releasing Beta 4 a week ago. RC means we think we’re done, but with millions of users and thousands of plugins and themes, it’s possible we’ve missed something. We hope to ship WordPress 4.6 on Tuesday, August 16, but we need [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:27:"Dominik Schilling (ocean90)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2428:"<p>The release candidate for WordPress 4.6 is now available.</p>\n<p>We’ve made <a href="https://core.trac.wordpress.org/log/trunk/src?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=38169&amp;stop_rev=38124&amp;limit=200&amp;verbose=on">a few refinements</a> since releasing Beta 4 a week ago. RC means we think we’re done, but with millions of users and thousands of plugins and themes, it’s possible we’ve missed something. We hope to ship WordPress 4.6 on <strong>Tuesday, August 16</strong>, but we need <em>your</em> help to get there.</p>\n<p>If you haven’t tested 4.6 yet, now is the time!</p>\n<p><strong>Think you&#8217;ve found a bug?</strong> Please post to the <a href="https://wordpress.org/support/forum/alphabeta/">Alpha/Beta support forum</a>. If any known issues come up, you&#8217;ll be able to <a href="https://core.trac.wordpress.org/report/5">find them here</a>.</p>\n<p>To test WordPress 4.6, you can use the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin or you can <a href="https://wordpress.org/wordpress-4.6-RC1.zip">download the release candidate here</a> (zip).</p>\n<p>For more information about what’s new in version 4.6, check out the <a href="https://wordpress.org/news/2016/06/wordpress-4-6-beta-1/">Beta 1</a>, <a href="https://wordpress.org/news/2016/07/wordpress-4-6-beta-2/">Beta 2</a>, <a href="https://wordpress.org/news/2016/07/wordpress-4-6-beta-3/">Beta 3</a>, and <a href="https://wordpress.org/news/2016/07/wordpress-4-6-beta-4/">Beta 4</a> blog posts.</p>\n<p><strong>Developers</strong>, please test your plugins and themes against WordPress 4.6 and update your plugin&#8217;s <em>Tested up to</em> version in the readme to 4.6. If you find compatibility problems please be sure to post to the support forums so we can figure those out before the final release – we never want to break things.</p>\n<p>Be sure to read the <a href="https://make.wordpress.org/core/2016/07/26/wordpress-4-6-field-guide/">in-depth field guide</a>, a post with all the developer-focused changes that take place under the hood.</p>\n<p>Do you speak a language other than English? <a href="https://translate.wordpress.org/projects/wp/dev">Help us translate WordPress into more than 100 languages!</a></p>\n<p>Happy testing!</p>\n<p><em>Der Sommer ist da,</em><br />\n<em>Zeit für ein neues Release.</em><br />\n<em>Bald ist es soweit.</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4416";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"WordPress 4.6 Beta 4";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2016/07/wordpress-4-6-beta-4/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 20 Jul 2016 18:49:17 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.6";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4396";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:329:"WordPress 4.6 Beta 4 is now available! This software is still in development, so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.6, try the WordPress Beta Tester plugin (you’ll want “bleeding edge nightlies”). Or you can [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:27:"Dominik Schilling (ocean90)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:4321:"<p>WordPress 4.6 Beta 4 is now available!</p>\n<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.6, try the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href="https://wordpress.org/wordpress-4.6-beta4.zip">download the beta here</a> (zip).</p>\n<p>For more information on what’s new in 4.6, check out the <a href="https://wordpress.org/news/2016/06/wordpress-4-6-beta-1/">Beta 1</a>, <a href="https://wordpress.org/news/2016/07/wordpress-4-6-beta-2/">Beta 2</a>, and <a href="https://wordpress.org/news/2016/07/wordpress-4-6-beta-3/">Beta 3</a> blog posts, along with <a href="https://make.wordpress.org/core/tag/4-6+dev-notes/">in-depth field guides</a>. This is the final <a href="https://make.wordpress.org/core/version-4-6-project-schedule/">planned beta</a> of WordPress 4.6, with a release candidate scheduled for next week.</p>\n<p>Some of the fixes in Beta 4 include:</p>\n<ul>\n<li><strong>Media</strong>: <code>alt</code> attributes are now always added to images inserted from URLs (<a href="https://core.trac.wordpress.org/ticket/36735">#36735</a>).</li>\n<li>Object subtype handling has been removed from <code>register_meta()</code>. Details about this change are explained in <a href="https://make.wordpress.org/core/2016/07/20/additional-register_meta-changes-in-4-6/">a post for developers</a>.</li>\n<li><strong>Resource hints</strong> are now limited to enqueued assets (<a href="https://core.trac.wordpress.org/ticket/37385">#37385</a>).</li>\n<li>A regression with query alterations introduced by the new <code>WP_Term_Query</code> has been fixed (<a href="https://core.trac.wordpress.org/ticket/37378">#37378</a>).</li>\n<li>The Ajax searches for <strong>installed and new plugins</strong> have been enhanced to fix several accessibility issues and to improve compatibility with older browsers. (<a href="https://core.trac.wordpress.org/ticket/37233">#37233</a>, <a href="https://core.trac.wordpress.org/ticket/37373">#37373</a>)</li>\n<li>The media player <strong>MediaElement.js</strong> has been updated to 2.22.0 to fix YouTube video embeds (<a href="https://core.trac.wordpress.org/ticket/37363">#37363</a>).</li>\n<li>The <strong>Import screen</strong> was overhauled, improving accessibility and making it much easier to install and run an importer (<a href="https://core.trac.wordpress.org/ticket/35191">#35191</a>).</li>\n<li><strong>Emoji support</strong> has been updated to include all of the latest Unicode 9 emoji characters (<a href="https://core.trac.wordpress.org/ticket/37361">#37361</a>). 🤠🥕🥓<img src="https://s.w.org/images/core/emoji/2.2.1/72x72/1f57a.png" alt="🕺" class="wp-smiley" style="height: 1em; max-height: 1em;" /><img src="https://s.w.org/images/core/emoji/2.2.1/72x72/1f3fd.png" alt="🏽" class="wp-smiley" style="height: 1em; max-height: 1em;" />🤝<img src="https://s.w.org/images/core/emoji/2.2.1/72x72/1f3ff.png" alt="🏿" class="wp-smiley" style="height: 1em; max-height: 1em;" /></li>\n<li><strong>Various bug fixes</strong>. We’ve made <a href="https://core.trac.wordpress.org/log/trunk/src?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=38123&amp;stop_rev=38060&amp;limit=200&amp;verbose=on">more than 60 changes</a> during the last week.</li>\n</ul>\n<p>Do you speak a language other than English? <a href="https://translate.wordpress.org/projects/wp/dev">Help us translate WordPress into more than 100 languages!</a></p>\n<p>If you think you’ve found a bug, you can post to the <a href="https://wordpress.org/support/forum/alphabeta">Alpha/Beta area</a> in the support forums. Or, if you’re comfortable writing a bug report, <a href="https://core.trac.wordpress.org/">file one on the WordPress Trac</a>. There, you can also find <a href="https://core.trac.wordpress.org/tickets/major">a list of known bugs</a> and <a href="https://core.trac.wordpress.org/query?status=closed&amp;group=component&amp;milestone=4.6">everything we’ve fixed</a>.</p>\n<p>Happy testing!</p>\n<p><em>This is Beta 4,</em><br />\n<em>The last before RC 1.</em><br />\n<em>Please test all the things.</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4396";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"WordPress 4.6 Beta 3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2016/07/wordpress-4-6-beta-3/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 13 Jul 2016 19:00:08 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.6";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4386";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:329:"WordPress 4.6 Beta 3 is now available! This software is still in development, so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.6, try the WordPress Beta Tester plugin (you’ll want “bleeding edge nightlies”). Or you can [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:27:"Dominik Schilling (ocean90)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:3169:"<p>WordPress 4.6 Beta 3 is now available!</p>\n<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.6, try the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href="https://wordpress.org/wordpress-4.6-beta3.zip">download the beta here</a> (zip).</p>\n<p>For more information on what’s new in 4.6, check out the <a href="https://wordpress.org/news/2016/06/wordpress-4-6-beta-1/">Beta 1</a> and <a href="https://wordpress.org/news/2016/07/wordpress-4-6-beta-2/">Beta 2</a> blog posts, along with <a href="https://make.wordpress.org/core/tag/4-6+dev-notes/">in-depth field guides on make/core</a>. Some of the fixes in Beta 3 include:</p>\n<ul>\n<li><strong>Revisions:</strong> Autosaves can now be restored when revisions are disabled (<a href="https://core.trac.wordpress.org/ticket/36262">#36262</a>).</li>\n<li>An improved <strong>handling of PHP&#8217;s memory limit</strong> which doesn&#8217;t lower the limit anymore (<a href="https://core.trac.wordpress.org/ticket/32075">#</a><a class="closed ticket" title="defect (bug): Only set WP_MAX_MEMORY_LIMIT by default when its greater than memory_limit (closed: fixed)" href="https://core.trac.wordpress.org/ticket/32075">32075</a>).</li>\n<li><strong>TinyMCE</strong> has been updated to 4.4.0 (<a href="https://core.trac.wordpress.org/ticket/32075">#</a><a class="closed ticket" title="defect (bug): TinyMCE 4.4.0 (closed: fixed)" href="https://core.trac.wordpress.org/ticket/37327">37327</a>).</li>\n<li><strong>HTTP API:</strong> Proxy settings weren&#8217;t honored by the new HTTP library. This has been fixed (<a href="https://core.trac.wordpress.org/ticket/37107">#37107</a>).</li>\n<li>Improved handling of <strong>UTF-8 address headers for emails </strong>(<a href="https://core.trac.wordpress.org/ticket/21659">#21659</a>).</li>\n<li><strong>Various bug fixes</strong>. We’ve made <a href="https://core.trac.wordpress.org/log/trunk/src?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=38059&amp;stop_rev=37992&amp;limit=200&amp;verbose=on">more than 65 changes</a> during the last week.</li>\n</ul>\n<p>Do you speak a language other than English? <a href="https://translate.wordpress.org/projects/wp/dev">Help us translate WordPress into more than 100 languages!</a></p>\n<p>If you think you’ve found a bug, you can post to the <a href="https://wordpress.org/support/forum/alphabeta">Alpha/Beta area</a> in the support forums. Or, if you’re comfortable writing a bug report, <a href="https://core.trac.wordpress.org/">file one on the WordPress Trac</a>. There, you can also find <a href="https://core.trac.wordpress.org/tickets/major">a list of known bugs</a> and <a href="https://core.trac.wordpress.org/query?status=closed&amp;group=component&amp;milestone=4.6">everything we’ve fixed</a>.</p>\n<p>Happy testing!</p>\n<p><em>Beta 3 is here,</em><br />\n<em>The more testing, the better.</em><br />\n<em>Gotta catch ‘em all!</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4386";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"WordPress 4.6 Beta 2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2016/07/wordpress-4-6-beta-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 06 Jul 2016 18:43:37 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.6";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4371";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:329:"WordPress 4.6 Beta 2 is now available! This software is still in development, so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.6, try the WordPress Beta Tester plugin (you’ll want “bleeding edge nightlies”). Or you can [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:27:"Dominik Schilling (ocean90)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2803:"<p>WordPress 4.6 Beta 2 is now available!</p>\n<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.6, try the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href="https://wordpress.org/wordpress-4.6-beta2.zip">download the beta here</a> (zip).</p>\n<p>Notable changes since WordPress 4.6 Beta 1:</p>\n<ul>\n<li><strong>Meta:</strong> The fallback authentication for the previous registration method has been restored. Also, retrieving registered metadata now works and non-core object types are no longer forcibly blocked. See <a href="https://core.trac.wordpress.org/ticket/35658">#35658</a>.</li>\n<li><strong>REST API:</strong> The order of setting sanitization and validation has been reversed; validation now occurs prior to sanitization. Previously, the sanitization callback ran before the validation callback. See <a href="https://core.trac.wordpress.org/ticket/37192">#37192</a>.</li>\n<li><strong>Customize:</strong> The order of setting sanitization and validation has been reversed; validation now occurs prior to sanitization. See <a href="https://core.trac.wordpress.org/ticket/37247">#37247</a>.</li>\n<li><strong>HTTP API:</strong> <code>WP_Http::request()</code> returns an array again. See <a href="https://core.trac.wordpress.org/ticket/37097">#37097</a>.</li>\n<li><strong>Various bug fixes</strong>. We’ve made <a href="https://core.trac.wordpress.org/log/trunk/src?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=37992&amp;stop_rev=37925&amp;limit=200&amp;verbose=on">just over 50 changes</a> in the last week.</li>\n</ul>\n<p>For more of what’s new in version 4.6, <a href="https://wordpress.org/news/2016/06/wordpress-4-6-beta-1/">check out the Beta 1 blog post</a>.</p>\n<p>Do you speak a language other than English? <a href="https://translate.wordpress.org/projects/wp/dev">Help us translate WordPress into more than 100 languages!</a></p>\n<p>If you think you’ve found a bug, you can post to the <a href="https://wordpress.org/support/forum/alphabeta">Alpha/Beta area</a> in the support forums. Or, if you’re comfortable writing a bug report, <a href="https://core.trac.wordpress.org/">file one on the WordPress Trac</a>. There, you can also find <a href="https://core.trac.wordpress.org/tickets/major">a list of known bugs</a> and <a href="https://core.trac.wordpress.org/query?status=closed&amp;group=component&amp;milestone=4.6">everything we’ve fixed</a>.</p>\n<p>Happy testing!</p>\n<p><em>Teenage Beta 2</em><br />\n<em>Thirteen years of pressing words</em><br />\n<em>Rejoice with testing!</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4371";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"WordPress 4.6 Beta 1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2016/06/wordpress-4-6-beta-1/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 30 Jun 2016 01:22:48 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.6";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4343";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:329:"WordPress 4.6 Beta 1 is now available! This software is still in development, so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.6, try the WordPress Beta Tester plugin (you’ll want “bleeding edge nightlies”). Or you can [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:27:"Dominik Schilling (ocean90)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:5954:"<p>WordPress 4.6 Beta 1 is now available!</p>\n<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.6, try the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href="https://wordpress.org/wordpress-4.6-beta1.zip">download the beta here</a> (zip).</p>\n<p>WordPress 4.6 is slated for release on <a href="https://make.wordpress.org/core/version-4-6-project-schedule/">August 16</a>, but to get there, we need your help testing what we have been working on, including:</p>\n<ul>\n<li><strong>Shiny Updates v2</strong> (<a href="https://core.trac.wordpress.org/changeset/37714">[37714]</a>) &#8211; <a href="https://make.wordpress.org/core/features/shiny-updates/">Shiny Updates</a> replaces progress updates with a simpler and more straight forward experience when installing, updating, and deleting plugins and themes.</li>\n<li><strong>Native Fonts in the Admin</strong> (<a href="https://core.trac.wordpress.org/ticket/36753">#36753</a>) &#8211; Experience faster load times, especially when working offline, a removal of a third-party dependency, and a more <a href="https://make.wordpress.org/core/features/font-natively/">native-feeling experience</a> as the lines between the mobile web and native applications continue to blur.</li>\n<li><strong>Editor Improvements</strong> &#8211; A more reliable recovery mode (<a href="https://core.trac.wordpress.org/ticket/37025">#37025</a>) and detection of broken URLs while you type them (<a href="https://core.trac.wordpress.org/ticket/36638">#36638</a>).</li>\n</ul>\n<p>There have been changes for developers to explore as well:</p>\n<ul>\n<li><strong>Resource Hints</strong> (<a href="https://core.trac.wordpress.org/ticket/34292">#34292</a>) &#8211; Allow browsers to prefetch specific pages, render them in the background, perform DNS lookups, or to begin the connection handshake (DNS, TCP, TLS) in the background.</li>\n<li>New <code>WP_Site_Query</code> (<a href="https://core.trac.wordpress.org/ticket/35791">#35791</a>) and <code>WP_Network_Query</code> (<a href="https://core.trac.wordpress.org/ticket/32504">#32504</a>) classes to query sites and networks with lazy loading for details.</li>\n<li><strong>Requests</strong> (<a href="https://core.trac.wordpress.org/ticket/33055">#33055</a>) &#8211; A new PHP library for HTTP requests that supports parallel requests and more.</li>\n<li><code>WP_Term_Query</code> (<a href="https://core.trac.wordpress.org/ticket/35381">#35381</a>) is modeled on existing query classes and provides a more consistent structure for generating term queries.</li>\n<li><strong>Language Packs</strong> (<a href="https://core.trac.wordpress.org/ticket/34114">#34114</a>, <a href="https://core.trac.wordpress.org/ticket/34213">#34213</a>) &#8211; Translations managed through <a href="https://translate.wordpress.org">translate.wordpress.org</a> now have a higher priority and are loaded just-in-time.</li>\n<li><code>WP_Post_Type</code> (<a href="https://core.trac.wordpress.org/ticket/36217">#36217</a>) provides easier access to post type objects and their underlying properties.</li>\n<li>The <strong>Widgets API</strong> (<a href="https://core.trac.wordpress.org/ticket/28216">#28216</a>) was enhanced to support registering pre-instantiated widgets.</li>\n<li>Index definitions are now normalized by <code>dbDelta()</code> (<a href="https://core.trac.wordpress.org/changeset/37583">[37583]</a>).</li>\n<li><strong>Comments</strong> can now be stored in a persistent object cache (<a href="https://core.trac.wordpress.org/ticket/36906">#36906</a>).</li>\n<li><strong>External Libraries</strong> were updated to the latest versions &#8211; Masonry to 3.3.2 and imagesLoaded to 3.2.0 (<a href="https://core.trac.wordpress.org/ticket/32802">#32802</a>), MediaElement.js to 2.21.2 (<a href="https://core.trac.wordpress.org/ticket/36759">#36759</a>), and TinyMCE to 4.3.13 (<a href="https://core.trac.wordpress.org/ticket/37225">#37225</a>).</li>\n<li><strong>REST API</strong> responses now include an auto-discovery header (<a href="https://core.trac.wordpress.org/ticket/35580">#35580</a>) and a refreshed nonce when responding to an authenticated response (<a href="https://core.trac.wordpress.org/ticket/35662">#35662</a>).</li>\n<li>Expanded <strong>Meta Registration API</strong> via <code>register_meta()</code> (<a href="https://core.trac.wordpress.org/ticket/35658">#35658</a>).</li>\n<li><strong>Customizer</strong> &#8211; Improved API for <a href="https://make.wordpress.org/core/2016/05/04/improving-setting-validation-in-the-customizer/">setting validation</a> (<a href="https://core.trac.wordpress.org/ticket/34893">#34893</a>, <a href="https://core.trac.wordpress.org/ticket/36944">#36944</a>).</li>\n</ul>\n<p>If you want a more in-depth view of what major changes have made it into 4.6, <a href="https://make.wordpress.org/core/tag/4-6/">check out posts tagged with 4.6 on the main development blog</a>, or look at a <a href="https://core.trac.wordpress.org/query?status=closed&amp;resolution=fixed&amp;milestone=4.6&amp;group=component&amp;order=priority">list of everything</a> that’s changed.</p>\n<p><strong>If you think you’ve found a bug</strong>, you can post to the <a href="https://wordpress.org/support/forum/alphabeta">Alpha/Beta area</a> in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report, <a href="https://make.wordpress.org/core/reports/">file one on the WordPress Trac</a>. There, you can also find <a href="https://core.trac.wordpress.org/tickets/major">a list of known bugs.</a></p>\n<p>Happy testing!</p>\n<p><em>More Shiny Updates</em><br />\n<em>In 4.6 Beta 1.</em><br />\n<em>And Font Natively.</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4343";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:48:"WordPress 4.5.3 Maintenance and Security Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/news/2016/06/wordpress-4-5-3/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 18 Jun 2016 09:38:15 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.5";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4311";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:460:"WordPress 4.5.3 is now available. This is a security release for all previous versions and we strongly encourage you to update your sites immediately. WordPress versions 4.5.2 and earlier are affected by several security issues: redirect bypass in the customizer, reported by Yassine Aboukir; two different XSS problems via attachment names, reported by Jouko Pynnönen and Divyesh Prajapati; revision history information disclosure, reported [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Adam Silverstein";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:3571:"<p>WordPress 4.5.3 is now available. This is a <strong>security release</strong> for all previous versions and we strongly encourage you to update your sites immediately.</p>\n<p>WordPress versions 4.5.2 and earlier are affected by several security issues: redirect bypass in the customizer, reported by <a href="http://yassineaboukir.com">Yassine Aboukir</a>; two different XSS problems via attachment names, reported by <a href="https://klikki.fi/">Jouko Pynnönen</a> and <a href="https://twitter.com/divy_er">Divyesh Prajapati</a>; revision history information disclosure, reported independently by <a href="https://profiles.wordpress.org/johnbillion">John Blackbourn</a> from the WordPress security team and by Dan Moen from the Wordfence Research Team; oEmbed denial of service reported by Jennifer Dodd from Automattic; unauthorized category removal from a post, reported by David Herrera from <a href="https://www.alleyinteractive.com/">Alley Interactive</a>; password change via stolen cookie, reported by <a href="https://blogwaffe.com/">Michael Adams</a> from the WordPress security team; and some less secure <code>sanitize_file_name</code> edge cases reported by <a href="http://peter.westwood.name/">Peter Westwood</a> of  the WordPress security team.</p>\n<p>Thank you to the reporters for practicing <a href="https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/">responsible disclosure</a>.</p>\n<p>In addition to the security issues above, WordPress 4.5.3 fixes 17 bugs from 4.5, 4.5.1 and 4.5.2. For more information, see the <a href="https://codex.wordpress.org/Version_4.5.3">release notes</a> or consult the <a href="https://core.trac.wordpress.org/query?milestone=4.5.3">list of changes</a>.</p>\n<p><a href="https://wordpress.org/download/">Download WordPress 4.5.3</a> or venture over to Dashboard → Updates and simply click “Update Now.” Sites that support automatic background updates are already beginning to update to WordPress 4.5.3.</p>\n<p>Thanks to everyone who contributed to 4.5.3:</p>\n<p><a href="https://profiles.wordpress.org/boonebgorges">Boone Gorges</a>, <a href="https://profiles.wordpress.org/neverything">Silvan Hagen</a>, <a href="https://profiles.wordpress.org/vortfu">vortfu</a>, <a href="https://profiles.wordpress.org/ericlewis">Eric Andrew Lewis</a>, <a href="https://profiles.wordpress.org/nbachiyski">Nikolay Bachiyski</a>,  <a href="https://profiles.wordpress.org/mdawaffe">Michael Adams</a>, <a href="https://profiles.wordpress.org/jeremyfelt">Jeremy Felt</a>, <a href="https://profiles.wordpress.org/ocean90">Dominik Schilling</a>, <a href="https://profiles.wordpress.org/westonruter">Weston Ruter</a>, <a href="https://profiles.wordpress.org/dd32">Dion Hulse</a>, <a href="https://profiles.wordpress.org/rachelbaker">Rachel Baker</a>, <a href="https://profiles.wordpress.org/xknown">Alex Concha</a>, <a href="https://profiles.wordpress.org/jmdodd">Jennifer M. Dodd</a>, <a href="https://profiles.wordpress.org/kraftbj">Brandon Kraft</a>, <a href="https://profiles.wordpress.org/pento">Gary Pendergast</a>, <a href="https://profiles.wordpress.org/iseulde">Ella Iseulde Van Dorpe</a>, <a href="https://profiles.wordpress.org/joemcgill">Joe McGill</a>, <a href="https://profiles.wordpress.org/swissspidy">Pascal Birchler</a>, <a href="https://profiles.wordpress.org/SergeyBiryukov">Sergey Biryukov</a>, <a href="https://profiles.wordpress.org/dlh/">David Herrera</a> and <a href="https://profiles.wordpress.org/adamsilverstein">Adam Silverstein</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4311";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:32:"WordPress 4.5.2 Security Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/news/2016/05/wordpress-4-5-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 06 May 2016 19:17:08 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.5";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4290";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:381:"WordPress 4.5.2 is now available. This is a security release for all previous versions and we strongly encourage you to update your sites immediately. WordPress versions 4.5.1 and earlier are affected by a SOME vulnerability through Plupload, the third-party library WordPress uses for uploading files. WordPress versions 4.2 through 4.5.1 are vulnerable to reflected XSS [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Helen Hou-Sandi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1669:"<p>WordPress 4.5.2 is now available. This is a <strong>security release</strong> for all previous versions and we strongly encourage you to update your sites immediately.</p>\n<p>WordPress versions 4.5.1 and earlier are affected by a <abbr title="Same-Origin Method Execution">SOME</abbr> vulnerability through Plupload, the third-party library WordPress uses for uploading files. WordPress versions 4.2 through 4.5.1 are vulnerable to reflected XSS using specially crafted URIs through MediaElement.js, the third-party library used for media players. MediaElement.js and Plupload have also released updates fixing these issues.</p>\n<p>Both issues were analyzed and reported by Mario Heiderich, Masato Kinugawa, and Filedescriptor from <a href="https://cure53.de/">Cure53</a>. Thanks to the team for practicing <a href="https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/">responsible disclosure</a>, and to the Plupload and MediaElement.js teams for working closely with us to coördinate and fix these issues.</p>\n<p><a href="https://wordpress.org/download/">Download WordPress 4.5.2</a> or venture over to Dashboard → Updates and simply click “Update Now.” Sites that support automatic background updates are already beginning to update to WordPress 4.5.2.</p>\n<p>Additionally, there are multiple widely publicized vulnerabilities in the ImageMagick image processing library, which is used by a number of hosts and is supported in WordPress. For our current response to these issues, see <a href="https://make.wordpress.org/core/2016/05/06/imagemagick-vulnerability-information/">this post on the core development blog</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4290";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:32:"https://wordpress.org/news/feed/";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:44:"http://purl.org/rss/1.0/modules/syndication/";a:2:{s:12:"updatePeriod";a:1:{i:0;a:5:{s:4:"data";s:6:"hourly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:15:"updateFrequency";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:4:"site";a:1:{i:0;a:5:{s:4:"data";s:8:"14607090";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";O:42:"Requests_Utility_CaseInsensitiveDictionary":1:{s:7:"\0*\0data";a:9:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Fri, 14 Oct 2016 21:23:46 GMT";s:12:"content-type";s:34:"application/rss+xml; charset=UTF-8";s:25:"strict-transport-security";s:11:"max-age=360";s:6:"x-olaf";s:3:"⛄";s:13:"last-modified";s:29:"Wed, 07 Sep 2016 15:59:20 GMT";s:4:"link";s:63:"<https://wordpress.org/news/wp-json/>; rel="https://api.w.org/"";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 250";}}s:5:"build";s:14:"20130911010210";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(195, '_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1476523427', 'no'),
(196, '_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1476480227', 'no'),
(197, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1476523431', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(198, '_transient_feed_d117b5738fbd35bd8c0391cda1f2b5d9', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n\n\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:61:"\n	\n	\n	\n	\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"WordPress Planet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:28:"http://planet.wordpress.org/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:2:"en";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:47:"WordPress Planet - http://planet.wordpress.org/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:50:{i:0;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:86:"WPTavern: WangGuard Plugin Launches Indiegogo Campaign to Fund Development and Support";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=62706";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:97:"https://wptavern.com/wangguard-plugin-launches-indiegogo-campaign-to-fund-development-and-support";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:5970:"<p><a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2016/10/wangguard.png?ssl=1"><img src="https://i1.wp.com/wptavern.com/wp-content/uploads/2016/10/wangguard.png?resize=1025%2C536&ssl=1" alt="wangguard" class="aligncenter size-full wp-image-62711" /></a></p>\n<p>This week José Conti, creator of <a href="https://wordpress.org/plugins/wangguard/" target="_blank">WangGuard</a>, announced that he would be shutting down the service and further development. The plugin, which Conti says has nearly 20,000 users, is one of the few effective solutions for combatting WordPress, multisite, BuddyPress, and bbPress spammers and sploggers. Conti was struggling to pay for the servers and, after six years of supporting the plugin, had only received six donations from the community.</p>\n<blockquote class="twitter-tweet"><p lang="en" dir="ltr">After 6 years of work and only 6 donations,I don’t see that people appreciate WangGuard, so I’m Shutting Down WGG.Thanks for your confidence</p>\n<p>&mdash; WangGuard (@wangguard) <a href="https://twitter.com/wangguard/status/785185033359360002">October 9, 2016</a></p></blockquote>\n<p></p>\n<p>After receiving encouragement from fans and users, as well as a generous donation of servers from a hosting company, Conti <a href="https://www.indiegogo.com/projects/wangguard-service-plugin-development-and-support-service#/" target="_blank">launched an Indiegogo campaign</a> to fund future support and development of the service. The goal is set at $35,000, out of which Conti will need to pay the Indiegogo commission, the Gateway commission, and taxes.</p>\n<p>&#8220;The goal of this campaign is to cover the expenses of a full year of my work to improve WangGuard and to keep providing support for free to all users,&#8221; Conti said. &#8220;I’m not aiming to become a millionaire, just to be able to work and improve a service which has more than 20,000 active users per day with benefits for sites all around the world.&#8221;</p>\n<p>I asked Conti if he has considered offering a commercial tier to cover the time he puts into supporting the plugin&#8217;s users, which he said averages 20 hours per week.</p>\n<p>&#8220;I&#8217;ve thought about charging for WangGuard, but it&#8217;s something I wanted to do for the community,&#8221; Conti said. &#8220;And I was hoping that the community, seeing the benefits it gave them, would donate to me. But that has not been the case.&#8221;</p>\n<p>Conti named WangGuard after a fierce warrior from Chinese mythology who served as a protector and guardian of the palace. (After launching the plugin he discovered the meaning in English but found that many people liked the name, so he decided not to change it.) The plugin and service blocked 710,000 sploggers its first year, 15 million the third year, and has blocked 220 million sploggers to date. Conti said its effectiveness has now reached 99%.</p>\n<p>Conti wants to keep the plugin free for all users and plans to create a campaign every year to raise funds for WangGuard development and support.</p>\n<p>&#8220;I have always believed that WangGuard is truly needed and everyone deserves to use it for free,&#8221; Conti said in his campaign overview. &#8220;But, on the other hand, I can’t afford to keep paying all expenses for the maintenance of the best (in my opinion) anti-splog service. I need help.&#8221;</p>\n<p>So far the WangGuard campaign has received $1,145 towards its flexible goal of $35,000 and there are two months remaining until it closes.</p>\n<p>Conti&#8217;s situation highlights the plight of many WordPress.org plugin developers who offer free products and receive meager donations for their efforts. Some of these plugins amass large user bases that depend on them but not all plugin authors are prepared to create a commercial operation to support their continued efforts.</p>\n<blockquote class="twitter-tweet"><p lang="en" dir="ltr"><a href="https://twitter.com/ffreaker">@ffreaker</a> <a href="https://twitter.com/pgibbs">@pgibbs</a> <a href="https://twitter.com/hnla">@hnla</a> <a href="https://twitter.com/wangguard">@wangguard</a> search/replace is at least 1000 uses a day, maybe get something once or twice a year.</p>\n<p>&mdash; David Coveney (@davecoveney) <a href="https://twitter.com/davecoveney/status/785769780733063168">October 11, 2016</a></p></blockquote>\n<p></p>\n<blockquote class="twitter-tweet"><p lang="en" dir="ltr"><a href="https://twitter.com/pgibbs">@pgibbs</a> <a href="https://twitter.com/hnla">@hnla</a> <a href="https://twitter.com/wangguard">@wangguard</a> nobody donates. They assume you are on a jet ski somewhere living off your internet dollars.</p>\n<p>&mdash; Silicon Dales (@SiliconDales) <a href="https://twitter.com/SiliconDales/status/785814999507804160">October 11, 2016</a></p></blockquote>\n<p></p>\n<p>&#8220;The problem is that people confuse free vs. &#8216;for free,\'&#8221; Conti said. &#8220;We must make people aware that developers must pay for things and we have to make money. Maybe the WordPress repository needs another design that makes the importance of donations for developers more visible.</p>\n<p>&#8220;People think that everything is free. It is, but there is an effort behind it that people should value. Maybe they are not appreciating it, because nobody told them clearly that it should have value.&#8221;</p>\n<p>Although putting a price tag on a plugin is not necessarily an indicator of value, it allows users to demonstrate what they think it&#8217;s worth to them. Offering users a higher level of service for a price, also known as the freemium model, is the most common way plugin developers cover the costs of their time. However, not all developers who make free plugins want to run a business. Short of asking for donations or launching a fundraising campaign, is there anything a developer can do to cause people to value the time and effort put into supporting a free plugin?</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 14 Oct 2016 18:47:23 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:67:"WPTavern: Lizz Ehrenpreis Wins Kinsta’s $1,500 Travel Scholarship";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=62676";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:73:"https://wptavern.com/lizz-ehrenpreis-wins-kinstas-1500-travel-scholarship";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2751:"<p>Last month, <a href="https://wptavern.com/kinsta-to-award-1500-travel-scholarship-for-wordcamp-us">Kinsta announced</a> it would give away one $1,500 travel scholarship to pay for an individual&#8217;s airfare, lodging, and admission ticket to <a href="https://2016.us.wordcamp.org/">WordCamp US</a>. The company has announced on Twitter that <a href="https://twitter.com/ecehren">Lizz Ehrenpreis</a>, who resides in Portland, Oregon is the winner.</p>\n<blockquote class="twitter-tweet"><p lang="en" dir="ltr">Congratulations to Lizz of Portland OR on winning the <a href="https://twitter.com/hashtag/WCUS?src=hash">#WCUS</a> scholarship! Enjoy the WordCamp. <a href="https://t.co/awKZEwZE55">https://t.co/awKZEwZE55</a> <a href="https://twitter.com/ecehren">@ecehren</a> <a href="https://twitter.com/WordCampUS">@WordCampUS</a> <a href="https://t.co/lPD1Q1UnFt">pic.twitter.com/lPD1Q1UnFt</a></p>\n<p>&mdash; Kinsta® (@kinsta) <a href="https://twitter.com/kinsta/status/786596638127034368">October 13, 2016</a></p></blockquote>\n<p></p>\n<p>I reached out to Ehrenpreis to learn what the scholarship means to her, how it impacts her life, and what she&#8217;s looking forward to at the event.</p>\n<p><strong>What does winning this travel scholarship mean to you?</strong></p>\n<p>It means so much! I have had the privilege of working with several WordPress companies as an agency employee and now as a freelancer, as a communications and marketing maven, but haven&#8217;t had a chance to attend many WordPress events.</p>\n<p>I&#8217;ve gone to two WordCamps, but that&#8217;s it! Being able to go to this huge event, learn more about WordPress, and connect with people I&#8217;ve only thus far interacted with through the magic of the internet and to see friends and colleagues is an enormous gift.</p>\n<p><strong>In what ways does the scholarship change or impact your life?</strong></p>\n<p>Well it certainly changes my December schedule in a good way! Aside from giving me the opportunity to meet new people and see the ones I adore, it&#8217;s also a huge learning and networking opportunity that I wouldn&#8217;t otherwise get&#8211;and its incredible timing considering I just went full-time freelance and launched out on my own.</p>\n<p><strong>Would you have been able to attend the event without the scholarship?</strong></p>\n<p>No, I wouldn&#8217;t have.</p>\n<p><strong>Is this your first WordCamp US and what are you looking forward too most?</strong></p>\n<p>It is my first WordCamp US! I lived vicariously through social media and post-event recaps last year, and it looked enormously fun. I can&#8217;t wait to see who is speaking this year, and I can&#8217;t wait to expand my WordPress knowledge.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 14 Oct 2016 17:49:01 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:64:"WPTavern: Bitbucket Pricing Hike Increases Cost Per User by 100%";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=62686";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:74:"https://wptavern.com/bitbucket-pricing-hike-increases-cost-per-user-by-100";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3780:"<p><a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2016/10/bitbucket-logo.png?ssl=1"><img src="https://i1.wp.com/wptavern.com/wp-content/uploads/2016/10/bitbucket-logo.png?resize=1025%2C381&ssl=1" alt="bitbucket-logo" class="aligncenter size-full wp-image-62699" /></a></p>\n<p>After <a href="https://wptavern.com/github-introduces-unlimited-private-repositories-hikes-prices-for-organizations" target="_blank">GitHub hiked its prices</a> last May, many users who were negatively impacted by the changes took a second look at competitors like Bitbucket and GitLab. GitHub switched from per-repository to per-user pricing, requiring organizations to purchase a seat for each user at $9 per user/month. This was a drastic increase when compared to the legacy plans that started at $25/month for 10 repositories and unlimited members.</p>\n<p>This week Bitbucket <a href="https://blog.bitbucket.org/2016/10/12/scaling-in-bitbucket-cloud-new-features-and-reliability-numbers/" target="_blank">announced</a> new features to help customers scale in the cloud, including Bitbucket Pipeline (build, test, and deploy from Bitbucket) and Git Large Files Storage (stores large files externally to keep Git repositories lightweight). Atlassian, the company behind Bitbucket, tacked a pricing change on at the end of the post under the heading &#8220;Pay only for what you need with per user pricing.&#8221;</p>\n<p>Bitbucket will still offer unlimited private repositories, but it is changing user pricing from <a href="https://bitbucket.org/product/pricing?tab=host-in-the-cloud" target="_blank">a groups model</a> (i.e. 10 for $10, 25 for $25, etc) to <a href="https://bitbucket.org/product/pricing/upcoming?tab=host-in-the-cloud" target="_blank">a per-user model</a> based on the number of users with access to the private repository. The announcement puts an odd spin on the pricing change, masking the fact that nearly 100% of its customers will be paying more, and in many cases double what they did before:</p>\n<blockquote><p>Most companies use SaaS so they can scale easily in the cloud and pay only for what they use. In our current model, unless you have exactly 10, 25, 50 or 100 users, you can end up paying for seats you don’t use. In the new pricing model (price-per-user) you only pay for the users who are actually part of your team. The Standard plan includes the Bitbucket you love at $2/user/month. The Premium plan at $5/user/month is for teams that require granular admin controls, security and auditing. Bitbucket Cloud will still be free for small teams of up to 5 users.\n</p></blockquote>\n<p>Customers replied that they expect pricing increases but don&#8217;t appreciate the company making it sound like they will be saving money.</p>\n<blockquote class="twitter-tweet"><p lang="en" dir="ltr"><a href="https://twitter.com/kevinzych">@kevinzych</a> <a href="https://twitter.com/Bitbucket">@Bitbucket</a> I expect price increases at times. Compared to JIRA Bb was a steal. Just don\'t make it sound like we\'ll save money.</p>\n<p>&mdash; Matt Sollars (@ventaur) <a href="https://twitter.com/ventaur/status/786257383156686848">October 12, 2016</a></p></blockquote>\n<p></p>\n<p>Although Bitbucket&#8217;s pricing change amounts to roughly a 100% increase for most customers, it is still significantly <a href="https://twitter.com/Pe_D/status/786313076027060224" target="_blank">more affordable than GitHub&#8217;s upcoming pricing structure</a>. Atlassian plans to put the <a href="https://confluence.atlassian.com/bitbucket/future-bitbucket-cloud-pricing-plans-856694492.html" target="_blank">new pricing</a> into effect in early 2017 and promises to give customers at least 30 days notice before rolling out the new model.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 14 Oct 2016 04:23:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:108:"WPTavern: GoDaddy’s New Primer Theme Bypasses Theme Review Queue, Highlights Bottlenecks in Review Process";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=62478";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:115:"https://wptavern.com/godaddys-new-primer-theme-bypasses-theme-review-queue-highlights-bottlenecks-in-review-process";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:7090:"<a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2015/01/red-pen.jpg?ssl=1"><img src="https://i1.wp.com/wptavern.com/wp-content/uploads/2015/01/red-pen.jpg?resize=1024%2C500&ssl=1" alt="photo credit: pollas - cc" class="size-full wp-image-37241" /></a>photo credit: <a href="https://www.flickr.com/photos/pollas/526544001/">pollas</a> &#8211; <a href="http://creativecommons.org/licenses/by-nc-sa/2.0/">cc</a>\n<p>As part of its <a href="https://wptavern.com/godaddy-launches-new-onboarding-experience-for-wordpress-customers" target="_blank">new onboarding experience for WordPress customers</a>, GoDaddy has created a group of 10 themes to streamline the process of creating a business website. In order to host updates more effectively, the company is submitting the themes to WordPress.org and the first one is now live after less than 24 hours in the theme review queue.</p>\n<p><a href="https://wordpress.org/themes/primer/" target="_blank">Primer</a> is the parent theme for nine upcoming child themes, which will be submitted to WordPress.org one at a time. Its controversial fast-tracking through the queue angered and frustrated WordPress theme authors who currently have theme submissions that have been waiting months for a review.</p>\n<p>Samuel Wood, who works on WordPress.org but is not part of the Theme Review Team, explained in the <a href="https://themes.trac.wordpress.org/ticket/37025#comment:7" target="_blank">ticket</a> why he processed the theme outside of the queue.</p>\n<p>&#8220;The special case here is that they needed to reuse an old name for assorted practical reasons, and it had to be live to allow the already created child themes to be added to the directory,&#8221; Wood said. He had to manually make the theme name available or GoDaddy would not have been able to submit it under this name. Wood had the theme reviewed first and the required changes took three weeks to finalize. After it was finished he was able to transfer it to use the Primer name.</p>\n<p>&#8220;Timing was important because they made this one theme as a base for a dozen or so child themes, and are deploying this to all their WordPress installs, which is quite a lot,&#8221; Wood said. &#8220;We&#8217;d rather have them updating properly from our servers instead of having them create some wacky solution that updates it from theirs or from GitHub.&#8221;</p>\n<p>The necessity for administrative intervention in this case, and the resulting frustration of other theme authors who have been waiting, once again highlights how painfully slow the theme review process can be. The long wait times discourage some authors from submitting themes to the official directory.</p>\n<p>&#8220;I have three free themes on wp.org and one of the most demotivating things, while waiting to be approved, was the wait times,&#8221; WordPress.org theme author Tomas Petrašiūnas <a href="https://www.facebook.com/groups/advancedwp/permalink/1272580572804154/?comment_id=1272587419470136&comment_tracking=%7B%22tn%22%3A%22R9%22%7D" target="_blank">commented</a> on the <a href="https://www.facebook.com/groups/advancedwp/permalink/1272580572804154/" target="_blank">related post</a> on the Advanced WordPress Facebook group. &#8220;Building a theme in a week and then waiting for a few months to even start the review process &#8211; that&#8217;s the exact reason why I&#8217;ve never bothered to get more themes approved on wp.org.&#8221;</p>\n<p>Chris Bavota, author of the popular <a href="https://wordpress.org/themes/arcade-basic/" target="_blank">Arcade theme</a>, <a href="https://www.facebook.com/groups/advancedwp/permalink/1272580572804154/?comment_id=1272739546121590&comment_tracking=%7B%22tn%22%3A%22R4%22%7D" target="_blank">said</a> he &#8220;submitted three themes in February and [is] still waiting on approvals and reviews.&#8221;</p>\n<p>The WordPress.org theme and plugin directories have historically been protected from commercial interests receiving any special treatment, but exceptions like this one made it difficult for other waiting theme authors not to see <a href="https://central.wordcamp.org/global-community-sponsors/" target="_blank">GoDaddy&#8217;s major sponsorship of WordCamps</a> as the reason for getting a theme fast-tracked.</p>\n<p>&#8220;As someone who has been waiting months for a simple child theme review and who has been a WordCamp sponsor, this sucks big time,&#8221; Stiofan O&#8217;Connor <a href="https://www.facebook.com/groups/advancedwp/permalink/1272580572804154/?comment_id=1272626316132913&comment_tracking=%7B%22tn%22%3A%22R9%22%7D" target="_blank">commented</a>.</p>\n<h3>Incomplete Theme Submissions are Slowing the Review Queue</h3>\n<p>Samuel Wood <a href="https://wordpress.slack.com/archives/themereview/p1476211288005598" target="_blank">identified the Primer theme situation as a special case</a> and encouraged theme authors and reviewers who were frustrated to explore new ways of managing the queue. At this time there are <a href="https://themes.trac.wordpress.org/report/2" target="_blank">more than 600 themes in the queue</a>, an improvement from the 900+ that were waiting a month ago.</p>\n<p>Key reviewer Emil Uzelac said one of the main issues that slows the process is <a href="https://make.wordpress.org/themes/2016/09/29/incomplete-theme-submissions/" target="_blank">incomplete theme submissions</a>, which includes themes that present with more than five errors. Sometimes themes languish in the queue and by the time they are reviewed they haven&#8217;t been updated to meet newer requirements. Others include common mistakes like missing translation functions or prefixes, or including custom versions of scripts that are already included with WordPress.</p>\n<p>To mitigate this Uzelac said the team has implemented some new policies which he says have helped reduce the queue over the past month.</p>\n<p>&#8220;We are actually limiting submissions to one theme per author now, and if the theme has five or more distinct issues, we close it as not-approved,&#8221; Uzelac said. &#8220;It has been working very well. Once we are around 100-150 this will go much faster.&#8221; He estimates it will take a few months to get there.</p>\n<p>The Theme Review Team is also working on <a href="https://make.wordpress.org/themes/2016/09/29/why-are-we-working-to-improve-the-automation-of-the-theme-review/" target="_blank">improving automation for routine tasks</a>. Due to the architectural shortcomings of the Theme Check plugin, the team is looking to PHP_CodeSniffer to create a better solution. They are working to add a new <a href="https://github.com/WPTRT/WordPress-Coding-Standards" target="_blank">WordPress-Theme</a> coding standard to the existing <a href="https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards" target="_blank">WordPress Coding Standards</a> project, and contributors are building <a href="https://github.com/WPTRT/WordPress-Coding-Standards/issues" target="_blank">a list of sniffs</a> that pertain to theme review requirements.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 13 Oct 2016 22:00:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:58:"WPTavern: WPCampus Online Scheduled For January 23rd, 2017";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=62638";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:68:"https://wptavern.com/wpcampus-online-scheduled-for-january-23rd-2017";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2424:"<p>Earlier this year, a number of people gathered in Sarasota, FL, to <a href="https://2016.wpcampus.org/">attend WPCampus</a>, the first conference devoted to WordPress in higher education. As the organizers continue to <a href="https://wptavern.com/wpcampus-is-accepting-applications-to-host-the-event-in-2017">accept applications</a> to host the event in 2017, the team is also organizing a virtual conference called <a href="https://wpcampus.org/online/">WPCampus Online</a>. WPCampus Online is an all-day event planned for Monday, January 23rd, 2017.</p>\n<p>Organizers are <a href="https://wpcampus.org/online/call-for-speakers/">accepting speaker applications</a> until Friday, November 18th at Midnight. The event will have multiple tracks and opportunities to network with each other. Rachel Carden, lead organizer, says they&#8217;re looking for a variety of session topics with a focus on &#8216;Why WordPress in Higher Education?&#8217;</p>\n<p>&#8220;This is a highly valuable topic to our community that can range anywhere from case studies to how to overcome biases and pitch WordPress to your administration,&#8221; Carden said.</p>\n<p>Carden emphasized that WPCampus Online is supplemental to the in-person event and is not a replacement, &#8220;We as a community hope that, by taking advantage of readily available streaming technology, we can make the education and development we wish to provide more accessible for our community,&#8221; she said.</p>\n<p>&#8220;This type of event not only helps those limited by a travel budget but allows us to increase the number of educational opportunities throughout the year.&#8221;</p>\n<p>It will be interesting to see if there are any sessions dedicated to clearing up some of the <a href="https://wptavern.com/wpcampus-survey-results-indicate-misconceptions-of-wordpress-are-slowing-its-growth-in-higher-education">misconceptions of WordPress in higher education.</a> According to a <a href="http://bit.ly/WPCampusStudy">user survey</a> conducted earlier this year, security, scalability, and WordPress&#8217; reputation are misconceptions that are slowing its growth in higher education.</p>\n<p>Pricing information for WPCampus Online was not available at the time of writing. Those interested in attending are encouraged to keep an eye on the <a href="https://wpcampus.org/online/">event&#8217;s website </a>for updates.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 13 Oct 2016 20:04:59 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:90:"WPTavern: WPWeekly Episode 251 – AMP, Translation Day 2, and the Other Side of WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wptavern.com?p=62660&preview=true&preview_id=62660";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:95:"https://wptavern.com/wpweekly-episode-251-amp-translation-day-2-and-the-other-side-of-wordpress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3220:"<p>In this episode of WordPress Weekly, <a href="http://marcuscouch.com/">Marcus Couch</a> and I discuss the latest stories making headlines in the WordPress community. We talk about the latest changes in the official AMP plugin and the second global WordPress translation day. We also discuss HeroPress obtaining its first financial sponsor and the not so happy side of WordPress. Last but not least, we talk about the proposal to add a CSS editor to the customizer in WordPress 4.7.</p>\n<h2>Stories Discussed:</h2>\n<p><a href="https://wptavern.com/the-deadline-to-apply-for-the-kim-parsell-scholarship-is-october-16th">The Deadline to Apply for the Kim Parsell Scholarship Is October 16th</a><br />\n<a href="https://wptavern.com/wordpress-com-adds-customization-for-amp-pages-pushes-update-to-amp-plugin">WordPress.com Adds Customization for AMP Pages, Pushes Update to AMP Plugin</a><br />\n<a href="https://wptavern.com/wp-rest-api-team-proposes-to-merge-content-endpoints-into-wordpress-4-7">WP REST API Team Proposes to Merge Content Endpoints Into WordPress 4.7</a><br />\n<a href="https://wptavern.com/polyglots-team-to-host-2nd-global-wordpress-translation-day-november-12">Polyglots Team to Host 2nd Global WordPress Translation Day November 12</a><br />\n<a href="https://wptavern.com/xwp-is-the-first-financial-sponsor-of-heropress">XWP Is the First Financial Sponsor of HeroPress</a><br />\n<a href="https://wptavern.com/you-are-responsible-for-your-own-awesome">You Are Responsible for Your Own Awesome</a><br />\n<a href="https://wptavern.com/the-days-of-creating-child-themes-for-simple-css-changes-may-soon-be-over">The Days of Creating Child Themes for Simple CSS Changes May Soon Be Over</a></p>\n<h2>Plugins Picked By Marcus:</h2>\n<p><a href="https://wordpress.org/plugins/post-worktime-logger/">Post Worktime Logger</a> is a tool that tracks how much time it takes to write a post.</p>\n<p><a href="https://wordpress.org/plugins/wp-facebook-live-video/">WP Facebook Live Video</a> displays a live video from your Facebook Page or Profile on any WordPress post or page using a simple shortcode.</p>\n<p><a href="https://wordpress.org/plugins/reviews-plus/">Reviews Plus </a>allows you to manage and display your customer reviews for products, services or any other type of content. Reviews Plus will replace the comments for a selected post type. Reviews Plus rating summary is fully compatible with Google&#8217;s guidance in order to show up in the results with review stars as part of the listing.</p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, October 19th 9:30 P.M. Eastern</p>\n<p><strong>Subscribe To WPWeekly Via Itunes: </strong><a href="https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738" target="_blank">Click here to subscribe</a></p>\n<p><strong>Subscribe To WPWeekly Via RSS: </strong><a href="https://wptavern.com/feed/podcast" target="_blank">Click here to subscribe</a></p>\n<p><strong>Subscribe To WPWeekly Via Stitcher Radio: </strong><a href="http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr" target="_blank">Click here to subscribe</a></p>\n<p><strong>Listen To Episode #251:</strong><br />\n</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 13 Oct 2016 18:43:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:48:"BuddyPress: BuddyPress 2.7.0 Release Candidate 2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"https://buddypress.org/?p=259787";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:68:"https://buddypress.org/2016/10/buddypress-2-7-0-release-candidate-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:864:"<p>BuddyPress 2.7.0 Release Candidate 2 is now available for testing. Please <a href="https://downloads.wordpress.org/plugin/buddypress.2.7.0-rc2.zip">download the 2.7.0-rc2 zip</a> or get a copy via our Subversion repository.</p>\n<p>This is our last chance to find any bugs that slipped through Release Candidate 1. So please test with your themes and plugins. A detailed changelog will be part of our official release notes, but you can get a quick overview by reading the post about the <a href="https://buddypress.org/2016/09/buddypress-2-7-0-beta-1/">2.7.0 Beta 1</a> release.</p>\n<p>Let us know of any issues you find in <a href="https://buddypress.org/support">the support forums</a> and/or on <a href="https://buddypress.trac.wordpress.org">our development tracker</a>.</p>\n<p>Thank you. We’re excited to release 2.7.0 next week on October 19!</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 13 Oct 2016 03:03:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"@mercime";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:82:"WPTavern: Call for Applications to Host WordCamp Europe 2018 Will Open in December";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=62480";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:93:"https://wptavern.com/call-for-applications-to-host-wordcamp-europe-2018-will-open-in-december";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4721:"<p><a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2016/10/wordcamp-europe-2018.png?ssl=1"><img src="https://i2.wp.com/wptavern.com/wp-content/uploads/2016/10/wordcamp-europe-2018.png?resize=1025%2C520&ssl=1" alt="wordcamp-europe-2018" class="aligncenter size-full wp-image-62630" /></a></p>\n<p><a href="https://2017.europe.wordcamp.org/" target="_blank">WordCamp Europe 2017</a> is eight months away from kicking off in Paris, France, and the event&#8217;s core leadership team is already looking ahead to <a href="https://2017.europe.wordcamp.org/2016/10/11/would-you-like-to-host-wordcamp-europe-2018/" target="_blank">prepare a host city for 2018</a>. Applications will open December 1. This year&#8217;s event brought 1,950 attendees to Vienna and more than 1,000 tickets were claimed for live streaming. With attendance growing every year, the venues required to host WordCamp Europe are getting bigger and require booking further in advance.</p>\n<p>WCEU organizers are inviting conversations with teams in European cities that have an active local community and have hosted at least one WordCamp in the past.</p>\n<p>&#8220;The idea is for them to get a better sense of what it means to host, how the WCEU team works, how much they would need to invest in terms of time, and what part of the organizing they’ll be expected to cover,&#8221; said Petya Raykovska, one of the members of the event&#8217;s leadership team. &#8220;It’s a long term commitment, too &#8211; usually we expect at least one or two members from the team that is chosen to host the year after to get involved with the current organizing team.&#8221;</p>\n<p>Raykovska said that all teams interested in applying will be able to have as many mentoring sessions as they need until the end of November. Despite the preparation requirements of completing a budget and identifying venues with a 3,000 person minimum capacity, Raykovska believes there are many European WordPress communities that could be potential candidates.</p>\n<p>&#8220;Poland has many cities that can host &#8211; not just Krakow &#8211; and so does Portugal,&#8221; she said. &#8220;Germany has had several nice WordCamps throughout 2015 and 2016. Serbia has had two really successful WordCamp Belgrades in the same years. Italy’s community is booming &#8211; they’ve had two WordCamps just in 2016 and they have many local meetups and loads of energy. And that’s just to name a few.&#8221;</p>\n<p>Raykovska said that nearly every European city that has hosted a WordCamp in the past is capable of hosting WordCamp Europe if the local team is committed. She encourages any group of two or three co-organizers who are curious about the possibility of hosting to get in touch.</p>\n<p>&#8220;You don’t need to have everything figured out,&#8221; she said. &#8220;The idea of these talks is to answer all of the questions and to bring more clarity.&#8221;</p>\n<h3>Continental WordCamps May Spread to Asia in the Next Few Years</h3>\n<p>Past events in Leiden (2013), Sofia (2014), Seville (2015), and Vienna (2016) grew out of well-established local communities that were able to provide enough volunteers on the ground to support the large numbers of attendees. WordCamp Europe is headed into its 5th year running and the success of the event has inspired WordPress enthusiasts in Southeast Asia to begin building the local communities required to host a continental WordCamp.</p>\n<p>&#8220;Strong local communities in Asia are now helping developing communities grow because they would like to see something like WordCamp Europe happen in Asia,&#8221; Raykovska said. &#8220;It was amazing talking to the Japanese community at WordCamp Tokyo about this and seeing how experienced contributors are jumping to get people from Thailand, Cambodia, and many other SEA countries involved.&#8221;</p>\n<p>Raykovska, who has witnessed a lot of WordPress translation-related activity in Asia, predicts that the continent&#8217;s local communities will gain more momentum in 2017. &#8220;Singapore has some great, enthusiastic, very energetic people,&#8221; she said. &#8220;India is blooming, the first WordCamp Kathmandu is coming, WordCamp Denpasar in Bali, and Indonesia as well. Thailand is going to be next.&#8221;</p>\n<p>WordCamp Europe, which has sold out every year, has provided an excellent testing ground for demonstrating that the global WordPress community enjoys connecting at continental WordCamps. The call for applications for 2018 host city opens on December 1st and will close January 31, 2017. The current organizing team will announce their selection for the next host city at the event in Paris next June.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 12 Oct 2016 23:15:13 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:83:"WPTavern: The Days of Creating Child Themes for Simple CSS Changes May Soon Be Over";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=62136";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:94:"https://wptavern.com/the-days-of-creating-child-themes-for-simple-css-changes-may-soon-be-over";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4469:"<p>The general advice given to users who want to make simple edits to a theme without losing them is to create a <a href="https://codex.wordpress.org/Child_Themes">child theme</a>. This involves creating a directory, CSS file, a functions.php file, and uploading them to the webserver via WordPress or FTP.</p>\n<p>Users must also make sure the child theme references the parent theme correctly in order to establish the proper inheritance. This can be a complicated process for a lot of people but thanks to a <a href="https://make.wordpress.org/core/2016/10/11/feature-proposal-better-theme-customizations-via-custom-css-with-live-previews/#comment-31359">new feature proposal</a> for WordPress 4.7, the days of going through this process may soon be over.</p>\n<h2>The Benefits of Adding a CSS Editor to the Customizer</h2>\n<p>The proposal suggests adding a CSS editor to the customizer which offers a number of benefits. Users can live preview changes before they&#8217;re applied and see how they&#8217;ll appear on mobile devices. Instead of editing files directly, changes are stored in a Custom Post Type for each theme and override theme styles.</p>\n<p>Related projects such as customize changesets (<a href="https://core.trac.wordpress.org/ticket/30937">#30937</a>) and revisions for customizer settings (<a href="https://core.trac.wordpress.org/ticket/31089">#31089</a>) will allow for future enhancements. Adding the editor will also lay the groundwork for possibly removing the Theme file editor from core at some point in the future.</p>\n<p>Here&#8217;s an example of what the CSS editor looks like in action. Note the line numbers that can help with troubleshooting purposes.</p>\n<p><img class="alignnone size-full wp-image-62554" src="https://i1.wp.com/wptavern.com/wp-content/uploads/2016/10/custom-css-proposal-demo-1.gif?resize=1025%2C516&ssl=1" alt="custom-css-proposal-demo-1.gif" />The editor also displays error messages for common syntax errors. For example, a missing bracket. Adding the editor is only the beginning with revisions, syntax highlighting, and in-preview selector helpers, planned for future iterations.</p>\n<h2>Special Meeting Planned to Discuss Storage Issues</h2>\n<p>In today&#8217;s <a href="http://make.wordpress.org/core/weekly-developer-chats/">WordPress developer chat</a>, attendees discussed the pros and cons of the editor and whether or not it&#8217;s ready to be merged into WordPress 4.7. A point of contention preventing a final decision is <a href="https://wordpress.slack.com/archives/core/p1476305179005750">how data is stored</a>.</p>\n<p>Members of the Core and Customizer Component teams will discuss this particular issue in detail in a <a href="https://wordpress.slack.com/archives/core-customize">special meeting</a> before making a final decision to merge it.</p>\n<h2>Testing and Feedback Needed</h2>\n<p>To test this feature, you&#8217;ll need to apply the <a href="https://core.trac.wordpress.org/ticket/35395">patch via Trac</a> or the <a href="https://patch-diff.githubusercontent.com/raw/xwp/wordpress-develop/pull/154.diff">Pull Request</a> from GitHub as it won&#8217;t land in WordPress Trunk unless the proposal is approved. The team encourages you to add custom CSS in the customizer using a variety of themes and to share your experience and feedback <a href="https://make.wordpress.org/core/2016/10/11/feature-proposal-better-theme-customizations-via-custom-css-with-live-previews/">in the comments</a>.</p>\n<h2>A Use Perfectly Suited for the Customizer</h2>\n<p>While I have yet to test this feature myself, it seems like the perfect use case for the customizer. While some developers have <a href="https://make.wordpress.org/core/2016/10/11/feature-proposal-better-theme-customizations-via-custom-css-with-live-previews/#comment-31346">expressed concerns</a> with the proposed implementation, others are <a href="https://make.wordpress.org/core/2016/10/11/feature-proposal-better-theme-customizations-via-custom-css-with-live-previews/#comment-31359">excited to see it</a> land in core.</p>\n<p>Removing the need to create a child theme for small or simple changes is a huge win for users. It&#8217;s also a major win for those who provide support. Instead of giving a customer complicated directions, it can be as simple as telling them to open the customizer, click on additional CSS, paste the snippet of code, and click the save button.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 12 Oct 2016 22:36:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:71:"Post Status: Ask Post Status: Innovation in WordPress — Draft podcast";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"https://poststatus.com/?p=29986";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:74:"https://poststatus.com/ask-post-status-innovation-wordpress-draft-podcast/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2535:"<p>Welcome to the Post Status <a href="https://poststatus.com/category/draft">Draft podcast</a>, which you can find <a href="https://itunes.apple.com/us/podcast/post-status-draft-wordpress/id976403008">on iTunes</a>, <a href="https://play.google.com/music/m/Ih5egfxskgcec4qadr3f4zfpzzm?t=Post_Status__Draft_WordPress_Podcast">Google Play</a>, <a href="http://www.stitcher.com/podcast/krogsgard/post-status-draft-wordpress-podcast">Stitcher</a>, and <a href="http://simplecast.fm/podcasts/1061/rss">via RSS</a> for your favorite podcatcher. Post Status Draft is hosted by Joe Hoyle &#8212; the CTO of Human Made &#8212; and Brian Krogsgard.</p>\n<p><span>In this episode, Joe and Brian answer listener questions. You can go to poststatus.com/ask to ask questions for a future episode. We spent the second half of the show talking about innovation in WordPress and what makes big innovation difficult.</span></p>\n<!--[if lt IE 9]><script>document.createElement(\'audio\');</script><![endif]-->\n<a href="https://audio.simplecast.com/49688.mp3">https://audio.simplecast.com/49688.mp3</a>\n<p><a href="http://audio.simplecast.com/49688.mp3">Direct Download</a></p>\n<h3>Topics and Links</h3>\n<ul>\n<li>What is Publish going to be about?\n<ul>\n<li><a href="https://poststatus.com/publish/">Post Status Publish</a></li>\n</ul>\n</li>\n<li>What is A Day of Rest?\n<ul>\n<li><a href="https://adayofrest.hm/boston-2017/">A Day of Rest Boston 2017</a></li>\n</ul>\n</li>\n<li>Managing sites between local, development, staging, and live\n<ul>\n<li><a href="http://mergebot.com/">Mergebot</a></li>\n<li><a href="https://versionpress.net/">VersionPress</a></li>\n</ul>\n</li>\n<li>Theme review process\n<ul>\n<li><a href="https://make.wordpress.org/themes/handbook/">Theme handbook</a></li>\n<li><a href="http://wptest.io/">WP Test</a></li>\n</ul>\n</li>\n<li>Donations for free plugins\n<ul>\n<li><a href="https://teleogistic.net/2012/05/31/the-patronage-model-for-free-software-freelancers/">The patronage model for free software freelancers</a></li>\n<li><a href="https://poststatus.com/kickstarter-open-source-project/">Using Kickstarter to fund open source</a></li>\n</ul>\n</li>\n<li>How can the WordPress project innovate?</li>\n</ul>\n<h3>Sponsor: Pagely</h3>\n<p><span><a href="https://pagely.com/">Pagely</a> helps the world’s biggest brands scale and secure WordPress. They are the original managed host, and have been at it for seven years now. Check out <a href="https://pagely.com/">Pagely</a> today, and thanks to Pagely for being a Post Status partner.</span></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 12 Oct 2016 17:24:53 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Katie Richards";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:50:"HeroPress: Custom is not Synonymous with Expensive";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:55:"http://heropress.com/?post_type=heropress-essays&p=1386";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"http://heropress.com/essays/custom-not-synonymous-expensive/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:12216:"<img width="960" height="480" src="http://heropress.com/wp-content/uploads/2016/10/101216-1024x512.jpg" class="attachment-large size-large wp-post-image" alt="Pull Quote: Working harder in the beginning always pays off in the long run." /><p>My name is Kayla Jenkins-Medina. I’m a mother of two, a wife, a banker, a blogger and a WordPress enthusiast. Do you know what that means? It means I’m a pretty busy woman.</p>\n<h3>MY LIFE AS IS</h3>\n<p>I live in one of the only 2 non-island countries in the Caribbean, Belize. It’s bordered by Mexico to the north, Guatemala to the west and south and, the Caribbean Sea to the east. We are the only English speaking (as a first language) country in Central America. And naturally, we are part of the Caribbean because of our shared history in which our ancestors were mostly English and African slaves (via Jamaica). We are a country of many cultures but the best thing about Belize is that most of our people live together in harmony despite having so many different backgrounds. If you’d like to know more about Belize, please feel free to give us a little “<a href="https://www.google.com/search?q=belize">internet search</a>”.</p>\n<p>A typical day in my life starts by waking up between 5:30 am and 6:30 am, depending on what day of the week it is. I get ready for my 8-5 job as a Banker, ensure that my family is fed and, also that they are ready for their day. I go to work at 7:55 am since I live so close to work. This is a recent change because I used to live an hour away via morning traffic. Living in the city allows me time to spend with my children before I head to work. I do my “bankly” duties from 8-12, go home for a quick lunch and feed my 8-month-old. If I’m lucky, I get a glimpse of my 11-year-old leaving to go back to school after his lunch. I get to spend some time with my husband and baby and then I head back to work for another 4 hours.</p>\n<p>After work, I spend some time with the family, put the baby to bed and then maybe I get some time to read, watch a show, write a post or thinker with a current project. Sometimes, I spend hours researching and figuring a way to get something to work the way I want it but I’m persistent. Then I finally go to bed, get up and do it all again.</p>\n<p>It’s stressful sometimes, but I enjoy learning new things in WordPress, and I really don’t see it as working at all. Although, it will someday, hopefully, lead to actual work.</p>\n<h3>THE JOURNEY TOWARD WORDPRESS</h3>\n<blockquote><p>I am not new to blogging.</p></blockquote>\n<p>I had a blog, years ago, on Blogger, but I got frustrated with the “lack” of functionality. I like to make things my own and, it was a bit annoying not being able to do that with my blog. I used to blog about life. Nothing in particular; just about things that I felt like sharing. I love to write. It’s always been one of my passions next to reading, of course. I moved my blog to WordPress.com, which is awesome because it has a great community and more features but again I didn’t have as much control over things I wanted. At the time, I couldn’t afford self-hosting on WordPress.org and I didn’t know where to start, even if I did.</p>\n<blockquote><p>I eventually gave up on that blog and didn’t blog for a few years.</p></blockquote>\n<p>It was actually my husband who got me into the idea of blogging again. Not because he suggested it or anything but, because he was featured as a guest blogger on a couple websites. He also gave me my first Kindle as a birthday gift, the first year we moved in together. He knew how much I loved to read but that it’s hard and expensive to get books in Belize. These two things are the root of my current blogging experience and what lead me to WordPress.</p>\n<p>Actually though, many years had passed and I forgot about WordPress (Gasp! How could I??). This was 2014 and I had recently jumped on the Evernote bandwagon and they introduced me to Postach.io. It was a bit like blogger, being one template file and all, but what I liked was that I could create my posts in my Evernote and then publish them straight from there. Since I was in love with Evernote, this seemed magical at the time. I started my book review blog but didn’t seriously think about doing it long term.</p>\n<p>After a few posts I realised that my site just looked generic. And, inherently I’m still the same person.</p>\n<blockquote><p>I love to make things my own.</p></blockquote>\n<p>At the time, I didn’t want to make an investment into hosting and a domain name so I moved to WordPress.com which is easy to then go full WordPress.org. I didn’t know how much fun I would have tweaking my own site yet, but in late 2014, I finally made the switch to .org and I don’t plan on looking back.</p>\n<h3>TAKING A LEAP</h3>\n<p>I didn’t want to make a huge investment, not knowing if I would continue with the blog in the long run, so I found one of the cheapest plans, $12.01USD with a free domain. At first, all the changes to my blog were done with the use of plugins. Book blogging is a huge community out there and lots of these (mostly) ladies refer you to other blogs where they learned to do this or that to tweak their site. I eventually found a few good sites where the blogger did web design and / or development with WordPress.</p>\n<p>I followed some of the tips I found for tweaking my site on my own and fell in love with the idea of being able to change my site on my own. I was still scared to make big changes, and my hosting provider was a bit complicated. The only way to make changes was via FTP which I found complicated at the time.</p>\n<p>My interest in programming didn’t start with WordPress though. At work, several years ago, I was asked to create a log for tracking of our credit application and approval process. But what they really needed was a database. After thinking about it, Access was the best choice since everyone had it installed on their computers already. If I’d known more I would have used VB.net but, that’s another story. The database was much more complicated than I first envisioned and due to my lack of knowledge, I ended up creating several front-ends to avoid coding.</p>\n<p>In the long run this was a terrible idea. It was hard to maintain. Every change had to do be done on 10 different front-ends. I didn’t want people to go looking all over for their options but I didn’t want to do the coding that filtered out only what they needed to see. As the needs of the database grew, I got books and learnt as much about Access as I could. I joined online forums to learn more about VBA and eventually I did a single front end for my database. Over the years I have created and managed several other in-house databases for my company. I can pretty much say that I’m an Access expert by now. I only achieved that by taking a leap into deep waters.</p>\n<blockquote><p>Through this experience, I learned that working harder in the beginning pays off in the long run. I learnt that planning and initial set up of tables are SUPER important to how your database will work in the future and how easier it will be to improve on.</p></blockquote>\n<p>In the years since that first database, I’ve come a long way in VBA development. I’m in charge of Quality Control and Business Process Management in my department and I try to get my new staff to use Access, since we already pay for it anyway, and because it, like WordPress, is super easy to learn.</p>\n<p>Since moving to self-hosted, I have taken online courses in HTML, CSS, R, Python and JavaScript. To me, if you know one programming language, the concepts are the same, you only need to learn the functions used in the other language. I’ve also switched my hosting provider to one with super great customer service, but they also recognise that not all customers have tons of money for hosting. They offer tons of options and tools. Now whenever I want to change something on my blog I don’t automatically look for a plugin instead, I scour the WordPress forum and Codex and I’ll more than likely find it there. I even built a few plugins for my sites. And I’m no longer afraid to use FTP/SFTP. In fact, it’s now my go-to option for editing my site files. Sure, I broke my site a couple times, but I learnt that in learning to walk, sometimes we fall.</p>\n<h3>GOING FORWARD FROM HERE</h3>\n<p>A while back, I decided to take an online course in building my own WordPress themes but that didn’t work out and I had to stop the classes. My current mission is to go at it alone, in my own time. Of course, learning on your own doesn’t mean 100% on your own. The WordPress Codex has a whole section on theme development. I’ve built a few websites from scratch, for fun, to practice the HTML, CSS and JavaScript that I learnt so I am pretty confident in that part. My new challenge is expanding my knowledge of PHP so that I can really capitalise on my WordPress development, since WordPress is database driven.</p>\n<p>A few months ago, I added a sub-domain, <a href="http://kayla.thereviewcourt.com">kayla.thereviewcourt.com</a>, to my current domain, <a href="http://thereviewcourt.com">thereviewcourt.com</a>, where I’m sharing tips on getting started with WordPress.org. I also plan to give tips on CSS, HTML, and other web related coding tips. And, who knows, I might expand from there. I also designed the theme for this site myself, using a starter theme called underscores.</p>\n<blockquote><p>I truly feel that WordPress is for everyone.</p></blockquote>\n<p>My ultimate goal, though, is to be known for my ability to help others achieve the web presence that they want and deserve. I want to show them that they don’t need to be intimidated by words like “coding” and “programming”. Or think that “custom” is synonymous with “expensive”. Although, depending on how custom you want a site to be, it can get expensive. I want Belizeans to know that if they are willing to learn a little and do some work, they too can get the website that they want.</p>\n<div class="rtsocial-container rtsocial-container-align-right rtsocial-horizontal"><div class="rtsocial-twitter-horizontal"><div class="rtsocial-twitter-horizontal-button"><a title="Tweet: Custom is not Synonymous with Expensive" class="rtsocial-twitter-button" href="https://twitter.com/share?text=Custom%20is%20not%20Synonymous%20with%20Expensive&via=heropress&url=http%3A%2F%2Fheropress.com%2Fessays%2Fcustom-not-synonymous-expensive%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-fb-horizontal fb-light"><div class="rtsocial-fb-horizontal-button"><a title="Like: Custom is not Synonymous with Expensive" class="rtsocial-fb-button rtsocial-fb-like-light" href="https://www.facebook.com/sharer.php?u=http%3A%2F%2Fheropress.com%2Fessays%2Fcustom-not-synonymous-expensive%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-linkedin-horizontal"><div class="rtsocial-linkedin-horizontal-button"><a class="rtsocial-linkedin-button" href="https://www.linkedin.com/shareArticle?mini=true&url=http%3A%2F%2Fheropress.com%2Fessays%2Fcustom-not-synonymous-expensive%2F&title=Custom+is+not+Synonymous+with+Expensive" rel="nofollow" target="_blank" title="Share: Custom is not Synonymous with Expensive"></a></div></div><div class="rtsocial-pinterest-horizontal"><div class="rtsocial-pinterest-horizontal-button"><a class="rtsocial-pinterest-button" href="https://pinterest.com/pin/create/button/?url=http://heropress.com/essays/custom-not-synonymous-expensive/&media=http://heropress.com/wp-content/uploads/2016/10/101216-150x150.jpg&description=Custom is not Synonymous with Expensive" rel="nofollow" target="_blank" title="Pin: Custom is not Synonymous with Expensive"></a></div></div><a rel="nofollow" class="perma-link" href="http://heropress.com/essays/custom-not-synonymous-expensive/" title="Custom is not Synonymous with Expensive"></a></div><p>The post <a rel="nofollow" href="http://heropress.com/essays/custom-not-synonymous-expensive/">Custom is not Synonymous with Expensive</a> appeared first on <a rel="nofollow" href="http://heropress.com">HeroPress</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 12 Oct 2016 12:00:45 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:20:"Kayla Jenkins-Medina";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:43:"WPTavern: Take the 2016 Git User’s Survey";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=62484";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wptavern.com/take-the-2016-git-users-survey";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3149:"<p><a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2016/10/git-logo.jpg?ssl=1"><img src="https://i0.wp.com/wptavern.com/wp-content/uploads/2016/10/git-logo.jpg?resize=910%2C380&ssl=1" alt="git-logo" class="aligncenter size-full wp-image-62493" /></a></p>\n<p>The 2016 edition of the <a href="https://survs.com/survey/0janvqmmyg" target="_blank">Git User&#8217;s Survey</a> is open and there is a little more than a week remaining before it closes on October 20. Jakub Narębski, one of the main contributors to the gitweb subsystem and author of <a href="https://www.amazon.com/Mastering-Git-Jakub-Narebski/dp/1783553758" target="_blank">Mastering Git</a>, <a href="https://groups.google.com/forum/#!topic/git-for-windows/l3wzYVpHHHE" target="_blank">posted</a> the survey on behalf of the Git development community. Narębski has created and analyzed the Git User&#8217;s Surveys dating back to 2007, but it has been four years since the last one was announced.</p>\n<p>The 2016 survey aims to identify who is using Git, how they are using it, and what could be improved. This edition introduces some new questions on topics such as gender and occupation, to gauge the diversity of the Git community. Narębski <a href="http://www.spinics.net/lists/git/msg284118.html" target="_blank">said</a> he was inspired by the Stack Overflow Developer Survey when creating the question on occupation. He wanted to determine if different occupations lead to different ways of using Git and if there are some that are not well served by Git.</p>\n<p>Narębski repeats questions from previous years to determine users&#8217; favorite tools, how they publish/propagate their changes, and what Git versions and operating systems they are using. He said he is particularly interested in hearing from users of Git on Windows regarding the features they use and their particular &#8220;pain points.&#8221;</p>\n<p>Results of the survey will be <a href="https://git.wiki.kernel.org/index.php/GitSurvey2016" target="_blank">published to the Git Wiki</a> and will include both the raw data and Narębski&#8217;s analysis. In 2012 the survey <a href="https://survs.com/results/QPESOB10/ME8UTHXM4M" target="_blank">received more than 6,000 responses</a>. At that time, 54% of respondents used Git for open source development (also public domain, and published and unlicensed). As open source software has rapidly become more mainstream and commonly used at large enterprises, responses to the 2016 Git user&#8217;s survey may reveal some dramatic changes when comparing results from 2012.</p>\n<p>Git is one of the most important tools for supporting the world&#8217;s digital infrastructure and it is the lifeblood of many open source projects. If you want to help the Git development community gain a better understanding of your needs, take a few minutes to <a href="https://survs.com/survey/0janvqmmyg" target="_blank">fill out this 50-question survey</a>. All of the question are optional and those who have cookies enabled can submit it as partially complete and return to submit the remaining answers at a later time.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 12 Oct 2016 03:01:10 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:50:"WPTavern: You Are Responsible for Your Own Awesome";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=62466";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:61:"https://wptavern.com/you-are-responsible-for-your-own-awesome";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2384:"<p><a href="http://heropress.com/">HeroPress</a> is a wonderful site where each week, someone from the community publishes an essay that describes how WordPress changed their life, made them a better person, or gave them a new perspective. Most of the stories have a happy ending and if you&#8217;re a regular reader of the site, it&#8217;s easy to assume that the WordPress ecosystem is one big happy place. But it&#8217;s not and Topher DeRosia explains why in a post titled, <a href="http://heropress.com/the-other-side-of-wordpress/">The Other Side of WordPress</a>.</p>\n<p>In the post, DeRosia reminds us that for a lot of people, the stories don&#8217;t always end on a happy note, &#8220;Sure, people talk about some hard things sometimes, but it always ends with everything being better and awesome and happy,&#8221; DeRosia said.</p>\n<p>&#8220;I’d like to clarify that it’s not always like that. Sometimes it ends in tears, frustration, and broken relationships. Ever since the beginning of this project I’ve been concerned that someone will read this site and think our community is perfect and the software will save them.&#8221;</p>\n<p>WordPress is a bunch of code that doesn&#8217;t do anything on its own. It&#8217;s the people who have success stories, not the software, &#8220;The stories on HeroPress are about people,&#8221; he said. &#8220;They’re about hard work, late nights, reaching out, asking for help, and giving help. They’re about pain, struggle, growth, patience, and love. All of those things summed up are life.</p>\n<p>&#8220;If you want to have a WordPress success story, and unleash the Hero that is in you, in every one of us, then you must do so much more than download a piece of software.</p>\n<p>&#8220;WordPress is an excellent tool, and comes with a generally positive community, but never forget that you’re responsible for your own awesome.&#8221;</p>\n<p>I highly encourage you to read <a href="http://heropress.com/the-other-side-of-wordpress/">DeRosia&#8217;s post</a> at least once, especially the section where he gives advice on how to deal with the ugly side of the community. I also encourage you to <a href="http://heropress.com/the-other-side-of-wordpress/#comment-5577">read this comment</a> from Saurabh Shukla that is filled with wisdom and provides additional food for thought.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 11 Oct 2016 19:20:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:81:"WPTavern: Polyglots Team to Host 2nd Global WordPress Translation Day November 12";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=61939";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:92:"https://wptavern.com/polyglots-team-to-host-2nd-global-wordpress-translation-day-november-12";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:5862:"<p><a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2016/10/polyglots-wapuu.png?ssl=1"><img src="https://i1.wp.com/wptavern.com/wp-content/uploads/2016/10/polyglots-wapuu.png?resize=1025%2C608&ssl=1" alt="polyglots-wapuu" class="aligncenter size-full wp-image-62453" /></a></p>\n<p>The <a href="https://make.wordpress.org/polyglots/" target="_blank">WordPress Polyglots</a> team is planning another <a href="https://wptranslationday.org/" target="_blank">Global WordPress Translation Day</a> after the success of the original event in April. The <a href="https://wptavern.com/global-wordpress-translation-day-draws-448-participants-from-105-countries" target="_blank">first event drew 448 participants from more than 105 countries</a> to online streaming sessions and live meetups, where contributors worked on more than 160 languages. Global WordPress Translation Day 2 is set for November 12th and will begin at 0:00 UTC with a live opening session from Tokyo, Japan.</p>\n<p>&#8220;The first translation day was a blast,&#8221; said Polyglots team member Petya Raykovska. &#8220;We got together as a team for the first time and organized something that had a huge impact on our community and brought more contributors over. It shed a lot of light on who we are, what we do, and why it’s important. It turned us into one team as opposed to 100 different teams under the Polyglots name.&#8221;</p>\n<p>In April the Polyglots focused on growing the translation teams and educating new translators with live training sessions. This event will follow the same format with 24 hours of live streaming sessions about localization and internationalization (L10n and i18n) for those who are joining from home. The team is also aiming to organize in-person translation contributor days in more than 50 different locations.</p>\n<p>One of the goals for the event is to bridge the gap between developers and translators. In addition to beginner and advanced sessions to help new contributors learn to translate, the event will also feature technical sessions for developers. After plugin and theme translations became part of <a href="http://translate.wordpress.org" target="_blank">translate.wordpress.org</a>, there&#8217;s a back log of demand for localizing an estimated 40,000 projects.</p>\n<p>&#8220;The Polyglots team has a lot to share with developers and there will be sessions on preparing their code for translation, building and managing translation communities, tools, tips and tricks for maintaining your code, as well as detailed information on how translations work in WordPress and plugins and themes,&#8221; Raykovska said.</p>\n<h3> Global WordPress Translation Day Unites Polyglots to Work on Projects Across Borders</h3>\n<p>The Polyglots team has more than <a href="https://wptavern.com/polyglots-team-experiences-record-annual-growth-expands-wordpress-reach-to-millions-with-new-translations" target="_blank">doubled over the past year and a half</a> and is still learning to work together as a unified team. With 1,247 translation editors and thousands more contributors, it takes a concerted effort to work together effectively.</p>\n<p>&#8220;Our goal with WP Translation Day 2 is to literally meet each other,&#8221; Raykovska said. &#8220;Among the live sessions will be many that will just stream people’s local events in so we can say &#8216;hi&#8217; in person, along with round tables featuring people from different locale teams to discuss important issues.&#8221;</p>\n<p>In addition to translating WordPress core, themes, and plugins, the Polyglots will be working on the new <a href="https://make.wordpress.org/core/2016/10/10/javascript-internationalization/" target="_blank">initiative to internationalize WordPress core JavaScript</a>, an ambitious task which includes changes to core, GlotPress, wp-i18n-tools, and language packs.</p>\n<p>&#8220;Internationalization is not a feature, it fixes a usability issue for many users whose primary language is not English,&#8221; Dominik Schilling when making the case for JavaScript Internationalization on the WordPress development blog this week. &#8220;And that’s about <a href="https://wordpress.org/about/stats/#locales" target="_blank">47%</a> of our users.&#8221; That figure is <a href="https://wptavern.com/wordpress-stats-page-redesigned-adds-new-data-on-installs-by-langauge" target="_blank">up 1% since July</a>. It wouldn&#8217;t be unreasonable for the percentage of non-English sites to overtake English sites within the next year.</p>\n<p>The Polyglots are one of the most influential contributor teams for expanding WordPress usage to new areas of the world. Raykovska said she hopes the second Global WordPress Translation Day will help everyone feel more included.</p>\n<p>&#8220;This is an event that serves as a de facto online community summit,&#8221; she said. &#8220;It would be impossible for all the Polyglots to meet in person, but this way you can meet people who are close to you as well as people who are on the other side of the world. We’re a huge remote team. And one of the most important things for successful remote teams is face time. This is our way of getting that.&#8221;</p>\n<p>In keeping with the Polyglots&#8217; growing momentum, the upcoming Global WordPress Translation Day will be the second event of its kind hosted within 2016. It will connect the thousands of new contributors who have joined within the past year. Organizers have confirmed more than 20 live meetups that will happen during the event and new ones are being added every day. Participants can join locally or online in the #polyglots Slack channel or in their local Slack channels. Sign up on <a href="https://wptranslationday.org/" target="_blank">wptranslationday.org</a> to reserve your spot and stay updated on the event.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 11 Oct 2016 18:47:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:81:"WPTavern: WP REST API Team Proposes to Merge Content Endpoints Into WordPress 4.7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=61937";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:92:"https://wptavern.com/wp-rest-api-team-proposes-to-merge-content-endpoints-into-wordpress-4-7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:6394:"<p><a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2015/04/wp-rest-api.jpg?ssl=1"><img src="https://i1.wp.com/wptavern.com/wp-content/uploads/2015/04/wp-rest-api.jpg?resize=1025%2C469&ssl=1" alt="wp-rest-api" class="aligncenter size-full wp-image-43000" /></a></p>\n<p>Over the weekend, the WP REST API team published a <a href="https://make.wordpress.org/core/2016/10/08/rest-api-merge-proposal-part-2-content-api/" target="_blank">proposal</a> to merge the API endpoints for content types into WordPress 4.7. This is the second in a two-part proposal, which <a href="https://make.wordpress.org/core/2015/10/28/rest-api-welcome-the-infrastructure-to-core/" target="_blank">merged the infrastructure for the API into core</a> in October 2015. Since that time the team has worked on polishing the content endpoints and making changes to core that are necessary to support the API.</p>\n<p>The endpoints proposed for merge include posts, comments, terms, users, meta, and settings management. This includes public access as well as authenticated access via the OAuth 1 protocol. The team selected OAuth 1 over the newer OAuth 2 protocol, because OAuth 2 requires HTTPS with a modern version of TLS. As WordPress core doesn&#8217;t require HTTPS, the team did not want to make it a requirement for using the API.</p>\n<p>&#8220;This merge proposal represents a complete and functional Content API, providing the necessary endpoints for mobile apps and frontends, and lays the groundwork for future releases focused on providing a Management API interface for full site administration,&#8221; said Ryan McCue in the proposal posted on behalf of the WP REST API team.</p>\n<p>Preliminary feedback in the comments so far has been supportive of merging the API, with a few WordPress contributors expressing concerns regarding the authentication scheme. WordPress sites don&#8217;t have a centralized OAuth server, which means those using the API to create applications would need to have those apps registered with every single WordPress site it connects to. To get around this, the WP REST API team created a brokered authentication solution with the main broker system running at <a href="https://apps.wp-api.org/" target="_blank">apps.wp-api.org</a>. The team is proposing brokered authentication for WordPress 4.8 to allow for more testing. Eventually, the broker would be hosted on WordPress.org.</p>\n<p>&#8220;The concept of a third-party broker feels very antithetical to WordPress Core,&#8221; George Stephanis commented on the proposal. &#8220;To have to ping the third-party server for every login to check for invalidations of their applications, let alone the initial confirmation of an application … for me, it doesn’t pass the gut check.&#8221; Stephanis said he would rather see something similar to the <a href="https://github.com/georgestephanis/application-passwords/" target="_blank">Application Password System</a> feature plugin that is being developed for core, as it provides a simple flow for applications to request passwords and get the generated passwords passed back. It&#8217;s also compatible with the legacy XML-RPC API.</p>\n<p>WordPress lead developer Dion Hulse commented that he does not like the idea of having a third-party broker but thinks that Application Passwords would be worse than the complications that OAuth options introduce.</p>\n<p>&#8220;At the end of the day moving towards OAuth is going to provide a far better developer and user experience for API clients,&#8221; Hulse said. &#8220;In an ideal world, a central provider wouldn’t be needed, but we don’t have a decentralized platform for WordPress yet, so there’s no other mechanism for WordPresses out there to be told the sort of information they need to know.&#8221;</p>\n<p>WordPress project lead Matt Mullenweg commented on the proposal, citing authentication challenges as the primary reason he is not in favor of merging the endpoints into 4.7.</p>\n<p>&#8220;Given the hurdles of authentication, I don’t think that bringing this into core provides benefits for WP beyond what the community gets from the plugin,&#8221; Mullenweg said. &#8220;I don’t believe in its current state the benefit outweighs the cost, and we should err on the side of simplicity.&#8221;</p>\n<p>Mullenweg was also not convinced that brokered authentication is the best route to solve the problems with OAuth.</p>\n<p>&#8220;I am not interested in hosting the centralized brokered authentication server on WordPress.org in the 4.8 timeframe, and hesitant about the implications it has for WP more broadly,&#8221; he said. &#8220;I do appreciate the thought that has been put into solving this tricky problem.&#8221;</p>\n<p>The proposal is open for comments and the WP REST API team welcomes feedback in the #core-restapi Slack channel as well. They are particularly interested in getting security feedback on the <a href="https://wordpress.org/plugins/rest-api/" target="_blank">REST API plugin</a> and the <a href="https://wordpress.org/plugins/rest-api-oauth1/" target="_blank">OAuth plugin</a>, which are both available on WordPress.org. If the endpoints are merged, the team plans to implement feedback throughout the next few weeks before 4.7 ships in early December.</p>\n<p>&#8220;During the remaining parts of this release cycle and through into the 4.8 cycle, additional work will go into other parts of the API,&#8221; McCue said. &#8220;This includes further work and refinement on the broker authentication system, including work on WordPress.org infrastructure. Additionally, we plan to continue working on the Management API endpoints, including theme and appearance endpoints to support the Customizer team.&#8221;</p>\n<p>The team outlined an iterative approach that would not include full wp-admin coverage at merge into 4.7, a controversial sticking point which contributors were divided on when they <a href="https://wptavern.com/wp-rest-api-delayed-contributors-facing-gridlock" target="_blank">discussed the possibility of merging the endpoints earlier this year</a>. They are proposing that the Management API endpoints and theme/appearance endpoints be maintained as separate feature projects on GitHub until they are ready for merge. Development related to the content endpoints would move from GitHub to Trac if the merge is approved.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 10 Oct 2016 19:53:12 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:15;a:6:{s:4:"data";s:11:"\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:38:"HeroPress: The Other Side Of WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://heropress.com/?p=1331";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:49:"http://heropress.com/the-other-side-of-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:10340:"<p>Something that&#8217;s always bothered me about HeroPress is that it&#8217;s just so happy and upbeat all the time. Sure, people talk about some hard things sometimes, but it always ends with everything being better and awesome and happy.</p>\n<p>I&#8217;d like to clarify that it&#8217;s not always like that. Sometimes it ends in tears, frustration, and broken relationships. Ever since the beginning of this project I&#8217;ve been concerned that someone will read this site and think our community is perfect and the software will save them. I&#8217;d talk about that.</p>\n<h3>It&#8217;s Not About WordPress</h3>\n<p>WordPress is a piece of software, a tool. It doesn&#8217;t DO anything, any more than a rock does something. Downloading it won&#8217;t change your life. It won&#8217;t introduce you to people. It won&#8217;t increase your chances of a job. It won&#8217;t make your life better in any way.</p>\n<p>&#8220;But wait!&#8221; you say. &#8220;What are all these HeroPress stories about then?&#8221;</p>\n<p>I&#8217;m glad you asked. These stories are about <em>people</em>. They&#8217;re about hard work, late nights, reaching out, asking for help, and giving help. They&#8217;re about pain, struggle, growth, patience, and love. All of those things summed up are life.</p>\n<p>If you want to have a WordPress success story, and unleash the Hero that is in you, in every one of us, then you must do so much more than download a piece of software.</p>\n<h3>The Real Difference</h3>\n<p>When people say WordPress changed their life, they usually mean one of two things.</p>\n<p><strong>1. They found WordPress to be a particularly useful tool which allowed them to better leverage their own hard work as well as opportunities that present themselves.</strong></p>\n<p>There are many people who work alone, building web sites for people in their community, and making a good living at it. WordPress doesn&#8217;t click with everyone, it&#8217;s not a universally loved piece of software. For others it <em>does</em> click, and they slip right into it and start doing great things with it. These people usually say &#8220;WordPress is the thing that made me successful&#8221;. In actuality, their own hard work made them successful. WordPress was merely a good tool for them personally, and made the entire process easier.</p>\n<p><strong>2. They found the WordPress community to be filled with positive, helpful people, and formed long term relationships with those people.</strong></p>\n<p>My own family are excellent examples of this. None of them are developers, they don&#8217;t make a living with WordPress, but they LOVE going to WordCamps to see people that have become as close as family. They love interacting with them on Slack and Twitter almost every day.</p>\n<p>I know people whose lives have literally been saved because a friend in the WordPress community said &#8220;Hey, I&#8217;m here, you&#8217;re not alone, you have options, please stay&#8221;.</p>\n<p>I know lots of people who make their living with WordPress who would <em>not</em> be doing that if not for an uplifting community of people who say &#8220;You can do this. We did it. Keep trying.&#8221;</p>\n<p><strong>3. I&#8217;m cheating and adding a third. The truth is, most people in WordPress have experienced both of the above.</strong></p>\n<p>So, summing the above, WordPress itself will do nothing for you. Hard work, persistence, patience, and quality relationships are what will change your life.</p>\n<h3>Where It All Goes Sideways</h3>\n<p>I&#8217;ve often said the WordPress community is like a family, in almost every way. You&#8217;ll have people closer to you than your own siblings or parents. But you&#8217;ll also have people you care about get into knock down, drag out, public screaming fights with each other. People who ask you &#8220;How can you stand that person, don&#8217;t you see what they did to me?&#8221;</p>\n<p>People who are good friends with each other will say snarky things to each other in public.</p>\n<p>Just like in any family, there are people who are jerks. People who hurt in their own soul, and so lash out at other people in public.</p>\n<p>There will be times when someone you don&#8217;t know is mean to you. There will be times when someone you respect is mean to you.</p>\n<p>Sometimes people are simply ignorant, and don&#8217;t know they&#8217;re being hurtful.</p>\n<p>Does any of this look like anything you&#8217;ve ever seen in the WordPress community?</p>\n<p></p>\n<p>There will be times when you <em>don&#8217;t</em> get the job or the referral because of your skin color, or your gender, or your political opinion, or your accent. There will be times when the WordPress community utterly lets you down.</p>\n<p>There will be times when half the community says you&#8217;re doing great, and the other half says you&#8217;re a complete loser.</p>\n<p>There&#8217;ve been two excellent blog posts in recent weeks on this topic:</p>\n<ul>\n<li><a href="https://jeffmatson.net/an-open-letter-to-the-wordpress-community/">An Open Letter to the WordPress Community by Jeff Matson</a></li>\n<li><a href="https://halfelf.org/2016/dont-tell-you/">What They Don’t Tell You by Mika Epstein</a></li>\n</ul>\n<h3>What to do?</h3>\n<p>I really believe that the vast majority of the people in the WordPress community are generally positive, supportive people. I think negative people are more vocal. As people we don&#8217;t think to say positive uplifting things as often as negative people. So what can YOU do?</p>\n<h4>1. Don&#8217;t Feed The Trolls</h4>\n<p>People throw garbage out into the community all the time. For the most part I think we should just let it go. Pay it no attention and it withers and dies. There is of course a time and place to stand up to abusers, but I&#8217;m just talking about the yappers. They&#8217;re not worth your time.</p>\n<h4>2. Try not to be a Troll, even by accident</h4>\n<p>Everyone has bad days. Everyone snaps at their friends once in a while. Try to avoid it. I know it&#8217;s hard, and no-one will ever be perfect at this, but when you find yourself about to unload on someone online, take a breath and just don&#8217;t. Walk away and come back later.</p>\n<h4>3. Forgive early, forgive often</h4>\n<p>You know those people who are generally nice, but snap at you? You know them, right?  You know it&#8217;s out of character for them. Don&#8217;t snap back. If it&#8217;s out of character, don&#8217;t take it personally. What they probably need is space, compassion, and friendship. &#8220;A soft answer turns away anger&#8221; as they say.</p>\n<h4>4. Talk to people privately</h4>\n<p>Do you see someone doing something that looks hypocritical? Do you care about this person? No? Ignore it. Hypocrites are everywhere. If you want to spend your time being bothered by that, fine, but you&#8217;ll be a sadder, more bitter person, I promise.</p>\n<p>What if you do care? Then talk to them about it privately. Say something like &#8220;Hey, I&#8217;ve noticed tweets from you saying you really hate hosting company X, but you&#8217;re also an affiliate, and you sell blog posts to them. What&#8217;s up with that?&#8221;</p>\n<p>Maybe you&#8217;ll something new.  Maybe you&#8217;ll find out they&#8217;re two-faced, and not someone you want to hang out with. For sure you won&#8217;t be dropping angst in front of the rest of the world, and you might make a more solid friendship.</p>\n<p>The same holds true for just about everything. Calling someone out publicly, especially in a sub-tweet, should be a last resort. Not just because public negativity brings everyone down, but because it&#8217;ll make YOU happier, and help you have better relationships with people.</p>\n<h3>In Summary</h3>\n<p>The WordPress community is NOT all rainbows and butterflies. It has its own share of ugly, and if you hang around here very long, you&#8217;ll see it, and some may even get thrown your way.</p>\n<p>WordPress will NOT change your life. YOU will, and the people with whom you form relationships will guide and and impact you.</p>\n<p>WordPress is an excellent tool, and comes with a generally positive community, but never forget that you&#8217;re responsible for your own awesome.</p>\n<p>I really believe that anyone can be a hero to someone, that&#8217;s why this site is named the way it it. At least be a hero to yourself. You can do this.</p>\n<div class="rtsocial-container rtsocial-container-align-right rtsocial-horizontal"><div class="rtsocial-twitter-horizontal"><div class="rtsocial-twitter-horizontal-button"><a title="Tweet: The Other Side Of WordPress" class="rtsocial-twitter-button" href="https://twitter.com/share?text=The%20Other%20Side%20Of%20WordPress&via=heropress&url=http%3A%2F%2Fheropress.com%2Fthe-other-side-of-wordpress%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-fb-horizontal fb-light"><div class="rtsocial-fb-horizontal-button"><a title="Like: The Other Side Of WordPress" class="rtsocial-fb-button rtsocial-fb-like-light" href="https://www.facebook.com/sharer.php?u=http%3A%2F%2Fheropress.com%2Fthe-other-side-of-wordpress%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-linkedin-horizontal"><div class="rtsocial-linkedin-horizontal-button"><a class="rtsocial-linkedin-button" href="https://www.linkedin.com/shareArticle?mini=true&url=http%3A%2F%2Fheropress.com%2Fthe-other-side-of-wordpress%2F&title=The+Other+Side+Of+WordPress" rel="nofollow" target="_blank" title="Share: The Other Side Of WordPress"></a></div></div><div class="rtsocial-pinterest-horizontal"><div class="rtsocial-pinterest-horizontal-button"><a class="rtsocial-pinterest-button" href="https://pinterest.com/pin/create/button/?url=http://heropress.com/the-other-side-of-wordpress/&media=http://heropress.com/wp-content/plugins/rtsocial/images/default-pinterest.png&description=The Other Side Of WordPress" rel="nofollow" target="_blank" title="Pin: The Other Side Of WordPress"></a></div></div><a rel="nofollow" class="perma-link" href="http://heropress.com/the-other-side-of-wordpress/" title="The Other Side Of WordPress"></a></div><p>The post <a rel="nofollow" href="http://heropress.com/the-other-side-of-wordpress/">The Other Side Of WordPress</a> appeared first on <a rel="nofollow" href="http://heropress.com">HeroPress</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 10 Oct 2016 18:50:55 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:16;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:85:"WPTavern: WordPress.com Adds Customization for AMP Pages, Pushes Update to AMP Plugin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=62347";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:95:"https://wptavern.com/wordpress-com-adds-customization-for-amp-pages-pushes-update-to-amp-plugin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4882:"<p>When Google first launched <a href="https://www.ampproject.org/" target="_blank">AMP</a> (Accelerated Mobile Pages), its open source initiative to speed up the mobile web, the project focused on getting publishers on board. AMP pages were featured in the &#8220;Top Stories&#8221; carousel and soon <a href="https://wptavern.com/google-is-amping-up-mobile-search-results-as-adoption-grows-beyond-publishing-industry" target="_blank">adoption of AMP grew beyond news publishers</a> to other industries such as e-commerce, recipe sites, and local listings. Ebay has <a href="https://www.ebayinc.com/stories/news/experience-the-lightning-bolt/" target="_blank">AMP&#8217;d up 15 million product category pages</a>, Pinterest is getting ready to <a href="https://engineering.pinterest.com/blog/building-faster-mobile-web-experience-amp" target="_blank">roll out AMP support for pins</a>, and Reddit is also <a href="https://redditblog.com/2016/09/20/a-faster-reddit-with-accelerated-mobile-pages/" target="_blank">serving AMP pages</a>.</p>\n<p>At the end of Septemeber Google <a href="https://search.googleblog.com/2016/09/search-results-are-officially-ampd.html" target="_blank">announced</a> that it has added AMP indicators to mobile search results. Users can now easily tell which results will load faster than others by looking for the AMP lightning bolt icon. The pressure is on for website owners to make their sites AMP-ready. Google said that AMP results are not yet prioritized over others, but page speed is factored into results.</p>\n<p><a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2016/10/amp-in-mobile-search-results.png?ssl=1"><img src="https://i1.wp.com/wptavern.com/wp-content/uploads/2016/10/amp-in-mobile-search-results.png?resize=1025%2C948&ssl=1" alt="amp-in-mobile-search-results" class="aligncenter size-full wp-image-62407" /></a></p>\n<p>The search engine&#8217;s benchmarks demonstrate that AMP results provide a much faster experience for mobile users than pages that have not been optimized according to AMP specifications:</p>\n<blockquote><p>Today, the median time it takes for an AMP page to load from Google Search is less than one second. Beyond just saving you time with fast loading pages, AMP will also save you data &#8212; AMP pages on Search use 10 times less data than the equivalent non-AMP page.</p></blockquote>\n<p>In response with Google AMPing up mobile search results, <a href="https://en.blog.wordpress.com/2016/10/06/a-faster-mobile-web-wordpress-com-updates-for-accelerated-mobile-pages/" target="_blank">WordPress.com has pushed out a major update to its support for AMP pages</a>. According to Automattic representative Mark Armstrong, AMP pages have been &#8220;automatically turned on for every WordPress.com site and a sizable number of VIP publishers also turned it on manually.&#8221; This means that tens of millions of sites are now, according to Automattic&#8217;s tests, &#8220;up to 89% faster than normal faster&#8221; when reached via mobile search.</p>\n<p>The update also gives WordPress.com users the ability to customize the design for AMP pages using live preview in the Customizer. Users can select between a light and dark color screen and use a color-picker to select header text and link colors.</p>\n<p><a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2016/10/google-amp-customizer2.png?ssl=1"><img src="https://i1.wp.com/wptavern.com/wp-content/uploads/2016/10/google-amp-customizer2.png?resize=1025%2C783&ssl=1" alt="google-amp-customizer2" class="aligncenter size-full wp-image-62349" /></a></p>\n<p>Automattic&#8217;s <a href="https://wordpress.org/plugins/amp/" target="_blank">AMP plugin</a> for self-hosted WordPress users has been updated to include support for tweaking the AMP template in the Customizer by navigating to <strong>Appearance > AMP</strong>. The plugin, which has more than 90,000 active installs, had not been updated for the past two months until today. During that time it accumulated many <a href="https://wordpress.org/support/plugin/amp/reviews/" target="_blank">negative reviews</a> due to lack of customizability, bugs, and no support for pages. Several users have reported that Google sent them a notification saying the AMP pages automatically created by the plugin are not compliant.</p>\n<p>The AMP plugin&#8217;s <a href="https://wordpress.org/plugins/amp/changelog/" target="_blank">changelog</a> details the changes in 0.4, which include support for inline styles, a fix for broken YouTube URLs, no more fatal errors when tags are not supported by post type, and handful of other improvements. The release also introduces a new filter <code>amp_pre_get_permalink</code> for creating a custom AMP permalink. Pages are still not supported, but the plugin&#8217;s FAQ tab indicates that Automattic is working on it.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 07 Oct 2016 20:42:13 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:17;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:79:"WPTavern: The Deadline to Apply for the Kim Parsell Scholarship Is October 16th";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=62256";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:90:"https://wptavern.com/the-deadline-to-apply-for-the-kim-parsell-scholarship-is-october-16th";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1798:"<p>When <a href="https://wptavern.com/kim-parsell-affectionately-known-as-wpmom-passes-away">Kim Parsell passed away</a> in early 2015, the WordPress Foundation <a href="https://wptavern.com/the-wordpress-foundation-creates-a-traveling-scholarship-in-memory-of-kim-parsell">created a travel scholarship</a> in her name not only to remember her, but to give a woman an opportunity to attend the largest WordCamp in the US who may not have the financial means to do so.</p>\n<p>WordCamp US is <a href="https://wptavern.com/the-wordpress-foundation-creates-a-traveling-scholarship-in-memory-of-kim-parsell">accepting applications</a> for this year&#8217;s scholarship. The deadline to apply is October 16th at 12am Pacific Time. Only one scholarship will be awarded and is funded by the WordPress Foundation. It covers the cost of admission, airfare, and lodging.</p>\n<p>It does not cover things like taxis, meals outside the official event, or transportation to and from the airport. A winner will be announced on November 1st.</p>\n<p>To qualify for the scholarship, applicants must meet the following requirements.</p>\n<ul>\n<li>Must be a woman, this includes trans women.</li>\n<li>An active contributor to the WordPress project either through one of the contributor teams or as a local meetup or WordCamp organizer.</li>\n<li>Someone with financial need.</li>\n<li>Someone who has never attended WordCamp US.</li>\n</ul>\n<p>Anyssa Ferreira, who won<a href="https://wptavern.com/anyssa-ferreira-awarded-the-kim-parsell-memorial-scholarship"> the scholarship</a> last year was unable to attend the event due to her travel VISA being denied. <a href="https://2016.us.wordcamp.org/">WordCamp US</a> is scheduled to take place on December 2-4 in Philadelphia, PA.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 07 Oct 2016 19:09:39 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:18;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:48:"BuddyPress: BuddyPress 2.7.0 Release Candidate 1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"https://buddypress.org/?p=259560";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:68:"https://buddypress.org/2016/10/buddypress-2-7-0-release-candidate-1/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:928:"<p>BuddyPress 2.7.0 Release Candidate 1 is now available for testing. Please <a href="https://downloads.wordpress.org/plugin/buddypress.2.7.0-rc1.zip">download the 2.7.0-rc1 zip</a> or get a copy via our Subversion repository.</p>\n<p>This is our last chance to find any bugs that slipped through the beta process. So please test with your themes and plugins. We plan to release BuddyPress 2.7.0 next Wednesday, October 12.</p>\n<p>A detailed changelog will be part of our official release notes, but you can get a quick overview by reading the post about the <a href="https://buddypress.org/2016/09/buddypress-2-7-0-beta-1/">2.7.0 Beta 1</a> release.</p>\n<p>Let us know of any issues you find in <a href="https://buddypress.org/support">the support forums</a> and/or on <a href="https://buddypress.trac.wordpress.org">our development tracker</a>.</p>\n<p>Thanks in advance for giving the release candidate a test drive!</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 07 Oct 2016 01:15:21 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"@mercime";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:19;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:76:"WPTavern: WordExpress Project Experiments with Bringing GraphQL to WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=62186";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:87:"https://wptavern.com/wordexpress-project-experiments-with-bringing-graphql-to-wordpress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:11373:"<p><a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2016/10/graphql.png?ssl=1"><img src="https://i2.wp.com/wptavern.com/wp-content/uploads/2016/10/graphql.png?resize=1025%2C525&ssl=1" alt="GraphQL logo" class="aligncenter size-full wp-image-62337" /></a></p>\n<p>In 2012, when Facebook started re-architecting its HTML5-driven mobile applications to be native iOS or Android apps, the company invented <a href="http://graphql.org/" target="_blank">GraphQL</a>. This new open source query language is being heralded as <a href="https://dev.to/reactiveconf/why-i-believe-graphql-will-come-to-replace-rest" target="_blank">a direct replacement for REST</a>. <a href="http://graphql.org/" target="_blank">GraphQL</a> provides a more efficient way of supporting the volume of interaction that takes place across Facebook&#8217;s apps every day, but it is database agnostic and built to be used beyond Facebook.</p>\n<p>Although GraphQL is still relatively new, big companies like Intuit, Coursera, Pinterest, and Shopify are using it in production. Last month GitHub <a href="http://githubengineering.com/the-github-graphql-api/" target="_blank">announced GraphQL support for its GitHub API</a> to answer some of the drawbacks of its REST architecture.</p>\n<p>GraphQL offers a new way of structuring communication from the client to the server that makes fetching data more efficient. In his article <a href="https://medium.com/chute-engineering/graphql-in-the-age-of-rest-apis-b10f2bf09bba#.93exvi6z2" target="_blank">GraphQL in the age of REST APIs</a>, Petr Bela summarizes the difference between the two types of architecture:</p>\n<blockquote><p>GraphQL’s power comes from a simple idea — instead of defining the structure of responses on the server, the flexibility is given to the client. Each request specifies what fields and relationships it wants to get back, and GraphQL will construct a response tailored for this particular request. The benefit: only one round-trip is needed to fetch all the complex data that might otherwise span multiple REST endpoints, and at the same time only return the data that are actually needed and nothing more.</p></blockquote>\n<p>Last month Facebook announced that GraphQL is exiting the &#8220;technical preview&#8221; stage and is now production ready. It has been <a href="http://graphql.org/code/" target="_blank">implemented in many different programming languages</a> and has already been adopted by companies that wanted a more efficient way of accessing data.</p>\n<h3>WordExpress Brings GraphQL to WordPress</h3>\n<p>Ramsay Lanier, a JavaScript front-end developer who works at <a href="https://nclud.com/" target="_blank">nclud</a> in Washington, D.C., has created a GraphQL-powered WordPress implementation called <a href="http://wordexpress.io/" target="_blank">WordExpress</a>. Lanier is not a fan of PHP and doesn&#8217;t like working with the loop or templates, all the things that have historically comprised the bulk of WordPress front-end development. He created WordExpress as a Node.js application with the goal of replacing PHP with JavaScript for the presentational side of WordPress. It uses Express on the backend and React components on the frontend. GraphQL sits between the two to retrieve data from the WordPress database.</p>\n<p>&#8220;When I originally started out with the idea for WordExpress, I wanted to use the REST API, but I found the existing endpoints were not what I wanted,&#8221; Lanier said. &#8220;I would end up having to write a bunch of custom endpoints and chaining calls together. So I thought I’d give GraphQL a try.&#8221;</p>\n<p>He found that GraphQL is more efficient than REST, because it reduces round trips to the server, allowing developers to focus on what data the client really needs. Lanier highlighted the benefits as they pertain to WordPress sites:</p>\n<blockquote><p>With GraphQL, the client determines the exact data it needs via a GraphQL query. The GraphQL query has a custom resolving function that determines how that data is retrieved. In that function, you can even hit multiple databases. For example, with WordPress you have a MySQL database, but you might also have a Mongo database for an application that stores other data that doesn’t need to be relational. In the GraphQL resolving function, you can make calls to retrieve data from both databases and send it back to the client in one server round trip.</p></blockquote>\n<p>WordExpress, in its current form, is a good starting place for building JavaScript-powered applications that use WordPress for administration. Lanier said this development setup allows him to create components of web pages and applications much more easily than with PHP templates.</p>\n<p>&#8220;With React, each component contains not just the markup to display stuff, but the styling for that component, the data the it requires to work, and any interaction logic as well &#8211; all in one or two files,&#8221; he said.</p>\n<h3>WordExpress&#8217; Current Challenges: Plugin Compatibility and Server-Side Rendering</h3>\n<p>Despite all the exciting benefits of more efficient queries and the possibility of a JavaScript-powered frontend, the WordExpress project has a number of serious challenges that would make it troublesome to use in production beyond a simple blog installation. It is not compatible with the vast majority of WordPress plugins, as most are written in PHP.</p>\n<p>&#8220;Essentially, I’ve replaced the entire front end, which means any plugins that affect the front end won’t do anything,&#8221; Lanier said. &#8220;However, you can certainly leverage existing plugins that affect the admin side of things (like Advanced Custom Fields or the AWS S3 plugin). Anything that manipulates how WordPress data is stored in MySQL is still usable &#8211; you just need to modify your GraphQL schema and queries to work with them.&#8221;</p>\n<p>The other major challenge is getting server-side rendering to work, which is required for handling things like SEO and meta tags. Apollostack, which WordExpress uses to fetch the data and deliver it to the React components, has only recently added <a href="https://github.com/apollostack/react-apollo/pull/83" target="_blank">early support for auto server-side rendering</a>.</p>\n<p>&#8220;I’ve switched from using Facebook’s Relay to ApolloStack,&#8221; Lanier said. &#8220;Both are pretty new technologies and I’m not sure if either has really figured out how to handle Server Side rendering very well. I haven’t looked into it in a few months, and things have been moving pretty quickly with ApolloStack, so they might have figured it out by now.&#8221;</p>\n<p>For now, WordExpress is just a proof-of-concept and Lanier said he doesn&#8217;t have plans to try to support existing plugins. Given that WordExpress cannot currently leverage themes and plugins, some of the best parts of the WordPress ecosystem, Lanier said developers who use this stack are probably more interested in preserving the power of the admin side of WordPress.</p>\n<p>&#8220;I love the WordPress admin,&#8221; he said. &#8220;It&#8217;s very powerful and easy to use to manage content. WordExpress would be a starting point for any JavaScript developer that wants to build WordPress applications using just JavaScript.&#8221;</p>\n<p>Lanier&#8217;s goal with WordExpress is to turn it into an npm package that can be reused in a variety of different React projects. He has already published two WordExpress npm packages that work together: <a href="https://www.npmjs.com/package/wordexpress-schema" target="_blank">wordexpress-schema</a> (handles the GraphQL schema and connection settings) and <a href="https://www.npmjs.com/package/wordexpress-components" target="_blank">wordexpress-components</a> (currently houses the first two components, WordExpressPage and WordExpressMenu). Since the project is built on Node.js, developers can make use of any npm package they want, a consolation for limited plugin compatibility.</p>\n<h3>GraphQL and the WP REST API</h3>\n<p>Many of those who are predicting that GraphQL will become a direct replacement for REST are also of the opinion that the two can co-exist. In fact, Facebook has recently written a guide for <a href="http://graphql.org/blog/rest-api-graphql-wrapper/" target="_blank">wrapping a REST API in GraphQL</a>.</p>\n<p>&#8220;It’s likely that if GraphQL proves to be effective, it will co-exist with REST APIs,&#8221; said Petr Bela. &#8220;Some APIs will use REST, some will use GraphQL. Some might support both.&#8221; He <a href="https://medium.com/chute-engineering/graphql-in-the-age-of-rest-apis-b10f2bf09bba#.3gl6k8kse" target="_blank">predicts</a> that it would take the industry years, perhaps even a decade, to completely switch from REST to GraphQL.</p>\n<p>Lanier&#8217;s WordExpress, which recently passed 1,000 stars on GitHub, is currently the only open source project that is publicly exploring a GraphQL-powered implementation of WordPress. A cursory <a href="https://github.com/search?utf8=%E2%9C%93&q=wordpress+graphql" target="_blank">search on GitHub</a> reveals that many others are experimenting with similar setups. Fortunately, GraphQL doesn&#8217;t require any changes to WordPress core to enable sites to use the API for querying the database.</p>\n<p>Lanier said he appreciates the work of those who are trying to get the WP REST API merged into core and doesn&#8217;t see GraphQL implementations as a threat to that.</p>\n<p>&#8220;I think the work they are doing with the REST API is good stuff,&#8221; he said. &#8220;They definitely needed to take that step. REST has been around for a long time &#8211; GraphQL is still pretty new, so it makes sense to go the REST route. Also, a lot more people know how to use it. The nice thing about GraphQL is that you can use it to wrap a REST API, so they can both co-exist.&#8221;</p>\n<p>The possibility of WordExpress going beyond a simple proof-of-concept depends on feedback from the community. Lanier said developers are demonstrating interest in WordExpress by forking it and asking questions.</p>\n<p>&#8220;People are using it and playing with and (hopefully) making it their own,&#8221; he said. &#8220;I think the interest is there. To make it really feasible, though, you need a whole team of developers making it a top notch option.&#8221;</p>\n<p>Lanier recently took a new job where he&#8217;s using React 100% and hasn&#8217;t had the opportunity to use WordPress for a little while but said he&#8217;s open to exploring collaboration to make WordExpress production ready.</p>\n<p>&#8220;If people were really interested and wanted to get together to grow it into a feasible solution, I would 100% be involved in that,&#8221; he said.</p>\n<p>Developers who want want to test it out and start developing with WordExpress will need a basic understanding of how React works. Lanier has written <a href="http://wordexpress.io/articles" target="_blank">detailed documentation</a> of how the GraphQL implementation is set up and how to extend GraphQL queries and database models. The <a href="http://wordexpress.io/" target="_blank">WordExpress.io</a> site is a live demo of the code, which you can find on <a href="https://github.com/ramsaylanier/WordExpress" target="_blank">GitHub</a>.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 06 Oct 2016 22:46:33 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:20;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:57:"WPTavern: XWP Is the First Financial Sponsor of HeroPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=62190";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:68:"https://wptavern.com/xwp-is-the-first-financial-sponsor-of-heropress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2821:"<p><a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2015/01/heropress.jpg?ssl=1"><img class="aligncenter size-full wp-image-37733" src="https://i2.wp.com/wptavern.com/wp-content/uploads/2015/01/heropress.jpg?resize=956%2C423&ssl=1" alt="heropress" /></a><a href="http://heropress.com/">HeroPress</a>, founded by Topher DeRosia <a href="http://heropress.com/heropress-rising/">in 2015</a>, has obtained its first financial sponsor in <a href="https://xwp.co/">XWP</a>, a web development firm that specializes in WordPress. In recent weeks, DeRosia has added a <a href="http://heropress.com/sponsors/">sponsors page</a> to the site that highlights businesses that are supporting the project.</p>\n<p>Pantheon is hosting the site for free and Ninja Forms, Theme Foundry, Postmatic, and WordImpress have donated licenses for their products. I asked DeRosia how the funds are helping the project, &#8220;This covers about a quarter of the time I spend on HeroPress,&#8221; DeRosia said.</p>\n<p>&#8220;There&#8217;s 100% coverage for Stacey Bartron, who makes the banners every week, plus a little for some skunk works experimentation. There will be more on that in November.&#8221;</p>\n<p>DeRosia said he is grateful to be able to pay Bartron for her efforts, &#8220;It&#8217;s one thing to work for free on my own, but I have a really hard time asking someone else to volunteer their time for my project,&#8221; DeRosia said. &#8220;Yet she did it willingly, so I&#8217;m super happy to be able to pay her now.&#8221;</p>\n<p>I reached out to Tine Haugen, managing director at XWP, and asked why the company is financially supporting the project. Haugen provided the Tavern with the following statement.</p>\n<blockquote><p>\nStorytelling is a powerful way to connect and inspire people. HeroPress is a platform that gives people in the WordPress community and beyond an opportunity to share their personal stories, make meaningful connections with others and inspire them in ways that can have lasting, positive impact on their lives. That is a compelling purpose and mission strongly aligned with our own.</p>\n<p>It should also be said that HeroPress creator, Topher DeRosia, is a former XWP team member. Being part of his journey with HeroPress has been a wonderful way to stay connected and continue to cultivate our relationship with him.</p>\n<p>We hope our contribution will inspire others to also give as a way to encourage its growth so that it can touch and impact even more lives.</p></blockquote>\n<p>If you&#8217;re interested in sponsoring or financially supporting the HeroPress project, you can contact DeRosia by emailing topher @ heropress.com. The additional funds will allow DeRosia to conduct more experiments with the site and travel to more WordCamps.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 06 Oct 2016 20:24:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:21;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:118:"WPTavern: WPWeekly Episode 250 – Interview with Matt Cromwell, Head of Support and Community Outreach at WordImpress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wptavern.com?p=62271&preview=true&preview_id=62271";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:124:"https://wptavern.com/wpweekly-episode-250-interview-with-matt-cromwell-head-of-support-and-community-outreach-at-wordimpress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3691:"<p>In this episode of WordPress Weekly, <a href="http://marcuscouch.com/">Marcus Couch</a> and I are joined by <a href="https://www.mattcromwell.com/">Matt Cromwell</a>, Head of Support and Community Outreach at <a href="https://wordimpress.com/">WordImpress</a>. We learn how WordImpress was founded, why the company entered the product space with the <a href="https://givewp.com/">GiveWP</a> donations plugin, and the inspiration behind the company&#8217;s mission statement to democratize generosity.</p>\n<p>Cromwell also shared two of his favorite plugins with the audience. The first is <a href="https://wordpress.org/plugins/edd-metrics/">EDD Metrics</a> by <a href="https://profiles.wordpress.org/scottopolis/">Scott Bolinger,</a> that adds metrics for businesses such as average revenue per customer, renewal rate, refund rate, and more. The second is <a href="https://wordpress.org/plugins/postman-smtp/">Postman SMTP Mailer/Email Log</a> by <a href="https://profiles.wordpress.org/jasonhendriks/">Jason Hendriks,</a> that assists in the delivery of email generated by WordPress. You&#8217;ll have to listen to the show to find out why Cromwell enjoys these two particular plugins.</p>\n<h2>Stories Discussed:</h2>\n<p><a href="https://wptavern.com/loopconf-postponed-due-to-hurricane-matthew-wordcamp-orlando-is-questionable">LoopConf Postponed Due to Hurricane Matthew, WordCamp Orlando is Questionable</a><br />\n<a href="https://wptavern.com/the-div-selected-by-code-org-to-help-expand-computer-science-education-in-oklahoma">The Div Selected by Code.org to Help Expand Computer Science Education in Oklahoma</a><br />\n<a href="https://wptavern.com/pippin-williamson-shakes-up-page-builder-plugins-with-critical-review">Pippin Williamson Shakes Up Page Builder Plugins with Critical Review</a><br />\n<a href="https://wptavern.com/wordcamp-orlando-cancelled-due-to-hurricane">WordCamp Orlando Cancelled Due to Hurricane</a></p>\n<h2>Plugins Picked By Marcus:</h2>\n<p><a href="https://wordpress.org/plugins/minimum-order-amount-for-woocommerce/">Minimum Order Amount for Woocommerce</a> allows you to set a minimum amount for WooCommerce orders. You can also configure the notification message that is sent when the minimum amount is not reached.</p>\n<p><a href="https://wordpress.org/plugins/waitlist-woocommerce/">WooCommerce Waitlist</a> lets you track demand for out-of-stock items, ensuring customers feel informed, and therefore more likely to buy. When a product is back in stock, an email is automatically sent to notify interested customers.</p>\n<p><a href="https://wordpress.org/plugins/idw-display-woo-dynamic-quantity-table/">Woo Dynamic Quantity Table</a> works with the official <a href="https://woocommerce.com/products/dynamic-pricing/">WooCommerce Dynamic Pricing</a> plugin, but takes it a step further. Once dynamic pricing data has been entered and the plugin is activated, it automatically displays a table with the price and quantity next to the product.</p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, October 12th 9:30 P.M. Eastern</p>\n<p><strong>Subscribe To WPWeekly Via Itunes: </strong><a href="https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738" target="_blank">Click here to subscribe</a></p>\n<p><strong>Subscribe To WPWeekly Via RSS: </strong><a href="https://wptavern.com/feed/podcast" target="_blank">Click here to subscribe</a></p>\n<p><strong>Subscribe To WPWeekly Via Stitcher Radio: </strong><a href="http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr" target="_blank">Click here to subscribe</a></p>\n<p><strong>Listen To Episode #250:</strong><br />\n</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 06 Oct 2016 19:26:19 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:22;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:53:"WPTavern: WordCamp Orlando Cancelled Due to Hurricane";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=62188";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wptavern.com/wordcamp-orlando-cancelled-due-to-hurricane";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1750:"<p>Lisa Melegari, lead organizer of WordCamp Orlando, <a href="https://2016.orlando.wordcamp.org/2016/10/05/wordcamp-orlando-canceled-due-to-hurricane-matthew/">confirmed earlier today</a> that the event is cancelled due to hurricane Matthew. Rosen UCF campus, the venue where the event was to be held announced that it is under a mandatory order to remain closed until Sunday, eliminating the possibility of having sessions this weekend.</p>\n<p>Those who purchased tickets are encouraged to fill out the <a href="https://docs.google.com/forms/d/e/1FAIpQLSdj5NNMIqpqRahDAVs-FXX1Ppx9QvE-FWHeezJ7ZHgV2W3i_g/viewform">following form</a> to request a refund. Refund requests will be collected until Friday, October 14th and will be sent to WordCamp Central for processing. Those who purchased tickets more than 60 days ago will be contacted by WordCamp Central to arrange a refund. Ticket buyers can also carry over the ticket price.</p>\n<p>&#8220;We are considering other options so the months of planning WCORL 2016 are not in vain,&#8221; Melegari said. &#8220;If you believe you will be interested in a future WordCamp Orlando event, you have the option of carrying over your ticket price to the next event.&#8221;</p>\n<p>Although ticket buyers who <a href="https://2016.orlando.wordcamp.org/2016/10/05/wordcamp-orlando-canceled-due-to-hurricane-matthew/#comments">commented on the announcement</a> were disappointed, they expressed their understanding and praised the event’s volunteers for their efforts. WordCamp organizers have a lot to plan for but hurricanes in October typically don&#8217;t make the list. WordCamp Orlando 2016 is the first WordCamp in history to be cancelled because of a hurricane.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 06 Oct 2016 00:36:02 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:23;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:55:"WPTavern: WordPress.com Adds SEO Tools to Business Plan";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=62138";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:66:"https://wptavern.com/wordpress-com-adds-seo-tools-to-business-plan";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3198:"<p>WordPress.com is a service that doesn&#8217;t allow users to install plugins to add functionality. Because of this, users are at the mercy of WordPress.com and the tools it offers for managing SEO. These tools have expanded with the ability to create custom meta descriptions, custom title formats, and live previews <a href="https://en.blog.wordpress.com/2016/10/03/attract-more-visitors-to-your-business-site-with-our-advanced-seo-tools/">now available</a> to <a href="https://wordpress.com/business">WordPress.com Business Plan</a> customers.</p>\n<p>Custom Meta Descriptions allow you to create an excerpt of text that is used by search engines and is displayed in search results.</p>\n<p><img class=" size-full wp-image-62197 aligncenter" src="https://i0.wp.com/wptavern.com/wp-content/uploads/2016/10/CustomMetaDescriptionsWPCom.png?resize=546%2C466&ssl=1" alt="custommetadescriptionswpcom" /></p>\n<p>You can also customize how page titles appear by rearranging attributes. For example, instead of Site Name, Tagline, Post Title, you can change it to Post Title, Tagline, Site Name.</p>\n<p><img class="aligncenter size-full wp-image-62200" src="https://i0.wp.com/wptavern.com/wp-content/uploads/2016/10/CustomeTitleFormatWPCom.jpg?resize=1025%2C1180&ssl=1" alt="CustomeTitleFormatWPCom.png" /></p>\n<p>After setting a custom meta description and page title, you can use the live preview tool to see how the content will look on WordPress.com Reader, Google, Facebook, and Twitter.</p>\n<p>Considering these tools are new, many users may not know how to properly use them. Rebecca Gill, founder of <a href="https://www.web-savvy-marketing.com/">Web-Savvy-Marketing</a> and co-founder of <a href="https://www.web-savvy-marketing.com/2016/08/seo-bootcamp-coming/">SEO Bootcamp</a>, shared the following advice with the Tavern. These tips also apply to those using the self-hosted version of WordPress.</p>\n<blockquote><p>One thing I constantly state is that meta titles and descriptions are your first opportunity to sell to visitors. It is what the visitor sees before they enter your website or blog. As such, they are very valuable. When used properly, they increase click-through rates from search engines, which drives traffic, and influences SEO.</p>\n<p>Each page or post should have a unique meta title and description. These should be populated by a human, for a human, and should include your focused keyword phrase.</p>\n<p>They should not be filled with a bunch of keywords or phrases. The goal is to use them to articulate what the content is about and encourage the user to read and click-through to the site or blog.</p></blockquote>\n<p>WordPress.com users can also <a href="https://en.blog.wordpress.com/2013/03/22/seo-on-wordpress-com/">read this article</a> published in 2013 that covers most of what you&#8217;re able to do to optimize content on the service. For more tips on SEO, I encourage you to listen to <a href="https://wptavern.com/wpweekly-episode-244-myths-lies-and-the-truth-of-seo-with-rebecca-gill">episode 244 of WordPress Weekly</a> where Rebecca and I discuss a wide range of topics related to SEO and WordPress.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 05 Oct 2016 23:31:52 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:24;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:40:"HeroPress: The Bumpy Journey of Becoming";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:55:"http://heropress.com/?post_type=heropress-essays&p=1369";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"http://heropress.com/essays/bumpy-journey-becoming/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:16838:"<img width="960" height="480" src="http://heropress.com/wp-content/uploads/2016/10/100516-2-1024x512.jpg" class="attachment-large size-large wp-post-image" alt="Pull Quote: We cannot know the end of any journey until we find ourselves there." /><p><em>‘There is a crack in everything. That’s how the light gets in.’  &#8212; Leonard Cohen</em></p>\n<img class="wp-image-1376 size-full" src="http://heropress.com/wp-content/uploads/2016/10/meaged5.jpg" alt="Photo of Tamsin, age 5, sitting on the lawn with a cute hat on" width="345" height="357" />Me aged 5 yrs\n<p><strong>My journey began when I lost my hero.</strong></p>\n<p>(In truth, I didn’t lose her, she died.)</p>\n<p>We had come together during dark times. Her husband, my grandfather, passed away painfully when I was five. Around the same time, my parents were separating. We became acquainted in a black hole. Together, we decided to escape that place and conquer the world.</p>\n<p>Her life had been very different to mine. She was born in a castle, she’d luncheoned with the queen and she’d dined with Louis Armstrong. On paper, my grandmother had led a “perfectly marvelous” life. (I’d just begun mine and my world was painfully ordinary.)</p>\n<p>I came to love her when I realized that her life had also involved struggle. That I related to. We’d watch the Roger and Hammerstein classics; we’d marvel at the gorgeous dresses, beautiful songs and epic dance sequences, but we also understood the tragedy of it all. It hit our hearts in the same way.</p>\n<blockquote><p>In those quiet, domestic moments I saw a little girl re-emerge, just for a moment and only for me. It was there that I discovered that we weren’t so different after all.</p></blockquote>\n<p>As an army brat, her childhood had been turbulent and tough. Her father was a stern Scot who regimentally walked his children up and down hills everyday. For this reason, as an adult, Grandma refused to walk anywhere. Quite soon, after the outbreak of war, her father went missing. He was presumed dead for eight years. In the meantime, Grandma and her siblings were evacuated to Wales, whilst their mother took on factory work in London.</p>\n<p>Her younger brother Stanley spent the war, without his siblings, living with an elusive, elderly man who cut the bread for breakfast against his rotten, wooden leg. The two sisters lived with a couple of mean, closeted, lesbians who immediately disliked my grandmother. (Apparently she wasn’t as pretty as her older sister, Ellen.)</p>\n<p>Needless to say, after the children were all returned to London, none of them ever revisited Wales. And, when the war was finally over, a little man arrived at their doorstep, tiny and broken: their father, a long time prisoner of war, found his way home in the end.</p>\n<p>Grandma had many other bumps along the way. She wouldn’t want them written here so I will resist. Despite having a lot to say, she was equally keen to hear our stories. We discussed politics, parties, Facebook, school, university, virtual reality, our friends, marriage, alien life forms and, of course, the dreams that occupied our minds. We frequently debated and bantered into the night.</p>\n<p>Naturally, as our friendship progressed, I began to dread her demise.</p>\n<h3>It didn’t seem plausible, or fair, that one day my Gandalf would be no more.</h3>\n<a href="http://heropress.com/wp-content/uploads/2016/10/grandmaandgrandad.png"><img class="wp-image-1377" src="http://heropress.com/wp-content/uploads/2016/10/grandmaandgrandad-204x300.png" alt="Tamsin\'s Grandparents on their wedding day" width="300" height="441" /></a>Grandma and Grandpa\n<p>This huggable tornado was still discussing politics with me, waving her big stick around (with a glass of “vino” in one hand) at eighty-seven. She still talked into the night with us, and laughed as she had always laughed. She never went “do-lalley”. She did eventually need a <a href="https://en.wikipedia.org/wiki/Walker_(mobility)">zimmerframe</a> (a.k.a “faithful Fred”) but that was about it. Then one day she was gone. It wasn’t in a puff of smoke but it was close to that.</p>\n<p>When she died I didn’t fall apart. I held it together, somehow. My sister and I wrote and read the content for her memorial. I pressed the button that sent her body into the flames. I did it all with relative composure.</p>\n<p>It helped that, for the first year at least, I sensed that she’d stuck around just for me. I saw her in the black crow following me on my cycle ride to work and in the moth flying around the pulpit, at her funeral. I became attracted to the things that she had loved. I became strong, assertive and bold, as she had been. But, there were signs that I was crumbling.</p>\n<p>I fell twice: once down the stairs (to be found unconscious by my now husband) and, secondly, off a horse on my honeymoon. I still have the scar where my third eye should be to remind me of that second, landing face down in a sand dune, incident. And, a few other strange things occurred, things I won’t bother you with now.</p>\n<p>To cut a long story short, I didn’t know it then but I was ‘becoming’ and, this becoming was painful. It felt like shedding skin or letting a shell fall off. I didn’t want my shell to fall off. It had housed me all this time. But it came off, whether I was prepared for it or not, and all of a sudden I found that I was ‘homeless’.</p>\n<blockquote><p>It was as if the universe turned off all the lights so that I might find my own light.</p></blockquote>\n<p>At some point in the darkness, I began to ask myself: “what do you want to do with the rest of your life?” (I haven’t stopped asking that question. The only difference now is I’m kinder to myself.) I discovered that my intention was to bring magic and light into the world. At that time, I also wanted to bring my grandmother back. A book felt like the right portal from which I might be able to achieve this. Why? Well, stories for me have always managed to make the impossible seem possible. (Just to be safe, I decided that I would write a magical story.)</p>\n<h3>Where does WordPress come in?</h3>\n<p>I had known about WordPress for a number of years because my husband and I had started a business building E-commerce stores with WordPress. He was, and still remains, the technical wiz. Over time, I learned a few things too but, in all honesty, web stuff has never impassioned me all that much. (To this day I still try and get off the computer as much as I can.) However, during this rather difficult year I started a blog. It was a way of exploring the concepts that mattered to me. I could have used a notebook I suppose but it felt better to put my ideas into posts. It felt cleaner, tidier and more productive in this format.</p>\n<p>The blog became a vision board of sorts, where my thoughts (or my ‘wonderings’, as I would later call them) could be expressed, shaped and remade. It also allowed me to keep a record of the research that I was gathering for my book. Every time I watched an inspirational video, or read an interesting book, I would write about it.</p>\n<p>It is worthwhile to experiment in WordPress. Your voice will express itself in its own unique way, and differently at different times. Don’t be afraid of that. You might prefer audio, video, imagery or the written word &#8211; I recommend trying all of these mediums. I am still experimenting.</p>\n<blockquote><p>No one is you so no one will ‘create’ as you will.</p></blockquote>\n<p>Allow your creativity to run wild and try not to think too much about how others might interpret you. I found it incredibly digressive when I started trying to sell myself, and my ideas, especially when I wasn’t ready. I found myself playing the imitation game and constantly looking out for guidance. As a result, the blog got boring.</p>\n<p>What you take away from it, the experience, that’s what matters most. That’s what will last. Not the likes or the shares. It has helped me to look back and remember that, once upon a time, it was just me &#8211; talking to myself, writing alone, trying to find order and clarity during a difficult time. I still value this aspect of the experience more than anything else.</p>\n<h3>Forget the bigger picture</h3>\n<p>In my recent talk for WordCamp Brighton I discussed <a href="http://wordpress.tv/2016/08/09/tamsin-taylor-a-heros-journey/">The Hero’s Journey</a> &#8211; a bumpy journey of becoming that we all must take, over and over again, as we progress throughout our lives. What I didn’t say in that talk was that I don’t think we will ever know the bigger picture until our time has come to leave this Wonderland.</p>\n<blockquote><p>We cannot know the end of any journey until we find ourselves there.</p></blockquote>\n<p>It sounds obvious I know, but we are conditioned to perfect and finish ourselves – to have it all planned out. And what we discover, quite quickly, is that life isn’t like that.</p>\n<p>I don’t know why my grandmother died on that particular Christmas day, several years ago. I don’t know why we never got to say goodbye in person. (I like to think that, perhaps, goodbyes were never going to be possible for friends such as us.) What I do know is that it catapulted me into a new life and a new me. WordPress was helpful in shaping this new identity.</p>\n<p>Needless to say, the journey isn’t over. Writing this first book has been a very mysterious, difficult and sometimes bewildering experience for me. Early on I decided that I wouldn’t plan it, or try to define what it was. I would just trust that something wanted to be written. It sounds strange I know. (By now you may have gathered I am a bit bonkers. They say the best people always are. <img src="https://s.w.org/images/core/emoji/2/72x72/1f642.png" alt="🙂" class="wp-smiley" /> ) The book first came out like vomit and then it began to form itself inside my head and then one day it was born on the page.</p>\n<p>Only three of us witnessed the birth of <em>The Little book of learning to fly</em>: WordPress, Grandma and I. I was sitting amid lots of paper, staring at the screen and I just knew it was done.</p>\n<p>It wasn’t walking or talking yet but it was out of me and on the page. Moreover, I knew Grandma and I had written the ending together. That was a big feat, considering she was dead and all that. And yes, I did shed a tear, because it was one of the most WONDERful surprises of my life. We somehow managed one final, great adventure together.</p>\n<p>Whatever journey you are on &#8211; grasp it, explore it and cherish it. Don’t race to, or seek to anticipate, the ending. Enjoy the journey instead. Be willing to be brave because life will surprise you. And finally, love.</p>\n<h3>Love with all your heart, even when that heart is broken.</h3>\n<p>Below is the closing extract of the first draft of <em>The Little book of learning to fly</em>. Thank you WordPress.</p>\n<p><em>…Frederic didn’t know that he lived in a mansion of a thousand rooms because he had never bothered to look. He was quite content in the one room that he occupied… At least, he believed himself to be. Sometimes the wallpaper was a bit off, but he got it right in the end. He felt no need to venture further. What would be the point? Would it even be safe?</em></p>\n<p><em>From this room, at the bottom of his mansion, he could see the street and people going about their daily business. He witnessed a few instances of fighting, some moments of self-sacrifice and quite a bit of lovemaking. It was all very entertaining, but a bit disconcerting sometimes.</em></p>\n<p><em>One day he decided to walk around all the rooms of his mansion. He’d gotten a letter in the post about it &#8211; from an estate agent of all people! So, he thought, why not? He tentatively put the dishwasher on, closed the door to his little room and ascended the stairs.</em></p>\n<p><em>The first floor was rather difficult to navigate: some of the doorknobs were rusted from neglect, and so difficult to turn, and many of the rooms were filled with cobwebs and shadows. He found himself clearing these spaces as he went and he gave a great sigh of relief when he was finally able to leave that first floor behind.</em></p>\n<p><em>He quickly discovered that every other floor was different. Some of the rooms were empty; some of them were full. He met many strange creatures along the way. Each of them taught him a new lesson and showed him a different view.</em></p>\n<p><em>Frederic sensed, as he went higher, that he was beginning to forget about the original room. He was pretty sure he wasn’t going to be able to find his way back there, ever again. Nevertheless, he continued to climb.</em></p>\n<p><em>Midway up, from the windows, he was able to see the tops of mountains, peopled by marvelous beings that he had never known to exist before. Higher up he saw a vast sea in the distance and he heard the water folk singing their strange, familiar songs.</em></p>\n<p><em>At the top, on the roof, when he finally got there, he was able to see it all. The view was entirely different. It was far more pleasing and far more abundant than he could have ever dreamed up. And, best of all, from here he could see the stars.</em></p>\n<p><em>It was on this rooftop that he chose to remain for the rest of his life. He liked it best. If someone wanted to see him, they would just have to come up and join him there. He decided he would never descend that stairwell ever again, not for anyone.</em></p>\n<p><em>This rooftop living went on for a very long time. He made many friends and a few foes. It was all great fun. But, one day, he saw a ladder that led to the stars. It hadn’t been there before, or had it? He couldn’t be sure. (He was very forgetful nowadays.) He guessed someone had placed it there, just for him, and so he chose to climb that ladder and, at a certain point, he vanished.</em></p>\n<p><em>But, what of his friends? They had been searching the mansion for hours now, with the obliging estate agent (who secretly wanted to sell the property.) Frederic’s loved ones were genuinely concerned for his safety&#8230; And, they missed him.</em></p>\n<p><em>Well, put simply, he wished they could see the view from here. They would understand why he had to climb that ladder, if they could only see it… Still, it didn’t matter… They would understand when the time came for them to see it too.</em></p>\n<img class="wp-image-1378 size-full" src="http://heropress.com/wp-content/uploads/2016/10/1910555_583548434324_1306559_n.jpg" alt="Family with a heart shaped chinese lantern." width="604" height="453" />Grandma Jess, Uncle Just and my sister Mads, releasing a lantern on New years eve 2013\n<p>(In loving memory of my grandmother Lady Jessica Urquhart.)</p>\n<div class="rtsocial-container rtsocial-container-align-right rtsocial-horizontal"><div class="rtsocial-twitter-horizontal"><div class="rtsocial-twitter-horizontal-button"><a title="Tweet: The Bumpy Journey of Becoming" class="rtsocial-twitter-button" href="https://twitter.com/share?text=The%20Bumpy%20Journey%20of%20Becoming&via=heropress&url=http%3A%2F%2Fheropress.com%2Fessays%2Fbumpy-journey-becoming%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-fb-horizontal fb-light"><div class="rtsocial-fb-horizontal-button"><a title="Like: The Bumpy Journey of Becoming" class="rtsocial-fb-button rtsocial-fb-like-light" href="https://www.facebook.com/sharer.php?u=http%3A%2F%2Fheropress.com%2Fessays%2Fbumpy-journey-becoming%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-linkedin-horizontal"><div class="rtsocial-linkedin-horizontal-button"><a class="rtsocial-linkedin-button" href="https://www.linkedin.com/shareArticle?mini=true&url=http%3A%2F%2Fheropress.com%2Fessays%2Fbumpy-journey-becoming%2F&title=The+Bumpy+Journey+of+Becoming" rel="nofollow" target="_blank" title="Share: The Bumpy Journey of Becoming"></a></div></div><div class="rtsocial-pinterest-horizontal"><div class="rtsocial-pinterest-horizontal-button"><a class="rtsocial-pinterest-button" href="https://pinterest.com/pin/create/button/?url=http://heropress.com/essays/bumpy-journey-becoming/&media=http://heropress.com/wp-content/uploads/2016/10/100516-2-150x150.jpg&description=The Bumpy Journey of Becoming" rel="nofollow" target="_blank" title="Pin: The Bumpy Journey of Becoming"></a></div></div><a rel="nofollow" class="perma-link" href="http://heropress.com/essays/bumpy-journey-becoming/" title="The Bumpy Journey of Becoming"></a></div><p>The post <a rel="nofollow" href="http://heropress.com/essays/bumpy-journey-becoming/">The Bumpy Journey of Becoming</a> appeared first on <a rel="nofollow" href="http://heropress.com">HeroPress</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 05 Oct 2016 10:45:39 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Tamsin Taylor";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:25;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:98:"WPTavern: WordPress 4.7 Will Allow Developers to Register Custom Bulk Actions in Admin List Tables";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=62132";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:109:"https://wptavern.com/wordpress-4-7-will-allow-developers-to-register-custom-bulk-actions-in-admin-list-tables";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2680:"<a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2014/03/bulk-install.jpg?ssl=1"><img src="https://i2.wp.com/wptavern.com/wp-content/uploads/2014/03/bulk-install.jpg?resize=974%2C524&ssl=1" alt="photo credit: -pdp- - cc" class="size-full wp-image-19216" /></a>photo credit: <a href="http://www.flickr.com/photos/51553705@N00/8191743/">-pdp-</a> &#8211; <a href="http://creativecommons.org/licenses/by-nc-sa/2.0/">cc</a>\n<p>WordPress 4.7 will allow for custom bulk actions in admin list tables, an exciting new feature for developers. List tables are found on various screens throughout the admin. Bulk actions are the dropdowns that let users perform actions such as activate or deactivate plugins in bulk, move multiple posts to the trash, and bulk delete media items.</p>\n<p>The ability for developers to filter bulk actions was introduced in 3.1 but it didn&#8217;t offer much flexibility. Up until 4.7, it only allowed for the removal of items from default bulk actions. The upcoming release will make it possible for developers to register new bulk actions for any admin list table dropdown, including the Attachments list table.</p>\n<a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2016/10/custom-bulk-action-screenshot.png?ssl=1"><img src="https://i2.wp.com/wptavern.com/wp-content/uploads/2016/10/custom-bulk-action-screenshot.png?resize=586%2C371&ssl=1" alt="image credit: " class="size-full wp-image-62148" /></a>image credit: <a href="https://make.wordpress.org/core/2016/10/04/custom-bulk-actions/">Eric Andrew Lewis</a>\n<p>Eric Andrew Lewis posted the <a href="https://make.wordpress.org/core/2016/10/04/custom-bulk-actions/" target="_blank">announcement</a> on the make.wordpress/core blog along with a sample code walkthrough of the steps required for adding a new option to the dropdown, handling a bulk action form submission, and displaying notices to inform users of what happened. The announcement was met with a round of cheers from developers who are delighted to make use of the new ability to register their own bulk actions.</p>\n<p>This small, yet important change resolves a six-year-old <a href="https://core.trac.wordpress.org/ticket/16031" target="_blank">ticket</a> and has the potential to impact many plugins. For example, the <a href="https://wordpress.org/plugins/custom-bulk-actions/" target="_blank">Custom Bulk Actions</a> plugin has been rendered obsolete, as core now provides a better standard. There are many other plugins that register bulk actions through a similar method or another type of hack, but WordPress 4.7 will offer an easier, core-supported way to accomplish this.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 04 Oct 2016 22:24:26 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:26;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:87:"WPTavern: LoopConf Postponed Due to Hurricane Matthew, WordCamp Orlando is Questionable";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=62140";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:97:"https://wptavern.com/loopconf-postponed-due-to-hurricane-matthew-wordcamp-orlando-is-questionable";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2203:"<p><a href="https://loopconf.com/">LoopConf</a>, an event geared towards WordPress developers that was supposed to begin October 5th is<a href="https://loopconf.com/hurricane-matthew/"> postponed</a> due to hurricane Matthew. In today&#8217;s <a href="http://www.nhc.noaa.gov/text/refresh/MIATCPAT4+shtml/041503.shtml">11 AM update</a>, the National Hurricane Center issued a Hurricane Watch for Deerfield Beach to the Volusia/Brevard county line which is near the venue.</p>\n<p>LoopConf organizers are removing property and personnel from the area and cite safety as being the primary reason for postponing the event. Information on when it will be rescheduled will be published within the next week or two. Those who have reservations with hotels in the area need to cancel them on your own.</p>\n<p>I asked Ryan Sullivan, lead organizer for LoopConf, what the toughest part of making this decision is. He responded with no comment and emphasized that he&#8217;s occupied with logistics on trying to make sure everyone is safe.</p>\n<h2>WordCamp Orlando is Questionable</h2>\n<p><a href="https://2016.orlando.wordcamp.org/">WordCamp Orlando</a> is scheduled to take place this weekend and is also near the projected path of Hurricane Matthew. <a href="https://2016.orlando.wordcamp.org/friday-schedule/">Workshops</a> that are scheduled for Friday may be cancelled. Lisa Melegari, lead organizer for WordCamp Orlando, says cancelling the event depends on whether the venue has power.</p>\n<p>&#8220;Right now, we&#8217;re waiting on word from our venue as to their closure plans,&#8221; Melegari said. &#8220;It&#8217;s a university campus so we are anticipating Friday will be canceled. They told us that as long as they have power Saturday, we will still be able to hold the weekend sessions.&#8221;</p>\n<p>Melegari says she&#8217;ll likely have a definitive answer concerning Friday by the end of today. Speakers and attendees are encouraged to keep an eye on <a href="https://twitter.com/lmelegari">Melegari&#8217;s Twitter account</a> and the official <a href="https://2016.orlando.wordcamp.org/">WordCamp Orlando blog</a> for updates on this fluid situation.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 04 Oct 2016 18:10:05 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:27;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:77:"WPTavern: Geek Mental Help Week 2016 Explores Issues Related to Tech Industry";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=61976";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:90:"https://wptavern.com/geek-mental-health-week-2016-explores-issues-related-to-tech-industry";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2057:"<a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2016/10/mental-health.jpg?ssl=1"><img src="https://i1.wp.com/wptavern.com/wp-content/uploads/2016/10/mental-health.jpg?resize=960%2C495&ssl=1" alt="photo credit: Ales Krivec" class="size-full wp-image-62121" /></a>photo credit: <a href="https://stocksnap.io/photo/LOJD881EX1">Ales Krivec</a>\n<p>The third annual edition of <a href="http://geekmentalhelp.com" target="_blank">Geek Mental Help Week</a> kicked off yesterday. This week-long event will feature articles, podcasts, and other media addressing topics related to mental health issues in the tech industry. It is organized by a group of UK-based tech professionals but participation in the event is open to anyone in any location.</p>\n<p>The <a href="http://geekmentalhelp.com/#articles" target="_blank">articles</a> posted Monday address many common stressors experienced by those in tech-related professions, such as burnout, Imposter Syndrome, and keeping pace with a fast-moving industry. Contributors wrote frankly about their struggles with anxiety disorders, PTSD, grief, depersonalization disorder, and depression.</p>\n<p>In addition to raising awareness and support, the event is designed to foster conversations. That&#8217;s why Geek Mental Help Week doesn&#8217;t just include articles from people who have successfully navigated mental health issues but also features posts from those who are still figuring things out. This includes people who are learning how to live with others who have mental health issues.</p>\n<p>If you have something to contribute or want to join the conversation, the event&#8217;s website is hosted on GitHub pages. Pull requests with a link to an article, podcast episode, or helpful resource can be submitted to the <a href="https://github.com/malarkey/geek-mental-help-week" target="_blank">Geek Mental Help Week repository</a>. Follow <a href="https://twitter.com/geekmentalhelp" target="_blank">@geekmentalhelp</a> on Twitter for all the latest articles.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 04 Oct 2016 16:00:22 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:28;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:29:"Matt: Back on Tim’s Podcast";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:22:"https://ma.tt/?p=46841";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:43:"https://ma.tt/2016/10/back-on-tims-podcast/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:471:"<p>I went back for a <a href="http://fourhourworkweek.com/2016/10/01/matt-mullenweg-on-the-characteristics-and-practices-of-successful-entrepreneurs/">Round 2 answering follow-up questions from Tim&#8217;s readers on the Tim Ferriss podcast</a>. About an hour long and covered a wide range of topics. One of these days I need to start podcasting more directly. In the meantime, please give it a listen! Already some great tweets and responses have started to come in.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 04 Oct 2016 05:01:23 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:29;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:92:"WPTavern: The Div Selected by Code.org to Help Expand Computer Science Education in Oklahoma";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=61986";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:103:"https://wptavern.com/the-div-selected-by-code-org-to-help-expand-computer-science-education-in-oklahoma";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3085:"<p><a href="http://thediv.org/">The Div</a>, a 501c3 nonprofit organization founded by Jay Chapman, Cory Miller, and Scott Day in Oklahoma, has been selected by <a href="http://thediv.org/2016/10/03/div-joins-code-org-professional-learning-partner/">Code.org</a> to be a learning partner. The organization will help expand access to computer science education across the state by being the designated provider of Code.org educational programs.</p>\n<p>Thanks to funding provided by Code.org, The Div is offering development and course curriculum to local teachers and school districts at no cost to them.</p>\n<p>Curriculum and courses include, <a href="https://code.org/educate/csd">Computer Science Discoveries</a> for grades 7-9 and <a href="https://code.org/educate/csp">Computer Science Principles</a> for high school and AP students. There&#8217;s also a <a href="https://code.org/educate/curriculum/elementary-school">Computer Science Fundamentals</a> course that teachers can implement in elementary school classrooms.</p>\n<p>Miller, founder of iThemes and board President of The Div, spoke in Washington DC last week at an event hosted by The White House Office of Science and Technology Policy. At the event, he discussed why businesses like iThemes are supporting and advocating for computer science education.</p>\n<p>I spoke with Miller and asked him what the partnership means to him on a personal level. &#8220;We started The Div 5 years ago to simply give back to our local community in meaningful ways,&#8221; Miller said.</p>\n<p>&#8220;By far the most impactful thing we&#8217;ve done, and now our primary focus, is teaching kids to code through our in-person workshops. When I see kids in those workshops learning and growing, then reading their feedback forms afterward, that’s all the validation we need that we’re achieving our mission and doing good here in Oklahoma.&#8221;</p>\n<p>Miller explains why the partnership with Code.org is instrumental to accomplishing the organization&#8217;s goals.</p>\n<p>&#8220;The partnership with <a href="https://code.org/">Code.org</a> takes this simple vision to the next level with computer science education resources and connections to make an even greater exponential impact for kids as it is an in-school initiative where we equip schools to be able to offer computer science at a time when most schools don&#8217;t.&#8221;</p>\n<p>According to The Div, only 25 schools in the state of Oklahoma or 8% of schools with AP programs offered the AP computer science course in 2014-2015. Out of all STEM (science, technology, engineering, and mathematics) subject areas, computer science has the least amount of exams taken by students.</p>\n<p>Beginning January 2017, applications will open for teachers who want to learn a curriculum. Until then, educators are encouraged to keep an eye on the <a href="https://code.org/educate/csd">Computer Science Discoveries</a> and the <a href="https://code.org/educate/csp">AP Computer Science Principles</a> pages for updates.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 03 Oct 2016 22:13:01 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:30;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:109:"WPTavern: State of JavaScript Survey Results Published, React Emerges as Clear Winner in Front-End Frameworks";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=61973";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:119:"https://wptavern.com/state-of-javascript-survey-results-published-react-emerges-as-clear-winner-in-front-end-frameworks";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4363:"<p><a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2016/10/state-of-javascript-2016.png?ssl=1"><img src="https://i0.wp.com/wptavern.com/wp-content/uploads/2016/10/state-of-javascript-2016.png?resize=1025%2C556&ssl=1" alt="state-of-javascript-2016" class="aligncenter size-full wp-image-62071" /></a></p>\n<p>The results from Sacha Greif&#8217;s &#8220;State of JavaScript&#8221; survey were <a href="http://stateofjs.com/2016/introduction/" target="_blank">published</a> today. Greif, who is co-author of <a href="http://discovermeteor.com/" target="_blank">Discover Meteor</a> and the creator of <a href="http://telescopeapp.org/" target="_blank">Telescope</a>, began his journey in modern JavaScript development a year ago with a beginner&#8217;s course in React but was overwhelmed with the many options for extending his knowledge into other frameworks. He launched the 89-question <a href="http://stateofjs.com/" target="_blank">State of JavaScript</a> survey to get a better picture of ecosystem and was surprised to receive more than 9,300 responses.</p>\n<p>Instead of analyzing all the results himself, Greif enlisted the help of experts for each topic to give the results a more informed, well-rounded presentation. The survey covers front-end, full-stack, mobile and testing frameworks, build tools, developer profiles, and much more.</p>\n<p>React won out in terms of developer satisfaction for <a href="http://stateofjs.com/2016/frontend/" target="_blank">front-end frameworks</a> at 92%, closely followed by Vue.js (89%). Redux is the most popular tool for state management by a wide margin.</p>\n<p><a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2016/10/state-of-javascript-survey-frontend-framework-satisfaction.png?ssl=1"><img src="https://i1.wp.com/wptavern.com/wp-content/uploads/2016/10/state-of-javascript-survey-frontend-framework-satisfaction.png?resize=1025%2C904&ssl=1" alt="state-of-javascript-survey-frontend-framework-satisfaction" class="aligncenter size-full wp-image-62065" /></a></p>\n<p>In breaking down <a href="http://stateofjs.com/2016/api/" target="_blank">API layers</a>, REST APIs dominate the landscape with 79% of developers who have used them before being willing to use them again. Firebase comes in much further behind at 18%, followed by GraphQL at 5%.</p>\n<p>Greif&#8217;s questions regarding build tools show that Webpack and Gulp are used roughly twice as much as Grunt and Browserify. Grunt, however, has a high dissatisfaction rate with 42% of those who have used it before indicating they would not use it again.</p>\n<p>The State of JavaScript survey results are packed full of insights for those who are currently working in the industry or looking to begin their JavaScript education. Conclusions from the <a href="http://stateofjs.com/2016/opinions/" target="_blank">opinions section</a> of the results are not surprising: a majority of developers think building JavaScript apps is overly complex right now and the ecosystem is changing too fast.</p>\n<p>&#8220;If one thing has become clear to me, it’s that the growing pains that JavaScript is going through right now are only the beginning,&#8221; Greif said. &#8220;While React has barely emerged as the victor of the Front-End Wars of 2015, some developers are already decrying React for not being functional enough, and embracing Elm or ClojureScript instead.&#8221;</p>\n<p>As the WordPress development community moves towards incorporating more JavaScript and API-driven interfaces into projects, React has so far been the framework of choice. It powers some of the most visible applications and plugin interfaces, including <a href="https://wptavern.com/early-reviews-show-applications-like-calypso-are-the-future-of-wordpress" target="_blank">Calypso</a> (WordPress.com&#8217;s publishing interface) and the <a href="https://wptavern.com/jetpack-4-3-released-features-new-react-js-powered-admin-interface" target="_blank">Jetpack admin</a>.</p>\n<p>Greif plans on offering the survey again next year, which may reveal major changes in the most used technologies, given how fast the JavaScript ecosystem is changing. <a href="http://sachagreif.us2.list-manage2.com/subscribe?u=b5af47765edbd2fc173dbf27a&id=d8282e7e96" target="_blank">Sign up</a> to be notified when he opens it again in 2017.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 03 Oct 2016 21:05:34 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:31;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:68:"WPTavern: digitale Pracht: A Minimalist Blogging Theme for WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=61840";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:78:"https://wptavern.com/digitale-pracht-a-minimalist-blogging-theme-for-wordpress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3882:"<p><a href="https://wordpress.org/themes/digitale-pracht/" target="_blank">digitale Pracht</a> is a new theme on WordPress.org created by the folks at <a href="https://palasthotel.de/" target="_blank">PALASTHOTEL</a>, a digital products company based in Germany. The name translates to &#8220;digital splendor,&#8221; which aptly describes the theme&#8217;s bright new twist on the traditional blog design.</p>\n<p>The designers made a few bold choices with the layout, which does not support a top menu or include a sidebar. digitale Pracht&#8217;s liberal use of white space puts the content in focus and also highlights the typography selections. <a href="https://fonts.google.com/specimen/Lora">Lora</a> and <a href="https://fonts.google.com/specimen/Lato" target="_blank">Lato</a>, a set of light, contemporary Google fonts, are used for the header and paragraph text.</p>\n<p>This minimalist theme has just enough color and character to avoid looking stark. digitale Pracht&#8217;s golden yellow accent color is used for separator lines, buttons, and headers that are links. It&#8217;s also used for the reading indicator, a unique feature of the theme that displays a visual marker on the side of the viewport as the reader scrolls.</p>\n<p><a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2016/09/digitale-pracht.png?ssl=1"><img src="https://i1.wp.com/wptavern.com/wp-content/uploads/2016/09/digitale-pracht.png?resize=1025%2C769&ssl=1" alt="digitale-pracht" class="aligncenter size-full wp-image-61956" /></a></p>\n<p>PALASTHOTEL&#8217;s company blog currently uses the theme and provides the nice <a href="http://digitale-pracht.de/" target="_blank">live demo</a> of digitale Pracht in action.</p>\n<p>The customizer is lean on settings for this theme, but that also means it&#8217;s more similar to the demo upon activation. Users can easily change the highlight color using the customizer and can also enable a small sharing button for posts that appears at the bottom right corner of the page when scrolling.</p>\n<p><a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2016/09/digitale-pracht-single-post.png?ssl=1"><img src="https://i1.wp.com/wptavern.com/wp-content/uploads/2016/09/digitale-pracht-single-post.png?resize=1025%2C854&ssl=1" alt="digitale-pracht-single-post" class="aligncenter size-full wp-image-61962" /></a></p>\n<p>A related articles section is displayed beneath single posts in the same style as the posts on the homepage. The theme uses square featured images in the archives and they are also displayed overhanging the right column at the top of single posts. Square featured images make it relatively easy to activate this theme and have it look decent no matter what the shape or size of images used in the previous theme used.</p>\n<p><a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2016/09/digitale-pracht-related-posts.png?ssl=1"><img src="https://i0.wp.com/wptavern.com/wp-content/uploads/2016/09/digitale-pracht-related-posts.png?resize=1025%2C708&ssl=1" alt="digitale-pracht-related-posts" class="aligncenter size-full wp-image-61963" /></a></p>\n<p>digitale Pracht includes support for PALASTHOTEL&#8217;s free <a href="https://wordpress.org/plugins/grid" target="_blank">Grid plugin</a> that allows users to create custom landing pages with containers and content boxes. This approach makes it possible to add pages with business or portfolio type content.</p>\n<p>If you like minimalist design and don&#8217;t want a load of settings to configure when setting a theme, <a href="https://wordpress.org/themes/digitale-pracht/" target="_blank">digitale Pracht</a> might be a good choice for your blog. Previewing the theme on WordPress.org doesn&#8217;t do it justice but using the live preview inside the WordPress admin offers a decent look at how it will display on your site.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 03 Oct 2016 04:52:17 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:32;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:44:"WPTavern: In Case You Missed It – Issue 16";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=61906";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wptavern.com/in-case-you-missed-it-issue-16";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:9020:"<p><a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2016/01/ICYMIFeaturedImage.png?ssl=1" rel="attachment wp-att-50955"><img class="size-full wp-image-50955" src="https://i2.wp.com/wptavern.com/wp-content/uploads/2016/01/ICYMIFeaturedImage.png?resize=676%2C292&ssl=1" alt="In Case You Missed It Featured Image" /></a>photo credit: <a href="http://www.flickr.com/photos/112901923@N07/16153818039">Night Moves</a> &#8211; <a href="https://creativecommons.org/licenses/by-nc/2.0/">(license)</a>There’s a lot of great WordPress content published in the community but not all of it is featured on the Tavern. This post is an assortment of items related to WordPress that caught my eye but didn’t make it into a full post.</p>\n<h2>Four Great How-to Videos From Bob Dunn</h2>\n<p>Bob Dunn, founder of <a href="https://bobwp.com">BobWP.com</a>, has <a href="https://bobwp.com/starting-wordpress-watch-four-videos/">published four videos</a> that explain how to solve common pain points experienced by users.</p>\n<ul>\n<li>How To Get Rid of the Blog That is Showing On Your WordPress Sites Homepage</li>\n<li>How To Create Two WordPress Blogs On a Single WordPress Site</li>\n<li>How To Make Sense of Your WordPress Reading Settings</li>\n<li>How To Add Formatted HTML to the Text Widget Without Knowing HTML</li>\n</ul>\n<p>Dunn has years of experience teaching WordPress and it shows in these videos.</p>\n<div class="embed-wrap"></div>\n<h2 class="selectionShareable">Matt Mullenweg Appears on Fortune&#8217;s 40 Under 40 List</h2>\n<p>Since Matt Mullenweg is now in his 30s, he&#8217;s graduated to the <a href="http://fortune.com/40-under-40/matt-mullenweg-20/">40 Under 40</a> list put together by <a href="http://fortune.com/">Fortune</a>. He also <a href="http://www.heinzawards.net/recipients/matthew-mullenweg">received the Heinz Award</a> in the Technology, Economy, and Employment category. The Heinz award is given to individuals who make significant contributions to the areas of Arts and Humanities, Environment, Human Condition, Public Policy, Technology, Economy and Employment. Mullenweg was also recently <a href="http://www.houstonchronicle.com/local/history/innovators-inventions/article/Wordpress-founder-finds-inspiration-in-his-9403035.php?t=cf1ab658da438d9cbb">profiled in the Houston Chronicle</a> by Anita Hassan.</p>\n<p>In the article, David Caceres, one of Mullenweg&#8217;s music teachers is quoted as saying, &#8220;All the success hasn&#8217;t seemed to have affected him at all. You might just see him driving a fancier car.&#8221;</p>\n<p>This quote sticks out to me because it&#8217;s true based on my experience. He doesn&#8217;t have bodyguards, is incredibly approachable at events, and is the opposite of everything rich celebrities are. I continue to be impressed by how humble and down-to-earth he is.</p>\n<h2>Leland Fiegel Debunks GPL Myths</h2>\n<p>Leland Fiegel, founder of <a href="https://themetry.com">Themetry</a>, debunks at least <a href="https://leland.me/gpl-myths/">a dozen myths</a> around the GPL including, redistribution of paid for code, what customers are buying when they purchase GPL licensed products, and providing free copies of code upon request. If you&#8217;re thinking about entering the WordPress product space, consider this advice.</p>\n<blockquote><p>If you’re a developer of paid GPL code and imagine you’d be upset if somebody resold or gave away your code for free, you may want to reconsider releasing under the GPL at all.</p>\n<p>Or better yet, focus on building such a rock-solid brand that any code redistribution would have an inconsequential effect on your business.</p></blockquote>\n<p>While his post does a great job covering common misconceptions, I encourage anyone doing business in the WordPress space to read and familiarize yourself with the <a href="https://www.gnu.org/licenses/old-licenses/gpl-2.0.en.html">GPL v2 license </a>itself.</p>\n<h2>Changes to the Customize Sliding Panels/Sections in WordPress 4.7</h2>\n<p>The WordPress development team is requesting that developers test important changes that have been made to the sliding panels and sections of the customizer. The description is technical in nature but the changes allow the removal of margin-top hacks by separating the root &#8216;panel&#8217; of the customizer from the container elements for the sections they link to. Developers are encouraged to review Trac ticket <a href="https://core.trac.wordpress.org/ticket/34391">#34391</a> for more details.</p>\n<blockquote class="wp-embedded-content"><p><a href="https://make.wordpress.org/core/2016/09/28/changes-to-customizer-sliding-panelssections-in-wordpress-4-7/">Changes to Customizer Sliding Panels/Sections in WordPress 4.7</a></p></blockquote>\n<p></p>\n<h2>WP101 Turns 8 Years Old</h2>\n<p><a href="https://www.wp101.com/">WP101</a>, founded by Shawn Hesketh, has <a href="https://www.wp101.com/wp101-8-years/">turned eight years old</a>. This year, Hesketh celebrates the milestone by thanking eight important people that include license partners and customers.</p>\n<blockquote><p>There are many others who have contributed to WP101’s success over the years, to say nothing of the countless friendships Kay and I have made over the years, thanks to the WordPress community. We are who we are today because of <strong>YOU</strong>.</p>\n<p>We’re humbled and grateful, and look forward to celebrating many, many years to come!</p></blockquote>\n<p>Happy birthday to WP101!</p>\n<h2>0-$4,000 in Monthly Revenue in 10 Months</h2>\n<p>Over on the Cozmoslabs blog, <span class="byline"><span class="author vcard">Adrian Spiac <a href="https://www.cozmoslabs.com/53386-lessons-learned-launching-free-membership-plugin/">published the lessons</a> they&#8217;ve learned since launching the Paid Member Subscriptions plugin. The article includes the ups and downs experienced, challenges faced, and tough decisions that were made. </span></span></p>\n<h2>W3 Total Cache 0.9.5.1 Released</h2>\n<p>Hot on the heels of <a href="https://wptavern.com/w3-total-cache-0-9-5-packages-xss-vulnerability-patch-with-major-update">W3 Total Cache 0.9.5</a> released earlier this week, Frederick Townes has <a href="https://www.w3-edge.com/weblog/2016/09/w3-total-cache-v0-9-5-1/">released 0.9.5.1</a> to address plugin incompatibilities. According to <a href="https://wordpress.org/plugins/w3-total-cache/changelog/">the changelog</a>, Yoast SEO and Jetpack are among the plugins addressed. The new version also improves backwards compatibility for third-party implementations using legacy W3TC functions.</p>\n<h2>Major Changes in Store for FooPlugins</h2>\n<p>Adam Warner, co-founder of <a href="http://fooplugins.com/">FooPlugins</a>, published an <a href="http://fooplugins.com/the-challenges-of-growing-a-plugin-business-and-what-were-doing-about-it/?utm_content=bufferc8b0b&utm_medium=social&utm_source=twitter.com&utm_campaign=buffer">in-depth article</a> on the challenges associated with growing a plugin business and what his team is doing to overcome them. The article covers what the team has done right, wrong, and lists significant changes it&#8217;s making, including retiring unpopular plugins. Perhaps the most important part of the post however, is the promise made by Warner to current and future users.</p>\n<blockquote><p>My intention with this post is not to make anyone nervous about the future of our plugins. It’s quite the opposite.</p>\n<p>I hope by sharing these insights that our intentions are clear. We are committed to the future of our brand, our products, and their features (both free and pro), and most of all, you.</p>\n<p>We plan to be around for years to come. And to keep learning and pivoting as necessary to make certain that happens.</p>\n<p>Lastly, for the 400,000+ combined users of all our all publicly available plugins, we thank you for your support thus far and hope we can count on you to keep teaching us how to continue our success.</p></blockquote>\n<h2>Swag Wapuu!</h2>\n<p>In what is a traditional part of this series, I end each issue by featuring a Wapuu design. For those who don&#8217;t know, Wapuu is the <a href="http://wapuu.jp/2015/12/12/wapuu-origins/">unofficial mascot</a> of the WordPress project.</p>\n<p>Swag Wapuu is making the rounds and its next stop is <a href="http://2016.orlando.wordcamp.org/">WordCamp Orlando</a>, FL, October 7-9. Swag Wapuu loves wearing conference shirts and free swag but hates wearing pants. Below is a preview of one of the shirt designs that will be given out as swag at the event.</p>\n<p><a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2016/09/SwagWapuu2.png?ssl=1"><img class="size-full wp-image-61926" src="https://i2.wp.com/wptavern.com/wp-content/uploads/2016/09/SwagWapuu2.png?resize=808%2C541&ssl=1" alt="Swag Wapuu!" /></a>Swag Wapuu!That&#8217;s it for issue sixteen. If you recently discovered a cool resource or post related to WordPress, please share it with us in the comments.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 30 Sep 2016 22:51:22 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:33;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:79:"WPTavern: Pippin Williamson Shakes Up Page Builder Plugins with Critical Review";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=61819";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:90:"https://wptavern.com/pippin-williamson-shakes-up-page-builder-plugins-with-critical-review";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:11150:"<a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2016/09/building-blocks.jpg?ssl=1"><img src="https://i1.wp.com/wptavern.com/wp-content/uploads/2016/09/building-blocks.jpg?resize=1024%2C522&ssl=1" alt="photo credit: ruudgreven DSC_0012 - (license)" class="size-full wp-image-61914" /></a>photo credit: ruudgreven <a href="http://www.flickr.com/photos/40811229@N07/6180817922">DSC_0012</a> &#8211; <a href="https://creativecommons.org/licenses/by-nc-sa/2.0/">(license)</a>\n<p>Pippin Williamson has published a comprehensive <a href="https://pippinsplugins.com/wordpress-page-builder-plugins-critical-review/" target="_blank">review of some of the most popular WordPress page builder plugins</a>. The post has received more than 90 comments and is already inspiring changes across the page builder plugin market. Williamson, a prolific plugin developer and mentor to many others, is one of the most authoritative voices in the community on the topic of plugins, which has caused this post to be well-received.</p>\n<p>The idea started with a Twitter rant where Williamson collectively slammed popular page builder plugins for their &#8220;subpar user experiences&#8221; and compatibility problems they cause for other plugins. After realizing he had never truly used any of these plugins, he decided it would only be fair to try them and give a full review.</p>\n<blockquote class="twitter-tweet"><p lang="en" dir="ltr">I’m sorry is this hurts anyone feelings, but seriously, all of the majorly popular page builders for <a href="https://twitter.com/hashtag/WordPress?src=hash">#WordPress</a> are terrible.</p>\n<p>&mdash; Pippinsplugins (@pippinsplugins) <a href="https://twitter.com/pippinsplugins/status/776169605299597314">September 14, 2016</a></p></blockquote>\n<p></p>\n<p>Williamson&#8217;s review is written from the perspective of a developer who supports a large number of plugins and routinely deals with plugin conflicts caused by page builder plugins.</p>\n<p>&#8220;The page builder ecosystem is a wild west right now and is in a gold rush,&#8221; Williamson said. &#8220;A lot of different players are building their own versions and many are reaping good rewards for their efforts&#8230;What the page builder industry is severely lacking is standardization.&#8221;</p>\n<p>Williamson compared the current state of the page builder ecosystem to that of the commercial themes industry a few years ago before theme developers agreed on the standards that now guide their products. His critical review examines each plugin&#8217;s usability, UI, content &#8220;lock in,&#8221; and whether the plugin interferes with filters, such as the_content, that might cause incompatibility with other plugins.</p>\n<h3>Page Builder Plugin Authors Are Responding with Updates to their Plugins</h3>\n<p>Many of the plugin authors whose page builders were included in the review were quick to respond and are already working on changes based on Williamson&#8217;s feedback.</p>\n<p>I spoke with Ben Pines, CMO at <a href="https://elementor.com/" target="_blank">Elementor</a>, a newer page builder <a href="https://wordpress.org/plugins/elementor/" target="_blank">plugin</a> included in the 13 reviewed. After just three months on WordPress.org, Elementor is <a href="https://elementor.com/our-journey-from-0-to-10k-active-users-in-under-3-months/" target="_blank">active on more than 10,000 WordPress sites</a>. The plugin&#8217;s contributors continue to add new features to the free version and Pines said they hope to release a commercial version in the next two months.</p>\n<p>&#8220;We release new features and bug fixes on a weekly basis, based on our user feedback, so of course we take Pippin&#8217;s feedback seriously,&#8221; Pines said. &#8220;We have addressed the only two issues he critiqued us about, and will release an update next week that will address how shortcodes and widgets load scripts on Elementor.&#8221;</p>\n<p><a href="https://www.brixbuilder.com/" target="_blank">Brix Builder</a>, a GPL-licensed commercial plugin, was criticized in the review for major compatibility issues: restricting other plugins&#8217; ability to utilize <a href="https://codex.wordpress.org/Plugin_API/Filter_Reference/the_content" target="_blank">the_content</a> filter and shortcode enclosures not working across builder elements. Apart from these and a few other issues with the plugin&#8217;s UI, Williamson ranked the plugin near the top of the list in terms of usability.</p>\n<p>Brix co-creator Simone Maranzana was quick to respond in the comments that their team has already fixed some of the issues Williamson pointed out and they are working on the others.</p>\n<p>&#8220;Concerning the other issues you mentioned, we are going to release an update to our plugin tomorrow that will add support for shortcode enclosures,&#8221; Maranzana said.</p>\n<p>&#8220;Also, we’ve corrected how we hook into the_content for display: this way, other plugins will be able to hook either before or after the content generated by Brix, just like they’d do normally.&#8221;</p>\n<p>I spoke with Matt Medeiros, whose <a href="https://conductorplugin.com/" target="_blank">Conductor</a> plugin was included among the page builders Williamson reviewed. He said his team has never considered Conductor to be a page builder similar to others on the list, as the plugin focuses on giving users control over their content displays without framing a fully-designed layout.</p>\n<p>&#8220;We wanted customers to easily stack types of content, display custom fields, and drag-and-drop blocks of that content around a page, not design a layout,&#8221; Medeiros said. &#8220;Since we launched we’ve had over 500 customers using it, and Pippin&#8217;s findings are something we’ve always struggled with — finding people who want to shape their content displays, but not buy a full page builder.&#8221;</p>\n<p>Medeiros said his team will be acting on this feedback in the coming months with the launch of a new website that better communicates the purpose of the plugin, differentiating it from more traditional page builders. They are also working on making their flagship Baton theme support Beaver Builder layouts, as Medeiros said they do not intend to compete in the page builder space.</p>\n<p><a href="https://www.wpbeaverbuilder.com/" target="_blank">Beaver Builder</a>, one of the most popular plugins reviewed, does not support multisite in its standard license, something Williamson only discovered after installing it.</p>\n<p>&#8220;I’m entirely fine with limiting the number of domains the plugin is activated on but this limitation should not affect my ability to use a core WordPress feature,&#8221; Williamson said.</p>\n<p>Robby McCullough, co-founder of Beaver Builder, was quick to respond to the feedback on the multisite settings and said the team will reconsider its decision to restrict the feature.</p>\n<p><a href="https://wordpress.org/plugins/page-builder-sandwich/" target="_blank">Page Builder Sandwich</a>, a commercial plugin that has a free version on WordPress.org with more than 6,000 active installs, was criticized in Williamson&#8217;s review for the &#8220;rainbow of unnecessary colors&#8221; used in its interface. This issue plus a few editor glitches prevented the plugin from being listed among his favorites.</p>\n<p>Benjamin Intal, the plugin&#8217;s creator, said that his team is working on toning down the colors used in the interface so that it&#8217;s not such a jarring experience.</p>\n<p>&#8220;I agree with you regarding the interface, it does need some toning down,&#8221; Intal said. &#8220;We’ve been rethinking the interface for the past couple of weeks on how we can improve the user experience. We are revamping it, and the colors are now being adjusted to be more subtle.&#8221;</p>\n<h3>Williamson Finds 3 Page Builder Plugins Worthy of Recommendation</h3>\n<p>Williamson concluded the review by selecting three favorites, which he said he could happily recommend to his customers: <a href="https://wordpress.org/plugins/tailor/" target="_blank">Tailor</a>, <a href="https://wordpress.org/plugins/pootle-page-builder/" target="_blank">Pootle Page Builder</a>, and <a href="https://wordpress.org/plugins/beaver-builder-lite-version/" target="_blank">Beaver Builder</a>. As he is not an affiliate with any of the plugins and has stated multiple times that he has no interest in creating his own page builder, his selections were based solely on the criteria he identified before testing.</p>\n<p>One important aspect of the plugins Williamson did not take into account was licensing, which he said was &#8220;not relevant for the review or the vast majority of end users.&#8221; The license may not be something users care about but it certainly can impact their ability to fork the plugin or improve upon it if the company abandons it or goes out of business.</p>\n<p>I spoke with Luke Beck, founder of <a href="https://theme-fusion.com/" target="_blank">ThemeFusion</a>, which packages its <a href="http://avada.theme-fusion.com/fusion-builder-2/" target="_blank">Fusion Builder</a> plugin with <a href="https://themeforest.net/item/avada-responsive-multipurpose-theme/2833226" target="_blank">Avada</a>, one of the most widely used WordPress themes. His team was not immediately available to answer questions pertaining to the review, although we will update if we receive comments from them.</p>\n<p>Beck was hesitant to answer whether Fusion Builder is 100% GPL and directed me to ThemeForest, which lists Avada as split GPL. Avada&#8217;s creators also <a href="https://theme-fusion.com/avada-multisite-setup/#comment-2829" target="_blank">require users to purchase multiple licenses</a> when using the theme on WordPress multisite. Visual Composer, another plugin included in the review, shares the same kind of split licensing. It only offers the PHP under GPL, restricting the Javascript, CSS, and images. Putting part of the product under a proprietary license severely restricts users&#8217; freedoms and should be disclosed as part of any future reviews.</p>\n<p>All three plugins that won out are 100% GPL and two out of the three have fewer than 4,000 active installs. This demonstrates that high quality WordPress plugins may not always be widely known and the size of the user base is not always an indication of the plugin&#8217;s code quality.</p>\n<p>After receiving several comments about other page builder plugins not included in the review, Williamson said he may try to do a second set of reviews. Despite not being especially fond of these types of plugins, he recognizes the demand for page builders and their usefulness to the community.</p>\n<p>Williamson&#8217;s critical review is a powerful example of the change that can be precipitated by one highly-regarded expert offering constructive, unbiased feedback to plugins that fall into a particular niche. Hopefully this and any future reviews will be the first cracks in the ice towards accelerating standardization of the disparate products in WordPress&#8217; page builder ecosystem.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 30 Sep 2016 21:49:48 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:34;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:24:"Matt: Happy Birthday Om!";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:22:"https://ma.tt/?p=46789";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:40:"https://ma.tt/2016/09/happy-birthday-om/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3384:"<p>Today the legendary <a href="http://om.co/">Om Malik</a> celebrates his 50th time around the sun. For many that know him, Om defies definition: He&#8217;s first a writer, and finally always a true friend, but in between he&#8217;s an investor, photographer, oenophile, closet Bollywood fan, critical thinker, and sartorialist. He&#8217;s also been my friend and confidant for over a decade now, and I cannot wait to see what his next 50 years bring for him and the world.</p>\n<p>Here&#8217;s some snaps of Om over the years, from 2008 to just a few weeks ago when he was blonde for a few days. Happy birthday, buddy. <img src="https://s.w.org/images/core/emoji/2.2.1/72x72/1f600.png" alt="😀" class="wp-smiley" /></p>\n<p><img class="alignnone size-full wp-image-46807" src="https://i0.wp.com/ma.tt/files/2016/09/MAT_2822.jpg?resize=604%2C402&ssl=1" alt="MAT_2822" /><img class="alignnone size-full wp-image-46808" src="https://i0.wp.com/ma.tt/files/2016/09/MAT_3038.jpg?resize=604%2C402&ssl=1" alt="MAT_3038" /><img class="alignnone size-full wp-image-46809" src="https://i1.wp.com/ma.tt/files/2016/09/MCM_5436.jpg?resize=604%2C402&ssl=1" alt="MCM_5436" /><img class="alignnone size-full wp-image-46806" src="https://i1.wp.com/ma.tt/files/2016/09/MCM_9460.jpg?resize=604%2C402&ssl=1" alt="MCM_9460" /><img class="alignnone size-full wp-image-46804" src="https://i2.wp.com/ma.tt/files/2016/09/IMG_4856.jpg?resize=604%2C453&ssl=1" alt="IMG_4856" /><img class="alignnone size-full wp-image-46805" src="https://i0.wp.com/ma.tt/files/2016/09/MCM_5807.jpg?resize=604%2C402&ssl=1" alt="MCM_5807" /><img class="alignnone size-full wp-image-46801" src="https://i1.wp.com/ma.tt/files/2016/09/FullSizeRender.jpg?resize=604%2C402&ssl=1" alt="FullSizeRender" /><img class="alignnone size-full wp-image-46802" src="https://i2.wp.com/ma.tt/files/2016/09/IMG_8178.jpg?resize=604%2C453&ssl=1" alt="IMG_8178" /><img class="alignnone size-full wp-image-46803" src="https://i0.wp.com/ma.tt/files/2016/09/IMG_9322.jpg?resize=604%2C453&ssl=1" alt="IMG_9322" /><img class="alignnone size-full wp-image-46800" src="https://i0.wp.com/ma.tt/files/2016/09/IMG_2343.jpg?resize=604%2C453&ssl=1" alt="IMG_2343" /><img class="alignnone size-full wp-image-46796" src="https://i0.wp.com/ma.tt/files/2016/09/IMG_4620.jpg?resize=604%2C453&ssl=1" alt="IMG_4620" /><img class="alignnone size-full wp-image-46798" src="https://i2.wp.com/ma.tt/files/2016/09/IMG_9092.jpg?resize=604%2C453&ssl=1" alt="IMG_9092" /><img class="alignnone size-full wp-image-46799" src="https://i2.wp.com/ma.tt/files/2016/09/IMG_9214.jpg?resize=604%2C453&ssl=1" alt="IMG_9214" /><img class="alignnone size-full wp-image-46793" src="https://i0.wp.com/ma.tt/files/2016/09/IMG_1076.jpg?resize=604%2C453&ssl=1" alt="OLYMPUS DIGITAL CAMERA" /><img class="alignnone size-full wp-image-46810" src="https://i1.wp.com/ma.tt/files/2016/09/IMG_2852-1.jpg?resize=604%2C453&ssl=1" alt="IMG_2852" /><img class="alignnone size-full wp-image-46795" src="https://i1.wp.com/ma.tt/files/2016/09/IMG_4566.jpg?resize=604%2C453&ssl=1" alt="IMG_4566" /><img class="alignnone size-full wp-image-46792" src="https://i0.wp.com/ma.tt/files/2016/09/IMG_8461.jpg?resize=604%2C403&ssl=1" alt="Shot with DXO ONE Camera" /><img class="alignnone size-full wp-image-46797" src="https://i2.wp.com/ma.tt/files/2016/09/MCM_0056.jpg?resize=604%2C403&ssl=1" alt="MCM_0056" /></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 29 Sep 2016 23:09:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:35;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"HeroPress: Rebirth";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:55:"http://heropress.com/?post_type=heropress-essays&p=1358";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:36:"http://heropress.com/essays/rebirth/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:7053:"<img width="960" height="480" src="http://heropress.com/wp-content/uploads/2016/09/092816-vladimir_petkov-1024x512.jpg" class="attachment-large size-large wp-post-image" alt="Pull Quote: I started translating WordPress so that my seven-year-old daughter can share her personal stories." /><p>I started working with the web 16 years ago (yes, I am that old) because I wanted to make a web page of my IRC channel. IRC was my new hobby and every respectable channel had a site with a list of its members, photos and some texts. I have always had hobbies which arise, light a spark in me, I devote myself to them for a couple of months and in a year I turn to something else. I have always felt changed after that. My hobbies arise out of some personal ambition that excites me so much that captures all my free time and thoughts.</p>\n<p>My “Web” hobby came after my “IRC” hobby and devoting myself to it I started to maintain an ezine with more than 400 static html publications. I remember that I worked on it 3-4 hours every day, changing its design, adding articles, images, talking to people. I guess now you all expect me to tell you how I discovered WordPress and all my troubles disappeared. No, this is not my story for two reasons &#8211; 1) WordPress did not exist at the time and 2) when you do something you love, it is not a burden. And I really loved online communities, experimenting with digital journalism and that filled me with extraordinary energy.</p>\n<p>My WordPress story starts when I wanted to make that ezine more democratic by adding a section that was much more informal and written by the users. The blog had to be something like a filter on various topics and contained 9 sub-blogs in which everyone could publish interesting links with a short commentary about movies, music, cyber culture etc. I needed a CMS and that’s how I found… b2 (cafelog.com) which allowed a number of users to publish without problems and its design was simple enough so that it could be changed to be in line with the one of our ezine. We installed it and set it up for one night.</p>\n<p>Now we will speed up the story. The blog of my ezine was a success, blogs as a trend were a global success and little by little killed the electronic magazines (ezines) like mine. They killed them because they made publishing more democratic and everyone could have their own media.</p>\n<p>B2 died and then Movable Type appeared, but it was not free and used Perl (awful) and then WordPress appeared, which was free (yay) and used PHP (yay times 2) and literally swept over Movable Type.</p>\n<blockquote><p>I saw with my own eyes how WordPress empowered all people who needed to publish and break the chains of the physical limitations of traditional journalism.</p></blockquote>\n<p>In 2006 the Web was an immensely interesting place and WordPress was one of the “culprits” for that. Then social media appeared, killed the blogs and took over their function (and the function of the web as a whole) as the main platform for democratic content sharing. Something new is born, develops, fulfills its role and then declines and dies. It is the natural order of things.</p>\n<p>I watched with great interest what was happening with WordPress, which I was happy to see, did not die but changed its mission and now made more democratic not only a part of the Web (blogs) but the whole open Web. Rebirth.</p>\n<p>While I was watching WordPress, I also passed through a number of lives. I was editor-in-chief of a site for art and culture, then I was Free and Open Source Advocate, a translator, a trainer, then I led the digital business of a media group and now I do automatic aggregation of data and make sense of it using artificial intelligence. Rebirth.</p>\n<p>Throughout all this time, after the death of the ezine, WordPress has been present in my life in some especially charming form of background regime. It was the main engine of my personal blog allowing me to share stories about my current hobbies, travels and jobs. That continued until a year ago when my relationship with WordPress went into a deeper level because of a change.</p>\n<p>My daughter, Kalina, seven and a half years old, <a href="https://kikipetkova.wordpress.com/">wanted to have a blog</a> (had watched “A dog with a blog” on Disney channel) because she wanted to share. The concept of sharing was not unfamiliar to her &#8211; she already shared in Youtube where she has a channel with video clips of her playing with toys and dancing to pop songs.</p>\n<blockquote><p>When she started going to school and learned to read and write, she wanted to express herself through text, too.</p></blockquote>\n<p>WordPress was the only platform that came to my mind.</p>\n<p>I started translating WordPress so that my seven-year-old daughter can share her personal stories in her childish way, the same way I started having a blog and sharing my life twelve years ago. My story with Web, WordPress and technologies, going through so many years, Kalina experienced within a couple of days. Kalina is my mission and reason after a hard day at work to find strength to search for the best translation of complex words or improve already translated ones with only one thought in mind &#8211; “can an eight-year-old person understand that?” It is not easy, but it feels good.</p>\n<p>Rebirth.</p>\n<div class="rtsocial-container rtsocial-container-align-right rtsocial-horizontal"><div class="rtsocial-twitter-horizontal"><div class="rtsocial-twitter-horizontal-button"><a title="Tweet: Rebirth" class="rtsocial-twitter-button" href="https://twitter.com/share?text=Rebirth&via=heropress&url=http%3A%2F%2Fheropress.com%2Fessays%2Frebirth%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-fb-horizontal fb-light"><div class="rtsocial-fb-horizontal-button"><a title="Like: Rebirth" class="rtsocial-fb-button rtsocial-fb-like-light" href="https://www.facebook.com/sharer.php?u=http%3A%2F%2Fheropress.com%2Fessays%2Frebirth%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-linkedin-horizontal"><div class="rtsocial-linkedin-horizontal-button"><a class="rtsocial-linkedin-button" href="https://www.linkedin.com/shareArticle?mini=true&url=http%3A%2F%2Fheropress.com%2Fessays%2Frebirth%2F&title=Rebirth" rel="nofollow" target="_blank" title="Share: Rebirth"></a></div></div><div class="rtsocial-pinterest-horizontal"><div class="rtsocial-pinterest-horizontal-button"><a class="rtsocial-pinterest-button" href="https://pinterest.com/pin/create/button/?url=http://heropress.com/essays/rebirth/&media=http://heropress.com/wp-content/uploads/2016/09/092816-vladimir_petkov-150x150.jpg&description=Rebirth" rel="nofollow" target="_blank" title="Pin: Rebirth"></a></div></div><a rel="nofollow" class="perma-link" href="http://heropress.com/essays/rebirth/" title="Rebirth"></a></div><p>The post <a rel="nofollow" href="http://heropress.com/essays/rebirth/">Rebirth</a> appeared first on <a rel="nofollow" href="http://heropress.com">HeroPress</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 28 Sep 2016 12:00:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Vladimir Petkov";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:36;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:78:"Post Status: The art of being a self-employed web consultant — Draft podcast";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"https://poststatus.com/?p=27006";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:70:"https://poststatus.com/art-self-employed-web-consultant-draft-podcast/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1873:"<p>Welcome to the Post Status <a href="https://poststatus.com/category/draft">Draft podcast</a>, which you can find <a href="https://itunes.apple.com/us/podcast/post-status-draft-wordpress/id976403008">on iTunes</a>, <a href="https://play.google.com/music/m/Ih5egfxskgcec4qadr3f4zfpzzm?t=Post_Status__Draft_WordPress_Podcast">Google Play</a>, <a href="http://www.stitcher.com/podcast/krogsgard/post-status-draft-wordpress-podcast">Stitcher</a>, and <a href="http://simplecast.fm/podcasts/1061/rss">via RSS</a> for your favorite podcatcher. Post Status Draft is hosted by Brian Krogsgard and this week&#8217;s special guest host, Diane Kinney.</p>\n<p><span>Diane is a web professional and solo practitioner based in Florida. She’s writing a book with Carrie Dils called Real World Freelancing, and I thought it’d be fun to chat with her about freelancing.</span></p>\n<a href="http://audio.simplecast.com/48334.mp3">http://audio.simplecast.com/48334.mp3</a>\n<p><a href="http://audio.simplecast.com/48334.mp3">Direct Download</a></p>\n<h3>Links and Topics</h3>\n<ul>\n<li><a href="http://realworldfreelancing.com/">Real World Freelancing</a></li>\n<li><a href="http://theversatilitygroup.com/">The Versatility Group</a>, Diane&#8217;s primary business</li>\n<li><a href="https://poststatus.com/wordpress-website-cost/">How much should a website cost?</a></li>\n<li><a href="http://dianekinney.com/">DianeKinney.com</a>, a blog in development. It will focus on business topics, WordPress, and beyond</li>\n</ul>\n<h3>Sponsor: Yoast</h3>\n<p><a href="https://yoast.com/">Yoast</a> SEO Premium gives you 24/7 support from a dedicated support team and extra features such as a redirect manager, tutorial videos and integration with Google Webmaster Tools! Go to <a href="https://yoast.com/">yoast.com</a> for more information, and thanks to Yoast for being a Post Status partner</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 24 Sep 2016 15:05:55 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Katie Richards";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:37;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:63:"WordPress.tv Blog: The Humanity Of WordPress – Rich Robinkoff";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"http://blog.wordpress.tv/?p=654";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:78:"https://blog.wordpress.tv/2016/09/23/the-humanity-of-wordpress-rich-robinkoff/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1279:"<p>Rich Robinkoff &#8220;nails it&#8221; during his presentation titled The Humanity of WordPress!</p>\n<p>Rich gave this presentation at <a href="https://2016.columbus.wordcamp.org/speakers/">WordCamp Columbus</a> on August 27th and again at <a href="https://wordpress.tv/?s=pittsburgh">WordCamp Pittsburgh</a> on September 17th. I was lucky enough to be in attendance in Pittsburgh.</p>\n<p>He talks about human interactions and the fact that people may not realize the impact they might have on somebodies life in just a short conversation. Rich gives several examples of the relationships that can be built and the giving nature of the WordPress Community.</p>\n<p>Please watch until the end as Rich talks about the contributions to the WordPress Community by #WPMOM.</p>\n<p></p>\n<p>See more great WordCamp videos at <a href="https://wordpress.tv" target="_blank">WordPress.tv »</a></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p><br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptvblog.wordpress.com/654/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptvblog.wordpress.com/654/" /></a> <img alt="" border="0" src="https://pixel.wp.com/b.gif?host=blog.wordpress.tv&blog=5310177&post=654&subd=wptvblog&ref=&feed=1" width="1" height="1" />";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 23 Sep 2016 17:14:34 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"John Parkinson";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:38;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:17:"Matt: 40 under 40";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:22:"https://ma.tt/?p=46784";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:34:"https://ma.tt/2016/09/40-under-40/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:351:"<p>I&#8217;m still catching up with things after the Automattic Grand Meetup, but excited today to be included on the <a href="http://fortune.com/40-under-40/">Fortune 40 under 40 list</a>, which I&#8217;ve graduated to after being termed out of the under 30 lists. I came in at #20 and it&#8217;s great to see lots of friends on the list as well.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 22 Sep 2016 19:33:14 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:39;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:35:"BuddyPress: BuddyPress 2.7.0 Beta 1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"https://buddypress.org/?p=258997";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://buddypress.org/2016/09/buddypress-2-7-0-beta-1/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3800:"<p>BuddyPress 2.7.0 Beta 1 is lovingly packed with new features and enhancements and is now available for testing. You can download the <a href="https://downloads.wordpress.org/plugin/buddypress.2.7.0-beta1.zip">BP 2.7.0-beta1</a> zip or get a copy via our Subversion repository. We’d love to have your feedback and testing help.</p>\n<p><strong>N.B.</strong>If you are still using WordPress 4.1, we remind you that <a href="https://bpdevel.wordpress.com/2016/07/21/in-accordance-with-our-wp/">BuddyPress 2.7.0 will require at least WordPress 4.2</a>.</p>\n<p>A detailed changelog will be part of our official release notes, but, until then, here’s a tasty list of some of our favorite changes. (Check out <a href="https://buddypress.trac.wordpress.org/query?status=closed&group=resolution&milestone=2.7">this report</a> on Trac for the full list.)</p>\n<ul>\n<li><a href="https://bpdevel.wordpress.com/2016/09/19/group-queries-have-been-rewritten-for-bp-2-7/">Groups query overhaul</a> (<a href="https://buddypress.trac.wordpress.org/ticket/5451">#5451</a>)</li>\n<li>Improved extended profile date field (<a href="https://buddypress.trac.wordpress.org/ticket/5500">#5500</a>)</li>\n<li>Localized timestamps (<a href="https://buddypress.trac.wordpress.org/ticket/5757">#5757</a>)</li>\n<li>Easy unsubscribe from email links (<a href="https://buddypress.trac.wordpress.org/ticket/6932">#6932</a>)</li>\n<li>Front-end group types integration (<a href="https://buddypress.trac.wordpress.org/ticket/7210">#7210</a>)</li>\n<li>Member type and group type filters in Users and Groups admin screens (<a href="https://buddypress.trac.wordpress.org/ticket/6060">#6060</a>, <a href="https://buddypress.trac.wordpress.org/ticket/7175">#7175</a>)</li>\n<li>Use WP page names for BP directory pages headings (<a href="https://buddypress.trac.wordpress.org/ticket/6765">#6765</a>)</li>\n<li>Use WP 4.3 site icon feature to set a blog&#8217;s &#8220;profile photo&#8221; (<a href="https://buddypress.trac.wordpress.org/ticket/6544">#6544</a>)</li>\n<li>Update BP_buttons class to accept new arguments (<a href="https://buddypress.trac.wordpress.org/ticket/7226">#7226</a>)</li>\n<li>Accessibility updates for the front-end and back-end screens (<a href="https://buddypress.trac.wordpress.org/ticket/6871">#6871</a>, <a href="https://buddypress.trac.wordpress.org/ticket/7105">#6881</a>, <a href="https://buddypress.trac.wordpress.org/ticket/7090">#7090</a>, <a href="https://buddypress.trac.wordpress.org/ticket/7222">#7222</a>, and many others!)</li>\n<li>Templating enhancements (<a href="https://buddypress.trac.wordpress.org/ticket/6844">#6884</a>, <a href="https://buddypress.trac.wordpress.org/ticket/7132">#7132</a>)</li>\n<li>Improvements to a single group&#8217;s management screens (<a href="https://buddypress.trac.wordpress.org/ticket/7079">#7079</a>, <a href="https://buddypress.trac.wordpress.org/ticket/6385">#6385</a>, <a href="https://buddypress.trac.wordpress.org/ticket/7105">#7105</a>)</li>\n<li>Many, many performance improvements (<a href="https://buddypress.trac.wordpress.org/ticket/7120">#7120</a>, <a href="https://buddypress.trac.wordpress.org/ticket/6978">#6978</a>, <a href="https://buddypress.trac.wordpress.org/ticket/7208">#7208</a>, and more!)</li>\n<li>Support for querying for groups by new column <code>parent_id</code> (<a href="https://buddypress.trac.wordpress.org/ticket/3961">#3961</a>)</li>\n</ul>\n<p>BP 2.7.0 is almost ready, but please do not run it in a production environment just yet. Let us know of any issues you find in the <a href="https://buddypress.org/support/">support forums</a> and/or <a href="https://buddypress.trac.wordpress.org/">development tracker</a>.</p>\n<p>Thanks everyone for all your help to date. We are excited to release BuddyPress 2.7.0 in mid-October!</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 22 Sep 2016 03:05:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"@mercime";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:40;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:36:"HeroPress: Growing Up With WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:55:"http://heropress.com/?post_type=heropress-essays&p=1339";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:54:"http://heropress.com/essays/growing-up-with-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:5035:"<img width="960" height="480" src="http://heropress.com/wp-content/uploads/2016/09/092116-1024x512.jpg" class="attachment-large size-large wp-post-image" alt="Pull Quote: I\'ve loved seeing how the WordPress community has become more kid friendly." /><p>Hey gang, I’m Sophia DeRosia, I’m 14 years old, I’m homeschooled, and I’m here to tell you my WordPress story.</p>\n<p>I grew up with WordPress. My entire life my dad, Topher DeRosia, worked with WordPress. At one point a couple years ago he tried to convince me to create a blog, and I had originally said no, but maybe a year or two later <a href="http://eringoblog.org/">Erin Go Blog</a> was born and I started my long journey with WordPress.</p>\n<p>My first WordCamp was in Grand Rapids and my family had decided to help out with it. It was awesome, we did that twice and attended once. I believe my first WordCamp that I attended was actually in Chicago which was also, yes, awesome. I met a lot of great people there, they all made me feel welcome even though I was only eleven or twelve at the time.</p>\n<blockquote><p>I have NEVER felt like people in WordPress talk down to me or think of me as a five year old just because I’m a kid.</p></blockquote>\n<p>Last night my mom was asking me some questions for this essay and one of them was “How has WordPress changed you?” And that one took me a minute to answer. I didn’t really know how WordPress itself had changed me, but then I thought about the people I had met, those who have taught me, and the support I’ve always felt. It was the WordPress community that really changed me.</p>\n<p>Being a kid in WordPress has definitely benefited me. Being around adults so much I’ve learned how to talk to them, I’m not afraid to talk to adults or ask for help, and I’ve made some awesome friends that I know I can count on. I also have some really good job options, whether it’s designer, developer, or business. Having my own blog has helped me with writing as well. I may not have a deep passion for it but I certainly like it and may not have known that if I hadn’t had a blog.</p>\n<p>I’ve loved seeing how the WordPress community has become more kid friendly. It’s a safe, fun environment for kids and it’s only becoming more so. I’ve loved seeing how WordPress has grown and changed over the years I’ve been using it. So to parents out there who have kids that may be a designer, developer, or business aficionado I recommend WordPress.</p>\n<blockquote><p>WordPress is a fun, easy way to open your kids up to many options for their future.</p></blockquote>\n<p>And to the kids out there who are interested in WordPress, WordCamps aren’t the only way to learn it. All over the world they have meetups where you can ask questions and meet some cool people, and there are countless other ways to learn it.</p>\n<p>If you think WordPress may be the way you want to go then try it. You don’t have to stick with it but at least try it, I guarantee you will make some great friends like I have and learn lots.</p>\n<p>Have fun on your adventure!</p>\n<div class="rtsocial-container rtsocial-container-align-right rtsocial-horizontal"><div class="rtsocial-twitter-horizontal"><div class="rtsocial-twitter-horizontal-button"><a title="Tweet: Growing Up With WordPress" class="rtsocial-twitter-button" href="https://twitter.com/share?text=Growing%20Up%20With%20WordPress&via=heropress&url=http%3A%2F%2Fheropress.com%2Fessays%2Fgrowing-up-with-wordpress%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-fb-horizontal fb-light"><div class="rtsocial-fb-horizontal-button"><a title="Like: Growing Up With WordPress" class="rtsocial-fb-button rtsocial-fb-like-light" href="https://www.facebook.com/sharer.php?u=http%3A%2F%2Fheropress.com%2Fessays%2Fgrowing-up-with-wordpress%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-linkedin-horizontal"><div class="rtsocial-linkedin-horizontal-button"><a class="rtsocial-linkedin-button" href="https://www.linkedin.com/shareArticle?mini=true&url=http%3A%2F%2Fheropress.com%2Fessays%2Fgrowing-up-with-wordpress%2F&title=Growing+Up+With+WordPress" rel="nofollow" target="_blank" title="Share: Growing Up With WordPress"></a></div></div><div class="rtsocial-pinterest-horizontal"><div class="rtsocial-pinterest-horizontal-button"><a class="rtsocial-pinterest-button" href="https://pinterest.com/pin/create/button/?url=http://heropress.com/essays/growing-up-with-wordpress/&media=http://heropress.com/wp-content/uploads/2016/09/092116-150x150.jpg&description=Growing Up With WordPress" rel="nofollow" target="_blank" title="Pin: Growing Up With WordPress"></a></div></div><a rel="nofollow" class="perma-link" href="http://heropress.com/essays/growing-up-with-wordpress/" title="Growing Up With WordPress"></a></div><p>The post <a rel="nofollow" href="http://heropress.com/essays/growing-up-with-wordpress/">Growing Up With WordPress</a> appeared first on <a rel="nofollow" href="http://heropress.com">HeroPress</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 21 Sep 2016 16:36:26 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Sophia DeRosia";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:41;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:64:"Post Status: What is a WordPress theme anyway? — Draft podcast";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"https://poststatus.com/?p=26808";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://poststatus.com/wordpress-theme-anyway-draft-podcast/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2659:"<p>Welcome to the Post Status <a href="https://poststatus.com/category/draft">Draft podcast</a>, which you can find <a href="https://itunes.apple.com/us/podcast/post-status-draft-wordpress/id976403008">on iTunes</a>, <a href="https://play.google.com/music/m/Ih5egfxskgcec4qadr3f4zfpzzm?t=Post_Status__Draft_WordPress_Podcast">Google Play</a>, <a href="http://www.stitcher.com/podcast/krogsgard/post-status-draft-wordpress-podcast">Stitcher</a>, and <a href="http://simplecast.fm/podcasts/1061/rss">via RSS</a> for your favorite podcatcher. Post Status Draft is hosted by Joe Hoyle &#8212; the CTO of Human Made &#8212; and Brian Krogsgard.</p>\n<p><span>In this episode, Joe and Brian discuss WordPress themes, the functionality people put into them, and the challenges that face the WordPress ecosystem with the current state of theming. They also discuss various theme frameworks and how they are setup, common post types and how they can better be supported, and the popularity of page builders.</span></p>\n<p><a href="https://audio.simplecast.com/47827.mp3">https://audio.simplecast.com/47827.mp3</a><br />\n<a href="http://audio.simplecast.com/47827.mp3">Direct Download</a></p>\n<h3>Topics</h3>\n<ul>\n<li>What should a theme do?</li>\n<li>Theme vs. Plugin functionality &#8212; and mobility potential between themes\n<ul>\n<li>Canonical post types</li>\n</ul>\n</li>\n<li>Difference between commercial themes and .org distributed free themes\n<ul>\n<li>Restrictions</li>\n<li>All-in-one solution &#8220;promises&#8221;</li>\n</ul>\n</li>\n<li>Page builders and their role in theming</li>\n<li>Other theme options via the REST API</li>\n</ul>\n<h3>Links</h3>\n<ul>\n<li><a href="https://poststatus.com/on-wordpress-themes-and-frameworks/">On WordPress themes and frameworks</a></li>\n<li><a href="http://underscores.me/">Underscores</a></li>\n<li><a href="http://www.csszengarden.com/">CSS Zen Garden</a></li>\n<li><a href="http://themehybrid.com/hybrid-core">Hybrid Core</a></li>\n<li><a href="http://my.studiopress.com/themes/genesis/">Genesis</a></li>\n<li><a href="https://poststatus.com/wordpress-com-jetpack-lead-way-toward-standardizing-custom-post-types/">WordPress.com and Jetpack should lead the way to standardizing CPTs</a></li>\n</ul>\n<h3>Sponsor: WP101</h3>\n<p><span>The <a href="https://wp101plugin.com/">WP101 Plugin</a> frees your time, enabling you to focus on what you do best, while providing our popular WordPress 101 tutorial videos directly in your client&#8217;s dashboard. You can even add your own videos! Go to <a href="https://wp101plugin.com/">wp101plugin.com</a> for more information, and thanks to WP101 for being a Post Status partner.</span></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 19 Sep 2016 17:29:12 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Katie Richards";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:42;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:74:"WordPress.tv Blog: Data-Driven SEO with Google Analytics – Rebecca Haden";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"http://blog.wordpress.tv/?p=634";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:89:"https://blog.wordpress.tv/2016/09/10/data-driven-seo-with-google-analytics-rebecca-haden/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1048:"<div class="video-description">\n<p>SEO can be confusing if you rely on tips and tricks. Instead, you can rely on data from your own website.This presentation by Rebecca Haden from  <a href="http://wordpress.tv/event/wordcamp-fayetteville-2016/">WordCamp Fayetteville 2016</a> helps you to get to know Google Analytics and other analytics tools with WordPress plugins, find the actionable information in your analytics reports, and implement your own SEO strategy.</p>\n<p></p>\n<p><a href="http://2016.fayetteville.wordcamp.org/files/2016/07/Data-Driven-SEO.ppt">Presentation Slides »</a></p>\n<p>More great WordCamp videos on <a href="http://wordpress.tv/">WordPress.tv »</a></p>\n</div><br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/wptvblog.wordpress.com/634/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/wptvblog.wordpress.com/634/" /></a> <img alt="" border="0" src="https://pixel.wp.com/b.gif?host=blog.wordpress.tv&blog=5310177&post=634&subd=wptvblog&ref=&feed=1" width="1" height="1" />";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 10 Sep 2016 00:16:08 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Jerry Bates";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:43;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:58:"Dev Blog: WordPress 4.6.1 Security and Maintenance Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4507";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:84:"https://wordpress.org/news/2016/09/wordpress-4-6-1-security-and-maintenance-release/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2756:"<p>WordPress 4.6.1 is now available. This is a <strong>security release</strong> for all previous versions and we strongly encourage you to update your sites immediately.</p>\n<p>WordPress versions 4.6 and earlier are affected by two security issues: a cross-site scripting vulnerability via image filename, reported by SumOfPwn researcher <a href="https://twitter.com/cengizhansahin">Cengiz Han Sahin</a>; and a path traversal vulnerability in the upgrade package uploader, reported by <a href="https://dominikschilling.de/">Dominik Schilling</a> from the WordPress security team.</p>\n<p>Thank you to the reporters for practicing <a href="https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/">responsible disclosure</a>.</p>\n<p>In addition to the security issues above, WordPress 4.6.1 fixes 15 bugs from 4.6. For more information, see the <a href="https://codex.wordpress.org/Version_4.6.1">release notes</a> or consult the <a href="https://core.trac.wordpress.org/query?milestone=4.6.1">list of changes</a>.</p>\n<p><a href="https://wordpress.org/download/">Download WordPress 4.6.1</a> or venture over to Dashboard → Updates and simply click “Update Now.” Sites that support automatic background updates are already beginning to update to WordPress 4.6.1.</p>\n<p>Thanks to everyone who contributed to 4.6.1:</p>\n<p><a href="https://profiles.wordpress.org/azaozz">Andrew Ozz</a>, <a href="https://profiles.wordpress.org/gitlost">bonger</a>, <a href="https://profiles.wordpress.org/boonebgorges">Boone Gorges</a>, <a href="https://profiles.wordpress.org/chaos-engine">Chaos Engine</a>, <a href="https://profiles.wordpress.org/danielkanchev">Daniel Kanchev</a>, <a href="https://profiles.wordpress.org/dd32">Dion Hulse</a>, <a href="https://profiles.wordpress.org/drewapicture">Drew Jaynes</a>, <a href="https://profiles.wordpress.org/flixos90">Felix Arntz</a>, <a href="https://profiles.wordpress.org/frozzare">Fredrik Forsmo</a>, <a href="https://profiles.wordpress.org/pento">Gary Pendergast</a>, <a href="https://profiles.wordpress.org/geminorum">geminorum</a>, <a href="https://profiles.wordpress.org/iandunn">Ian Dunn</a>, <a href="https://profiles.wordpress.org/ionutst">Ionut Stanciu</a>, <a href="https://profiles.wordpress.org/jeremyfelt">Jeremy Felt</a>, <a href="https://profiles.wordpress.org/joemcgill">Joe McGill</a>, <a href="https://profiles.wordpress.org/clorith">Marius L. J. (Clorith)</a>, <a href="https://profiles.wordpress.org/swissspidy">Pascal Birchler</a>, <a href="https://profiles.wordpress.org/rpayne7264">Robert D Payne</a>, <a href="https://profiles.wordpress.org/sergeybiryukov">Sergey Biryukov</a>, and <a href="https://profiles.wordpress.org/nmt90">Triet Minh</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 07 Sep 2016 15:52:09 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Jeremy Felt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:44;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:51:"Akismet: Akismet WordPress Plugin 3.2 Now Available";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"http://blog.akismet.com/?p=1915";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:65:"https://blog.akismet.com/2016/09/06/akismet-wordpress-plugin-3-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1308:"<p>Version 3.2 of <a href="http://wordpress.org/plugins/akismet/">the Akismet plugin for WordPress</a> is available.</p>\n<p>In addition to six minor bugfixes, version 3.2 includes a <a href="http://wp-cli.org">WP-CLI</a> module, so you can now check and recheck comments from the command line. (For usage instructions, run <code>wp help akismet</code> or see the documentation in <a href="https://plugins.trac.wordpress.org/browser/akismet/trunk/class.akismet-cli.php">the module</a>.) For full details on all of the changes since version 3.1.11, see <a href="https://plugins.trac.wordpress.org/log/akismet/trunk?rev=1491265&stop_rev=1418219&verbose=on">the changelog</a>.</p>\n<p>To upgrade, visit the Updates page of your WordPress dashboard and follow the instructions. If you need to download the plugin zip file directly, links to all versions are available in <a href="http://wordpress.org/plugins/akismet/">the WordPress plugins directory</a>.</p><br />  <a rel="nofollow" href="http://feeds.wordpress.com/1.0/gocomments/akismet.wordpress.com/1915/"><img alt="" border="0" src="http://feeds.wordpress.com/1.0/comments/akismet.wordpress.com/1915/" /></a> <img alt="" border="0" src="https://pixel.wp.com/b.gif?host=blog.akismet.com&blog=116920&post=1915&subd=akismet&ref=&feed=1" width="1" height="1" />";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 06 Sep 2016 17:44:17 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:17:"Christopher Finke";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:45;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:46:"WP Mobile Apps: WordPress for iOS: Version 6.4";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://apps.wordpress.com/?p=3568";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:68:"https://apps.wordpress.com/2016/08/26/wordpress-for-ios-version-6-4/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4716:"<p>Hi there, WordPress users! <a href="https://itunes.apple.com/us/app/wordpress/id335703880?mt=8&uo=6&at=&ct=">Version 6.4 of the WordPress for iOS app</a> is now available in the App Store.</p>\n<h1>What&#8217;s New:</h1>\n<p><strong>iPad Keyboard Shortcuts.</strong> Press down the command key on your external keyboard to see a list of available shortcuts in the main screen and in the post editor.</p>\n\n<a href="https://apps.wordpress.com/img_0007/"><img width="300" height="225" src="https://apps.files.wordpress.com/2016/08/img_0007.png?w=300&h=225" class="attachment-medium size-medium" alt="Hold down the command key, and see the available shortcuts." /></a>\n<a href="https://apps.wordpress.com/img_0006/"><img width="300" height="225" src="https://apps.files.wordpress.com/2016/08/img_0006.png?w=300&h=225" class="attachment-medium size-medium" alt="There are many shortcuts you can use in the post editor, too." /></a>\n\n<p><strong>Share Media.</strong> Our sharing extension now supports media, too!</p>\n\n<a href="https://apps.wordpress.com/img_2385/"><img width="169" height="300" src="https://apps.files.wordpress.com/2016/08/img_2385.png?w=169&h=300" class="attachment-medium size-medium" alt="Select any image and tap on the WordPress icon." /></a>\n<a href="https://apps.wordpress.com/img_2386/"><img width="169" height="300" src="https://apps.files.wordpress.com/2016/08/img_2386.png?w=169&h=300" class="attachment-medium size-medium" alt="Add a message and share it to your blog!" /></a>\n\n<p><strong>People Management.</strong> You can now manage your site&#8217;s users and roles using your mobile device.</p>\n\n<a href="https://apps.wordpress.com/img_2392/"><img width="169" height="300" src="https://apps.files.wordpress.com/2016/08/img_2392.png?w=169&h=300" class="attachment-medium size-medium" alt="A new people management section is available." /></a>\n<a href="https://apps.wordpress.com/img_2393/"><img width="169" height="300" src="https://apps.files.wordpress.com/2016/08/img_2393.png?w=169&h=300" class="attachment-medium size-medium" alt="See a list of your blog\'s users and their roles." /></a>\n<a href="https://apps.wordpress.com/img_2394/"><img width="169" height="300" src="https://apps.files.wordpress.com/2016/08/img_2394.png?w=169&h=300" class="attachment-medium size-medium" alt="Tap on any person to see their details." /></a>\n\n<p><strong>Search in the Reader.</strong> The Reader now has search capability and autocompletes suggestions.</p>\n\n<a href="https://apps.wordpress.com/img_2390/"><img width="169" height="300" src="https://apps.files.wordpress.com/2016/08/img_23901.png?w=169&h=300" class="attachment-medium size-medium" alt="Tap the magnification icon on the top right corner." /></a>\n<a href="https://apps.wordpress.com/img_2389/"><img width="169" height="300" src="https://apps.files.wordpress.com/2016/08/img_2389.png?w=169&h=300" class="attachment-medium size-medium" alt="Searching is easier than ever." /></a>\n\n<p><strong>Improved Gestures.</strong> Full screen image previews can be dismissed with a swanky flick/toss gesture.</p>\n<p><strong>Bugs Squashed.</strong> A new homemade bug spray formula has allowed us to squash <a href="https://github.com/wordpress-mobile/WordPress-iOS/issues?q=is%3Aclosed+is%3Aissue+milestone%3A6.4+label%3A%22%5BType%5D+Bug%22">many uninvited guests</a>.</p>\n<p><strong>And much more! </strong>You can see the full list of changes <a href="https://github.com/wordpress-mobile/WordPress-iOS/issues?utf8=✓&q=is%3Aissue%20is%3Aclosed%20milestone%3A6.4">here</a>.</p>\n<h1>Thank You</h1>\n<p>Thanks to all of the contributors who worked on this release:<br />\n<a href="https://github.com/aerych">@aerych</a>, <a href="https://github.com/astralbodies">@astralbodies</a>, <a href="https://github.com/claudiosmweb">@claudiosmweb</a>, <a href="https://github.com/diegoreymendez">@diegoreymendez</a>, <a href="https://github.com/frosty">@frosty</a>, <a href="https://github.com/jleandroperez">@jleandroperez</a>, <a href="https://github.com/koke">@koke</a>, <a href="https://github.com/kurzee">@kurzee</a>, <a href="https://github.com/kwonye">@kwonye</a>, <a href="https://github.com/oguzkocer">@oguzkocer</a>, <a href="https://github.com/sendhil">@sendhil</a>, <a href="https://github.com/SergioEstevao">@SergioEstevao</a>.</p>\n<p>You can track the development progress for the next update by visiting <a href="https://github.com/wordpress-mobile/WordPress-iOS/issues?utf8=✓&q=is%3Aissue+milestone%3A6.5+" target="_blank">our 6.5 milestone on GitHub</a>. Until next time!</p><img alt="" border="0" src="https://pixel.wp.com/b.gif?host=apps.wordpress.com&blog=108068616&post=3568&subd=apps&ref=&feed=1" width="1" height="1" />";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 26 Aug 2016 12:27:45 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"diegoreymendez";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:46;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:50:"WP Mobile Apps: WordPress for Android: Version 5.7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"http://apps.wordpress.com/?p=3535";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:72:"https://apps.wordpress.com/2016/08/26/wordpress-for-android-version-5-7/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2814:"<p>Hello WordPress users! <a href="https://play.google.com/store/apps/details?id=org.wordpress.android" target="_blank">Version 5.7 of the WordPress for Android app</a> is now available in the Google Play Store.</p>\n<h1>New &#8220;Plans&#8221; section in My Site</h1>\n<p>Starting with 5.7, you can see your current WordPress.com plan and learn more about the benefits we offer in other plans.</p>\n<p><img class="aligncenter wp-image-3532" src="https://apps.files.wordpress.com/2016/08/screenshot-2016-08-02_15-46-12-755.png?w=600" alt="screenshot-2016-08-02_15.46.12.755" /></p>\n<h1>Manage your followers and viewers from the &#8220;People Management&#8221; screen</h1>\n<p>You&#8217;re now able to use the app to invite new Administrators, Editors, Authors or Contributors to your site, or remove unwanted followers.</p>\n<p><img class="aligncenter wp-image-3533" src="https://apps.files.wordpress.com/2016/08/screenshot-2016-08-02_15-51-08-242.png?w=600" alt="screenshot-2016-08-02_15.51.08.242" /></p>\n<h1 id="other-changes">Other Changes</h1>\n<p>Version 5.7 also comes with a few other changes and fixes:</p>\n<ul>\n<li>Reader tweaks in the Post Detail screen for tablets.</li>\n<li>Keeps the &#8220;View Site&#8221; link visible for newly created users.</li>\n<li>Fixes a rare crash when creating a new account.</li>\n</ul>\n<p>You can track our development progress for the next release by visiting <a href="https://github.com/wordpress-mobile/WordPress-Android/milestones/5.8">our 5.8 milestone on GitHub</a>.</p>\n<h1>Beta</h1>\n<p>Do you like keeping up with what’s new in the app? Do you enjoy testing new stuff before anyone else? Our testers have access to beta versions with updates shipped directly through Google Play. The beta versions may have new features, new fixes — and possibly new bugs! Testers make it possible for us to improve the overall app experience, and offer us invaluable development feedback.</p>\n<p>Want to become a tester? <a href="https://play.google.com/apps/testing/org.wordpress.android">Opt-in</a>!</p>\n<h1>Thank you</h1>\n<p>Thanks to our GitHub contributors: <a href="https://github.com/0nko">@0nko</a>, <a href="https://github.com/aforcier">@aforcier</a>, <a href="https://github.com/hypest">@hypest</a>, <a href="https://github.com/karambir252">@karambir252</a>, <a href="https://github.com/khaykov">@khaykov</a>, <a href="https://github.com/kwonye">@kwonye</a>, <a href="https://github.com/maxme">@maxme</a>, <a href="https://github.com/mzorz">@mzorz</a>, <a href="https://github.com/nbradbury">@nbradbury</a>, <a href="https://github.com/oguzkocer">@oguzkocer</a>, and <a href="https://github.com/theck13">@theck13</a>.</p><img alt="" border="0" src="https://pixel.wp.com/b.gif?host=apps.wordpress.com&blog=108068616&post=3535&subd=apps&ref=&feed=1" width="1" height="1" />";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 26 Aug 2016 11:33:19 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"Maxime";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:47;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:36:"Dev Blog: WordPress 4.6 “Pepper”";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4444";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:42:"https://wordpress.org/news/2016/08/pepper/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:24736:"<p>Version 4.6 of WordPress, named “Pepper” in honor of jazz baritone saxophonist Park Frederick “Pepper” Adams III, is available for download or update in your WordPress dashboard. New features in 4.6 help you to focus on the important things while feeling more at home.</p>\n<p></p>\n<hr />\n<h2>Streamlined Updates</h2>\n<p><img class="aligncenter wp-image-4454 size-large" src="https://i0.wp.com/wordpress.org/news/files/2016/08/streamlined-updates.png?resize=632%2C379&ssl=1" /></p>\n<p>Don’t lose your place: stay on the same page while you update, install, and delete your plugins and themes.</p>\n<hr />\n<h2>Native Fonts</h2>\n<p><img class="aligncenter wp-image-4455 size-large" src="https://i2.wp.com/wordpress.org/news/files/2016/08/native-fonts.png?resize=632%2C379&ssl=1" /></p>\n<p>The WordPress dashboard now takes advantage of the fonts you already have, making it load faster and letting you feel more at home on whatever device you use.</p>\n<hr />\n<h2>Editor Improvements</h2>\n<div>\n<h3>Inline Link Checker</h3>\n<p><img class="aligncenter wp-image-4456 size-full" src="https://i1.wp.com/wordpress.org/news/files/2016/08/inline-link-checker.png?resize=632%2C379&ssl=1" /></p>\n<p>Ever accidentally made a link to https://wordpress.org/example.org? Now WordPress automatically checks to make sure you didn’t.</p>\n</div>\n<div>\n<h3>Content Recovery</h3>\n<p><img class="aligncenter wp-image-4457 size-full" src="https://i1.wp.com/wordpress.org/news/files/2016/08/content-recovery.png?resize=632%2C379&ssl=1" /></p>\n<p>As you type, WordPress saves your content to the browser. Recovering saved content is even easier with WordPress 4.6.</p>\n</div>\n<hr />\n<h2>Under The Hood</h2>\n<h3>Resource Hints</h3>\n<p><a href="https://make.wordpress.org/core/2016/07/06/resource-hints-in-4-6/">Resource hints help browsers</a> decide which resources to fetch and preprocess. WordPress 4.6 adds them automatically for your styles and scripts making your site even faster.</p>\n<h3>Robust Requests</h3>\n<p>The HTTP API now leverages the Requests library, improving HTTP standard support and adding case-insensitive headers, parallel HTTP requests, and support for Internationalized Domain Names.</p>\n<h3><code>WP_Term_Query</code> and <code>WP_Post_Type</code></h3>\n<p>A new <code><a href="https://developer.wordpress.org/reference/classes/wp_term_query">WP_Term_Query</a></code> class adds flexibility to query term information while a new <code><a href="https://developer.wordpress.org/reference/classes/wp_post_type">WP_Post_Type</a></code> object makes interacting with post types more predictable.</p>\n<h3>Meta Registration API</h3>\n<p>The Meta Registration API <a href="https://make.wordpress.org/core/2016/07/08/enhancing-register_meta-in-4-6/">has been expanded</a> to support types, descriptions, and REST API visibility.</p>\n<h3>Translations On Demand</h3>\n<p>WordPress will install and use the newest language packs for your plugins and themes as soon as they’re available from <a href="https://translate.wordpress.org/">WordPress.org’s community of translators</a>.</p>\n<h3>JavaScript Library Updates</h3>\n<p>Masonry 3.3.2, imagesLoaded 3.2.0, MediaElement.js 2.22.0, TinyMCE 4.4.1, and Backbone.js 1.3.3 are bundled.</p>\n<h3>Customizer APIs for Setting Validation and Notifications</h3>\n<p>Settings now have an <a href="https://make.wordpress.org/core/2016/07/05/customizer-apis-in-4-6-for-setting-validation-and-notifications/">API for enforcing validation constraints</a>. Likewise, customizer controls now support notifications, which are used to display validation errors instead of failing silently.</p>\n<h3>Multisite, now faster than ever</h3>\n<p>Cached and comprehensive site queries improve your network admin experience. The addition of <code><a href="https://developer.wordpress.org/reference/classes/wp_site_query">WP_Site_Query</a></code> and <code><a href="https://developer.wordpress.org/reference/classes/wp_network_query">WP_Network_Query</a></code> help craft advanced queries with less effort.</p>\n<hr />\n<h2>The Crew</h2>\n<p>This release was led by <a href="https://dominikschilling.de/">Dominik Schilling</a>, backed up by <a href="https://www.garthmortensen.com/">Garth Mortensen</a> as Release Deputy, and with the help of these fine individuals. There are <span>272</span> contributors with props in this release. Pull up some Pepper Adams on your music service of choice, and check out some of their profiles:</p>\n<a href="https://profiles.wordpress.org/a5hleyrich">A5hleyRich</a>, <a href="https://profiles.wordpress.org/jorbin">Aaron Jorbin</a>, <a href="https://profiles.wordpress.org/achbed">achbed</a>, <a href="https://profiles.wordpress.org/adamsilverstein">Adam Silverstein</a>, <a href="https://profiles.wordpress.org/adamsoucie">Adam Soucie</a>, <a href="https://profiles.wordpress.org/adrianosilvaferreira">Adriano Ferreira</a>, <a href="https://profiles.wordpress.org/afineman">afineman</a>, <a href="https://profiles.wordpress.org/mrahmadawais">Ahmad Awais</a>, <a href="https://profiles.wordpress.org/aidvu">aidvu</a>, <a href="https://profiles.wordpress.org/akibjorklund">Aki Bj&#246;rklund</a>, <a href="https://profiles.wordpress.org/xknown">Alex Concha</a>, <a href="https://profiles.wordpress.org/xavortm">Alex Dimitrov</a>, <a href="https://profiles.wordpress.org/alexkingorg">Alex King</a>, <a href="https://profiles.wordpress.org/viper007bond">Alex Mills (Viper007Bond)</a>, <a href="https://profiles.wordpress.org/alexvandervegt">alexvandervegt</a>, <a href="https://profiles.wordpress.org/ambrosey">Alice Brosey</a>, <a href="https://profiles.wordpress.org/aaires">Ana Aires</a>, <a href="https://profiles.wordpress.org/afercia">Andrea Fercia</a>, <a href="https://profiles.wordpress.org/andg">Andrea Gandino</a>, <a href="https://profiles.wordpress.org/nacin">Andrew Nacin</a>, <a href="https://profiles.wordpress.org/azaozz">Andrew Ozz</a>, <a href="https://profiles.wordpress.org/rockwell15">Andrew Rockwell</a>, <a href="https://profiles.wordpress.org/afragen">Andy Fragen</a>, <a href="https://profiles.wordpress.org/andizer">Andy Meerwaldt</a>, <a href="https://profiles.wordpress.org/andy">Andy Skelton</a>, <a href="https://profiles.wordpress.org/anilbasnet">Anil Basnet</a>, <a href="https://profiles.wordpress.org/ankit-k-gupta">Ankit K Gupta</a>, <a href="https://profiles.wordpress.org/anneschmidt">anneschmidt</a>, <a href="https://profiles.wordpress.org/zuige">Antti Kuosmanen</a>, <a href="https://profiles.wordpress.org/ideag">Arunas Liuiza</a>, <a href="https://profiles.wordpress.org/barry">Barry</a>, <a href="https://profiles.wordpress.org/barryceelen">Barry Ceelen</a>, <a href="https://profiles.wordpress.org/kau-boy">Bernhard Kau</a>, <a href="https://profiles.wordpress.org/birgire">Birgir Erlendsson (birgire)</a>, <a href="https://profiles.wordpress.org/bobbingwide">bobbingwide</a>, <a href="https://profiles.wordpress.org/gitlost">bonger</a>, <a href="https://profiles.wordpress.org/boonebgorges">Boone B. Gorges</a>, <a href="https://profiles.wordpress.org/bradt">Brad Touesnard</a>, <a href="https://profiles.wordpress.org/kraftbj">Brandon Kraft</a>, <a href="https://profiles.wordpress.org/brianvan">brianvan</a>, <a href="https://profiles.wordpress.org/borgesbruno">Bruno Borges</a>, <a href="https://profiles.wordpress.org/bpetty">Bryan Petty</a>, <a href="https://profiles.wordpress.org/purcebr">Bryan Purcell</a>, <a href="https://profiles.wordpress.org/chandrapatel">Chandra Patel</a>, <a href="https://profiles.wordpress.org/chaos-engine">Chaos Engine</a>, <a href="https://profiles.wordpress.org/chouby">Chouby</a>, <a href="https://profiles.wordpress.org/chriscct7">Chris Christoff (chriscct7)</a>, <a href="https://profiles.wordpress.org/chris_dev">Chris Mok</a>, <a href="https://profiles.wordpress.org/c3mdigital">Chris Olbekson</a>, <a href="https://profiles.wordpress.org/christophherr">Christoph Herr</a>, <a href="https://profiles.wordpress.org/cfinke">Christopher Finke</a>, <a href="https://profiles.wordpress.org/cliffseal">Cliff Seal</a>, <a href="https://profiles.wordpress.org/clubduece">clubduece</a>, <a href="https://profiles.wordpress.org/cmillerdev">cmillerdev</a>, <a href="https://profiles.wordpress.org/craig-ralston">Craig Ralston</a>, <a href="https://profiles.wordpress.org/crstauf">crstauf</a>, <a href="https://profiles.wordpress.org/dabnpits">dabnpits</a>, <a href="https://profiles.wordpress.org/danielbachhuber">Daniel Bachhuber</a>, <a href="https://profiles.wordpress.org/danielhuesken">Daniel H&#252;sken</a>, <a href="https://profiles.wordpress.org/danielkanchev">Daniel Kanchev</a>, <a href="https://profiles.wordpress.org/mte90">Daniele Scasciafratte</a>, <a href="https://profiles.wordpress.org/dashaluna">dashaluna</a>, <a href="https://profiles.wordpress.org/davewarfel">davewarfel</a>, <a href="https://profiles.wordpress.org/davidakennedy">David A. Kennedy</a>, <a href="https://profiles.wordpress.org/davidanderson">David Anderson</a>, <a href="https://profiles.wordpress.org/dbrumbaugh10up">David Brumbaugh</a>, <a href="https://profiles.wordpress.org/dcavins">David Cavins</a>, <a href="https://profiles.wordpress.org/dlh">David Herrera</a>, <a href="https://profiles.wordpress.org/davidmosterd">David Mosterd</a>, <a href="https://profiles.wordpress.org/dshanske">David Shanske</a>, <a href="https://profiles.wordpress.org/realloc">Dennis Ploetner</a>, <a href="https://profiles.wordpress.org/valendesigns">Derek Herman</a>, <a href="https://profiles.wordpress.org/downstairsdev">Devin Price</a>, <a href="https://profiles.wordpress.org/dd32">Dion Hulse</a>, <a href="https://profiles.wordpress.org/dougwollison">Doug Wollison</a>, <a href="https://profiles.wordpress.org/drewapicture">Drew Jaynes</a>, <a href="https://profiles.wordpress.org/iseulde">Ella Iseulde Van Dorpe</a>, <a href="https://profiles.wordpress.org/elrae">elrae</a>, <a href="https://profiles.wordpress.org/ericlewis">Eric Andrew Lewis</a>, <a href="https://profiles.wordpress.org/ethitter">Erick Hitter</a>, <a href="https://profiles.wordpress.org/fab1en">Fabien Quatravaux</a>, <a href="https://profiles.wordpress.org/faison">Faison</a>, <a href="https://profiles.wordpress.org/flixos90">Felix Arntz</a>, <a href="https://profiles.wordpress.org/flyingdr">flyingdr</a>, <a href="https://profiles.wordpress.org/foliovision">FolioVision</a>, <a href="https://profiles.wordpress.org/francescobagnoli">francescobagnoli</a>, <a href="https://profiles.wordpress.org/bueltge">Frank Bueltge</a>, <a href="https://profiles.wordpress.org/frank-klein">Frank Klein</a>, <a href="https://profiles.wordpress.org/efarem">Frank Martin</a>, <a href="https://profiles.wordpress.org/frozzare">Fredrik Forsmo</a>, <a href="https://profiles.wordpress.org/mintindeed">Gabriel Koen</a>, <a href="https://profiles.wordpress.org/gma992">Gabriel Maldonado</a>, <a href="https://profiles.wordpress.org/pento">Gary Pendergast</a>, <a href="https://profiles.wordpress.org/gblsm">gblsm</a>, <a href="https://profiles.wordpress.org/geekysoft">Geeky Software</a>, <a href="https://profiles.wordpress.org/geminorum">geminorum</a>, <a href="https://profiles.wordpress.org/georgestephanis">George Stephanis</a>, <a href="https://profiles.wordpress.org/hardeepasrani">Hardeep Asrani</a>, <a href="https://profiles.wordpress.org/helen">Helen Hou-Sandí</a>, <a href="https://profiles.wordpress.org/henrywright">Henry Wright</a>, <a href="https://profiles.wordpress.org/hugobaeta">Hugo Baeta</a>, <a href="https://profiles.wordpress.org/polevaultweb">Iain Poulson</a>, <a href="https://profiles.wordpress.org/iandunn">Ian Dunn</a>, <a href="https://profiles.wordpress.org/igmoweb">Ignacio Cruz Moreno</a>, <a href="https://profiles.wordpress.org/imath">imath</a>, <a href="https://profiles.wordpress.org/inderpreet99">Inderpreet Singh</a>, <a href="https://profiles.wordpress.org/ionutst">Ionut Stanciu</a>, <a href="https://profiles.wordpress.org/ipstenu">Ipstenu (Mika Epstein)</a>, <a href="https://profiles.wordpress.org/jdgrimes">J.D. Grimes</a>, <a href="https://profiles.wordpress.org/macmanx">James Huff</a>, <a href="https://profiles.wordpress.org/jnylen0">James Nylen</a>, <a href="https://profiles.wordpress.org/underdude">Janne Ala-&#196;ij&#228;l&#228;</a>, <a href="https://profiles.wordpress.org/jaspermdegroot">Jasper de Groot</a>, <a href="https://profiles.wordpress.org/javorszky">javorszky</a>, <a href="https://profiles.wordpress.org/jfarthing84">Jeff Farthing</a>, <a href="https://profiles.wordpress.org/cheffheid">Jeffrey de Wit</a>, <a href="https://profiles.wordpress.org/jeremyfelt">Jeremy Felt</a>, <a href="https://profiles.wordpress.org/endocreative">Jeremy Green</a>, <a href="https://profiles.wordpress.org/jeherve">Jeremy Herve</a>, <a href="https://profiles.wordpress.org/jmichaelward">Jeremy Ward</a>, <a href="https://profiles.wordpress.org/jerrysarcastic">Jerry Bates (jerrysarcastic)</a>, <a href="https://profiles.wordpress.org/jesin">Jesin A</a>, <a href="https://profiles.wordpress.org/jipmoors">Jip Moors</a>, <a href="https://profiles.wordpress.org/joedolson">Joe Dolson</a>, <a href="https://profiles.wordpress.org/joehoyle">Joe Hoyle</a>, <a href="https://profiles.wordpress.org/joemcgill">Joe McGill</a>, <a href="https://profiles.wordpress.org/joelwills">Joel Williams</a>, <a href="https://profiles.wordpress.org/j-falk">Johan Falk</a>, <a href="https://profiles.wordpress.org/johnbillion">John Blackbourn</a>, <a href="https://profiles.wordpress.org/johnjamesjacoby">John James Jacoby</a>, <a href="https://profiles.wordpress.org/johnpgreen">John P. Green</a>, <a href="https://profiles.wordpress.org/john_schlick">John_Schlick</a>, <a href="https://profiles.wordpress.org/kenshino">Jon (Kenshino)</a>, <a href="https://profiles.wordpress.org/jbrinley">Jonathan Brinley</a>, <a href="https://profiles.wordpress.org/spacedmonkey">Jonny Harris</a>, <a href="https://profiles.wordpress.org/joostdevalk">Joost de Valk</a>, <a href="https://profiles.wordpress.org/josephscott">Joseph Scott</a>, <a href="https://profiles.wordpress.org/shelob9">Josh Pollock</a>, <a href="https://profiles.wordpress.org/joshuagoodwin">Joshua Goodwin</a>, <a href="https://profiles.wordpress.org/jpdavoutian">jpdavoutian</a>, <a href="https://profiles.wordpress.org/jrf">jrf</a>, <a href="https://profiles.wordpress.org/jsternberg">jsternberg</a>, <a href="https://profiles.wordpress.org/juanfra">Juanfra Aldasoro</a>, <a href="https://profiles.wordpress.org/juhise">Juhi Saxena</a>, <a href="https://profiles.wordpress.org/julesaus">julesaus</a>, <a href="https://profiles.wordpress.org/justinsainton">Justin Sainton</a>, <a href="https://profiles.wordpress.org/ryelle">Kelly Dwan</a>, <a href="https://profiles.wordpress.org/khag7">Kevin Hagerty</a>, <a href="https://profiles.wordpress.org/ixkaito">Kite</a>, <a href="https://profiles.wordpress.org/kjbenk">kjbenk</a>, <a href="https://profiles.wordpress.org/kovshenin">Konstantin Kovshenin</a>, <a href="https://profiles.wordpress.org/obenland">Konstantin Obenland</a>, <a href="https://profiles.wordpress.org/kurtpayne">Kurt Payne</a>, <a href="https://profiles.wordpress.org/offereins">Laurens Offereins</a>, <a href="https://profiles.wordpress.org/lukecavanagh">Luke Cavanagh</a>, <a href="https://profiles.wordpress.org/latz">Lutz Schr&#246;er</a>, <a href="https://profiles.wordpress.org/mpol">Marcel Pol</a>, <a href="https://profiles.wordpress.org/clorith">Marius L. J. (Clorith)</a>, <a href="https://profiles.wordpress.org/markjaquith">Mark Jaquith</a>, <a href="https://profiles.wordpress.org/mapk">Mark Uraine</a>, <a href="https://profiles.wordpress.org/martinkrcho">martin.krcho</a>, <a href="https://profiles.wordpress.org/mattmiklic">Matt Miklic</a>, <a href="https://profiles.wordpress.org/matt">Matt Mullenweg</a>, <a href="https://profiles.wordpress.org/borkweb">Matthew Batchelder</a>, <a href="https://profiles.wordpress.org/mattyrob">mattyrob</a>, <a href="https://profiles.wordpress.org/wzislam">Mayeenul Islam</a>, <a href="https://profiles.wordpress.org/mdwheele">mdwheele</a>, <a href="https://profiles.wordpress.org/medariox">medariox</a>, <a href="https://profiles.wordpress.org/mehulkaklotar">Mehul Kaklotar</a>, <a href="https://profiles.wordpress.org/meitar">Meitar</a>, <a href="https://profiles.wordpress.org/melchoyce">Mel Choyce</a>, <a href="https://profiles.wordpress.org/roseapplemedia">Michael</a>, <a href="https://profiles.wordpress.org/michaelarestad">Michael Arestad</a>, <a href="https://profiles.wordpress.org/michael-arestad">Michael Arestad</a>, <a href="https://profiles.wordpress.org/michaelbeil">Michael Beil</a>, <a href="https://profiles.wordpress.org/stuporglue">Michael Moore</a>, <a href="https://profiles.wordpress.org/mbijon">Mike Bijon</a>, <a href="https://profiles.wordpress.org/mikehansenme">Mike Hansen</a>, <a href="https://profiles.wordpress.org/mikeschroder">Mike Schroder</a>, <a href="https://profiles.wordpress.org/dimadin">Milan Dinić</a>, <a href="https://profiles.wordpress.org/morganestes">Morgan Estes</a>, <a href="https://profiles.wordpress.org/mt8biz">moto hachi ( mt8.biz )</a>, <a href="https://profiles.wordpress.org/m_uysl">Mustafa Uysal</a>, <a href="https://profiles.wordpress.org/nicholas_io">N&#237;cholas Andr&#233;</a>, <a href="https://profiles.wordpress.org/nextendweb">Nextendweb</a>, <a href="https://profiles.wordpress.org/niallkennedy">Niall Kennedy</a>, <a href="https://profiles.wordpress.org/celloexpressions">Nick Halsey</a>, <a href="https://profiles.wordpress.org/nikschavan">Nikhil Chavan</a>, <a href="https://profiles.wordpress.org/rabmalin">Nilambar Sharma</a>, <a href="https://profiles.wordpress.org/ninos-ego">Ninos</a>, <a href="https://profiles.wordpress.org/alleynoah">Noah</a>, <a href="https://profiles.wordpress.org/noahsilverstein">noahsilverstein</a>, <a href="https://profiles.wordpress.org/odysseygate">odyssey</a>, <a href="https://profiles.wordpress.org/ojrask">ojrask</a>, <a href="https://profiles.wordpress.org/olarmarius">Olar Marius</a>, <a href="https://profiles.wordpress.org/ovann86">ovann86</a>, <a href="https://profiles.wordpress.org/pansotdev">pansotdev</a>, <a href="https://profiles.wordpress.org/swissspidy">Pascal Birchler</a>, <a href="https://profiles.wordpress.org/pbearne">Paul Bearne</a>, <a href="https://profiles.wordpress.org/bassgang">Paul Vincent Beigang</a>, <a href="https://profiles.wordpress.org/paulwilde">Paul Wilde</a>, <a href="https://profiles.wordpress.org/pavelevap">pavelevap</a>, <a href="https://profiles.wordpress.org/pcarvalho">pcarvalho</a>, <a href="https://profiles.wordpress.org/westi">Peter Westwood</a>, <a href="https://profiles.wordpress.org/peterwilsoncc">Peter Wilson</a>, <a href="https://profiles.wordpress.org/peterrknight">PeterRKnight</a>, <a href="https://profiles.wordpress.org/walbo">Petter Walb&#248; Johnsg&#229;rd</a>, <a href="https://profiles.wordpress.org/petya">Petya Raykovska</a>, <a href="https://profiles.wordpress.org/wizzard_">Pieter</a>, <a href="https://profiles.wordpress.org/pollett">Pollett</a>, <a href="https://profiles.wordpress.org/postpostmodern">postpostmodern</a>, <a href="https://profiles.wordpress.org/presskopp">Presskopp</a>, <a href="https://profiles.wordpress.org/prettyboymp">prettyboymp</a>, <a href="https://profiles.wordpress.org/r-a-y">r-a-y</a>, <a href="https://profiles.wordpress.org/rachelbaker">Rachel Baker</a>, <a href="https://profiles.wordpress.org/rafaelangeline">rafaelangeline</a>, <a href="https://profiles.wordpress.org/zetaraffix">raffaella isidori</a>, <a href="https://profiles.wordpress.org/rahulsprajapati">Rahul Prajapati</a>, <a href="https://profiles.wordpress.org/ramiy">Rami Yushuvaev</a>, <a href="https://profiles.wordpress.org/rianrietveld">Rian Rietveld </a>, <a href="https://profiles.wordpress.org/iamfriendly">Richard Tape</a>, <a href="https://profiles.wordpress.org/rpayne7264">Robert D Payne</a>, <a href="https://profiles.wordpress.org/littlerchicken">Robin Cornett</a>, <a href="https://profiles.wordpress.org/rodrigosprimo">Rodrigo Primo</a>, <a href="https://profiles.wordpress.org/ronalfy">Ronald Huereca</a>, <a href="https://profiles.wordpress.org/ruudjoyo">Ruud Laan</a>, <a href="https://profiles.wordpress.org/rmccue">Ryan McCue</a>, <a href="https://profiles.wordpress.org/welcher">Ryan Welcher</a>, <a href="https://profiles.wordpress.org/samantha-miller">Samantha Miller</a>, <a href="https://profiles.wordpress.org/solarissmoke">Samir Shah</a>, <a href="https://profiles.wordpress.org/rosso99">Sara Rosso</a>, <a href="https://profiles.wordpress.org/schlessera">schlessera</a>, <a href="https://profiles.wordpress.org/scottbasgaard">Scott Basgaard</a>, <a href="https://profiles.wordpress.org/sc0ttkclark">Scott Kingsley Clark</a>, <a href="https://profiles.wordpress.org/coffee2code">Scott Reilly</a>, <a href="https://profiles.wordpress.org/wonderboymusic">Scott Taylor</a>, <a href="https://profiles.wordpress.org/screamingdev">screamingdev</a>, <a href="https://profiles.wordpress.org/sebastianpisula">Sebastian Pisula</a>, <a href="https://profiles.wordpress.org/semil">semil</a>, <a href="https://profiles.wordpress.org/sergeybiryukov">Sergey Biryukov</a>, <a href="https://profiles.wordpress.org/shahpranaf">shahpranaf</a>, <a href="https://profiles.wordpress.org/sidati">Sidati</a>, <a href="https://profiles.wordpress.org/neverything">Silvan Hagen</a>, <a href="https://profiles.wordpress.org/simonvik">Simon Vikstr&#246;m</a>, <a href="https://profiles.wordpress.org/sirjonathan">sirjonathan</a>, <a href="https://profiles.wordpress.org/smerriman">smerriman</a>, <a href="https://profiles.wordpress.org/soean">Soeren Wrede</a>, <a href="https://profiles.wordpress.org/southp">southp</a>, <a href="https://profiles.wordpress.org/metodiew">Stanko Metodiev</a>, <a href="https://profiles.wordpress.org/stephdau">Stephane Daury (stephdau)</a>, <a href="https://profiles.wordpress.org/coderste">Stephen</a>, <a href="https://profiles.wordpress.org/netweb">Stephen Edgar</a>, <a href="https://profiles.wordpress.org/stephenharris">Stephen Harris</a>, <a href="https://profiles.wordpress.org/stevenkword">Steven Word</a>, <a href="https://profiles.wordpress.org/stubgo">stubgo</a>, <a href="https://profiles.wordpress.org/sudar">Sudar Muthu</a>, <a href="https://profiles.wordpress.org/patilswapnilv">Swapnil V. Patil</a>, <a href="https://profiles.wordpress.org/tacoverdo">Taco Verdonschot</a>, <a href="https://profiles.wordpress.org/iamtakashi">Takashi Irie</a>, <a href="https://profiles.wordpress.org/karmatosed">Tammie Lister</a>, <a href="https://profiles.wordpress.org/tlovett1">Taylor Lovett</a>, <a href="https://profiles.wordpress.org/themiked">theMikeD</a>, <a href="https://profiles.wordpress.org/thomaswm">thomaswm</a>, <a href="https://profiles.wordpress.org/tfrommen">Thorsten Frommen</a>, <a href="https://profiles.wordpress.org/timothyblynjacobs">Timothy Jacobs</a>, <a href="https://profiles.wordpress.org/tloureiro">tloureiro</a>, <a href="https://profiles.wordpress.org/travisnorthcutt">Travis Northcutt</a>, <a href="https://profiles.wordpress.org/nmt90">Triet Minh</a>, <a href="https://profiles.wordpress.org/grapplerulrich">Ulrich</a>, <a href="https://profiles.wordpress.org/unyson">Unyson</a>, <a href="https://profiles.wordpress.org/szepeviktor">Viktor Sz&#233;pe</a>, <a href="https://profiles.wordpress.org/vishalkakadiya">Vishal Kakadiya</a>, <a href="https://profiles.wordpress.org/vortfu">vortfu</a>, <a href="https://profiles.wordpress.org/svovaf">vovafeldman</a>, <a href="https://profiles.wordpress.org/websupporter">websupporter</a>, <a href="https://profiles.wordpress.org/westonruter">Weston Ruter</a>, <a href="https://profiles.wordpress.org/wp_smith">wp_smith</a>, <a href="https://profiles.wordpress.org/wpfo">wpfo</a>, <a href="https://profiles.wordpress.org/xavivars">Xavi Ivars</a>, <a href="https://profiles.wordpress.org/yoavf">Yoav Farhi</a>, <a href="https://profiles.wordpress.org/tollmanz">Zack Tollman</a>, and <a href="https://profiles.wordpress.org/zakb8">zakb8</a>.\n<p>&nbsp;</p>\n<p>Special thanks go to <a href="https://jerrysarcastic.com/">Jerry Bates</a> for producing the release video and <a href="http://hugobaeta.com/">Hugo Baeta</a> for providing marketing graphics.</p>\n<p>Finally, thanks to all the community translators who worked on WordPress 4.6. Their efforts make it possible to use WordPress 4.6 in 52 languages. The WordPress 4.6 release video has been captioned into 43 languages.</p>\n<p>If you want to follow along or help out, check out <a href="https://make.wordpress.org/">Make WordPress</a> and our <a href="https://make.wordpress.org/core/">core development blog</a>. Thanks for choosing WordPress. See you soon for version 4.7!</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 16 Aug 2016 19:06:46 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:27:"Dominik Schilling (ocean90)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:48;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:57:"Lorelle on WP: Blame WordPress For the World’s Problems";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:37:"http://lorelle.wordpress.com/?p=14150";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:81:"https://lorelle.wordpress.com/2016/08/11/blame-wordpress-for-the-worlds-problems/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:519:"Let&#8217;s call this person &#8220;wise&#8221; using air quotes to give you a description of where they come from in life. This &#8220;wise&#8221; person confronted to me at a public event to announce that WordPress was evil and must be destroyed. &#8220;After all,&#8221; he informed me soundly. &#8220;While WordPress says it supports freedom of speech, it [&#8230;]<img alt="" border="0" src="https://pixel.wp.com/b.gif?host=lorelle.wordpress.com&blog=72&post=14150&subd=lorelle&ref=&feed=1" width="1" height="1" />";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 11 Aug 2016 19:12:14 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:17:"Lorelle VanFossen";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:49;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:28:"BuddyPress: BuddyPress 2.6.2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"https://buddypress.org/?p=257253";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:48:"https://buddypress.org/2016/08/buddypress-2-6-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:760:"<p>BuddyPress 2.6.2 is now available. This is a maintenance release that fixes a few bugs introduced in 2.6. For more information, see <a href="https://buddypress.trac.wordpress.org/query?milestone=2.6.2">the 2.6.2 milestone</a> on <a href="https://buddypress.trac.wordpress.org/">BuddyPress Trac</a>.</p>\n<p>Update to BuddyPress 2.6.2 today in your WordPress Dashboard, or by <a href="https://wordpress.org/plugins/buddypress/">downloading from the wordpress.org plugin repository</a>.</p>\n<p>Questions or comments? Check out <a href="https://codex.buddypress.org/releases/version-2-6-2/">2.6.2 changelog</a>, or stop by <a href="https://buddypress.org/support/">our support forums</a> or <a href="https://buddypress.trac.wordpress.org/">Trac</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 04 Aug 2016 23:26:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"David Cavins";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";O:42:"Requests_Utility_CaseInsensitiveDictionary":1:{s:7:"\0*\0data";a:8:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Fri, 14 Oct 2016 21:23:49 GMT";s:12:"content-type";s:8:"text/xml";s:4:"vary";s:15:"Accept-Encoding";s:13:"last-modified";s:29:"Fri, 14 Oct 2016 21:15:19 GMT";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 250";s:16:"content-encoding";s:4:"gzip";}}s:5:"build";s:14:"20130911010210";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(199, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1476523431', 'no'),
(200, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1476480231', 'no'),
(201, '_transient_timeout_feed_b9388c83948825c1edaef0d856b7b109', '1476523436', 'no'),
(202, '_transient_feed_b9388c83948825c1edaef0d856b7b109', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n	\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:117:"\n		\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"WordPress Plugins » View: Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:45:"https://wordpress.org/plugins/browse/popular/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:34:"WordPress Plugins » View: Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 14 Oct 2016 21:05:56 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:25:"http://bbpress.org/?v=1.1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:30:{i:0;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:22:"Advanced Custom Fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/advanced-custom-fields/#post-25254";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 17 Mar 2011 04:07:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"25254@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:68:"Customise WordPress with powerful, professional and intuitive fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"elliotcondon";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"WP-PageNavi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/wp-pagenavi/#post-363";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 23:17:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"363@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:49:"Adds a more advanced paging navigation interface.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Lester Chan";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:15:"NextGEN Gallery";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/plugins/nextgen-gallery/#post-1169";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 23 Apr 2007 20:08:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"1169@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:121:"The most popular WordPress gallery plugin and one of the most popular plugins of all time with over 15 million downloads.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Alex Rabe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"WP Super Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/wp-super-cache/#post-2572";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Nov 2007 11:40:04 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2572@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:73:"A very fast caching engine for WordPress that produces static html files.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Donncha O Caoimh";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"TinyMCE Advanced";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"https://wordpress.org/plugins/tinymce-advanced/#post-2082";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 27 Jun 2007 15:00:26 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2082@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:58:"Extends and enhances TinyMCE, the WordPress Visual Editor.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Andrew Ozz";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"All in One SEO Pack";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/all-in-one-seo-pack/#post-753";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 30 Mar 2007 20:08:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"753@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"One of the most downloaded plugins for WordPress (over 30 million downloads since 2007). Use All in One SEO Pack to automatically optimize your site f";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"uberdose";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WordPress Importer";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/wordpress-importer/#post-18101";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 May 2010 17:42:45 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"18101@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:101:"Import posts, pages, comments, custom fields, categories, tags and more from a WordPress export file.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Brian Colinger";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"Hello Dolly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/plugins/hello-dolly/#post-5790";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 29 May 2008 22:11:34 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"5790@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"This is not just a plugin, it symbolizes the hope and enthusiasm of an entire generation summed up in two words sung most famously by Louis Armstrong.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"Wordfence Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/wordfence/#post-29832";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 04 Sep 2011 03:13:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"29832@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:149:"Secure your website with the most comprehensive WordPress security plugin. Firewall, malware scan, blocking, live traffic, login security &#38; more.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Wordfence";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"Page Builder by SiteOrigin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/siteorigin-panels/#post-51888";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 11 Apr 2013 10:36:42 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"51888@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:111:"Build responsive page layouts using the widgets you know and love using this simple drag and drop page builder.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Greg Priday";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"W3 Total Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/plugins/w3-total-cache/#post-12073";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 29 Jul 2009 18:46:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"12073@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:144:"Search Engine (SEO) &#38; Performance Optimization (WPO) via caching. Integrated caching: CDN, Minify, Page, Object, Fragment, Database support.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Frederick Townes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Contact Form 7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/contact-form-7/#post-2141";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 02 Aug 2007 12:45:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2141@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:54:"Just another contact form plugin. Simple but flexible.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"WooCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/woocommerce/#post-29860";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Sep 2011 08:13:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"29860@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:97:"WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"WooThemes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Really Simple CAPTCHA";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wordpress.org/plugins/really-simple-captcha/#post-9542";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 09 Mar 2009 02:17:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"9542@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:138:"Really Simple CAPTCHA is a CAPTCHA module intended to be called from other plugins. It is originally created for my Contact Form 7 plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"Google XML Sitemaps";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/google-sitemap-generator/#post-132";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:31:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"132@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:105:"This plugin will generate a special XML sitemap which will help search engines to better index your blog.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Arne Brachhold";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:15;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:9:"Yoast SEO";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:54:"https://wordpress.org/plugins/wordpress-seo/#post-8321";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 Jan 2009 20:34:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"8321@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:114:"Improve your WordPress SEO: Write better content and have a fully optimized WordPress site using Yoast SEO plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Joost de Valk";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:16;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Regenerate Thumbnails";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wordpress.org/plugins/regenerate-thumbnails/#post-6743";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 23 Aug 2008 14:38:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"6743@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:76:"Allows you to regenerate your thumbnails after changing the thumbnail sizes.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:25:"Alex Mills (Viper007Bond)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:17;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Duplicate Post";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/duplicate-post/#post-2646";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 05 Dec 2007 17:40:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2646@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:22:"Clone posts and pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Lopo";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:18;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:7:"Akismet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:46:"https://wordpress.org/plugins/akismet/#post-15";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:11:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"15@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:98:"Akismet checks your comments against the Akismet Web service to see if they look like spam or not.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:19;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:24:"Jetpack by WordPress.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:49:"https://wordpress.org/plugins/jetpack/#post-23862";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 Jan 2011 02:21:38 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"23862@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:107:"Increase your traffic, view your stats, speed up your site, and protect yourself from hackers with Jetpack.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Automattic";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:20;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:35:"Google Analytics by MonsterInsights";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:71:"https://wordpress.org/plugins/google-analytics-for-wordpress/#post-2316";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 14 Sep 2007 12:15:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2316@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:113:"Connect Google Analytics with WordPress by adding your Google Analytics tracking code. Get the stats that matter.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Syed Balkhi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:21;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"Clef Two-Factor Authentication";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:48:"https://wordpress.org/plugins/wpclef/#post-47509";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 27 Dec 2012 01:25:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"47509@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:139:"Modern two-factor that people love to use: strong authentication without passwords or tokens; single sign on/off; magical login experience.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Dave Ross";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:22;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:35:"UpdraftPlus WordPress Backup Plugin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/updraftplus/#post-38058";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 21 May 2012 15:14:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"38058@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:148:"Backup and restoration made easy. Complete backups; manual or scheduled (backup to S3, Dropbox, Google Drive, Rackspace, FTP, SFTP, email + others).";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"David Anderson";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:23;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"Disable Comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wordpress.org/plugins/disable-comments/#post-26907";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 27 May 2011 04:42:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"26907@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:134:"Allows administrators to globally disable comments on their site. Comments can be disabled according to post type. Multisite friendly.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Samir Shah";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:24;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"Google Analytics Dashboard for WP";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:75:"https://wordpress.org/plugins/google-analytics-dashboard-for-wp/#post-50539";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 10 Mar 2013 17:07:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"50539@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:127:"Displays Google Analytics reports in your WordPress Dashboard. Inserts the latest Google Analytics tracking code in your pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Alin Marcu";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:25;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WP Multibyte Patch";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/wp-multibyte-patch/#post-28395";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 14 Jul 2011 12:22:53 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"28395@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:71:"Multibyte functionality enhancement for the WordPress Japanese package.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"plugin-master";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:26;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:27:"Black Studio TinyMCE Widget";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:69:"https://wordpress.org/plugins/black-studio-tinymce-widget/#post-31973";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 10 Nov 2011 15:06:14 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"31973@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:39:"The visual editor widget for Wordpress.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Marco Chiesi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:27;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:10:"Duplicator";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/plugins/duplicator/#post-26607";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 16 May 2011 12:15:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"26607@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:88:"Duplicate, clone, backup, move and transfer an entire site from one location to another.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Cory Lamle";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:28;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:46:"iThemes Security (formerly Better WP Security)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/better-wp-security/#post-21738";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 22 Oct 2010 22:06:05 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"21738@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:146:"Take the guesswork out of WordPress security. iThemes Security offers 30+ ways to lock down WordPress in an easy-to-use WordPress security plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"iThemes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:29;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"Meta Slider";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/ml-slider/#post-49521";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 14 Feb 2013 16:56:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"49521@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:131:"Easy to use WordPress Slider plugin. Create responsive slideshows with Nivo Slider, Flex Slider, Coin Slider and Responsive Slides.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Matcha Labs";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:46:"https://wordpress.org/plugins/rss/view/popular";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";O:42:"Requests_Utility_CaseInsensitiveDictionary":1:{s:7:"\0*\0data";a:12:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Fri, 14 Oct 2016 21:23:55 GMT";s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:4:"vary";s:15:"Accept-Encoding";s:25:"strict-transport-security";s:11:"max-age=360";s:7:"expires";s:29:"Fri, 14 Oct 2016 21:40:56 GMT";s:13:"cache-control";s:0:"";s:6:"pragma";s:0:"";s:13:"last-modified";s:31:"Fri, 14 Oct 2016 21:05:56 +0000";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 250";s:16:"content-encoding";s:4:"gzip";}}s:5:"build";s:14:"20130911010210";}', 'no'),
(203, '_transient_timeout_feed_mod_b9388c83948825c1edaef0d856b7b109', '1476523436', 'no'),
(204, '_transient_feed_mod_b9388c83948825c1edaef0d856b7b109', '1476480236', 'no'),
(205, '_transient_timeout_plugin_slugs', '1476566636', 'no'),
(206, '_transient_plugin_slugs', 'a:3:{i:0;s:19:"akismet/akismet.php";i:1;s:32:"easy-instagram-feed/easyfeed.php";i:2;s:9:"hello.php";}', 'no'),
(207, '_transient_timeout_dash_88ae138922fe95674369b1cb3d215a2b', '1476523436', 'no'),
(208, '_transient_dash_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><ul><li><a class=\'rsswidget\' href=\'https://wordpress.org/news/2016/09/wordpress-4-6-1-security-and-maintenance-release/\'>WordPress 4.6.1 Security and Maintenance Release</a> <span class="rss-date">September 7, 2016</span><div class="rssSummary">WordPress 4.6.1 is now available. This is a security release for all previous versions and we strongly encourage you to update your sites immediately. WordPress versions 4.6 and earlier are affected by two security issues: a cross-site scripting vulnerability via image filename, reported by SumOfPwn researcher Cengiz Han Sahin; and a path traversal vulnerability in [&hellip;]</div></li></ul></div><div class="rss-widget"><ul><li><a class=\'rsswidget\' href=\'https://wptavern.com/wangguard-plugin-launches-indiegogo-campaign-to-fund-development-and-support\'>WPTavern: WangGuard Plugin Launches Indiegogo Campaign to Fund Development and Support</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/lizz-ehrenpreis-wins-kinstas-1500-travel-scholarship\'>WPTavern: Lizz Ehrenpreis Wins Kinsta’s $1,500 Travel Scholarship</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/bitbucket-pricing-hike-increases-cost-per-user-by-100\'>WPTavern: Bitbucket Pricing Hike Increases Cost Per User by 100%</a></li></ul></div><div class="rss-widget"><ul><li class="dashboard-news-plugin"><span>Popular Plugin:</span> Meta Slider&nbsp;<a href="plugin-install.php?tab=plugin-information&amp;plugin=ml-slider&amp;_wpnonce=9434c1a39f&amp;TB_iframe=true&amp;width=600&amp;height=800" class="thickbox open-plugin-details-modal" aria-label="Install Meta Slider">(Install)</a></li></ul></div>', 'no'),
(209, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1476491038', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(210, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"6062";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3741";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3711";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"3205";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2850";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"2520";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2261";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"2136";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"2090";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"2089";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"2027";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:4:"1961";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1949";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1923";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1749";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1624";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1594";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1454";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1358";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1289";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1277";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:4:"1137";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:4:"1125";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:4:"1053";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:4:"1013";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:4:"1010";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"958";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"951";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"948";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"926";}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";s:3:"917";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"916";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"851";}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";s:3:"830";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"824";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"816";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"789";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"782";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"780";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"769";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"760";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"752";}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";s:3:"736";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"728";}s:3:"css";a:3:{s:4:"name";s:3:"CSS";s:4:"slug";s:3:"css";s:5:"count";s:3:"724";}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";s:3:"724";}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";s:3:"716";}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";s:3:"713";}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";s:3:"704";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"703";}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";s:3:"693";}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";s:3:"650";}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";s:3:"640";}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";s:3:"639";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"628";}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";s:3:"618";}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";s:3:"612";}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";s:3:"610";}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";s:3:"606";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"604";}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";s:3:"594";}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";s:3:"580";}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";s:3:"580";}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";s:3:"577";}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";s:3:"574";}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";s:3:"559";}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";s:3:"546";}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";s:3:"544";}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";s:3:"541";}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";s:3:"534";}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";s:3:"531";}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";s:3:"530";}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";s:3:"530";}s:7:"picture";a:3:{s:4:"name";s:7:"picture";s:4:"slug";s:7:"picture";s:5:"count";s:3:"518";}s:4:"shop";a:3:{s:4:"name";s:4:"shop";s:4:"slug";s:4:"shop";s:5:"count";s:3:"506";}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";s:3:"503";}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";s:3:"501";}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";s:3:"494";}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";s:3:"477";}s:8:"pictures";a:3:{s:4:"name";s:8:"pictures";s:4:"slug";s:8:"pictures";s:5:"count";s:3:"466";}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";s:3:"465";}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";s:3:"460";}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";s:3:"458";}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";s:3:"448";}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";s:3:"439";}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";s:3:"436";}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";s:3:"434";}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";s:3:"433";}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";s:3:"429";}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";s:3:"426";}s:6:"paypal";a:3:{s:4:"name";s:6:"paypal";s:4:"slug";s:6:"paypal";s:5:"count";s:3:"423";}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";s:3:"422";}s:5:"flash";a:3:{s:4:"name";s:5:"flash";s:4:"slug";s:5:"flash";s:5:"count";s:3:"421";}s:4:"news";a:3:{s:4:"name";s:4:"News";s:4:"slug";s:4:"news";s:5:"count";s:3:"420";}s:7:"sharing";a:3:{s:4:"name";s:7:"sharing";s:4:"slug";s:7:"sharing";s:5:"count";s:3:"418";}s:6:"upload";a:3:{s:4:"name";s:6:"upload";s:4:"slug";s:6:"upload";s:5:"count";s:3:"418";}s:9:"thumbnail";a:3:{s:4:"name";s:9:"thumbnail";s:4:"slug";s:9:"thumbnail";s:5:"count";s:3:"414";}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";s:3:"414";}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";s:3:"409";}s:8:"linkedin";a:3:{s:4:"name";s:8:"linkedin";s:4:"slug";s:8:"linkedin";s:5:"count";s:3:"408";}}', 'no'),
(212, 'wp-property-current-version', '2.2.0', 'yes'),
(218, 'recently_activated', 'a:1:{i:0;b:0;}', 'yes'),
(219, 'ud_ping_wp-propertywp-property', 'a:2:{s:4:"time";i:1476480324;s:4:"data";a:3:{s:9:"timestamp";i:1476480323;s:7:"message";s:0:"";s:3:"sig";s:41:"secret=null&timestamp=1476480323&message=";}}', 'yes'),
(220, 'widget_wpp_list_attachments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(221, 'widget_wpp_property_stats', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(222, 'widget_gallerypropertieswidget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(223, 'widget_wpp_property_map', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(224, 'widget_wpp_property_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(225, 'widget_wpp_property_overview', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(226, 'widget_searchpropertieswidget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(227, 'widget_wpp_property_terms', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(228, 'udl_wp-property/wp-property-url', 'http://localhost/tarclink/wp-admin/edit.php?post_type=property&page=wp-property/wp-property_wp-propertyadd-onsmanager', 'yes'),
(229, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1481005788;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:4:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:3:"3.2";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:53:"http://downloads.wordpress.org/plugin/akismet.3.2.zip";}s:32:"easy-instagram-feed/easyfeed.php";O:8:"stdClass":6:{s:2:"id";s:5:"56095";s:4:"slug";s:19:"easy-instagram-feed";s:6:"plugin";s:32:"easy-instagram-feed/easyfeed.php";s:11:"new_version";s:3:"1.9";s:3:"url";s:50:"https://wordpress.org/plugins/easy-instagram-feed/";s:7:"package";s:65:"http://downloads.wordpress.org/plugin/easy-instagram-feed.1.9.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:57:"http://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:27:"wp-property/wp-property.php";O:8:"stdClass":6:{s:2:"id";s:5:"15777";s:4:"slug";s:11:"wp-property";s:6:"plugin";s:27:"wp-property/wp-property.php";s:11:"new_version";s:5:"2.2.0";s:3:"url";s:42:"https://wordpress.org/plugins/wp-property/";s:7:"package";s:59:"http://downloads.wordpress.org/plugin/wp-property.2.2.0.zip";}}}', 'no'),
(232, 'wp-property-splash-version', '2.2.0', 'yes'),
(233, '_transient_timeout_ud_legacy_features_wp-propertywp-property', '1476483942', 'no'),
(234, '_transient_ud_legacy_features_wp-propertywp-property', '{"message":"","timestamp":1476480342,"sig":"secret=null&message=&timestamp=1476480342"}', 'no'),
(235, '_transient_timeout_ud_splash_dashboard', '1476480513', 'no'),
(236, '_transient_ud_splash_dashboard', 'a:1:{s:11:"wp-property";a:3:{s:4:"name";s:11:"WP-Property";s:7:"content";s:93:"/Applications/MAMP/htdocs/tarclink/wp-content/plugins/wp-property/static/splashes/upgrade.php";s:7:"version";s:5:"2.2.0";}}', 'no'),
(238, '_site_transient_timeout_theme_roots', '1481007588', 'no'),
(239, '_site_transient_theme_roots', 'a:5:{s:5:"rambo";s:7:"/themes";s:10:"temptation";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 8, '_wp_attached_file', '2016/09/tarclink-logo-web-e1474056136931.png'),
(3, 8, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:246;s:6:"height";i:52;s:4:"file";s:44:"2016/09/tarclink-logo-web-e1474056136931.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:43:"tarclink-logo-web-e1474056136931-150x52.png";s:5:"width";i:150;s:6:"height";i:52;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(4, 8, '_edit_lock', '1474056021:1'),
(5, 8, '_wp_attachment_backup_sizes', 'a:2:{s:9:"full-orig";a:3:{s:5:"width";i:246;s:6:"height";i:52;s:4:"file";s:21:"tarclink-logo-web.png";}s:14:"thumbnail-orig";a:4:{s:4:"file";s:28:"tarclink-logo-web-150x52.png";s:5:"width";i:150;s:6:"height";i:52;s:9:"mime-type";s:9:"image/png";}}'),
(6, 8, '_edit_last', '1'),
(7, 9, '_wp_attached_file', '2016/09/mac-os-x-wallpaper.jpg'),
(8, 9, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1200;s:4:"file";s:30:"2016/09/mac-os-x-wallpaper.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"mac-os-x-wallpaper-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"mac-os-x-wallpaper-300x188.jpg";s:5:"width";i:300;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:30:"mac-os-x-wallpaper-768x480.jpg";s:5:"width";i:768;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:31:"mac-os-x-wallpaper-1024x640.jpg";s:5:"width";i:1024;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}s:17:"blog1_section_img";a:4:{s:4:"file";s:30:"mac-os-x-wallpaper-270x260.jpg";s:5:"width";i:270;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:17:"blog2_section_img";a:4:{s:4:"file";s:30:"mac-os-x-wallpaper-770x300.jpg";s:5:"width";i:770;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(9, 2, '_edit_lock', '1474062306:1'),
(10, 2, '_edit_last', '1'),
(11, 13, '_edit_last', '1'),
(12, 13, '_wp_page_template', 'default'),
(13, 13, '_edit_lock', '1474062327:1'),
(14, 15, '_edit_last', '1'),
(17, 15, '_edit_lock', '1474062395:1'),
(45, 20, '_menu_item_type', 'custom'),
(46, 20, '_menu_item_menu_item_parent', '0'),
(47, 20, '_menu_item_object_id', '20'),
(48, 20, '_menu_item_object', 'custom'),
(49, 20, '_menu_item_target', ''),
(50, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(51, 20, '_menu_item_xfn', ''),
(52, 20, '_menu_item_url', 'http://localhost/tarclink/'),
(53, 20, '_menu_item_orphaned', '1474063342'),
(54, 21, '_menu_item_type', 'post_type'),
(55, 21, '_menu_item_menu_item_parent', '0'),
(56, 21, '_menu_item_object_id', '13'),
(57, 21, '_menu_item_object', 'page'),
(58, 21, '_menu_item_target', ''),
(59, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(60, 21, '_menu_item_xfn', ''),
(61, 21, '_menu_item_url', ''),
(62, 21, '_menu_item_orphaned', '1474063342'),
(63, 22, '_menu_item_type', 'post_type'),
(64, 22, '_menu_item_menu_item_parent', '0'),
(65, 22, '_menu_item_object_id', '2'),
(66, 22, '_menu_item_object', 'page'),
(67, 22, '_menu_item_target', ''),
(68, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(69, 22, '_menu_item_xfn', ''),
(70, 22, '_menu_item_url', ''),
(71, 22, '_menu_item_orphaned', '1474063342'),
(72, 23, '_menu_item_type', 'custom'),
(73, 23, '_menu_item_menu_item_parent', '0'),
(74, 23, '_menu_item_object_id', '23'),
(75, 23, '_menu_item_object', 'custom'),
(76, 23, '_menu_item_target', ''),
(77, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(78, 23, '_menu_item_xfn', ''),
(79, 23, '_menu_item_url', 'http://localhost/tarclink/'),
(80, 23, '_menu_item_orphaned', '1474063419'),
(81, 24, '_menu_item_type', 'post_type'),
(82, 24, '_menu_item_menu_item_parent', '0'),
(83, 24, '_menu_item_object_id', '13'),
(84, 24, '_menu_item_object', 'page'),
(85, 24, '_menu_item_target', ''),
(86, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(87, 24, '_menu_item_xfn', ''),
(88, 24, '_menu_item_url', ''),
(89, 24, '_menu_item_orphaned', '1474063419'),
(90, 25, '_menu_item_type', 'post_type'),
(91, 25, '_menu_item_menu_item_parent', '0'),
(92, 25, '_menu_item_object_id', '2'),
(93, 25, '_menu_item_object', 'page'),
(94, 25, '_menu_item_target', ''),
(95, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(96, 25, '_menu_item_xfn', ''),
(97, 25, '_menu_item_url', ''),
(98, 25, '_menu_item_orphaned', '1474063419');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-09-16 16:09:19', '2016-09-16 16:09:19', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2016-09-16 16:09:19', '2016-09-16 16:09:19', '', 0, 'http://localhost/tarclink/?p=1', 0, 'post', '', 1),
(2, 1, '2016-09-16 16:09:19', '2016-09-16 16:09:19', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href="http://localhost/tarclink/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Why I started using Ruby And Rails', '', 'publish', 'closed', 'open', '', 'ror', '', '', '2016-09-16 21:45:05', '2016-09-16 21:45:05', '', 0, 'http://localhost/tarclink/?page_id=2', 0, 'page', '', 0),
(8, 1, '2016-09-16 20:01:09', '2016-09-16 20:01:09', '', 'tarclink-logo-web', '', 'inherit', 'open', 'closed', '', 'tarclink-logo-web', '', '', '2016-09-16 20:02:21', '2016-09-16 20:02:21', '', 0, 'http://localhost/tarclink/wp-content/uploads/2016/09/tarclink-logo-web.png', 0, 'attachment', 'image/png', 0),
(9, 1, '2016-09-16 20:24:24', '2016-09-16 20:24:24', '', 'mac-os-x-wallpaper', '', 'inherit', 'open', 'closed', '', 'mac-os-x-wallpaper', '', '', '2016-09-16 20:24:24', '2016-09-16 20:24:24', '', 0, 'http://localhost/tarclink/wp-content/uploads/2016/09/mac-os-x-wallpaper.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 1, '2016-09-16 21:44:42', '2016-09-16 21:44:42', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>\n...or something like this:\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\nAs a new WordPress user, you should go to <a href="http://localhost/tarclink/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Why I', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2016-09-16 21:44:42', '2016-09-16 21:44:42', '', 2, 'http://localhost/tarclink/2016/09/16/2-autosave-v1/', 0, 'revision', '', 0),
(11, 1, '2016-09-16 21:45:05', '2016-09-16 21:45:05', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href="http://localhost/tarclink/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Why I started using Ruby And Rails', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-09-16 21:45:05', '2016-09-16 21:45:05', '', 2, 'http://localhost/tarclink/2016/09/16/2-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2016-09-16 21:47:47', '2016-09-16 21:47:47', '', 'Django', '', 'publish', 'closed', 'closed', '', 'django', '', '', '2016-09-16 21:47:47', '2016-09-16 21:47:47', '', 0, 'http://localhost/tarclink/?page_id=13', 0, 'page', '', 0),
(14, 1, '2016-09-16 21:47:47', '2016-09-16 21:47:47', '', 'Django', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2016-09-16 21:47:47', '2016-09-16 21:47:47', '', 13, 'http://localhost/tarclink/2016/09/16/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2016-09-16 21:48:55', '2016-09-16 21:48:55', '', 'Why nodejs', '', 'publish', 'open', 'open', '', 'why-nodejs', '', '', '2016-09-16 21:48:55', '2016-09-16 21:48:55', '', 0, 'http://localhost/tarclink/?p=15', 0, 'post', '', 0),
(16, 1, '2016-09-16 21:48:55', '2016-09-16 21:48:55', '', 'Why nodejs', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2016-09-16 21:48:55', '2016-09-16 21:48:55', '', 15, 'http://localhost/tarclink/2016/09/16/15-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2016-09-16 22:02:22', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-09-16 22:02:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/tarclink/?p=20', 1, 'nav_menu_item', '', 0),
(21, 1, '2016-09-16 22:02:22', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-09-16 22:02:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/tarclink/?p=21', 1, 'nav_menu_item', '', 0),
(22, 1, '2016-09-16 22:02:22', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-09-16 22:02:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/tarclink/?p=22', 1, 'nav_menu_item', '', 0),
(23, 1, '2016-09-16 22:03:39', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-09-16 22:03:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/tarclink/?p=23', 1, 'nav_menu_item', '', 0),
(24, 1, '2016-09-16 22:03:39', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-09-16 22:03:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/tarclink/?p=24', 1, 'nav_menu_item', '', 0),
(25, 1, '2016-09-16 22:03:39', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-09-16 22:03:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/tarclink/?p=25', 1, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(15, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:1:{s:64:"b339a0962c0f1f4a3dc6f766c6dff1f7d9fe5f044d1a3d9ff3c8367027d98a49";a:4:{s:10:"expiration";i:1476653020;s:2:"ip";s:3:"::1";s:2:"ua";s:138:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.116 Safari/537.36 OPR/40.0.2308.81";s:5:"login";i:1476480220;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '26'),
(16, 1, 'wp_user-settings', 'libraryContent=browse'),
(17, 1, 'wp_user-settings-time', '1474056077'),
(18, 1, 'managenav-menuscolumnshidden', 'a:0:{}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BV1Z8xuMl/l/f9HYDXK3Li3W1FaB7R/', 'admin', 'info.samsy@gmail.com', '', '2016-09-16 16:09:19', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `post` int(3) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `post`, `email`) VALUES
(8, 'ghf', 56, 'gh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
