-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 07 oct. 2022 à 06:29
-- Version du serveur : 8.0.30
-- Version de PHP : 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `exo-pdophp-carnet`
--

-- --------------------------------------------------------

--
-- Structure de la table `carnet`
--

CREATE TABLE `carnet` (
  `ID_Nom` int NOT NULL,
  `Nom` varchar(75) NOT NULL,
  `Prenom` varchar(50) NOT NULL,
  `Naissance` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `carnet`
--

INSERT INTO `carnet` (`ID_Nom`, `Nom`, `Prenom`, `Naissance`) VALUES
(1, 'Decottignies', 'Jimmy', '1992-01-21'),
(2, 'Degand', 'Anthony', '1993-06-02'),
(3, 'Azzaoui', 'Tahar', '1902-02-08'),
(4, 'Zaafane', 'Halim', '1903-11-22'),
(5, 'Alberto', 'Silva', '1988-12-25'),
(6, 'Debouz', 'Jamel', '1995-11-08');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `carnet`
--
ALTER TABLE `carnet`
  ADD PRIMARY KEY (`ID_Nom`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `carnet`
--
ALTER TABLE `carnet`
  MODIFY `ID_Nom` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
