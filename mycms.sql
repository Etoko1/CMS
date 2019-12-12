-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2014 at 06:25 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mycms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(10) NOT NULL AUTO_INCREMENT,
  `cat_title` varchar(50) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(3, 'Sports'),
(10, 'Politics'),
(11, 'India'),
(12, 'North Asia'),
(13, 'Middle East'),
(14, 'Showbiz'),
(15, 'Afghanistan');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `comment_id` int(10) NOT NULL AUTO_INCREMENT,
  `post_id` int(10) NOT NULL,
  `comment_name` varchar(100) NOT NULL,
  `comment_email` varchar(100) NOT NULL,
  `comment_text` text NOT NULL,
  `status` text NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `post_id`, `comment_name`, `comment_email`, `comment_text`, `status`) VALUES
(1, 4, 'Wali', 'awpareshan@gmail.com', 'hello world, this is a test comment. ', 'approve'),
(2, 8, 'John', 'john@john.com', 'Hello this is another testing comment. ', 'approve'),
(3, 4, 'Wali', 'wali@wali.com', 'hey another comment is coming. ', 'approve'),
(6, 4, 'Ayesha', 'bilal@yahoo.com', 'Hey, what to do with the CMS of Malala Yousafzai. ', 'approve'),
(7, 4, 'Naiza ', 'naz@gmail.com', 'hey this is one more comment. ', 'approve'),
(8, 11, 'Jahan', 'jan@gmail.com', 'hello again, a test comment. ', 'unapprove'),
(9, 8, 'Hello', 'hello@hello.com', 'Hey, simple comment is this one. ', 'unapprove');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `post_id` int(10) NOT NULL AUTO_INCREMENT,
  `category_id` int(10) NOT NULL,
  `post_title` varchar(100) NOT NULL,
  `post_date` text NOT NULL,
  `post_author` varchar(50) NOT NULL,
  `post_keywords` text NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `category_id`, `post_title`, `post_date`, `post_author`, `post_keywords`, `post_image`, `post_content`) VALUES
(4, 3, 'West Indies Won the Match Against Pakistan 12345', '04-15-14', 'Abdul Wali', 'Cricket, West Indies, T20 World Cup, ICC', 'abdul-wali-ustaad1.jpg', '<p>US president Barak Obama is visiting KSA the kingdom of Saudi Arabia on monday, he is going to meet Sauid Kind Shah fahad bin Abdul Aziz for a strong relationship between USA and Saudia arabia. Obama is likely to meet other Saudia officials during the visit. Before this visit he was on the visit of Europe for many days on the atomic weapons conference in France.&nbsp;</p>\r\n<p>US president Barak Obama is visiting KSA the kingdom of Saudi Arabia on monday, he is going to meet Sauid Kind Shah fahad bin Abdul Aziz for a strong relationship between USA and Saudia arabia. Obama is likely to meet other Saudia officials during the visit. Before this visit he was on the visit of Europe for many days on the atomic weapons conference in France.&nbsp;</p>\r\n<p>US president Barak Obama is visiting KSA the kingdom of Saudi Arabia on monday, he is going to meet Sauid Kind Shah fahad bin Abdul Aziz for a strong relationship between USA and Saudia arabia. Obama is likely to meet other Saudia officials during the visit. Before this visit he was on the visit of Europe for many days on the atomic weapons conference in France.&nbsp;</p>\r\n<p>US president Barak Obama is visiting KSA the kingdom of Saudi Arabia on monday, he is going to meet Sauid Kind Shah fahad bin Abdul Aziz for a strong relationship between USA and Saudia arabia. Obama is likely to meet other Saudia officials during the visit. Before this visit he was on the visit of Europe for many days on the atomic weapons conference in France.&nbsp;</p>\r\n<p>US president Barak Obama is visiting KSA the kingdom of Saudi Arabia on monday, he is going to meet Sauid Kind Shah fahad bin Abdul Aziz for a strong relationship between USA and Saudia arabia. Obama is likely to meet other Saudia officials during the visit. Before this visit he was on the visit of Europe for many days on the atomic weapons conference in France.&nbsp;</p>'),
(6, 7, 'Abdul Wali is a web developer from Afghanistan', '04-15-14', 'Wali Khan', 'Bilawal, Zardari, Sindh, Pakistan, Asia, News', '996825_687297974632225_268322040_n.jpg', '<p>US president Barak Obama is visiting KSA the kingdom of Saudi Arabia on monday, he is going to meet Sauid Kind Shah fahad bin Abdul Aziz for a strong relationship between USA and Saudia arabia. Obama is likely to meet other Saudia officials during the visit. Before this visit he was on the visit of Europe for many days on the atomic weapons conference in France.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>US president Barak Obama is visiting KSA the kingdom of Saudi Arabia on monday, he is going to meet Sauid Kind Shah fahad bin Abdul Aziz for a strong relationship between USA and Saudia arabia. Obama is likely to meet other Saudia officials during the visit. Before this visit he was on the visit of Europe for many days on the atomic weapons conference in France.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>US president Barak Obama is visiting KSA the kingdom of Saudi Arabia on monday, he is going to meet Sauid Kind Shah fahad bin Abdul Aziz for a strong relationship between USA and Saudia arabia. Obama is likely to meet other Saudia officials during the visit. Before this visit he was on the visit of Europe for many days on the atomic weapons conference in France.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>US president Barak Obama is visiting KSA the kingdom of Saudi Arabia on monday, he is going to meet Sauid Kind Shah fahad bin Abdul Aziz for a strong relationship between USA and Saudia arabia. Obama is likely to meet other Saudia officials during the visit. Before this visit he was on the visit of Europe for many days on the atomic weapons conference in France.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>US president Barak Obama is visiting KSA the kingdom of Saudi Arabia on monday, he is going to meet Sauid Kind Shah fahad bin Abdul Aziz for a strong relationship between USA and Saudia arabia. Obama is likely to meet other Saudia officials during the visit. Before this visit he was on the visit of Europe for many days on the atomic weapons conference in France.&nbsp;</p>'),
(8, 7, 'This is just a simple Test Post', '04-10-14', 'Tom Cruise', 'Nothing, everything, fine, well', 'malala_hero.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum placerat rutrum odio ac convallis. Maecenas vitae convallis urna. Duis ac luctus ante, vitae dapibus turpis. Vivamus facilisis sapien urna. Nullam sapien lacus, egestas vel sapien eu, malesuada aliquam nisi. Aliquam quis justo vitae magna euismod auctor nec et sapien. Aliquam eget egestas nunc. Quisque ut dapibus urna. Quisque ullamcorper lorem vel sem viverra, id vehicula sem dapibus. Fusce ultricies elit arcu, sit amet pellentesque lectus pulvinar a. Maecenas neque justo, laoreet sit amet lobortis eu, vestibulum non arcu. Duis sit amet fermentum nisi.</p>\r\n<p>&nbsp;</p>\r\n<p>Aenean vel porta ipsum, sed sodales mi. Nulla non lacinia elit, nec facilisis ligula. Donec a lacus sit amet eros mattis blandit in at neque. Vestibulum non consectetur ligula, quis varius magna. Praesent a enim tortor. Sed nisi dolor, ultricies vitae placerat et, suscipit sit amet nisl. Praesent facilisis condimentum laoreet.</p>\r\n<p>&nbsp;</p>\r\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris rutrum erat sed ornare tincidunt. Praesent adipiscing risus ac felis dictum mollis. Pellentesque malesuada magna id felis gravida cursus. Morbi sit amet aliquam ipsum. Vestibulum gravida metus eu lacus semper, id sollicitudin nunc luctus. Morbi sit amet libero augue. Aliquam magna ante, ultricies ac varius eu, dapibus quis sapien. Praesent sed est fringilla, pretium risus eget, auctor mauris. Vestibulum vitae ipsum tellus. Donec molestie sodales nulla, nec tincidunt ante accumsan nec. Aenean lacinia, felis in scelerisque vestibulum, felis velit rutrum mauris, nec sollicitudin neque velit quis turpis. Aenean accumsan nibh sit amet ante convallis, porta pulvinar dui lacinia.</p>\r\n<p>&nbsp;</p>\r\n<p>Vivamus non purus laoreet, bibendum dui a, porta augue. In vitae dui vel ante eleifend mollis malesuada non urna. Suspendisse hendrerit ipsum semper libero cursus fringilla. Fusce porttitor, nulla iaculis blandit viverra, orci turpis fringilla tellus, id scelerisque nisl dolor eu dolor. Curabitur pharetra sollicitudin quam, ac posuere mi volutpat ut. Nam lobortis tincidunt facilisis. Aenean posuere, mi eget faucibus lacinia, dui felis elementum risus, vitae egestas lorem turpis sit amet eros. Nullam a scelerisque massa, id convallis velit. Nam in neque vel ante porttitor bibendum eleifend vitae erat. Maecenas imperdiet magna mauris, ac commodo elit tincidunt tincidunt. Proin semper sapien augue, sit amet consectetur dolor laoreet sit amet.</p>\r\n<p>&nbsp;</p>\r\n<p>Vivamus vitae tortor ut nunc dignissim commodo vel in justo. Suspendisse porttitor, ipsum cursus suscipit convallis, tellus est sagittis enim, nec tincidunt eros nulla vel mi. Nullam a metus et sapien placerat lacinia. Mauris hendrerit sapien nunc, at iaculis eros mattis pulvinar. Etiam in varius dolor. Duis urna ipsum, hendrerit nec elementum id, sodales a ipsum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur non nulla dictum, ultricies justo et, porttitor enim. Phasellus eu pharetra velit. Mauris non mauris eleifend, pulvinar lacus iaculis, vestibulum purus. Pellentesque tempus nisi vitae metus suscipit, id commodo augue commodo. Vivamus quam purus, cursus sed tempor nec, semper sed lacus. Sed dignissim arcu vitae dapibus sodales. Sed laoreet eu ligula eget vestibulum. Quisque rutrum tellus eu sodales dignissim. Donec vitae commodo dui.</p>'),
(9, 3, 'Pakistan win T20 World Cup in 2016', '04-15-14', 'John Doe ', 'Pakistan, Cricket, T20, World Cup, ICC', 'news6.jpeg', '<p>Hello world, this is a post which is just a testing post but something that should be displayed on the page for you guys to understand what we are going to learn during this tutorial or this lecture. So.&nbsp;</p>\r\n<p>Hello world, this is a post which is just a testing post but something that should be displayed on the page for you guys to understand what we are going to learn during this tutorial or this lecture. So.&nbsp;</p>\r\n<p>Hello world, this is a post which is just a testing post but something that should be displayed on the page for you guys to understand what we are going to learn during this tutorial or this lecture. So.&nbsp;</p>\r\n<p>Hello world, this is a post which is just a testing post but something that should be displayed on the page for you guys to understand what we are going to learn during this tutorial or this lecture. So.&nbsp;</p>\r\n<p>Hello world, this is a post which is just a testing post but something that should be displayed on the page for you guys to understand what we are going to learn during this tutorial or this lecture. So.&nbsp;</p>\r\n<p>Hello world, this is a post which is just a testing post but something that should be displayed on the page for you guys to understand what we are going to learn during this tutorial or this lecture. So.&nbsp;</p>'),
(10, 15, 'Ashraf Ghani will win Afghan Presedential Elections', '04-15-14', 'Abdul Wali', 'Afghanistan, Ashraf Ghani, Afghan elections, Kabul', 'afghanistan_flag_lrg.gif', '<p>The Afghan elections were held successfully across the country, the presedential elections are held after 5 years in Afghanistan. Hamid Karzai the current Afghan presedent can not participate in the elections because he has completed his two terms successfully. However, Ashraf Ghani is a strong candidate to win the elections and became Afghan presedent.&nbsp;</p>\r\n<p>The Afghan elections were held successfully across the country, the presedential elections are held after 5 years in Afghanistan. Hamid Karzai the current Afghan presedent can not participate in the elections because he has completed his two terms successfully. However, Ashraf Ghani is a strong candidate to win the elections and became Afghan presedent.&nbsp;</p>\r\n<p>The Afghan elections were held successfully across the country, the presedential elections are held after 5 years in Afghanistan. Hamid Karzai the current Afghan presedent can not participate in the elections because he has completed his two terms successfully. However, Ashraf Ghani is a strong candidate to win the elections and became Afghan presedent.&nbsp;</p>\r\n<p>The Afghan elections were held successfully across the country, the presedential elections are held after 5 years in Afghanistan. Hamid Karzai the current Afghan presedent can not participate in the elections because he has completed his two terms successfully. However, Ashraf Ghani is a strong candidate to win the elections and became Afghan presedent.&nbsp;</p>'),
(11, 11, 'Bilawal Bhutto received Threats from the Militants', '04-15-14', 'John Doe ', 'Bilawal, Zardari, Sindh, Pakistan, Asia, News', 'news5.jpg', '<p>The Afghan elections were held successfully across the country, the presedential elections are held after 5 years in Afghanistan. Hamid Karzai the current Afghan presedent can not participate in the elections because he has completed his two terms successfully. However, Ashraf Ghani is a strong candidate to win the elections and became Afghan presedent.&nbsp;</p>\r\n<p>The Afghan elections were held successfully across the country, the presedential elections are held after 5 years in Afghanistan. Hamid Karzai the current Afghan presedent can not participate in the elections because he has completed his two terms successfully. However, Ashraf Ghani is a strong candidate to win the elections and became Afghan presedent.&nbsp;</p>\r\n<p>The Afghan elections were held successfully across the country, the presedential elections are held after 5 years in Afghanistan. Hamid Karzai the current Afghan presedent can not participate in the elections because he has completed his two terms successfully. However, Ashraf Ghani is a strong candidate to win the elections and became Afghan presedent.&nbsp;</p>\r\n<p>The Afghan elections were held successfully across the country, the presedential elections are held after 5 years in Afghanistan. Hamid Karzai the current Afghan presedent can not participate in the elections because he has completed his two terms successfully. However, Ashraf Ghani is a strong candidate to win the elections and became Afghan presedent.&nbsp;</p>');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_password`) VALUES
(1, 'john', 'john'),
(2, 'wali', 'wali');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
