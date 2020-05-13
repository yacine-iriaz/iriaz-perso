-- Script SQL table
-- phpMyAdmin SQL Dump
-- https://phpmyadmin.cluster028.hosting.ovh.net/index.php 
--
-- Généré le :  Mardi 12 Mai 2020

--
-- Base de données : iriazfrxei361 // Films et Séries 
--

-- --------------------------------------------------------

-- --------------------------------------------------------

--
-- Structure de la table `fonctions`
--

CREATE TABLE IF NOT EXISTS `fonctions` (
  `id_fonction` int(11) NOT NULL AUTO_INCREMENT,
  `nom_fonction` varchar(255) NOT NULL,
  PRIMARY KEY (`id_fonction`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

-- --------------------------------------------------------

--
-- Structure de la table `personnes`
--

CREATE TABLE IF NOT EXISTS `personnes` (
  `id_personne` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `date_naissance` date NOT NULL,
  PRIMARY KEY (`id_personne`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `genres`
--

CREATE TABLE IF NOT EXISTS `genres` (
  `id_genre` int(11) NOT NULL AUTO_INCREMENT,
  `nom_genre` varchar(255) NOT NULL,
  PRIMARY KEY (`id_genre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `films`
--

CREATE TABLE IF NOT EXISTS `films` (
  `id_film` int(11) NOT NULL AUTO_INCREMENT,
  `id_genre` int(11) NOT NULL,
  `titre_film` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `date_sortie` date NOT NULL,
  `synopsis` text NOT NULL,
  `bande_annonce` varchar(255) NOT NULL,
  `duree_film` time NOT NULL,
  PRIMARY KEY (`id_film`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `film_genres`
--

CREATE TABLE IF NOT EXISTS `film_genres` (
  `id_film` int(11) NOT NULL,
  `id_genre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--                                                                
-- Structure de la table `film_personnes`
--

CREATE TABLE IF NOT EXISTS `film_personnes` (
  `id_film` int(11) NOT NULL,
  `id_personne` int(11) NOT NULL,
  `id_fonction` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `series`
--

CREATE TABLE IF NOT EXISTS `series` (
  `id_serie` int(11) NOT NULL AUTO_INCREMENT,
  `id_genre` int(11) NOT NULL,
  `titre_serie` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `date_sortie` date NOT NULL,
  `date_fin` date NOT NULL,
  `dateSortie` varchar(255) NOT NULL,
  `synopsis` text NOT NULL,
  `bande_annonce` varchar(255) NOT NULL,
  `duree_serie` time NOT NULL,
  `liste_saison` varchar(255) NOT NULL,
  PRIMARY KEY (`id_serie`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `serie_genres`
--

CREATE TABLE IF NOT EXISTS `serie_genres` (
  `id_serie` int(11) NOT NULL,
  `id_genre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `saisons`
--

CREATE TABLE IF NOT EXISTS `saisons` (
  `id_saison` int(11) NOT NULL AUTO_INCREMENT,
  `id_serie` int(11) NOT NULL,
  `numero_saison` int(11) NOT NULL,
  `nom_saison` varchar(255) NOT NULL,
  `nb_episode` int(11) NOT NULL,
  `liste_episode` varchar(255) NOT NULL,
  PRIMARY KEY (`id_saison`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

-- --------------------------------------------------------

--
-- Structure de la table `episodes`
--

CREATE TABLE IF NOT EXISTS `episodes` (
  `id_episode` int(11) NOT NULL AUTO_INCREMENT,
  `id_saison` int(11) NOT NULL,
  `titre_episode` varchar(255) NOT NULL,
  `photo_episode` varchar(255) NOT NULL,
  `numero_episode` int(11) NOT NULL,
  `date_diffusion` date NOT NULL,
  `synopsis_episode` text NOT NULL,
  `duree_episode` time NOT NULL,
  PRIMARY KEY (`id_episode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `serie_personnes`
--

CREATE TABLE IF NOT EXISTS `serie_personnes` (
  `id_episode` int(11) NOT NULL,
  `id_personne` int(11) NOT NULL,
  `id_fonction` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `id_users` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  PRIMARY KEY (`id_users`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

-- --------------------------------------------------------

--
-- Structure de la table `filmsVus`
--

CREATE TABLE IF NOT EXISTS `filmsVus` (
  `id_filmsVus` int(11) NOT NULL AUTO_INCREMENT,
  `id_films` int(11) NOT NULL,
  PRIMARY KEY (`id_filmsVus`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

-- --------------------------------------------------------

--
-- Structure de la table `seriesVues`
--

CREATE TABLE IF NOT EXISTS `seriesVues` (
  `id_seriesVues` int(11) NOT NULL AUTO_INCREMENT,
  `id_episode` int(11) NOT NULL,
  PRIMARY KEY (`id_seriesVues`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

-- --------------------------------------------------------

-- Fin Script