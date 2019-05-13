-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Σύστημα: localhost
-- Χρόνος δημιουργίας: 13 Μάι 2019, στις 02:54 PM
-- Έκδοση Διακομιστή: 5.1.41
-- Έκδοση PHP: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Βάση: `lesson3`
--

-- --------------------------------------------------------

--
-- Δομή Πίνακα για τον Πίνακα `tblproduct`
--

CREATE TABLE IF NOT EXISTS `tblproduct` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `code` varchar(255) CHARACTER SET latin1 NOT NULL,
  `image` text CHARACTER SET latin1 NOT NULL,
  `price` double(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_code` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=110 ;

--
-- 'Αδειασμα δεδομένων του πίνακα `tblproduct`
--

INSERT INTO `tblproduct` (`id`, `name`, `code`, `image`, `price`) VALUES
(7, 'Conteqo Cafe', '01', 'img/AITHIOPIA(2).png', 23.00),
(8, 'Conteqo Cafe 100% Arabica', '02', 'img/AITHIOPIA.png', 20.00),
(9, 'Bravo', '03', 'img/BRAVO.png', 15.00),
(10, 'Bristot', '04', 'img/BRISTOT.png', 15.00),
(11, 'Buondi', '05', 'img/BUONDI.png', 15.00),
(12, 'Cagliari Crem Espresso', '06', 'img/CAGLIARI(2).png', 0.00),
(13, 'Cagliari Ristretto', '07', 'img/CAGLIARI.png', 30.00),
(14, 'Cagliari Gran Caffe', '08', 'img/CAGLIARI(3).png', 17.00),
(15, 'Buena', '09', 'img/COSMAI(2).png', 32.00),
(16, 'Cosmai Caffe', '10', 'img/COSMAI(3).png', 26.00),
(17, 'Prestige', '11', 'img/COSMAI.png ', 19.00),
(18, 'Covim Prestige', '12', 'img/COVIM(3).png', 20.00),
(19, 'Covim Gold Arabica', '13', 'img/COVIM(2).png', 21.00),
(20, 'Covim Granbar', '14', 'img/COVIM.png', 23.00),
(21, 'DaVinci Mocha Frappe', '15', 'img/DA%20VINCI(2).png', 16.00),
(22, 'DaVinci Frappe', '16', 'img/DA%20VINCI.png', 30.00),
(23, 'Danesi Emerald', '17', 'img/DANESI.png', 22.00),
(24, 'Espresso Gold', '18', 'img/DANESI(2).png', 23.00),
(25, 'De Roccis Elite', '19', 'img/DE%20ROCCIS(2).png', 24.00),
(26, 'De Roccis Cremoso', '20', 'img/DE%20ROCCIS(3).png', 22.00),
(27, 'De Roccis Intenso', '21', 'img/DE%20ROCCIS.png', 21.00),
(28, 'Del faro', '22', 'img/DEL%20FARO.png', 20.00),
(29, 'Eduscho Premium', '23', 'img/EDUSCHO.png', 19.00),
(30, 'Eduscho Caffe Crema', '24', 'img/EDUSCHO(2).png', 18.00),
(31, 'Garibaldi', '25', 'img/GARIBALDI.png', 22.00),
(32, 'Ics choco drink', '26', 'img/ICS(2).png', 25.00),
(33, 'Ics instant Coffee', '27', 'img/ICS.png', 26.00),
(34, 'Ipanema Espresso', '28', 'img/Ipanema.png', 22.00),
(35, 'Jacobs', '29', 'img/Jacobs.png', 29.00),
(36, 'Julius Meinl', '30', 'img/Julius%20Meinl.png', 25.00),
(37, 'Cannabissimo', '31', 'img/KANABISSIMO.png', 12.00),
(38, 'Lamborghini', '32', 'img/Lamborghini.png', 50.00),
(39, 'Lavazza Blue', '33', 'img/Lavazza%20Blue.png', 26.00),
(40, 'Lollo', '34', 'img/Lollo.png', 27.00),
(41, 'Lucaffe', '35', 'img/Lucaffe.png', 20.00),
(42, 'Melitta Bella Crema', '36', 'img/Melitta.png', 23.00),
(43, 'Molinari', '37', 'img/Molinari.png', 27.00),
(46, 'Monbana Chocolate', '44', 'img/Monbana.png', 16.00),
(47, 'Caffe Motta', '45', 'img/Motta.png', 14.00),
(48, 'Natreen Especial Cafe', '46', 'img/Natreen.png', 18.00),
(49, 'Nescafe Clasic', '47', 'img/Nescafe.png', 22.00),
(50, 'Extra Cafe New York', '48', 'img/New%20York.png', 28.00),
(51, 'Paluani Classico', '49', 'img/Paluani.png', 20.00),
(52, 'Alambra', '50', 'img/Passalacqua.png', 24.00),
(53, 'Coffee Roasters', '51', 'img/Pelican%20Rouge.png', 25.00),
(54, 'Portioli Cafe', '52', 'img/Portioli.png', 20.00),
(55, 'Puro Cafe', '53', 'img/Puro.png', 22.50),
(56, 'Caffe Liofilizzato', '54', 'img/Ristora.png', 29.80),
(57, 'Simat', '55', 'img/Simat.png', 27.00),
(58, 'Kawa Coffees ', '56', 'img/Utopia.png', 21.00),
(59, 'Vadino Caffe', '57', 'img/Vandino.png', 22.60),
(60, 'Manaresi Caffe Arabica', '58', 'img/Manaresi.jpg', 27.00),
(61, 'Mondo Caffe', '59', 'img/Mondocaffe.jpg', 13.00),
(98, 'Izzy Barista', '70', 'img/m1.png', 147.99),
(99, 'DeLonghi', '71', 'img/m2.png', 147.00),
(100, 'Belogia', '72', 'img/m5.png', 365.99),
(101, 'Victoria', '73', 'img/victoria.png', 14.00),
(102, 'Zicron Display', '74', 'img/zic.png', 2.28),
(103, 'Nespresso', '75', 'img/m3.png', 195.00),
(104, 'Nespresso Pixie', '76', 'img/m6.png', 95.85),
(105, 'Nespresso Essenza Mini', '77', 'img/m11.png', 64.00),
(106, 'Nespresso Lattissima One', '78', 'img/m15.png', 249.00),
(107, 'Nespresso Expert', '79', 'img/m7.png', 279.00),
(108, 'Nespresso Citiz', '80', 'img/cit.png', 179.00),
(109, 'Nespresso Citiz&Milk', '81', 'img/citm.png', 161.00);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
