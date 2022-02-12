-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2022 at 03:33 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mfors`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'root');

-- --------------------------------------------------------

--
-- Table structure for table `basket`
--

CREATE TABLE `basket` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `date_made` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `basket`
--

INSERT INTO `basket` (`id`, `customer_name`, `contact_number`, `address`, `email`, `total`, `status`, `date_made`) VALUES
(14, 'shobi', '8281357422', 'sbobhinilayam', 'abinpilot422@gmail.com', '100', 'pending', '2022-02-03 11:48:31'),
(15, 'Abin Pilot', '8281357422', 'tharamel h bisonvalley po muttukad', 'abinpilot422@gmail.com', '150', 'confirmed', '2022-02-03 11:55:40'),
(16, 'SHAMA', '8075834823', 'tharamel h bisonvalley po muttukad', 'abinpilot422@gmail.com', '8000', 'confirmed', '2022-02-03 12:11:31'),
(17, 'Abin Pilot', '8281357422', 'tharamel h bisonvalley po muttukad', 'abinpilot422@gmail.com', '350', 'pending', '2022-02-03 12:40:02'),
(18, 'Abin Pilot', '8281357422', 'tharamel h bisonvalley po muttukad', 'abinpilot422@gmail.com', '1050', 'pending', '2022-02-03 13:16:15'),
(19, 'Abin Pilot', '8281357422', 'tharamel h bisonvalley po muttukad', 'abinpilot422@gmail.com', '460', 'pending', '2022-02-11 23:21:36'),
(20, 'Abin Pilot', '8281357422', 'tharamel h bisonvalley po muttukad', 'abinpilot422@gmail.com', '1610', 'confirmed', '2022-02-11 23:28:18');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `customer_name`, `subject`, `email`, `message`) VALUES
(1, 'Adam Abdulrahman', 'Late Delivery', 'abdulflezy13@yahoo.com', 'Please ensure that your delivery guys deliver the meals at the required time because they are often late.'),
(2, 'Zainab Adamu', 'Late Delivery', 'Zee@yahoo.com', 'I need an email of the GM if possible');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` int(11) NOT NULL,
  `food_name` varchar(255) NOT NULL,
  `food_category` varchar(255) NOT NULL,
  `food_price` varchar(255) NOT NULL,
  `food_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `food_name`, `food_category`, `food_price`, `food_description`) VALUES
(14, 'masala dosa', 'breakfast', '50', 'fasfgas'),
(15, 'biriyaniii', 'lunch', '120', 'biriiyani'),
(16, 'kanji', 'dinner', '50', 'FVSg'),
(17, 'crab fry', 'breakfast', '230', 'kerala sea'),
(18, 'Alfarm', 'special', '230', 'chicken');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` int(11) NOT NULL,
  `order_id` varchar(100) NOT NULL,
  `food` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `order_id`, `food`, `qty`) VALUES
(1, '13', 'pizza', '2'),
(2, '14', 'snailchoc', '2'),
(3, '15', 'salad', '3'),
(4, '16', 'Ice Cream', '2'),
(5, '16', ' Ice Cream', '2'),
(6, '17', 'shawarma', '1'),
(7, '18', 'pizza', '3'),
(8, '19', 'crab fry', '2'),
(9, '20', 'crab fry', '7');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `reserve_id` int(11) NOT NULL,
  `no_of_guest` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `date_res` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL,
  `suggestions` varchar(100) NOT NULL,
  `userid` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`reserve_id`, `no_of_guest`, `email`, `phone`, `date_res`, `time`, `suggestions`, `userid`) VALUES
(6, '6', 'abinpilot422@gmail.com', '8281357422', '2022-02-19', '23:40', 'no', 0),
(7, '3', 'shama@gmail.com', '8281357422', '2022-02-18', '15:33', 'no', 0),
(8, '2', 'abinpilot422@gmail.com', '8281357422', '2022-02-26', '18:02', 'no', 0),
(13, '2', 'abinpilot422@gmail.com', '8281357422', '2022-02-26', '06:41', 'n', 6);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `usertype` varchar(100) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `usertype`) VALUES
(1, 'admin', 'admin@gmail.com', '63a9f0ea7bb98050796b649e85481845', 'admin'),
(2, 'Abin', 'abinpilot007@gmail.com ', '1234', 'user'),
(3, 'admin', 'admin@gmail.com', 'root', 'admin'),
(5, 'shama', 'shama@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'user'),
(6, 'shobhi', 'shobhi@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'user'),
(8, 'inki', 'inki@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'user'),
(9, 'mini', 'mini@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'user'),
(10, 'uniyyettan', 'umiyettan@gamil.com', '81dc9bdb52d04dc20036dbd8313ed055', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basket`
--
ALTER TABLE `basket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`reserve_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `basket`
--
ALTER TABLE `basket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `reserve_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
