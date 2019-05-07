-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Σύστημα: localhost
-- Χρόνος δημιουργίας: 04 Μάι 2019, στις 07:43 PM
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
-- Δομή Πίνακα για τον Πίνακα `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- 'Αδειασμα δεδομένων του πίνακα `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `price`) VALUES
(1, 'espresso', 'coffe.jpg', 2),
(2, 'kanapes', '1.jpg', 180),
(3, 'kathisma', '2.jpg', 349);

-- --------------------------------------------------------

--
-- Δομή Πίνακα για τον Πίνακα `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `u_id` int(4) NOT NULL AUTO_INCREMENT,
  `u_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `u_email` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `u_pass` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- 'Αδειασμα δεδομένων του πίνακα `users`
--

INSERT INTO `users` (`u_id`, `u_name`, `u_email`, `u_pass`) VALUES
(1, 'ANI VARAZASHVILI', 'psaki@psaki', '1234'),
(2, 'ANI VARAZASHVILI', 'psaki@psaki', 'ko'),
(3, 'kaka', 'kaka@kaka', 'kaka'),
(4, 'ANI VARAZASHVILI', 'kakakak@jakaka', '1234'),
(5, 'maria', 'maria@maria', '123'),
(6, 'anna', 'anna@anna', '123'),
(7, 'nana', 'nana@nana', 'nana');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
