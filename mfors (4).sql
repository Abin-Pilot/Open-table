-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2022 at 10:59 AM
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
-- Table structure for table `available`
--

CREATE TABLE `available` (
  `tblid` int(255) NOT NULL,
  `totaltbl` int(255) NOT NULL,
  `available` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `available`
--

INSERT INTO `available` (`tblid`, `totaltbl`, `available`) VALUES
(1, 30, 0);

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
(17, 'Abin Pilot', '8281357422', 'tharamel h bisonvalley po muttukad', 'abinpilot422@gmail.com', '350', 'confirmed', '2022-02-03 12:40:02'),
(18, 'Abin Pilot', '8281357422', 'tharamel h bisonvalley po muttukad', 'abinpilot422@gmail.com', '1050', 'pending', '2022-02-03 13:16:15'),
(19, 'Abin Pilot', '8281357422', 'tharamel h bisonvalley po muttukad', 'abinpilot422@gmail.com', '460', 'confirmed', '2022-02-11 23:21:36'),
(20, 'Abin Pilot', '8281357422', 'tharamel h bisonvalley po muttukad', 'abinpilot422@gmail.com', '1610', 'confirmed', '2022-02-11 23:28:18'),
(21, 'Abin Pilot', '8075834823', 'tharamel h bisonvalley po muttukad', 'abinpilot422@gmail.com', '460', 'pending', '2022-02-16 15:12:46'),
(22, 'Abin Pilot', '8281357422', 'tharamel h bisonvalley po muttukad', 'abinpilot422@gmail.com', '230', 'pending', '2022-02-16 15:50:48'),
(23, 'Abin Pilot', '8281357422', 'tharamel h bisonvalley po muttukad', 'abinpilot422@gmail.com', '120', 'pending', '2022-02-16 15:55:56'),
(24, 'Abin Pilot', '8075834823', 'tharamel h bisonvalley po muttukad', 'abinpilot422@gmail.com', '234', 'pending', '2022-02-23 11:37:11'),
(25, 'Abin Pilot', '8574961236', 'tharamel h bisonvalley po muttukad', 'abinpilot422@gmail.com', '690', 'pending', '2022-02-23 14:29:21'),
(26, 'cucia', '8075834825', 'tharamel h bisonvalley po muttukad', 'abinpilot422@gmail.com', '200', 'pending', '2022-02-23 21:51:35'),
(27, 'cucia', '8075834823', 'tharamel h bisonvalley po muttukad', 'abinpilot422@gmail.com', '200', 'pending', '2022-02-23 22:00:49'),
(28, 'cucia', '8574961236', 'tharamel h bisonvalley po muttukad', 'abinpilot422@gmail.com', '200', 'pending', '2022-02-23 22:04:31'),
(29, 'Abin P', '8574961236', 'tharamel h bisonvalley po muttukad', 'abinpilot422@gmail.com', '156', 'pending', '2022-02-23 22:07:06'),
(30, 'Abin Pilot', '8574961236', 'tharamel h bisonvalley po muttukad', 'abinpilot422@gmail.com', '156', 'pending', '2022-02-23 22:09:33'),
(31, 'Abin Pilot', '8574961236', 'tharamel h bisonvalley po muttukad', 'abinpilot422@gmail.com', '156', 'pending', '2022-02-23 22:09:34'),
(32, 'shobi', '8075834835', 'tharamel h bisonvalley po muttukad', 'abinpilot422@gmail.com', '460', 'pending', '2022-02-23 22:26:55'),
(33, 'Abin Pilot', '8574961236', 'tharamel h bisonvalley po muttukad', 'abinpilot422@gmail.com', '230', 'confirmed', '2022-02-23 23:04:08'),
(34, 'Abin Pilot', '8075834825', 'tharamel h bisonvalley po muttukad', 'abinpilot422@gmail.com', '78', 'pending', '2022-02-23 23:21:27'),
(35, 'cucia', '8075834835', 'tharamel h bisonvalley po muttukad', 'abinpilot422@gmail.com', '460', 'pending', '2022-02-23 23:30:32'),
(36, 'Abin Pilot', '8075834825', 'tharamel h bisonvalley po muttukad', 'abinpilot422@gmail.com', '300', 'confirmed', '2022-02-24 12:10:54');

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
  `food_description` text NOT NULL,
  `is_reserved` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `food_name`, `food_category`, `food_price`, `food_description`, `is_reserved`) VALUES
(15, 'biriyaniii', 'lunch', '120', 'biriiyani', 0),
(16, 'kanji', 'dinner', '50', 'FVSg', 1),
(17, 'crab fry', 'breakfast', '230', 'kerala sea', 1),
(18, 'Alfarm', 'special', '230', 'chicken', 1),
(19, 'beef ', 'special', '100', 'kerala beef', 0),
(20, 'rice', 'breakfast', '78', 'sdghsh', 0),
(22, 'romali roll', 'lunch', '80', 'romali', 0),
(23, 'watermelon', 'dinner', '30', 'hy', 0);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` int(11) NOT NULL,
  `order_id` varchar(100) NOT NULL,
  `food` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `userid` int(255) NOT NULL,
  `date_o` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `order_id`, `food`, `qty`, `userid`, `date_o`) VALUES
(20, '33', 'crab fry', '1', 5, '2022-02-23 23:04:08'),
(21, '34', 'rice', '1', 5, '2022-02-23 23:21:27'),
(22, '35', 'crab fry', '2', 5, '2022-02-23 23:30:34'),
(23, '35', ' rice', '1', 5, '2022-02-23 23:30:34'),
(24, '36', 'beef ', '3', 5, '2022-02-24 12:10:54');

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
  `userid` int(255) NOT NULL,
  `is_reserved` int(2) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`reserve_id`, `no_of_guest`, `email`, `phone`, `date_res`, `time`, `suggestions`, `userid`, `is_reserved`) VALUES
(39, '3', 'abinpilot422@gmail.com', '8075834835', '2022-02-24', '14:00', 'n', 5, 0),
(40, '4', 'abinpilot422@gmail.com', '8075834825', '2022-02-24', '16:04', 'no', 5, 2),
(41, '3', 'abinpilot422@gmail.com', '8075834835', '2022-02-24', '10:30', 'n', 5, 2),
(42, '2', 'shama@gmail.com', '8574961236', '2022-02-25', '07:40', 'no', 5, 0),
(43, '17', 'abinpilot422@gmail.com', '8075834823', '2022-02-24', '13:09', 'no', 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `totaltbl`
--

CREATE TABLE `totaltbl` (
  `id` int(11) NOT NULL,
  `datesfrom` date NOT NULL,
  `datesto` date NOT NULL,
  `numbers` int(255) NOT NULL,
  `remain` int(255) NOT NULL,
  `status` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `totaltbl`
--

INSERT INTO `totaltbl` (`id`, `datesfrom`, `datesto`, `numbers`, `remain`, `status`) VALUES
(1, '0000-00-00', '0000-00-00', 10, 10, ''),
(2, '2022-02-14', '0000-00-00', 10, 10, ''),
(3, '2022-02-13', '0000-00-00', 10, 10, ''),
(4, '2022-02-13', '2022-02-20', 10, 10, ''),
(5, '2022-02-20', '2022-02-27', 4, 4, '');

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
(10, 'uniyyettan', 'umiyettan@gamil.com', '81dc9bdb52d04dc20036dbd8313ed055', 'user'),
(11, 'ramesh', 'ramesh', '81dc9bdb52d04dc20036dbd8313ed055', 'user'),
(12, 'sayan', 'sayan@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `available`
--
ALTER TABLE `available`
  ADD PRIMARY KEY (`tblid`);

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
-- Indexes for table `totaltbl`
--
ALTER TABLE `totaltbl`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `available`
--
ALTER TABLE `available`
  MODIFY `tblid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `basket`
--
ALTER TABLE `basket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `reserve_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `totaltbl`
--
ALTER TABLE `totaltbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
