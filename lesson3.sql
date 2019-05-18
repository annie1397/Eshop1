-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Φιλοξενητής: 127.0.0.1
-- Χρόνος δημιουργίας: 18 Μάη 2019 στις 18:47:57
-- Έκδοση διακομιστή: 10.1.40-MariaDB
-- Έκδοση PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `lesson3`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `checkout`
--

CREATE TABLE `checkout` (
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `tblproduct`
--

CREATE TABLE `tblproduct` (
  `id` int(255) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(10,2) NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apothema` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=REDUNDANT;

--
-- Άδειασμα δεδομένων του πίνακα `tblproduct`
--

INSERT INTO `tblproduct` (`id`, `name`, `image`, `price`, `details`, `apothema`) VALUES
(1, 'Conteqo Cafe', 'img/AITHIOPIA(2).png', 23.00, '', 10),
(2, 'Conteqo Cafe 100% Arabica', 'img/AITHIOPIA.png', 20.00, '', 10),
(3, 'Bravo', 'img/BRAVO.png', 15.00, '', 10),
(4, 'Bristot', 'img/BRISTOT.png', 15.00, '', 10),
(5, 'Buondi', 'img/BUONDI.png', 15.00, '', 10),
(6, 'Cagliari Crem Espresso', 'img/CAGLIARI(2).png', 17.00, '', 10),
(7, 'Cagliari Ristretto', 'img/CAGLIARI.png', 30.00, '', 10),
(8, 'Cagliari Gran Caffe', 'img/CAGLIARI(3).png', 17.00, '', 10),
(9, 'Buena', 'img/COSMAI(2).png', 32.00, '', 10),
(10, 'Cosmai Caffe', 'img/COSMAI(3).png', 26.00, '', 10),
(11, 'Prestige', 'img/COSMAI.png ', 19.00, '', 10),
(12, 'Covim Prestige', 'img/COVIM(3).png', 20.00, '', 10),
(13, 'Covim Gold Arabica', 'img/COVIM(2).png', 21.00, '', 10),
(14, 'Covim Granbar', 'img/COVIM.png', 23.00, '', 10),
(15, 'DaVinci Mocha Frappe', 'img/DA%20VINCI(2).png', 16.00, '', 10),
(16, 'DaVinci Frappe', 'img/DA%20VINCI.png', 30.00, '', 10),
(17, 'Danesi Emerald', 'img/DANESI.png', 22.00, '', 10),
(18, 'Espresso Gold', 'img/DANESI(2).png', 23.00, '', 10),
(19, 'De Roccis Elite', 'img/DE%20ROCCIS(2).png', 24.00, '', 10),
(20, 'De Roccis Cremoso', 'img/DE%20ROCCIS(3).png', 22.00, '', 10),
(21, 'De Roccis Intenso', 'img/DE%20ROCCIS.png', 21.00, '', 10),
(22, 'Del faro', 'img/DEL%20FARO.png', 20.00, '', 10),
(23, 'Eduscho Premium', 'img/EDUSCHO.png', 19.00, '', 10),
(24, 'Eduscho Caffe Crema', 'img/EDUSCHO(2).png', 18.00, '', 10),
(25, 'Garibaldi', 'img/GARIBALDI.png', 22.00, '', 10),
(26, 'Ics choco drink', 'img/ICS(2).png', 25.00, '', 10),
(27, 'Ics instant Coffee', 'img/ICS.png', 26.00, '', 10),
(28, 'Ipanema Espresso', 'img/Ipanema.png', 22.00, '', 10),
(29, 'Jacobs', 'img/Jacobs.png', 29.00, '', 10),
(30, 'Julius Meinl', 'img/Julius%20Meinl.png', 25.00, '', 10),
(31, 'Cannabissimo', 'img/KANABISSIMO.png', 12.00, '', 10),
(32, 'Lamborghini', 'img/Lamborghini.png', 50.00, '', 10),
(33, 'Lavazza Blue', 'img/Lavazza%20Blue.png', 26.00, '', 10),
(34, 'Lollo', 'img/Lollo.png', 27.00, '', 10),
(35, 'Lucaffe', 'img/Lucaffe.png', 20.00, '', 10),
(36, 'Melitta Bella Crema', 'img/Melitta.png', 23.00, '', 10),
(37, 'Molinari', 'img/Molinari.png', 27.00, '', 10),
(44, 'Monbana Chocolate', 'img/Monbana.png', 16.00, '', 10),
(45, 'Caffe Motta', 'img/Motta.png', 14.00, '', 10),
(46, 'Natreen Especial Cafe', 'img/Natreen.png', 18.00, '', 10),
(47, 'Nescafe Clasic', 'img/Nescafe.png', 22.00, '', 10),
(48, 'Extra Cafe New York', 'img/New%20York.png', 28.00, '', 10),
(49, 'Paluani Classico', 'img/Paluani.png', 20.00, '', 10),
(50, 'Alambra', 'img/Passalacqua.png', 24.00, '', 10),
(51, 'Coffee Roasters', 'img/Pelican%20Rouge.png', 25.00, '', 10),
(52, 'Portioli Cafe', 'img/Portioli.png', 20.00, '', 10),
(53, 'Puro Cafe', 'img/Puro.png', 22.50, '', 10),
(54, 'Caffe Liofilizzato', 'img/Ristora.png', 29.80, '', 10),
(55, 'Simat', 'img/Simat.png', 27.00, '', 10),
(56, 'Kawa Coffees ', 'img/Utopia.png', 21.00, '', 10),
(57, 'Vadino Caffe', 'img/Vandino.png', 22.60, '', 10),
(58, 'Manaresi Caffe Arabica', 'img/Manaresi.jpg', 27.00, '', 10),
(59, 'Mondo Caffe', 'img/Mondocaffe.jpg', 13.00, '', 10),
(70, 'Izzy Barista', 'img/m1.png', 147.99, '', 10),
(71, 'DeLonghi', 'img/m2.png', 147.00, '', 10),
(72, 'Belogia', 'img/m5.png', 365.99, '', 10),
(73, 'Victoria', 'img/victoria.png', 14000.00, '', 10),
(74, 'Zicron Display', 'img/zic.png', 2880.00, '', 10),
(75, 'Nespresso', 'img/m3.png', 195.00, '', 10),
(76, 'Nespresso Pixie', 'img/m6.png', 95.85, '', 10),
(77, 'Nespresso Essenza Mini', 'img/m11.png', 64.00, '', 10),
(78, 'Nespresso Lattissima One', 'img/m15.png', 249.00, '', 10),
(79, 'Nespresso Expert', 'img/m7.png', 279.00, '', 10),
(80, 'Nespresso Citiz', 'img/cit.png', 179.00, '', 10),
(81, 'Nespresso Citiz&Milk', 'img/citm.png', 161.00, '', 10);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `users`
--

CREATE TABLE `users` (
  `u_id` int(4) NOT NULL,
  `u_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `u_email` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `u_pass` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Άδειασμα δεδομένων του πίνακα `users`
--

INSERT INTO `users` (`u_id`, `u_name`, `u_email`, `u_pass`) VALUES
(1, 'ANI VARAZASHVILI', 'psaki@psaki', '1234'),
(2, 'ANI VARAZASHVILI', 'psaki@psaki', 'ko'),
(3, 'kaka', 'kaka@kaka', 'kaka'),
(4, 'ANI VARAZASHVILI', 'kakakak@jakaka', '1234'),
(5, 'maria', 'maria@maria', '123'),
(6, 'anna', 'anna@anna', '123'),
(7, 'nana', 'nana@nana', 'nana');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `users_info`
--

CREATE TABLE `users_info` (
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `info` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Άδειασμα δεδομένων του πίνακα `users_info`
--

INSERT INTO `users_info` (`firstname`, `lastname`, `email`, `info`) VALUES
('achilleas', 'bellos', 'bellos@achilleas', 'eimai o achilleas kai eimai kala'),
('ANI', 'VARAZASHVILI', 'test1@test', 'hgvgjhvgjh'),
('kkkkk', 'ijliklkgjg', 'kjhlkh@rfigh', 'trdfghkjbnk'),
('dwqdqw', '', 'knhkj', ''),
('kakaaas', 'ekewfoewkf', 'knwflkfnn', 'lnfwef');

--
-- Ευρετήρια για άχρηστους πίνακες
--

--
-- Ευρετήρια για πίνακα `checkout`
--
ALTER TABLE `checkout`
  ADD UNIQUE KEY `email` (`email`);

--
-- Ευρετήρια για πίνακα `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Ευρετήρια για πίνακα `users_info`
--
ALTER TABLE `users_info`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT για άχρηστους πίνακες
--

--
-- AUTO_INCREMENT για πίνακα `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
