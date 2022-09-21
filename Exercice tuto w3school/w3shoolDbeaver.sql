-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 08 sep. 2022 à 13:43
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
-- Base de données : `w3shool`
--

-- --------------------------------------------------------

--
-- Structure de la table `customers`
--

CREATE TABLE `customers` (
  `CustomerID` int(11) NOT NULL,
  `CustomerName` varchar(255) NOT NULL,
  `ContactName` varchar(255) NOT NULL,
  `Adress` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `PostalCode` varchar(255) NOT NULL,
  `Country` varchar(255) NOT NULL,
  `CusDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `customers`
--

INSERT INTO `customers` (`CustomerID`, `CustomerName`, `ContactName`, `Adress`, `City`, `PostalCode`, `Country`, `CusDate`) VALUES
(1, 'Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', '12209', 'Germany', '2022-09-08 14:52:00'),
(2, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo	', 'Avda. de la Constitución 2222', 'México D.F.', '05021', 'Mexico', '2022-09-08 14:52:00'),
(3, 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos 2312', 'México D.F.', '05023', 'Mexico', '2022-09-08 14:52:00'),
(4, 'Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK', '2022-09-08 14:52:00'),
(6, 'New York Community Bancorp, Inc.', 'Farlie', '86 Bluejay Avenue', 'Oberá', '3361', 'Argentina', '2022-09-08 14:52:00'),
(11, 'Hawaiian Electric Industries, Inc.', 'Ives', '1910 Acker Lane', 'Kinna', '511 58', 'Sweden', '2022-09-08 14:52:00'),
(13, 'Himax Technologies, Inc.', 'Fayette', '73424 Ridgeway Pass', 'Manukau City', '2246', 'New Zealand', '2022-09-08 14:52:00'),
(15, 'Vantage Energy Acquisition Corp.', 'Neel', '1 Memorial Hill', 'Libacao', '5602', 'Philippines', '2022-09-08 14:52:00'),
(16, 'American National Insurance Company', 'Louie', '4 Victoria Way', 'Orenburg', '460999', 'Russia', '2022-09-08 14:52:00'),
(18, 'Blackrock MuniYield Pennsylvania Quality Fund', 'Arnold', '21 Ludington Hill', 'Benito Juarez', '31540', 'Mexico', '2022-09-08 14:52:00'),
(19, 'General Cable Corporation', 'Clo', '0975 Sheridan Park', 'Gryazovets', '162002', 'Russia', '2022-09-08 14:52:00'),
(20, 'New Germany Fund, Inc. (The)', 'Isabeau', '7340 Scofield Road', 'Lethbridge', 'T1K', 'Canada', '2022-09-08 14:52:00'),
(22, 'RADA Electronic Industries Ltd.', 'Carmencita', '14 Lakewood Alley', 'Nueve de Julio', '3606', 'Argentina', '2022-09-08 14:52:00'),
(23, 'Discovery Communications, Inc.', 'Hynda', '1613 Jana Terrace', 'Tosno', '187003', 'Russia', '2022-09-08 14:52:00'),
(28, 'Lincoln Electric Holdings, Inc.', 'Olin', '0399 Stang Avenue', 'Dulian', '3110', 'Philippines', '2022-09-08 14:52:00'),
(29, 'Qiagen N.V.', 'Jeremie', '1061 Katie Alley', 'Gaspar', '89110-000', 'Brazil', '2022-09-08 14:52:00'),
(31, 'Infinity Pharmaceuticals, Inc.', 'Laurianne', '6 Beilfuss Junction', 'Orlando', '32825', 'United States', '2022-09-08 14:52:00'),
(33, 'Asia Pacific Fund, Inc. (The)', 'Jehu', '20 Fairfield Center', 'Leleque', '9213', 'Argentina', '2022-09-08 14:52:00'),
(35, 'TC PipeLines, LP', 'Shell', '28 Monument Alley', 'Urazovo', '309975', 'Russia', '2022-09-08 14:52:00'),
(36, 'Howard Hughes Corporation (The)', 'Hunt', '887 Nevada Avenue', 'Tuscaloosa', '35487', 'United States', '2022-09-08 14:52:00'),
(37, 'Diebold Nixdorf Incorporated', 'Meade', '8193 Hallows Parkway', 'Kota Bharu', '15540', 'Malaysia', '2022-09-08 14:52:00'),
(39, 'GAIN Capital Holdings, Inc.', 'Fancie', '05 Elmside Place', 'Mapiripán', '943057', 'Colombia', '2022-09-08 14:52:00'),
(43, 'Matson, Inc.', 'Leshia', '69 Morrow Center', 'Skulsk', '62-560', 'Poland', '2022-09-08 14:52:00'),
(44, 'Texas Capital Bancshares, Inc.', 'Talbert', '8 Cody Court', 'Sao Hai', '18160', 'Thailand', '2022-09-08 14:52:00'),
(46, 'Genworth Financial Inc', 'Deloris', '99 Annamark Court', 'Boco', '2425-405', 'Portugal', '2022-09-08 14:52:00'),
(48, 'Andina Acquisition Corp. II', 'Doralynne', '00 Brown Terrace', 'Buenavista', '8601', 'Philippines', '2022-09-08 14:52:00'),
(69, 'Zions Bancorporation', 'Conant', '50 Hanson Crossing', 'Spirovo', '422338', 'Russia', '2022-09-08 14:52:00'),
(71, 'TCF Financial Corporation', 'Paulie', '2 5th Point', 'Calape', '6328', 'Philippines', '2022-09-08 14:52:00'),
(72, 'Luxoft Holding, Inc.', 'Peter', '075 Oak Valley Circle', 'Madison', '53716', 'United States', '2022-09-08 14:52:00'),
(76, 'Zions Bancorporation', 'Dianemarie', '8 Service Pass', 'Sodankylä', '99601', 'Finland', '2022-09-08 14:52:00'),
(78, 'Southcross Energy Partners, L.P.', 'Karlens', '82 Corben Avenue', 'Serra da Boa Viagem', '3080-352', 'Portugal', '2022-09-08 14:52:00'),
(79, 'Syndax Pharmaceuticals, Inc.', 'Malynda', '457 Clove Lane', 'Sarlat-la-Canéda', '24212 CEDEX', 'France', '2022-09-08 14:52:00'),
(80, 'Vanda Pharmaceuticals Inc.', 'Jordon', '60338 Waubesa Alley', 'Bang Klam', '90110', 'Thailand', '2022-09-08 14:52:00'),
(82, 'Travelzoo', 'Robyn', '371 Tony Center', 'Passal', '4960-130', 'Portugal', '2022-09-08 14:52:00'),
(83, 'Vanguard Global ex-U.S. Real Estate ETF', 'Donnamarie', '53984 Memorial Terrace', 'Pisão', '3220-331', 'Portugal', '2022-09-08 14:52:00'),
(86, 'Entergy Louisiana, Inc.', 'Rochella', '62231 Melvin Circle', 'Habo', '566 24', 'Sweden', '2022-09-08 14:52:00'),
(90, 'Pampa Energia S.A.', 'Meridel', '02290 Basil Drive', 'Belverde', '2845-487', 'Portugal', '2022-09-08 14:52:00'),
(92, 'Tyson Foods, Inc.', 'Ade', '161 Toban Avenue', 'Maní', '854019', 'Colombia', '2022-09-08 14:52:00'),
(93, 'United Insurance Holdings Corp.', 'Rochella', '9 Beilfuss Parkway', 'Cabittaogan', '2727', 'Philippines', '2022-09-08 14:52:00'),
(97, 'OncoSec Medical Incorporated', 'Ferdinand', '5 Annamark Place', 'Sélestat', '67604 CEDEX', 'France', '2022-09-08 14:52:00'),
(99, 'First Trust Small Cap Value AlphaDEX Fund', 'Lora', '464 Oriole Terrace', 'Benoni', '1527', 'South Africa', '2022-09-08 14:52:00'),
(100, 'Consolidated Water Co. Ltd.', 'Marrilee', '71708 Walton Pass', 'Kihniö', '39820', 'Finland', '2022-09-08 14:52:00'),
(101, 'Fanhua Inc.', 'Johann', '514 Bartelt Center', 'Kuching', '93590', 'Malaysia', '2022-09-08 14:52:00'),
(102, 'WisdomTree Germany Hedged Equity Fund', 'Rubin', '2 Shoshone Center', 'Emiliano Zapata', '55690', 'Mexico', '2022-09-08 14:52:00'),
(106, 'Mack-Cali Realty Corporation', 'Rorke', '051 Melvin Lane', 'Vila Viçosa', '7160-208', 'Portugal', '2022-09-08 14:52:00'),
(108, 'SunTrust Banks, Inc.', 'Janine', '9216 Waubesa Plaza', 'Lévis', 'G6W', 'Canada', '2022-09-08 14:52:00'),
(110, 'Nuveen Select Tax Free Income Portfolio III', 'Kim', '0 Bartillon Lane', 'Staromyshastovskaya', '353220', 'Russia', '2022-09-08 14:52:00'),
(112, 'Coca-Cola European Partners plc', 'Jess', '03 Judy Crossing', 'Nama', '2437', 'Philippines', '2022-09-08 14:52:00'),
(113, 'Foresight Energy LP', 'Kizzee', '21 Eggendart Drive', 'Inya', '646604', 'Russia', '2022-09-08 14:52:00'),
(116, 'First Trust Large Cap Value AlphaDEX Fund', 'Kerby', '5150 Continental Way', 'Itatinga', '18690-000', 'Brazil', '2022-09-08 14:52:00'),
(117, 'Gladstone Commercial Corporation', 'Kacy', '37 Iowa Street', 'Novyye Gorki', '155101', 'Russia', '2022-09-08 14:52:00'),
(139, 'Capital One Financial Corporation', 'Pascal', '59 Katie Circle', 'Verona', '37142', 'Italy', '2022-09-08 14:52:00'),
(143, 'Textainer Group Holdings Limited', 'Conroy', '09118 Memorial Way', 'Saginaw', '48604', 'United States', '2022-09-08 14:52:00'),
(147, 'Equity Commonwealth', 'Nalani', '332 Schlimgen Center', 'Buliran Segundo', '3109', 'Philippines', '2022-09-08 14:52:00'),
(150, 'Sparton Corporation', 'Oren', '23 Arapahoe Alley', 'Solna', '170 66', 'Sweden', '2022-09-08 14:52:00'),
(151, 'Actuant Corporation', 'Carolus', '9364 Northland Trail', 'Carapicuíba', '06300-000', 'Brazil', '2022-09-08 14:52:00'),
(158, 'Blackrock MuniHoldings California Quality Fund,  Inc.', 'Jules', '870 Barby Hill', 'Bussum', '1404', 'Netherlands', '2022-09-08 14:52:00'),
(159, 'Highpower International Inc', 'Lynn', '233 Anniversary Junction', 'Corona', '92878', 'United States', '2022-09-08 14:52:00'),
(160, 'ENDRA Life Sciences Inc.', 'Renaldo', '755 Russell Center', 'Neryungri', '627533', 'Russia', '2022-09-08 14:52:00'),
(161, 'Janus Henderson Group plc', 'Whitney', '360 Meadow Vale Junction', 'Descalvado', '13690-000', 'Brazil', '2022-09-08 14:52:00'),
(165, 'Cadence Design Systems, Inc.', 'King', '0249 Steensland Place', 'Utajärvi', '91601', 'Finland', '2022-09-08 14:52:00'),
(172, 'Navient Corporation', 'Cassandra', '1 Duke Crossing', 'Kabac', '6052', 'Philippines', '2022-09-08 14:52:00'),
(175, 'Guaranty Bancshares, Inc.', 'Neda', '4787 Fulton Way', 'North Cowichan', 'V9L', 'Canada', '2022-09-08 14:52:00'),
(178, 'Pacific Coast Oil Trust', 'Tobiah', '082 Weeping Birch Parkway', 'Baracatan', '1063', 'Philippines', '2022-09-08 14:52:00'),
(180, 'Public Storage', 'Consalve', '70 Stone Corner Plaza', 'Saint-Égrève', '38524 CEDEX', 'France', '2022-09-08 14:52:00'),
(182, 'Wells Fargo & Company', 'Othelia', '8 Elka Way', 'Criuleni', 'MD-4801', 'Moldova', '2022-09-08 14:52:00'),
(184, 'Novadaq Technologies Inc', 'Shay', '9409 Hollow Ridge Way', 'Laguna Limpia', '3515', 'Argentina', '2022-09-08 14:52:00'),
(185, 'Western Gas Partners, LP', 'Lindy', '2104 Kipling Place', 'Borås', '501 88', 'Sweden', '2022-09-08 14:52:00'),
(188, 'Sun Hydraulics Corporation', 'Gianna', '68826 Park Meadow Drive', 'Jacksonville', '32277', 'United States', '2022-09-08 14:52:00'),
(189, 'Regal Beloit Corporation', 'Pier', '057 Kings Way', 'Uryupinsk', '403140', 'Russia', '2022-09-08 14:52:00');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CustomerID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `customers`
--
ALTER TABLE `customers`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
