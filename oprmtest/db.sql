-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Oct 07, 2016 at 03:20 PM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `orpm`
--
CREATE DATABASE IF NOT EXISTS `orpm` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `orpm`;

-- --------------------------------------------------------

--
-- Table structure for table `applicants_and_tenants`
--

DROP TABLE IF EXISTS `applicants_and_tenants`;
CREATE TABLE `applicants_and_tenants` (
  `id` int(10) unsigned NOT NULL,
  `last_name` varchar(15) DEFAULT NULL,
  `first_name` varchar(15) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `driver_license_number` varchar(15) DEFAULT NULL,
  `driver_license_state` varchar(15) DEFAULT NULL,
  `requested_lease_term` varchar(15) DEFAULT NULL,
  `monthly_gross_pay` decimal(8,2) DEFAULT NULL,
  `additional_income` decimal(8,2) DEFAULT NULL,
  `assets` decimal(8,2) DEFAULT NULL,
  `status` varchar(40) NOT NULL DEFAULT 'Applicant',
  `notes` text
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `applicants_and_tenants`
--

INSERT INTO `applicants_and_tenants` (`id`, `last_name`, `first_name`, `email`, `phone`, `birth_date`, `driver_license_number`, `driver_license_state`, `requested_lease_term`, `monthly_gross_pay`, `additional_income`, `assets`, `status`, `notes`) VALUES
(1, 'James', 'Maina', NULL, '4343', '1908-03-05', '3434', NULL, NULL, '3434.00', '3434.00', '344.00', 'Tenant', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `applications_leases`
--

DROP TABLE IF EXISTS `applications_leases`;
CREATE TABLE `applications_leases` (
  `id` int(10) unsigned NOT NULL,
  `tenants` int(10) unsigned DEFAULT NULL,
  `status` varchar(40) NOT NULL DEFAULT 'Application',
  `property` int(10) unsigned DEFAULT NULL,
  `unit` int(10) unsigned DEFAULT NULL,
  `type` varchar(40) NOT NULL DEFAULT 'Fixed',
  `total_number_of_occupants` varchar(15) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `recurring_charges_frequency` varchar(40) NOT NULL DEFAULT 'Monthly',
  `next_due_date` date DEFAULT NULL,
  `rent` decimal(8,2) DEFAULT NULL,
  `security_deposit` decimal(15,2) DEFAULT NULL,
  `security_deposit_date` date DEFAULT NULL,
  `emergency_contact` varchar(100) DEFAULT NULL,
  `co_signer_details` varchar(100) DEFAULT NULL,
  `notes` text,
  `agreement` varchar(40) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `applications_leases`
--

INSERT INTO `applications_leases` (`id`, `tenants`, `status`, `property`, `unit`, `type`, `total_number_of_occupants`, `start_date`, `end_date`, `recurring_charges_frequency`, `next_due_date`, `rent`, `security_deposit`, `security_deposit_date`, `emergency_contact`, `co_signer_details`, `notes`, `agreement`) VALUES
(1, 1, 'Lease', 1, NULL, 'Fixed with rollover', NULL, '2016-10-07', '2016-10-07', 'Monthly', '2016-10-07', '8000.00', '6000.00', NULL, NULL, NULL, '<br>', '1');

-- --------------------------------------------------------

--
-- Table structure for table `employment_and_income_history`
--

DROP TABLE IF EXISTS `employment_and_income_history`;
CREATE TABLE `employment_and_income_history` (
  `id` int(10) unsigned NOT NULL,
  `tenant` int(10) unsigned DEFAULT NULL,
  `employer_name` varchar(15) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `employer_phone` varchar(15) DEFAULT NULL,
  `employed_from` date DEFAULT NULL,
  `employed_till` date DEFAULT NULL,
  `occupation` varchar(40) DEFAULT NULL,
  `notes` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `membership_grouppermissions`
--

DROP TABLE IF EXISTS `membership_grouppermissions`;
CREATE TABLE `membership_grouppermissions` (
  `permissionID` int(10) unsigned NOT NULL,
  `groupID` int(11) DEFAULT NULL,
  `tableName` varchar(100) DEFAULT NULL,
  `allowInsert` tinyint(4) DEFAULT NULL,
  `allowView` tinyint(4) NOT NULL DEFAULT '0',
  `allowEdit` tinyint(4) NOT NULL DEFAULT '0',
  `allowDelete` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membership_grouppermissions`
--

INSERT INTO `membership_grouppermissions` (`permissionID`, `groupID`, `tableName`, `allowInsert`, `allowView`, `allowEdit`, `allowDelete`) VALUES
(1, 2, 'applications_leases', 1, 3, 3, 3),
(2, 2, 'residence_and_rental_history', 1, 3, 3, 3),
(3, 2, 'employment_and_income_history', 1, 3, 3, 3),
(4, 2, 'references', 1, 3, 3, 3),
(5, 2, 'applicants_and_tenants', 1, 3, 3, 3),
(6, 2, 'properties', 1, 3, 3, 3),
(7, 2, 'units', 1, 3, 3, 3),
(8, 2, 'rental_owners', 1, 3, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `membership_groups`
--

DROP TABLE IF EXISTS `membership_groups`;
CREATE TABLE `membership_groups` (
  `groupID` int(10) unsigned NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `description` text,
  `allowSignup` tinyint(4) DEFAULT NULL,
  `needsApproval` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membership_groups`
--

INSERT INTO `membership_groups` (`groupID`, `name`, `description`, `allowSignup`, `needsApproval`) VALUES
(1, 'anonymous', 'Anonymous group created automatically on 2016-10-07', 0, 0),
(2, 'Admins', 'Admin group created automatically on 2016-10-07', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `membership_userpermissions`
--

DROP TABLE IF EXISTS `membership_userpermissions`;
CREATE TABLE `membership_userpermissions` (
  `permissionID` int(10) unsigned NOT NULL,
  `memberID` varchar(20) NOT NULL,
  `tableName` varchar(100) DEFAULT NULL,
  `allowInsert` tinyint(4) DEFAULT NULL,
  `allowView` tinyint(4) NOT NULL DEFAULT '0',
  `allowEdit` tinyint(4) NOT NULL DEFAULT '0',
  `allowDelete` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `membership_userrecords`
--

DROP TABLE IF EXISTS `membership_userrecords`;
CREATE TABLE `membership_userrecords` (
  `recID` bigint(20) unsigned NOT NULL,
  `tableName` varchar(100) DEFAULT NULL,
  `pkValue` varchar(255) DEFAULT NULL,
  `memberID` varchar(20) DEFAULT NULL,
  `dateAdded` bigint(20) unsigned DEFAULT NULL,
  `dateUpdated` bigint(20) unsigned DEFAULT NULL,
  `groupID` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membership_userrecords`
--

INSERT INTO `membership_userrecords` (`recID`, `tableName`, `pkValue`, `memberID`, `dateAdded`, `dateUpdated`, `groupID`) VALUES
(1, 'rental_owners', '1', 'admin', 1475845329, 1475845329, 2),
(2, 'properties', '1', 'admin', 1475845372, 1475845372, 2),
(3, 'applicants_and_tenants', '1', 'admin', 1475845443, 1475845443, 2),
(4, 'applications_leases', '1', 'admin', 1475845535, 1475845535, 2);

-- --------------------------------------------------------

--
-- Table structure for table `membership_users`
--

DROP TABLE IF EXISTS `membership_users`;
CREATE TABLE `membership_users` (
  `memberID` varchar(20) NOT NULL,
  `passMD5` varchar(40) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `signupDate` date DEFAULT NULL,
  `groupID` int(10) unsigned DEFAULT NULL,
  `isBanned` tinyint(4) DEFAULT NULL,
  `isApproved` tinyint(4) DEFAULT NULL,
  `custom1` text,
  `custom2` text,
  `custom3` text,
  `custom4` text,
  `comments` text,
  `pass_reset_key` varchar(100) DEFAULT NULL,
  `pass_reset_expiry` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membership_users`
--

INSERT INTO `membership_users` (`memberID`, `passMD5`, `email`, `signupDate`, `groupID`, `isBanned`, `isApproved`, `custom1`, `custom2`, `custom3`, `custom4`, `comments`, `pass_reset_key`, `pass_reset_expiry`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@admin.com', '2016-10-07', 2, 0, 1, NULL, NULL, NULL, NULL, 'Admin member created automatically on 2016-10-07\nRecord updated automatically on 2016-10-07', NULL, NULL),
('guest', NULL, NULL, '2016-10-07', 1, 0, 1, NULL, NULL, NULL, NULL, 'Anonymous member created automatically on 2016-10-07', NULL, NULL),
('james', '827ccb0eea8a706c4c34a16891f84e7b', 'james@gmail.com', '2016-10-07', 2, 0, 1, '', '', '', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

DROP TABLE IF EXISTS `properties`;
CREATE TABLE `properties` (
  `id` int(10) unsigned NOT NULL,
  `property_name` text NOT NULL,
  `type` varchar(40) NOT NULL,
  `number_of_units` decimal(15,0) DEFAULT NULL,
  `photo` varchar(40) DEFAULT NULL,
  `owner` int(10) unsigned DEFAULT NULL,
  `operating_account` varchar(40) DEFAULT NULL,
  `property_reserve` decimal(15,0) DEFAULT NULL,
  `lease_term` varchar(15) DEFAULT NULL,
  `country` varchar(40) DEFAULT NULL,
  `street` varchar(40) DEFAULT NULL,
  `City` varchar(40) DEFAULT NULL,
  `State` varchar(40) DEFAULT NULL,
  `ZIP` decimal(15,0) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `property_name`, `type`, `number_of_units`, `photo`, `owner`, `operating_account`, `property_reserve`, `lease_term`, `country`, `street`, `City`, `State`, `ZIP`) VALUES
(1, 'MWEIGA HOUSE', 'Residential', '10', NULL, 1, NULL, NULL, NULL, 'Kenya', 'Nairobi', NULL, 'MO', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `references`
--

DROP TABLE IF EXISTS `references`;
CREATE TABLE `references` (
  `id` int(10) unsigned NOT NULL,
  `tenant` int(10) unsigned DEFAULT NULL,
  `reference_name` varchar(15) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rental_owners`
--

DROP TABLE IF EXISTS `rental_owners`;
CREATE TABLE `rental_owners` (
  `id` int(10) unsigned NOT NULL,
  `first_name` varchar(40) DEFAULT NULL,
  `last_name` varchar(40) DEFAULT NULL,
  `company_name` varchar(40) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `primary_email` varchar(40) DEFAULT NULL,
  `alternate_email` varchar(40) DEFAULT NULL,
  `phone` varchar(40) DEFAULT NULL,
  `country` varchar(40) DEFAULT NULL,
  `street` varchar(40) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  `state` varchar(40) DEFAULT NULL,
  `zip` decimal(15,0) DEFAULT NULL,
  `comments` text
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rental_owners`
--

INSERT INTO `rental_owners` (`id`, `first_name`, `last_name`, `company_name`, `date_of_birth`, `primary_email`, `alternate_email`, `phone`, `country`, `street`, `city`, `state`, `zip`, `comments`) VALUES
(1, 'SAMSON', 'MWANGI', 'KAA', '1900-02-04', NULL, NULL, '9797987', 'Andorra', 'rtrt', 'ffgh', 'CA', '76786', '<br>');

-- --------------------------------------------------------

--
-- Table structure for table `residence_and_rental_history`
--

DROP TABLE IF EXISTS `residence_and_rental_history`;
CREATE TABLE `residence_and_rental_history` (
  `id` int(10) unsigned NOT NULL,
  `tenant` int(10) unsigned DEFAULT NULL,
  `address` varchar(40) DEFAULT NULL,
  `landlord_or_manager_name` varchar(15) DEFAULT NULL,
  `landlord_or_manager_phone` varchar(15) DEFAULT NULL,
  `monthly_rent` decimal(6,2) DEFAULT NULL,
  `duration_of_residency_from` date DEFAULT NULL,
  `to` date DEFAULT NULL,
  `reason_for_leaving` varchar(40) DEFAULT NULL,
  `notes` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

DROP TABLE IF EXISTS `units`;
CREATE TABLE `units` (
  `id` int(10) unsigned NOT NULL,
  `property` int(10) unsigned DEFAULT NULL,
  `unit_number` varchar(40) DEFAULT NULL,
  `photo` varchar(40) DEFAULT NULL,
  `status` varchar(40) NOT NULL,
  `size` varchar(40) DEFAULT NULL,
  `country` int(10) unsigned DEFAULT NULL,
  `street` int(10) unsigned DEFAULT NULL,
  `city` int(10) unsigned DEFAULT NULL,
  `state` int(10) unsigned DEFAULT NULL,
  `postal_code` int(10) unsigned DEFAULT NULL,
  `rooms` varchar(40) DEFAULT NULL,
  `bathroom` decimal(15,0) DEFAULT NULL,
  `features` text,
  `market_rent` decimal(15,0) DEFAULT NULL,
  `rental_amount` decimal(6,2) DEFAULT NULL,
  `deposit_amount` decimal(6,2) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applicants_and_tenants`
--
ALTER TABLE `applicants_and_tenants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applications_leases`
--
ALTER TABLE `applications_leases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tenants` (`tenants`),
  ADD KEY `property` (`property`),
  ADD KEY `unit` (`unit`);

--
-- Indexes for table `employment_and_income_history`
--
ALTER TABLE `employment_and_income_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tenant` (`tenant`);

--
-- Indexes for table `membership_grouppermissions`
--
ALTER TABLE `membership_grouppermissions`
  ADD PRIMARY KEY (`permissionID`);

--
-- Indexes for table `membership_groups`
--
ALTER TABLE `membership_groups`
  ADD PRIMARY KEY (`groupID`);

--
-- Indexes for table `membership_userpermissions`
--
ALTER TABLE `membership_userpermissions`
  ADD PRIMARY KEY (`permissionID`);

--
-- Indexes for table `membership_userrecords`
--
ALTER TABLE `membership_userrecords`
  ADD PRIMARY KEY (`recID`),
  ADD UNIQUE KEY `tableName_pkValue` (`tableName`,`pkValue`),
  ADD KEY `pkValue` (`pkValue`),
  ADD KEY `tableName` (`tableName`),
  ADD KEY `memberID` (`memberID`),
  ADD KEY `groupID` (`groupID`);

--
-- Indexes for table `membership_users`
--
ALTER TABLE `membership_users`
  ADD PRIMARY KEY (`memberID`),
  ADD KEY `groupID` (`groupID`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner` (`owner`);

--
-- Indexes for table `references`
--
ALTER TABLE `references`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tenant` (`tenant`);

--
-- Indexes for table `rental_owners`
--
ALTER TABLE `rental_owners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `residence_and_rental_history`
--
ALTER TABLE `residence_and_rental_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tenant` (`tenant`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property` (`property`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applicants_and_tenants`
--
ALTER TABLE `applicants_and_tenants`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `applications_leases`
--
ALTER TABLE `applications_leases`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `employment_and_income_history`
--
ALTER TABLE `employment_and_income_history`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `membership_grouppermissions`
--
ALTER TABLE `membership_grouppermissions`
  MODIFY `permissionID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `membership_groups`
--
ALTER TABLE `membership_groups`
  MODIFY `groupID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `membership_userpermissions`
--
ALTER TABLE `membership_userpermissions`
  MODIFY `permissionID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `membership_userrecords`
--
ALTER TABLE `membership_userrecords`
  MODIFY `recID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `references`
--
ALTER TABLE `references`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rental_owners`
--
ALTER TABLE `rental_owners`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `residence_and_rental_history`
--
ALTER TABLE `residence_and_rental_history`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;