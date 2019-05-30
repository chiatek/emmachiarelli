-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 29, 2018 at 08:48 PM
-- Server version: 5.6.39-83.1
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spchiare_emmachiarelli`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `articleid` int(11) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `body` text,
  `authorid` int(11) NOT NULL,
  `video` varchar(250) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `youtube` varchar(300) DEFAULT NULL,
  `html` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`articleid`, `title`, `date`, `body`, `authorid`, `video`, `image`, `youtube`, `html`) VALUES
(1000, 'Contact', '2016-12-01', NULL, 101, NULL, NULL, NULL, NULL),
(1001, 'About Me', '2016-12-01', 'Emma Rose Chiarelli was born October 21, 2001 in Naples, FL.  She is the first born to parents Michael \r\n		and Rhoda Chiarelli.  She has two younger sisters, Marissa and Olivia.  She has two Dachshunds, Venice and Toby.  \r\n		She began taking gymnastics in a \"mommy and me\" class in Naples.\\r\\n\\r\\n\r\n		\r\n		<img src=\"images/about.jpg\" class=\"about-image\" alt=\"Emma Chiarelli\">\r\n		Upon moving to Gainesville, Florida, she continued recreational gymnastics at O2B Kids.  She began competing \r\n		in 2009 for Sun Country Gymnastics as a Level 4 athlete. Most recently, Emma competed level 10 in 2017 and 2018 qualifying for the Florida State Championships and Region 8 Regionals. In addition, she currently holds several gym records individually for team including Level 9 on bars, floor, and all around.  She has been on the www.mymeetscores.com \r\n		top 100 at Level 8 for bars at 9.775 in 2014, and Level 9 for AA for 38.075 in 2016.  She was ranked 79th nationally \r\n		on Flogymnastics as a Level 9 athlete in 2016.\\r\\n\r\n		<br>Emma enjoys outside sports and water sports in addition to gymnastics.  She enjoys boating, waterskiing, wake boarding, \r\n		and paddle boarding.  She enjoys running stadiums, corn hole, basketball, soccer, and lacrosse.  She enjoys watching \r\n		sports as well. She enjoys football, baseball, basketball, soccer, gymnastic, lacrosse, and volleyball.  She also enjoys\r\n		watching wheelchair basketball and rugby. She enjoys traveling with gymnastics as well as with family.  She often works \r\n		out a local gyms while traveling and has met many friends along the way.\\r\\n\r\n		<br>Emma enjoys staying healthy and active. She also enjoys helping others.  Her parents are physical therapists.  \r\n		She would like to incorporate her lifestyle into a career as a physical therapist specializing in sports medicine.\\r\\n\r\n		\\r\\nEmma strives high when it comes to academics. She attended Hidden Oak Elementary School and then Fort Clarke Middle School where she was in the Junior National Honor Society. She continues to maintain above a 4.0 GPA at Buchholz High School while taking honors and AP classes. She enjoys supporting her fellow Bobcats at many sporting events as well as the UF Gators.\\r\\n\r\n		<br>Emma would love to continue gymnastics in the NCAA at a Division 1 school to continue her passion for the sport.  \r\n		She looks forwards to attending a quality university in order to pursue a career in healthcare.\\r\\n\\r\\n', 101, NULL, NULL, NULL, NULL),
(1002, 'Emma Chiarelli\\r\\nSun Country Gymnastics - Gainesville, FL\\r\\nCoach: Mary Carlson - team@suncountrysports.com', '2016-12-01', '<img src=\"images/profile-1.jpg\" class=\"profile-image-1\" alt=\"Emma Chiarelli\">\r\n					I am a driven, passionate, hard-working gymnast with a strong desire to compete as an NCAA athlete. Some of my greatest strengths included my positive attitude, commitment to my teammates, and my leadership ability.\\r\\n\\r\\n\r\n					I am a junior at Buchholz High School in Gainesville, FL.  My current GPA is 4.274.  I hope to study physical therapy and sports medicine.  I am interested in pursuing a career in the healthcare field such as physical therapy, as I enjoying helping others and since my parents both are physical therapists.\\r\\n\r\n										<h3>Recent Achievements</h3>\r\n					<ul>\r\n<li>2018 Atlanta Centennial Classic - 3rd place all-around (37.100)</li>\r\n<li>2017 Level 10 Region 8 Regional Qualifier-7th place Vault and Bars</li>\r\n<li>2017 Level 10 FL State Qualifier- 5th place Vault, 3rd place Bars</li>\r\n						<li>2016 Level 9 Eastern National Qualifier- 2nd place floor, 5th place Vault, JR 7 Team Champion</li>\r\n						<li>2016 Level 9 Region 8 Regional Floor Champion</li>\r\n						<li>2016 Level 9 FL State All-Around Champion- 38.075; 1st place Vault, Bars, Floor</li>\r\n						<li>2016 Level 9 All-around My Meet Scores Top 100</li>\r\n					</ul>\r\n<img src=\"images/profile-2.jpg\" class=\"profile-image-2\" alt=\"Emma Chiarelli\">\r\n					<h3>Current Skills</h3>\r\n					<strong>Vault</strong>\r\n						<ul>\r\n							<li>Competed: Yurchenko layout/layout full</li>\r\n							<li>Training: Yurchenko layout 1 1/2</li>\r\n						</ul>\r\n					<strong>Bars</strong>\r\n						<ul>\r\n							<li>Competed: bail handstand; Blind change, straddle Jaeger; Full blind, bail 45/handstand; giant, giant to double back dismount</li>\r\n							<li>Training: Full blind double back dismount; Full out dismount</li>\r\n						</ul>\r\n					<strong>Beam</strong>\r\n						<ul>\r\n							<li>Competed: Stag handstand, Back handspring, layout step out; split jump, sheep jump; cat leap front aerial; round-off 1 1/2 dismount</li>\r\n							<li>Training: Front aerial, Back handspring layout-step out; back-walkover Anodi; switch ring; Y-turn</li>\r\n						</ul>\r\n					<strong>Floor</strong>\r\n						<ul>\r\n							<li>Competed: Front handstand, front lay, front lay; Round off double full; Round off Double back, Round off, 1 1/2 punch front pike; Front handspring, front lay, front pike; switch ring-tour jete 1/2</li>\r\n							<li>Training: Round off Double Arabian; front handspring, front lay, front layout full; Round off 2 1/2 twist; Switch ring-tour jete full</li>\r\n						</ul>\r\n\r\n				<h3>2018 Level 10 High Scores</h3>\r\n					<ul>\r\n						<li>Vault: 9.375- Atlanta Centennial Classic</li>\r\n						<li>Bars: 9.450- Magical Classic</li>\r\n						<li>Beam: 9.250- Florida State Championship</li>\r\n						<li>Floor: 9.525- Atlanta Centennial Classic</li>\r\n						<li>All-Around: 37.100- Atlanta Centennial Classic</li>\r\n					</ul>\r\n						\r\n				<h3>2017 Level 10 High Scores</h3>\r\n					<ul>\r\n						<li>Vault: 9.30- Magical Classic Invitational</li>\r\n						<li>Bars: 9.35- Region 8 Regional Championship</li>\r\n						<li>Beam: 9.250- Magical Classic Invitational</li>\r\n						<li>Floor: 9.20- Florida State Championship</li>\r\n						<li>All-Around: 36.800- Magical Classic Invitational</li>\r\n					</ul>\r\n\r\n					<h3>2016 Level 9 High Scores</h3>\r\n					<ul>\r\n						<li>Vault: 9.675- Florida State Championship</li>\r\n						<li>Bars: 9.575- Daytona Beach Open</li>\r\n						<li>Beam: 9.25- Florida State Championship</li>\r\n						<li>Floor: 9.65- Florida State Championship</li>\r\n						<li>All-Around: 38.075- Florida State Championship</li>\r\n					</ul>', 101, NULL, NULL, NULL, NULL),
(1003, '2018 Competition Schedule', '2017-10-14', 'The 2018 woman\'s optional team competitive schedule has been announced. Meets range from regionals in Bradenton, FL to nationals in Cincinnati, OH.', 101, NULL, 'images/usa-gymnastics-2.jpg', NULL, '<br><br><table class=\"article-table\">\r\n		<tr>\r\n		<th>Date</th>\r\n		<th>Meet</th>\r\n		<th>Location</th>\r\n		</tr>\r\n		<tr>\r\n		<td>TBA (December)</td>\r\n		<td>In-House</td>\r\n		<td>Sun Country</td>\r\n		</tr>\r\n		<tr>\r\n		<td>Jan 12-14, 2018</td>\r\n		<td>Tampa Bay Turners Invitational</td>\r\n		<td>Bradenton, FL</td>\r\n		</tr>\r\n		<tr>\r\n		<td>Jan 26-28, 2018</td>\r\n		<td>Atlanta Centennial Invite</td>\r\n		<td>Atlanta, GA</td>\r\n		</tr>\r\n		<tr>\r\n		<td>Feb 9-11, 2018</td>\r\n		<td>Classic Rock Invitational</td>\r\n		<td>Phoenix, AZ</td>\r\n		</tr>\r\n		<tr>\r\n		<td>Feb 16-17, 2018</td>\r\n		<td>Magical Classic</td>\r\n		<td>Orlando, FL</td>							\r\n		</tr>\r\n		<tr>\r\n		<td>Mar 2-4, 2018</td>\r\n		<td>Courtney Kupets PINK Invitational</td>\r\n		<td>Savannah, GA</td>\r\n		</tr>\r\n		<tr>\r\n		<td>Mar 16-18, 2018</td>\r\n		<td>Level 6, 9, 10 State</td>\r\n		<td>Fort Myers, FL</td>\r\n		</tr>\r\n		<tr>\r\n		<td>Apr 13-15, 2018</td>\r\n		<td>Level 9/10 Regionals</td>\r\n		<td>Bradenton, FL</td>\r\n		</tr>\r\n		<tr>\r\n		<td>May 10-13, 2018</td>\r\n		<td>Level 10 JO Nationals</td>\r\n		<td>Cincinnati, OH</td>\r\n		</tr>\r\n		</table>'),
(1004, 'Welcome to My Website', '2018-06-20', 'Welcome to the official website of Emma Chiarelli. Emma lives in Gainesville, FL and is a junior at Buchholz High \r\n						School. She trains at Sun Country Gymnastics under coach Mary Carlson. All of the content on this website is new, \r\n						so be sure to check back once in a while because Emma\'s website will constantly be updated with news, results and video.', 101, NULL, 'images/emma-youtube.jpg', 'https://www.youtube.com/embed/z7YKeV1EcuI ', NULL),
(1005, 'Local Gymnast Champion', '2017-10-16', 'The Sun Country gymnasium has been home for gymnasts of all ages to come and practice their various talents.\r\nWhether it be on the vaults, beams, bars or floor routines, every section is welcomed. New National Champion 14 \r\nyear old Emma Chiarelli\'s coach says she dedicated a large amount of time each week trying to make each student better.\\r\\n\\r\\n\r\n\r\nMary Carlson said, \"I have some of these kids at Emma\'s level that I spend upwards of twenty-five hours a week with, each \r\nweek so, five hours a day with right now for the summer.\" Emma , who has been called a gym rat at Sun Country, was honored \r\nby USA gymnastics this past weekend as a level nine National team champion. Her mom speaks to her accomplishments.\r\nRhoda Chiarelli said, \" it was wonderful to see her peak at her best and do a wonderful floor routine, which she won second \r\nplace and fifth place on the vault it was phenomenal.\"\\r\\n\\r\\n  \r\n\r\nEmma and the girls challenged me, to a competition that they do as a warm up everyday. As Emma goes on to her future competitions, \r\nher coaches will remember her by the leadership style she shows. Mary Carlson said,\"she\'s a great leader, she\'s always the \r\nfirst one to set an amazing example for the kids, for the teammates that are younger than her, so she\'s very easy to coach.\" \r\nAnd as for Sun Country, the gym will continue to take in talents just like Emma and even those who are aspiring to make it.\\r\\n\\r\\n  \r\n\r\nCurtis Jennings TV20 News.\\r\\n\\r\\n\r\n\r\nFor the complete story and video please visit:\r\n<a href=\"http://www.wcjb.com/local-news/2016/06/local-gymnast-champion\">http://www.wcjb.com/local-news/2016/06/local-gymnast-champion</a>', 102, NULL, 'images/champion-2.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `authorid` int(11) NOT NULL,
  `name` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`authorid`, `name`) VALUES
(101, 'Emma Chiarelli'),
(102, 'Courtesy WCJB-TV');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `commentid` int(11) NOT NULL,
  `articleid` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `text` text,
  `videoid` int(11) DEFAULT NULL,
  `pictureid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`commentid`, `articleid`, `date`, `name`, `email`, `text`, `videoid`, `pictureid`) VALUES
(201, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(202, 1000, '2018-03-16 18:11:59', 'Mecenat', 'drembakenteshe@mail.ru', 'Free distribution of SibCoin crypto currency for 100 dollars to everyone! \\r\\nSend your SibCoin number to your wallet and you will receive a crypto currency for free! \\r\\nEmail: freesibcoin@rambler.ru \\r\\n \\r\\nÐ‘ÐµÑÐ¿Ð»Ð°Ñ‚Ð½Ð°Ñ Ñ€Ð°Ð·Ð´Ð°Ñ‡Ð° ÐºÑ€Ð¸Ð¿Ñ‚Ð¾Ð²Ð°Ð»ÑŽÑ‚Ñ‹ SibCoin Ð½Ð° 100 Ð´Ð¾Ð»Ð»Ð°Ñ€Ð¾Ð² ÐºÐ°Ð¶Ð´Ð¾Ð¼Ñƒ Ð¶ÐµÐ»Ð°ÑŽÑ‰ÐµÐ¼Ñƒ! \\r\\nÐŸÑ€Ð¸ÑÑ‹Ð»Ð°Ð¹Ñ‚Ðµ ÑÐ²Ð¾Ð¹ Ð½Ð¾Ð¼ÐµÑ€ SibCoin ÐºÐ¾ÑˆÐµÐ»ÑŒÐºÐ° Ð¸ Ð¿Ð¾Ð»ÑƒÑ‡Ð¸Ñ‚Ðµ ÐºÑ€Ð¸Ð¿Ñ‚Ð¾Ð²Ð°Ð»ÑŽÑ‚Ñƒ ÑÐ¾Ð²ÐµÑ€ÑˆÐµÐ½Ð½Ð¾ Ð±ÐµÑÐ¿Ð»Ð°Ñ‚Ð½Ð¾! \\r\\nÐŸÐ¾Ñ‡Ñ‚Ð°: freesibcoin@rambler.ru', NULL, NULL),
(203, 1000, '2018-03-27 06:17:02', 'Scot Walker', 'websitesolutions24hours@gmail.com', 'Dear emmachiarelli.com Owner, \\r\\n\\r\\nI recently spent some time on your website. Based on what I saw, there are a few things you could implement pretty quickly that would help boost your Google rankings, traffic, social media,conversion\\r\\nand Local SEO. \\r\\n\\r\\nWe are also into website design, development and can redesign your website.\\r\\n\\r\\nNot sure what your initiatives are in this area, but is this something thatâ€™s on your radar?\\r\\n\\r\\nBest Regards,\\r\\nScot Walker\\r\\n(240) 489-2269', NULL, NULL),
(204, 1000, '2018-05-14 23:20:52', 'Randy', 'Randy@TalkWithLead.com', 'Hi,\\r\\n\\r\\nMy name is Randy and I was looking at a few different sites online and came across your site emmachiarelli.com.  I must say - your website is very impressive.  I found your website on the first page of the Search Engine. \\r\\n\\r\\nHave you noticed that 70 percent of visitors who leave your website will never return?  In most cases, this means that 95 percent to 98 percent of your marketing efforts are going to waste, not to mention that you are losing more money in customer acquisition costs than you need to.\\r\\n \\r\\nAs a business person, the time and money you put into your marketing efforts is extremely valuable.  So why let it go to waste?  Our users have seen staggering improvements in conversions with insane growths of 150 percent going upwards of 785 percent. Are you ready to unlock the highest conversion revenue from each of your website visitors?  \\r\\n\\r\\nTalkWithLead is a widget which captures a website visitorâ€™s Name, Email address and Phone Number and then calls you immediately, so that you can talk to the Lead exactly when they are live on your website â€” while they\\\'re hot!\\r\\n  \\r\\nTry the TalkWithLead Live Demo now to see exactly how it works.  Visit: https://www.talkwithlead.com/Contents/LiveDemo.aspx\\r\\n\\r\\nWhen targeting leads, speed is essential - there is a 100x decrease in Leads when a Lead is contacted within 30 minutes vs being contacted within 5 minutes.\\r\\n\\r\\nIf you would like to talk to me about this service, please give me a call.  We do offer a 30 days free trial.  \\r\\n\\r\\nThanks and Best Regards,\\r\\nRandy', NULL, NULL),
(205, 1000, '2018-05-15 22:50:57', 'Randy', 'Randy@TalkWithLead.com', 'Hi,\\r\\n\\r\\nMy name is Randy and I was looking at a few different sites online and came across your site emmachiarelli.com.  I must say - your website is very impressive.  I found your website on the first page of the Search Engine. \\r\\n\\r\\nHave you noticed that 70 percent of visitors who leave your website will never return?  In most cases, this means that 95 percent to 98 percent of your marketing efforts are going to waste, not to mention that you are losing more money in customer acquisition costs than you need to.\\r\\n \\r\\nAs a business person, the time and money you put into your marketing efforts is extremely valuable.  So why let it go to waste?  Our users have seen staggering improvements in conversions with insane growths of 150 percent going upwards of 785 percent. Are you ready to unlock the highest conversion revenue from each of your website visitors?  \\r\\n\\r\\nTalkWithLead is a widget which captures a website visitorâ€™s Name, Email address and Phone Number and then calls you immediately, so that you can talk to the Lead exactly when they are live on your website â€” while they\\\'re hot!\\r\\n  \\r\\nTry the TalkWithLead Live Demo now to see exactly how it works.  Visit: https://www.talkwithlead.com/Contents/LiveDemo.aspx\\r\\n\\r\\nWhen targeting leads, speed is essential - there is a 100x decrease in Leads when a Lead is contacted within 30 minutes vs being contacted within 5 minutes.\\r\\n\\r\\nIf you would like to talk to me about this service, please give me a call.  We do offer a 30 days free trial.  \\r\\n\\r\\nThanks and Best Regards,\\r\\nRandy', NULL, NULL),
(206, 1000, '2018-05-22 13:21:53', 'Randy', 'Randy@TalkWithLead.com', 'Hi,\\r\\n\\r\\nMy name is Randy and I was looking at a few different sites online and came across your site emmachiarelli.com.  I must say - your website is very impressive.  I found your website on the first page of the Search Engine. \\r\\n\\r\\nHave you noticed that 70 percent of visitors who leave your website will never return?  In most cases, this means that 95 percent to 98 percent of your marketing efforts are going to waste, not to mention that you are losing more money in customer acquisition costs than you need to.\\r\\n \\r\\nAs a business person, the time and money you put into your marketing efforts is extremely valuable.  So why let it go to waste?  Our users have seen staggering improvements in conversions with insane growths of 150 percent going upwards of 785 percent. Are you ready to unlock the highest conversion revenue from each of your website visitors?  \\r\\n\\r\\nTalkWithLead is a widget which captures a website visitorâ€™s Name, Email address and Phone Number and then calls you immediately, so that you can talk to the Lead exactly when they are live on your website â€” while they\\\'re hot!\\r\\n  \\r\\nTry the TalkWithLead Live Demo now to see exactly how it works.  Visit: https://www.talkwithlead.com/Contents/LiveDemo.aspx\\r\\n\\r\\nWhen targeting leads, speed is essential - there is a 100x decrease in Leads when a Lead is contacted within 30 minutes vs being contacted within 5 minutes.\\r\\n\\r\\nIf you would like to talk to me about this service, please give me a call.  We do offer a 30 days free trial.  \\r\\n\\r\\nThanks and Best Regards,\\r\\nRandy', NULL, NULL),
(207, 1000, '2018-05-28 09:46:59', 'CizSahar', 'vata@livesilk.info', '&lt;a href=https://vk.com/sladkaya_vata_na_prazdnik&gt;&lt;img src=&quot;http://dl3.joxi.net/drive/2018/05/19/0010/3895/683831/31/67441fa8fd.png&quot;&gt;&lt;/a&gt; \\r\\n \\r\\nÐÐ°ÑˆÐ¸ ÑÐ¿ÐµÑ†Ð¸Ð°Ð»Ð¸ÑÑ‚Ñ‹ ÑƒÑÑ‚Ð°Ð½Ð¾Ð²ÑÑ‚ Ð°Ð¿Ð¿Ð°Ñ€Ð°Ñ‚ Ð¸ Ð¿Ð¾ÐºÐ°Ð¶ÑƒÑ‚, ÐºÐ°Ðº Ñ Ð½Ð¸Ð¼ Ð¾Ð±Ñ€Ð°Ñ‰Ð°Ñ‚ÑŒÑÑ. ÐžÑÑ‚Ð°Ð»ÑŒÐ½Ð¾Ðµ Ð²Ñ‹ ÑÐ¼Ð¾Ð¶ÐµÑ‚Ðµ ÑÐ´ÐµÐ»Ð°Ñ‚ÑŒ ÑÐ°Ð¼Ð¾ÑÑ‚Ð¾ÑÑ‚ÐµÐ»ÑŒÐ½Ð¾! Ð’ ÑÑ‚Ð¾Ð¼ Ð½ÐµÑ‚ Ð½Ð¸Ñ‡ÐµÐ³Ð¾ Ñ‚Ñ€ÑƒÐ´Ð½Ð¾Ð³Ð¾. ÐžÑ‚ Ð²Ð°Ñ Ñ‚Ñ€ÐµÐ±ÑƒÐµÑ‚ÑÑ Ð²ÑÐµÐ³Ð¾ Ð»Ð¸ÑˆÑŒ Ð·Ð°ÑÐ²ÐºÐ° Ð½Ð° Ð°Ñ€ÐµÐ½Ð´Ñƒ Ð°Ð¿Ð¿Ð°Ñ€Ð°Ñ‚Ð° Ð¿Ð¾ Ð¸Ð·Ð³Ð¾Ñ‚Ð¾Ð²Ð»ÐµÐ½Ð¸ÑŽ ÑÑ‚Ð¾Ð³Ð¾ ÑƒÐ³Ð¾Ñ‰ÐµÐ½Ð¸Ñ. &lt;a href=https://vk.com/sladkaya_vata_na_prazdnik&gt;Ð°Ð¿Ð¿Ð°Ñ€Ð°Ñ‚ ÑÐ»Ð°Ð´ÐºÐ¾Ð¹ Ð²Ð°Ñ‚Ñ‹ Ð² Ð°Ñ€ÐµÐ½Ð´Ñƒ&lt;/a&gt;', NULL, NULL),
(208, 1000, '2018-07-05 12:23:04', 'Larue Krause', 'nancy@xponsor.com', 'Morning\\r\\n\\r\\nShop Ray-Ban Sunglasses $19.95 only today at https://isunglasswarehouse.online\\r\\n\\r\\nAll the best,\\r\\n\\r\\n\\r\\nEmma Chiarelli | Contact\\r\\nFrom emmachiarelli.com', NULL, NULL),
(209, 1000, '2018-07-23 21:46:46', 'Randy', 'Randy@TalkWithLead.com', 'Hi,\\r\\n\\r\\nMy name is Randy and I was looking at a few different sites online and came across your site emmachiarelli.com.  I must say - your website is very impressive.  I found your website on the first page of the Search Engine. \\r\\n\\r\\nHave you noticed that 70 percent of visitors who leave your website will never return?  In most cases, this means that 95 percent to 98 percent of your marketing efforts are going to waste, not to mention that you are losing more money in customer acquisition costs than you need to.\\r\\n \\r\\nAs a business person, the time and money you put into your marketing efforts is extremely valuable.  So why let it go to waste?  Our users have seen staggering improvements in conversions with insane growths of 150 percent going upwards of 785 percent. Are you ready to unlock the highest conversion revenue from each of your website visitors?  \\r\\n\\r\\nTalkWithLead is a widget which captures a website visitorâ€™s Name, Email address and Phone Number and then calls you immediately, so that you can talk to the Lead exactly when they are live on your website â€” while they\\\'re hot!\\r\\n  \\r\\nTry the TalkWithLead Live Demo now to see exactly how it works.  Visit: https://www.talkwithlead.com/Contents/LiveDemo.aspx\\r\\n\\r\\nWhen targeting leads, speed is essential - there is a 100x decrease in Leads when a Lead is contacted within 30 minutes vs being contacted within 5 minutes.\\r\\n\\r\\nIf you would like to talk to me about this service, please give me a call.  We do offer a 14 days free trial.  \\r\\n\\r\\nThanks and Best Regards,\\r\\nRandy', NULL, NULL),
(210, 1003, '2018-07-27 09:37:19', 'MirkaDoog', 'hentj1h@m48.top', 'Peels help to eliminate from of all old deficiencies dermatological cover. exfoliation effective at any time, shown for skin of any species. After non-traumatic exposure disappear small wrinkles, skin area becomes smooth, smooth. Recovery â€“ 3 days. The middle peeling efficiently copes wrinkles (expression, old, affects small scars, eliminates freckles. \\r\\nRegeneration â€“ 7 days. Deep peeling conducting in the beauty medical facilities. This is maximum efficient operation, although requires long term regeneration â€“ up to month. \\r\\n&lt;a href=http://chemicalpeel.in/chemical-peel-before-and-after&gt;chemical skin peel before and after&lt;/a&gt;', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `eventid` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`eventid`, `name`) VALUES
(1, 'vault'),
(2, 'bars'),
(3, 'beam'),
(4, 'floor'),
(5, 'other');

-- --------------------------------------------------------

--
-- Table structure for table `gymnast`
--

CREATE TABLE `gymnast` (
  `gymnastid` int(11) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `teamid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gymnast`
--

INSERT INTO `gymnast` (`gymnastid`, `name`, `teamid`) VALUES
(10883257, 'Emma Chiarelli', 23440);

-- --------------------------------------------------------

--
-- Table structure for table `meet`
--

CREATE TABLE `meet` (
  `meetid` int(11) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `location` varchar(150) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `meet`
--

INSERT INTO `meet` (`meetid`, `name`, `date`, `location`, `image`) VALUES
(21618, 'Magical Classic', '2018-02-16', 'Orlando, FL', NULL),
(31618, 'Level 6, 9, 10 State', '2018-03-16', 'Fort Myers, FL', NULL),
(51018, 'Level 10 JO Nationals', '2018-06-10', 'Cincinnati, OH', NULL),
(54392, 'Tim Rand Invitational', '2016-03-04', NULL, NULL),
(55175, 'Daytona Beach Open', '2016-02-05', NULL, NULL),
(56551, 'KPAC Cup 2016', '2016-03-10', NULL, NULL),
(56795, '2016 Region 8 Level 9 & 10 Regionals', '2016-04-06', NULL, NULL),
(56901, 'Tampa Bay Turners Invitational', '2016-01-14', NULL, NULL),
(57583, '2016 Florida Level 6,9,10 State Championship', '2016-03-18', NULL, NULL),
(58671, 'Courtney Kupets PINK Invite', '2017-03-03', 'Savannah, GA', NULL),
(58757, 'Chows Challenge', '2017-02-03', 'Galveston, TX', NULL),
(58960, 'Tampa Bay Turners Invite', '2017-01-12', 'Bradenton, FL', NULL),
(59467, 'Sand Dollar', '2017-01-20', 'Orlando, FL', NULL),
(59512, 'JO Nationals', '2017-05-04', 'Indianapolis, IN', NULL),
(59852, '\r\n\r\n2017 Region 8 Level 9 & 10 Championships', '2017-04-07', 'Greensboro, NC', 'images/2017-region8.jpg'),
(62319, 'Level 9/10 & 6 State', '2017-03-17', 'Clearwater, FL', NULL),
(62761, 'Classic Rock Invitational', '2018-02-09', 'Phoenix, AZ', NULL),
(62850, 'Atlanta Centennial Invite', '2018-01-26', 'Atlanta, GA', 'images/atlanta-centennial.jpg'),
(64226, 'Level 9/10 Regionals', '2018-04-13', 'Bradenton, FL', NULL),
(64362, 'Tampa Bay Turners Invite', '2018-01-12', 'Bradenton, FL', NULL),
(65565, 'Courtney Kupets PINK Invite', '2018-03-02', 'Savannah, GA', 'images/cknewlogo_orig.png'),
(121517, 'In-House', '2017-12-15', 'Sun Country', NULL),
(121616, 'In-House', '2016-12-16', 'Sun Country', NULL),
(1000000725, 'IGI Chicago Style Gymnastics Meet', '2016-02-12', NULL, NULL),
(1000000821, '2016 Level 9 Eastern Championships', '2016-04-29', NULL, 'images/level9-eastern-2.png'),
(1000001045, 'Magical Classic', '2017-02-17', 'Orlando, FL', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `picture`
--

CREATE TABLE `picture` (
  `pictureid` int(11) NOT NULL,
  `meetid` int(11) NOT NULL,
  `eventid` int(11) NOT NULL,
  `url` varchar(250) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `picture`
--

INSERT INTO `picture` (`pictureid`, `meetid`, `eventid`, `url`, `description`) VALUES
(4001, 1000000821, 1, 'images/meet-images/043016-vault1.jpg', 'vault'),
(4003, 1000000821, 1, 'images/meet-images/043016-vault3.jpg', 'vault'),
(4007, 1000000821, 5, 'images/meet-images/043016-other2.jpg', 'other'),
(4009, 56795, 2, 'images/meet-images/040816-bars2.jpg', 'bars'),
(4010, 56795, 2, 'images/meet-images/040816-bars3.jpg', 'bars'),
(4013, 56795, 2, 'images/meet-images/040816-bars6.jpg', 'bars'),
(4014, 56795, 2, 'images/meet-images/040816-bars7.jpg', 'bars'),
(4016, 56795, 5, 'images/meet-images/040816-other1.jpg', 'other'),
(4019, 57583, 3, 'images/meet-images/032016-beam2.jpg', 'beam'),
(4020, 57583, 3, 'images/meet-images/032016-beam3.jpg', 'beam'),
(4023, 56551, 2, 'images/meet-images/031116-bars1.jpg', 'bars'),
(4024, 56551, 2, 'images/meet-images/031116-bars2.jpg', 'bars'),
(4026, 56551, 2, 'images/meet-images/031116-bars4.jpg', 'bars'),
(4027, 56551, 2, 'images/meet-images/031116-bars5.jpg', 'bars'),
(4028, 56551, 3, 'images/meet-images/031116-beam1.jpg', 'beam'),
(4029, 56551, 3, 'images/meet-images/031116-beam2.jpg', 'beam'),
(4030, 56551, 3, 'images/meet-images/031116-beam3.jpg', 'beam'),
(4031, 56551, 3, 'images/meet-images/031116-beam4.jpg', 'beam'),
(4033, 56551, 3, 'images/meet-images/031116-beam6.jpg', 'beam'),
(4040, 56551, 1, 'images/meet-images/031116-vault3.jpg', 'vault'),
(4042, 56551, 1, 'images/meet-images/031116-vault5.jpg', 'vault'),
(4043, 62850, 2, 'images/meet-images/012618-bars1.jpg', 'bars'),
(4044, 62850, 2, 'images/meet-images/012618-bars2.jpg', 'bars'),
(4045, 62850, 2, 'images/meet-images/012618-bars3.jpg', 'bars'),
(4046, 62850, 2, 'images/meet-images/012618-bars4.jpg', 'bars'),
(4047, 62850, 2, 'images/meet-images/012618-bars5.jpg', 'bars'),
(4048, 62850, 2, 'images/meet-images/012618-bars6.jpg', 'bars'),
(4049, 62850, 2, 'images/meet-images/012618-bars7.jpg', 'bars'),
(4050, 62850, 2, 'images/meet-images/012618-bars8.jpg', 'bars'),
(4051, 62850, 3, 'images/meet-images/012618-beam1.jpg', 'beam'),
(4052, 62850, 3, 'images/meet-images/012618-beam2.jpg', 'beam'),
(4053, 62850, 3, 'images/meet-images/012618-beam3.jpg', 'beam'),
(4054, 62850, 3, 'images/meet-images/012618-beam4.jpg', 'beam'),
(4055, 62850, 3, 'images/meet-images/012618-beam5.jpg', 'beam'),
(4056, 62850, 4, 'images/meet-images/012618-floor1.jpg', 'floor'),
(4057, 62850, 4, 'images/meet-images/012618-floor2.jpg', 'floor'),
(4058, 62850, 4, 'images/meet-images/012618-floor3.jpg', 'floor'),
(4059, 62850, 4, 'images/meet-images/012618-floor4.jpg', 'floor'),
(4060, 62850, 4, 'images/meet-images/012618-floor5.jpg', 'floor'),
(4061, 62850, 4, 'images/meet-images/012618-floor6.jpg', 'floor'),
(4062, 62850, 3, 'images/meet-images/012618-floor7.jpg', 'floor'),
(4063, 62850, 4, 'images/meet-images/012618-floor8.jpg', 'floor'),
(4064, 62850, 1, 'images/meet-images/012618-vault1.jpg', 'vault');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `resultid` int(11) NOT NULL,
  `gymnastid` int(11) NOT NULL,
  `meetid` int(11) NOT NULL,
  `session` varchar(10) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `division` varchar(25) DEFAULT NULL,
  `vault` float DEFAULT NULL,
  `bars` float DEFAULT NULL,
  `beam` float DEFAULT NULL,
  `floor` float DEFAULT NULL,
  `aa` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`resultid`, `gymnastid`, `meetid`, `session`, `level`, `division`, `vault`, `bars`, `beam`, `floor`, `aa`) VALUES
(2001, 10883257, 1000000821, '4', 9, 'Junior 7', 9.45, 8.725, 8.625, 9.4, 36.2),
(2002, 10883257, 56795, '04', 9, 'Jr 7', 9.1, 9.125, 9, 9.475, 36.7),
(2003, 10883257, 57583, '9', 9, 'L9 s9 grp3', 9.675, 9.5, 9.25, 9.65, 38.075),
(2004, 10883257, 56551, '10', 9, 'Jr A', 8.925, 9.5, 8.925, 9.35, 36.7),
(2005, 10883257, 54392, 'P5', 9, 'L9 p5 grp2', 9.3, 8.8, 9.025, 8.55, 35.675),
(2006, 10883257, 1000000725, '221', 9, 'SrA', 9.2, 9, 8.425, 9.45, 36.075),
(2007, 10883257, 55175, 'A4', 9, 'L9 a4 grp3', 9.4, 9.575, 8.8, 9.1, 36.875),
(2008, 10883257, 58960, '6', 10, 'Group 2', 9.2, 8.475, 8.35, 8.175, 34.2),
(2009, 10883257, 1000001045, 'B7', 10, 'Group 2', 9.3, 9.275, 9.25, 8.975, 36.8),
(2011, 10883257, 62319, '8', 10, 'L10s8 grp2', 9.25, 8.775, 7.95, 9.025, 35),
(2012, 10883257, 59852, '4', 10, 'JRE', 9.2, 9.35, 8.1, 9.2, 35.85),
(2013, 10883257, 121517, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2014, 10883257, 64362, '4', 10, 'Group 2', 9.125, 9.15, 8.7, 9.075, 36.05),
(2015, 10883257, 62850, 'A8', 10, 'Sr A', 9.375, 9.025, 9.175, 9.525, 37.1),
(2016, 10883257, 65565, '8A', 10, 'Sr A', 9.15, 8.55, 9.2, 9.325, 36.225);

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `teamid` int(11) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `coach` varchar(150) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`teamid`, `name`, `coach`, `city`, `email`) VALUES
(23440, 'Sun Country Gymnastics', 'Mary Carlson', 'Gainesville, FL', 'team@suncountrysports.com');

-- --------------------------------------------------------

--
-- Table structure for table `traffic`
--

CREATE TABLE `traffic` (
  `trafficid` int(11) NOT NULL,
  `visits` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `traffic`
--

INSERT INTO `traffic` (`trafficid`, `visits`, `date`) VALUES
(10000, 0, '2017-01-01'),
(10002, 1, '2017-12-18'),
(10003, 8, '2017-12-19'),
(10004, 13, '2017-12-20'),
(10005, 9, '2017-12-21'),
(10006, 7, '2017-12-22'),
(10007, 9, '2017-12-23'),
(10008, 9, '2017-12-24'),
(10009, 6, '2017-12-25'),
(10010, 10, '2017-12-26'),
(10011, 8, '2017-12-27'),
(10012, 13, '2017-12-28'),
(10013, 9, '2017-12-29'),
(10014, 12, '2017-12-30'),
(10015, 16, '2017-12-31'),
(10016, 8, '2018-01-01'),
(10017, 9, '2018-01-02'),
(10018, 12, '2018-01-03'),
(10019, 18, '2018-01-04'),
(10020, 23, '2018-01-05'),
(10021, 10, '2018-01-06'),
(10022, 8, '2018-01-07'),
(10023, 4, '2018-01-08'),
(10024, 16, '2018-01-09'),
(10025, 17, '2018-01-10'),
(10026, 12, '2018-01-11'),
(10027, 23, '2018-01-12'),
(10028, 13, '2018-01-13'),
(10029, 10, '2018-01-14'),
(10030, 9, '2018-01-15'),
(10031, 7, '2018-01-16'),
(10032, 11, '2018-01-17'),
(10033, 10, '2018-01-18'),
(10034, 9, '2018-01-19'),
(10035, 23, '2018-01-20'),
(10036, 10, '2018-01-21'),
(10037, 49, '2018-01-22'),
(10038, 13, '2018-01-23'),
(10039, 6, '2018-01-24'),
(10040, 11, '2018-01-25'),
(10041, 14, '2018-01-26'),
(10042, 7, '2018-01-27'),
(10043, 8, '2018-01-28'),
(10044, 16, '2018-01-29'),
(10045, 14, '2018-01-30'),
(10046, 14, '2018-01-31'),
(10047, 11, '2018-02-01'),
(10048, 9, '2018-02-02'),
(10049, 15, '2018-02-03'),
(10050, 18, '2018-02-04'),
(10051, 8, '2018-02-05'),
(10052, 28, '2018-02-06'),
(10053, 47, '2018-02-07'),
(10054, 41, '2018-02-08'),
(10055, 32, '2018-02-09'),
(10056, 34, '2018-02-10'),
(10057, 28, '2018-02-11'),
(10058, 38, '2018-02-12'),
(10059, 17, '2018-02-13'),
(10060, 42, '2018-02-14'),
(10061, 30, '2018-02-15'),
(10062, 40, '2018-02-16'),
(10063, 36, '2018-02-17'),
(10064, 35, '2018-02-18'),
(10065, 36, '2018-02-19'),
(10066, 33, '2018-02-20'),
(10067, 45, '2018-02-21'),
(10068, 38, '2018-02-22'),
(10069, 33, '2018-02-23'),
(10070, 32, '2018-02-24'),
(10071, 41, '2018-02-25'),
(10072, 36, '2018-02-26'),
(10073, 35, '2018-02-27'),
(10074, 34, '2018-02-28'),
(10075, 35, '2018-03-01'),
(10076, 46, '2018-03-02'),
(10077, 36, '2018-03-03'),
(10078, 58, '2018-03-04'),
(10079, 47, '2018-03-05'),
(10080, 42, '2018-03-06'),
(10081, 35, '2018-03-07'),
(10082, 42, '2018-03-08'),
(10083, 29, '2018-03-09'),
(10084, 18, '2018-03-10'),
(10085, 18, '2018-03-11'),
(10086, 40, '2018-03-12'),
(10087, 12, '2018-03-13'),
(10088, 14, '2018-03-14'),
(10089, 13, '2018-03-15'),
(10090, 20, '2018-03-16'),
(10091, 10, '2018-03-17'),
(10092, 16, '2018-03-18'),
(10093, 24, '2018-03-19'),
(10094, 13, '2018-03-20'),
(10095, 17, '2018-03-21'),
(10096, 20, '2018-03-22'),
(10097, 8, '2018-03-23'),
(10098, 20, '2018-03-24'),
(10099, 11, '2018-03-25'),
(10100, 22, '2018-03-26'),
(10101, 12, '2018-03-27'),
(10102, 15, '2018-03-28'),
(10103, 7, '2018-03-29'),
(10104, 25, '2018-03-30'),
(10105, 13, '2018-03-31'),
(10106, 7, '2018-04-01'),
(10107, 6, '2018-04-02'),
(10108, 19, '2018-04-03'),
(10109, 13, '2018-04-04'),
(10110, 13, '2018-04-05'),
(10111, 1, '2018-04-05'),
(10112, 11, '2018-04-06'),
(10113, 12, '2018-04-07'),
(10114, 11, '2018-04-08'),
(10115, 17, '2018-04-09'),
(10116, 8, '2018-04-10'),
(10117, 14, '2018-04-11'),
(10118, 19, '2018-04-12'),
(10119, 10, '2018-04-13'),
(10120, 18, '2018-04-14'),
(10121, 12, '2018-04-15'),
(10122, 7, '2018-04-16'),
(10123, 15, '2018-04-17'),
(10124, 8, '2018-04-18'),
(10125, 11, '2018-04-19'),
(10126, 1, '2018-04-19'),
(10127, 18, '2018-04-20'),
(10128, 16, '2018-04-21'),
(10129, 5, '2018-04-22'),
(10130, 12, '2018-04-23'),
(10131, 13, '2018-04-24'),
(10132, 8, '2018-04-25'),
(10133, 15, '2018-04-26'),
(10134, 11, '2018-04-27'),
(10135, 8, '2018-04-28'),
(10136, 8, '2018-04-29'),
(10137, 9, '2018-04-30'),
(10138, 13, '2018-05-01'),
(10139, 15, '2018-05-02'),
(10140, 14, '2018-05-03'),
(10141, 18, '2018-05-04'),
(10142, 9, '2018-05-05'),
(10143, 10, '2018-05-06'),
(10144, 12, '2018-05-07'),
(10145, 14, '2018-05-08'),
(10146, 9, '2018-05-09'),
(10147, 19, '2018-05-10'),
(10148, 11, '2018-05-11'),
(10149, 15, '2018-05-12'),
(10150, 6, '2018-05-13'),
(10151, 14, '2018-05-14'),
(10152, 10, '2018-05-15'),
(10153, 10, '2018-05-16'),
(10154, 11, '2018-05-17'),
(10155, 20, '2018-05-18'),
(10156, 16, '2018-05-19'),
(10157, 7, '2018-05-20'),
(10158, 17, '2018-05-21'),
(10159, 10, '2018-05-22'),
(10160, 11, '2018-05-23'),
(10161, 17, '2018-05-24'),
(10162, 19, '2018-05-25'),
(10163, 20, '2018-05-26'),
(10164, 19, '2018-05-27'),
(10165, 23, '2018-05-28'),
(10166, 23, '2018-05-29'),
(10167, 33, '2018-05-30'),
(10168, 16, '2018-05-31'),
(10169, 8, '2018-06-01'),
(10170, 10, '2018-06-02'),
(10171, 10, '2018-06-03'),
(10172, 11, '2018-06-04'),
(10173, 1, '2018-06-04'),
(10174, 9, '2018-06-05'),
(10175, 14, '2018-06-06'),
(10176, 14, '2018-06-07'),
(10177, 23, '2018-06-08'),
(10178, 9, '2018-06-09'),
(10179, 11, '2018-06-10'),
(10180, 15, '2018-06-11'),
(10181, 19, '2018-06-12'),
(10182, 10, '2018-06-13'),
(10183, 21, '2018-06-14'),
(10184, 10, '2018-06-15'),
(10185, 14, '2018-06-16'),
(10186, 17, '2018-06-17'),
(10187, 20, '2018-06-18'),
(10188, 11, '2018-06-19'),
(10189, 19, '2018-06-20'),
(10190, 28, '2018-06-21'),
(10191, 13, '2018-06-22'),
(10192, 11, '2018-06-23'),
(10193, 17, '2018-06-24'),
(10194, 13, '2018-06-25'),
(10195, 12, '2018-06-26'),
(10196, 8, '2018-06-27'),
(10197, 13, '2018-06-28'),
(10198, 16, '2018-06-29'),
(10199, 5, '2018-06-30'),
(10200, 15, '2018-07-01'),
(10201, 15, '2018-07-02'),
(10202, 11, '2018-07-03'),
(10203, 12, '2018-07-04'),
(10204, 17, '2018-07-05'),
(10205, 13, '2018-07-06'),
(10206, 18, '2018-07-07'),
(10207, 18, '2018-07-08'),
(10208, 18, '2018-07-09'),
(10209, 14, '2018-07-10'),
(10210, 18, '2018-07-11'),
(10211, 18, '2018-07-12'),
(10212, 30, '2018-07-13'),
(10213, 25, '2018-07-14'),
(10214, 16, '2018-07-15'),
(10215, 13, '2018-07-16'),
(10216, 16, '2018-07-17'),
(10217, 17, '2018-07-18'),
(10218, 20, '2018-07-19'),
(10219, 22, '2018-07-20'),
(10220, 25, '2018-07-21'),
(10221, 22, '2018-07-22'),
(10222, 20, '2018-07-23'),
(10223, 26, '2018-07-24'),
(10224, 22, '2018-07-25'),
(10225, 18, '2018-07-26'),
(10226, 1, '2018-07-26'),
(10227, 21, '2018-07-27'),
(10228, 20, '2018-07-28'),
(10229, 23, '2018-07-29'),
(10230, 1, '2018-07-29');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `videoid` int(11) NOT NULL,
  `meetid` int(11) NOT NULL,
  `eventid` int(11) NOT NULL,
  `url` varchar(250) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `poster` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`videoid`, `meetid`, `eventid`, `url`, `description`, `poster`) VALUES
(3001, 1000000821, 1, 'media/043016-vault1.mp4', 'vault', '043016-poster-vault1.jpg'),
(3002, 1000000821, 1, 'media/043016-vault2.mp4', 'vault', '043016-poster-vault2.jpg'),
(3005, 1000000821, 4, 'media/043016-floor.mp4', 'floor', '043016-poster-floor.jpg'),
(3006, 56795, 1, 'media/040816-vault1.mp4', 'vault', '040816-poster-vault1.jpg'),
(3007, 56795, 1, 'media/040816-vault2.mp4', 'vault', '040816-poster-vault2.jpg'),
(3008, 56795, 2, 'media/040816-bars.mp4', 'bars', '040816-poster-bars.jpg'),
(3009, 56795, 3, 'media/040816-beam.mp4', 'beam', '040816-poster-beam.jpg'),
(3010, 56795, 4, 'media/040816-floor.mp4', 'floor', '040816-poster-floor.jpg'),
(3011, 57583, 1, 'media/032016-vault1.mp4', 'vault', '032016-poster-vault1.jpg'),
(3012, 57583, 1, 'media/032016-vault2.mp4', 'vault', '032016-poster-vault2.jpg'),
(3013, 57583, 2, 'media/032016-bars.mp4', 'bars', '032016-poster-bars.jpg'),
(3014, 57583, 4, 'media/032016-floor.mp4', 'floor', '032016-poster-floor.jpg'),
(3015, 56551, 1, 'media/031116-vault1.mp4', 'vault', '031116-poster-vault1.jpg'),
(3016, 56551, 1, 'media/031116-vault2.mp4', 'vault', '031116-poster-vault2.jpg'),
(3017, 56551, 2, 'media/031116-bars.mp4', 'bars', '031116-poster-bars.jpg'),
(3018, 56551, 3, 'media/031116-beam.mp4', 'beam', '031116-poster-beam.jpg'),
(3019, 56551, 4, 'media/031116-floor.mp4', 'floor', '031116-poster-floor.jpg'),
(3020, 62850, 1, 'media/012618-vault1.mp4', 'vault', '012618-poster-vault1.jpg'),
(3021, 62850, 2, 'media/012618-bars.mp4', 'bars', '012618-poster-bars.jpg'),
(3022, 62850, 3, 'media/012618-beam.mp4', 'beam', '012618-poster-beam.jpg'),
(3023, 62850, 4, 'media/012618-floor.mp4', 'floor', '012618-poster-floor.jpg'),
(3024, 64362, 1, 'media/011218-vault1.mp4', 'vault', '011218-poster-vault1.jpg'),
(3025, 64362, 2, 'media/011218-bars.mp4', 'bars', '011218-poster-bars.jpg'),
(3026, 64362, 4, 'media/011218-floor.mp4', 'floor', '011218-poster-floor.jpg'),
(3027, 121517, 1, 'media/121517-vault1.mp4', 'vault', '121517-poster-vault1.jpg'),
(3028, 121517, 1, 'media/121517-vault2.mp4', ' vault', '121517-poster-vault2.jpg'),
(3029, 121517, 2, 'media/121517-bars.mp4', 'bars', '121517-poster-bars.jpg'),
(3030, 121517, 3, 'media/121517-beam.mp4', 'beam', '121517-poster-beam.jpg'),
(3031, 121517, 4, 'media/121517-floor.mp4', 'floor', '121517-poster-floor.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`articleid`),
  ADD KEY `authorid` (`authorid`);

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`authorid`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`commentid`),
  ADD KEY `articleid` (`articleid`),
  ADD KEY `videoid` (`videoid`),
  ADD KEY `pictureid` (`pictureid`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`eventid`);

--
-- Indexes for table `gymnast`
--
ALTER TABLE `gymnast`
  ADD PRIMARY KEY (`gymnastid`),
  ADD KEY `teamid` (`teamid`);

--
-- Indexes for table `meet`
--
ALTER TABLE `meet`
  ADD PRIMARY KEY (`meetid`);

--
-- Indexes for table `picture`
--
ALTER TABLE `picture`
  ADD PRIMARY KEY (`pictureid`),
  ADD KEY `meetid` (`meetid`),
  ADD KEY `eventid` (`eventid`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`resultid`),
  ADD KEY `gymnastid` (`gymnastid`),
  ADD KEY `meetid` (`meetid`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`teamid`);

--
-- Indexes for table `traffic`
--
ALTER TABLE `traffic`
  ADD PRIMARY KEY (`trafficid`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`videoid`),
  ADD KEY `meetid` (`meetid`),
  ADD KEY `eventid` (`eventid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `articleid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1006;

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `authorid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `commentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `eventid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `gymnast`
--
ALTER TABLE `gymnast`
  MODIFY `gymnastid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10883258;

--
-- AUTO_INCREMENT for table `meet`
--
ALTER TABLE `meet`
  MODIFY `meetid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000001046;

--
-- AUTO_INCREMENT for table `picture`
--
ALTER TABLE `picture`
  MODIFY `pictureid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4065;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `resultid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2017;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `teamid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23441;

--
-- AUTO_INCREMENT for table `traffic`
--
ALTER TABLE `traffic`
  MODIFY `trafficid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10231;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `videoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3032;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`authorid`) REFERENCES `author` (`authorid`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`articleid`) REFERENCES `article` (`articleid`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`videoid`) REFERENCES `video` (`videoid`),
  ADD CONSTRAINT `comments_ibfk_3` FOREIGN KEY (`pictureid`) REFERENCES `picture` (`pictureid`);

--
-- Constraints for table `gymnast`
--
ALTER TABLE `gymnast`
  ADD CONSTRAINT `gymnast_ibfk_1` FOREIGN KEY (`teamid`) REFERENCES `team` (`teamid`);

--
-- Constraints for table `picture`
--
ALTER TABLE `picture`
  ADD CONSTRAINT `picture_ibfk_1` FOREIGN KEY (`meetid`) REFERENCES `meet` (`meetid`),
  ADD CONSTRAINT `picture_ibfk_2` FOREIGN KEY (`eventid`) REFERENCES `event` (`eventid`);

--
-- Constraints for table `result`
--
ALTER TABLE `result`
  ADD CONSTRAINT `result_ibfk_1` FOREIGN KEY (`gymnastid`) REFERENCES `gymnast` (`gymnastid`),
  ADD CONSTRAINT `result_ibfk_2` FOREIGN KEY (`meetid`) REFERENCES `meet` (`meetid`);

--
-- Constraints for table `video`
--
ALTER TABLE `video`
  ADD CONSTRAINT `video_ibfk_1` FOREIGN KEY (`meetid`) REFERENCES `meet` (`meetid`),
  ADD CONSTRAINT `video_ibfk_2` FOREIGN KEY (`eventid`) REFERENCES `event` (`eventid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
