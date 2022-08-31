-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: mysql
-- Время создания: Авг 30 2022 г., 10:41
-- Версия сервера: 5.7.38
-- Версия PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `contacts`
--

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='исходная таблица с именами контактов';

--
-- Дамп данных таблицы `contacts`
--

INSERT INTO `contacts` (`id`, `name`) VALUES
(1, 'Sarah'),
(2, 'Sergey'),
(3, 'John'),
(4, 'Arnold'),
(5, 'Jeff'),
(6, 'Dacota'),
(7, 'Nataly'),
(8, 'Derec'),
(9, 'Vladimir'),
(10, 'Tom');

-- --------------------------------------------------------

--
-- Структура таблицы `friends`
--

CREATE TABLE `friends` (
  `id` int(11) NOT NULL,
  `id_contact` int(11) NOT NULL,
  `id_friend` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='таблица соотношений контактов и друзей';

--
-- Дамп данных таблицы `friends`
--

INSERT INTO `friends` (`id`, `id_contact`, `id_friend`) VALUES
(1, 1, 2),
(2, 1, 3),
(3, 1, 6),
(4, 1, 8),
(5, 2, 10),
(6, 2, 9),
(7, 5, 10),
(8, 5, 2),
(9, 5, 7),
(10, 1, 9),
(11, 1, 7),
(12, 2, 8),
(13, 2, 3),
(14, 1, 5),
(15, 5, 1),
(16, 2, 5);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `friends`
--
ALTER TABLE `friends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
