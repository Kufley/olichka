-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Окт 29 2014 г., 16:47
-- Версия сервера: 5.6.20
-- Версия PHP: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `cshop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
`customers_id` int(11) NOT NULL,
  `customers_fio` varchar(50) NOT NULL,
  `customers_address` varchar(100) NOT NULL,
  `customers_phone` varchar(20) NOT NULL,
  `customers_email` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `ordercustomer`
--

CREATE TABLE IF NOT EXISTS `ordercustomer` (
`ordercustomer_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL DEFAULT '0',
  `sweets_id` int(11) NOT NULL DEFAULT '0',
  `ordercustomer_kilkist` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
`orders_id` int(11) NOT NULL,
  `orders_date` date NOT NULL DEFAULT '0000-00-00',
  `customers_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `sweets`
--

CREATE TABLE IF NOT EXISTS `sweets` (
`sweets_id` int(11) NOT NULL,
  `sweets_nazva` varchar(100) NOT NULL,
  `sweets_firma` varchar(50) NOT NULL,
  `sweets_price` int(20) NOT NULL DEFAULT '0',
  `sweets_box` int(20) NOT NULL DEFAULT '0',
  `types_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `types`
--

CREATE TABLE IF NOT EXISTS `types` (
`types_id` int(11) NOT NULL,
  `types_nazva` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
 ADD PRIMARY KEY (`customers_id`);

--
-- Indexes for table `ordercustomer`
--
ALTER TABLE `ordercustomer`
 ADD PRIMARY KEY (`ordercustomer_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
 ADD PRIMARY KEY (`orders_id`);

--
-- Indexes for table `sweets`
--
ALTER TABLE `sweets`
 ADD PRIMARY KEY (`sweets_id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
 ADD PRIMARY KEY (`types_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
MODIFY `customers_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ordercustomer`
--
ALTER TABLE `ordercustomer`
MODIFY `ordercustomer_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sweets`
--
ALTER TABLE `sweets`
MODIFY `sweets_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
MODIFY `types_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
