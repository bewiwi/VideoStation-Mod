-- phpMyAdmin SQL Dump
-- version 2.11.11.3
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Dim 06 Mai 2012 à 19:44
-- Version du serveur: 5.1.61
-- Version de PHP: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Base de données: `video`
--
DROP DATABASE `video`;
CREATE DATABASE `video` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `video`;

-- --------------------------------------------------------

--
-- Structure de la table `errors`
--

DROP TABLE IF EXISTS `errors`;
CREATE TABLE IF NOT EXISTS `errors` (
  `id_error` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(255) NOT NULL,
  `dir` varchar(255) NOT NULL,
  `error` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id_error`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Structure de la table `genres`
--

DROP TABLE IF EXISTS `genres`;
CREATE TABLE IF NOT EXISTS `genres` (
  `id_genre` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_genre`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

-- --------------------------------------------------------

--
-- Structure de la table `movie_genre`
--

DROP TABLE IF EXISTS `movie_genre`;
CREATE TABLE IF NOT EXISTS `movie_genre` (
  `id_movie_genre` int(11) NOT NULL AUTO_INCREMENT,
  `fk_id_genre` int(11) NOT NULL,
  `fk_id_movie` int(11) NOT NULL,
  PRIMARY KEY (`id_movie_genre`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=201 ;

-- --------------------------------------------------------

--
-- Structure de la table `movies`
--

DROP TABLE IF EXISTS `movies`;
CREATE TABLE IF NOT EXISTS `movies` (
  `id_movie` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `original_name` varchar(255) NOT NULL,
  `length` varchar(255) NOT NULL,
  `countries` varchar(255) NOT NULL,
  `directors` varchar(255) NOT NULL,
  `actors` varchar(255) NOT NULL,
  `synopsis` text NOT NULL,
  `poster` varchar(255) NOT NULL,
  `trailer` varchar(255) NOT NULL,
  `note` float NOT NULL,
  `votes` int(11) NOT NULL,
  `year` varchar(10) NOT NULL,
  `size` float NOT NULL,
  `dir` varchar(255) NOT NULL,
  `api` varchar(255) NOT NULL,
  PRIMARY KEY (`link`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `series`
--

DROP TABLE IF EXISTS `series`;
CREATE TABLE IF NOT EXISTS `series` (
  `id_serie` int(11) NOT NULL,
  `id_saison` int(11) NOT NULL,
  `id_episode` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `serie_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `episode_original_name` varchar(255) NOT NULL,
  `season_nb` int(22) NOT NULL,
  `episode_nb` int(22) NOT NULL,
  `note` float NOT NULL,
  `actors` varchar(255) NOT NULL,
  `directors` varchar(255) NOT NULL,
  `length` varchar(255) NOT NULL,
  `synopsis` text NOT NULL,
  `poster` varchar(255) NOT NULL,
  `broadcast_date` date NOT NULL,
  `dir` varchar(255) NOT NULL,
  `api` varchar(255) NOT NULL,
  PRIMARY KEY (`link`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
