-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 30, 2022 at 04:52 PM
-- Server version: 10.3.34-MariaDB-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `acavalie`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_disponibile`
--

CREATE TABLE `data_disponibile` (
  `data` date NOT NULL,
  `posti` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_disponibile`
--

INSERT INTO `data_disponibile` (`data`, `posti`) VALUES
('2022-01-09', 70),
('2022-01-10', 110),
('2022-01-11', 100),
('2022-01-14', 200),
('2022-01-16', 100),
('2022-01-31', 2),
('2022-02-16', 50),
('2022-02-19', 100),
('2022-02-20', 100),
('2022-02-22', 50),
('2022-02-24', 50),
('2022-02-26', 150),
('2022-02-27', 150),
('2022-05-14', 100),
('2022-05-15', 100),
('2022-05-26', 100),
('2022-05-28', 100),
('2022-05-29', 100);

-- --------------------------------------------------------

--
-- Table structure for table `ingressi_entrata`
--

CREATE TABLE `ingressi_entrata` (
  `codice` int(11) NOT NULL,
  `utente` varchar(20) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ingressi_entrata`
--

INSERT INTO `ingressi_entrata` (`codice`, `utente`, `data`) VALUES
(55, 'BRGFPP00B26C111Y', '2022-02-22'),
(56, 'BRGFPP00B26C111Y', '2022-05-14'),
(57, 'BRGFPP00B26C111Y', '2022-05-28'),
(54, 'MMMGGG00A55G222V', '2022-02-16');

-- --------------------------------------------------------

--
-- Table structure for table `ingressi_lezione`
--

CREATE TABLE `ingressi_lezione` (
  `codice` int(11) NOT NULL,
  `utente` varchar(20) DEFAULT NULL,
  `lezione` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ingressi_lezione`
--

INSERT INTO `ingressi_lezione` (`codice`, `utente`, `lezione`) VALUES
(38, 'BRGFPP00B26C111Y', 11),
(39, 'BRGFPP00B26C111Y', 15),
(41, 'BRGFPP00B26C111Y', 18),
(40, 'LDFDRE00P22A874G', 15);

-- --------------------------------------------------------

--
-- Table structure for table `lezione`
--

CREATE TABLE `lezione` (
  `id` int(11) NOT NULL,
  `data` date NOT NULL,
  `posti` smallint(6) NOT NULL,
  `descrizione` text NOT NULL,
  `istruttore` varchar(20) NOT NULL,
  `pista` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lezione`
--

INSERT INTO `lezione` (`id`, `data`, `posti`, `descrizione`, `istruttore`, `pista`) VALUES
(11, '2022-02-16', 5, 'Corso per neofiti. Si affronteranno i fondamentali della tecnica di guida: posizione sulla moto, staccata e tecnica in volo.', 'Filippo Brugnolaro', 2),
(12, '2022-02-22', 5, 'Corso per amatori. Si divider&agrave; il tracciato in settori, che verranno analizzati singolarmente per capire le traiettorie ideali da utilizzare. A fine corso si far&agrave; una piccola simulazione di gara.', 'Leonardo Gambirasio', 1),
(13, '2022-02-24', 4, 'Corso per professionisti. Si simuler&agrave; una giornata di gara nel suo complesso: prove libere, qualifiche, gara 1 e gara 2.', 'Riccardo Simionato', 1),
(15, '2022-02-27', 2, 'Corso di enduro. Focalizza l\'attenzione sulle traiettorie da usare e la posizione in sella.', 'Filippo Brugnolaro', 3),
(16, '2022-02-26', 5, 'Corso per neofiti, adatto a chi non &egrave; mai andato in moto.', 'Alessandro Cavaliere', 2),
(17, '2022-05-14', 5, 'Corso per piloti professionisti. Si andr&agrave; a simulare una giornata di gare, attraverso varie sessioni cronometrate e simulazioni di gara.', 'Alessandro Cavaliere', 1),
(18, '2022-05-26', 10, 'Corso per piloti intermedi. Si ripasseranno i fondamentali della tecnica di guida, per poi provare la pista pi&ugrave; famosa dell\'impianto. Si divider&agrave; la pista in microsettori, analizzando le traiettorie ideale per ogni microsettore', 'Filippo Brugnolaro', 29),
(19, '2022-05-29', 7, 'Corso per neofiti e per chi si approccia per la prima volta alla guida una moto. Si studieranno i fondamentali della tecnica di guida e della posizione in sella. Si effettueranno poi delle sessioni libere sotto la supervisione dell\'istruttore.', 'Filippo Brugnolaro', 30);

-- --------------------------------------------------------

--
-- Table structure for table `messaggio`
--

CREATE TABLE `messaggio` (
  `id` int(11) NOT NULL,
  `nominativo` varchar(60) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp(),
  `oggetto` varchar(100) NOT NULL,
  `testo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messaggio`
--

INSERT INTO `messaggio` (`id`, `nominativo`, `email`, `telefono`, `data`, `oggetto`, `testo`) VALUES
(7, 'Filippo Brugnolaro', 'filippo.brugnolaro.fb@gmail.com', '3459751230', '2022-02-01 17:16:26', 'Richiesta corso #15', 'Buongiorno, volevo chiedrvi se potevate per favore contattarmi per spiegarmi quale sia la difficolt&agrave; del corso in questione'),
(9, 'Igor Zawalewski', 'igor@zawalewski.com', '3455734583', '2022-02-01 17:21:44', 'Richiesta informazioni noleggio', 'Buongiorno, volevo sapere se esiste qualche tipo di copertura assicurativa durante il noleggio'),
(19, 'Mario Rossi', 'mario.rossi@gmail.com', '3477318532', '2022-04-30 14:49:37', 'Ingresso spettatori', 'Buongiorno, volevo sapere il prezzo per l\'ingresso come spettatore presso il vostro impianto. Grazie mille. Mario Rossi');

-- --------------------------------------------------------

--
-- Table structure for table `moto`
--

CREATE TABLE `moto` (
  `numero` smallint(6) NOT NULL,
  `cilindrata` smallint(6) NOT NULL,
  `marca` varchar(20) NOT NULL,
  `modello` varchar(20) NOT NULL,
  `anno` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `moto`
--

INSERT INTO `moto` (`numero`, `cilindrata`, `marca`, `modello`, `anno`) VALUES
(13, 450, 'KTM', 'SXF 450', 2020),
(14, 450, 'KTM', 'SXF 450', 2020),
(16, 125, 'KTM', 'SX 125', 2020),
(17, 450, 'HONDA', 'CRF 450', 2021),
(18, 250, 'HONDA', 'CRF 250', 2022),
(19, 250, 'KAWASAKI', 'KXF 250', 2019),
(20, 450, 'KAWASAKI', 'KXF 450', 2021),
(21, 250, 'SUZUKI', 'RMZ 250', 2018),
(22, 125, 'YAMAHA', 'YZ 125', 2022),
(23, 250, 'YAMAHA', 'YZF 250', 2021),
(24, 250, 'HUSQVARNA', 'FC 250', 2022);

-- --------------------------------------------------------

--
-- Table structure for table `noleggio`
--

CREATE TABLE `noleggio` (
  `codice` int(11) NOT NULL,
  `data` date NOT NULL,
  `attrezzatura` tinyint(1) NOT NULL,
  `utente` varchar(20) NOT NULL,
  `moto` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `noleggio`
--

INSERT INTO `noleggio` (`codice`, `data`, `attrezzatura`, `utente`, `moto`) VALUES
(44, '2022-02-22', 1, 'LDFDRE00P22A874G', 13),
(45, '2022-02-22', 1, 'BRGFPP00B26C111Y', 21),
(46, '2022-02-27', 0, 'BRGFPP00B26C111Y', 24),
(47, '2022-02-27', 1, 'LDFDRE00P22A874G', 20),
(48, '2022-05-14', 1, 'BRGFPP00B26C111Y', 19),
(49, '2022-05-28', 1, 'BRGFPP00B26C111Y', 13),
(50, '2022-05-26', 1, 'BRGFPP00B26C111Y', 18);

-- --------------------------------------------------------

--
-- Table structure for table `pista`
--

CREATE TABLE `pista` (
  `id` smallint(6) NOT NULL,
  `lunghezza` smallint(6) NOT NULL,
  `descrizione` text NOT NULL,
  `terreno` varchar(20) NOT NULL,
  `apertura` time NOT NULL,
  `chiusura` time NOT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pista`
--

INSERT INTO `pista` (`id`, `lunghezza`, `descrizione`, `terreno`, `apertura`, `chiusura`, `foto`) VALUES
(1, 1800, 'Tracciato pro, adatto solo ai piloti pi&ugrave; esperti. Si articola in lunghi panettoni, ampie curve paraboliche e salti doppi e tripli. Viene fresato raramente per simulare il pi&ugrave; possibile un tracciato di gara.', 'terra_morbida', '09:00:00', '17:00:00', '1.jpeg'),
(2, 1500, 'Tracciato pro, adatto solo a piloti professionisti. Si articola in lunghe salite e discese, con salti di media lunghezza e curve principalmente senza sponde. Sono presenti molti canali e curve in contropendenza. Il tracciato viene raramente preparato, dato il fondo roccioso.', 'terra_sassosa', '10:00:00', '17:00:00', '2.jpeg'),
(3, 2100, 'Tracciato intermedio. Adatto a piloti che non amano i salti lunghi o curve troppo impegnative. Si articola in lunghi rettilinei, modesti saliscendi e curve paraboliche. Il tracciato si sviluppa all\'interno di un boschetto, ed &egrave; particolarmente adatto agli allenamenti estivi.', 'terra_sassosa', '09:00:00', '15:00:00', '3.jpeg'),
(28, 1700, 'Tracciato intermedio, adatto ai piloti amatoriali. Si sviluppa in un\'area prevalentemente montuosa, attraverso salti di media lunghezza, curve paraboliche e lunghi saliscendi. Allenarsi in questo tracciato &egrave; propedeutico per l\'accesso ai tracciati pro.', 'terra_battuta', '09:00:00', '18:00:00', '28.jpeg'),
(29, 2000, 'Tracciato adatto ai piloti professionisti. Il percorso si sviluppa sul lato di una montagna, includendo lunghi salti, curve in contropendenza e veloci saliscendi. Grazie alle sue caratteristiche, viene spesso utilizzato dai piloti di fama mondiale per allenarsi.', 'terra_morbida', '11:00:00', '17:30:00', '29.jpeg'),
(30, 1000, 'Tracciato facile, adatto ai neofiti e agli appassionati che vogliono divertirsi in sella ai propri mezzi. Si articola in dolci saliscendi e salti di piccola lunghezza. &Egrave; adatto per apprendere al meglio le basi della tecnica di guida.', 'terra_sassosa', '09:00:00', '16:00:00', '30.jpeg'),
(31, 1300, 'Tracciato facile, adatto ai piloti neofiti. Il tracciato si articola in una serie di curve tortuose, non vi sono salti. &Egrave; adatto per imparare le basi della guida sulla sabbia. Ovviamente &egrave; anche il tracciato ideale per avere fotografie mozzafiato!', 'sabbia', '10:00:00', '15:00:00', '31.jpeg'),
(32, 1000, 'Tracciato facile, adatto ai piloti neofiti. Si sviluppa in una serie di curve paraboliche, seguite da lunghi rettilinei e grandi salti. &Egrave; adatto ad imparare al meglio la tecnica per saltare.', 'terra_battuta', '12:00:00', '19:00:00', '32.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `utente`
--

CREATE TABLE `utente` (
  `cf` char(16) NOT NULL,
  `username` varchar(20) NOT NULL,
  `cognome` varchar(25) NOT NULL,
  `nome` varchar(25) NOT NULL,
  `nascita` date NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(256) NOT NULL,
  `ruolo` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `utente`
--

INSERT INTO `utente` (`cf`, `username`, `cognome`, `nome`, `nascita`, `telefono`, `email`, `password`, `ruolo`) VALUES
('BRGFPP00B26C111Y', 'user', 'User', 'User', '2000-02-26', '3459751230', 'user@user.com', '$2y$10$OvvZ25M6vSs7QR1muPMtIuBCP7wkvbQjR4qCQJVbPFcAHs/...W/u', 1),
('CVLLSN00A04A001A', 'admin', 'Admin', 'Admin', '2000-01-04', '3477625776', 'admin@amp.com', '$2y$10$iXw1Y0BTQYZ5dHZBinRNZ.Dr7AYohu/EIXLzGcQFmMVphGUqrTyTy', 2),
('LDFDRE00P22A874G', 'leo22', 'Leo', 'Rossi', '2000-01-01', '3333333333', 'leo@gmail.com', '$2y$10$gqwJv8zfrJdSABRek4Gn7.aW6L1xWHd19zJyvWBYZIDSGU8yCADUi', 1),
('MMMGGG00A55G222V', 'margre', 'Greggio', 'Marta', '2001-01-13', '3216571845', 'ciao@ciao.com', '$2y$10$w1AZTfSyZt2PJT6vHCwc9e72eBUUanUAVzQxiKtfWTbms/HUnS4T.', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_disponibile`
--
ALTER TABLE `data_disponibile`
  ADD PRIMARY KEY (`data`);

--
-- Indexes for table `ingressi_entrata`
--
ALTER TABLE `ingressi_entrata`
  ADD PRIMARY KEY (`codice`),
  ADD UNIQUE KEY `utente` (`utente`,`data`),
  ADD KEY `ingressi_entrata_ibfk_1` (`data`);

--
-- Indexes for table `ingressi_lezione`
--
ALTER TABLE `ingressi_lezione`
  ADD PRIMARY KEY (`codice`),
  ADD UNIQUE KEY `utente` (`utente`,`lezione`),
  ADD KEY `ingressi_lezione_ibfk_1` (`lezione`);

--
-- Indexes for table `lezione`
--
ALTER TABLE `lezione`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pista` (`pista`),
  ADD KEY `lezione_data` (`data`);

--
-- Indexes for table `messaggio`
--
ALTER TABLE `messaggio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `moto`
--
ALTER TABLE `moto`
  ADD PRIMARY KEY (`numero`);

--
-- Indexes for table `noleggio`
--
ALTER TABLE `noleggio`
  ADD PRIMARY KEY (`codice`),
  ADD UNIQUE KEY `data` (`data`,`utente`),
  ADD UNIQUE KEY `data_2` (`data`,`utente`),
  ADD KEY `fk_noleggio` (`utente`),
  ADD KEY `noleggio_ibfk_1` (`moto`);

--
-- Indexes for table `pista`
--
ALTER TABLE `pista`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `utente`
--
ALTER TABLE `utente`
  ADD PRIMARY KEY (`cf`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ingressi_entrata`
--
ALTER TABLE `ingressi_entrata`
  MODIFY `codice` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `ingressi_lezione`
--
ALTER TABLE `ingressi_lezione`
  MODIFY `codice` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `lezione`
--
ALTER TABLE `lezione`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `messaggio`
--
ALTER TABLE `messaggio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `moto`
--
ALTER TABLE `moto`
  MODIFY `numero` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `noleggio`
--
ALTER TABLE `noleggio`
  MODIFY `codice` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `pista`
--
ALTER TABLE `pista`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ingressi_entrata`
--
ALTER TABLE `ingressi_entrata`
  ADD CONSTRAINT `fk_ingressi_entrata` FOREIGN KEY (`utente`) REFERENCES `utente` (`cf`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ingressi_entrata_ibfk_1` FOREIGN KEY (`data`) REFERENCES `data_disponibile` (`data`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ingressi_lezione`
--
ALTER TABLE `ingressi_lezione`
  ADD CONSTRAINT `fk_ingressi_lezione` FOREIGN KEY (`utente`) REFERENCES `utente` (`cf`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ingressi_lezione_ibfk_1` FOREIGN KEY (`lezione`) REFERENCES `lezione` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lezione`
--
ALTER TABLE `lezione`
  ADD CONSTRAINT `lezione_data` FOREIGN KEY (`data`) REFERENCES `data_disponibile` (`data`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lezione_ibfk_1` FOREIGN KEY (`pista`) REFERENCES `pista` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `noleggio`
--
ALTER TABLE `noleggio`
  ADD CONSTRAINT `fk_data` FOREIGN KEY (`data`) REFERENCES `data_disponibile` (`data`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_noleggio` FOREIGN KEY (`utente`) REFERENCES `utente` (`cf`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noleggio_ibfk_1` FOREIGN KEY (`moto`) REFERENCES `moto` (`numero`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
