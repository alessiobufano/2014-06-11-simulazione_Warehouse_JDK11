-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.5-10.0.11-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             8.3.0.4775
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for warehouse
DROP DATABASE IF EXISTS `warehouse`;
CREATE DATABASE IF NOT EXISTS `warehouse` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `warehouse`;


-- Dumping structure for table warehouse.movements
CREATE TABLE IF NOT EXISTS `movements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` int(11) NOT NULL DEFAULT '0',
  `objectId` int(11) NOT NULL DEFAULT '0',
  `direction` enum('in','out') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_movements_objects` (`objectId`),
  CONSTRAINT `FK_movements_objects` FOREIGN KEY (`objectId`) REFERENCES `objects` (`objectId`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=latin1;

-- Dumping data for table warehouse.movements: ~1,139 rows (approximately)
/*!40000 ALTER TABLE `movements` DISABLE KEYS */;
REPLACE INTO `movements` (`id`, `time`, `objectId`, `direction`) VALUES
	(1, 378, 3, 'in'),
	(2, 904, 4, 'in'),
	(3, 1018, 1, 'in'),
	(4, 1376, 2, 'in'),
	(5, 1566, 1, 'in'),
	(6, 1917, 1, 'in'),
	(7, 2109, 1, 'out'),
	(8, 2333, 1, 'out'),
	(9, 2579, 1, 'in'),
	(10, 2700, 1, 'in'),
	(11, 3057, 1, 'out'),
	(12, 3210, 3, 'in'),
	(13, 3473, 3, 'out'),
	(14, 3664, 2, 'out'),
	(15, 4237, 1, 'in'),
	(16, 4444, 2, 'in'),
	(17, 4743, 2, 'out'),
	(18, 5161, 2, 'in'),
	(19, 5613, 2, 'out'),
	(20, 5885, 2, 'in'),
	(21, 6386, 1, 'in'),
	(22, 6902, 1, 'in'),
	(23, 7424, 2, 'out'),
	(24, 7671, 1, 'out'),
	(25, 8329, 3, 'out'),
	(26, 8799, 3, 'in'),
	(27, 8922, 1, 'in'),
	(28, 8982, 1, 'in'),
	(29, 9302, 2, 'in'),
	(30, 9585, 3, 'in'),
	(31, 9849, 1, 'out'),
	(32, 10012, 2, 'out'),
	(33, 10545, 2, 'in'),
	(34, 11172, 1, 'in'),
	(35, 11418, 1, 'out'),
	(36, 12047, 1, 'in'),
	(37, 12166, 2, 'in'),
	(38, 12651, 2, 'out'),
	(39, 13256, 1, 'in'),
	(40, 13881, 1, 'out'),
	(41, 14172, 1, 'out'),
	(42, 14390, 1, 'in'),
	(43, 14580, 1, 'out'),
	(44, 14652, 1, 'in'),
	(45, 14918, 2, 'in'),
	(46, 15375, 2, 'in'),
	(47, 15468, 3, 'in'),
	(48, 15637, 1, 'out'),
	(49, 16211, 2, 'out'),
	(50, 16810, 1, 'out'),
	(51, 17423, 1, 'out'),
	(52, 17941, 3, 'in'),
	(53, 18417, 2, 'in'),
	(54, 18722, 2, 'in'),
	(55, 19349, 2, 'in'),
	(56, 19805, 1, 'out'),
	(57, 20068, 2, 'out'),
	(58, 20300, 2, 'in'),
	(59, 20545, 2, 'in'),
	(60, 21058, 1, 'in'),
	(61, 21616, 1, 'in'),
	(62, 22210, 1, 'in'),
	(63, 22747, 2, 'in'),
	(64, 23255, 1, 'in'),
	(65, 23907, 2, 'in'),
	(66, 24475, 2, 'in'),
	(67, 25110, 4, 'in'),
	(68, 25616, 1, 'in'),
	(69, 26098, 1, 'out'),
	(70, 26447, 1, 'out'),
	(71, 26731, 3, 'out'),
	(72, 27023, 1, 'in'),
	(73, 27680, 1, 'out'),
	(74, 28260, 3, 'in'),
	(75, 28340, 3, 'in'),
	(76, 28693, 1, 'in'),
	(77, 28954, 3, 'out'),
	(78, 29590, 1, 'in'),
	(79, 29693, 1, 'out'),
	(80, 30172, 1, 'in'),
	(81, 30754, 1, 'in'),
	(82, 31136, 2, 'in'),
	(83, 31290, 3, 'in'),
	(84, 31512, 1, 'in'),
	(85, 32096, 1, 'out'),
	(86, 32545, 1, 'in'),
	(87, 32937, 2, 'in'),
	(88, 33573, 1, 'out'),
	(89, 34045, 1, 'out'),
	(90, 34265, 2, 'in'),
	(91, 34555, 1, 'in'),
	(92, 34622, 1, 'out'),
	(93, 34895, 2, 'out'),
	(94, 35406, 1, 'out'),
	(95, 35954, 3, 'out'),
	(96, 36409, 2, 'in'),
	(97, 36767, 2, 'in'),
	(98, 36988, 2, 'in'),
	(99, 37100, 2, 'out'),
	(100, 37429, 2, 'in'),
	(101, 37940, 2, 'in'),
	(102, 38391, 2, 'in'),
	(103, 38620, 2, 'in'),
	(104, 39206, 2, 'in'),
	(105, 39757, 1, 'in'),
	(106, 40252, 3, 'out'),
	(107, 40340, 1, 'out'),
	(108, 40430, 1, 'in'),
	(109, 40693, 1, 'out'),
	(110, 40992, 1, 'in'),
	(111, 41218, 1, 'in'),
	(112, 41588, 2, 'out'),
	(113, 41949, 1, 'in'),
	(114, 42219, 1, 'in'),
	(115, 42388, 1, 'in'),
	(116, 42851, 1, 'in'),
	(117, 43415, 1, 'out'),
	(118, 44059, 2, 'in'),
	(119, 44604, 2, 'out'),
	(120, 44994, 1, 'in'),
	(121, 45585, 1, 'out'),
	(122, 45850, 3, 'in'),
	(123, 46414, 3, 'out'),
	(124, 46781, 1, 'out'),
	(125, 46866, 2, 'in'),
	(126, 47182, 2, 'out'),
	(127, 47558, 1, 'in'),
	(128, 48132, 2, 'out'),
	(129, 48411, 2, 'out'),
	(130, 48500, 1, 'out'),
	(131, 49133, 2, 'out'),
	(132, 49490, 1, 'out'),
	(133, 49556, 2, 'in'),
	(134, 49667, 2, 'out'),
	(135, 49976, 2, 'out'),
	(136, 50081, 2, 'out'),
	(137, 50286, 2, 'out'),
	(138, 50398, 1, 'out'),
	(139, 51049, 1, 'in'),
	(140, 51221, 2, 'out'),
	(141, 51289, 2, 'in'),
	(142, 51816, 2, 'in'),
	(143, 52313, 1, 'out'),
	(144, 52777, 1, 'out'),
	(145, 53416, 2, 'in'),
	(146, 53678, 1, 'in'),
	(147, 54078, 1, 'in'),
	(148, 54721, 3, 'out'),
	(149, 54897, 1, 'in'),
	(150, 55499, 2, 'in'),
	(151, 55625, 1, 'in'),
	(152, 55738, 1, 'in'),
	(153, 56164, 1, 'out'),
	(154, 56541, 2, 'in'),
	(155, 56819, 1, 'out'),
	(156, 57202, 1, 'in'),
	(157, 57351, 2, 'out'),
	(158, 57448, 1, 'in'),
	(159, 57708, 1, 'out'),
	(160, 58329, 3, 'in'),
	(161, 58858, 2, 'out'),
	(162, 59474, 1, 'out'),
	(163, 59800, 3, 'out'),
	(164, 60132, 1, 'out'),
	(165, 60453, 1, 'out'),
	(166, 61017, 2, 'in'),
	(167, 61524, 3, 'out'),
	(168, 62040, 2, 'in'),
	(169, 62435, 2, 'out'),
	(170, 62937, 2, 'in'),
	(171, 63298, 2, 'in'),
	(172, 63384, 1, 'out'),
	(173, 63569, 2, 'out'),
	(174, 64204, 1, 'out'),
	(175, 64524, 2, 'out'),
	(176, 64953, 2, 'in'),
	(177, 65335, 1, 'out'),
	(178, 65422, 2, 'in'),
	(179, 65838, 2, 'in'),
	(180, 66427, 1, 'in'),
	(181, 66725, 2, 'out'),
	(182, 67318, 3, 'out'),
	(183, 67400, 2, 'in'),
	(184, 67746, 3, 'in'),
	(185, 68377, 1, 'out'),
	(186, 68516, 2, 'out'),
	(187, 69041, 2, 'out'),
	(188, 69125, 1, 'in'),
	(189, 69528, 2, 'in'),
	(190, 69801, 1, 'in'),
	(191, 70439, 2, 'in'),
	(192, 70819, 1, 'out'),
	(193, 71247, 1, 'out'),
	(194, 71508, 3, 'out'),
	(195, 71593, 1, 'in'),
	(196, 72229, 1, 'out'),
	(197, 72750, 1, 'out'),
	(198, 72919, 2, 'out'),
	(199, 73497, 1, 'in'),
	(200, 74024, 1, 'in'),
	(201, 74434, 2, 'out'),
	(202, 74821, 3, 'in'),
	(203, 75414, 3, 'out'),
	(204, 75532, 1, 'out'),
	(205, 75678, 1, 'in'),
	(206, 75996, 1, 'out'),
	(207, 76489, 1, 'out'),
	(208, 76727, 1, 'in'),
	(209, 76882, 1, 'out'),
	(210, 77292, 1, 'out'),
	(211, 77699, 2, 'out'),
	(212, 77936, 3, 'in'),
	(213, 78227, 1, 'out'),
	(214, 78631, 3, 'in'),
	(215, 79057, 1, 'out'),
	(216, 79476, 1, 'in'),
	(217, 80000, 1, 'in'),
	(218, 80282, 1, 'in'),
	(219, 80605, 1, 'in'),
	(220, 80963, 2, 'in'),
	(221, 81468, 1, 'out'),
	(222, 81644, 1, 'out'),
	(223, 81850, 2, 'in'),
	(224, 82312, 1, 'in'),
	(225, 82650, 1, 'in'),
	(226, 83013, 1, 'in'),
	(227, 83523, 2, 'out'),
	(228, 84008, 2, 'out'),
	(229, 84188, 2, 'in'),
	(230, 84473, 2, 'out'),
	(231, 84727, 2, 'out'),
	(232, 84897, 2, 'in'),
	(233, 85395, 1, 'out'),
	(234, 85888, 2, 'out'),
	(235, 85976, 3, 'in'),
	(236, 86367, 1, 'in'),
	(237, 86671, 3, 'in'),
	(238, 87175, 2, 'out'),
	(239, 87241, 1, 'out'),
	(240, 87302, 1, 'in'),
	(241, 87858, 2, 'out'),
	(242, 88436, 2, 'out'),
	(243, 88886, 3, 'in'),
	(244, 89202, 1, 'out'),
	(245, 89723, 1, 'out'),
	(246, 90052, 1, 'in'),
	(247, 90298, 1, 'in'),
	(248, 90566, 1, 'out'),
	(249, 90932, 1, 'in'),
	(250, 91378, 1, 'out'),
	(251, 91994, 1, 'in'),
	(252, 92093, 2, 'in'),
	(253, 92161, 1, 'out'),
	(254, 92659, 1, 'in'),
	(255, 93000, 2, 'in'),
	(256, 93480, 1, 'in'),
	(257, 94000, 3, 'out'),
	(258, 94234, 1, 'out'),
	(259, 94719, 3, 'in'),
	(260, 95205, 3, 'out'),
	(261, 95340, 2, 'in'),
	(262, 95642, 1, 'in'),
	(263, 95906, 1, 'in'),
	(264, 96303, 1, 'out'),
	(265, 96805, 2, 'in'),
	(266, 97115, 2, 'in'),
	(267, 97550, 2, 'in'),
	(268, 97746, 3, 'out'),
	(269, 98267, 1, 'in'),
	(270, 98608, 1, 'out'),
	(271, 99248, 1, 'in'),
	(272, 99813, 2, 'in'),
	(273, 100224, 2, 'out'),
	(274, 100559, 1, 'out'),
	(275, 101205, 3, 'in'),
	(276, 101828, 2, 'out'),
	(277, 102133, 1, 'in'),
	(278, 102763, 3, 'out'),
	(279, 103218, 3, 'out'),
	(280, 103420, 1, 'out'),
	(281, 103714, 2, 'in'),
	(282, 104348, 3, 'out'),
	(283, 104553, 1, 'out'),
	(284, 105025, 1, 'out'),
	(285, 105455, 3, 'out'),
	(286, 105785, 2, 'in'),
	(287, 105939, 2, 'out'),
	(288, 106480, 2, 'in'),
	(289, 106852, 2, 'in'),
	(290, 107061, 3, 'in'),
	(291, 107231, 2, 'out'),
	(292, 107460, 2, 'in'),
	(293, 107735, 1, 'out'),
	(294, 107923, 2, 'out'),
	(295, 108310, 3, 'in'),
	(296, 108541, 3, 'out'),
	(297, 109096, 1, 'in'),
	(298, 109608, 1, 'out'),
	(299, 109901, 1, 'out'),
	(300, 110091, 1, 'in'),
	(301, 110638, 1, 'in'),
	(302, 110835, 3, 'out'),
	(303, 110990, 1, 'in'),
	(304, 111292, 1, 'in'),
	(305, 111483, 1, 'in'),
	(306, 112104, 3, 'in'),
	(307, 112373, 2, 'out'),
	(308, 112741, 1, 'in'),
	(309, 113264, 1, 'out'),
	(310, 113722, 1, 'out'),
	(311, 114369, 1, 'out'),
	(312, 114972, 2, 'in'),
	(313, 115594, 1, 'in'),
	(314, 115963, 1, 'out'),
	(315, 116583, 1, 'in'),
	(316, 117175, 1, 'out'),
	(317, 117471, 3, 'in'),
	(318, 118100, 2, 'out'),
	(319, 118480, 2, 'in'),
	(320, 118613, 2, 'out'),
	(321, 118886, 1, 'in'),
	(322, 119132, 2, 'out'),
	(323, 119407, 3, 'out'),
	(324, 119948, 2, 'in'),
	(325, 120242, 3, 'in'),
	(326, 120639, 1, 'in'),
	(327, 120813, 3, 'in'),
	(328, 120908, 1, 'out'),
	(329, 121409, 2, 'in'),
	(330, 121708, 1, 'in'),
	(331, 122266, 1, 'out'),
	(332, 122576, 1, 'in'),
	(333, 122699, 1, 'in'),
	(334, 123246, 3, 'out'),
	(335, 123460, 2, 'out'),
	(336, 123615, 1, 'out'),
	(337, 124101, 1, 'in'),
	(338, 124190, 1, 'out'),
	(339, 124612, 1, 'in'),
	(340, 124677, 2, 'in'),
	(341, 125182, 2, 'out'),
	(342, 125251, 1, 'in'),
	(343, 125372, 3, 'in'),
	(344, 125842, 2, 'in'),
	(345, 126350, 2, 'in'),
	(346, 126572, 1, 'out'),
	(347, 126856, 1, 'in'),
	(348, 127003, 2, 'out'),
	(349, 127262, 2, 'out'),
	(350, 127536, 3, 'out'),
	(351, 128149, 2, 'out'),
	(352, 128710, 1, 'out'),
	(353, 128778, 1, 'out'),
	(354, 129095, 1, 'out'),
	(355, 129512, 2, 'in'),
	(356, 129842, 2, 'in'),
	(357, 130017, 1, 'in'),
	(358, 130487, 1, 'out'),
	(359, 130677, 2, 'in'),
	(360, 131301, 1, 'in'),
	(361, 131599, 3, 'out'),
	(362, 132140, 2, 'out'),
	(363, 132484, 1, 'in'),
	(364, 132707, 2, 'in'),
	(365, 133226, 1, 'out'),
	(366, 133383, 2, 'in'),
	(367, 133716, 1, 'in'),
	(368, 134325, 1, 'out'),
	(369, 134629, 1, 'in'),
	(370, 134807, 2, 'in'),
	(371, 135121, 2, 'in'),
	(372, 135245, 3, 'in'),
	(373, 135658, 1, 'in'),
	(374, 136296, 1, 'out'),
	(375, 136914, 2, 'in'),
	(376, 137551, 1, 'in'),
	(377, 137736, 1, 'in'),
	(378, 138003, 2, 'out'),
	(379, 138327, 2, 'in'),
	(380, 138678, 2, 'out'),
	(381, 139311, 1, 'in'),
	(382, 139827, 1, 'out'),
	(383, 140027, 2, 'out'),
	(384, 140426, 2, 'in'),
	(385, 140821, 1, 'out'),
	(386, 141300, 1, 'out'),
	(387, 141656, 2, 'in'),
	(388, 141720, 1, 'out'),
	(389, 141982, 1, 'in'),
	(390, 142150, 1, 'out'),
	(391, 142768, 1, 'out'),
	(392, 143404, 2, 'out'),
	(393, 143527, 2, 'out'),
	(394, 143825, 3, 'in'),
	(395, 143892, 1, 'in'),
	(396, 144478, 1, 'out'),
	(397, 144699, 1, 'in'),
	(398, 145143, 3, 'in'),
	(399, 145649, 2, 'in'),
	(400, 145890, 2, 'in'),
	(401, 146511, 2, 'out'),
	(402, 146940, 1, 'in'),
	(403, 147434, 2, 'out'),
	(404, 148017, 2, 'in'),
	(405, 148291, 3, 'out'),
	(406, 148647, 1, 'out'),
	(407, 148720, 2, 'out'),
	(408, 148963, 1, 'in'),
	(409, 149082, 3, 'in'),
	(410, 149337, 2, 'in'),
	(411, 149661, 1, 'in'),
	(412, 150194, 1, 'in'),
	(413, 150360, 1, 'out'),
	(414, 150835, 2, 'in'),
	(415, 151345, 1, 'in'),
	(416, 151446, 1, 'out'),
	(417, 151548, 1, 'out'),
	(418, 151701, 2, 'in'),
	(419, 152031, 1, 'in'),
	(420, 152387, 1, 'in'),
	(421, 153036, 1, 'out'),
	(422, 153498, 1, 'out'),
	(423, 153599, 1, 'out'),
	(424, 153831, 1, 'out'),
	(425, 154479, 2, 'in'),
	(426, 155063, 2, 'in'),
	(427, 155568, 1, 'in'),
	(428, 156119, 1, 'in'),
	(429, 156539, 1, 'out'),
	(430, 157026, 3, 'out'),
	(431, 157402, 1, 'out'),
	(432, 157597, 1, 'in'),
	(433, 158102, 2, 'in'),
	(434, 158758, 1, 'out'),
	(435, 158947, 2, 'out'),
	(436, 159416, 2, 'in'),
	(437, 160008, 1, 'out'),
	(438, 160637, 1, 'out'),
	(439, 161226, 1, 'out'),
	(440, 161653, 3, 'out'),
	(441, 161963, 3, 'out'),
	(442, 162040, 3, 'in'),
	(443, 162220, 3, 'in'),
	(444, 162446, 2, 'in'),
	(445, 162966, 3, 'in'),
	(446, 163415, 1, 'in'),
	(447, 163618, 1, 'in'),
	(448, 163939, 1, 'in'),
	(449, 164311, 1, 'in'),
	(450, 164455, 2, 'in'),
	(451, 165004, 1, 'in'),
	(452, 165590, 2, 'in'),
	(453, 166083, 1, 'in'),
	(454, 166238, 2, 'in'),
	(455, 166457, 2, 'in'),
	(456, 166617, 2, 'out'),
	(457, 166698, 3, 'in'),
	(458, 167181, 1, 'out'),
	(459, 167635, 3, 'in'),
	(460, 167961, 1, 'in'),
	(461, 168159, 2, 'out'),
	(462, 168265, 3, 'out'),
	(463, 168804, 2, 'in'),
	(464, 169168, 2, 'out'),
	(465, 169514, 1, 'in'),
	(466, 169606, 1, 'out'),
	(467, 169978, 2, 'in'),
	(468, 170204, 1, 'in'),
	(469, 170574, 1, 'out'),
	(470, 170988, 2, 'in'),
	(471, 171419, 1, 'out'),
	(472, 171637, 2, 'out'),
	(473, 171755, 2, 'out'),
	(474, 172044, 1, 'out'),
	(475, 172517, 2, 'in'),
	(476, 172661, 1, 'out'),
	(477, 173298, 1, 'out'),
	(478, 173434, 2, 'out'),
	(479, 173557, 2, 'out'),
	(480, 173828, 1, 'in'),
	(481, 174033, 1, 'in'),
	(482, 174182, 1, 'in'),
	(483, 174640, 1, 'out'),
	(484, 175208, 1, 'out'),
	(485, 175867, 2, 'in'),
	(486, 176112, 1, 'out'),
	(487, 176596, 3, 'in'),
	(488, 176740, 1, 'out'),
	(489, 177102, 1, 'in'),
	(490, 177542, 3, 'out'),
	(491, 178175, 1, 'out'),
	(492, 178798, 2, 'out'),
	(493, 179175, 1, 'in'),
	(494, 179434, 2, 'in'),
	(495, 179987, 2, 'in'),
	(496, 180330, 1, 'in'),
	(497, 180920, 2, 'in'),
	(498, 181161, 2, 'in'),
	(499, 181785, 1, 'out'),
	(500, 182152, 2, 'out'),
	(501, 182735, 3, 'in'),
	(502, 183258, 3, 'in'),
	(503, 183529, 1, 'out'),
	(504, 184062, 2, 'out'),
	(505, 184156, 1, 'out'),
	(506, 184531, 3, 'in'),
	(507, 185078, 1, 'out'),
	(508, 185699, 2, 'out'),
	(509, 186188, 2, 'in'),
	(510, 186822, 2, 'out'),
	(511, 187385, 2, 'out'),
	(512, 187534, 1, 'out'),
	(513, 187897, 1, 'out'),
	(514, 187997, 2, 'out'),
	(515, 188416, 1, 'out'),
	(516, 189038, 1, 'in'),
	(517, 189153, 2, 'in'),
	(518, 189355, 2, 'out'),
	(519, 189932, 2, 'in'),
	(520, 190573, 1, 'in'),
	(521, 190998, 2, 'in'),
	(522, 191253, 1, 'in'),
	(523, 191391, 3, 'in'),
	(524, 191477, 1, 'in'),
	(525, 191825, 1, 'out'),
	(526, 192269, 3, 'in'),
	(527, 192674, 2, 'in'),
	(528, 193245, 2, 'in'),
	(529, 193861, 2, 'out'),
	(530, 194192, 1, 'in'),
	(531, 194787, 1, 'in'),
	(532, 195207, 1, 'in'),
	(533, 195768, 3, 'in'),
	(534, 195957, 1, 'out'),
	(535, 196018, 2, 'out'),
	(536, 196616, 1, 'out'),
	(537, 196704, 1, 'in'),
	(538, 197143, 1, 'in'),
	(539, 197702, 1, 'out'),
	(540, 198073, 1, 'out'),
	(541, 198252, 1, 'in'),
	(542, 198396, 2, 'in'),
	(543, 198537, 1, 'out'),
	(544, 198734, 1, 'in'),
	(545, 199224, 2, 'in'),
	(546, 199720, 1, 'in'),
	(547, 199862, 2, 'out'),
	(548, 200094, 2, 'out'),
	(549, 200175, 2, 'in'),
	(550, 200303, 2, 'in'),
	(551, 200884, 1, 'out'),
	(552, 201368, 3, 'out'),
	(553, 201555, 1, 'in'),
	(554, 201846, 2, 'out'),
	(555, 202342, 2, 'in'),
	(556, 202694, 1, 'in'),
	(557, 203090, 2, 'out'),
	(558, 203159, 2, 'in'),
	(559, 203558, 1, 'out'),
	(560, 203820, 1, 'out'),
	(561, 204455, 1, 'out'),
	(562, 205085, 2, 'out'),
	(563, 205671, 2, 'out'),
	(564, 206254, 2, 'in'),
	(565, 206549, 2, 'out'),
	(566, 206865, 1, 'out'),
	(567, 207225, 1, 'out'),
	(568, 207549, 3, 'out'),
	(569, 207761, 2, 'out'),
	(570, 207999, 3, 'out'),
	(571, 208406, 1, 'out'),
	(572, 208718, 1, 'in'),
	(573, 209042, 2, 'out'),
	(574, 209209, 2, 'out'),
	(575, 209289, 2, 'out'),
	(576, 209426, 3, 'in'),
	(577, 209655, 1, 'in'),
	(578, 210121, 2, 'in'),
	(579, 210249, 4, 'out'),
	(580, 210722, 1, 'in'),
	(581, 210863, 1, 'out'),
	(582, 211413, 1, 'out'),
	(583, 211727, 3, 'in'),
	(584, 211907, 2, 'in'),
	(585, 212223, 1, 'in'),
	(586, 212571, 1, 'in'),
	(587, 213091, 1, 'out'),
	(588, 213460, 2, 'out'),
	(589, 213985, 2, 'in'),
	(590, 214228, 2, 'in'),
	(591, 214319, 3, 'in'),
	(592, 214860, 1, 'in'),
	(593, 215245, 4, 'out'),
	(594, 215810, 2, 'out'),
	(595, 216378, 1, 'out'),
	(596, 216626, 3, 'out'),
	(597, 216693, 1, 'out'),
	(598, 217293, 1, 'out'),
	(599, 217816, 2, 'in'),
	(600, 218072, 1, 'in'),
	(601, 218653, 3, 'in'),
	(602, 218812, 2, 'out'),
	(603, 219460, 1, 'in'),
	(604, 219827, 2, 'in'),
	(605, 220312, 1, 'in'),
	(606, 220959, 4, 'in'),
	(607, 221317, 1, 'out'),
	(608, 221682, 2, 'out'),
	(609, 222170, 1, 'out'),
	(610, 222287, 1, 'in'),
	(611, 222711, 2, 'out'),
	(612, 223349, 1, 'out'),
	(613, 223684, 1, 'out'),
	(614, 224246, 2, 'out'),
	(615, 224628, 2, 'in'),
	(616, 224989, 1, 'out'),
	(617, 225103, 1, 'in'),
	(618, 225439, 1, 'out'),
	(619, 225518, 1, 'in'),
	(620, 225670, 1, 'out'),
	(621, 225901, 2, 'in'),
	(622, 225974, 1, 'in'),
	(623, 226533, 1, 'out'),
	(624, 226895, 2, 'out'),
	(625, 226983, 1, 'in'),
	(626, 227577, 1, 'out'),
	(627, 228179, 2, 'out'),
	(628, 228601, 1, 'in'),
	(629, 229223, 1, 'in'),
	(630, 229833, 1, 'in'),
	(631, 230463, 1, 'in'),
	(632, 230682, 1, 'in'),
	(633, 231085, 2, 'out'),
	(634, 231191, 1, 'in'),
	(635, 231752, 3, 'in'),
	(636, 231897, 1, 'out'),
	(637, 232274, 1, 'in'),
	(638, 232777, 1, 'out'),
	(639, 233017, 1, 'out'),
	(640, 233196, 1, 'out'),
	(641, 233837, 1, 'out'),
	(642, 234450, 2, 'out'),
	(643, 234542, 1, 'out'),
	(644, 235159, 2, 'in'),
	(645, 235463, 4, 'in'),
	(646, 235654, 1, 'out'),
	(647, 235962, 2, 'out'),
	(648, 236160, 1, 'in'),
	(649, 236270, 3, 'out'),
	(650, 236895, 1, 'out'),
	(651, 236992, 2, 'out'),
	(652, 237286, 1, 'in'),
	(653, 237939, 2, 'out'),
	(654, 238131, 1, 'in'),
	(655, 238542, 2, 'out'),
	(656, 239013, 3, 'out'),
	(657, 239209, 1, 'out'),
	(658, 239656, 3, 'out'),
	(659, 240095, 2, 'in'),
	(660, 240200, 1, 'out'),
	(661, 240809, 2, 'in'),
	(662, 241300, 2, 'out'),
	(663, 241483, 1, 'in'),
	(664, 242025, 1, 'out'),
	(665, 242545, 2, 'out'),
	(666, 243204, 1, 'in'),
	(667, 243588, 1, 'out'),
	(668, 244015, 1, 'in'),
	(669, 244548, 1, 'in'),
	(670, 244817, 2, 'out'),
	(671, 245231, 1, 'in'),
	(672, 245867, 2, 'in'),
	(673, 246181, 1, 'out'),
	(674, 246657, 1, 'in'),
	(675, 246810, 1, 'out'),
	(676, 247403, 1, 'in'),
	(677, 247990, 3, 'out'),
	(678, 248429, 2, 'in'),
	(679, 249080, 1, 'out'),
	(680, 249165, 2, 'in'),
	(681, 249669, 1, 'in'),
	(682, 249845, 1, 'out'),
	(683, 249918, 2, 'out'),
	(684, 250420, 2, 'out'),
	(685, 250937, 2, 'in'),
	(686, 251206, 2, 'in'),
	(687, 251847, 3, 'out'),
	(688, 252484, 1, 'in'),
	(689, 252741, 2, 'in'),
	(690, 253272, 2, 'out'),
	(691, 253789, 1, 'in'),
	(692, 254040, 3, 'out'),
	(693, 254394, 1, 'out'),
	(694, 255005, 2, 'in'),
	(695, 255131, 1, 'out'),
	(696, 255387, 2, 'out'),
	(697, 255937, 1, 'in'),
	(698, 256250, 3, 'out'),
	(699, 256484, 1, 'out'),
	(700, 256662, 1, 'in'),
	(701, 256947, 1, 'out'),
	(702, 257054, 1, 'in'),
	(703, 257136, 2, 'out'),
	(704, 257262, 2, 'out'),
	(705, 257920, 2, 'out'),
	(706, 258362, 2, 'in'),
	(707, 258865, 1, 'out'),
	(708, 259517, 1, 'in'),
	(709, 260024, 1, 'in'),
	(710, 260314, 2, 'in'),
	(711, 260852, 1, 'in'),
	(712, 261338, 1, 'out'),
	(713, 261867, 2, 'out'),
	(714, 262495, 1, 'in'),
	(715, 263121, 1, 'out'),
	(716, 263427, 1, 'out'),
	(717, 263681, 1, 'in'),
	(718, 264002, 3, 'out'),
	(719, 264599, 1, 'out'),
	(720, 264764, 1, 'in'),
	(721, 265318, 1, 'in'),
	(722, 265785, 2, 'in'),
	(723, 265956, 1, 'out'),
	(724, 266036, 1, 'out'),
	(725, 266591, 1, 'in'),
	(726, 266788, 1, 'in'),
	(727, 267375, 2, 'out'),
	(728, 267614, 3, 'in'),
	(729, 268104, 3, 'in'),
	(730, 268382, 2, 'out'),
	(731, 268463, 3, 'in'),
	(732, 268739, 1, 'in'),
	(733, 268997, 2, 'out'),
	(734, 269061, 1, 'in'),
	(735, 269634, 1, 'in'),
	(736, 269886, 1, 'out'),
	(737, 270085, 2, 'out'),
	(738, 270340, 2, 'in'),
	(739, 270850, 1, 'in'),
	(740, 271481, 3, 'in'),
	(741, 272076, 2, 'in'),
	(742, 272192, 1, 'in'),
	(743, 272678, 2, 'out'),
	(744, 272915, 2, 'out'),
	(745, 273410, 1, 'out'),
	(746, 274034, 1, 'in'),
	(747, 274208, 1, 'in'),
	(748, 274365, 1, 'out'),
	(749, 274544, 1, 'out'),
	(750, 274755, 1, 'in'),
	(751, 275367, 1, 'out'),
	(752, 275642, 2, 'in'),
	(753, 275989, 3, 'out'),
	(754, 276368, 3, 'out'),
	(755, 276785, 3, 'in'),
	(756, 277217, 1, 'out'),
	(757, 277362, 2, 'in'),
	(758, 277963, 1, 'in'),
	(759, 278051, 2, 'out'),
	(760, 278674, 1, 'in'),
	(761, 278865, 1, 'in'),
	(762, 279378, 4, 'in'),
	(763, 279847, 2, 'in'),
	(764, 280060, 1, 'in'),
	(765, 280244, 2, 'in'),
	(766, 280556, 1, 'out'),
	(767, 280832, 1, 'in'),
	(768, 281481, 1, 'in'),
	(769, 281561, 1, 'in'),
	(770, 281701, 1, 'in'),
	(771, 282269, 1, 'in'),
	(772, 282871, 1, 'in'),
	(773, 283359, 1, 'in'),
	(774, 283630, 2, 'out'),
	(775, 283762, 1, 'in'),
	(776, 283971, 1, 'in'),
	(777, 284300, 1, 'out'),
	(778, 284819, 2, 'out'),
	(779, 285121, 1, 'out'),
	(780, 285408, 3, 'out'),
	(781, 285621, 2, 'out'),
	(782, 286148, 4, 'out'),
	(783, 286337, 2, 'in'),
	(784, 286845, 1, 'out'),
	(785, 287453, 1, 'in'),
	(786, 288059, 1, 'out'),
	(787, 288549, 2, 'in'),
	(788, 288689, 1, 'out'),
	(789, 289059, 2, 'in'),
	(790, 289144, 1, 'in'),
	(791, 289211, 1, 'in'),
	(792, 289534, 1, 'in'),
	(793, 289944, 2, 'out'),
	(794, 290262, 4, 'in'),
	(795, 290404, 1, 'in'),
	(796, 290610, 1, 'out'),
	(797, 290904, 1, 'out'),
	(798, 291348, 2, 'in'),
	(799, 291416, 1, 'in'),
	(800, 291769, 1, 'in'),
	(801, 292377, 1, 'in'),
	(802, 292859, 1, 'in'),
	(803, 293239, 3, 'out'),
	(804, 293468, 1, 'in'),
	(805, 293961, 1, 'in'),
	(806, 294178, 1, 'in'),
	(807, 294802, 3, 'out'),
	(808, 295385, 3, 'in'),
	(809, 295779, 1, 'out'),
	(810, 295877, 1, 'out'),
	(811, 296145, 1, 'in'),
	(812, 296212, 1, 'out'),
	(813, 296441, 1, 'out'),
	(814, 296698, 2, 'in'),
	(815, 297011, 1, 'out'),
	(816, 297119, 3, 'in'),
	(817, 297194, 1, 'out'),
	(818, 297829, 1, 'out'),
	(819, 298400, 1, 'in'),
	(820, 298608, 3, 'in'),
	(821, 299034, 1, 'in'),
	(822, 299185, 1, 'in'),
	(823, 299481, 1, 'in'),
	(824, 300003, 2, 'in'),
	(825, 300067, 1, 'out'),
	(826, 300416, 2, 'in'),
	(827, 300694, 1, 'out'),
	(828, 300838, 1, 'in'),
	(829, 301321, 2, 'out'),
	(830, 301706, 2, 'out'),
	(831, 302319, 1, 'in'),
	(832, 302729, 2, 'out'),
	(833, 303208, 2, 'in'),
	(834, 303802, 1, 'in'),
	(835, 303979, 1, 'in'),
	(836, 304055, 1, 'out'),
	(837, 304523, 1, 'out'),
	(838, 305068, 3, 'in'),
	(839, 305400, 1, 'out'),
	(840, 306034, 1, 'out'),
	(841, 306176, 1, 'out'),
	(842, 306383, 3, 'in'),
	(843, 306596, 1, 'out'),
	(844, 306942, 2, 'out'),
	(845, 307383, 1, 'in'),
	(846, 307475, 2, 'out'),
	(847, 307789, 2, 'in'),
	(848, 308288, 1, 'in'),
	(849, 308440, 2, 'in'),
	(850, 308698, 1, 'in'),
	(851, 308834, 2, 'in'),
	(852, 309490, 2, 'out'),
	(853, 309620, 1, 'in'),
	(854, 309921, 2, 'in'),
	(855, 310236, 1, 'out'),
	(856, 310858, 1, 'out'),
	(857, 311149, 2, 'in'),
	(858, 311600, 1, 'out'),
	(859, 311699, 3, 'out'),
	(860, 311782, 1, 'out'),
	(861, 312087, 2, 'in'),
	(862, 312279, 3, 'out'),
	(863, 312392, 3, 'out'),
	(864, 312639, 2, 'out'),
	(865, 313294, 2, 'out'),
	(866, 313749, 1, 'out'),
	(867, 313924, 2, 'in'),
	(868, 314316, 2, 'in'),
	(869, 314874, 1, 'out'),
	(870, 315366, 1, 'in'),
	(871, 315462, 1, 'in'),
	(872, 316030, 2, 'in'),
	(873, 316176, 4, 'in'),
	(874, 316619, 2, 'in'),
	(875, 316719, 1, 'out'),
	(876, 317042, 1, 'in'),
	(877, 317552, 2, 'out'),
	(878, 317760, 2, 'in'),
	(879, 317969, 3, 'out'),
	(880, 318349, 2, 'out'),
	(881, 318976, 2, 'out'),
	(882, 319157, 2, 'out'),
	(883, 319520, 3, 'in'),
	(884, 319820, 2, 'out'),
	(885, 319951, 1, 'out'),
	(886, 320353, 3, 'out'),
	(887, 320415, 2, 'out'),
	(888, 320483, 1, 'in'),
	(889, 320681, 2, 'in'),
	(890, 320962, 3, 'in'),
	(891, 321239, 1, 'in'),
	(892, 321713, 3, 'in'),
	(893, 322198, 1, 'out'),
	(894, 322851, 2, 'in'),
	(895, 323356, 1, 'in'),
	(896, 323525, 3, 'in'),
	(897, 323831, 1, 'out'),
	(898, 324068, 2, 'out'),
	(899, 324460, 1, 'in'),
	(900, 324707, 1, 'out'),
	(901, 325172, 2, 'in'),
	(902, 325754, 2, 'out'),
	(903, 326252, 2, 'in'),
	(904, 326400, 2, 'out'),
	(905, 326461, 4, 'in'),
	(906, 326650, 2, 'in'),
	(907, 326920, 2, 'out'),
	(908, 327061, 1, 'out'),
	(909, 327291, 2, 'out'),
	(910, 327534, 1, 'in'),
	(911, 327692, 1, 'out'),
	(912, 327975, 1, 'out'),
	(913, 328479, 1, 'in'),
	(914, 328733, 1, 'out'),
	(915, 328930, 2, 'out'),
	(916, 329518, 3, 'out'),
	(917, 329738, 2, 'in'),
	(918, 329879, 1, 'out'),
	(919, 329998, 1, 'in'),
	(920, 330651, 1, 'in'),
	(921, 331171, 1, 'in'),
	(922, 331682, 1, 'in'),
	(923, 331994, 1, 'out'),
	(924, 332059, 1, 'out'),
	(925, 332598, 3, 'out'),
	(926, 332793, 1, 'in'),
	(927, 332993, 1, 'in'),
	(928, 333477, 3, 'out'),
	(929, 333902, 2, 'out'),
	(930, 334414, 1, 'out'),
	(931, 335027, 3, 'in'),
	(932, 335174, 2, 'out'),
	(933, 335332, 2, 'in'),
	(934, 335865, 2, 'out'),
	(935, 336505, 1, 'in'),
	(936, 336622, 1, 'in'),
	(937, 336954, 1, 'out'),
	(938, 337278, 2, 'out'),
	(939, 337467, 2, 'out'),
	(940, 337726, 2, 'in'),
	(941, 337789, 3, 'out'),
	(942, 338338, 1, 'in'),
	(943, 338533, 1, 'out'),
	(944, 338956, 3, 'out'),
	(945, 339597, 1, 'in'),
	(946, 340253, 2, 'out'),
	(947, 340557, 2, 'in'),
	(948, 340680, 3, 'in'),
	(949, 341055, 1, 'in'),
	(950, 341618, 2, 'in'),
	(951, 342266, 2, 'in'),
	(952, 342402, 2, 'out'),
	(953, 342569, 2, 'in'),
	(954, 342713, 2, 'in'),
	(955, 343063, 2, 'out'),
	(956, 343179, 1, 'in'),
	(957, 343639, 2, 'in'),
	(958, 343906, 1, 'in'),
	(959, 344064, 2, 'in'),
	(960, 344366, 2, 'out'),
	(961, 344750, 2, 'in'),
	(962, 345260, 2, 'out'),
	(963, 345916, 2, 'in'),
	(964, 346194, 2, 'in'),
	(965, 346326, 2, 'in'),
	(966, 346557, 2, 'out'),
	(967, 346834, 1, 'out'),
	(968, 347462, 2, 'out'),
	(969, 347777, 1, 'in'),
	(970, 348236, 1, 'in'),
	(971, 348665, 2, 'in'),
	(972, 349118, 1, 'out'),
	(973, 349449, 1, 'out'),
	(974, 349717, 1, 'out'),
	(975, 349971, 2, 'out'),
	(976, 350366, 1, 'in'),
	(977, 350845, 2, 'in'),
	(978, 351088, 1, 'out'),
	(979, 351256, 3, 'out'),
	(980, 351682, 1, 'in'),
	(981, 351839, 1, 'out'),
	(982, 352145, 1, 'out'),
	(983, 352577, 2, 'out'),
	(984, 352868, 1, 'in'),
	(985, 353165, 1, 'out'),
	(986, 353543, 2, 'out'),
	(987, 353744, 2, 'in'),
	(988, 354038, 1, 'in'),
	(989, 354185, 1, 'in'),
	(990, 354716, 1, 'out'),
	(991, 355049, 2, 'out'),
	(992, 355641, 1, 'out'),
	(993, 356268, 2, 'out'),
	(994, 356895, 1, 'in'),
	(995, 357101, 2, 'out'),
	(996, 357270, 3, 'out'),
	(997, 357604, 1, 'in'),
	(998, 357838, 1, 'out'),
	(999, 358213, 1, 'out'),
	(1000, 358490, 2, 'out');
/*!40000 ALTER TABLE `movements` ENABLE KEYS */;


-- Dumping structure for table warehouse.objects
CREATE TABLE IF NOT EXISTS `objects` (
  `objectId` int(11) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  PRIMARY KEY (`objectId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table warehouse.objects: ~4 rows (approximately)
/*!40000 ALTER TABLE `objects` DISABLE KEYS */;
REPLACE INTO `objects` (`objectId`, `description`, `size`) VALUES
	(1, 'Fluffy mouse', 1),
	(2, 'Fluffy kitten', 5),
	(3, 'Fluffy puppy', 10),
	(4, 'Fluffy calf', 100);
/*!40000 ALTER TABLE `objects` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;