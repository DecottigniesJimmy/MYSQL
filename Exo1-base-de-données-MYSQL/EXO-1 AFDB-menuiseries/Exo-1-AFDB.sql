-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mar. 13 sep. 2022 à 13:39
-- Version du serveur : 5.7.33
-- Version de PHP : 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `afdb`
--

-- --------------------------------------------------------

--
-- Structure de la table `chantiers`
--

CREATE TABLE `chantiers` (
  `ID_Chantiers` int(11) NOT NULL,
  `Location` varchar(70) NOT NULL,
  `Start_Time` varchar(255) NOT NULL,
  `End_Time` varchar(45) NOT NULL,
  `Facture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `chantiers`
--

INSERT INTO `chantiers` (`ID_Chantiers`, `Location`, `Start_Time`, `End_Time`, `Facture`) VALUES
(1, 'Lille', '29 Août', '30 Sept', '17630 €'),
(2, 'Paris', '5 Septembre', '9 Septembre', '3015 €'),
(3, 'Poix du nord', '26 Septembre', '8 Octobre', '8310 €'),
(4, 'Jenlain', '2 Janvier', '3 Février', '11213 €');

-- --------------------------------------------------------

--
-- Structure de la table `employees`
--

CREATE TABLE `employees` (
  `ID_Employees` int(11) NOT NULL,
  `Nom` varchar(45) NOT NULL,
  `Prenom` varchar(45) NOT NULL,
  `ID_Chantiers` int(11) NOT NULL,
  `ID_STATUS` int(11) NOT NULL,
  `Heure_travaillé` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `employees`
--

INSERT INTO `employees` (`ID_Employees`, `Nom`, `Prenom`, `ID_Chantiers`, `ID_STATUS`, `Heure_travaillé`) VALUES
(1, 'Brian', 'Audrey', 2, 4, '35'),
(2, 'Patel', 'Tanguy', 2, 1, '35'),
(3, 'Ricker', 'Fitz', 1, 1, '140'),
(4, 'Doyon ', 'Cedric', 3, 4, '35'),
(5, 'Rochefort', 'André', 4, 1, '140'),
(6, 'Gousse', 'Félix', 1, 1, '140'),
(7, 'Grenier', 'Germaine', 1, 2, '140'),
(8, 'Pascal ', 'Foret', 3, 3, '35'),
(9, 'Fred ', 'Gadieu', 1, 1, '140'),
(10, 'Simon', 'Dutrieux', 2, 1, '35'),
(11, 'Christophe ', 'Plouroe', 4, 1, '140'),
(12, 'Dupont', 'Marie', 2, 4, '140'),
(13, 'Dujardin', 'Gregoire', 1, 2, '140'),
(14, 'Math', 'Lucas', 3, 3, '35'),
(15, 'Gaudré', 'Quentin', 2, 1, '35'),
(16, 'Contensceaux', 'Thomas', 4, 2, '140'),
(17, 'Hmid', 'Safae', 3, 2, '35');

-- --------------------------------------------------------

--
-- Structure de la table `salaire`
--

CREATE TABLE `salaire` (
  `ID_Salaire` int(11) NOT NULL,
  `Taux_Horaire` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `salaire`
--

INSERT INTO `salaire` (`ID_Salaire`, `Taux_Horaire`) VALUES
(1, '20€ / Heure'),
(2, '34€ / Heure'),
(3, '22€ / Heure'),
(4, '12€ / Heure');

-- --------------------------------------------------------

--
-- Structure de la table `status`
--

CREATE TABLE `status` (
  `ID_STATUS` int(11) NOT NULL,
  `Functions` varchar(255) NOT NULL,
  `Salaire_ID_Salaire` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `status`
--

INSERT INTO `status` (`ID_STATUS`, `Functions`, `Salaire_ID_Salaire`) VALUES
(1, 'Ouvrier', 4),
(2, 'interim ', 1),
(3, 'Intervenant_ext', 3),
(4, 'Cadre', 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `chantiers`
--
ALTER TABLE `chantiers`
  ADD PRIMARY KEY (`ID_Chantiers`);

--
-- Index pour la table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`ID_Employees`),
  ADD KEY `fk_employees_Chantiers` (`ID_Chantiers`),
  ADD KEY `fk_employees_Status1` (`ID_STATUS`);

--
-- Index pour la table `salaire`
--
ALTER TABLE `salaire`
  ADD PRIMARY KEY (`ID_Salaire`);

--
-- Index pour la table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`ID_STATUS`),
  ADD KEY `fk_Status_Salaire1` (`Salaire_ID_Salaire`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `chantiers`
--
ALTER TABLE `chantiers`
  MODIFY `ID_Chantiers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `employees`
--
ALTER TABLE `employees`
  MODIFY `ID_Employees` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `salaire`
--
ALTER TABLE `salaire`
  MODIFY `ID_Salaire` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `status`
--
ALTER TABLE `status`
  MODIFY `ID_STATUS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `fk_employees_Chantiers` FOREIGN KEY (`ID_Chantiers`) REFERENCES `chantiers` (`ID_Chantiers`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_employees_Status1` FOREIGN KEY (`ID_STATUS`) REFERENCES `status` (`ID_STATUS`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `status`
--
ALTER TABLE `status`
  ADD CONSTRAINT `fk_Status_Salaire1` FOREIGN KEY (`Salaire_ID_Salaire`) REFERENCES `salaire` (`ID_Salaire`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
