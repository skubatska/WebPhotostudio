-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Час створення: Чрв 14 2018 р., 23:58
-- Версія сервера: 10.1.31-MariaDB
-- Версія PHP: 5.6.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `foto`
--

-- --------------------------------------------------------

--
-- Структура таблиці `ftname`
--

CREATE TABLE `ftname` (
  `id` int(11) NOT NULL,
  `idf` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `ftname`
--

INSERT INTO `ftname` (`id`, `idf`) VALUES
(1, 'Сімейна фотосесія'),
(2, 'Дитяча фотосесія'),
(3, 'Індивідуальна фотосесія'),
(4, 'Love Story'),
(5, 'Fashion-фотосесія'),
(6, 'Фотозйомка святкування'),
(7, 'Інші фото'),
(8, 'Фото на документи');

-- --------------------------------------------------------

--
-- Структура таблиці `ftsrc`
--

CREATE TABLE `ftsrc` (
  `id` int(11) NOT NULL,
  `idf` int(11) NOT NULL,
  `src` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `ftsrc`
--

INSERT INTO `ftsrc` (`id`, `idf`, `src`) VALUES
(1, 1, 'images/Сімейна фотосесія/11.jpeg'),
(2, 2, 'images/Дитяча фотосесія/4.jpg'),
(3, 1, 'images/Сімейна фотосесія/1.jpg'),
(4, 2, 'images/Дитяча фотосесія/11.jpg'),
(5, 2, 'images/Дитяча фотосесія/22.jpg'),
(6, 2, 'images/Дитяча фотосесія/33.jpg'),
(7, 3, 'images/Індивідуальна фотосесія/1.jpg'),
(8, 3, 'images/Індивідуальна фотосесія/2.jpg'),
(9, 4, 'images/Love Story/1.jpg'),
(10, 4, 'images/Love Story/2.jpg'),
(11, 4, 'images/Love Story/5.jpeg'),
(12, 4, 'images/Love Story/6.jpeg'),
(13, 5, 'images/Fashion-фотосесія/1.jpg'),
(14, 5, 'images/Fashion-фотосесія/2.jpg'),
(16, 5, 'images/Fashion-фотосесія/3.jpg'),
(17, 6, 'images/Фотозйомка святкування/1.jpg'),
(18, 6, 'images/Фотозйомка святкування/2.jpg'),
(19, 6, 'images/Фотозйомка святкування/3.jpg'),
(20, 7, 'images/Інші фото/1.jpg'),
(21, 7, 'images/Інші фото/2.jpg'),
(22, 7, 'images/Інші фото/3.jpg'),
(23, 7, 'images/Інші фото/44.jpg'),
(24, 7, 'images/Інші фото/11.jpeg'),
(25, 7, 'images/Інші фото/22.jpeg'),
(26, 7, 'images/Інші фото/33.jpeg'),
(27, 8, 'images/Фото на документи/1.jpg');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `ftname`
--
ALTER TABLE `ftname`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `ftsrc`
--
ALTER TABLE `ftsrc`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `ftname`
--
ALTER TABLE `ftname`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблиці `ftsrc`
--
ALTER TABLE `ftsrc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
