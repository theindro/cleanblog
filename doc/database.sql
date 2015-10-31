-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Loomise aeg: Okt 07, 2015 kell 09:45 p.k.
-- Serveri versioon: 5.6.26
-- PHP versioon: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Andmebaas: `cleanblog`
--

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `authors`
--

CREATE TABLE IF NOT EXISTS `authors` (
  `author_id` int(11) unsigned NOT NULL,
  `author_name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Andmete tõmmistamine tabelile `authors`
--

INSERT INTO `authors` (`author_id`, `author_name`) VALUES
(1, 'sipsik'),
(2, 'supsik'),
(3, 'asdman');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `post_id` int(11) unsigned NOT NULL,
  `author_id` int(10) unsigned NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_description` varchar(255) NOT NULL,
  `post_text` text NOT NULL,
  `post_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Andmete tõmmistamine tabelile `posts`
--

INSERT INTO `posts` (`post_id`, `author_id`, `post_title`, `post_description`, `post_text`, `post_created`) VALUES
(1, 1, 'tiitel leht', 'jah jah jah', 'jejehejeh', '2015-10-07 22:36:33'),
(3, 2, 'jaha ja', 'asd asd asd', 'wqweqwe', '2015-10-07 22:37:03'),
(5, 3, 'Tere tulemast', 'description', 'text ja sisu', '2015-10-07 22:44:08');

--
-- Indeksid tõmmistatud tabelitele
--

--
-- Indeksid tabelile `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`author_id`);

--
-- Indeksid tabelile `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `author_id` (`author_id`);

--
-- AUTO_INCREMENT tõmmistatud tabelitele
--

--
-- AUTO_INCREMENT tabelile `authors`
--
ALTER TABLE `authors`
  MODIFY `author_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT tabelile `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Tõmmistatud tabelite piirangud
--

--
-- Piirangud tabelile `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`author_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
