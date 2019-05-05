
--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
CREATE TABLE IF NOT EXISTS `profile` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `photo` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `name`, `email`, `photo`) VALUES
(1, 'Jaison Joy', 'joydfdfd33322@mail.com', 'http://jaisonjoy.com//image/man.png'),
(2, 'Vini', 'vini232ew@gmail.com', 'http://jaisonjoy.com/image/female.png'),
(3, 'John', 'johnsde34223@gmail.com', 'http://jaisonjoy.com/image/male.png');
COMMIT;
