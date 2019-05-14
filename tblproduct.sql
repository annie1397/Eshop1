-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Σύστημα: localhost
-- Χρόνος δημιουργίας: 14 Μάι 2019, στις 04:15 PM
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
  `id` int(255) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` double(10,2) NOT NULL,
  `quantity` int(255) NOT NULL,
   PRIMARY KEY (`id`)
)  ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 'Αδειασμα δεδομένων του πίνακα `tblproduct`
--

INSERT INTO `tblproduct` (`name`, `id`, `image`, `price`, `quantity`) VALUES
('Conteqo Cafe', 1, 'img/AITHIOPIA(2).png', 23.00, 0),
('Conteqo Cafe 100% Arabica', 2, 'img/AITHIOPIA.png', 20.00, 0),
('Bravo', 3, 'img/BRAVO.png', 15.00, 0),
('Bristot', 4, 'img/BRISTOT.png', 15.00, 0),
('Buondi', 5, 'img/BUONDI.png', 15.00, 0),
('Cagliari Crem Espresso', 6, 'img/CAGLIARI(2).png', 17.00, 0),
('Cagliari Ristretto', 7, 'img/CAGLIARI.png', 30.00, 0),
('Cagliari Gran Caffe', 8, 'img/CAGLIARI(3).png', 17.00, 0),
('Buena', 9, 'img/COSMAI(2).png', 32.00, 0),
('Cosmai Caffe', 10, 'img/COSMAI(3).png', 26.00, 0),
('Prestige', 11, 'img/COSMAI.png ', 19.00, 0),
('Covim Prestige', 12, 'img/COVIM(3).png', 20.00, 0),
('Covim Gold Arabica', 13, 'img/COVIM(2).png', 21.00, 0),
('Covim Granbar', 14, 'img/COVIM.png', 23.00, 0),
('DaVinci Mocha Frappe', 15, 'img/DA%20VINCI(2).png', 16.00, 0),
('DaVinci Frappe', 16, 'img/DA%20VINCI.png', 30.00, 0),
('Danesi Emerald', 17, 'img/DANESI.png', 22.00, 0),
('Espresso Gold', 18, 'img/DANESI(2).png', 23.00, 0),
('De Roccis Elite', 19, 'img/DE%20ROCCIS(2).png', 24.00, 0),
('De Roccis Cremoso', 20, 'img/DE%20ROCCIS(3).png', 22.00, 0),
('De Roccis Intenso', 21, 'img/DE%20ROCCIS.png', 21.00, 0),
('Del faro', 22, 'img/DEL%20FARO.png', 20.00, 0),
('Eduscho Premium', 23, 'img/EDUSCHO.png', 19.00, 0),
('Eduscho Caffe Crema', 24, 'img/EDUSCHO(2).png', 18.00, 0),
('Garibaldi', 25, 'img/GARIBALDI.png', 22.00, 0),
('Ics choco drink', 26, 'img/ICS(2).png', 25.00, 0),
('Ics instant Coffee', 27, 'img/ICS.png', 26.00, 0),
('Ipanema Espresso', 28, 'img/Ipanema.png', 22.00, 0),
('Jacobs', 29, 'img/Jacobs.png', 29.00, 0),
('Julius Meinl', 30, 'img/Julius%20Meinl.png', 25.00, 0),
('Cannabissimo', 31, 'img/KANABISSIMO.png', 12.00, 0),
('Lamborghini', 32, 'img/Lamborghini.png', 50.00, 0),
('Lavazza Blue', 33, 'img/Lavazza%20Blue.png', 26.00, 0),
('Lollo', 34, 'img/Lollo.png', 27.00, 0),
('Lucaffe', 35, 'img/Lucaffe.png', 20.00, 0),
('Melitta Bella Crema', 36, 'img/Melitta.png', 23.00, 0),
('Molinari', 37, 'img/Molinari.png', 27.00, 0),
('Monbana Chocolate', 44, 'img/Monbana.png', 16.00, 0),
('Caffe Motta', 45, 'img/Motta.png', 14.00, 0),
('Natreen Especial Cafe', 46, 'img/Natreen.png', 18.00, 0),
('Nescafe Clasic', 47, 'img/Nescafe.png', 22.00, 0),
('Extra Cafe New York', 48, 'img/New%20York.png', 28.00, 0),
('Paluani Classico', 49, 'img/Paluani.png', 20.00, 0),
('Alambra', 50, 'img/Passalacqua.png', 24.00, 0),
('Coffee Roasters', 51, 'img/Pelican%20Rouge.png', 25.00, 0),
('Portioli Cafe', 52, 'img/Portioli.png', 20.00, 0),
('Puro Cafe', 53, 'img/Puro.png', 22.50, 0),
('Caffe Liofilizzato', 54, 'img/Ristora.png', 29.80, 0),
('Simat', 55, 'img/Simat.png', 27.00, 0),
('Kawa Coffees ', 56, 'img/Utopia.png', 21.00, 0),
('Vadino Caffe', 57, 'img/Vandino.png', 22.60, 0),
('Manaresi Caffe Arabica', 58, 'img/Manaresi.jpg', 27.00, 0),
('Mondo Caffe', 59, 'img/Mondocaffe.jpg', 13.00, 0),
('Izzy Barista', 70, 'img/m1.png', 147.99, 0),
('DeLonghi', 71, 'img/m2.png', 147.00, 0),
('Belogia', 72, 'img/m5.png', 365.99, 0),
('Victoria', 73, 'img/victoria.png', 14000.00, 0),
('Zicron Display', 74, 'img/zic.png', 2880.00, 0),
('Nespresso', 75, 'img/m3.png', 195.00, 0),
('Nespresso Pixie', 76, 'img/m6.png', 95.85, 0),
('Nespresso Essenza Mini', 77, 'img/m11.png', 64.00, 0),
('Nespresso Lattissima One', 78, 'img/m15.png', 249.00, 0),
('Nespresso Expert', 79, 'img/m7.png', 279.00, 0),
('Nespresso Citiz', 80, 'img/cit.png', 179.00, 0),
('Nespresso Citiz&Milk', 81, 'img/citm.png', 161.00, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
