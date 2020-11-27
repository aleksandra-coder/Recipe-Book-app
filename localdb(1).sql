-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:51010
-- Generation Time: Nov 27, 2020 at 01:29 AM
-- Server version: 5.7.9
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `localdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `recipe`
--

CREATE TABLE `recipe` (
  `recipeID` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `RecipeName` varchar(50) NOT NULL,
  `Images` blob NOT NULL,
  `Servings` int(11) DEFAULT NULL,
  `PreparationTime` int(11) DEFAULT NULL,
  `Ratings` int(11) DEFAULT NULL,
  `Ingredients` varchar(200) NOT NULL,
  `Instructions` text NOT NULL,
  `DateAdded` date DEFAULT NULL,
  `TimeAdded` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recipe`
--

INSERT INTO `recipe` (`recipeID`, `userID`, `RecipeName`, `Images`, `Servings`, `PreparationTime`, `Ratings`, `Ingredients`, `Instructions`, `DateAdded`, `TimeAdded`) VALUES
(1, NULL, 'Green smoothie', '', 2, 5, 4, '1 green apple, 2 kiwis, handful of fresh baby spinach, water', 'Mix everything in blender and enjoy!', '2020-11-04', '17:44:44'),
(2, NULL, 'Berry smoothie', '', 2, 5, 4, 'Berries, 1 banana, oat milk', 'Mix everything in blender and enjoy!', '2020-11-04', '17:47:39'),
(3, NULL, 'Caipirinha', '', 1, 4, 5, 'Pitu, ice cubes, brown sugar, lime', 'Smash lime and sugar in a glass. Add ice cubes and pitu. Enjoy!', '2020-11-04', '18:08:04'),
(4, NULL, 'Latte', '', 1, 10, 4, 'espresso coffee, milk', 'Make the espresso. Heat the milk. Put the hot milk in a cup and add the espresso.', '2020-11-04', '18:10:03'),
(6, NULL, 'Mojito', 0x4172726179, 4, 20, 5, 'Rum, lemon juice, mint, limes, sugar, sparkling water', 'Mix all the ingredients. Add ice. Decorate with mint.', '2020-11-05', '16:47:47'),
(7, NULL, 'Matcha latte', 0x4172726179, 2, 20, 4, 'Matcha tea, oat milk, water', 'Mix matcha powder with hot water, foam milk, pour over matcha tea. Enjoy.', '2020-11-06', '08:28:24'),
(8, NULL, 'Hot Chocolate', 0x4172726179, 3, 30, 5, 'Cocoa, dark chocolate, milk, sugar', 'Mix the ingredients, heat and foam the milk', '2020-11-05', '19:09:46'),
(9, 9, 'Aperol Spritz', 0x6472696e6b73322e6a7067, 4, 15, 5, 'Aperol, prosecco, sparkling water, ice, orange', 'Mix all the ingredients in a glass, serve with a slice of orange.', '2020-11-10', '07:35:00'),
(11, 9, 'Strawberry smoothie', 0x6472696e6b73332e6a7067, 2, 20, 5, 'Strawberries, other berries, water, syrup, mint', 'Blend everything in a blender.', '2020-11-10', '07:50:09'),
(17, 9, 'Test coffee', 0x63686f636f6c6174652e6a7067, 2, 30, 4, 'test', 'test', '2020-11-10', '10:42:52'),
(18, 9, 'Iced tea', 0x677261706566727569742e6a7067, 4, 15, 4, 'Tea, ice, sugar, lemon, mint', 'test test', '2020-11-10', '10:56:34'),
(19, 9, 'Matcha', 0x6d61746368612d6c617474652e6a7067, 1, 15, 2, 'Matcha tea', 'test test', '2020-11-10', '11:08:36'),
(21, 9, 'Pumpkin coffee', 0x70756d706b696e5f636f666665652e6a7067, 2, 20, 5, 'Coffee, gingerbread spices, oat milk', 'Brew coffee together with spices, foam milk, enjoy!', '2020-11-10', '12:53:22'),
(26, 9, 'Flat white', 0x666c61745f77686974652e6a7067, 2, 20, 4, 'Coffee, milk', 'Brew coffee, slightly warm and foam milk, pour over coffee.', '2020-11-10', '15:45:54'),
(27, 9, 'Flat white', 0x666c61745f77686974652e6a7067, 2, 20, 4, 'Coffee, milk', 'Brew coffee, slightly warm and foam milk, pour over coffee.', '2020-11-10', '17:02:22'),
(28, 10, 'Testdrink1011', 0x74657374313031312e706e67, 2, 20, 4, 'test ing 1, test ing 2', 'boil it\r\nadd salt\r\nadd lemon\r\nmint', '2020-11-10', '17:08:42'),
(29, 10, 'test drink 13', '', 13, 20, 2, 'test 13', 'test 13', '2020-11-10', '17:12:11'),
(30, 10, 'pinetree', 0x74657374313031312e706e67, 14, 14, 2, 'test 14', 'test 14', '2020-11-10', '17:13:21'),
(31, 9, 'Lemon summer drink', 0x6d6f6a69746f2e6a7067, 6, 15, 5, '10 lemons, brown sugar, mint, ice, sparkling water', 'Squeeze the lemons. Blend all the ingredients. Decorate with mint and lemon slices.', '2020-11-11', '08:13:03'),
(32, 9, 'Chocolate drink', 0x63686f636f6c6174655f6472696e6b2e6a7067, 4, 20, 4, 'Cocoa, milk chocolate, milk, syrup, 2 bananas, other fruits or berries', 'Blend the ingredients, decorate with fruits, serve cold.', '2020-11-11', '08:21:17'),
(33, 9, 'Strawberry milkshake', 0x737472617762657272795f7368616b652e6a7067, 3, 20, 3, 'Strawberries, buttermilk, maple syrup', 'Blend all the ingredients. Serve cold or with ice cubes.', '2020-11-11', '08:25:41'),
(34, 9, 'Margarita', 0x6d61726761726974612e6a7067, 6, 20, 5, 'Tequila, lemon juice, ice, salt', 'Mix the ingredients. Decorate the glass rim with salt.', '2020-11-11', '08:35:29'),
(35, 9, 'Ice drink', 0x6d61726761726974612e6a7067, 4, 20, 4, 'test test test test', 'test test test test test test test test', '2020-11-13', '08:38:02'),
(36, 9, 'Summer coctail', 0x73756d6d65725f6472696e6b2e6a7067, 6, 30, 5, 'test test test test test test', 'test test test test test test test test', '2020-11-13', '08:42:22'),
(37, 9, 'Test', 0x6775696e65612d706967312e6a7067, 4, 46, 5, 'test', 'test', '2020-11-13', '09:44:00'),
(38, 10, 'test1611', '', 3, 30, 3, 'test 16 11 one', 'one', '2020-11-16', '15:29:22'),
(39, 9, 'Aperitif', 0x706578656c732d706f6c696e612d6b6f76616c6576612d353433303831392e6a7067, 6, 25, 5, 'test test test', 'test test test test test test test test test', '2020-11-17', '09:49:55'),
(40, 9, 'Glogi', 0x4a6f756c756e5f70756e61696e656e5f676c5f5f67695f6e657474692e6a7067, 4, 30, 3, 'vnnmdjfkhgz', 'ccxvndjkf j jfkdsjfdk gkldsfguj', '2020-11-17', '10:01:20'),
(41, 9, 'Coffee', 0x706578656c732d6d617274612d647a65647973686b6f2d323737353832372e6a7067, 6, 20, 4, 'coffee', 'Brew espresso', '2020-11-17', '10:09:23'),
(42, 9, 'Breakfast coffee', 0x706578656c732d636f74746f6e62726f2d343738313432352e6a7067, 2, 20, 3, 'test test test test test test', 'test test test test test test test test test test test test test test test test test test', '2020-11-17', '10:49:24'),
(43, 9, 'Delicious hot drink', 0x706578656c732d636f74746f6e62726f2d333939323337302e6a7067, 3, 30, 5, 'dn dsnmhrklg fdkhdfl yrdiutyr', 's fsfiytrnibtnil rileys nlfheiotyrnl bseyies', '2020-11-17', '11:10:44'),
(44, 9, 'vino verde', 0x76696e6f2e6a7067, 6, 10, 5, 'vino verde', 'Open the bottle, add ice cubes, enjoy.', '2020-11-19', '08:40:26'),
(45, 9, 'Koktajl maczuga', '', 1, 2, 5, '100 ml Spirytus rektyfikowany, 3 krople soku cytrynowego', 'WciÅ›nij cytrynÄ™ do szklanki spirytusu. Wypij duszkiem.', '2020-11-20', '17:29:11');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `Username` varchar(128) NOT NULL,
  `Password` varchar(128) NOT NULL,
  `JoiningDate` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `Username`, `Password`, `JoiningDate`) VALUES
(7, 'admin', '$2y$10$vvpgrsESGo21Mh8rF5vcN.WiHbJJ.blVJ5UjXDcQDzniIw1mBu/tq', '2020-11-04 00:00:00'),
(8, 'Laura', '$2y$10$s7RvsdKsDRc3F5E/JAYUx.NiOcjCpBIIZqypQUL1XBwbASyw2BTCS', '2020-11-04 00:00:00'),
(9, 'aleksandra_p', '$2y$10$l0XaCgDI/0jxpGp/uMQurOtNafXLn5SJMLuCtg56I.KpqfAKo07mC', '2020-11-05 00:00:00'),
(10, 'arvshar', '$2y$10$Y53BtfDEE7B0Tm9uT/dEiOJi5Yb36nZoJMxR55MegMjDPRFVeeZxe', '2020-11-10 00:00:00'),
(11, 'katarzyna', '$2y$10$h57XkXHW0FTP.0YHmimR/u.I/ZqimLpy4q4F44XRG1QRGYbEQyLJK', '2020-11-20 00:00:00'),
(12, 'iwonapostola@tlen.pl', '$2y$10$/DhhrE6hIs8G3FgfSXgrGOZh2j927dFCTwYGiVv571iInE6MumqOa', '2020-11-26 00:00:00'),
(13, 'Pola', '$2y$10$qkfp9MZKlm06B8AaDjFw5.ThjM5Lukh1MFdI0jMAEZGJr.o0dtQny', '2020-11-26 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `recipe`
--
ALTER TABLE `recipe`
  ADD PRIMARY KEY (`recipeID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `recipe`
--
ALTER TABLE `recipe`
  MODIFY `recipeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `recipe`
--
ALTER TABLE `recipe`
  ADD CONSTRAINT `recipe_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
