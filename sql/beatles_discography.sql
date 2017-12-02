-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2017 at 10:23 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beatles_discography`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(40) NOT NULL,
  `year` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_core_catalogue` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `year`, `image`, `is_core_catalogue`) VALUES
(1, 'Please Please Me', 1963, 'Images\\albums\\PleasePleaseMe_thumb.jpg', b'1'),
(2, 'With the Beatles', 1963, 'Images\\albums\\WithTheBeatles_thumb.jpg', b'1'),
(3, 'Beatlemania! With the Beatles', 1963, NULL, b'0'),
(4, 'Les Beatles', 1963, NULL, b'0'),
(5, 'Introducing... The Beatles', 1964, NULL, b'0'),
(6, 'Meet the Beatles!', 1964, NULL, b'0'),
(7, 'Twist and Shout', 1964, NULL, b'0'),
(8, 'The Beatles\' Second Album', 1964, NULL, b'0'),
(9, 'The Beatles\' Long Tall Sally', 1964, NULL, b'0'),
(10, 'A Hard Day\'s Night', 1964, 'Images\\albums\\HardDayUK_thumb.jpg', b'1'),
(11, 'Something New', 1964, NULL, b'0'),
(12, 'Beatles for Sale', 1964, 'Images\\albums\\BeatlesForSale_thumb.jpg', b'1'),
(13, 'Beatles\' 65', 1964, NULL, b'0'),
(14, 'Beatles VI', 1965, NULL, b'0'),
(15, 'Help!', 1965, 'Images\\albums\\Help_thumb.jpg', b'1'),
(16, 'Rubber Soul', 1965, 'Images\\albums\\RubberSoul_thumb.jpg', b'1'),
(17, 'Yesterday and Today', 1966, NULL, b'0'),
(18, 'Revolver', 1966, 'Images\\albums\\Revolver_thumb.jpg', b'1'),
(19, 'Sgt. Pepper\'s Lonely Hearts Club Band', 1967, 'Images\\albums\\SgtPepper_thumb.jpg', b'0'),
(20, 'Magical Mystery Tour', 1967, 'Images\\albums\\MagicalMysteryTour_thumb.jpg', b'0'),
(21, 'The Beatles (\"The White Album\")', 1968, 'Images\\albums\\TheBeatles_thumb.jpg', b'1'),
(22, 'Yellow Submarine', 1969, 'Images\\albums\\YellowSubmarine_thumb.jpg', b'1'),
(23, 'Abbey Road', 1969, 'Images\\albums\\AbbeyRoad_thumb.jpg', b'1'),
(24, 'Let It Be', 1970, 'Images\\albums\\LetItBe_thumb.jpg', b'1'),
(25, 'Hey Jude', 1968, NULL, b'0'),
(26, 'I Want to Hold Your Hand', 1963, NULL, b'0'),
(28, 'I Feel Fine', 1964, NULL, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `lyrics` varchar(1729) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `lyrics`) VALUES
(1, 'I Saw Her Standing There', NULL),
(2, 'Misery', NULL),
(3, 'Anna (Go to Him)', NULL),
(4, 'Chains', NULL),
(5, 'Boys', NULL),
(6, 'Ask Me Why', NULL),
(7, 'Please Please Me', NULL),
(8, 'Love Me Do', 'Love, love me do\r\n	You know I love you\r\n	I\'ll always be true\r\n	So please, love me do\r\n	Whoa, love me do\r\n	\r\n	Love, love me do\r\n	You know I love you\r\n	I\'ll always be true\r\n	So please, love me do\r\n	Whoa, love me do\r\n	\r\n	Someone to love\r\n	Somebody new\r\n	Someone to love\r\n	Someone like you\r\n	\r\n	Love, love me do\r\n	You know I love you\r\n	I\'ll always be true\r\n	So please, love me do\r\n	Whoa, love me do\r\n	\r\n	Love, love me do\r\n	You know I love you\r\n	I\'ll always be true\r\n	So please, love me do\r\n	Whoa, love me do\r\n	Yeah, love me do\r\n	Whoa, oh, love me do'),
(9, 'P.S. I Love You', NULL),
(10, 'Baby It\'s You', NULL),
(11, 'Do You Want to Know a Secret?', NULL),
(12, 'A Taste of Honey', NULL),
(13, 'There\'s a Place', NULL),
(14, 'Twist and Shout', 'Well, shake it up, baby, now (Shake it up, baby)\r\n	Twist and shout (Twist and shout)\r\n	C\'mon c\'mon, c\'mon, c\'mon, baby, now (Come on baby)\r\n	Come on and work it on out (Work it on out)\r\n\r\n	Well, work it on out, honey (Work it on out)\r\n	You know you look so good (Look so good)\r\n	You know you got me goin\', now (Got me goin\')\r\n	Just like I knew you would (Like I knew you would)\r\n\r\n	Well, shake it up, baby, now (Shake it up, baby)\r\n	Twist and shout (Twist and shout)\r\n	C\'mon, c\'mon, c\'mon, c\'mon, baby, now (Come on baby)\r\n	Come on and work it on out (Work it on out)\r\n\r\n	You know you twist your little girl (Twist, little girl)\r\n	You know you twist so fine (Twist so fine)\r\n	Come on and twist a little closer, now (Twist a little closer)\r\n	And let me know that you\'re mine (Let me know you\'re mine)\r\n\r\n	Well, shake it up, baby, now (Shake it up, baby)\r\n	Twist and shout (Twist and shout)\r\n	C\'mon, c\'mon, c\'mon, c\'mon, baby, now (Come on baby)\r\n	Come on and work it on out (Work it on out)\r\n\r\n	You know you twist your little girl (Twist, little girl)\r\n	You know you twist so fine (Twist so fine)\r\n	Come on and twist a little closer, now (Twist a little closer)\r\n	And let me know that you\'re mine (Let me know you\'re mine)\r\n\r\n	Well, shake it, shake it, shake it, baby, now (Shake it up baby)\r\n	Well, shake it, shake it, shake it, baby, now (Shake it up baby)\r\n	Well, shake it, shake it, shake it, baby, now (Shake it up baby)'),
(15, 'It Won\'t Be Long', 'It won\'t be long yeh, yeh, yeh\r\nIt won\'t be long yeh, yeh, yeh\r\nIt won\'t be long yeh, till I belong to you\r\n\r\nEvery night when everybody has fun\r\nHere am I sitting all on my own\r\n\r\nIt won\'t be long yeh, yeh, yeh\r\nIt won\'t be long yeh, yeh, yeh\r\nIt won\'t be long yeh, till I belong to you\r\n\r\nSince you left me, I\'m so alone\r\nNow you\'re coming, you\'re coming on home\r\nI\'ll be good like I know I should\r\nYou\'re coming home, you\'re coming home\r\n\r\nEvery night the tears come down from my eyes\r\nEvery day I\'ve done nothing but cry\r\n\r\nIt won\'t be long yeh, yeh, yeh\r\nIt won\'t be long yeh, yeh, yeh\r\nIt won\'t be long yeh, till I belong to you\r\n\r\nSince you left me, I\'m so alone\r\nNow you\'re coming, you\'re coming on home\r\nI\'ll be good like I know I should\r\nYou\'re coming home, you\'re coming home\r\n\r\nSo every day we\'ll be happy I know\r\nNow I know that you won\'t leave me no more\r\n\r\nIt won\'t be long yeh, yeh, yeh\r\nIt won\'t be long yeh, yeh\r\nIt won\'t be long yeh, till I belong to you, woo'),
(16, 'All I\'ve Got to Do', 'Whenever I want you around yeah\r\nAll I gotta do\r\nIs call you on the phone\r\nAnd you\'ll come running home\r\nYaeh that\'s all I gotta do\r\n\r\nAnd when I, I wanna kiss you yeah\r\nAll I gotta do\r\nIs whisper in your ear\r\nThe words you long to hear\r\nAnd I\'ll be kissing you\r\n\r\nAnd the same goes for me\r\nWhenever you want me at all\r\nI\'ll be here yes I will\r\nWhenever you call\r\nYou just gotta call on me, yeah\r\nYou just gotta call on me\r\n\r\nAnd when I, I wanna kiss you, yeah\r\nAll I got to do\r\nIs call you on the phone\r\nAnd you\'ll come running how\r\nYeah, that\'s all I gotta do\r\n\r\nAnd the same goes for me\r\nWhenever you want me at all\r\nI\'ll be here yes I will\r\nWhenever you call\r\nYou just gotta call on me, yeah\r\nYou just gotta call on me, oh\r\nYou just gotta call on me\r\nMmmmmmmmmm'),
(17, 'All My Loving', 'Close your eyes and I\'ll kiss you\r\nTomorrow I\'ll miss you\r\nRemember I\'ll always be true\r\nAnd then while I\'m away\r\nI\'ll write home every day\r\nAnd I\'ll send all my loving to you\r\n\r\nI\'ll pretend that I\'m kissing\r\nThe lips I am missing\r\nAnd hope that my dreams will come true\r\nAnd then while I\'m away\r\nI\'ll write home every day\r\nAnd I\'ll send all my loving to you\r\n\r\nAll my loving I will send to you\r\nAll my loving, darling I\'ll be true\r\n\r\nClose your eyes and I\'ll kiss you\r\nTomorrow I\'ll miss you\r\nRemember I\'ll always be true\r\nAnd then while I\'m away\r\nI\'ll write home every day\r\nAnd I\'ll send all my loving to you\r\n\r\nAll my loving I will send to you\r\nAll my loving, darling I\'ll be true\r\nAll my loving, all my loving ooh\r\nAll my loving I will send to you'),
(18, 'Don\'t Bother Me', 'Since she\'s been gone\r\nI want no one\r\nTo talk to me\r\nIt\'s not the same\r\nBut I\'m to blame\r\nIt\'s plain to see\r\n\r\nSo go away and leave me alone\r\nDon\'t bother me\r\n\r\nI can\'t believe\r\nThat she would leave\r\nMe on my own\r\nIt\'s just not right\r\nWhere every night\r\nI\'m all alone\r\n\r\nI\'ve got no time for you right now\r\nDon\'t bother me\r\n\r\nI know I\'ll never be the same\r\nIf I don\'t get her back again\r\nBecause I know she\'ll always be\r\nThe only girl for me\r\n\r\nBut till she\'s here\r\nPlease don\'t come near\r\njust stay away\r\nI\'ll let you know\r\nWhen she\'s come home\r\nUntill that the day\r\n\r\nDon\'t come around leave me alone\r\nDon\'t bother me\r\n\r\nI\'ve got no time for you right now\r\nDon\'t bother me\r\n\r\nI know I\'ll never be the same\r\nIf I don\'t get her back again\r\nBecause I know she\'ll always be\r\nThe only girl for me\r\n\r\nBut till she\'s here\r\nPlease don\'t come near\r\nJust stay away\r\nI\'ll let you know\r\nWhen she\'s come home\r\nUntill that the day\r\n\r\nDon\'t come around leave me alone\r\nDon\'t bother me\r\nDon\'t bother me\r\nDon\'t bother me'),
(19, 'Little Child', 'Little child, little child\r\nLittle child, won\'t you dance with me?\r\nI\'m so sad and lonely\r\nBaby take a chance with me\r\n\r\nLittle child, little child\r\nLittle child, won\'t you dance with me?\r\nI\'m so sad and lonely\r\nBaby take a chance with me\r\n\r\nIf you want someone\r\nTo make you feel so fine\r\nThen we\'ll have some fun\r\nWhen you\'re mine, all mine\r\nSo come, come on, come on\r\n\r\nLittle child, little child\r\nLittle child, won\'t you dance with me?\r\nI\'m so sad and lonely\r\nBaby take a chance with me\r\n\r\nWhen you\'re by my side\r\nYou\'re the only one\r\nDon\'t you run and hide\r\nJust come on, come on\r\nSo come on, come on, come on\r\n\r\nLittle child, little child\r\nLittle child, won\'t you dance with me?\r\nI\'m so sad and lonely\r\nBaby take a chance with me\r\nBaby take a chance with me\r\nBaby take a chance with me'),
(20, 'Till There Was You', 'There were bells on a hill\r\nBut I never heard them ringing\r\nNo, I never heard them at all\r\nTill there was you\r\n\r\nThere were birds in the sky\r\nBut I never saw them winging\r\nNo, I never saw them at all\r\nTill there was you\r\n\r\nThen there was music and wonderful roses\r\nThey tell me in sweet fragrant meadows\r\nOf dawn and dew\r\n\r\nThere was love all around\r\nBut I never heard it singing\r\nNo, I never heard it at all\r\nTill there was you\r\n\r\nThen there was music and wonderful roses\r\nThey tell me in sweet fragrant meadows\r\nOf dawn and dew\r\n\r\nThere was love all around\r\nBut I never heard it singing\r\nNo, I never heard it at all\r\nTill there was you\r\nTill there was you'),
(21, 'Please Mister Postman', 'Wait, oh yes wait a minute mister postman\r\nWait, wait mister postman\r\n\r\nMister postman look and see\r\nIs there a letter in your bag for me\r\nI been waiting a long long time\r\nSince I heard from that girl of mine\r\n\r\nThere must be some word today\r\nFrom my girlfriend so far away\r\nPlease Mister postman look and see\r\nIf there\'s a letter, a letter for me\r\nI been standing here waiting Mister postman\r\nSo patiently\r\nFor just a card or just a letter\r\nSaying she\'s returning home to me\r\n\r\nMister postman look and see\r\nIs there a letter in your bag for me\r\nI been waiting a long long time\r\nSince I heard from that girl of mine\r\n\r\nSo many days you passed me by\r\nSee the tear standing in my eye\r\nYou didn\'t stop to make me feel better\r\nBy leaving me a card or a letter\r\n\r\nSo Mister postman look and see\r\nIs there a letter in your bag for me\r\nI been waiting a long long time\r\nSince I heard from that girlfriend of mine\r\n\r\nYou gotta wait a minute, wait a minute\r\nYou gotta wait a minute, wait a minute\r\nYou gotta wait a minute, wait a minute\r\nYou gotta check it and see, one more time for me\r\nYou gotta wait a minute, wait a minute\r\nYou gotta wait a minute, wait a minute\r\nYou gotta wait a minute, wait a minute\r\nDeliver the letter, the sooner the better\r\nYou gotta wait a minute, wait a minute\r\nYou gotta wait a minute, wait a minute\r\nYou gotta wait a minute, wait a minute'),
(22, 'Roll Over Beethoven', 'Well gonna write a little letter\r\nGonna mail it to my local D.J.\r\nIt\'s a rocking little record\r\nI want my jockey to play\r\nRoll over Beethoven\r\nI gotta hear it again today\r\n\r\nYou know my temperature\'s rising\r\nAnd the jukebox\'s blows a fuse\r\nMy hearts beating rhythm\r\nAnd my soul keeps singing the blues\r\nRoll over Beethoven\r\nAnd tell Tchaikovsky the news\r\n\r\nI got a rocking pneumonia\r\nI need a shot of rhythm and blues\r\nI think I got it off the writer\r\nSittin\' down by the rhythm review\r\nRoll over Beethoven\r\nWe\'re rockin\' in two by two\r\n\r\nWell if you fell you like it\r\nWell get your lover and reel and rock it\r\nRoll it over and move on up\r\nJust jump around and reel and rock it\r\nRoll it over\r\nRoll over Beethoven\r\nA rocking in two by two, oh\r\n\r\nWell early in the morning\r\nI\'m a giving you the warning\r\nDon\'t you step on my blue suede showes\r\nHey little little\r\nGonna play my fiddle\r\nAin\'t got nothing to lose\r\nRoll over Beethoven\r\nAnd tell Tchaikovsky the news\r\n\r\nYou know she winks like a glow worm\r\nDance like a spinning top\r\nShe got a crazy partner\r\nOughta see them reel an rock\r\nLong as she\'s got a dime\r\nThe music will never stop\r\nRoll over Beethoven\r\nRoll over Beethoven\r\nRoll over Beethoven\r\nRoll over Beethoven\r\nRoll over Beethoven\r\nAnd dig these rhythm and blues'),
(23, 'Hold Me Tight', 'It feels so right now, hold me tight\r\nTell me I\'m the only one\r\nAnd then I might\r\nNever be the lonely one\r\nSo hold me tight, tonight, tonight,\r\nIt\'s you, you you you oooo oooo\r\n\r\nHold me tight\r\nLet me go on loving you\r\nTonight tonight\r\nMaking love to only you\r\nSo hold me tight, tonight, tonight\r\nIt\'s you, you you you oooo oooo\r\n\r\nDon\'t know what it means to hold you tight\r\nBeing here alone tonight with you\r\nIt feels so right now, feels so right now\r\n\r\nHold me tight\r\nTell me I\'m the only one\r\nAnd then I might\r\nNever be the only one\r\nSo hold me tight, tonight, tonight\r\nIt\'s you, you you you oooo oooo\r\n\r\nDon\'t know what it means to hold you tight\r\nBeing here alone tonight with you\r\nIt feels so right now, feels so right now\r\n\r\nHold me tight\r\nLet me go on loving you\r\nTonight, tonight\r\nMaking love to only you\r\nSo hold me tight, tonight, tonight\r\nIt\'s you, you you you oooo oooo\r\nYou oooo'),
(24, 'You Really Got a Hold on Me', 'I don\'t like you\r\nBut I love you\r\nSeems that I\'m always\r\nThinking of you\r\nOh, oh, oh\r\nYou treat me badly\r\nI love you madly\r\nYou\'ve really got a hold on me\r\nYou\'ve really got a hold on me, baby\r\n\r\nI don\'t want you\r\nBut I need you\r\nDon\'t want to kiss you\r\nBut I need you\r\nOh, oh, oh\r\nYou do me wrong now\r\nMy love is strong now\r\nYou\'ve really got a hold on me\r\nYou\'ve really got a hold on me, baby\r\n\r\nI love you and all I want you to do\r\nIs just hold me, hold me, hold me, hold me\r\nTied up\r\nTied up\r\n\r\nI want to leave you\r\nDon\'t want to stay here\r\nDon\'t want to spend\r\nAnother day here\r\nOh, oh, oh, I want to split now\r\nI just can quit now\r\nYou\'ve really got a hold on me\r\nYou\'ve really got a hold on me, baby\r\n\r\nI love you and all I want you to do\r\nIs just hold me, hold me, hold me, hold me\r\n\r\nYou\'ve really got a hold on me\r\nYou\'ve really got a hold on me'),
(25, 'I Wanna Be Your Man', 'I wanna be your lover baby\r\nI wanna be your man\r\nI wanna be your lover baby\r\nI wanna be your man\r\nLove you like no other baby\r\nLike no other can\r\nLove you like no other baby\r\nLike no other can\r\n\r\nI wanna be your man, I wanna be your man\r\nI wanna be your man, I wanna be your man\r\n\r\nTell me that you love me baby\r\nLet me understand\r\nTell me that you love me baby\r\nI wanna be your man\r\nI wanna be your lover baby\r\nI wanna be your man\r\nI wanna be your lover baby\r\nI wanna be your man\r\n\r\nI wanna be your man, I wanna be your man\r\nI wanna be your man, I wanna be your man\r\n\r\nI wanna be your lover baby\r\nI wanna be your man\r\nI wanna be your lover baby\r\nI wanna be your man\r\nLove you like no other baby\r\nLike no other can\r\nLove you like no other baby\r\nLike no other can\r\n\r\nI wanna be your man, I wanna be your man\r\nI wanna be your man, I wanna be your man\r\nI wanna be your man, I wanna be your man'),
(26, 'Devil in Her Heart', 'She\'s got the devil in her heart\r\nBut her eyes they tantalize\r\nShe\'s gonna tear your heart apart\r\nOh her lips they really thrill me\r\n\r\nI\'ll take my chances\r\nFor romance is\r\nSo important to me\r\nShe\'ll never hurt me\r\nShe won\'t desert me\r\nShe\'s an angel sent to me\r\n\r\nShe\'s got the devil in her heart\r\nNo, no, this I can\'t believe\r\nShe\'s gonna tear your heart apart\r\nNo, no nay will she deceive\r\n\r\nI can\'t believe that she\'ll ever ever go\r\nNot when she hugs and says she loves me so\r\nShe\'ll never hurt me\r\nShe won\'t desert me\r\nListen can\'t you see\r\n\r\nShe\'s got the devil in her heart\r\nOh, no, no, no, this I can\'t believe\r\nShe\'s gonna tear your heart apart\r\nNo no nay will she deceive\r\n\r\nDon\'t take chances if your romance is\r\nSo important to you\r\nShe\'ll never hurt me\r\nShe won\'t desert me\r\nShe\'s an angel sent to me\r\n\r\nShe\'s got the devil in her heart\r\nOh, no, no, no, no this I can\'t believe\r\nShe\'s gonna tear your heart apart\r\nNo, no nay will she deceive\r\n\r\nShe\'s got the devil in her heart\r\nNo she\'s an angel sent to me\r\nShe\'s got the devil in her heart\r\nNo she\'s an angel sent to me'),
(27, 'Not a Second Time', 'You know you made me cry\r\nI see no use in wondering why\r\nI cry for you\r\n\r\nAnd now you\'ve changed your mind\r\nI see no reason to change mine\r\nI cry it\'s through, oh\r\n\r\nYou\'re giving me the same old line\r\nI\'m wondering why\r\nYou hurt me then\r\nYou\'re back again\r\nNo, no, no, not a second time\r\n\r\nYou know you made me cry\r\nI see no use in wondering why\r\nI cry for you, yea\r\n\r\nAnd now you\'ve changed your mind\r\nI see no reason to change mine\r\nI cry it\'s through, oh\r\n\r\nYou\'re giving me the same old line\r\nI\'m wondering why\r\nYou hurt me then\r\nYou\'re back again\r\nNo, no, no, not a second time\r\nNot a second time\r\nNot the second time\r\nNo, no, no, no, no\r\nNo, no no'),
(28, 'Money (That\'s What I Want)', 'The best things in life are free\r\nBut you can keep \'em for the birds and bees\r\n\r\nNow give me money (that\'s what I want)\r\nThat\'s what I want (that\'s what I want)\r\nThat\'s what I want (that\'s what I want) yeah\r\nThat\'s what I want\r\n\r\nYour loving give me a thrill,\r\nBut your loving don\'t pay my bills\r\n\r\nNow give me money (that\'s what I want)\r\nThat\'s what I want (that\'s what I want)\r\nThat\'s what I want (that\'s what I want) yeah\r\nThat\'s what I want\r\n\r\nMoney don\'t get everything it\'s true\r\nWhat it don\'t get I can\'t use\r\n\r\nNow give me money (that\'s what I want)\r\nThat\'s what I want (that\'s what I want)\r\nThat\'s what I want (that\'s what I want) yeah\r\nThat\'s what I want\r\n\r\nWell, now give me money (that\'s what I want)\r\nWhole lot of money (that\'s what I want)\r\nWhoah yeah, I wanna be free (that\'s what I want)\r\nOh, money (that\'s what I want)\r\nThat\'s what I want, yeah (that\'s what I want)\r\nThat\'s what I want\r\n\r\nWell, now give me money (that\'s what I want)\r\nWhole lot of money (that\'s what I want, whoo)\r\nWhoah, yeah, you know I need money (that\'s what I want)\r\nNow give me money (that\'s what I want, whoo)\r\nThat\'s what I want, yeah (that\'s what I want)\r\nThat\'s what I want'),
(29, 'A Hard Day\'s Night', 'It\'s been a hard day\'s night, and I\'d been working like a dog\r\nIt\'s been a hard day\'s night, I should be sleeping like a log\r\nBut when I get home to you I find the things that you do\r\nWill make me feel alright\r\n\r\nYou know I work all day to get you money to buy you things\r\nAnd it\'s worth it just to hear you say you\'re going to give me everything\r\nSo why on earth should I moan, cos when I get you alone\r\nYou know I feel OK\r\n\r\nWhen I\'m home everything seems to be right\r\nWhen I\'m home feeling you holding me tight, tight, yeah\r\n\r\nIt\'s been a hard day\'s night, and I\'d been working like a dog\r\nIt\'s been a hard day\'s night, I should be sleeping like a log\r\nBut when I get home to you I find the things that you do\r\nWill make me feel alright owww\r\n\r\nSo why on earth should I moan, cos when I get you alone\r\nYou know I feel OK\r\n\r\nWhen I\'m home everything seems to be right\r\nWhen I\'m home feeling you holding me tight, tight, yeah\r\n\r\nIt\'s been a hard day\'s night, and I\'d been working like a dog\r\nIt\'s been a hard day\'s night, I should be sleeping like a log\r\nBut when I get home to you I find the things that you do\r\nWill make me feel alright\r\nYou know I feel alright\r\nYou know I feel alright'),
(30, 'I Should Have Known Better', 'I should have known better with a girl like you\r\nThat I would love everything that you do\r\nAnd I do, hey, hey, hey, and I do\r\n\r\nWhoa, oh, I never realized what a kiss could be\r\nThis could only happen to me\r\nCan\'t you see, can\'t you see\r\n\r\nThat when I tell you that I love you, oh\r\nYou\'re gonna say you love me too, oh\r\nAnd when I ask you to be mine\r\nYou\'re gonna say you love me too\r\n\r\nSo I should have realized a lot of things before\r\nIf this is love you\'ve got to give me more\r\nGive me more, hey hey hey, give me more\r\n\r\nWhoa, oh, I never realized what a kiss could be\r\nThis could only happen to me\r\nCan\'t you see, can\'t you see\r\n\r\nThat when I tell you that I love you, oh\r\nYou\'re gonna say you love me too, oh\r\nAnd when I ask you to be mine\r\nYou\'re gonna say you love me too\r\nYou love me too, you love me too\r\nYou love me too'),
(31, 'If I Fell', 'If I fell in love with you\r\n	Would you promise to be true\r\n	And help me understand\r\n	Cos I\'ve been in love before\r\n	And I found that love was more\r\n	Than just holding hands\r\n\r\n	If I give my heart to you\r\n	I must be sure\r\n	From the very start\r\n	That you would love me more than her\r\n\r\n	If I trust in you oh please\r\n	Don\'t run and hide\r\n	If I love you too oh please\r\n	Don\'t hurt my pride like her\r\n	Cos I couldn\'t stand the pain\r\n	And I would be sad if our new love was in vain\r\n\r\n	So I hope you see that I\r\n	Would love to love you\r\n	And that she will cry\r\n	When she learns we are two\r\n	Cos I couldn\'t stand the pain\r\n	And I would be sad if our new love was in vain\r\n\r\n	So I hope you see that I\r\n	Would love to love you\r\n	And that she will cry\r\n	When she learns we are two\r\n	If I fell in love with you'),
(32, 'I\'m Happy Just to Dance with You', 'Before this dance is through\r\n	I think I\'ll love you too\r\n	I\'m so happy when you dance with me\r\n\r\n	I don\'t want to kiss or hold your hand\r\n	If it\'s funny try and understand\r\n	There is really nothing else I\'d rather do\r\n	Cos I\'m happy just to dance with you\r\n\r\n	I don\'t need to hug or hold you tight\r\n	I just want to dance with you all night\r\n	In this world there\'s nothing I would rather do\r\n	Cos I\'m happy just to dance with you\r\n\r\n	Just to dance with you\r\n	It\'s everything I need\r\n	Before this dance is through\r\n	I think I\'ll love you too\r\n	I\'m so happy when you dance with me\r\n\r\n	If somebody tries to take my place\r\n	Let\'s pretend we just can\'t see his face\r\n	In this world there\'s nothing I would rather do\r\n	Cos I\'m happy just to dance with you\r\n\r\n	Just to dance with you\r\n	It\'s everything I need\r\n	Before this dance is through\r\n	I think I\'ll love you too\r\n	I\'m so happy when you dance with me\r\n\r\n	If somebody tries to take my place\r\n	Let\'s pretend we just can\'t see his face\r\n	In this world there\'s nothing I would rather do\r\n	I\'ve discovered I\'m in love with you\r\n	Cos I\'m happy just to dance with you'),
(33, 'And I Love Her', 'I give her all my love\r\n	That\'s all I do\r\n	And if you saw my love\r\n	You\'d love her too\r\n	I love her\r\n\r\n	She gives me everything\r\n	And tenderly\r\n	The kiss my lover brings\r\n	She brings to me\r\n	And I love her\r\n\r\n	A love like ours\r\n	Could never die\r\n	As long as I\r\n	Have you near me\r\n\r\n	Bright are the stars that shine\r\n	Dark is the sky\r\n	I know this love of mine\r\n	Will never die\r\n	And I love her\r\n\r\n	Bright are the stars that shine\r\n	Dark is the sky\r\n	I know this love of mine\r\n	Will never die\r\n	And I love her'),
(34, 'Tell Me Why', 'Tell me why you cried, and why you lied to me\r\n	Tell me why you cried, and why you lied to me\r\n\r\n	Well I gave you everything I had\r\n	But you left me sitting on my own\r\n	Did you have to treat me oh so bad\r\n	All I do is hang my head and moan\r\n\r\n	Tell me why you cried, and why you lied to me\r\n	Tell me why you cried, and why you lied to me\r\n\r\n	If there\'s something I have said or done\r\n	Tell me what and I\'ll apologise\r\n	If you don\'t really can\'t go on\r\n	Holding back these tears in my eyes\r\n\r\n	Tell me why you cried, and why you lied to me\r\n	Tell me why you cried, and why you lied to me\r\n\r\n	Well I beg you on my bended knees\r\n	If you\'ll only listen to my pleas\r\n	Is there anything I can do\r\n	Cos I really can\'t stand it, I\'m so in love with you\r\n\r\n	Tell me why you cried, and why you lied to me\r\n	Tell me why you cried, and why you lied to me'),
(35, 'Can\'t Buy Me Love', 'Can\'t buy me love, love\r\n	Can\'t buy me love\r\n\r\n	I\'ll buy you a diamond ring my friend if it makes you feel alright\r\n	I\'ll get you anything my friend if it makes you feel alright\r\n	Cos I don\'t care too much for money, and money can\'t buy me love\r\n\r\n	I\'ll give you all I got to give if you say you\'ll love me too\r\n	I may not have a lot to give but what I got I\'ll give to you\r\n	I don\'t care too much for money, money can\'t buy me love\r\n\r\n	Can\'t buy me love, everybody tells me so\r\n	Can\'t buy me love, no no no, no\r\n\r\n	Say you don\'t need no diamond ring and I\'ll be satisfied\r\n	Tell me that you want the kind of thing that money just can\'t buy\r\n	I don\'t care too much for money, money can\'t buy me love\r\n	Owww\r\n\r\n	Can\'t buy me love, everybody tells me so\r\n	Can\'t buy me love, no no no, no\r\n\r\n	Say you don\'t need no diamond ring and I\'ll be satisfied\r\n	Tell me that you want the kind of thing that money just can\'t buy\r\n	I don\'t care too much for money, money can\'t buy me love\r\n\r\n	Can\'t buy me love, love\r\n	Can\'t buy me love'),
(36, 'Any Time at All', 'Any time at all, any time at all\r\n	Any time at all, all you\'ve gotta do is call and I\'ll be there\r\n\r\n	If you need somebody to love\r\n	Just look into my eyes\r\n	I\'ll be there to make you feel right\r\n\r\n	If you\'re feeling sorry and sad\r\n	I\'d really sympathize\r\n	Don\'t you be sad, just call me tonight\r\n\r\n	Any time at all, any time at all\r\n	Any time at all, all you\'ve gotta do is call and I\'ll be there\r\n\r\n	If the sun has faded away\r\n	I\'ll try to make it shine\r\n	There\'s nothing I won\'t do\r\n	When you need a shoulder to cry on\r\n	I hope it will be mine\r\n	Call me tonight, and I\'ll come to you\r\n\r\n	Any time at all, any time at all\r\n	Any time at all, all you\'ve gotta do is call and I\'ll be there\r\n\r\n	Any time at all, any time at all\r\n	Any time at all, all you\'ve gotta do is call and I\'ll be there\r\n	Any time at all, all you\'ve gotta do is call and I\'ll be there'),
(37, 'I\'ll Cry Instead', 'I\'ve got every reason on earth to be mad\r\n	Cos I\'ve just lost the only girl I had\r\n	And if I could get my way\r\n	I\'d get myself locked up today\r\n	But I can\'t so I cry instead\r\n\r\n	I\'ve got a chip on my shoulder that\'s bigger than my feet\r\n	I can\'t talk to people that I meet\r\n	And if I could see you now\r\n	I\'d try to make you sad somehow\r\n	But I can\'t so I cry instead\r\n\r\n	Don\'t want to cry when there\'s people there\r\n	I get shy when they start to stare\r\n	I\'m gonna hide myself away, ay hay\r\n	But I\'ll come back again someday\r\n\r\n	And when I do you\'d better hide all the girls\r\n	I\'m gonna break their hearts all \'round the world\r\n	Yes, I\'m gonna break them in two\r\n	And show you what your loving man can do\r\n	Until then I\'ll cry instead\r\n\r\n	Don\'t want to cry when there\'s people there\r\n	I get shy when they start to stare\r\n	I\'m gonna hide myself away, ay hay\r\n	But I\'ll come back again someday\r\n\r\n	And when I do you\'d better hide all the girls\r\n	Cos I\'m gonna break their hearts all \'round the world\r\n	Yes, I\'m gonna break them in two\r\n	And show you what your loving man can do\r\n	Until then I\'ll cry instead'),
(38, 'Things We Said Today', 'You say you will love me\r\n	If I have to go\r\n	You\'ll be thinking of me\r\n	Somehow I will know\r\n	Someday when I\'m lonely\r\n	Wishing you weren\'t so far away\r\n	Then I will remember\r\n	Things we said today\r\n\r\n	You say you\'ll be mine, girl\r\n	Till the end of time\r\n	These days such a kind girl\r\n	Seems so hard to find\r\n	Someday when we\'re dreaming\r\n	Deep in love, not a lot to say\r\n	Then we will remember\r\n	Things we said today\r\n\r\n	Me, I\'m just the lucky kind\r\n	Love to hear you say that love is luck\r\n	And though we may be blind\r\n	Love is here to stay and that\'s enough\r\n\r\n	To make you mine, girl\r\n	Be the only one\r\n	Love me all the time, girl\r\n	We\'ll go on and on\r\n	Someday when we\'re dreaming\r\n	Deep in love, not a lot to say\r\n	Then we will remember\r\n	Things we said today\r\n\r\n	Me, I\'m just the lucky kind\r\n	Love to hear you say that love is luck\r\n	Though we may be blind\r\n	Love is here to stay and that\'s enough\r\n\r\n	To make you mine, girl\r\n	Be the only one\r\n	Love me all the time, girl\r\n	We\'ll go on and on\r\n	Someday when we\'re dreaming\r\n	Deep in love, not a lot to say\r\n	Then we will remember\r\n	Things we said today'),
(39, 'When I Get Home', 'Whoa-I, whoa-I\r\n	I got a whole lot of things to tell her\r\n	When I get home\r\n	Come on, out of my way\r\n	Cos I\'m gonna see my baby today\r\n	I\'ve got a whole lot of things I\'ve gotta say\r\n	To her\r\n\r\n	Whoa-I, whoa-I\r\n	I got a whole lot of things to tell her\r\n	When I get home\r\n	Come on if you please\r\n	I\'ve got no time for trivialities\r\n	I\'ve got a girl who\'s waiting home for me tonight\r\n\r\n	Whoa-I, whoa-I\r\n	I got a whole lot of things to tell her\r\n	When I get home\r\n	When I\'m getting home tonight\r\n	I\'m gonna hold her tight\r\n	I\'m gonna love her till the cows come home\r\n	I bet I\'ll love her more\r\n	Till I walk out that door\r\n	Again\r\n\r\n	Come on, let me through\r\n	I\'ve got so many things I\'ve got to do\r\n	I\'ve got no business being here with you\r\n	This way\r\n\r\n	Whoa-I, whoa-I\r\n	I\'ve got a whole lot of things to tell her\r\n	When I get home, yeah\r\n	I\'ve got a whole lot of things to tell her\r\n	When I get home'),
(40, 'You Can\'t Do That', 'I got something to say that might cause you pain\r\n	If I catch you talking to that boy again\r\n	I\'m gonna let you down\r\n	And leave you flat\r\n	Because I told you before, oh\r\n	You can\'t do that\r\n\r\n	Well, it\'s the second time I\'ve caught you talking to him\r\n	Do I have to tell you one more time, I think it\'s a sin\r\n	I think I\'ll let you down (Let you down)\r\n	Leave you flat (Gonna let you down and leave you flat)\r\n	Because I\'ve told you before, oh\r\n	You can\'t do that\r\n\r\n	Everybody\'s green\r\n	Cos I\'m the one who won your love\r\n	But if they\'d seen\r\n	You\'re talking that way they\'d laugh in my face\r\n\r\n	So please listen to me, if you wanna stay mine\r\n	I can\'t help my feelings, I\'ll go out of my mind\r\n	I\'m gonna let you down (Let you down)\r\n	And leave you flat (Gonna let you down and leave you flat)\r\n	Because I\'ve told you before, oh\r\n	You can\'t do that, oh\r\n\r\n	(You can\'t do that\r\n	You can\'t do that\r\n	You can\'t do that\r\n	You can\'t do that\r\n	You can\'t do that)\r\n\r\n	Everybody\'s green\r\n	Cos I\'m the one who won your love\r\n	But if they\'d seen\r\n	You\'re talking that way they\'d laugh in my face\r\n\r\n	So please listen to me, if you wanna stay mine\r\n	I can\'t help my feelings, I\'ll go out of my mind\r\n	I\'m gonna let you down (Let you down)\r\n	And leave you flat (Gonna let you down and leave you flat)\r\n	Because I\'ve told you before, oh\r\n	You can\'t do that'),
(41, 'I\'ll Be Back', 'You know if you break my heart I\'ll go\r\n	But I\'ll be back again\r\n	Cos I told you once before goodbye\r\n	But I came back again\r\n\r\n	I love you so\r\n	I\'m the one who wants you\r\n	Yes, I\'m the one\r\n	Who wants you, oh ho, oh ho, oh\r\n\r\n	You could find better things to do\r\n	Than to break my heart again\r\n	This time I will try to show that I\'m\r\n	Not trying to pretend\r\n\r\n	I thought that you would realize\r\n	That if I ran away from you\r\n	That you would want me too\r\n	But I got a big surprise\r\n	Oh ho, oh ho, oh\r\n\r\n	You could find better things to do\r\n	Than to break my heart again\r\n	This time I will try to show that I\'m\r\n	Not trying to pretend\r\n\r\n	I wanna go but I hate to leave you,\r\n	You know I hate to leave you , oh ho, oh ho, oh\r\n	You, if you break my heart I\'ll go\r\n	But I\'ll be back again'),
(42, 'No Reply', 'This happened once before\r\n	When I came to your door\r\n	No reply\r\n	They said it wasn\'t you\r\n	But I saw you peep through your window\r\n\r\n	I saw the lie, I saw the lie\r\n	I know that you saw me\r\n	As I looked up to see your face\r\n\r\n	I tried to telephone\r\n	They said you were not home\r\n	That\'s a lie\r\n	\'Cause I know where you\'ve been\r\n	I saw you walk in your door\r\n\r\n	I nearly died, I nearly died\r\n	Cause\' you walked hand in hand\r\n	With another man in my place\r\n\r\n	If I were I\'d realise that I\r\n	Love you more than any other guy\r\n	And I\'ll forgive the lies that I\r\n	Heard before when you gave me no reply\r\n\r\n	I\'ve tried to telephone\r\n	They said you were not home\r\n	That\'s a lie\r\n	\'Cause I know where you\'ve been\r\n	I saw you walk in your door\r\n\r\n	I nearly died, I nearly died\r\n	\'Cause you walked hand in hand\r\n	With another man in my place\r\n\r\n	No reply, no reply'),
(43, 'I\'m a Loser', 'I\'m a loser\r\n	I\'m a loser\r\n	And I\'m not what I appear to be\r\n\r\n	Of all the love I have won or have lost\r\n	There is one love I should never have crossed\r\n	She was a girl in a million, my friend\r\n	I should have known she would win in the end\r\n\r\n	I\'m a loser\r\n	And I lost someone who\'s near to me\r\n	I\'m a loser\r\n	And I\'m not what I appear to be\r\n\r\n	Although I laugh and I act like a clown\r\n	Beneath this mask I am wearing a frown\r\n	My tears are falling like rain from the sky\r\n	Is it for her or myself that I cry\r\n\r\n	I\'m a loser\r\n	And I lost someone who\'s near to me\r\n	I\'m a loser\r\n	And I\'m not what I appear to be\r\n\r\n	What have I done to deserve such a fate\r\n	I realize I have left it too late\r\n	And so it\'s true, pride comes before a fall\r\n	I\'m telling you so that you won\'t lose all\r\n\r\n	I\'m a loser\r\n	And I lost someone who\'s near to me\r\n	I\'m a loser\r\n	And I\'m not what I appear to be'),
(44, 'Baby\'s in Black', 'Oh dear, what can I do?\r\n	Baby\'s in black and I\'m feeling blue\r\n	Tell me, oh what can I do?\r\n\r\n	She thinks of him and so she dresses in black\r\n	And though he\'ll never come back, she\'s dressed in black\r\n	Oh dear, what can I do?\r\n	Baby\'s in black and I\'m feeling blue\r\n	Tell me, oh what can I do?\r\n\r\n	I think of her, but she thinks only of him\r\n	And though it\'s only a whim, she thinks of him\r\n	Oh how long will it take\r\n	Till she sees the mistake she has made?\r\n	Dear what can I do?\r\n	Baby\'s in black and I\'m feeling blue\r\n	Tell me, oh what can I do?\r\n\r\n	Oh how long it will take\r\n	Till she sees the mistake she has made?\r\n	Dear what can I do?\r\n	Baby\'s in black and I\'m feeling blue\r\n	Tell me, oh what can I do?\r\n\r\n	She thinks of him and so she dresses in black\r\n	And though he\'ll never come back, she\'s dressed in black\r\n	Oh dear, what can I do?\r\n	Baby\'s in black and I\'m feeling blue\r\n	Tell me, oh what can I do?'),
(45, 'Rock and Roll Music', 'Just let me hear some of that rock and roll music\r\n	Any old way you choose it\r\n	It\'s got a back beat, you can\'t lose it\r\n	Any old time you use it\r\n	It\'s gotta be rock and roll music\r\n	If you wanna dance with me\r\n	If you wanna dance with me\r\n\r\n	I\'ve got no kick against modern jazz\r\n	Unless they try to play it too darn fast\r\n	And lose the beauty of the melody\r\n	Until they sound just like a symphony\r\n\r\n	That\'s why I go for that that rock and roll music\r\n	Any old way you choose it\r\n	It\'s got a back beat, you can\'t lose it\r\n	Any old time you use it\r\n	It\'s gotta be rock and roll music\r\n	If you wanna dance with me\r\n	If you wanna dance with me\r\n\r\n	I took my loved one over across the tracks\r\n	So she can hear my man awail a sax\r\n	I must admit they have a rocking band\r\n	Man, they were blowing like a hurricane\r\n\r\n	That\'s why I go for that that rock and roll music\r\n	Any old way you choose it\r\n	It\'s got a back beat, you can\'t lose it\r\n	Any old time you use it\r\n	It\'s gotta be rock and roll music\r\n	If you wanna dance with me\r\n	If you wanna dance with me\r\n\r\n	Way down South they had a jubilee\r\n	The jokey folks they had a jamboree\r\n	They\'re drinking home brew from a water cup\r\n	The folks dancing there are all shook up\r\n\r\n	And started playing that that rock and roll music\r\n	Any old time you use it\r\n	It\'s got a back beat, you can\'t lose it\r\n	Any old time you use it\r\n	It\'s gotta be rock and roll music\r\n	If you wanna dance with me\r\n	If you wanna dance with me\r\n\r\n	Don\'t care to hear them play a tango\r\n	And In The Mood they take a mambo\r\n	It\'s way to early for a congo\r\n	So keep a rocking that piano\r\n\r\n	That\'s why I go for that that rock and roll music\r\n	Any old time you use it\r\n	It\'s got a back beat, you can\'t lose it\r\n	Any '),
(46, 'I\'ll Follow the Sun', 'One day you\'ll look to see I\'ve gone\r\n	For tomorrow may rain, so I\'ll follow the sun\r\n	Some day you\'ll know I was the one\r\n	But tomorrow may rain, so I\'ll follow the sun\r\n\r\n	And now the time has come\r\n	And so my love I must go\r\n	And though I lose a friend\r\n	In the end you will know, oooh\r\n\r\n	One day you\'ll find that I have gone\r\n	But tomorrow may rain, so I\'ll follow the sun\r\n\r\n	Yea, tomorrow may rain, so I\'ll follow the sun\r\n	And now the time has come\r\n	And so my love I must go\r\n	And though I lose a friend\r\n	In the end you\'ll know, oooh\r\n\r\n	One day you\'ll find that I have gone\r\n	But tomorrow may rain, so I\'ll follow the sun'),
(47, 'Mr. Moonlight', 'Mr. Moonlight\r\n	You came to me one summer night\r\n	And from your beam you made my dream\r\n	And from the world you sent my girl\r\n	And from above you sent us love\r\n	And now she is mine\r\n	I think you\'re fine\r\n	Cos we love you, Mr. Moonlight\r\n\r\n	Mr. Moonlight, come again please\r\n	Here I am on my knees\r\n	Begging if you please\r\n	And the night you don\'t come my way\r\n	I\'ll pray and pray more each day\r\n	Cos we love you, Mr. Moonlight\r\n\r\n	And the night you don\'t come my way\r\n	Oh, I\'ll pray and pray more each day\r\n	Cos we love you, Mr. Moonlight\r\n	Mr. Moonlight\r\n\r\n	Mr. Moonlight, come again please\r\n	Here I am on my knees\r\n	Begging if you please\r\n	And the night you don\'t come my way\r\n	I\'ll pray and pray more each day\r\n	Cos we love you, Mr. Moonlight\r\n	Mr. Moonlight\r\n	Mr. Moonlight\r\n	Mr. Moonlight'),
(48, 'Kansas City/Hey, Hey, Hey, Hey', 'Ah, Kansas City\r\n	Gonna get my baby back home\r\n	Yeah, yeah\r\n	I\'m gonna Kansas city\r\n	Gonna get my baby back home\r\n	Yeah, yeah\r\n	Well, it\'s a long, long, time\r\n	Since my baby\'s been gone\r\n\r\n	Ah, Kansas City\r\n	Gonna to get my baby on time\r\n	Yeah, yeah\r\n	I\'m gonna Kansas City\r\n	Gonna get my baby on time\r\n	Yeah, yeah\r\n	It\'s just a one, two, three, four\r\n	Five, six, seven, eight, nine, wah\r\n\r\n	Hey, hey, hey, hey\r\n	Hey, baby, woo no clown\r\n	I say you\'re no clown\r\n	Now, now, now, now\r\n	Tell me baby\r\n	What\'s been wrong with you\r\n\r\n	Hey, hey, hey, hey\r\n	Hey, now baby, woo no clown\r\n	I say you\'re no clown\r\n	Now, now, now, now\r\n	Tell me baby\r\n	What\'s been wrong with you\r\n\r\n	Well, I\'ll say bye\r\n	Bye, bye, baby bye, bye\r\n	Oh, so long\r\n	Bye, bye, baby I\'m gone\r\n	Yeah, I said\r\n	Bye, bye, baby, bye, bye\r\n	Bye, bye, bye, bye\r\n\r\n	Well, I\'ll say bye\r\n	Bye, bye, baby bye, bye'),
(49, 'Eight Days a Week', 'Ooh I need your love babe\r\n	Guess you know it\'s true\r\n	Hope you need my love babe\r\n	Just like I need you\r\n	Hold me, love me, hold me, love me\r\n	Ain\'t got nothing but love babe\r\n	Eight days a week\r\n\r\n	Love you every day girl\r\n	Always on my mind\r\n	One thing I can say girl\r\n	Love you all the time\r\n	Hold me, love me, hold me, love me\r\n	Ain\'t got nothing but love babe\r\n	Eight days a week\r\n\r\n	Eight days a week\r\n	I love you\r\n	Eight days a week\r\n	Is not enough to show I care\r\n\r\n	Ooh I need your love babe\r\n	Guess you know it\'s true\r\n	Hope you need my love babe\r\n	Just like I need you\r\n	Hold me, love me, hold me, love me\r\n	Ain\'t got nothing but love babe\r\n	Eight days a week\r\n\r\n	Eight days a week\r\n	I love you\r\n	Eight days a week\r\n	Is not enough to show I care\r\n\r\n	Love you every day girl\r\n	Always on my mind\r\n	One thing I can say girl\r\n	Love you all the time\r\n	Hold me, love me, hold me, love me\r\n	Ain\'t got nothing but love babe\r\n	Eight days a week\r\n	Eight days a week\r\n	Eight days a week'),
(50, 'Words of Love', 'Hold me close and tell me how you feel\r\n	Tell me love is real\r\n	Words of love you whisper soft and true\r\n	Darling I love you\r\n\r\n	Let me hear you say the words I long to hear\r\n	Darling when you\'re near\r\n	Words of love you whisper soft and true\r\n	Darling I love you'),
(51, 'Honey Don\'t', 'Well how come you say you will when you won\'t\r\n	Say you do, baby, when you don\'t?\r\n	Let me know honey how you feel\r\n	Tell the truth now, is love real?\r\n	But ah ah well honey don\'t, well honey don\'t\r\n	Honey don\'t, honey don\'t, honey don\'t\r\n	I say you will when you won\'t, ah ah, honey, don\'t\r\n\r\n	Well I love you, baby, and you ought to know\r\n	I like the way you wear your clothes\r\n	Everything about you is so doggone sweet\r\n	You got that sand all over your feet\r\n	But ah ah well honey don\'t, honey don\'t\r\n	Honey don\'t, honey don\'t, honey don\'t\r\n	I say you will when you won\'t, ah ah, honey, don\'t\r\n\r\n	[Ah, rock on George, one time for me.\r\n\r\n	I feel fine.\r\n	I said.]\r\n\r\n	Well sometimes I love you on a Saturday night\r\n	Sunday morning you don\'t look right\r\n	You\'ve been out painting the town\r\n	Ah ah baby, been stepping around\r\n	But ah ah well honey don\'t, I said honey don\'t\r\n	Honey don\'t, honey don\'t, honey don\'t\r\n	I say you will when you won\'t, ah ah, honey, don\'t\r\n\r\n	[Ah, rock on George, for Ringo one time.]\r\n	Well honey don\'t, well honey don\'t\r\n	I say you will when you won\'t, ah ah, honey, don\'t'),
(52, 'Every Little Thing', 'When I\'m walking beside her\r\n	People tell me I\'m lucky\r\n	Yes, I know I\'m a lucky guy\r\n	I remember the first time\r\n	I was lonely without her\r\n	Can\'t stop thinking about her now\r\n\r\n	Every little thing she does\r\n	She does for me, yeah\r\n	And you know the things she does\r\n	She does for me, oooh\r\n\r\n	When I\'m with her I\'m happy\r\n	Just to know that she loves me\r\n	Yes, I know that she loves me now\r\n	There is one thing I\'m sure of\r\n	I will love her forever\r\n	For I know love will never die\r\n\r\n	Every little thing she does\r\n	She does for me, yeah\r\n	And you know the things she does\r\n	She does for me, oooh\r\n\r\n	Every little thing she does\r\n	She does for me, yeah\r\n	And you know the things she does\r\n	She does for me, oooh\r\n	Every little thing\r\n	Every little thing'),
(53, 'I Don\'t Want to Spoil the Party', 'I don\'t want to spoil the party so I\'ll go\r\n	I would hate my disappointment to show\r\n	There\'s nothing for me here so I will disappear\r\n	If she turns up while I\'m gone please let me know\r\n\r\n	I\'ve had a drink or two and I don\'t care\r\n	There\'s no fun in what I do if she\'s not there\r\n	I wonder what went wrong I\'ve waited far too long\r\n	I think I\'ll take a walk and look for her\r\n\r\n	Though tonight she\'s made me sad\r\n	I still love her\r\n	If I find her I\'ll be glad\r\n	I still love her\r\n\r\n	I don\'t want to spoil the party so I\'ll go\r\n	I would hate my disappointment to show\r\n	There\'s nothing for me here so I will disappear\r\n	If she turns up while I\'m gone please let me know\r\n\r\n	Though tonight she\'s made me sad\r\n	I still love her\r\n	If I find her I\'ll be glad\r\n	I still love her\r\n\r\n	Though I\'ve had a drink or two and I don\'t care\r\n	There\'s no fun in what I do if she\'s not there\r\n	I wonder what went wrong I\'ve waited far too long\r\n	I think I\'ll take a walk and look for her'),
(54, 'What You\'re Doing', 'Look what you\'re doing, I\'m feeling blue and lonely\r\n	Would it be too much to ask you\r\n	What you\'re doing to me?\r\n\r\n	You got me running and there\'s no fun in it\r\n	Why should it be so much to ask of you\r\n	What you\'re doing to me?\r\n\r\n	I\'ve been waiting here for you\r\n	Wond\'ring what you\'re gonna do\r\n	Should you need a love that\'s true\r\n	It\'s me\r\n\r\n	Please stop your lying, you\'ve got me crying, girl\r\n	Why should it be so much to ask of you\r\n	What you\'re doing to me?\r\n\r\n	I\'ve been waiting here for you\r\n	Wond\'ring what you\'re gonna do\r\n	Should you need a love that\'s true\r\n	It\'s me\r\n\r\n	Please stop your lying, you\'ve got me crying, girl\r\n	Why should it be so much to ask of you\r\n	What you\'re doing to me?\r\n	What you\'re doing to me?\r\n	What you\'re doing to me?'),
(55, 'Everybody\'s Trying to Be My Baby', 'Well they took some honey from a tree\r\n	Dressed it up and they called it me\r\n\r\n	Everybody\'s trying to be my baby\r\n	Everybody\'s trying to be my baby\r\n	Everybody\'s trying to be my baby, now\r\n\r\n	Well half past nine, half past four\r\n	Fifty women knocking on my door\r\n\r\n	Everybody\'s trying to be my baby\r\n	Everybody\'s trying to be my baby\r\n	Everybody\'s trying to be my baby, now\r\n\r\n	Went out last night, I didn\'t stay late\r\n	\'Fore I got home I had nineteen dates\r\n\r\n	Everybody\'s trying to be my baby\r\n	Everybody\'s trying to be my baby\r\n	Everybody\'s trying to be my baby, now\r\n\r\n	Went out last night, I didn\'t stay late\r\n	\'Fore I got home I had nineteen dates\r\n\r\n	Everybody\'s trying to be my baby\r\n	Everybody\'s trying to be my baby\r\n	Everybody\'s trying to be my baby, now\r\n\r\n	Well they took some honey from a tree\r\n	Dressed it up and they called it me\r\n\r\n	Everybody\'s trying to be my baby\r\n	Everybody\'s trying to be my baby\r\n	Everybody\'s trying to be my baby, now'),
(56, 'Help!', 'Help! I need somebody\r\n	Help! Not just anybody\r\n	Help! You know I need someone\r\n	Help!\r\n	\r\n	(When) When I was younger (When I was young) so much younger than today\r\n	(I never need) I never needed anybody\'s help in any way\r\n	(Now) But now these days are gone (These days are gone) and I\'m not so self assured\r\n	(And now I find) Now I find I\'ve changed my mind, I\'ve opened up the doors\r\n	\r\n	Help me if you can, I\'m feeling down\r\n	And I do appreciate you being \'round\r\n	Help me get my feet back on the ground\r\n	Won\'t you please, please help me?\r\n	\r\n	(Now) And now my life has changed (My life has changed) in oh so many ways\r\n	(My independence) My independence seems to vanish in the haze\r\n	(But) But ev\'ry now (Every now and then) and then I feel so insecure\r\n	(I know that I) I know that I just need you like I\'ve never done before\r\n	\r\n	Help me if you can, I\'m feeling down\r\n	And I do appreciate you being \'round\r\n	Help me get my feet back on the ground\r\n	Won\'t you please, please help me?\r\n	\r\n	When I was younger, so much younger than today\r\n	I never needed anybody\'s help in any way\r\n	(Now) But now these days are gone (These days are gone) and I\'m not so self assured\r\n	(And now I find) Now I find I\'ve changed my mind, I\'ve opened up the doors\r\n	\r\n	Help me if you can, I\'m feeling down\r\n	And I do appreciate you being \'round\r\n	Help me get my feet back on the ground\r\n	Won\'t you please, please help me?\r\n	\r\n	Help me, help me\r\n	Ooh'),
(57, 'The Night Before', 'We said our goodbyes, ah, the night before\r\n	Love was in your eyes, ah, the night before\r\n	Now today I find you have changed your mind\r\n	Treat me like you did the night before\r\n	\r\n	Were you telling lies, ah, the night before?\r\n	Was I so unwise, ah, the night before?\r\n	When I held you near you were so sincere\r\n	Treat me like you did the night before\r\n	\r\n	Last night is a night I will remember you by\r\n	When I think of things we did it makes me wanna cry\r\n	\r\n	We said our goodbye, ah, the night before\r\n	Love was in your eyes, ah, the night before\r\n	Now today I find you have changed your mind\r\n	Treat me like you did the night before\r\n	\r\n	Yes\r\n	\r\n	When I held you near you were so sincere\r\n	Treat me like you did the night before\r\n	\r\n	Last night is a night I will remember you by\r\n	When I think of things we did it makes me wanna cry\r\n	\r\n	Were you telling lies, ah, the night before?\r\n	Was I so unwise, ah, the night before?\r\n	When I held you near you were so sincere\r\n	Treat me like you did the night before\r\n	Like the night before'),
(58, 'You\'ve Got to Hide Your Love Away', NULL),
(59, 'I Need You', NULL),
(60, 'Another Girl', NULL),
(61, 'You\'re Going to Lose That Girl', NULL),
(62, 'Ticket to Ride', NULL),
(63, 'Act Naturally', NULL),
(64, 'It\'s Only Love', NULL),
(65, 'You Like Me Too Much', NULL),
(66, 'Tell Me What You See', NULL),
(67, 'I\'ve Just Seen a Face', NULL),
(68, 'Yesterday', 'Yesterday all my troubles seemed so far away.\r\n	Now it looks as though they\'re here to stay.\r\n	Oh, I believe in yesterday.\r\n	\r\n	Suddenly, I\'m not half the man I used to be.\r\n	There\'s a shadow hanging over me.\r\n	Oh, yesterday came suddenly.\r\n	\r\n	Why she had to go?\r\n	I don\'t know, she wouldn\'t say.\r\n	I said something wrong.\r\n	Now I long for yesterday.\r\n	\r\n	Yesterday love was such an easy game to play.\r\n	Now I need a place to hide away.\r\n	Oh, I believe in yesterday.\r\n	\r\n	Why she had to go?\r\n	I don\'t know, she wouldn\'t say.\r\n	I said something wrong.\r\n	Now I long for yesterday.\r\n	\r\n	Yesterday love was such an easy game to play.\r\n	Now I need a place to hide away.\r\n	Oh, I believe in yesterday.\r\n	\r\n	Mm mm mm mm mm mm mm.'),
(69, 'Dizzy Miss Lizzy', NULL),
(70, 'Drive My Car', NULL),
(71, 'Norwegian Wood (This Bird Has Flown)', NULL),
(72, 'You Won\'t See Me', NULL),
(73, 'Nowhere Man', NULL),
(74, 'Think for Yourself', NULL),
(75, 'The Word', NULL),
(76, 'Michelle', NULL),
(77, 'What Goes On', NULL),
(78, 'Girl', NULL),
(79, 'I\'m Looking Through You', NULL),
(80, 'In My Life', NULL),
(81, 'Wait', NULL),
(82, 'If I Needed Someone', NULL),
(83, 'Run for Your Life', NULL),
(84, 'Taxman', NULL),
(85, 'Eleanor Rigby', NULL),
(86, 'I\'m Only Sleeping', NULL),
(87, 'Love You To', NULL),
(88, 'Here, There and Everywhere', NULL);
INSERT INTO `songs` (`id`, `title`, `lyrics`) VALUES
(89, 'Yellow Submarine', 'In the town where I was born\r\n	Lived a man who sailed to sea\r\n	And he told us of his life\r\n	In the land of submarines\r\n	\r\n	So we sailed up to the sun\r\n	Till we found the sea of green\r\n	And we lived beneath the waves\r\n	In our yellow submarine\r\n	\r\n	We all live in a yellow submarine\r\n	Yellow submarine, yellow submarine\r\n	We all live in a yellow submarine\r\n	Yellow submarine, yellow submarine\r\n	\r\n	And our friends are all on board\r\n	Many more of them live next door\r\n	And the band begins to play\r\n	\r\n	We all live in a yellow submarine\r\n	Yellow submarine, yellow submarine\r\n	We all live in a yellow submarine\r\n	Yellow submarine, yellow submarine\r\n	\r\n	{Full speed ahead, Mr. Boatswain [pronounced bo\'sun], full speed ahead!\r\n	Full speed it is, Sgt.!\r\n	Cut the cable, drop the cable!\r\n	Aye, sir, aye!\r\n	Captain, captain! [pronounced cap\'n, cap\'n]}\r\n	\r\n	As we live a life of ease (A life of ease)\r\n	Everyone of us (Everyone of us) has all we need (Has all we need)\r\n	Sky of blue (Sky of blue) and sea of green (Sea of green)\r\n	In our yellow (In our yellow) submarine (Submarine, ha, ha)\r\n	\r\n	We all live in a yellow submarine\r\n	Yellow submarine, yellow submarine\r\n	We all live in a yellow submarine\r\n	Yellow submarine, yellow submarine\r\n	We all live in a yellow submarine\r\n	Yellow submarine, yellow submarine\r\n	We all live in a yellow submarine\r\n	Yellow submarine, yellow submarine'),
(90, 'She Said She Said', NULL),
(91, 'Good Day Sunshine', NULL),
(92, 'And Your Bird Can Sing', NULL),
(93, 'For No One', NULL),
(94, 'Doctor Robert', NULL),
(95, 'I Want to Tell You', NULL),
(96, 'Got to Get You into My Life', NULL),
(97, 'Tomorrow Never Knows', NULL),
(98, 'Sgt. Pepper\'s Lonely Hearts Club Band', NULL),
(99, 'With a Little Help From My Friends', NULL),
(100, 'Lucy in the Sky with Diamonds', NULL),
(101, 'Getting Better', NULL),
(102, 'Fixing a Hole', NULL),
(103, 'She\'s Leaving Home', NULL),
(104, 'Being for the Benefit of Mr. Kite!', NULL),
(105, 'Within You Without You', NULL),
(106, 'When I\'m Sixty-Four', NULL),
(107, 'Lovely Rita', NULL),
(108, 'Good Morning Good Morning', NULL),
(109, 'Sgt. Pepper\'s Lonely Hearts Club Band (Reprise)', NULL),
(110, 'A Day in the Life', NULL),
(111, 'Back in the U.S.S.R.', NULL),
(112, 'Dear Prudence', NULL),
(113, 'Glass Onion', NULL),
(114, 'Ob-La-Di, Ob-La-Da', NULL),
(115, 'Wild Honey Pie', NULL),
(116, 'The Continuing Story of Bungalow Bill', NULL),
(117, 'While My Guitar Gently Weeps', NULL),
(118, 'Happiness Is a Warm Gun', NULL),
(119, 'Martha My Dear', NULL),
(120, 'I\'m So Tired', NULL),
(121, 'Blackbird', NULL),
(122, 'Piggies', NULL),
(123, 'Rocky Raccoon', NULL),
(124, 'Don\'t Pass Me By', NULL),
(125, 'Why Don\'t We Do It in the Road?', NULL),
(126, 'I Will', NULL),
(127, 'Julia', NULL),
(128, 'Birthday', NULL),
(129, 'Yer Blues', NULL),
(130, 'Mother Nature\'s Son', NULL),
(131, 'Everybody\'s Got Something to Hide Except Me and My Monkey', NULL),
(132, 'Sexy Sadie', NULL),
(133, 'Helter Skelter', NULL),
(134, 'Long, Long, Long', NULL),
(135, 'Revolution 1', NULL),
(136, 'Honey Pie', NULL),
(137, 'Savoy Truffle', NULL),
(138, 'Cry Baby Cry', NULL),
(139, 'Revolution 9', NULL),
(140, 'Good Night', NULL),
(141, 'Yellow Submarine', NULL),
(142, 'Only a Northern Song', NULL),
(143, 'All Together Now', NULL),
(144, 'Hey Bulldog', NULL),
(145, 'It\'s All Too Much', NULL),
(146, 'All You Need Is Love', 'Love, love, love\r\n	Love, love, love\r\n	Love, love, love\r\n	\r\n	There\'s nothing you can do that can\'t be done\r\n	Nothing you can sing that can\'t be sung\r\n	Nothing you can say but you can learn how to play the game\r\n	It\'s easy\r\n	\r\n	Nothing you can make that can\'t be made\r\n	No one you can save that can\'t be saved\r\n	Nothing you can do but you can learn how to be you in time\r\n	It\'s easy\r\n	\r\n	All you need is love\r\n	All you need is love\r\n	All you need is love, love\r\n	Love is all you need\r\n	\r\n	Love, love, love\r\n	Love, love, love\r\n	Love, love, love\r\n	\r\n	All you need is love\r\n	All you need is love\r\n	All you need is love, love\r\n	Love is all you need\r\n	\r\n	Nothing you can know that isn\'t known\r\n	Nothing you can see that isn\'t shown\r\n	Nowhere you can be that isn\'t where you\'re meant to be\r\n	It\'s easy\r\n	\r\n	All you need is love\r\n	All you need is love\r\n	All you need is love, love\r\n	Love is all you need\r\n	\r\n	All you need is love (All together, now!)\r\n	All you need is love (Everybody!)\r\n	All you need is love, love\r\n	Love is all you need\r\n	Love is all you need (Love is all you need)\r\n	Love is all you need (Love is all you need)\r\n	Love is all you need (Love is all you need)\r\n	Love is all you need (Love is all you need)\r\n	Love is all you need (Love is all you need)\r\n	Love is all you need (Love is all you need)\r\n	Love is all you need (Love is all you need)\r\n	Love is all you need (Love is all you need)\r\n	Love is all you need (Love is all you need)\r\n	Love is all you need (Love is all you need)\r\n	Love is all you need (Love is all you need)\r\n	Yee-hai! (Love is all you need)\r\n	Love is all you need (Love is all you need)\r\n	\r\n	Yesterday (Love is all you need)\r\n	Love is all you need (Love is all you need)\r\n	Love is all you need (Love '),
(147, 'Pepperland', NULL),
(148, 'Sea of Time', NULL),
(149, 'Sea of Holes', NULL),
(150, 'Sea of Monsters', NULL),
(151, 'March of the Meanies', NULL),
(152, 'Pepperland Laid Waste', NULL),
(153, 'Yellow Submarine in Pepperland', NULL),
(154, 'Come Together', 'Here come old flat top\r\n	He come grooving up slowly\r\n	He got joo joo eyeball\r\n	He one holy roller\r\n	He got hair down to his knee\r\n	Got to be a joker he just do what you please.\r\n	\r\n	He wear no shoe shine\r\n	He got toe jam football\r\n	He got monkey finger\r\n	He shoot Coca-Cola\r\n	He say I know you, you know me\r\n	One thing I can tell you is you got to be free\r\n	Come together right now over me\r\n	\r\n	He bag production\r\n	He got walrus gumboot\r\n	He got Ono sideboard\r\n	He one spinal cracker\r\n	He got feet down below his knee\r\n	Hold you in his armchair you can feel his disease\r\n	Come together right now over me\r\n	\r\n	Right!\r\n	Come\r\n	Come...\r\n	Come...\r\n	Come...\r\n	\r\n	He roller coaster\r\n	He got early warning\r\n	He got Muddy Water\r\n	He one Mojo filter\r\n	He say. \"One and one and one is three\"\r\n	Got to be good looking \'cause he so hard to see\r\n	Come together right now over me\r\n	\r\n	Oh!\r\n	Come together\r\n	Yeah\r\n	Come together\r\n	Yeah\r\n	Come together\r\n	Yeah\r\n	Come together\r\n	Yeah\r\n	Come together\r\n	Yeah\r\n	Come together\r\n	Yeah\r\n	Come together\r\n	Yeah\r\n	Ahh\r\n	Come together\r\n	Yeah\r\n	Come together...'),
(155, 'Something', NULL),
(156, 'Maxwell\'s Silver Hammer', NULL),
(157, 'Oh! Darling', NULL),
(158, 'Octopus\'s Garden', NULL),
(159, 'I Want You (She\'s So Heavy)', NULL),
(160, 'Here Comes the Sun', 'Here comes the sun, here comes the sun\r\n	And I say it\'s all right\r\n	\r\n	Little darling, it\'s been a long cold lonely winter\r\n	Little darling, it feels like years since it\'s been here\r\n	\r\n	Here comes the sun, here comes the sun\r\n	And I say it\'s all right\r\n	\r\n	Little darling, the smiles returning to the faces\r\n	Little darling, it seems like years since it\'s been here \r\n	\r\n	Here comes the sun, here comes the sun\r\n	And I say it\'s all right\r\n	\r\n	Sun, sun, sun, here it comes\r\n	Sun, sun, sun, here it comes\r\n	Sun, sun, sun, here it comes\r\n	Sun, sun, sun, here it comes\r\n	Sun, sun, sun, here it comes\r\n	\r\n	Little darling, I feel that ice is slowly melting\r\n	Little darling, it seems like years since it\'s been clear\r\n	\r\n	Here comes the sun, here comes the sun\r\n	And I say it\'s all right\r\n	Here comes the sun, here comes the sun\r\n	It\'s all right, it\'s all right'),
(161, 'Because', NULL),
(162, 'You Never Give Me Your Money', NULL),
(163, 'Sun King', NULL),
(164, 'Mean Mr. Mustard', NULL),
(165, 'Polythene Pam', NULL),
(166, 'She Came In Through the Bathroom Window', NULL),
(167, 'Golden Slumbers', NULL),
(168, 'Carry That Weight', NULL),
(169, 'The End', NULL),
(170, 'Her Majesty', NULL),
(171, 'Two of Us', NULL),
(172, 'Dig a Pony', NULL),
(173, 'Across the Universe', NULL),
(174, 'I Me Mine', NULL),
(175, 'Dig It', NULL),
(176, 'Let It Be', 'When I find myself in times of trouble\r\n	Mother Mary comes to me\r\n	Speaking words of wisdom\r\n	Let it be\r\n	\r\n	And in my hour of darkness\r\n	She is standing right in front of me\r\n	Speaking words of wisdom\r\n	Let it be\r\n	\r\n	Let it be, let it be, let it be, let it be\r\n	Whisper words of wisdom\r\n	Let it be\r\n	\r\n	And when the broken-hearted people\r\n	Living in the world agree\r\n	There will be an answer\r\n	Let it be\r\n	\r\n	For though they may be parted there is\r\n	Still a chance that they will see\r\n	There will be an answer\r\n	Let it be\r\n	\r\n	Let it be, let it be, let it be, let it be\r\n	Yeah, there will be an answer\r\n	Let it be\r\n	\r\n	Let it be, let it be, let it be, let it be\r\n	Whisper words of wisdom\r\n	Let it be\r\n	\r\n	Let it be, let it be, let it be, let it be\r\n	Whisper words of wisdom\r\n	Let it be\r\n	\r\n	And when the night is cloudy\r\n	There is still a light that shines on me\r\n	Shine until tomorrow\r\n	Let it be\r\n	\r\n	I wake up to the sound of music\r\n	Mother Mary comes to me\r\n	Speaking words of wisdom\r\n	Let it be\r\n	\r\n	Let it be, let it be, let it be, yeah, let it be\r\n	There will be an answer\r\n	Let it be\r\n	\r\n	Let it be, let it be, let it be, yeah, let it be\r\n	There will be an answer\r\n	Let it be\r\n	\r\n	Let it be, let it be, let it be, yeah, let it be\r\n	Whisper words of wisdom\r\n	Let it be'),
(177, 'Maggie Mae', 'I dig a pony\r\n	Well you can celebrate anything you want\r\n	Well you can celebrate anything you want\r\n	\r\n	I do a road hog\r\n	Well you can penetrate any place you go\r\n	Yes you can penetrate any place you go\r\n	I told you so, all I want is you\r\n	Everything has got to be just like you want it to\r\n	Because...\r\n	\r\n	I pick a moon dog\r\n	Well you can radiate everything you are\r\n	Yes you can radiate everything you are\r\n	\r\n	Oh now\r\n	I roll a stoney\r\n	Well you can imitate everyone you know\r\n	Yes you can imitate everyone you know\r\n	I told you so, all I want is you\r\n	Everything has got to be just like you want it to\r\n	Because...\r\n	\r\n	Ooh now\r\n	I feel the wind blow\r\n	Well you can indicate everything you see\r\n	Yes you can indicate everything you see\r\n	\r\n	Oh now\r\n	I dug a pony\r\n	Well you can syndicate any boat you row\r\n	Yeah you can syndicate any boat you row\r\n	I told you so, all I want is you\r\n	Everything has got to be just like you want it to\r\n	Because...'),
(178, 'I\'ve Got a Feeling', 'I\'ve got a feeling, a feeling deep inside\r\n	Oh yeah, oh yeah, that\'s right\r\n	I\'ve got a feeling, a feeling I can\'t hide\r\n	No no no, oh no, oh no\r\n	Yeah yeah I\'ve got a feeling yeah\r\n	\r\n	Oh please believe me, I\'d hate to miss the train\r\n	Oh yeah, yeah, oh yeah\r\n	And if you leave me I won\'t be late again\r\n	Oh no, oh no, oh no\r\n	Yeah yeah I\'ve got a feeling yeah\r\n	I\'ve got a feeling\r\n	\r\n	All these years I\'ve been wandering around\r\n	Wondering how come nobody told me\r\n	All that I was looking for was somebody\r\n	Who looked like you\r\n	\r\n	I\'ve got a feeling, that keeps me on my toes\r\n	Oh yeah, oh yeah\r\n	\r\n	I\'ve got a feeling, I think that everybody knows\r\n	Oh yeah, oh yeah, oh yeah\r\n	Yeah yeah I\'ve got a feeling yeah\r\n	Yeah\r\n	\r\n	Everybody had a hard year\r\n	Everybody had a good time\r\n	Everybody had a wet dream\r\n	Everybody saw the sunshine\r\n	Oh yeah, (oh yeah) oh yeah, oh yeah\r\n	Everybody had a good year\r\n	Everybody let their hair down\r\n	Everybody pulled their socks up\r\n	Everybody put their foot down\r\n	Oh yeah\r\n	Yeah I\'ve got a feeling\r\n	A feeling deep inside\r\n	Oh yeah\r\n	\r\n	Oh yeah\r\n	\r\n	I\'ve got a feeling\r\n	A feeling I can\'t hide\r\n	Oh no\r\n	\r\n	Oh no no no\r\n	\r\n	Yeah yeah yeah yeah\r\n	I\'ve got a feeling\r\n	\r\n	I\'ve got a feeling\r\n	\r\n	Everybody had a good year\r\n	Everybody had a hard time\r\n	\r\n	Everybody had a wet dream\r\n	\r\n	Everybody saw the sunshine\r\n	\r\n	Everybody had a good year\r\n	Everybody let their hair down\r\n	\r\n	Everybody pulled their socks up\r\n	\r\n	Everybody put the foot down\r\n	Oh yeah\r\n	\r\n	Oh yeah\r\n	\r\n	I\'ve got a feeling\r\n	Yeah yeah yeah yeah\r\n	\r\n	(Oh my soul, so hard.)'),
(179, 'One After 909', 'My baby says she\'s trav\'ling on the one after 909\r\n	I said move over honey I\'m travelling on that line\r\n	I said move over once, move over twice\r\n	Come on baby don\'t be cold as ice\r\n	I said I\'m trav\'ling on the one after 909\r\n	\r\n	I begged her not to go and I begged her on my bended knees\r\n	You\'re only fooling around, you\'re fooling around with me\r\n	I said move over once, move over twice\r\n	Come on baby don\'t be cold as ice\r\n	I said I\'m trav\'ling on the one after 909\r\n	\r\n	I got my bag, run to the station\r\n	Railman says you\'ve got the the wrong location\r\n	I got my bag, run right home\r\n	Then I find I\'ve got the number wrong\r\n	\r\n	Well I said I\'m trav\'ling on the one after 909\r\n	I said move over honey I\'m travelling on that line\r\n	I said move over once, move over twice\r\n	Come on baby don\'t be cold as ice\r\n	I said I\'m trav\'ling on the one after 909\r\n	\r\n	I got my bag, run to the station\r\n	railman says you\'ve got the the wrong location\r\n	I got my bag, run right home\r\n	Then I find I\'ve got the number wrong\r\n	\r\n	Well I said I\'m trav\'ling on the one after 909\r\n	I said move over honey I\'m travelling on that line\r\n	I said move over once, move over twice\r\n	Come on baby don\'t be cold as ice\r\n	I said we\'re trav\'ling on the one after 90\r\n	I said we\'re trav\'ling on the one after 90\r\n	I said we\'re trav\'ling on the one after 909\r\n	\r\n	(Oh Danny Boy, the old summer is calling.)'),
(180, 'The Long and Winding Road', 'The long and winding road, that leads, to your door\r\n	Will never disappear, I\'ve seen that road before\r\n	It always leads me here, lead me to your door\r\n	The wild and windy night, that the rain, washed away\r\n	Has left a pool of tears, crying for the day\r\n	Why leave me standing here, let me know the way\r\n	\r\n	Many times I\'ve been alone, and many times I\'ve cried\r\n	Any way you\'ll never know, the many ways I\'ve tried\r\n	And still they lead me back, to the long winding road\r\n	You left me standing here a long long time ago\r\n	Don\'t leave me waiting here, lead me to your door\r\n	\r\n	But still they lead me back to the long winding road\r\n	You left me standing here, a long long time ago\r\n	Don\'t keep me waiting here (Don\'t keep me wait), lead me to your door\r\n	Yeah, yeah, yeah, yeah'),
(181, 'For You Blue', '(Queen says no to pot-smoking FBI members.)\r\n	\r\n	Because you\'re sweet and lovely girl I love you\r\n	Because you\'re sweet and lovely girl it\'s true\r\n	I love you more than ever girl I do\r\n	I want you in the morning girl I love you\r\n	I want you at the moment I feel blue\r\n	I\'m living every moment girl for you\r\n	\r\n	(Walk, walk cat walk.\r\n	Go, Johnny, go.\r\n	Same old the twelve bar blues.\r\n	\r\n	Elmore James got nothing on this baby.)\r\n	\r\n	I\'ve loved you from the moment I saw you\r\n	You looked at me that\'s all you had to do\r\n	I feel it now I hope you feel it too\r\n	\r\n	Because you\'re sweet and lovely girl I love you\r\n	Because you\'re sweet and lovely girl it\'s true\r\n	I love you more than ever girl I do\r\n	Rhythm and blues'),
(182, 'Get Back', 'Jojo was a man who thought he was a loner\r\n	But he knew it wouldn\'t last\r\n	Jojo left his home in Tucson, Arizona\r\n	For some California grass\r\n	Get back, get back\r\n	Get back to where you once belonged\r\n	Get back, get back\r\n	Get back to where you once belonged\r\n	Get back Jojo, go home\r\n	Get back, get back\r\n	Back to where you once belonged\r\n	Get back, get back\r\n	Back to where you once belonged\r\n	Get back Jo\r\n	Sweet Loretta Martin thought she was a woman\r\n	But she was another man\r\n	All the girls around her say she\'s got it coming\r\n	But she gets it while she can\r\n	Get back, get back\r\n	Get back to where you once belonged\r\n	Get back, get back\r\n	Get back to where you once belonged\r\n	Get back Loretta, go home\r\n	Get back, get back\r\n	Get back to where you once belonged\r\n	Get back, get back\r\n	Get back to where you once belonged\r\n	Get back, get back\r\n	Get back to where you once belonged\r\n	Get back, get back, get back'),
(183, 'Hey Jude', 'Hey, Jude, don\'t make it bad\r\n	Take a sad song and make it better\r\n	Remember to let her into your heart\r\n	Then you can start to make it better\r\n	\r\n	Hey, Jude, don\'t be afraid\r\n	You were made to go out and get her\r\n	The minute you let her under your skin\r\n	Then you begin to make it better\r\n	\r\n	And anytime you feel the pain,\r\n	Hey, Jude, refrain\r\n	Don\'t carry the world upon your shoulders\r\n	For well you know that it\'s a fool\r\n	Who plays it cool\r\n	By making his world a little colder\r\n	\r\n	Nah, nah nah, nah nah, nah nah, nah nah\r\n	\r\n	Hey, Jude, don\'t let me down\r\n	You have found her, now go and get her\r\n	Remember to let her into your heart\r\n	Then you can start to make it better\r\n	\r\n	So let it out and let it in,\r\n	Hey, Jude, begin\r\n	You\'re waiting for someone to perform with\r\n	And don\'t you know that it\'s just you,\r\n	Hey, Jude, you\'ll do\r\n	The movement you need is on your shoulder\r\n	\r\n	Nah, nah nah, nah nah, nah nah, nah nah yeah\r\n	\r\n	Hey, Jude, don\'t make it bad\r\n	Take a sad song and make it better\r\n	Remember to let her under your skin\r\n	Then you\'ll begin to make it better, better, better, better, better... oh!\r\n	\r\n	Nah, nah nah, nah nah, nah, nah, nah nah,\r\n	Hey, Jude\r\n	Nah, nah nah, nah nah, nah, nah, nah nah,\r\n	Hey, Jude\r\n	Nah, nah nah, nah nah, nah, nah, nah nah,\r\n	Hey, Jude (Jude)\r\n	Nah, nah nah, nah nah, nah, nah, nah nah,\r\n	Hey, Jude (yeah, yeah, yeah)\r\n	Nah, nah nah, nah nah, nah, nah, nah nah,\r\n	Hey, Jude\r\n	Nah, nah nah, nah nah, nah, nah, nah nah,\r\n	Hey, Jude (don\'t make it bad, Jude)\r\n	Nah, nah nah, nah nah, nah, nah, nah nah,\r\n	Hey, Jude (take a sad song and make it better)\r\n	Nah, nah nah, nah nah, nah, nah, nah nah,\r\n	Hey, Jude (oh, Jude)\r\n	Nah, nah nah, nah nah, nah, nah, nah nah,\r\n	Hey, Jud'),
(184, 'I Want To Hold Your Hand', 'Oh yeah, I\'ll tell you something\r\n	I think you\'ll understand\r\n	When I say that something\r\n	I wanna hold your hand\r\n	I wanna hold your hand\r\n	I wanna hold your hand\r\n	\r\n	Oh please, say to me\r\n	You\'ll let me be your man\r\n	And please, say to me\r\n	You\'ll let me hold your hand\r\n	You let me hold your hand\r\n	I wanna hold your hand\r\n	\r\n	And when I touch you I feel happy\r\n	Inside\r\n	It\'s such a feeling that my love\r\n	I can\'t hide\r\n	I can\'t hide\r\n	I can\'t hide\r\n	\r\n	Yeah, you\'ve got that something\r\n	I think you\'ll understand\r\n	When I say that something\r\n	I wanna hold your hand\r\n	I wanna hold your hand\r\n	I wanna hold your hand\r\n	\r\n	And when I touch you I feel happy\r\n	Inside\r\n	It\'s such a feeling that my love\r\n	I can\'t hide\r\n	I can\'t hide\r\n	I can\'t hide\r\n	\r\n	Yeah, you\'ve got that something\r\n	I think you\'ll understand\r\n	When I feel that something\r\n	I wanna hold your hand\r\n	I wanna hold your hand\r\n	I wanna hold your hand\r\n	I wanna hold your hand'),
(185, 'I Feel Fine', 'Baby\'s good to me, you know\r\n	She\'s happy as can be, you know\r\n	She said so\r\n	I\'m in love with her and I feel fine\r\n	\r\n	Baby says she\'s mine, you know\r\n	She tells me all the time, you know\r\n	She said so\r\n	I\'m in love with her and I feel fine\r\n	\r\n	I\'m so glad that she\'s my little girl\r\n	She\'s so glad, she\'s telling all the world\r\n	\r\n	That her baby buys her things, you know\r\n	He buys her diamond rings, you know\r\n	She said so\r\n	She\'s in love with me and I feel fine, mmm\r\n	\r\n	Baby says she\'s mine, you know\r\n	She tells me all the time, you know\r\n	She said so\r\n	I\'m in love with her and I feel fine\r\n	\r\n	I\'m so glad that she\'s my little girl\r\n	She\'s so glad, she\'s telling all the world\r\n	\r\n	That her baby buys her things, you know\r\n	He buys her diamond rings, you know\r\n	She said so\r\n	She\'s in love with me and I feel fine\r\n	She\'s in love with me and I feel fine, mmm, mmm\r\n	'),
(186, 'She Loves You', 'She loves you, yeah, yeah, yeah\r\n	She loves you, yeah, yeah, yeah\r\n	She loves you, yeah, yeah, yeah, yeah\r\n	\r\n	You think you lost your love\r\n	Well, I saw her yesterday\r\n	It\'s you she\'s thinking of\r\n	And she told me what to say\r\n	\r\n	She says she loves you\r\n	And you know that can\'t be bad\r\n	Yes, she loves you\r\n	And you know you should be glad\r\n	\r\n	She said you hurt her so\r\n	She almost lost her mind\r\n	But now she says she knows\r\n	You\'re not the hurting kind\r\n	\r\n	She says she loves you\r\n	And you know that can\'t be bad\r\n	Yes, she loves you\r\n	And you know you should be glad, ooh\r\n	\r\n	She loves you, yeah, yeah, yeah\r\n	She loves you, yeah, yeah, yeah\r\n	And with a love like that\r\n	You know you should be glad\r\n	\r\n	You know it\'s up to you\r\n	I think it\'s only fair\r\n	Pride can hurt you too\r\n	Apologize to her\r\n	\r\n	Because she loves you\r\n	And you know that can\'t be bad\r\n	Yes, she loves you\r\n	And you know you should be glad, ooh\r\n	\r\n	She loves you, yeah, yeah, yeah\r\n	She loves you, yeah, yeah, yeah\r\n	With a love like that\r\n	You know you should be glad\r\n	With a love like that\r\n	You know you should be glad\r\n	With a love like that\r\n	You know you should be glad\r\n	Yeah, yeah, yeah\r\n	Yeah, yeah, yeah, yeah');

-- --------------------------------------------------------

--
-- Table structure for table `songwriters`
--

CREATE TABLE `songwriters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(80) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `death_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `songwriters`
--

INSERT INTO `songwriters` (`id`, `name`, `birth_date`, `death_date`) VALUES
(1, 'John Lennon', '1940-10-09', '1980-12-08'),
(2, 'Paul McCartney', '1942-06-18', NULL),
(3, 'George Harrison', '1943-02-25', '2001-11-29'),
(4, 'Phil Medly', '1970-01-01', NULL),
(5, 'Bert Russell', '1970-01-01', NULL),
(6, 'Richard Starkey', '1940-07-07', NULL),
(7, 'Gerry Goffin', '1939-02-11', '2014-06-19'),
(8, 'Carole King', '1942-02-09', NULL),
(9, 'Arthur Alexander', NULL, NULL),
(10, 'Chuck Berry', '1926-10-18', '2017-03-18'),
(11, 'Johnny Russell', '1940-01-23', '2001-07-03'),
(12, 'Voni Morrison', NULL, NULL),
(13, 'Larry Williams', '1935-05-10', '1980-01-07'),
(14, 'Roy Lee Johnson', '1938-12-31', NULL),
(15, 'Buddy Holly', '1936-09-07', '1959-02-03'),
(16, 'Carl Perkins', '1932-04-09', '1998-01-19'),
(17, 'Jerry Leiber', '1933-04-25', '2011-08-22'),
(18, 'Mike Stoller', '1933-03-13', NULL),
(19, 'Richard Penniman', '1932-12-05', NULL),
(20, 'Meredith Willson', '1902-05-18', '1984-06-15'),
(21, 'Georgia Dobbins', NULL, NULL),
(22, 'William Garrett', NULL, NULL),
(23, 'Freddie Gorman', '1939-04-11', '2006-06-13'),
(24, 'Brian Holland', '1941-02-15', NULL),
(25, 'Robert Bateman', '1936-04-30', '2016-10-12'),
(26, 'William Robertson', '1940-02-19', NULL),
(27, 'Richard Drapkin', NULL, NULL),
(28, 'Janie Bradford', '1939-06-02', NULL),
(29, 'Berry Gordy', '1929-11-28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `songwriters_song`
--

CREATE TABLE `songwriters_song` (
  `songwriter_id` bigint(20) UNSIGNED NOT NULL,
  `song_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `songwriters_song`
--

INSERT INTO `songwriters_song` (`songwriter_id`, `song_id`) VALUES
(1, 1),
(1, 15),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 35),
(1, 71),
(1, 77),
(1, 141),
(1, 154),
(1, 170),
(1, 171),
(1, 176),
(1, 182),
(1, 184),
(1, 185),
(2, 1),
(2, 15),
(2, 29),
(2, 30),
(2, 31),
(2, 32),
(2, 33),
(2, 35),
(2, 71),
(2, 77),
(2, 141),
(2, 154),
(2, 170),
(2, 171),
(2, 176),
(2, 182),
(2, 184),
(2, 185),
(3, 65),
(3, 82),
(3, 84),
(3, 105),
(3, 117),
(4, 14),
(5, 14),
(6, 77),
(10, 22),
(10, 45),
(11, 63),
(12, 63),
(13, 69),
(14, 47),
(15, 50),
(16, 51),
(16, 55),
(17, 48),
(18, 48),
(19, 48),
(20, 20),
(21, 21),
(22, 21),
(23, 21),
(24, 21),
(25, 21),
(26, 24),
(27, 26),
(28, 28),
(29, 28);

-- --------------------------------------------------------

--
-- Table structure for table `tracks`
--

CREATE TABLE `tracks` (
  `song_id` bigint(20) UNSIGNED NOT NULL,
  `album_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tracks`
--

INSERT INTO `tracks` (`song_id`, `album_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 10),
(30, 10),
(31, 10),
(32, 10),
(33, 10),
(34, 10),
(35, 10),
(36, 10),
(37, 10),
(38, 10),
(39, 10),
(40, 10),
(41, 10),
(42, 12),
(43, 12),
(44, 12),
(45, 12),
(46, 12),
(47, 12),
(48, 12),
(49, 12),
(50, 12),
(51, 12),
(52, 12),
(53, 12),
(54, 12),
(55, 12),
(56, 15),
(57, 15),
(58, 15),
(59, 15),
(60, 15),
(61, 15),
(62, 15),
(63, 15),
(64, 15),
(65, 15),
(66, 15),
(67, 15),
(68, 15),
(69, 15),
(70, 16),
(71, 16),
(72, 16),
(73, 16),
(74, 16),
(75, 16),
(76, 16),
(77, 16),
(78, 16),
(79, 16),
(80, 16),
(81, 16),
(82, 16),
(83, 16),
(84, 18),
(85, 18),
(86, 18),
(87, 18),
(88, 18),
(89, 18),
(90, 18),
(91, 18),
(92, 18),
(93, 18),
(94, 18),
(95, 18),
(96, 18),
(97, 18),
(98, 19),
(99, 19),
(100, 19),
(101, 19),
(102, 19),
(103, 19),
(104, 19),
(105, 19),
(106, 19),
(107, 19),
(108, 19),
(109, 19),
(110, 19),
(111, 21),
(112, 21),
(113, 21),
(114, 21),
(115, 21),
(116, 21),
(117, 21),
(118, 21),
(119, 21),
(120, 21),
(121, 21),
(122, 21),
(123, 21),
(124, 21),
(125, 21),
(126, 21),
(127, 21),
(128, 21),
(129, 21),
(130, 21),
(131, 21),
(132, 21),
(133, 21),
(134, 21),
(135, 21),
(136, 21),
(137, 21),
(138, 21),
(139, 21),
(140, 21),
(141, 22),
(142, 22),
(143, 22),
(144, 22),
(145, 22),
(146, 20),
(146, 22),
(147, 22),
(148, 22),
(149, 22),
(150, 22),
(151, 22),
(152, 22),
(153, 22),
(154, 23),
(155, 23),
(156, 23),
(157, 23),
(158, 23),
(159, 23),
(160, 23),
(161, 23),
(162, 23),
(163, 23),
(164, 23),
(165, 23),
(166, 23),
(167, 23),
(168, 23),
(169, 23),
(170, 23),
(171, 24),
(172, 24),
(173, 24),
(174, 24),
(175, 24),
(176, 24),
(177, 24),
(178, 24),
(179, 24),
(180, 24),
(181, 24),
(182, 24),
(183, 25),
(184, 26),
(185, 28),
(186, 7),
(186, 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `songwriters`
--
ALTER TABLE `songwriters`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `songwriters_song`
--
ALTER TABLE `songwriters_song`
  ADD PRIMARY KEY (`songwriter_id`,`song_id`),
  ADD KEY `fk_songwriters_song_song` (`song_id`);

--
-- Indexes for table `tracks`
--
ALTER TABLE `tracks`
  ADD PRIMARY KEY (`song_id`,`album_id`),
  ADD KEY `fk_tracks_albums` (`album_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT for table `songwriters`
--
ALTER TABLE `songwriters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `songwriters_song`
--
ALTER TABLE `songwriters_song`
  ADD CONSTRAINT `fk_songwriters_song_song` FOREIGN KEY (`song_id`) REFERENCES `songs` (`id`),
  ADD CONSTRAINT `fk_songwriters_song_writer` FOREIGN KEY (`songwriter_id`) REFERENCES `songwriters` (`id`);

--
-- Constraints for table `tracks`
--
ALTER TABLE `tracks`
  ADD CONSTRAINT `fk_tracks_albums` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`),
  ADD CONSTRAINT `fk_tracks_songs` FOREIGN KEY (`song_id`) REFERENCES `songs` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
