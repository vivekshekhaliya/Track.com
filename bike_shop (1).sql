-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2022 at 10:13 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bike_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mobile_no` bigint(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `city` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `about` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `email`, `mobile_no`, `gender`, `city`, `image`, `password`, `about`) VALUES
('ronak shekhaliya', 'ronakshekhaliya1@gmail.com', 12, 'Male', 'Amreli', '655921504admin_pic.jpg', '123', '   i am CEO of Track.com company'),
('Vivek', 'v@gmail.com', 8347127939, 'male', 'amreli', 'IMG_8216.JPG', 'Vivek@2002', 'xyz...');

-- --------------------------------------------------------

--
-- Table structure for table `bikes`
--

CREATE TABLE IF NOT EXISTS `bikes` (
`bike_id` int(50) NOT NULL,
  `company` varchar(100) NOT NULL,
  `model_name` varchar(300) NOT NULL,
  `engine_capacity` varchar(100) NOT NULL,
  `mileage` varchar(30) NOT NULL,
  `max_speed` varchar(100) NOT NULL,
  `fuel_type` varchar(20) NOT NULL,
  `fuel_tank_capacity` varchar(20) NOT NULL,
  `front_brack_type` varchar(300) NOT NULL,
  `back_brack_type` varchar(300) NOT NULL,
  `wheel_type` varchar(300) NOT NULL,
  `tyre_type` varchar(300) NOT NULL,
  `seat_height` varchar(20) NOT NULL,
  `width` varchar(20) NOT NULL,
  `height` varchar(20) NOT NULL,
  `length` varchar(20) NOT NULL,
  `standard_warranty` varchar(10) NOT NULL,
  `services` varchar(30) NOT NULL,
  `price` varchar(20) NOT NULL,
  `discount` varchar(20) NOT NULL,
  `emi` varchar(20) NOT NULL,
  `payment_method` varchar(300) NOT NULL,
  `about_bike` varchar(300) NOT NULL,
  `date` varchar(300) NOT NULL,
  `comapny_removed` varchar(10) NOT NULL,
  `bike_remove` varchar(10) NOT NULL,
  `image1` varchar(500) NOT NULL,
  `image2` varchar(500) NOT NULL,
  `image3` varchar(500) NOT NULL,
  `image4` varchar(500) NOT NULL,
  `image5` varchar(500) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=86 ;

--
-- Dumping data for table `bikes`
--

INSERT INTO `bikes` (`bike_id`, `company`, `model_name`, `engine_capacity`, `mileage`, `max_speed`, `fuel_type`, `fuel_tank_capacity`, `front_brack_type`, `back_brack_type`, `wheel_type`, `tyre_type`, `seat_height`, `width`, `height`, `length`, `standard_warranty`, `services`, `price`, `discount`, `emi`, `payment_method`, `about_bike`, `date`, `comapny_removed`, `bike_remove`, `image1`, `image2`, `image3`, `image4`, `image5`) VALUES
(23, 'BMW', 'BMW C400 GT', '350', '28', '150', 'Petrol', '12', 'Drum brakes', 'Drum brakes', 'Simple Still Wheels', 'Tube', '775', '836', '1438', '2210', '3', '1', '1040000', '5', 'Yes', 'Online payment', 'vip bike', '2022-09-20', 'no', 'no', '-1558558798-2115144009bmw-c-400-gt-4.jpg', '495405562-2034674385c400-gt-front-view.jpeg', '-330907445-76988066bmw-c-400-gt-2.jpg', '16518383891112932025bmw-c-400-gt-11.jpg', '-10610392812039032499bmw-c-400-gt-13.jpg'),
(24, 'BMW', 'BMW K1600B', '1649', '15', '160', 'Petrol', '26', 'Disc brakes', 'Disc brakes', 'Aloy Wheels', 'Tubeless', '750', '1000', '1440', '2470', '2', '1', '2900000', '2', 'Yes', 'Online payment', 'powerfull bike', '2022-09-10', 'no', 'no', '-121997841-16309431283E25D3WERXX5664O6ZOGCYEJOQ.jpg', '-82742055017763217925-1511584140-bmw-k-1600-b-launched-in-india-price-specifications-images-2.jpg', '458904830-1177706960baggermap.jpg', '-1138992583-1754604024big-2013-bmw-k-1600-gt-gtl-motorcycle-hire-spain.jpeg', '155111775-1833219142bmw-bmw-k1600gt-bmw-k1600gtl-motorcycle-wallpaper-preview.jpg'),
(25, 'BMW', 'BMW R nineT', '1170', '19', '140', 'Petrol', '18', 'Disc brakes', 'Disc brakes', 'Aloy Wheels', 'Tubeless', '805', '865', '1240', '2105', '3', '1', '1850000', '2', 'Yes', 'Online payment', 'havy bike', '2022-09-01', 'no', 'no', '-1926772111-6300767881034555.jpg', '360083582160562594BMW_NINET_2020-1024x767.jpg', '1084024230644278385BMW_RnineT_pure_1-19.jpg', '881521218458945983bmw-r-ninet-standard20200731231554.jpg', '-891016535971457224P90403349-bmw-r-ninet-pure-teal-blue-metallic-matt-10-2020-600px.jpg'),
(26, 'BMW', 'BMW R310 GS', '313', '30', '110', 'Petrol', '11', 'Disc brakes', 'Disc brakes', 'Aloy Wheels', 'Tubeless', '835', '880', '1230', '2075', '3', '1', '310000', '0', 'Yes', 'Online payment', 'The changes are limited to cosmetic upgrades in the form of new colours and updated graphics. The design, hardware, and specifications remain unaltered. ', '2022-09-08', 'no', 'no', '1077428941-2083821244catsvvv-620x397.jpg', '1653313590285334334thumb.jpeg', '-128814925219657454087966676.jpg', '-136516609912688972017-bmw-g310-gs-wallpaper-preview.jpg', '17543549752948793415f83dacb9e856.jpg'),
(27, 'BMW', 'BMW R1250GS', '1254', '21', '140', 'Petrol', '20', 'Disc brakes', 'Disc brakes', 'Aloy Wheels', 'Tubeless', '850', '953', '1430', '2207', '3', '1', '2055000', '5', 'Yes', 'Online payment', 'BMW Motorrad has introduced the BS6-compliant R 1250 GS in the Indian market. The motorcycle is available in the Pro variant only and it comes equipped with several features.', '2022-09-15', 'no', 'no', '711388637-1263798999BMW-R-1250-GS-13-2021-Speed-Motorcenter.jpg', '12264863942104577849bmw-r-1250-gs-wins-triple-black-version.jpg', '-14462814321670082107Ficha-Tecnica-BMW-R-1250-GS-Adventure-2022-1140x641.jpg', '-9291233864872353322023-BMW-R1250GS-Trophy2.jpg', '-1175561619-1308422890wp4277885.jpg'),
(28, 'BMW', 'BMW R nineT Racer', '1170', '19', '150', 'Petrol', '18', 'Disc brakes', 'Disc brakes', 'Aloy Wheels', 'Tubeless', '805', '865', '1240', '2105', '3', '1', '1850000', '5', 'Yes', 'Online payment', 'The feature list on the motorcycles comprises full LED lighting, adjustable clutch/brake levers, USB charging interface, and a newly designed semi-digital instrument cluster.', '2022-09-17', 'no', 'no', '-1603850428-1890371441X4IOOTI5KRC4FITHUM35AMU45Y.jpg', '1930348861910370594images.jpg', '1975957080962403001P90313433-highRes.jpg', '788531170532415045BMW_R9T_Ilmberger_Carbon_Race_3.jpg', '-1722208638-5252326004bb49724107620646b5d8b790189222.png'),
(29, 'BMW', 'BMW R18', '1802', '17', '180', 'Petrol', '16', 'Drum brakes', 'Drum brakes', 'Simple Still Wheels', 'Tube', '690', '964', '1232', '2440', '3', '1', '1989000', '3', 'Yes', 'Online payment', 'BMW has introduced the R18 in all three variants in India, similar to the international markets.', '2022-09-06', 'no', 'no', '-1222108916-4592693412022-BMW-R18-3.jpg', '100544649-18071483862022-BMW-R18-Classic-First-Look-custom-crusier-bagger-motorcycle.jpg', '2032209147-292396966bmw-r18-standard20200919140914.jpg', '-283224946-9814173BMW-R18-Transcontinental-2022-4-1068x534.jpg', '19505163461565589716ucc-bmw-r-18---right-side-front-angle-view.jpg'),
(30, 'BMW', 'BMW310RR', '312', '30', '110', 'Petrol', '11', 'Disc brakes', 'Disc brakes', 'Aloy Wheels', 'Tubeless', '811', '767', '1135', '2001', '3', '1', '285000', '4', 'Yes', 'Online payment', 'Meanwhile, the braking hardware consists of a single disc at both ends with dual-channel ABS.', '2022-09-08', 'no', 'no', '1235899956-1888632187g310-rr-left-front-three-quarter-5.jpeg', '-1916680563929328954bmw-g310-rr-front-view2.jpeg', '1584646437-2130190385g310-rr-left-rear-three-quarter-4.jpeg', '317188769-2133887993bmw-g310-rr-rear-view0.jpeg', '15098939002008446157065c0f9440a58d2e02d390d822e9381b_original.jpg'),
(31, 'Hero', 'HF Deluxe', '97', '65', '85', 'Petrol', '9', 'Drum brakes', 'Drum brakes', 'Aloy Wheels', 'Tubeless', '805', '720', '1045', '1965', '5', '1', '59999', '1', 'Yes', 'Online payment', 'Hero has also updated the feature list by offering an idle start-stop system on the higher-spec variant. Termed as the ?i3S? system, it helps in saving fuel during brief stops.', '2022-09-06', 'no', 'no', '-19928178971667102451hero-hf-deluxe-motorcycle-1000x1000.jpg', '-777359886-10808946242022-hero-hf-deluxe-Blazing-Red-front-right.jpg', '-80791785-1646874314black-hero-hf-deluxe-with-green-graphics.jpg', '1822141398-1948836477hf-deluxe-i3s-7.jpg', '14444639011564446397hf-deluxe-i3s-19.jpg'),
(32, 'Hero', 'Destini ', '125', '45', '70', 'Petrol', '5', 'Drum brakes', 'Drum brakes', 'Aloy Wheels', 'Tubeless', '778', '729', '1154', '1809', '5', '1', '72660', '2', 'Yes', 'Online payment', 'The Destini 125 gets a handlebar mounted headlamp with LED guide lamps and turn indicators positioned on its front apron. ', '2022-09-11', 'no', 'no', '36293677474224264855643_Hero-Destini-125LX_001.jpg', '113004671366593384255646_Hero-Destini-125LX_002.jpg', '1554975731-1352759923Hero-Destini-125-Platinum--500x261.jpg', '-320694520-15113309847624_2019_Hero_Destiny_125_001.jpg', '-436408675-301477335new-hero-destini-125-xtec-price-in-india.jpg'),
(33, 'Hero', 'Glamour', '124', '55', '95', 'Petrol', '10', 'Drum brakes', 'Drum brakes', 'Aloy Wheels', 'Tubeless', '793', '720', '1074', '2051', '5', '1', '79000', '2', 'Yes', 'Online payment', 'The BS6 Hero Glamour got a subtle aesthetic makeover. The front fascia now gets an updated headlight with DRLs on either side.', '2022-09-01', 'no', 'no', '-9651374961298419068Hero_Glamour_Xtec_1626771229624_1629116129823.jpeg', '932206456-536126718new-hero-glamour-black-and-accent-price-in-india.jpg', '21314657301559335728Hero-Glamour-7.jpg', '1821633766-1444356356hero-glamour-blaze-pic-3.jpg', '-1712984068396233139new-hero-glamour-front-3-quarter-view.jpg'),
(34, 'Hero', 'Maestro', '109', '48', '80', 'Petrol', '5', 'Drum brakes', 'Drum brakes', 'Aloy Wheels', 'Tubeless', '770', '710', '1165', '1780', '5', '1', '49999', '2', 'Yes', 'Online payment', 'The Hero Maestro is a scooter meant for the men. It is bigger and more stylish than the Pleasure- the scooter meant for women. ', '2022-09-03', 'no', 'no', '5204740691742893223599-5997179_white-hero-maestro-edge-hd-png-download.png', '811668338-1224067157maestro-right-front-three-quarter-16.jpeg', '3847626821597944293hero-maestro-edge-110-rear-view.jpg', '-878862721545615346v_hero-maestro-edge-vx_9.jpg', '-18904840921605704141undefined-pearl-fadeless-white-1599677337495.jpg'),
(35, 'Hero', 'Passion Pro', '110', '55', '90', 'Petrol', '10', 'Disc brakes', 'Drum brakes', 'Aloy Wheels', 'Tubeless', '799', '715', '1113', '2036', '5', '1', '74000', '1', 'Yes', 'Online payment', ' At the rear, the under seat panels and tail lamp also boast of a sharper design now.', '2022-09-05', 'no', 'no', '-910842205193573763411.new_.jpg', '1483879633-1854306263hero-passion-pro-bs6-pic-4.jpg', '-1541406138-2131086720Hero-Passion-XPro-Image-Gallery-11-.jpg', '16747279131932795078Hero-Passion-Xpro-Xtec-Black1.jpg', '-18247583-796824081wp11337812.jpg'),
(36, 'Hero', 'Pleasure', '102', '50', '77', 'Petrol', '5', 'Drum brakes', 'Drum brakes', 'Aloy Wheels', 'Tube', '760', '705', '1115', '1750', '5', '1', '48700', '2', 'Yes', 'Online payment', 'The Hero Pleasure is a light and zippy scooter, built keeping the fairer sex in mind. ', '2022-08-30', 'no', 'no', '-14236237521744432110hero-pleasure-plus-xtec-pic-17.jpg', '1811838868281479365hero-pleasure-plus-platinum-pic-1.jpg', '-9176832172079011342hero-pleasure-plus-platinum-pic-4.jpg', '1117860568304244827hero-pleasure-plus-xtec-bs6-matte-vernier-grey-270675999-jmc78.png', '1093063269727652128hero-pleasure-plus-xtec-pic-11.jpg'),
(37, 'Hero', 'Splendor', '97', '60', '90', 'Petrol', '9', 'Drum brakes', 'Drum brakes', 'Aloy Wheels', 'Tubeless', '785', '720', '1052', '2000', '5', '1', '84000', '0', 'Yes', 'Online payment', 'The Splendor Plus continues to be Hero Motocorp?s best-selling product. ', '2022-09-06', 'no', 'no', '-6558388241266578581hero-splendor-black-accent-edition-beetle-red.jpg', '-1735335998698651381hero-splendor-black-accent-edition-firefly-gold.jpg', '8274249381231865086hero-splendor-plus-black-and-accent-pic-1.jpg', '1587408904-181229310hero-splendor-plus-left-side-view3.jpeg', '-906764534-1463285894undefined-black-with-silver-1574509851256.jpg'),
(38, 'Hero', 'Xpulse 200T', '199', '38', '120', 'Petrol', '13', 'Disc brakes', 'Drum brakes', 'Aloy Wheels', 'Tubeless', '799', '807', '1090', '2120', '5', '1', '124000', '2', 'Yes', 'Online payment', 'The styling and cycle parts remain similar to the BS4 version .', '2022-08-31', 'no', 'no', '969274215-170221688heromotoxpulse1.png', '-7143904631059044452x.pagespeed.ic_.1oxbZF3Y5E.jpg', '16750297252007166730hero-xpulse-200-sports-red.png', '-160066618290392933hero-xpulse-200t.jpg', '97279937-1237007093Hero-Xpulse-200T-Available-Colors-Black.png'),
(39, 'Honda', 'Activa 6G', '109', '48', '85', 'Petrol', '5', 'Disc brakes', 'Drum brakes', 'Aloy Wheels', 'Tubeless', '692', '697', '1156', '1833', '3', '1', '73000', '1', 'Yes', 'Online payment', 'The Honda Activa has been the highest selling scooter in India for years now.', '2022-09-13', 'no', 'no', '-537405716891686528honda-activa-premium-edition-front-left-2d0f.jpg', '384822315-1387926856honda-activa-6g-6.jpg', '1866410734-1320488682honda-activa-premium-edition-blue-db05.jpg', '11767559161551679670Honda_Activa_Premium_Edition_1660747967258_1660747984609_1660747984609.png', '179490752-467575682honda-activa-6g-5.jpg'),
(40, 'Honda', 'Activa 125', '124', '47', '90', 'Petrol', '5', 'Disc brakes', 'Drum brakes', 'Aloy Wheels', 'Tubeless', '712', '707', '1170', '1850', '3', '1', '78000', '2', 'Yes', 'Online payment', 'The hardware comprises of telescopic front forks and three-step adjustable spring-loaded suspension at the back.', '2022-09-08', 'no', 'no', '-212514438542063295Honda_Activa_125_Premium_Editi_0.jpg', '1827764063-362883927Pearl_Amazing_White_and_Matte_Magnificent_Copper_Metallic_1638870675851_1638958060572.jpg', '-1408479121-2054422341honda-activa-125-bs6-pic-2.jpg', '-445671521-1353436250Honda-Activa-125-Rear-threequarter-66813.jpg', '390342641574304580Honda_Activa_125_Premium_Editi_0.jpg'),
(41, 'Honda', 'CB350RS', '348', '36', '150', 'Petrol', '15', 'Disc brakes', 'Disc brakes', 'Aloy Wheels', 'Tubeless', '800', '804', '1097', '2171', '3', '1', '202000', '3', 'Yes', 'Online payment', ' The new Honda CB350RS will be sold via BigWing Topline and BigWing dealerships across India.', '2022-09-01', 'no', 'no', '-1521105524-459001520Honda_CB_1100_RS_2018_360_720_50-1.jpg', '545861501-607966558honda-cb350-rs-export-new-colours-2-600x428.jpg', '1441645360-166634334honda-cb-350-rs-radiant-red-metallic.png', '583778261-575185212honda-cb350rs-standard20210216125021.jpg', '-1179174281-831266884honda-cb-350-rs.jpg'),
(42, 'Honda', 'Dream Yuga', '109', '63', '95', 'Petrol', '10', 'Drum brakes', 'Drum brakes', 'Aloy Wheels', 'Tubeless', '820', '733', '1095', '2022', '3', '1', '78000', '1', 'Yes', 'Online payment', 'The Dream Yuga is available in two variants currently, with and without CBS. Electric start and alloy wheels are standard fitment. ', '2022-09-02', 'no', 'no', '17856600871401357499medium_Black_With_Lemon_Ice_Yellow_Graphics_9bb18db57e.png', '-1229392452-1579520802honda-dreamyuga.jpg', '471062550-1853475500Honda-Dream-Yuga-Front-124425.jpg', '81649819318351838Honda-Dream-Yuga-Rear-124421.jpg', '991456496700439272AmitDey_HondaDreamYuga_8.jpg'),
(43, 'Honda', 'SP Shine', '125', '60', '100', 'Petrol', '11', 'Disc brakes', 'Drum brakes', 'Aloy Wheels', 'Tubeless', '790', '785', '1103', '2020', '3', '1', '84000', '0', 'Yes', 'Online payment', 'Derived from the existing CB Shine SP sold in the market, the SP 125 is HMSI?s first BS6 compliant motorcycle in the company?s portfolio.', '2022-09-03', 'no', 'no', '725578481322537867honda-sp-125-disc-images.jpg', '8249990001295542938sp-125-right-front-three-quarter-2.jpeg', '-1858903154-708321212sp-125-left-rear-three-quarter-6.jpeg', '-14434005261731118909Honda-SP-125-Colours-scaled.jpg', '696578013-463601012honda-sp-125-11-1653299538.jpg'),
(44, 'Honda', 'Shine', '124', '55', '102', 'Petrol', '10', 'Disc brakes', 'Drum brakes', 'Aloy Wheels', 'Tubeless', '791', '737', '1116', '2046', '3', '1', '80000', '1', 'Yes', 'Online payment', 'The CB Shine is a 125cc commuter motorcycle developed by Honda for the mass market segment.', '2022-09-04', 'no', 'no', '-1886090620-990185074colors1.png', '-1145542158-1549116579360-10007-7.png', '697459170130145550shine-left-front-three-quarter.jpeg', '-149555599310918215027.png', '-14074396472005438251cbshine-angleview-17.jpg'),
(45, 'Honda', 'PCX 125', '124', '45', '80', 'Petrol', '7', 'Disc brakes', 'Drum brakes', 'Aloy Wheels', 'Tubeless', '790', '740', '1105', '1935', '3', '1', '100000', '2', 'Yes', 'Online payment', 'Honda India unveiled the PCX 125 scooter at the 2014 Auto Expo. This was the first premium scooter ever showcased by the Japanese manufacturer in India.', '2022-09-05', 'no', 'no', '2084819269-1623000184honda-pcx125.jpg', '-70386619-348398053honda-pcx-1464785926.jpg', '-531333243324132145honda-pcx-125-pic-6.jpg', '2135973322-95352117honda-pcx-electric-patents.jpg', '-1260351944458540713M9Ma97P3.jpg'),
(46, 'Honda', ' X-Blade', '162', '50', '120', 'Petrol', '12', 'Disc brakes', 'Drum brakes', 'Aloy Wheels', 'Tubeless', '795', '786', '1115', '2013', '3', '1', '115000', '1', 'Yes', 'Online payment', 'The X-Blade is a sporty commuter based on Honda?s 160cc platform which also underpins the Unicorn and the CB Hornet 160R.', '2022-09-16', 'no', 'no', '988781136527753136Honda_X-Blade_2021_1000_0001.jpg', '1383096625-346730801Enquiry_bike.png', '2140984723-2103166703BS6_Honda_XBlade.jpg', '-1956530598-178556021330-removebg-preview.png', '1541505012235881600x-blade-right-rear-three-quarter.jpeg'),
(47, 'Bajaj', 'Avenger', '160', '45', '105', 'Petrol', '13', 'Disc brakes', 'Disc brakes', 'Aloy Wheels', 'Tubeless', '737', '806', '1070', '2210', '5', '1', '120000', '1', 'Yes', 'Online payment', 'The blacked-out theme has been continued featuring black powder coated components including the handlebar, exhaust, grab-rail and indicators. ', '2022-09-21', 'no', 'no', '-1840277188-16440577479714151df1cffb4cf479c696e6e1714a.png', '4083617631589489113bajaj+avenger+220+street+wallpaper+efdasdas.png', '-11699362961870421254bajaj-avenger-street-160-bs-vi20200211171236.jpg', '1413805261-1015781534a95831f87a0dab7fce7e5708825dda2a.jpg', '-12439256242046934003ea47a5dd08dac03b38e0ab8010ee71b9.jpg'),
(48, 'BMW', 'Boxer', '97', '60', '80', 'Petrol', '8', 'Drum brakes', 'Drum brakes', 'Simple Still Wheels', 'Tube', '780', '680', '1020', '2040', '3', '1', '55000', '3', 'Yes', 'Online payment', 'The blacked-out theme has been continued featuring black powder coated components including the handlebar, exhaust, grab-rail and indicators. ', '2022-09-22', 'no', 'yes', '207179195510630979761-BM-150-x2-798x466.png', '-1731142212493130242bajaj-boxer.jpg', '-7503471551371061134bajaj-boxer-bm-100-1.jpg', '-230940639837065756bajaj-boxer-x150-pic-1.jpg', '-2003564851-815351829overview.jpg'),
(49, 'Bajaj', 'Platina', '102', '72', '90', 'Petrol', '11', 'Drum brakes', 'Drum brakes', 'Simple Still Wheels', 'Tube', '807', '713', '1100', '2006', '5', '1', '52000', '1', 'Yes', 'Online payment', 'The Bajaj Platina 100 is an entry-level commuter motorcycle specially developed for the rural markets.', '2022-09-28', 'no', 'no', '-212890571930954431500 (1).png', '-6901411-24274109218-2180490_bajaj-platina-100cc-price-hd-png-download.png', '13452673201695296829bajaj-platina-motorcycle-1000x1000.png', '6664036261167935564platina-100-left-front-three-quarter.jpeg', '1834417741-238450225platina-100-right-rear-three-quarter.jpeg'),
(50, 'Bajaj', 'Boxer', '97', '60', '80', 'Petrol', '10', 'Drum brakes', 'Drum brakes', 'Simple Still Wheels', 'Tube', '780', '670', '1020', '2010', '5', '1', '49000', '3', 'Yes', 'Online payment', 'The Bajaj Boxer 100 is an entry-level commuter motorcycle specially developed for the rural markets.', '2022-09-20', 'no', 'no', '-7004983032354281201-BM-150-x2-798x466.png', '1341099729-418472039bajaj-boxer.jpg', '11998425671967679269bajaj-boxer-bm-100-1.jpg', '1541317530-1280486445bajaj-boxer-x150-pic-1.jpg', '1185650410319515648overview.jpg'),
(51, 'Bajaj', 'Chetak', '100', '80', '70', 'Petrol', '5', 'Drum brakes', 'Drum brakes', 'Simple Still Wheels', 'Tube', '750', '737', '1010', '2270', '3', '1', '110000', '1', 'Yes', 'Online payment', 'Before Bajaj Auto became popular for its modern range of motorcycles', '2022-09-10', 'no', 'no', '-26333238-198220091bajaj-chetak-electric-48.jpg', '-78447263-975293445Bajaj-Chetak-Electric-Scooter-Side-view.jpeg', '-882341278-1228439591bajaj-chetak-premium-indigo-metallic-side-profile-bc61.jpg', '-16315088091222656261chetak_thumbnail.jpg', '-1323777087-618729608review-of-bajaj-chetak-electric-scooter-advanced-elegant.jpg'),
(52, 'Bajaj', 'City', '110', '67', '85', 'Petrol', '10', 'Drum brakes', 'Drum brakes', 'Simple Still Wheels', 'Tube', '810', '710', '1040', '2280', '5', '1', '65000', '1', 'Yes', 'Online payment', '\r\nThe feature list includes a halogen headlight and taillight, bulb-type turn indicators, LED DRL, an analogue speedometer, and a USB charger as standard.', '2022-09-06', 'no', 'no', '1517705250-1980374674bajaj-ct-100-front-3-quarter-4856.jpg', '-1713639334332103411bajaj-ct-100-left-side-faff.jpg', '1748673721-613323167bajaj-ct125x-front-3-quarter-view.jpg', '-4631709411402833695profile1661480668.png', '18725499991007446190undefined-matte-olive-green-with-yellow-decals-1587632769704.jpg'),
(53, 'Bajaj', 'Discover', '145', '52', '110', 'Petrol', '10', 'Disc brakes', 'Drum brakes', 'Simple Still Wheels', 'Tubeless', '795', '715', '1070', '2038', '3', '1', '60000', '0', 'Yes', 'Online payment', 'The semi-fairing of the Discover is sure to attract a lot of customers looking for a commuter motorcycle with an extra bit of flair. ', '2022-09-04', 'no', 'no', '2037809106548982782015-Bajaj-Discover-Mileage.jpg', '155113623420891491372015-Bajaj-Discover-Price.jpg', '-1426896651827216250bajaj-discover-125-4.jpg', '-12876802771310123063bajaj-discover-125-img02.jpg', '-1600034287854161452m_bajaj-discover-100_9.jpg'),
(54, 'Bajaj', 'XCD', '125', '60', '90', 'Petrol', '10', 'Drum brakes', 'Drum brakes', 'Simple Still Wheels', 'Tube', '740', '710', '1020', '2080', '5', '1', '60000', '0', 'Yes', 'Online payment', 'The semi-fairing of the XCD is sure to attract a lot of customers looking for a commuter motorcycle with an extra bit of flair. ', '2022-09-01', 'no', 'no', '-748814448-1252992609bajaj-xcd_1.jpg', '18469317572134483347bajaj-xcd_3.jpg', '-880370117-938674236bajaj-xcd_4.jpg', '4037761751085785765BAJAJ-XCD-125-DTS-Si-13959_1.jpg', '3269716741897364134e6338744835327.58203ea3f24b7.jpg'),
(55, 'Bajaj', 'Pulsar', '124', '50', '100', 'Petrol', '11', 'Disc brakes', 'Drum brakes', 'Simple Still Wheels', 'Tubeless', '790', '755', '1060', '2055', '3', '1', '82000', '0', 'Yes', 'Online payment', 'The Pulsar 125 is the most affordable Pulsar one can buy in India. ', '2022-09-28', 'no', 'no', '870444332-2090626701Bajaj-Pulsar-250-Black-N250.jpg', '1363437916245478993bajaj-pulsar-n250-ui-right-side-view_600x400.jpg', '13185921331453977244bajaj-pulsar-ns125-bs6-pic-1.jpg', '196797415-1309513061Pulsar-N250-6.png', '1577311643-1543416770Pulsar-N250-Bike-Amba-Bajaj-1.png'),
(56, 'TVS', 'Apache RTR', '159', '45', '108', 'Petrol', '13', 'Disc brakes', 'Disc brakes', 'Aloy Wheels', 'Tubeless', '790', '730', '1105', '2085', '5', '1', '130000', '0', 'Yes', 'Online payment', 'TVS Motor Company has launched the 2022 Apache RTR 160 in the Indian market.', '2022-09-08', 'no', 'no', '98815372073448815160792234.jpg', '-844382463703236676fastbikesindia_2021-10_aa2a0df1-58cb-4a57-a575-66280f6c88f3_Sport_Mode___677x_580_Pix__1_.jpg', '7513913261479927853l200_25291623671210.jpg', '18241706061447034565tvs-apache-160-right-side6.jpeg', '-1437041488-1804602363tvs-apache-rtr-180-white-1486702475144.jpg'),
(57, 'TVS', 'Redeon', '109', '65', '90', 'Petrol', '10', 'Disc brakes', 'Drum brakes', 'Aloy Wheels', 'Tubeless', '730', '705', '1080', '2025', '5', '1', '70000', '0', 'Yes', 'Online payment', 'There is the Red and Black option as well as a Blue and Black option. Both come with a dual-tone fuel tank with the rest of the motorcycle in black.', '2022-09-05', 'no', 'no', '-70355931537672976911.png', '703734712192193234017.png', '567280942-1899592293radeon-front-view-3.jpeg', '1052152091133844852340-406072_tvs-radeon-white-color-tvs-radeon-bike-price.png', '1710496022-2062149570radeon-rear-view-18.jpeg'),
(58, 'TVS', 'Star City', '110', '65', '90', 'Petrol', '10', 'Drum brakes', 'Drum brakes', 'Aloy Wheels', 'Tube', '785', '700', '1058', '2005', '3', '1', '50000', '0', 'Yes', 'Online payment', 'As reported by Star City owners, the real mileage of TVS Star City is 65 kmpl.', '2022-09-09', 'no', 'no', '-13156573992134339227led-headlamp_720x540.jpg', '7453158902103784593TVS Star City Plus hd pics.png', '-378315876-1709735605TVS-Sport.jpg', '-69699603191764874tvs-sport-front-side-view.jpg', '-15098584459623704tvs-star-city-plus-1.png'),
(59, 'TVS', ' Jupiter', '109', '50', '80', 'Petrol', '4', 'Disc brakes', 'Drum brakes', 'Simple Still Wheels', 'Tubeless', '765', '650', '1115', '1880', '3', '1', '65000', '0', 'Yes', 'Online payment', 'The BS6 upgrade of TVS Jupiter brought the Ecothrust Fuel injection (ET-Fi) technology to the 110cc, single-cylinder, air-cooled engine. ', '2022-09-07', 'no', 'no', '77173614423848859723.png', '1708044138-47515439141uofIJwXyL.jpg', '-187011812-192192218166-664596_tvs-jupiter-image-tvs-jupiter.png', '1649781692-127847722666-664863_tvs-jupiter-special-edition-launched-in-india-jupiter.png', '-200518968280222887166-665395_tvs-jupiter-tvs-ntorq-125-vs-jupiter.png'),
(60, 'TVS', 'Raider ', '124', '56', '97', 'Petrol', '11', 'Disc brakes', 'Drum brakes', 'Aloy Wheels', 'Tubeless', '780', '785', '1028', '2070', '5', '1', '90000', '0', 'Yes', 'Online payment', 'TVS Motor Company has updated its portfolio with the launch of a new premium commuter motorcycle, the Raider.', '2022-09-22', 'no', 'no', '-65089660850539050114-1.png', '-148088830-1925066204tvs-raider-d-right-side-view_600x400.jpg', '1888982083-147325447016-1.png', '-36270301399291517820-1.png', '-135173554814924469rsz-ib-red-s-01.png'),
(61, 'TVS', 'Victor', '109', '60', '96', 'Petrol', '10', 'Drum brakes', 'Drum brakes', 'Aloy Wheels', 'Tubeless', '780', '750', '1090', '1980', '3', '1', '58000', '0', 'Yes', 'Online payment', 'The front of the motorcycle gets a curvy headlamp and small visor to cover the instrument cluster.', '2022-09-03', 'no', 'no', '1951115291738580764762-7621628_tvs-victor-silver-colour-tvs-victor-premium-edition.png', '1558372939-56252986tvs-victor-front-view.jpg', '-1993052302421749032tvs-victor-110-headlight.jpg', '1006705962865974515TVS-Victor-Black.jpg', '-12602520911828481140tvs-victor-premium-edition-pic-2.jpg'),
(62, 'TVS', 'Scooty Pep Plus', '87', '50', '60', 'Petrol', '4', 'Drum brakes', 'Drum brakes', 'Simple Still Wheels', 'Tube', '768', '590', '1065', '1735', '3', '1', '60000', '0', 'Yes', 'Online payment', 'The Scooty Pep is an entry-level scooter by TVS introduced in 2003 that is aimed at young Indian women.', '2022-09-10', 'no', 'no', '687458656307029389scooty-right-front-three-quarter.jpeg', '-8698244047001364502016-TVS-Scooty-Pep-Plus-gorgeous-grey.png', '20436920601674837571tvs-2016-scooty-pep-plus-launch-nero-blue-photo-image-india-m2_720x540.jpg', '308370414200861759710 (1).png', '199602461379038046116-500x500.jpg'),
(63, 'TVS', 'Ronin', '226', '40', '120', 'Petrol', '14', 'Disc brakes', 'Disc brakes', 'Aloy Wheels', 'Tubeless', '795', '805', '1170', '2040', '5', '1', '150000', '0', 'Yes', 'Online payment', 'The new Ronin 225 is TVS Motor Company?s first ever neo-retro scrambler-style motorcycle. It is offered in three variants and they are differentiated by their colour schemes.', '2022-08-30', 'no', 'no', '1952663877612314734configurator-bike.png', '-69282573992120512tvs-ronin-dawn-orange.png', '1483877322-1150516242tvs-ronin-name-registered-trademark-cruiser-2-1200x900.jpg', '1942911316-1482282381gallery-big-14.jpg', '1994490380-1003982287headlamp-tsl-01.jpg'),
(64, 'Royal Enfield', 'Bullet 350', '346', '38', '110', 'Petrol', '13', 'Disc brakes', 'Drum brakes', 'Aloy Wheels', 'Tubeless', '800', '810', '1120', '2170', '3', '1', '1540000', '0', 'Yes', 'Online payment', 'The Bullet 350 is Royal Enfield?s oldest and entry-level offering that is available in three different variants.', '2022-03-03', 'no', 'no', '7380747665087882301-halycon-grey.png', '-425148830-2131006671Royal-Enfield-Bullet-350-Twinspark-Front-threequarter-86208.jpg', '-863916569-1497527595royal-enfield-bullet-350-ks--x--efi-bs-vi20200401130113.jpg', '-1811451551421116583Royal-Enfield-Bullet-350-Twinspark-Front-threequarter-86208.jpg', '672477221178479826royal-enfield-classic-350-silver-1000x1000.png'),
(65, 'Royal Enfield', 'Classic 350', '349', '34', '115', 'Petrol', '13', 'Disc brakes', 'Drum brakes', 'Aloy Wheels', 'Tubeless', '805', '785', '1090', '2145', '3', '1', '190000', '0', 'Yes', 'Online payment', 'The 2021 Royal Enfield Classic 350 has been launched in the Indian market with several styling and mechanical upgrades over its predecessor.', '2022-09-22', 'no', 'no', '1305741581-1222003315714H1panwSL._SL1500_.jpg', '1808358367-204307512Royal-Enfield-Classic-350-red-1-12-maisto-diecast-scale-model-car-india-scaleartsin-1.jpg', '-1430349561-237268480royal-enfield-classic-350-stealth-black-price.jpg', '-12123287521386512453SBlack.png', '1409879357-1104613817royal-enfield-classic-350-ash-white-500x500.png'),
(66, 'Royal Enfield', 'Himalayan', '411', '30', '120', 'Petrol', '15', 'Disc brakes', 'Disc brakes', 'Simple Still Wheels', 'Tube', '800', '840', '1370', '2190', '3', '1', '215000', '0', 'Yes', 'Online payment', 'The navigation system is powered by Google Maps and it works with the Royal Enfield smartphone application to give turn-by-turn directions. ', '2022-08-31', 'no', 'no', '1024107731-5842124582021-Royal-Enfield-Himalayan-Granite-Black-2.jpg', '7640291281706510869bs-vi-royal-enfield-himalayan-lake-blue-e74f.jpg', '-2634960471292025291himalayan-650-twin-Visordown (1).jpg', '966547456-1337131184Himalyan-Adventure-Kit-Black-1-1.jpg', '-931944291705001962Royal-Enfield-Himalayan-Sleet-2018-Rear-Quarter-Studio.jpg'),
(67, 'Royal Enfield', 'Continental', '648', '25', '170', 'Petrol', '12', 'Disc brakes', 'Drum brakes', 'Simple Still Wheels', 'Tubeless', '793', '744', '1024', '2122', '3', '1', '305000', '0', 'Yes', 'Online payment', 'The Continental is the sportier of the two models based on the 650cc twin cylinder platform from Royal Enfield. ', '2022-09-23', 'no', 'no', '-1198520871-6209579112000000004.jpg', '95270944-1514301129Mr-Clean-rear-view.png', '16569322731940278041royal-enfield-continental-gt-650-twin-640.jpg', '135598978397999951side-view.png', '-1101935455-1114500087Ventura-Storm-front-view.png'),
(68, 'Royal Enfield', 'Interceptor', '648', '23', '170', 'Petrol', '13', 'Disc brakes', 'Drum brakes', 'Aloy Wheels', 'Tubeless', '804', '789', '1165', '2122', '3', '1', '289000', '0', 'Yes', 'Online payment', 'he Interceptor 650 is one of the most value for money bikes one can buy in India.', '2022-09-15', 'no', 'no', '7403822112336504332-604.jpg', '1004117614343303082Baker-Express-rear-view.png', '-2010164658-121029411Canyon-Red-side-view.png', '-792480105-450260830royal-enfield-interceptor-650-5448.jpeg', '-72590751733956770Sunset-Strip-Rear-2.png'),
(69, 'Royal Enfield', 'Meteor 350', '349', '35', '150', 'Petrol', '12', 'Disc brakes', 'Drum brakes', 'Aloy Wheels', 'Tubeless', '745', '845', '1140', '2140', '3', '1', '210000', '0', 'Yes', 'Online payment', 'The Meteor 350 is the first motorcycle from Royal Enfield?s new J platform.', '2022-09-02', 'no', 'no', '1361912800-4676511901-yellow.png', '-596085013-183459531820-brown.png', '-189166334420443910382022-RE-Meteor-350-Matte-Green.jpg', '6564227171266709397meteor-350-black.jpg', '-494580249-942246519Royal-Enfield-Meteor-350-Stellar-Black.jpg'),
(70, 'Royal Enfield', ' Scram 411', '411', '32', '138', 'Petrol', '15', 'Disc brakes', 'Drum brakes', 'Aloy Wheels', 'Tubeless', '795', '840', '1165', '2160', '5', '1', '205000', '0', 'Yes', 'Online payment', 'The Scram 411 borrows its styling cues from the Himalayan. It gets a round headlight although the unit looks a tad different with the cowl and the bezel.', '2022-09-03', 'no', 'no', '-496502122150559715620-graphite-blue.png', '-12907447841761943962023-royal-enfield-scram-411-first-look-urban-scrambler-motorcycle-1.jpg', '-1360593788-3433101652000000001.jpg', '1689973597-1471463901Scram_Graphite_Red_06.jpg', '16374462041530039971Scram_Graphite-Red_04.jpg'),
(71, 'Royal Enfield', 'Hunter 350', '349', '36', '130', 'Petrol', '12', 'Disc brakes', 'Drum brakes', 'Aloy Wheels', 'Tubeless', '800', '800', '1055', '2055', '5', '1', '150000', '0', 'Yes', 'Online payment', 'The Royal Enfield Hunter will soon join the Chennai-based two-wheeler manufacturer?s portfolio and compete in the 350cc segment.', '2022-09-04', 'no', 'no', '13835451-164127018993450977.jpg', '1075172106-8023599893589677.jpg', '-10101140891926786370hunter-35025.jpg', '-1647445414813809326Royal-Enfield-Hunter-350-White-Rebel-Blue.jpg', '-33576447-16748493242021-royal-enfield-hunter-rendering-b8d2.jpg'),
(72, 'Yamaha', ' FZ X', '149', '48', '115', 'Petrol', '10', 'Disc brakes', 'Drum brakes', 'Simple Still Wheels', 'Tubeless', '810', '785', '1115', '2020', '3', '1', '135000', '0', 'Yes', 'Online payment', 'India Yamaha Motors has expanded its FZ series with the launch of the new FZ-X in our market. ', '2022-09-04', 'no', 'no', '33774077-1008164545yamaha-fx-z.png', '-1618114576383658690yamaha-fx-z.png', '1505719240-527091717YAMAHA-FZX.jpg', '1544586424733191110product-jpeg-1000x1000.jpg', '264590221-559096388yamaha-fzx-renders-official-14-825x1125.jpg'),
(73, 'Yamaha', 'FZ25', '249', '38', '130', 'Petrol', '14', 'Disc brakes', 'Drum brakes', 'Aloy Wheels', 'Tubeless', '795', '775', '1075', '2015', '3', '1', '147000', '0', 'Yes', 'Online payment', 'Yamaha Motor India has launched the 2022 FZ 25 in the Indian market.', '2022-09-06', 'no', 'no', '496149741619177697yamaha-fz-25-249-cc-warrior-white-motorcycle-500x500.jpg', '565479171-172735491684581117.jpg', '-1202956428-79643501yamaha-fz-s-fi-v2-pic-7.jpg', '-1837119024-124905653237.png', '15114649901820632603Yamaha_FZ_25_vs_Dominar_250.png'),
(74, 'Yamaha', 'Fascino 125', '125', '50', '90', 'Petrol', '5', 'Drum brakes', 'Drum brakes', 'Simple Still Wheels', 'Tube', '780', '685', '1150', '1920', '3', '1', '78000', '0', 'Yes', 'Online payment', 'The Fascino 125 Fi Hybrid is available in a total of nine colour options. ', '2022-09-02', 'no', 'no', '-1570152017-912628999Fascino-large.jpg', '-1373432415136196277315.jpg', '4193197821276536025Yamaha-Fascino-125-7.jpg', '-19608618441527486689-14 (1).jpg', '13554800282121794521yamaha-standard-1464785334.jpg'),
(75, 'Yamaha', 'Ray ZR', '125', '52', '90', 'Petrol', '5', 'Disc brakes', 'Drum brakes', 'Aloy Wheels', 'Tubeless', '785', '685', '1190', '1880', '3', '1', '82000', '0', 'Yes', 'Online payment', 'The new Yamaha Ray ZR Hybrid range has arrived in the Indian market. ', '2022-09-01', 'no', 'no', '-8202060921421182858yamaha-ray-zr-125fi-hybrid-racing-blue.png', '-1006152542-1168929722profile1629015097.png', '548151891-6155705952020-Yamaha-Ray-ZR-125-2.jpg', '-1681428494-42806596021.jpg', '-90117311521292352161-5.jpg'),
(76, 'BMW', 'R15 V4', '155', '45', '140', 'Petrol', '11', 'Drum brakes', 'Drum brakes', 'Simple Still Wheels', 'Tube', '815', '725', '1135', '1990', '3', '1', '180000', '0', 'Yes', 'Online payment', '\r\nYamaha Motor India has announced the launch of the new YZF-R15 V4.0 in our market', '2022-09-22', 'no', 'yes', '-247564683-409042459Racing-Blue_56e02258-05eb-448c-a86f-b32892afb298_761x.png', '605344494971726985wp5571338.jpg', '996015905-2068273194yamaha-select-model-dark-knight-1632214282173.jpg', '2117851217-989318822yamaha-select-model-metallic-red-1632458365661.jpg', '1696182753-14607120787111639.jpg'),
(77, 'Yamaha', 'MT 15', '155', '45', '130', 'Petrol', '10', 'Disc brakes', 'Disc brakes', 'Aloy Wheels', 'Tubeless', '810', '800', '1070', '2020', '3', '1', '165000', '0', 'Yes', 'Online payment', 'he Yamaha MT-15 V2 is the updated version of the MT-15. It?s based on the R15 V4 and has received some major updates in the latest iteration. ', '2022-09-09', 'no', 'no', '-107458807-20567533895e204d155a54b.jpg', '-1012982520-1839141629mt-15-2019.jpg', '1754657569820543394Tech-Black.png', '-973889623-2059465366yamaha-mt-15-cyw-bike-500x500.jpg', '177173229511415365495e204d155a54b.jpg'),
(78, 'Yamaha', 'Tenere 700', '689', '32', '130', 'Petrol', '10', 'Disc brakes', 'Drum brakes', 'Aloy Wheels', 'Tubeless', '790', '710', '1020', '2020', '3', '1', '800000', '0', 'Yes', 'Online payment', 'the Yamaha Tenere 700 will go up against the Triumph Tiger XCx in the country.', '2022-09-07', 'no', 'no', '960973340327540567yamaha-tenere-700 (1).jpg', '-201758983-1882596762yamaha-tenere-700.jpg', '-768764000-2021322515yamaha-tenere-700-pic-4.jpg', '-42542159018039148916000000005_480px.JPG', '1416876344847338852Yamaha-Tenere-700-US-1024x683.jpg'),
(83, 'Yamaha', 'RX100', '97', '65', '85', 'Petrol', '8', 'Drum brakes', 'Drum brakes', 'Simple Still Wheels', 'Tube', '750', '700', '1010', '1990', '3', '1', '90000', '0', 'Yes', 'Online payment', 'Yamaha RX 100 is expected to launch in India in January 2025 in the expected price range of &#8377; 1,40,000 to &#8377; 1,50,000.', '2022-09-06', 'no', 'no', '-1334961065-122309811917-170532_yamaha-rx100-photos-images-and-wallpapers-rx-100.jpg', '2074255752-4121397847be63ab28bf5a73d9742537c4109c786.jpg', '9116258611895150282HD-wallpaper-rx-100.jpg', '-156062193113954733361bbc4417ecdf5a22aeb133f7554e3c0d--pictures.jpg', '6302254541022333338Yamaha-RX-100-Price-Images-Specifications-and-Mileage-.jpg'),
(84, 'Yamaha', 'R15 V4', '155', '45', '140', 'Petrol', '11', 'Drum brakes', 'Drum brakes', 'Simple Still Wheels', 'Tube', '815', '725', '1135', '1990', '3', '1', '180000', '0', 'Yes', 'Online payment', '\r\nYamaha Motor India has announced the launch of the new YZF-R15 V4.0 in our market', '2022-09-22', 'no', 'no', '-712179674-2054995693Racing-Blue_56e02258-05eb-448c-a86f-b32892afb298_761x.png', '-1821902222-1854495002wp5571338.jpg', '-2331569031894527249yamaha-select-model-dark-knight-1632214282173.jpg', '-1700665192-1978957193yamaha-select-model-metallic-red-1632458365661.jpg', '7912491139852851707111639.jpg'),
(85, 'BMW', '1', '1', '1', '11', 'Petrol', '1', 'Drum brakes', 'Drum brakes', 'Simple Still Wheels', 'Tube', '1', '1', '1', '1', '1', '1', '10', '1', 'Yes', '1', '1', '2022-09-02', 'no', 'yes', '797730599817592415admin_pic.jpg', '17568092101556452021track2.png', '-592605589-1891201641royal_logo.png', '1140296119820522936admin_pic.jpg', '-1888175772-1010379136royal_logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `cart_bike`
--

CREATE TABLE IF NOT EXISTS `cart_bike` (
`bike_id` int(50) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `user_mobile` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `image` varchar(400) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `cart_bike`
--

INSERT INTO `cart_bike` (`bike_id`, `user_name`, `user_mobile`, `company`, `model`, `image`) VALUES
(2, 'vivek', '8347127939', 'Hero', 'Splendor', '-6558388241266578581hero-splendor-black-accent-edition-beetle-red.jpg'),
(3, 'ronak', '1234567890', 'Honda', 'Activa 6G', '-537405716891686528honda-activa-premium-edition-front-left-2d0f.jpg'),
(6, 'ronak', '34', 'BMW', 'BMW K1600B', '-121997841-16309431283E25D3WERXX5664O6ZOGCYEJOQ.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
`company_id` int(11) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `company_email` varchar(200) NOT NULL,
  `company_mobile` varchar(50) NOT NULL,
  `company_services` varchar(50) NOT NULL,
  `company_warranty` varchar(50) NOT NULL,
  `company_rate` varchar(50) NOT NULL,
  `company_logo` varchar(400) NOT NULL,
  `company_removed` varchar(50) NOT NULL,
  `company_country` varchar(50) NOT NULL,
  `about_company` varchar(200) NOT NULL,
  `company_users` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_id`, `company_name`, `company_email`, `company_mobile`, `company_services`, `company_warranty`, `company_rate`, `company_logo`, `company_removed`, `company_country`, `about_company`, `company_users`) VALUES
(17, 'BMW', 'BMW@gmail.com', '1234567890', '1', '1', '5', 'bmw.jpg', 'no', 'india', 'safe bike', '1'),
(18, 'Hero', 'Hero@gmail.com', '1234567891', '1', '1', '4', 'hero.png', 'no', 'india', 'best bike', '2'),
(20, 'Honda', 'Honda@gmail.com', '1234567892', '1', '1', '4', 'honda.png', 'no', 'india', 'safe bike', '2'),
(21, 'Bajaj', 'Bajaj@gmail.com', '1234567893', '1', '1', '3', 'bajaj.png', 'no', 'india', 'avrege bike', '1'),
(22, 'Yamaha', 'Yamaha@gmail.com', '1234567894', '1', '1', '4', 'yamaha.png', 'no', 'india', 'sport bike main perpose', '1'),
(24, 'Royal Enfield', 'Royal@gmail.com', '1234567896', '1', '1', '5', 'royal.png', 'no', 'india', 'havy bike', '2'),
(25, 'hero hond', 'h@gmail.com', '123', '1', '1', '5', 'treck_logo.png', 'yes', 'india', 'ch', '10'),
(28, 'TVS', 'tvs@gmail.com', '23456', '1', '1', '3', 'TVS-Motor-Logo.jpg', 'no', 'india', 'good  best', '8');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE IF NOT EXISTS `review` (
`id` int(11) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `review` varchar(500) NOT NULL,
  `image` varchar(400) NOT NULL,
  `user_mobile` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `user_name`, `review`, `image`, `user_mobile`) VALUES
(7, 'vivek', 'best bike', 'bmw-c-400-gt-13.jpg', '8347127939'),
(8, 'ronak', 'nice....', 'bmw-c-400-gt-4.jpg', '1234567890'),
(10, 'ronak', 'best', 'royal_logo.png', '34'),
(11, 'ronak', 'best', 'royal_logo.png', '34'),
(12, 'ronak', 'ronak shekhaliya', '798958548admin_pic_2.jfif', '34');

-- --------------------------------------------------------

--
-- Table structure for table `shop_branches`
--

CREATE TABLE IF NOT EXISTS `shop_branches` (
`id` int(11) NOT NULL,
  `branch_email` varchar(200) NOT NULL,
  `branch_contact` varchar(50) NOT NULL,
  `branch_city` varchar(50) NOT NULL,
  `branch_address` varchar(400) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `shop_branches`
--

INSERT INTO `shop_branches` (`id`, `branch_email`, `branch_contact`, `branch_city`, `branch_address`) VALUES
(3, 'amreli@gmail.com', '123', 'Amreli', 'station road');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `name` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mobile_no` bigint(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `city` varchar(20) NOT NULL,
  `image` varchar(400) NOT NULL,
  `password` varchar(200) NOT NULL,
  `user_removed` varchar(20) NOT NULL,
  `total_order` varchar(11) NOT NULL,
  `about_user` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `email`, `mobile_no`, `gender`, `city`, `image`, `password`, `user_removed`, `total_order`, `about_user`) VALUES
('ronak', 'r@gmail.com', 34, 'Male', 'Amreli', 'admin_pic_2.jfif', '345', 'no', '0', ' no'),
('ronak', 'ronakshekhaliya11111@gmail.com', 1234567855, 'Male', 'Amreli', '6.jpg', 'ronak12345R', 'no', '0', 'df'),
('vivek parvadiya', 'vivek@gmail.com', 1234567890, 'Male', 'Rajkot', 'snapicon.png', '12345vivekV', 'no', '0', '123'),
('raj', '123@gmail.com', 7622986702, 'Male', 'Amreli', '1741106407treck_logo.png', 'ronak12345R', 'yes', '0', '1'),
('vivek', 'v@gmail.com', 8347127939, 'Male', 'Amreli', 'IMG_8216.JPG', 'Vivek@12345', 'no', '0', 'XYZ....');

-- --------------------------------------------------------

--
-- Table structure for table `user_enquiry`
--

CREATE TABLE IF NOT EXISTS `user_enquiry` (
`id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_mobile` varchar(50) NOT NULL,
  `user_enquiry` varchar(400) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `user_enquiry`
--

INSERT INTO `user_enquiry` (`id`, `user_name`, `user_email`, `user_mobile`, `user_enquiry`) VALUES
(2, 'vivek', 'v@gmail.com', '8347127939', '....'),
(3, 'ronak', 'r@gmail.com', '1234567890', '....'),
(4, 'ronak', 'r@gmail.com', '123', 'messsge en'),
(5, '5', '5@gmail.com', '5', '5'),
(6, '5', '5@gmail.com', '5', '5'),
(7, 'ronak', 'r@gmail.com', '123', 'messsge en'),
(8, 'raj', '123@gmail.com', '123', 'bes'),
(9, 'ronak', 'r@gmail.com', '123', 'sms');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`mobile_no`);

--
-- Indexes for table `bikes`
--
ALTER TABLE `bikes`
 ADD PRIMARY KEY (`bike_id`);

--
-- Indexes for table `cart_bike`
--
ALTER TABLE `cart_bike`
 ADD PRIMARY KEY (`bike_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
 ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_branches`
--
ALTER TABLE `shop_branches`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`mobile_no`);

--
-- Indexes for table `user_enquiry`
--
ALTER TABLE `user_enquiry`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bikes`
--
ALTER TABLE `bikes`
MODIFY `bike_id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=86;
--
-- AUTO_INCREMENT for table `cart_bike`
--
ALTER TABLE `cart_bike`
MODIFY `bike_id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `shop_branches`
--
ALTER TABLE `shop_branches`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user_enquiry`
--
ALTER TABLE `user_enquiry`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
