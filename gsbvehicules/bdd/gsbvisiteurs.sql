-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Mar 16 Avril 2019 à 10:21
-- Version du serveur: 5.5.8
-- Version de PHP: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `gsbvisiteurs`
--

-- --------------------------------------------------------

--
-- Structure de la table `emprunter`
--

CREATE TABLE IF NOT EXISTS `emprunter` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `id_vehicule` int(25) DEFAULT NULL,
  `mat_visiteur` varchar(10) DEFAULT NULL,
  `date_debut` date DEFAULT NULL,
  `date_fin` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_vehicule` (`id_vehicule`),
  KEY `mat_visiteur` (`mat_visiteur`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `emprunter`
--

INSERT INTO `emprunter` (`id`, `id_vehicule`, `mat_visiteur`, `date_debut`, `date_fin`) VALUES
(1, 444, '777', '2019-04-29', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `vehicule`
--

CREATE TABLE IF NOT EXISTS `vehicule` (
  `VEH_ID` int(25) NOT NULL,
  `VEH_PLAQUE` varchar(25) NOT NULL,
  `VEH_MARQUE` varchar(25) NOT NULL,
  `VEH_MODELE` varchar(25) NOT NULL,
  PRIMARY KEY (`VEH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `vehicule`
--

INSERT INTO `vehicule` (`VEH_ID`, `VEH_PLAQUE`, `VEH_MARQUE`, `VEH_MODELE`) VALUES
(222, '22bb33', 'toyota', 'prius'),
(333, '33cc44', 'renault', 'scenic'),
(444, '44dd55', 'peugeot', '208'),
(12435, 'aaa123', 'toyota', 'hybrid');

-- --------------------------------------------------------

--
-- Structure de la table `visiteur`
--

CREATE TABLE IF NOT EXISTS `visiteur` (
  `VIS_MATRICULE` varchar(10) NOT NULL,
  `VIS_NOM` char(25) DEFAULT NULL,
  `VIS_PRENOM` char(50) DEFAULT NULL,
  `VIS_ADRESSE` char(50) DEFAULT NULL,
  `VIS_CP` char(5) DEFAULT NULL,
  `VIS_VILLE` char(30) DEFAULT NULL,
  `VIS_DATEEMBAUCHE` datetime DEFAULT NULL,
  `SEC_CODE` char(1) DEFAULT NULL,
  `LAB_CODE` char(2) DEFAULT NULL,
  PRIMARY KEY (`VIS_MATRICULE`),
  KEY `DEPENDRE_FK` (`LAB_CODE`),
  KEY `SEC_CODE` (`SEC_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `visiteur`
--

INSERT INTO `visiteur` (`VIS_MATRICULE`, `VIS_NOM`, `VIS_PRENOM`, `VIS_ADRESSE`, `VIS_CP`, `VIS_VILLE`, `VIS_DATEEMBAUCHE`, `SEC_CODE`, `LAB_CODE`) VALUES
('213', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
('215', 'fzef', 'zefze', NULL, NULL, NULL, NULL, NULL, NULL),
('4546', 'bb', 'cc', NULL, NULL, NULL, NULL, NULL, NULL),
('484', 'ggfr4654fr&#178;', 'toy', NULL, NULL, NULL, NULL, NULL, NULL),
('5454', 'erherh', 'ergherh', NULL, NULL, NULL, NULL, NULL, NULL),
('64', 'su"hs13131', 'ss', NULL, NULL, NULL, NULL, NULL, NULL),
('656', 'bag16lms', 'toy', NULL, NULL, NULL, NULL, NULL, NULL),
('666', '77kk88', 'audi', NULL, NULL, NULL, NULL, NULL, NULL),
('777', 'bb555ll', 'opel', NULL, NULL, NULL, NULL, NULL, NULL),
('875', 'bnb45ss', 'kawa', NULL, NULL, NULL, NULL, NULL, NULL),
('999', 'bc659cd', 'toy', NULL, NULL, NULL, NULL, NULL, NULL),
('a131', 'Villechalane', 'Louis', '8 cours Lafontaine', '29000', 'BREST', '0000-00-00 00:00:00', '', 'SW'),
('a17', 'Andre', 'David', '1 r Aimon de Chiss', '38100', 'GRENOBLE', '0000-00-00 00:00:00', '', 'GY'),
('a55', 'Bedos', 'Christian', '1 r B', '65000', 'TARBES', '0000-00-00 00:00:00', '', 'GY'),
('a93', 'Tusseau', 'Louis', '22 r Renou', '86000', 'POITIERS', '0000-00-00 00:00:00', '', 'SW'),
('aaa', 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('b13', 'Bentot', 'Pascal', '11 av 6 Juin', '67000', 'STRASBOURG', '0000-00-00 00:00:00', '', 'GY'),
('b16', 'Bioret', 'Luc', '1 r Linne', '35000', 'RENNES', '0000-00-00 00:00:00', '', 'SW'),
('b19', 'Bunisset', 'Francis', '10 r Nicolas Chorier', '85000', 'LA ROCHE SUR YON', '0000-00-00 00:00:00', '', 'GY'),
('b25', 'Bunisset', 'Denise', '1 r Lionne', '49100', 'ANGERS', '0000-00-00 00:00:00', '', 'SW'),
('b28', 'Cacheux', 'Bernard', '114 r Authie', '34000', 'MONTPELLIER', '0000-00-00 00:00:00', '', 'GY'),
('b34', 'Cadic', 'Eric', '123 r Caponi', '41000', 'BLOIS', '0000-00-00 00:00:00', 'P', 'SW'),
('b4', 'Charoze', 'Catherine', '100 pl G', '33000', 'BORDEAUX', '0000-00-00 00:00:00', '', 'SW'),
('b50', 'Clepkens', 'Christophe', '12 r F', '13000', 'MARSEILLE', '0000-00-00 00:00:00', '', 'SW'),
('b59', 'Cottin', 'Vincenne', '36 sq Capucins', '5000', 'GAP', '0000-00-00 00:00:00', '', 'GY'),
('c14', 'Daburon', 'Fran', '13 r Champs Elys', '6000', 'NICE', '0000-00-00 00:00:00', 'S', 'SW'),
('c3', 'De', 'Pascal', '13 r Charles Peguy', '10000', 'TROYES', '0000-00-00 00:00:00', '', 'SW'),
('c54', 'Debelle', 'Michel', '181 r Caponi', '88000', 'EPINAL', '0000-00-00 00:00:00', '', 'SW'),
('d13', 'Debelle', 'Jeanne', '134 r Stalingrad', '44000', 'NANTES', '0000-00-00 00:00:00', '', 'SW'),
('d51', 'Debroise', 'Michel', '2 av 6 Juin', '70000', 'VESOUL', '0000-00-00 00:00:00', 'E', 'GY'),
('e22', 'Desmarquest', 'Nathalie', '14 r F', '54000', 'NANCY', '0000-00-00 00:00:00', '', 'GY'),
('e24', 'Desnost', 'Pierre', '16 r Barral de Montferrat', '55000', 'VERDUN', '0000-00-00 00:00:00', 'E', 'SW'),
('e39', 'Dudouit', 'Fr', '18 quai Xavier Jouvin', '75000', 'PARIS', '0000-00-00 00:00:00', '', 'GY'),
('e49', 'Duncombe', 'Claude', '19 av Alsace Lorraine', '9000', 'FOIX', '0000-00-00 00:00:00', '', 'GY'),
('e5', 'Enault-Pascreau', 'C', '25B r Stalingrad', '40000', 'MONT DE MARSAN', '0000-00-00 00:00:00', 'S', 'GY'),
('e52', 'Eynde', 'Val', '3 r Henri Moissan', '76000', 'ROUEN', '0000-00-00 00:00:00', '', 'GY'),
('eee', 'bbb', '', NULL, NULL, NULL, NULL, NULL, NULL),
('f21', 'Finck', 'Jacques', 'rte Montreuil Bellay', '74000', 'ANNECY', '0000-00-00 00:00:00', '', 'SW'),
('f39', 'Fr', 'Fernande', '4 r Jean Giono', '69000', 'LYON', '0000-00-00 00:00:00', '', 'GY'),
('f4', 'Gest', 'Alain', '30 r Authie', '46000', 'FIGEAC', '0000-00-00 00:00:00', '', 'GY'),
('g19', 'Gheysen', 'Galassus', '32 bd Mar Foch', '75000', 'PARIS', '0000-00-00 00:00:00', '', 'SW'),
('g30', 'Girard', 'Yvon', '31 av 6 Juin', '80000', 'AMIENS', '0000-00-00 00:00:00', 'N', 'GY'),
('g53', 'Gombert', 'Luc', '32 r Emile Gueymard', '56000', 'VANNES', '0000-00-00 00:00:00', '', 'GY'),
('g7', 'Guindon', 'Caroline', '40 r Mar Montgomery', '87000', 'LIMOGES', '0000-00-00 00:00:00', '', 'GY'),
('ghrftjfyj', 'jghjghjg', 'ghjghjhg', NULL, NULL, NULL, NULL, NULL, NULL),
('h13', 'Guindon', 'Fran', '44 r Picoti', '19000', 'TULLE', '0000-00-00 00:00:00', '', 'SW'),
('h30', 'Igigabel', 'Guy', '33 gal Arlequin', '94000', 'CRETEIL', '0000-00-00 00:00:00', '', 'SW'),
('h35', 'Jourdren', 'Pierre', '34 av Jean Perrot', '15000', 'AURRILLAC', '0000-00-00 00:00:00', '', 'GY'),
('h40', 'Juttard', 'Pierre-Raoul', '34 cours Jean Jaur', '8000', 'SEDAN', '0000-00-00 00:00:00', '', 'GY'),
('j45', 'Labour', 'Saout', '38 cours Berriat', '52000', 'CHAUMONT', '0000-00-00 00:00:00', 'N', 'SW'),
('j50', 'Landr', 'Philippe', '4 av G', '59000', 'LILLE', '0000-00-00 00:00:00', '', 'GY'),
('j8', 'Langeard', 'Hugues', '39 av Jean Perrot', '93000', 'BAGNOLET', '0000-00-00 00:00:00', 'P', 'GY'),
('k4', 'Lanne', 'Bernard', '4 r Bayeux', '30000', 'NIMES', '0000-00-00 00:00:00', '', 'SW'),
('k53', 'Le', 'No', '4 av Beauvert', '68000', 'MULHOUSE', '0000-00-00 00:00:00', '', 'SW'),
('l14', 'Le', 'Jean', '39 r Raspail', '53000', 'LAVAL', '0000-00-00 00:00:00', '', 'SW'),
('l23', 'Leclercq', 'Servane', '11 r Quinconce', '18000', 'BOURGES', '0000-00-00 00:00:00', '', 'SW'),
('l46', 'Lecornu', 'Jean-Bernard', '4 bd Mar Foch', '72000', 'LA FERTE BERNARD', '0000-00-00 00:00:00', '', 'GY'),
('l56', 'Lecornu', 'Ludovic', '4 r Abel Servien', '25000', 'BESANCON', '0000-00-00 00:00:00', '', 'SW'),
('m35', 'Lejard', 'Agn', '4 r Anthoard', '82000', 'MONTAUBAN', '0000-00-00 00:00:00', '', 'SW'),
('m45', 'Lesaulnier', 'Pascal', '47 r Thiers', '57000', 'METZ', '0000-00-00 00:00:00', '', 'SW'),
('n42', 'Letessier', 'St', '5 chem Capuche', '27000', 'EVREUX', '0000-00-00 00:00:00', '', 'GY'),
('n58', 'Loirat', 'Didier', 'Les P', '45000', 'ORLEANS', '0000-00-00 00:00:00', '', 'GY'),
('n59', 'Maffezzoli', 'Thibaud', '5 r Chateaubriand', '2000', 'LAON', '0000-00-00 00:00:00', '', 'SW'),
('o26', 'Mancini', 'Anne', '5 r D''Agier', '48000', 'MENDE', '0000-00-00 00:00:00', '', 'GY'),
('p32', 'Marcouiller', 'G', '7 pl St Gilles', '91000', 'ISSY LES MOULINEAUX', '0000-00-00 00:00:00', '', 'GY'),
('p40', 'Michel', 'Jean-Claude', '5 r Gabriel P', '61000', 'FLERS', '0000-00-00 00:00:00', 'O', 'SW'),
('p41', 'Montecot', 'Fran', '6 r Paul Val', '17000', 'SAINTES', '0000-00-00 00:00:00', '', 'GY'),
('p42', 'Notini', 'Veronique', '5 r Lieut Chabal', '60000', 'BEAUVAIS', '0000-00-00 00:00:00', '', 'SW'),
('p49', 'Onfroy', 'Den', '5 r Sidonie Jacolin', '37000', 'TOURS', '0000-00-00 00:00:00', '', 'GY'),
('p6', 'Pascreau', 'Charles', '57 bd Mar Foch', '64000', 'PAU', '0000-00-00 00:00:00', '', 'SW'),
('p7', 'Pernot', 'Claude-No', '6 r Alexandre 1 de Yougoslavie', '11000', 'NARBONNE', '0000-00-00 00:00:00', '', 'SW'),
('p8', 'Perrier', 'Ma', '6 r Aubert Dubayet', '71000', 'CHALON SUR SAONE', '0000-00-00 00:00:00', '', 'GY'),
('q17', 'Petit', 'Jean-Louis', '7 r Ernest Renan', '50000', 'SAINT LO', '0000-00-00 00:00:00', '', 'GY'),
('r24', 'Piquery', 'Patrick', '9 r Vaucelles', '14000', 'CAEN', '0000-00-00 00:00:00', 'O', 'GY'),
('r58', 'Quiquandon', 'Jo', '7 r Ernest Renan', '29000', 'QUIMPER', '0000-00-00 00:00:00', '', 'GY'),
('s10', 'Retailleau', 'Josselin', '88Bis r Saumuroise', '39000', 'DOLE', '0000-00-00 00:00:00', '', 'SW'),
('s21', 'Retailleau', 'Pascal', '32 bd Ayrault', '23000', 'MONTLUCON', '0000-00-00 00:00:00', '', 'SW'),
('t43', 'Souron', 'Maryse', '7B r Gay Lussac', '21000', 'DIJON', '0000-00-00 00:00:00', '', 'SW'),
('t47', 'Tiphagne', 'Patrick', '7B r Gay Lussac', '62000', 'ARRAS', '0000-00-00 00:00:00', '', 'SW'),
('t55', 'Tr', 'Alain', '7D chem Barral', '12000', 'RODEZ', '0000-00-00 00:00:00', '', 'SW'),
('t60', 'Tusseau', 'Josselin', '63 r Bon Repos', '28000', 'CHARTRES', '0000-00-00 00:00:00', '', 'GY');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `emprunter`
--
ALTER TABLE `emprunter`
  ADD CONSTRAINT `emprunter_ibfk_1` FOREIGN KEY (`id_vehicule`) REFERENCES `vehicule` (`VEH_ID`),
  ADD CONSTRAINT `emprunter_ibfk_2` FOREIGN KEY (`mat_visiteur`) REFERENCES `visiteur` (`VIS_MATRICULE`);
