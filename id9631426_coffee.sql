-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Φιλοξενητής: localhost:3306
-- Χρόνος δημιουργίας: 19 Μάη 2019 στις 10:58:56
-- Έκδοση διακομιστή: 10.3.14-MariaDB
-- Έκδοση PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `id9631426_coffee`
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

--
-- Άδειασμα δεδομένων του πίνακα `checkout`
--

INSERT INTO `checkout` (`firstname`, `email`, `address`, `city`, `zip`) VALUES
('ANI', 'test1@test', 'ΚΟΛΟΚΟΤΡΩΝΗ-28', 'ΚΑΒΑΛΑΣ', 65201);

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
(1, 'Conteqo Cafe', 'img/AITHIOPIA(2).png', 23.00, 'Συμβάλλει  στην απώλεια ανεπιθύμητου  βάρους
Βοηθάει την υγεία του ήπατος', 10),
(2, 'Conteqo Cafe 100% Arabica', 'img/AITHIOPIA.png', 20.00, 'Η Αιθιοπία είναι η γενέτειρα του καφέ.', 10),
(3, 'Bravo', 'img/BRAVO.png', 15.00, ' Ο καφές Bravo αποτελεί μια απολαυστική πρόταση για όλες τις ώρες της ημέρας. Ελληνικός καφές με όλη τη γεύση και το άρωμα της Ελλάδας.', 10),
(4, 'Bristot', 'img/BRISTOT.png', 15.00, 'Με την έντονη, κρεμώδη γεύση του και το πλούσιο σώμα του, είναι ένα ευχάριστα ισορροπημένο χαρμάνι.', 10),
(5, 'Buondi', 'img/BUONDI.png', 15.00, 'Καφές espresso Buondi - Original, 220g αλεσμένος', 10),
(6, 'Cagliari Crem Espresso', 'img/CAGLIARI(2).png', 17.00, 'Ένα μείγμα καφέ για έναν τυπικό ιταλικό εσπρέσο με έντονα χαρακτηριστικά.', 10),
(7, 'Cagliari Ristretto', 'img/CAGLIARI.png', 30.00, 'Μια ωραία επιλογή βραζιλίας Arabica καφέ και Robusta από τη Νοτιοανατολική Ασία.', 10),
(8, 'Cagliari Gran Caffe', 'img/CAGLIARI(3).png', 17.00, 'Καφές Espresso Cagliari Gran Caffe 1000g σε κόκκους ενα παραδοσιακό χαρμάνι.', 10),
(9, 'Buena', 'img/COSMAI(2).png', 32.00, 'Η μονοποικιλιακή σειρά από την Cosmai Caffè. O καφές Buena είναι 100% Arabica.', 10),
(10, 'Cosmai Caffe', 'img/COSMAI(3).png', 26.00, 'Ιδιαίτερη ένταση και πλούσια γεύση, ένας γλυκός καφές και κρεμώδης.', 10),
(11, 'Prestige', 'img/COSMAI.png ', 19.00, 'Κόκκοι καφέ με βελούδινη γεύση, γεμάτη πλούσιες αποχρώσεις, με διαρκές κι έντονο άρωμα.', 10),
(12, 'Covim Prestige', 'img/COVIM(3).png', 20.00, 'Σύσταση: 35% Arabica και 65% Robusta', 10),
(13, 'Covim Gold Arabica', 'img/COVIM(2).png', 21.00, 'Ο Gold Arabica είναι ένα χαρμάνι Covim από 100% Arabica κόκκους καφέ.', 10),
(14, 'Covim Granbar', 'img/COVIM.png', 23.00, 'Ο συνδυασμός των δύο ποικιλιών Arabica και Robusta.', 10),
(15, 'DaVinci Mocha Frappe', 'img/DA%20VINCI(2).png', 16.00, 'Αρωματικός καφές με ισχυρή προσωπικότητα.', 10),
(16, 'DaVinci Frappe', 'img/DA%20VINCI.png', 30.00, 'Εξαιρετικός καφές με Ιταλική κουλτούρα.', 10),
(17, 'Danesi Emerald', 'img/DANESI.png', 22.00, 'Το Emerald ανταποκρίνεται στις προσδοκίες όσων είναι αληθινοί γνώστες του espresso.

 ', 10),
(18, 'Espresso Gold', 'img/DANESI(2).png', 23.00, 'Ένας καφές συνώνυμος με το όνομα του, ένας καφές "ατόφιο χρυσάφι".', 10),
(19, 'De Roccis Elite', 'img/DE%20ROCCIS(2).png', 24.00, 'Μεσαίο καβούρδισμα με νότες από καραμελωμένα καρύδια.', 10),
(20, 'De Roccis Cremoso', 'img/DE%20ROCCIS(3).png', 22.00, 'Το πιο ντελικάτο καβούρδισμα σε ένα χαρμάνι από επιλεγμένες ποικιλίες Arabica', 10),
(21, 'De Roccis Intenso', 'img/DE%20ROCCIS.png', 21.00, 'Εξαιρετικό χαρμάνι εσπρέσο με πλούσια κρέμα και λεπτό άρωμα.', 10),
(22, 'Del faro', 'img/DEL%20FARO.png', 20.00, 'Kρέμα που αποδίδει χάρη στο υψηλό ποσοστό κόκκων Arabica.', 10),
(23, 'Eduscho Premium', 'img/EDUSCHO.png', 19.00, ' Τονωτική γεύση και πλούσιο άρωμα', 10),
(24, 'Eduscho Caffe Crema', 'img/EDUSCHO(2).png', 18.00, '100% χαρμάνι Arabica με γλυκό και ευχάριστω άρωμα', 10),
(25, 'Garibaldi', 'img/GARIBALDI.png', 22.00, 'Ένας καφές από 100% κόκκους Robusta.', 10),
(26, 'Ics choco drink', 'img/ICS(2).png', 25.00, 'Ρόφημα σοκολάτας με γεύση καραμέλα.', 10),
(27, 'Ics instant Coffee', 'img/ICS.png', 26.00, 'Ένας καφές με πλούσιο άρωμα και έντονη γεύση του Ιταλικού Espresso.', 10),
(28, 'Ipanema Espresso', 'img/Ipanema.png', 22.00, 'Υψηλής ποιότητας κόκκων Arabica και Robusta.', 10),
(29, 'Jacobs', 'img/Jacobs.png', 29.00, 'Ο Jacobs είναι ο κορυφαίος παραγωγός καφέ.', 10),
(30, 'Julius Meinl', 'img/Julius%20Meinl.png', 25.00, 'Οι προσεκτικά διαλεγμένοι κόκκοι 100% Arabica.', 10),
(31, 'Cannabissimo', 'img/KANABISSIMO.png', 12.00, 'Ο Cannabissimo coffee®, είναι 100% φυσικός και νόμιμος.', 10),
(32, 'Lamborghini', 'img/Lamborghini.png', 50.00, ' Στη γεύση υπάρχουν υπαινιγμοί φρυγανισμένου ψωμιού.', 10),
(33, 'Lavazza Blue', 'img/Lavazza%20Blue.png', 26.00, ' Μεσαίο καβούρδισμα με νότες από καραμελωμένα καρύδια.', 10),
(34, 'Lollo', 'img/Lollo.png', 27.00, 'Ένας  ουσιαστικός καφές που ξυπνάει τις αισθήσεις.', 10),
(35, 'Lucaffe', 'img/Lucaffe.png', 20.00, ' Μέτριο σώμα, γλυκιά γεύση, πολύ ευχάριστο άρωμα .', 10),
(36, 'Melitta Bella Crema', 'img/Melitta.png', 23.00, 'Το καθιστά ιδανικό για την παρασκευή κλασικού εσπρέσο.', 10),
(37, 'Molinari', 'img/Molinari.png', 27.00, 'Πρόκειται για έναν καφέ με μοναδική γλυκιά γεύση', 10),
(44, 'Monbana Chocolate', 'img/Monbana.png', 16.00, 'Ένα νόστιμο ρόφημα σοκολάτας με 33% κακάο.', 10),
(45, 'Caffe Motta', 'img/Motta.png', 14.00, 'O Motta Classico είναι ένας τυπικός Iταλικός καφές.', 10),
(46, 'Natreen Especial Cafe', 'img/Natreen.png', 18.00, 'Αυτό το μοναδικό μείγμα θα σας χαρίσει εσπρέσο με απαλή κρέμα.', 10),
(47, 'Nescafe Clasic', 'img/Nescafe.png', 22.00, 'Αγαπημένος και διαχρονικός, ο καφές Nescafe Classic είναι ο απόλυτος καφές.', 10),
(48, 'Extra Cafe New York', 'img/New%20York.png', 28.00, 'Το αποτέλεσμα είναι ένας καφές με υπέροχο άρωμα.', 10),
(49, 'Paluani Classico', 'img/Paluani.png', 20.00, 'Διακρίνεται για τη γεμάτη και έντονη γεύση του.', 10),
(50, 'Alambra', 'img/Passalacqua.png', 24.00, 'Το αποτέλεσμα είναι μια εξαιρετικά ευχάριστη εμπειρία καφέ.', 10),
(51, 'Coffee Roasters', 'img/Pelican%20Rouge.png', 25.00, ' Ιδανικός για παρασκευή espresso και cappuccino.', 10),
(52, 'Portioli Cafe', 'img/Portioli.png', 20.00, 'Αποτελείται από 90% Arabica και 10% Robusta.', 10),
(53, 'Puro Cafe', 'img/Puro.png', 22.50, ' Ο Puro είναι ένας καφές «Δίκαιου Εμπορίου»', 10),
(54, 'Caffe Liofilizzato', 'img/Ristora.png', 29.80, 'Χαρμάνι με πλούσιο σώμα και έντονο άρωμα', 10),
(55, 'Simat', 'img/Simat.png', 27.00, 'Δυνατός espresso από επιλεγμένους κόκκους Arabica και Robusta', 10),
(56, 'Kawa Coffees ', 'img/Utopia.png', 21.00, 'O Utopia Crema είναι ένας πικάντικος καφές.', 10),
(57, 'Vadino Caffe', 'img/Vandino.png', 22.60, ' Το προϊόν παρασκευάζεται και συσκευάζεται στην Ιταλία.', 10),
(58, 'Manaresi Caffe Arabica', 'img/Manaresi.jpg', 27.00, 'Τυπικός Νότιο-ιταλικός καφές με γεμάτη γεύση ', 10),
(59, 'Mondo Caffe', 'img/Mondocaffe.jpg', 13.00, 'αφές 100% Arabica από τη Βραζιλία.', 10),
(70, 'Izzy Barista', 'img/m1.png', 147.99, 'Κατάλληλο και για ζέσταμα γάλακτος και παρασκευή σοκολάτας 500W.', 10),
(71, 'DeLonghi', 'img/m2.png', 147.00, 'Κατάλληλη για καφέ σε σκόνη ή για μερίδες ESE.', 10),
(72, 'Belogia', 'img/m5.png', 365.99, 'Νέα αυτόματη δοσομετρικήμηχανή καφέ espresso από την Belogia με 1 ή 2 group', 10),
(73, 'Victoria', 'img/victoria.png', 14000.00, 'Αισθητική και Τεχνολογία σε μικρό μέγεθος.', 10),
(74, 'Zicron Display', 'img/zic.png', 2880.00, 'Expobar Zircon Display. Μηχανή με 2 group αυτόματη.', 10),
(75, 'Nespresso', 'img/m3.png', 195.00, 'Άψογος σχεδιασμός, ευκολία στη χρήση.', 10),
(76, 'Nespresso Pixie', 'img/m6.png', 95.85, 'Η Pixie είναι το έξυπνο μοντέλο της σειράς μηχανών μας .', 10),
(77, 'Nespresso Essenza Mini', 'img/m11.png', 64.00, 'Συνδυάζουν ευκολία στη χρήση, μινιμαλιστική κομψότητα', 10),
(78, 'Nespresso Lattissima One', 'img/m15.png', 249.00, 'Η Lattissima One σας δίνει τη δυνατότητα να απολαμβάνετε Cappuccino και Latte.', 10),
(79, 'Nespresso Expert', 'img/m7.png', 279.00, 'Η Nespresso Expert ανταποκρίνεται στις εξατομικευμένες ανάγκες σας.', 10),
(80, 'Nespresso Citiz', 'img/cit.png', 179.00, 'Κομψή με ανανεωμένο design.', 10),
(81, 'Nespresso Citiz&Milk', 'img/citm.png', 161.00, 'Παρασκευάστε τον τέλειο καφέ espresso με την καφετιέρα Nespresso CitiZ & Μilk ', 10);

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
(14, 'admin', 'admin@admin', 'admin123');

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
  MODIFY `u_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
