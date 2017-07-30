-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 31, 2017 at 01:04 AM
-- Server version: 5.6.35
-- PHP Version: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `emp-perf`
--
CREATE DATABASE IF NOT EXISTS `emp-perf` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `emp-perf`;

-- --------------------------------------------------------

--
-- Table structure for table `Department_table`
--

CREATE TABLE `Department_table` (
  `Department_Id` int(20) NOT NULL,
  `Department_Name` varchar(20) DEFAULT NULL,
  `Department_Faculty` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Employee_Department`
--

CREATE TABLE `Employee_Department` (
  `Employee_Department_id` int(20) NOT NULL,
  `Employee_Dep_Department_Id` int(20) DEFAULT NULL,
  `Employee_Dep_Employee_Id` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Employee_Department`
--

INSERT INTO `Employee_Department` (`Employee_Department_id`, `Employee_Dep_Department_Id`, `Employee_Dep_Employee_Id`) VALUES
(2, 2, 21212);

-- --------------------------------------------------------

--
-- Table structure for table `Employee_disciplinary`
--

CREATE TABLE `Employee_disciplinary` (
  `Emp_discip_id` int(20) NOT NULL,
  `Emp_Discip_Employee_Id` int(20) DEFAULT NULL,
  `Emp_discip_Comments` varchar(1000) DEFAULT NULL,
  `Emp_discip_date` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Employee_profile`
--

CREATE TABLE `Employee_profile` (
  `Employee_Id` int(20) NOT NULL,
  `Employee_Firstname` varchar(20) DEFAULT NULL,
  `Employee_Lastname` varchar(20) DEFAULT NULL,
  `Employee_Payroll_Number` varchar(20) DEFAULT NULL,
  `Employee_Email` varchar(20) DEFAULT NULL,
  `Employee_Employement_Date` varchar(20) DEFAULT NULL,
  `employee_contact` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Employee_profile`
--

INSERT INTO `Employee_profile` (`Employee_Id`, `Employee_Firstname`, `Employee_Lastname`, `Employee_Payroll_Number`, `Employee_Email`, `Employee_Employement_Date`, `employee_contact`) VALUES
(21212, 'James', 'Maina', '20089', 'df@hm.com', '2017-07-27', 723879675);

-- --------------------------------------------------------

--
-- Table structure for table `Employee_reward`
--

CREATE TABLE `Employee_reward` (
  `Employee_reward_id` int(20) NOT NULL,
  `Employee_Reward_Empl_Id` int(20) DEFAULT NULL,
  `Employee_reward_date` varchar(20) DEFAULT NULL,
  `Employee_reward_details` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Login_table`
--

CREATE TABLE `Login_table` (
  `Login_Id` int(20) NOT NULL,
  `Login_Username` varchar(20) DEFAULT NULL,
  `Login_Password` varchar(100) DEFAULT NULL,
  `Login_Rank` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Login_table`
--

INSERT INTO `Login_table` (`Login_Id`, `Login_Username`, `Login_Password`, `Login_Rank`) VALUES
(21212, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', '2'),
(212123, 'admin', '21232f297a57a5a743894a0e4a801fc3', '1');

-- --------------------------------------------------------

--
-- Table structure for table `Performance_Table`
--

CREATE TABLE `Performance_Table` (
  `Performance_Id` int(20) NOT NULL,
  `Performance_Employee_Id` varchar(20) DEFAULT NULL,
  `Performance_Empl_Panctuality` varchar(20) DEFAULT NULL,
  `Performance_Empl_Skills` varchar(20) DEFAULT NULL,
  `Performance_Empl_Attendance` varchar(20) DEFAULT NULL,
  `Performnce_Empl_Honesty` varchar(20) DEFAULT NULL,
  `Performnce_Empl_Communication` varchar(20) DEFAULT NULL,
  `Perfomance_Empl_Integrity` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Department_table`
--
ALTER TABLE `Department_table`
  ADD PRIMARY KEY (`Department_Id`);

--
-- Indexes for table `Employee_Department`
--
ALTER TABLE `Employee_Department`
  ADD PRIMARY KEY (`Employee_Department_id`);

--
-- Indexes for table `Employee_disciplinary`
--
ALTER TABLE `Employee_disciplinary`
  ADD PRIMARY KEY (`Emp_discip_id`);

--
-- Indexes for table `Employee_profile`
--
ALTER TABLE `Employee_profile`
  ADD PRIMARY KEY (`Employee_Id`);

--
-- Indexes for table `Employee_reward`
--
ALTER TABLE `Employee_reward`
  ADD PRIMARY KEY (`Employee_reward_id`);

--
-- Indexes for table `Login_table`
--
ALTER TABLE `Login_table`
  ADD PRIMARY KEY (`Login_Id`);

--
-- Indexes for table `Performance_Table`
--
ALTER TABLE `Performance_Table`
  ADD PRIMARY KEY (`Performance_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Department_table`
--
ALTER TABLE `Department_table`
  MODIFY `Department_Id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Employee_Department`
--
ALTER TABLE `Employee_Department`
  MODIFY `Employee_Department_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Employee_disciplinary`
--
ALTER TABLE `Employee_disciplinary`
  MODIFY `Emp_discip_id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Employee_reward`
--
ALTER TABLE `Employee_reward`
  MODIFY `Employee_reward_id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Performance_Table`
--
ALTER TABLE `Performance_Table`
  MODIFY `Performance_Id` int(20) NOT NULL AUTO_INCREMENT;--
-- Database: `encrypt`
--
CREATE DATABASE IF NOT EXISTS `encrypt` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `encrypt`;

-- --------------------------------------------------------

--
-- Table structure for table `Login_table`
--

CREATE TABLE `Login_table` (
  `Login_Id` int(20) NOT NULL DEFAULT '0',
  `Login_Username` varchar(100) DEFAULT NULL,
  `Login_Password` varchar(100) DEFAULT NULL,
  `Login_Rank` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Login_table`
--

INSERT INTO `Login_table` (`Login_Id`, `Login_Username`, `Login_Password`, `Login_Rank`) VALUES
(21212, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', '2'),
(23232, 'admin', '21232f297a57a5a743894a0e4a801fc3', '1'),
(34565, 'user1', '81dc9bdb52d04dc20036dbd8313ed055', '2');

-- --------------------------------------------------------

--
-- Table structure for table `cipher_decrypt_table`
--

CREATE TABLE `cipher_decrypt_table` (
  `cipher_decrypt_id` int(11) NOT NULL,
  `cipher_decrypt_cipher_id` varchar(20) NOT NULL,
  `cipher_decrypt_decrypt_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cipher_table`
--

CREATE TABLE `cipher_table` (
  `cipher_id` int(20) NOT NULL,
  `cipher_description` varchar(30) NOT NULL,
  `cipher_time` varchar(20) NOT NULL,
  `cipher_date` varchar(20) NOT NULL,
  `cipher_text` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `decrypt_table`
--

CREATE TABLE `decrypt_table` (
  `decrypt_id` int(20) NOT NULL,
  `decrypt_description` varchar(20) NOT NULL,
  `decrypt_time` varchar(20) NOT NULL,
  `decrypt_date` varchar(20) NOT NULL,
  `decrypt_text` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `decrypt_table`
--

INSERT INTO `decrypt_table` (`decrypt_id`, `decrypt_description`, `decrypt_time`, `decrypt_date`, `decrypt_text`) VALUES
(7345767, 'this is the decrypte', '2017-07-19 15:26:08', '2017-07-19 15:26:08', 'my name is karis');

-- --------------------------------------------------------

--
-- Table structure for table `user_cipher_table`
--

CREATE TABLE `user_cipher_table` (
  `user_cipher_id` int(11) NOT NULL,
  `user_cipher_user_id` varchar(20) NOT NULL,
  `user_cipher_cipher_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_cipher_table`
--

INSERT INTO `user_cipher_table` (`user_cipher_id`, `user_cipher_user_id`, `user_cipher_cipher_id`) VALUES
(7, '21212', '21212'),
(9, '21212', '21212'),
(10, '21212', '21212'),
(11, '21212', '21212'),
(12, '21212', '21212'),
(13, '21212', '21212');

-- --------------------------------------------------------

--
-- Table structure for table `user_decrypt_table`
--

CREATE TABLE `user_decrypt_table` (
  `user_decrypt_id` int(11) NOT NULL,
  `user_decrypt_cipher_id` varchar(20) NOT NULL,
  `user_decrypt_decrypt_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `user_id` int(20) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `user_phone` int(10) NOT NULL,
  `user_address` varchar(10) NOT NULL,
  `user_email` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Login_table`
--
ALTER TABLE `Login_table`
  ADD PRIMARY KEY (`Login_Id`),
  ADD KEY `Login_Id` (`Login_Id`);

--
-- Indexes for table `cipher_decrypt_table`
--
ALTER TABLE `cipher_decrypt_table`
  ADD PRIMARY KEY (`cipher_decrypt_id`);

--
-- Indexes for table `user_cipher_table`
--
ALTER TABLE `user_cipher_table`
  ADD PRIMARY KEY (`user_cipher_id`);

--
-- Indexes for table `user_decrypt_table`
--
ALTER TABLE `user_decrypt_table`
  ADD PRIMARY KEY (`user_decrypt_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cipher_decrypt_table`
--
ALTER TABLE `cipher_decrypt_table`
  MODIFY `cipher_decrypt_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_cipher_table`
--
ALTER TABLE `user_cipher_table`
  MODIFY `user_cipher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `user_decrypt_table`
--
ALTER TABLE `user_decrypt_table`
  MODIFY `user_decrypt_id` int(11) NOT NULL AUTO_INCREMENT;--
-- Database: `farmer-cow`
--
CREATE DATABASE IF NOT EXISTS `farmer-cow` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `farmer-cow`;

-- --------------------------------------------------------

--
-- Table structure for table `Animal_feeds_table`
--

CREATE TABLE `Animal_feeds_table` (
  `Animal_feeds_Id` int(20) NOT NULL,
  `Animal_feeds_Feed_Id` int(20) DEFAULT NULL,
  `Animal_feeds_Animal_Id` int(20) DEFAULT NULL,
  `Animal_feeds_quantity` int(20) DEFAULT NULL,
  `Animal_feeds_cost` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Animal_milk_table`
--

CREATE TABLE `Animal_milk_table` (
  `Animal_milk_Id` int(20) NOT NULL,
  `Animal_milk_Milk_Id` int(20) DEFAULT NULL,
  `Animal_milk_Animal_Id` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Animal_table`
--

CREATE TABLE `Animal_table` (
  `Animal_Id` int(20) NOT NULL,
  `Animal_Name` varchar(20) DEFAULT NULL,
  `Animal_Breed` varchar(20) DEFAULT NULL,
  `Animal_Lactation` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Farmer_animals_table`
--

CREATE TABLE `Farmer_animals_table` (
  `Farmer_animal_Id` int(20) NOT NULL,
  `Farmer_animal_Farmer_Id` int(20) DEFAULT NULL,
  `Farmer_animal_Animal_Id` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Farmer_table`
--

CREATE TABLE `Farmer_table` (
  `Farmer_Id` int(20) NOT NULL DEFAULT '0',
  `Farmer_Name` varchar(20) DEFAULT NULL,
  `Farmer_Age` int(20) DEFAULT NULL,
  `Farmer_Phone` int(10) DEFAULT NULL,
  `Farmer_Address` varchar(20) DEFAULT NULL,
  `Farmer_Email` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Feeds_table`
--

CREATE TABLE `Feeds_table` (
  `Feeds_Id` int(20) NOT NULL,
  `Feeds_Type` varchar(50) NOT NULL,
  `Feeds_Quantity` varchar(20) NOT NULL,
  `Feeds_Cost` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Login_table`
--

CREATE TABLE `Login_table` (
  `Login_Id` int(20) NOT NULL DEFAULT '0',
  `Login_Username` varchar(100) DEFAULT NULL,
  `Login_Password` varchar(100) DEFAULT NULL,
  `Login_Rank` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Login_table`
--

INSERT INTO `Login_table` (`Login_Id`, `Login_Username`, `Login_Password`, `Login_Rank`) VALUES
(0, 'MAINA JAMES', '25d55ad283aa400af464c76d713c07ad', '1'),
(21212, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', '2'),
(23232, 'admin', '21232f297a57a5a743894a0e4a801fc3', '1'),
(1211212, 'admin3', '32cacb2f994f6b42183a1300d9a3e8d6', '1'),
(1234567, 'user1', '24c9e15e52afc47c225b757e7bee1f9d', '2');

-- --------------------------------------------------------

--
-- Table structure for table `Milk_table`
--

CREATE TABLE `Milk_table` (
  `Milk_Id` int(20) NOT NULL,
  `Milk_Quantity` varchar(20) DEFAULT NULL,
  `Milk_Description` varchar(100) DEFAULT NULL,
  `Milk_Date` varchar(20) DEFAULT NULL,
  `Milk_Time` varchar(20) DEFAULT NULL,
  `Milk_Schedule` varchar(20) DEFAULT NULL,
  `Milk_Price` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Animal_feeds_table`
--
ALTER TABLE `Animal_feeds_table`
  ADD PRIMARY KEY (`Animal_feeds_Id`);

--
-- Indexes for table `Animal_milk_table`
--
ALTER TABLE `Animal_milk_table`
  ADD PRIMARY KEY (`Animal_milk_Id`);

--
-- Indexes for table `Animal_table`
--
ALTER TABLE `Animal_table`
  ADD PRIMARY KEY (`Animal_Id`);

--
-- Indexes for table `Farmer_animals_table`
--
ALTER TABLE `Farmer_animals_table`
  ADD PRIMARY KEY (`Farmer_animal_Id`);

--
-- Indexes for table `Farmer_table`
--
ALTER TABLE `Farmer_table`
  ADD PRIMARY KEY (`Farmer_Id`);

--
-- Indexes for table `Feeds_table`
--
ALTER TABLE `Feeds_table`
  ADD PRIMARY KEY (`Feeds_Id`);

--
-- Indexes for table `Login_table`
--
ALTER TABLE `Login_table`
  ADD PRIMARY KEY (`Login_Id`),
  ADD KEY `Login_Id` (`Login_Id`);

--
-- Indexes for table `Milk_table`
--
ALTER TABLE `Milk_table`
  ADD PRIMARY KEY (`Milk_Id`),
  ADD KEY `Milk_Id` (`Milk_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Animal_feeds_table`
--
ALTER TABLE `Animal_feeds_table`
  MODIFY `Animal_feeds_Id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Animal_milk_table`
--
ALTER TABLE `Animal_milk_table`
  MODIFY `Animal_milk_Id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Animal_table`
--
ALTER TABLE `Animal_table`
  MODIFY `Animal_Id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Farmer_animals_table`
--
ALTER TABLE `Farmer_animals_table`
  MODIFY `Farmer_animal_Id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Feeds_table`
--
ALTER TABLE `Feeds_table`
  MODIFY `Feeds_Id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Milk_table`
--
ALTER TABLE `Milk_table`
  MODIFY `Milk_Id` int(20) NOT NULL AUTO_INCREMENT;--
-- Database: `flight`
--
CREATE DATABASE IF NOT EXISTS `flight` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `flight`;

-- --------------------------------------------------------

--
-- Table structure for table `airline_table`
--

CREATE TABLE `airline_table` (
  `airline_id` int(20) NOT NULL,
  `airline_code` varchar(20) DEFAULT NULL,
  `airline_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `airline_table`
--

INSERT INTO `airline_table` (`airline_id`, `airline_code`, `airline_name`) VALUES
(1, 'ET01', 'ETHIOPIAN AIRLINE');

-- --------------------------------------------------------

--
-- Table structure for table `customer_flight_notification_table`
--

CREATE TABLE `customer_flight_notification_table` (
  `Customer_flight_notification_id` int(20) NOT NULL,
  `Customer_flight_notification_cust_contact` varchar(20) DEFAULT NULL,
  `Customer_flight_notification_message_status` varchar(20) DEFAULT NULL,
  `Customer_flight_not_cust_flight_fl_id` varchar(50) DEFAULT NULL,
  `Customer_flight_notification_message` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer_flight_table`
--

CREATE TABLE `customer_flight_table` (
  `Customer_flight_id` int(20) NOT NULL,
  `Customer_flight_flight_id` varchar(20) DEFAULT NULL,
  `Customer_flight_customer_login_id` int(20) DEFAULT NULL,
  `Customer_flight_timestamp` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_flight_table`
--

INSERT INTO `customer_flight_table` (`Customer_flight_id`, `Customer_flight_flight_id`, `Customer_flight_customer_login_id`, `Customer_flight_timestamp`) VALUES
(1, 'ET01', 123, '2017-07-26 07:18:05');

-- --------------------------------------------------------

--
-- Table structure for table `flight_route_table`
--

CREATE TABLE `flight_route_table` (
  `Flight_route_id` int(20) NOT NULL,
  `Flight_route_route_id` varchar(20) DEFAULT NULL,
  `Flight_route_flight_id` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `flight_table`
--

CREATE TABLE `flight_table` (
  `Flight_id` int(20) NOT NULL,
  `Flight_number` varchar(20) DEFAULT NULL,
  `Flight_name` varchar(20) DEFAULT NULL,
  `Flight_route_route_id` varchar(20) DEFAULT NULL,
  `Flight_schedule` varchar(20) DEFAULT NULL,
  `Flight_departure_time` varchar(30) DEFAULT NULL,
  `Flight_airline_id` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flight_table`
--

INSERT INTO `flight_table` (`Flight_id`, `Flight_number`, `Flight_name`, `Flight_route_route_id`, `Flight_schedule`, `Flight_departure_time`, `Flight_airline_id`) VALUES
(1, 'ET01', 'ETHIOPIAN AIRLINE', 'NRB-01', '2017-07-27T00:00', '2017-07-21T00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `login_table`
--

CREATE TABLE `login_table` (
  `Login_id` int(20) NOT NULL,
  `Login_username` varchar(20) DEFAULT NULL,
  `Login_password` varchar(100) DEFAULT NULL,
  `Login_fullname` varchar(20) DEFAULT NULL,
  `Login_contact` varchar(20) DEFAULT NULL,
  `Login_email` varchar(20) DEFAULT NULL,
  `Login_rank` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_table`
--

INSERT INTO `login_table` (`Login_id`, `Login_username`, `Login_password`, `Login_fullname`, `Login_contact`, `Login_email`, `Login_rank`) VALUES
(122112, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin admin', '1212112', 'email@email.com', '1'),
(12345678, 'jkamau', '81dc9bdb52d04dc20036dbd8313ed055', 'Joseph Kamau', '254722978292', 'joseph.kamau@kaa.go.', '2');

-- --------------------------------------------------------

--
-- Table structure for table `notification_table`
--

CREATE TABLE `notification_table` (
  `Notification_id` int(20) NOT NULL,
  `Notification_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification_table`
--

INSERT INTO `notification_table` (`Notification_id`, `Notification_name`) VALUES
(3242234, 'er'),
(343, 'ewrerw'),
(1234, 'flight change'),
(2323, 'gf'),
(11111, 'N/A'),
(2121212, 'rer'),
(323234, 'ere');

-- --------------------------------------------------------

--
-- Table structure for table `routes_table`
--

CREATE TABLE `routes_table` (
  `Route_id` varchar(20) NOT NULL,
  `Route_description` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `routes_table`
--

INSERT INTO `routes_table` (`Route_id`, `Route_description`) VALUES
('NRB-01', 'N/A\r\n            ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airline_table`
--
ALTER TABLE `airline_table`
  ADD PRIMARY KEY (`airline_id`);

--
-- Indexes for table `customer_flight_notification_table`
--
ALTER TABLE `customer_flight_notification_table`
  ADD PRIMARY KEY (`Customer_flight_notification_id`);

--
-- Indexes for table `customer_flight_table`
--
ALTER TABLE `customer_flight_table`
  ADD PRIMARY KEY (`Customer_flight_id`);

--
-- Indexes for table `flight_route_table`
--
ALTER TABLE `flight_route_table`
  ADD PRIMARY KEY (`Flight_route_id`);

--
-- Indexes for table `flight_table`
--
ALTER TABLE `flight_table`
  ADD PRIMARY KEY (`Flight_id`);

--
-- Indexes for table `login_table`
--
ALTER TABLE `login_table`
  ADD PRIMARY KEY (`Login_id`);

--
-- Indexes for table `routes_table`
--
ALTER TABLE `routes_table`
  ADD PRIMARY KEY (`Route_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `airline_table`
--
ALTER TABLE `airline_table`
  MODIFY `airline_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `customer_flight_notification_table`
--
ALTER TABLE `customer_flight_notification_table`
  MODIFY `Customer_flight_notification_id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customer_flight_table`
--
ALTER TABLE `customer_flight_table`
  MODIFY `Customer_flight_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `flight_route_table`
--
ALTER TABLE `flight_route_table`
  MODIFY `Flight_route_id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `flight_table`
--
ALTER TABLE `flight_table`
  MODIFY `Flight_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;--
-- Database: `sacco`
--
CREATE DATABASE IF NOT EXISTS `sacco` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `sacco`;

-- --------------------------------------------------------

--
-- Table structure for table `Customer_Deposit_table`
--

CREATE TABLE `Customer_Deposit_table` (
  `Customer_Deposit_id` int(20) NOT NULL,
  `Customer_Deposit_Dep_id` varchar(20) DEFAULT NULL,
  `Customer_Deposit_Login_id` varchar(20) DEFAULT NULL,
  `Customer_Deposit_amout` varchar(20) DEFAULT NULL,
  `Customer_Deposit_DateTime` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Customer_Deposit_table`
--

INSERT INTO `Customer_Deposit_table` (`Customer_Deposit_id`, `Customer_Deposit_Dep_id`, `Customer_Deposit_Login_id`, `Customer_Deposit_amout`, `Customer_Deposit_DateTime`) VALUES
(2, '2', '122112', '4000', '2017-07-20 17:37:21'),
(4, '2', '1234', '30000', '2017-07-29 19:22:04');

-- --------------------------------------------------------

--
-- Table structure for table `Customer_Loan_table`
--

CREATE TABLE `Customer_Loan_table` (
  `Customer_Loan_id` int(20) NOT NULL,
  `Customer_Loan_Loan_id` int(20) DEFAULT NULL,
  `Customer_Loan_Login_id` int(20) DEFAULT NULL,
  `Customer_Loan_amount` int(20) DEFAULT NULL,
  `Customer_Loan_DateTime` varchar(20) DEFAULT NULL,
  `Customer_Loan_paytime` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Customer_Loan_table`
--

INSERT INTO `Customer_Loan_table` (`Customer_Loan_id`, `Customer_Loan_Loan_id`, `Customer_Loan_Login_id`, `Customer_Loan_amount`, `Customer_Loan_DateTime`, `Customer_Loan_paytime`) VALUES
(1, 1, 12345678, 5555, '2017-07-20 13:58:13', '2017-07-29'),
(2, 1, 1234, 120000, '2017-07-28 04:08:13', '2017-07-29');

-- --------------------------------------------------------

--
-- Table structure for table `Customer_Withdraw_table`
--

CREATE TABLE `Customer_Withdraw_table` (
  `Customer_Withdraw_id` int(20) NOT NULL,
  `Customer_Withdraw_Withdraw_id` int(20) DEFAULT NULL,
  `Customer_Withdraw_Login_id` int(20) DEFAULT NULL,
  `Customer_Withdraw_amount` int(20) DEFAULT NULL,
  `Customer_Withdraw_DateTime` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Customer_Withdraw_table`
--

INSERT INTO `Customer_Withdraw_table` (`Customer_Withdraw_id`, `Customer_Withdraw_Withdraw_id`, `Customer_Withdraw_Login_id`, `Customer_Withdraw_amount`, `Customer_Withdraw_DateTime`) VALUES
(2, 1, 122112, 9000, '2017-07-20 17:43:02');

-- --------------------------------------------------------

--
-- Table structure for table `Deposit_table`
--

CREATE TABLE `Deposit_table` (
  `Deposit_id` int(20) NOT NULL,
  `Deposit_type` varchar(20) DEFAULT NULL,
  `Deposit_description` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Deposit_table`
--

INSERT INTO `Deposit_table` (`Deposit_id`, `Deposit_type`, `Deposit_description`) VALUES
(1, '', ''),
(2, 'savings', 'n/a');

-- --------------------------------------------------------

--
-- Table structure for table `Loan_Payment_table`
--

CREATE TABLE `Loan_Payment_table` (
  `Loan_Payment_id` int(20) NOT NULL,
  `Loan_Payment_Customer_Loan_id` int(20) DEFAULT NULL,
  `Loan_Payment_amount` int(20) DEFAULT NULL,
  `Loan_Payment_DateTime` varchar(20) DEFAULT NULL,
  `Loan_Payment_Customer_Login_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Loan_Payment_table`
--

INSERT INTO `Loan_Payment_table` (`Loan_Payment_id`, `Loan_Payment_Customer_Loan_id`, `Loan_Payment_amount`, `Loan_Payment_DateTime`, `Loan_Payment_Customer_Login_id`) VALUES
(6, 2, 30000, '2017-07-28 13:04:12', 1234);

-- --------------------------------------------------------

--
-- Table structure for table `Loan_table`
--

CREATE TABLE `Loan_table` (
  `Loan_id` int(20) NOT NULL,
  `Loan_type` varchar(20) DEFAULT NULL,
  `Loan_description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Loan_table`
--

INSERT INTO `Loan_table` (`Loan_id`, `Loan_type`, `Loan_description`) VALUES
(1, 'e', 'errer');

-- --------------------------------------------------------

--
-- Table structure for table `Login_table`
--

CREATE TABLE `Login_table` (
  `Login_id` int(20) DEFAULT NULL,
  `Login_username` varchar(20) DEFAULT NULL,
  `Login_password` varchar(100) DEFAULT NULL,
  `Login_fullname` varchar(20) DEFAULT NULL,
  `Login_contact` int(10) DEFAULT NULL,
  `Login_email` varchar(20) DEFAULT NULL,
  `Login_rank` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Login_table`
--

INSERT INTO `Login_table` (`Login_id`, `Login_username`, `Login_password`, `Login_fullname`, `Login_contact`, `Login_email`, `Login_rank`) VALUES
(122112, 'admin', '25d55ad283aa400af464c76d713c07ad', 'admin admin', 1212112, 'email@email.com', '1'),
(1234, 'user', '25d55ad283aa400af464c76d713c07ad', 'james maina', 745336782, 'james@gmail.com', '2');

-- --------------------------------------------------------

--
-- Table structure for table `Withdraw_table`
--

CREATE TABLE `Withdraw_table` (
  `Withdraw_id` int(20) NOT NULL,
  `Withdraw_type` varchar(20) DEFAULT NULL,
  `Withdraw_description` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Withdraw_table`
--

INSERT INTO `Withdraw_table` (`Withdraw_id`, `Withdraw_type`, `Withdraw_description`) VALUES
(1, NULL, 'n/a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Customer_Deposit_table`
--
ALTER TABLE `Customer_Deposit_table`
  ADD PRIMARY KEY (`Customer_Deposit_id`);

--
-- Indexes for table `Customer_Loan_table`
--
ALTER TABLE `Customer_Loan_table`
  ADD PRIMARY KEY (`Customer_Loan_id`);

--
-- Indexes for table `Customer_Withdraw_table`
--
ALTER TABLE `Customer_Withdraw_table`
  ADD PRIMARY KEY (`Customer_Withdraw_id`);

--
-- Indexes for table `Deposit_table`
--
ALTER TABLE `Deposit_table`
  ADD PRIMARY KEY (`Deposit_id`);

--
-- Indexes for table `Loan_Payment_table`
--
ALTER TABLE `Loan_Payment_table`
  ADD PRIMARY KEY (`Loan_Payment_id`);

--
-- Indexes for table `Loan_table`
--
ALTER TABLE `Loan_table`
  ADD PRIMARY KEY (`Loan_id`);

--
-- Indexes for table `Withdraw_table`
--
ALTER TABLE `Withdraw_table`
  ADD PRIMARY KEY (`Withdraw_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Customer_Deposit_table`
--
ALTER TABLE `Customer_Deposit_table`
  MODIFY `Customer_Deposit_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `Customer_Loan_table`
--
ALTER TABLE `Customer_Loan_table`
  MODIFY `Customer_Loan_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Customer_Withdraw_table`
--
ALTER TABLE `Customer_Withdraw_table`
  MODIFY `Customer_Withdraw_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Deposit_table`
--
ALTER TABLE `Deposit_table`
  MODIFY `Deposit_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Loan_Payment_table`
--
ALTER TABLE `Loan_Payment_table`
  MODIFY `Loan_Payment_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `Loan_table`
--
ALTER TABLE `Loan_table`
  MODIFY `Loan_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Withdraw_table`
--
ALTER TABLE `Withdraw_table`
  MODIFY `Withdraw_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;--
-- Database: `superm`
--
CREATE DATABASE IF NOT EXISTS `superm` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `superm`;

-- --------------------------------------------------------

--
-- Table structure for table `category_products`
--

CREATE TABLE `category_products` (
  `Cate_Pro_Id` int(20) NOT NULL DEFAULT '0',
  `Cat_Prod_Category_Id` int(20) DEFAULT NULL,
  `Cat_Prod_Product_Id` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category_table`
--

CREATE TABLE `category_table` (
  `Category_Id` int(20) NOT NULL,
  `Category_Name` varchar(50) DEFAULT NULL,
  `Category_Desc` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer_profile`
--

CREATE TABLE `customer_profile` (
  `Customer_Profile_Id` int(20) NOT NULL DEFAULT '0',
  `Customer_Firstname` varchar(50) DEFAULT NULL,
  `Customer_Lastname` varchar(50) DEFAULT NULL,
  `Customer_Email` varchar(50) DEFAULT NULL,
  `Customer_Contacts` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login_table`
--

CREATE TABLE `login_table` (
  `Login_Id` int(20) NOT NULL DEFAULT '0',
  `Login_Username` varchar(50) DEFAULT NULL,
  `Login_Password` varchar(50) DEFAULT NULL,
  `Login_Rank` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_table`
--

INSERT INTO `login_table` (`Login_Id`, `Login_Username`, `Login_Password`, `Login_Rank`) VALUES
(21212, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 2),
(23232323, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products_table`
--

CREATE TABLE `products_table` (
  `Product_Id` int(20) NOT NULL DEFAULT '0',
  `Product_Code` varchar(50) DEFAULT NULL,
  `Product_Name` varchar(50) DEFAULT NULL,
  `Product_Image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products_table`
--

INSERT INTO `products_table` (`Product_Id`, `Product_Code`, `Product_Name`, `Product_Image`) VALUES
(8986, '0932hd3', 'MUMIAS', '../upload/mumias_400x400.jpg'),
(678797, 'K878hg', 'KIWI', '../upload/81TGH+MDegL._UX395_.jpg'),
(877867, '0998B', 'BREAD', '../upload/Bread-PNG-Clipart.png'),
(4234234, '435342', 'UNGA', '../upload/PACK-Jogoo-Fortified-e1429516590474.png'),
(9980988, '5345556W', 'WATER', '../upload/salem_photodune-1573348-bottle-water-and-splash-m.jpg'),
(46547646, '9886876', 'BLUEBAND', '../upload/1.jpg'),
(387583475, '4R2387487874', 'RICE', '../upload/ranee-basmati-homebrands.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_table`
--

CREATE TABLE `purchase_table` (
  `Purchase_Product_Id` int(20) NOT NULL,
  `Purchase_Payment_Method` varchar(20) DEFAULT NULL,
  `Purchase_Date` varchar(20) DEFAULT NULL,
  `Purchase_Customer_Id` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_products`
--

CREATE TABLE `supplier_products` (
  `Sup_Prod_Id` int(20) NOT NULL,
  `Sup_Prod_Supplier_Id` varchar(20) DEFAULT NULL,
  `Sup_Prod_Product_Id` varchar(20) DEFAULT NULL,
  `Sup_Prod_Product_Price` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier_products`
--

INSERT INTO `supplier_products` (`Sup_Prod_Id`, `Sup_Prod_Supplier_Id`, `Sup_Prod_Product_Id`, `Sup_Prod_Product_Price`) VALUES
(1, '564356', '24234', 3243),
(4, '11', '435342', 300),
(5, '11', '234', 700),
(6, '11', '4R2387487874', 60);

-- --------------------------------------------------------

--
-- Table structure for table `supplier_table`
--

CREATE TABLE `supplier_table` (
  `Supplier_Id` int(20) NOT NULL DEFAULT '0',
  `Supplier_Name` varchar(50) DEFAULT NULL,
  `Supplier_Address` varchar(50) DEFAULT NULL,
  `Supplier_Contact` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier_table`
--

INSERT INTO `supplier_table` (`Supplier_Id`, `Supplier_Name`, `Supplier_Address`, `Supplier_Contact`) VALUES
(6456, 'user', '11', 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_products`
--
ALTER TABLE `category_products`
  ADD PRIMARY KEY (`Cate_Pro_Id`);

--
-- Indexes for table `category_table`
--
ALTER TABLE `category_table`
  ADD PRIMARY KEY (`Category_Id`);

--
-- Indexes for table `customer_profile`
--
ALTER TABLE `customer_profile`
  ADD PRIMARY KEY (`Customer_Profile_Id`);

--
-- Indexes for table `login_table`
--
ALTER TABLE `login_table`
  ADD PRIMARY KEY (`Login_Id`);

--
-- Indexes for table `products_table`
--
ALTER TABLE `products_table`
  ADD PRIMARY KEY (`Product_Id`);

--
-- Indexes for table `purchase_table`
--
ALTER TABLE `purchase_table`
  ADD PRIMARY KEY (`Purchase_Product_Id`);

--
-- Indexes for table `supplier_products`
--
ALTER TABLE `supplier_products`
  ADD PRIMARY KEY (`Sup_Prod_Id`);

--
-- Indexes for table `supplier_table`
--
ALTER TABLE `supplier_table`
  ADD PRIMARY KEY (`Supplier_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_table`
--
ALTER TABLE `category_table`
  MODIFY `Category_Id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `supplier_products`
--
ALTER TABLE `supplier_products`
  MODIFY `Sup_Prod_Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;--
-- Database: `tevinson`
--
CREATE DATABASE IF NOT EXISTS `tevinson` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `tevinson`;

-- --------------------------------------------------------

--
-- Table structure for table `doctors_details`
--

CREATE TABLE `doctors_details` (
  `Dostor_Id` varchar(65) NOT NULL,
  `Doctor_Name` varchar(65) NOT NULL,
  `Doctor_Rank` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors_details`
--

INSERT INTO `doctors_details` (`Dostor_Id`, `Doctor_Name`, `Doctor_Rank`) VALUES
('656', 'rtr', 'trtr');

-- --------------------------------------------------------

--
-- Table structure for table `fingerprint_details`
--

CREATE TABLE `fingerprint_details` (
  `Fingerprint_Id` int(65) NOT NULL,
  `Fingerprint_Volunteer_Id` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fingerprint_details`
--

INSERT INTO `fingerprint_details` (`Fingerprint_Id`, `Fingerprint_Volunteer_Id`) VALUES
(1, ''),
(2, '767567657'),
(3, '111111');

-- --------------------------------------------------------

--
-- Table structure for table `nurse_details`
--

CREATE TABLE `nurse_details` (
  `Nurse_Id` varchar(65) NOT NULL,
  `Nurse_Name` varchar(65) NOT NULL,
  `Nurse_Department` varchar(65) NOT NULL,
  `Nurse_Rank` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nurse_details`
--

INSERT INTO `nurse_details` (`Nurse_Id`, `Nurse_Name`, `Nurse_Department`, `Nurse_Rank`) VALUES
('', '', '', ''),
('34', '343', '343', '34'),
('343434', 'erer', 'erererer', 'ere');

-- --------------------------------------------------------

--
-- Table structure for table `protocol_details`
--

CREATE TABLE `protocol_details` (
  `Protocol_Id` int(65) NOT NULL,
  `Protocol_Name` varchar(65) NOT NULL,
  `Protocol_Description` varchar(65) NOT NULL,
  `Protocol_Duration` varchar(65) NOT NULL,
  `Protocol_Nurse_Id` varchar(65) NOT NULL,
  `Protocol_Doctor_Id` varchar(65) NOT NULL,
  `Protocol_Volunteer_Id` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `protocol_details`
--

INSERT INTO `protocol_details` (`Protocol_Id`, `Protocol_Name`, `Protocol_Description`, `Protocol_Duration`, `Protocol_Nurse_Id`, `Protocol_Doctor_Id`, `Protocol_Volunteer_Id`) VALUES
(1, 'er', 'ere', 'erer', 'erer', 'erer', 'er');

-- --------------------------------------------------------

--
-- Table structure for table `receptionist_details`
--

CREATE TABLE `receptionist_details` (
  `Receptionist_Id` varchar(65) NOT NULL,
  `Receptionist_Name` varchar(65) NOT NULL,
  `Receptionist_Password` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff_login`
--

CREATE TABLE `staff_login` (
  `Staff_Login_Id` varchar(65) NOT NULL,
  `Staff_Login_Name` varchar(65) NOT NULL,
  `Staff_Login_Password` varchar(65) NOT NULL,
  `Staff_Login_Rank` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_login`
--

INSERT INTO `staff_login` (`Staff_Login_Id`, `Staff_Login_Name`, `Staff_Login_Password`, `Staff_Login_Rank`) VALUES
('1212', 'sec', '74459ca3cf85a81df90da95ff6e7a207', '2'),
('312343', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1'),
('5465', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1'),
('78786786', 'colo', '96ed1498ec94cb6ed3e47fda0c6f84da', '1');

-- --------------------------------------------------------

--
-- Table structure for table `volunteer_details`
--

CREATE TABLE `volunteer_details` (
  `Volunteer_Id` varchar(65) NOT NULL,
  `Volunteer_Name` varchar(65) NOT NULL,
  `Voluteer_Age` varchar(65) NOT NULL,
  `Volunteer_Gender` varchar(65) NOT NULL,
  `Volunteer_Figerprint_Id` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `volunteer_details`
--

INSERT INTO `volunteer_details` (`Volunteer_Id`, `Volunteer_Name`, `Voluteer_Age`, `Volunteer_Gender`, `Volunteer_Figerprint_Id`) VALUES
('987808', 'jopjklj', '9790', 'Male', 0x393038303938),
('2423', 'efefw', 'ewfef', 'Female', 0x3334333433),
('', 'ss', '23', 'Male', 0x33);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctors_details`
--
ALTER TABLE `doctors_details`
  ADD PRIMARY KEY (`Dostor_Id`);

--
-- Indexes for table `fingerprint_details`
--
ALTER TABLE `fingerprint_details`
  ADD PRIMARY KEY (`Fingerprint_Id`);

--
-- Indexes for table `protocol_details`
--
ALTER TABLE `protocol_details`
  ADD PRIMARY KEY (`Protocol_Id`);

--
-- Indexes for table `staff_login`
--
ALTER TABLE `staff_login`
  ADD PRIMARY KEY (`Staff_Login_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fingerprint_details`
--
ALTER TABLE `fingerprint_details`
  MODIFY `Fingerprint_Id` int(65) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `protocol_details`
--
ALTER TABLE `protocol_details`
  MODIFY `Protocol_Id` int(65) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
