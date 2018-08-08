-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Aug 08, 2018 at 07:02 PM
-- Server version: 5.7.21
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `c6.18db`
--

-- --------------------------------------------------------

--
-- Table structure for table `todo_items`
--

CREATE TABLE `todo_items` (
  `ID` int(11) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `details` varchar(500) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `todo_items`
--

INSERT INTO `todo_items` (`ID`, `title`, `details`, `timestamp`, `user_id`) VALUES
(1, 'GET OUT OF BED ', 'GET OUT OF BED WHEN ALARM GOES OFF', '2018-08-03 05:31:34', 2),
(2, 'BRUSH YOUR TEETH', 'GET OUT OF BED WHEN ALARM GOES OFF', '2018-08-03 05:31:34', 2),
(3, 'FLOSS YOUR TEETH', 'GET OUT OF BED WHEN ALARM GOES OFF', '2018-08-03 05:32:33', 2),
(4, 'RINSE YOUR MOUTH', 'GET OUT OF BED WHEN ALARM GOES OFF', '2018-08-03 05:32:33', 2),
(5, 'TAKE A SHOWER', 'GET OUT OF BED WHEN ALARM GOES OFF', '2018-08-03 05:37:36', 2),
(6, 'GET DRESSED', 'GET OUT OF BED WHEN ALARM GOES OFF', '2018-08-03 05:37:36', 2),
(8, 'DRIVE TO LFZ', 'GET OUT OF BED WHEN ALARM GOES OFF', '2018-08-03 05:38:16', 2),
(9, 'GET OWNED BY SKILLS ASSESSMENT', 'GET OUT OF BED WHEN ALARM GOES OFF', '2018-08-03 05:39:13', 2),
(10, 'CRY', 'GET OUT OF BED WHEN ALARM GOES OFF', '2018-08-03 05:39:13', 2),
(11, 'Finish final project on your own by Monday', 'GET OUT OF BED WHEN ALARM GOES OFF', '2018-08-03 05:45:02', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  `joined` datetime NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `level` tinyint(4) NOT NULL,
  `status` enum('created','active','banned','deleted') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `name`, `email`, `password`, `joined`, `updated`, `level`, `status`) VALUES
(2, 'rebecca', 'myteethwontstopchattering@gmail.com', '1923d4a92de6d8347560b6bfed806ce2e5d6e74d', '2018-08-02 17:44:14', '2018-08-03 00:44:14', 2, 'created'),
(3, 'john boy', '40ksucks@gmail.com', '7bd4e8b82c0b681e9aa6d9f387f80545bd2a42af', '2018-08-02 17:44:14', '2018-08-03 00:44:14', 1, 'banned'),
(4, 'taytay', 'sensitiveboi@aol.com', '923b9ca9ed5f6677fe4582fbba1ad06f206a56b4', '2018-08-02 17:45:35', '2018-08-03 01:14:03', 4, 'deleted'),
(5, 'joh', 'isleepwithmyeyesopen@gmail.com', '0444b8a8ba20fa8929bf54243192891869199e0c', '2018-08-02 17:45:35', '2018-08-03 00:45:35', 3, 'active'),
(6, 'Soora', 'sudipislucky@gmail.com', '712c6d37a2b53ffc5e5594491db3d4c4b91e4ef7', '2018-08-02 17:46:30', '2018-08-03 04:49:36', 3, 'banned'),
(7, 'federico', 'thequickening@gmail.com', '3bc99dedfc3ebd187f8a9ee3e335409c2f0218c8', '2018-08-02 18:10:36', '2018-08-03 01:10:36', 10, 'active'),
(8, 'dan', 'twiceonsundays@gmail.com', 'alwaysusetextforpassword', '2018-08-02 18:21:41', '2018-08-03 01:21:41', 5, 'active'),
(9, 'cody', 'ilikecoffee@gmail.com', 'practiceproblemsallday@gmail.com', '2018-08-02 18:21:41', '2018-08-03 01:21:41', 6, 'active'),
(10, 'howard', 'mrhoward@lamepeople.com', 'imthecaptainnow', '2018-08-02 18:23:36', '2018-08-03 01:23:36', 7, 'banned'),
(11, 'kris', 'longestlastnameintheworld@aol.com', 'mylastnameissolong', '2018-08-02 18:23:36', '2018-08-03 01:23:36', 6, 'created'),
(12, 'tien', 'dancingshoes@aol.com', 'dancealldaytwiceonsundays', '2018-08-02 18:25:10', '2018-08-03 01:25:10', 7, 'banned'),
(13, 'ryan', 'teamdeatheaters@gmail.com', 'voldemort4life', '2018-08-02 18:25:10', '2018-08-03 01:25:10', 7, 'active'),
(14, 'kevin', 'foreveryoung@me.com', 'young4ever', '2018-08-02 18:26:39', '2018-08-03 01:26:39', 9, 'banned'),
(15, 'Mike', 'magicmike@deadpoetsociety.com', 'ocaptainmycaptain', '2018-08-02 18:26:39', '2018-08-03 01:26:39', 9, 'active'),
(16, 'sean', 'proudsean@me.com', 'suuuuuudip', '2018-08-02 18:27:52', '2018-08-03 01:27:52', 6, 'active'),
(17, 'sudip', 'iamsounlucky@gmail.com', 'soooounlucky', '2018-08-02 18:27:52', '2018-08-03 01:27:52', 4, 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `todo_items`
--
ALTER TABLE `todo_items`
  ADD KEY `ID` (`ID`),
  ADD KEY `ID_2` (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `todo_items`
--
ALTER TABLE `todo_items`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;